Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A240B5938C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 12:26:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B188A10E7AB;
	Tue, 16 Sep 2025 10:25:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eqajPbBx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28C0810E7AB
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 10:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758018360; x=1789554360;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=gfqdGbS1NIlQV+IGtkLIinIMKcoBVPvwiXacIQkri+w=;
 b=eqajPbBxiuOiRWPJioYUz9Hz+bOXi2aiQW7Zss//2VFCmeC3j+U1xP1u
 SQKrlw3LtHdOqiJNVEFgqwYSiDepbbe2CjIO9Ue9cv1yO3JszsxwfvIEE
 HNvo48c88VeuDPX5iAnFKzvPyFLuGDDiOA326nB8bYx0v/ALql+CslsrW
 mI6qSwD8xIabb9BOIVBy5yuH3Mn4cy4dZzFSalktJIUl8l/Unl+JnY4yj
 sFmYo3NBT74QmDTajPBacNQfVw4dKrMcNRLmGJ3z31ARvpnsYdKqR1sWR
 C4TXiHciewCtgOjzPkPPr55pTiJxlQ8FmNw1pzf91l7Sq3wKJpFZBZ7HB Q==;
X-CSE-ConnectionGUID: qo4bEf85Q8CaqZ58f2umDw==
X-CSE-MsgGUID: /fnU8eR0TgiEBw0qbmPQqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="71393473"
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="71393473"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 03:25:59 -0700
X-CSE-ConnectionGUID: IqaTky0OTZmo4mVE/XRimA==
X-CSE-MsgGUID: 9fEcPjVbSsSKbjl9SZm2ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="174018690"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.81])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 03:25:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andi Shyti <andi.shyti@kernel.org>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH v3 1/5] drm: Avoid suspicious operations in
 drm_fb_dma_get_gem_addr()
In-Reply-To: <37gdqefdlckaqa2kwwcu2wcwfq6vyrxiz43tc2tgornr357ok4@w6vwdtf7p44y>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1757576103.git.krzysztof.karas@intel.com>
 <af178bcb6408ec6395b1102a1429ad49f6bc9f1b.1757576103.git.krzysztof.karas@intel.com>
 <37gdqefdlckaqa2kwwcu2wcwfq6vyrxiz43tc2tgornr357ok4@w6vwdtf7p44y>
Date: Tue, 16 Sep 2025 13:25:53 +0300
Message-ID: <7c34d67eebe9e43aa9150d394b16d51b0b6d01d9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 16 Sep 2025, Andi Shyti <andi.shyti@kernel.org> wrote:
> Hi Krzysztof,
>
> On Tue, Sep 16, 2025 at 06:33:00AM +0000, Krzysztof Karas wrote:
>> There are two unsafe scenarios in that function:
>>  1) drm_format_info_block_width/height() may return 0 and cause
>> division by 0 down the line. Return early if any of these values
>> are 0.
>>  2) dma_addr calculations are carried out using 32-bit
>> arithmetic, which could cause a truncation of the values
>> before they are extended to 64 bits. Cast one of the operands
>> to dma_addr_t, so 64-bit arithmetic is used.
>> 
>> Fixes: 8c30eecc6769 ("drm/gem: rename struct drm_gem_dma_object.{paddr => dma_addr}")
>
> This doesn't need the Fixes tag as it's a very unlikely thing to
> happen.
>
>> Cc: Danilo Krummrich <dakr@redhat.com>
>> Cc: <stable@vger.kernel.org> # v6.1+
>> Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
>> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
>> ---
>>  drivers/gpu/drm/drm_fb_dma_helper.c | 7 +++++--
>>  1 file changed, 5 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/drm_fb_dma_helper.c b/drivers/gpu/drm/drm_fb_dma_helper.c
>> index fd71969d2fb1..00aaad648a33 100644
>> --- a/drivers/gpu/drm/drm_fb_dma_helper.c
>> +++ b/drivers/gpu/drm/drm_fb_dma_helper.c
>> @@ -85,6 +85,9 @@ dma_addr_t drm_fb_dma_get_gem_addr(struct drm_framebuffer *fb,
>>  	u32 block_start_y;
>>  	u32 num_hblocks;
>>  
>> +	if (block_w == 0 || block_h == 0)
>> +		return 0;
>
> This can't go unnoticed, you make the analyzer happy but you
> create bigger issues by silently returning '0'.
>
> If you are really concerned you can place here a BUG_ON or
> WARN_ON_ONCE.

Never BUG* though.

>
> Andi
>
>> +
>>  	obj = drm_fb_dma_get_gem_obj(fb, plane);
>>  	if (!obj)
>>  		return 0;

-- 
Jani Nikula, Intel
