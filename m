Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9127143E6C
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 14:45:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D41E6ED04;
	Tue, 21 Jan 2020 13:45:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AA066ED04
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 13:45:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 05:45:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,346,1574150400"; d="scan'208";a="228835378"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 21 Jan 2020 05:45:03 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 3A31E5C1DF9; Tue, 21 Jan 2020 15:44:22 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200118105217.3484773-1-chris@chris-wilson.co.uk>
References: <20200118105217.3484773-1-chris@chris-wilson.co.uk>
Date: Tue, 21 Jan 2020 15:44:22 +0200
Message-ID: <87lfq0q5zd.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Clear the whole first page of
 LRC on gen9
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Try clearing the whole first page of the LRC on gen9, just in case HW

First page of LRC is a bit misleading as this is first page of
LRC registers and techincally first page of LRC would be hwsp?

So,

s/LRC/LRC register state

> tries peeking at the poisoned data.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 2d6b41e66b16..bf0c5a998428 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -549,7 +549,7 @@ static void set_offsets(u32 *regs,
>  	}
>  
>  	if (clear) {
> -		u8 count = *++data;
> +		unsigned int count = *++data * 16u;

Nitpick: const 

>  
>  		/* Clear past the tail for HW access */
>  		GEM_BUG_ON(dword_in_page(regs) > count);

You might want to add also check that you dont write past page.
As this seems to be always confined inside a page.

No other complaints, and above are minor so

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> @@ -594,7 +594,7 @@ static const u8 gen8_xcs_offsets[] = {
>  	REG16(0x200),
>  	REG(0x028),
>  
> -	END(80)
> +	END(5)
>  };
>  
>  static const u8 gen9_xcs_offsets[] = {
> @@ -678,7 +678,7 @@ static const u8 gen9_xcs_offsets[] = {
>  	REG16(0x67c),
>  	REG(0x068),
>  
> -	END(176)
> +	END(64)
>  };
>  
>  static const u8 gen12_xcs_offsets[] = {
> @@ -710,7 +710,7 @@ static const u8 gen12_xcs_offsets[] = {
>  	REG16(0x274),
>  	REG16(0x270),
>  
> -	END(80)
> +	END(5)
>  };
>  
>  static const u8 gen8_rcs_offsets[] = {
> @@ -747,7 +747,7 @@ static const u8 gen8_rcs_offsets[] = {
>  	LRI(1, 0),
>  	REG(0x0c8),
>  
> -	END(80)
> +	END(5)
>  };
>  
>  static const u8 gen9_rcs_offsets[] = {
> @@ -831,7 +831,7 @@ static const u8 gen9_rcs_offsets[] = {
>  	REG16(0x67c),
>  	REG(0x68),
>  
> -	END(176)
> +	END(64)
>  };
>  
>  static const u8 gen11_rcs_offsets[] = {
> @@ -872,7 +872,7 @@ static const u8 gen11_rcs_offsets[] = {
>  	LRI(1, 0),
>  	REG(0x0c8),
>  
> -	END(80)
> +	END(5)
>  };
>  
>  static const u8 gen12_rcs_offsets[] = {
> @@ -913,7 +913,7 @@ static const u8 gen12_rcs_offsets[] = {
>  	LRI(1, 0),
>  	REG(0x0c8),
>  
> -	END(80)
> +	END(5)
>  };
>  
>  #undef END
> -- 
> 2.25.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
