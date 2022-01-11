Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4E648B1B7
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 17:14:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 608C610E264;
	Tue, 11 Jan 2022 16:14:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D468510E264
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 16:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641917647; x=1673453647;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=L6Sh/0ckX0sphSClncGPL7Ls1H5ADoK7LZuTLIp+T+g=;
 b=eb7Zd5D/76nc18tedLjlGTaA9lJf2KKilLoZMdArIn4UTTucsTdiOfmJ
 RjUzX5ve/wuqtqdpvQb7R4p+h0S0ncFjX8MOj+f4ByKSic66zl0Yva3El
 k6D7YA3WySxxLa2wlLzhjk5LEGYQQlJQejQq7BjHs996Sb6zvuoX45ULq
 t0X/GdJgXePzpfZAQwWtsl6Fqtw6o5fP2UrXJmsSkwXVCiOX5RCMirp5H
 /9mlyU+IQAC0fQPT9M9pkj24omBNSauqr0GJhgjD80imf3PFv434jX0Ve
 DutBbdu01TE4FfliGR861WjF+xtIFBrXRI70rFmdGbHk0Ov0+LXhln85T g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="306873104"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="306873104"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 08:14:06 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="669853677"
Received: from rblair-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.75.118])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 08:14:05 -0800
Date: Tue, 11 Jan 2022 08:14:05 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220111161405.kpgf2jxvlkdnlk4v@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220110095740.166078-1-jani.nikula@intel.com>
 <20220110095740.166078-3-jani.nikula@intel.com>
 <YdxYvXfkOgTFFg+s@intel.com> <87pmoy8xdb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87pmoy8xdb.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/vga: switch to use VGA
 definitions from video/vga.h
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 11, 2022 at 10:55:44AM +0200, Jani Nikula wrote:
>On Mon, 10 Jan 2022, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
>> On Mon, Jan 10, 2022 at 11:57:39AM +0200, Jani Nikula wrote:
>>> The video/vga.h has macros for the VGA registers. Switch to use them.
>>>
>>> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_vga.c | 9 +++++----
>>>  1 file changed, 5 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
>>> index fa779f7ea415..43c12036c1fa 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vga.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
>>> @@ -7,6 +7,7 @@
>>>  #include <linux/vgaarb.h>
>>>
>>>  #include <drm/i915_drm.h>
>>> +#include <video/vga.h>
>>>
>>>  #include "i915_drv.h"
>>>  #include "intel_de.h"
>>> @@ -34,9 +35,9 @@ void intel_vga_disable(struct drm_i915_private *dev_priv)
>>>
>>>  	/* WaEnableVGAAccessThroughIOPort:ctg,elk,ilk,snb,ivb,vlv,hsw */
>>>  	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
>>> -	outb(SR01, VGA_SR_INDEX);
>>> -	sr1 = inb(VGA_SR_DATA);
>>> -	outb(sr1 | 1 << 5, VGA_SR_DATA);
>>> +	outb(VGA_SEQ_CLOCK_MODE, VGA_SEQ_I);
>>
>> Not a huge fan of some of these defines since now I have
>> no idea what register this is selecting.
>
>It's a bit silly that we have our own macros for this stuff, but I get
>the point. Took me a while to figure the changes out because the macros
>in video/vga.h aren't even grouped in a helpful way.
>
>I guess you'd prefer patch [1] over patches 3-4 in this series then? For
>me the main goal is to just reduce the size of i915_reg.h.

alternatively, to patch video/vga.h to make it pretty?

Lucas De Marchi
