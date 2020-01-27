Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A516414A15C
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 10:59:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B8906EAB3;
	Mon, 27 Jan 2020 09:59:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB3B96EAB3
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 09:59:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 01:59:46 -0800
X-IronPort-AV: E=Sophos;i="5.70,369,1574150400"; d="scan'208";a="221688724"
Received: from jpanina-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.12])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 01:59:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87eevpgchn.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200124125829.16973-1-vandita.kulkarni@intel.com>
 <87eevpgchn.fsf@intel.com>
Date: Mon, 27 Jan 2020 11:59:45 +0200
Message-ID: <87v9oxb4oe.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vbt: Fix the timing parameters
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

On Fri, 24 Jan 2020, Jani Nikula <jani.nikula@intel.com> wrote:
> On Fri, 24 Jan 2020, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
>> Fix htotal and vtotal parameters derived from
>> DTD block of VBT.
>>
>> Fixes: 33ef6d4fd8df ("drm/i915/vbt: Handle generic DTD block")
>> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

And pushed, thanks for the patch. Amended the commit message to explain
that the total values were missing the back porch size.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c | 6 ++++--
>>  1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
>> index 1e675aa55938..942a073d5768 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -366,14 +366,16 @@ parse_generic_dtd(struct drm_i915_private *dev_priv,
>>  		panel_fixed_mode->hdisplay + dtd->hfront_porch;
>>  	panel_fixed_mode->hsync_end =
>>  		panel_fixed_mode->hsync_start + dtd->hsync;
>> -	panel_fixed_mode->htotal = panel_fixed_mode->hsync_end;
>> +	panel_fixed_mode->htotal =
>> +		panel_fixed_mode->hdisplay + dtd->hblank;
>>  
>>  	panel_fixed_mode->vdisplay = dtd->vactive;
>>  	panel_fixed_mode->vsync_start =
>>  		panel_fixed_mode->vdisplay + dtd->vfront_porch;
>>  	panel_fixed_mode->vsync_end =
>>  		panel_fixed_mode->vsync_start + dtd->vsync;
>> -	panel_fixed_mode->vtotal = panel_fixed_mode->vsync_end;
>> +	panel_fixed_mode->vtotal =
>> +		panel_fixed_mode->vdisplay + dtd->vblank;
>>  
>>  	panel_fixed_mode->clock = dtd->pixel_clock;
>>  	panel_fixed_mode->width_mm = dtd->width_mm;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
