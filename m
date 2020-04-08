Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2361A1F3B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 12:54:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D84F26E0B7;
	Wed,  8 Apr 2020 10:54:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3242C6E0B7
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 10:54:46 +0000 (UTC)
IronPort-SDR: E5/lxDYTI4XujX8s3sL9KVZoN0Ns2lF/DaNe99l+LBIu+8ePirOt6RFB3WYIdO9jlxeliecPtp
 MwEGTrm303Jw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 03:54:45 -0700
IronPort-SDR: XgtQjPyyLmIBZ/93CGJ0g5XyID381eyGEuUkGgSnHqpqYl3icfqMaYSydNOYYdE28biLycAtg7
 VDMPuoyKWaVA==
X-IronPort-AV: E=Sophos;i="5.72,358,1580803200"; d="scan'208";a="425099370"
Received: from slinke-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.237])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 03:54:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Wambui Karuga <wambui.karugax@gmail.com>
In-Reply-To: <alpine.LNX.2.21.99999.375.2004071410480.77089@wambui>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <alpine.LNX.2.21.99999.375.2004071410480.77089@wambui>
Date: Wed, 08 Apr 2020 13:54:40 +0300
Message-ID: <87y2r6gscv.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/17] drm/i915/audio: use struct drm_device
 based logging
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
Cc: intel-gfx@lists.freedesktop.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 07 Apr 2020, Wambui Karuga <wambui.karugax@gmail.com> wrote:
> On Thu, 2 Apr 2020, Jani Nikula wrote:
>
>> Convert all the DRM_* logging macros to the struct drm_device based
>> macros to provide device specific logging.
>>
>> No functional changes.
>>
>> Generated using the following semantic patch, originally written by
>> Wambui Karuga <wambui.karugax@gmail.com>, with manual fixups on top:
>>
>> @@
>> identifier fn, T;
>> @@
>>
>> fn(...,struct drm_i915_private *T,...) {
>> <+...
>> (
>> -DRM_INFO(
>> +drm_info(&T->drm,
>> ...)
>> |
>> -DRM_NOTE(
>> +drm_notice(&T->drm,
>> ...)
>> |
>> -DRM_ERROR(
>> +drm_err(&T->drm,
>> ...)
>> |
>> -DRM_WARN(
>> +drm_warn(&T->drm,
>> ...)
>> |
>> -DRM_DEBUG_DRIVER(
>> +drm_dbg(&T->drm,
>> ...)
>> |
>> -DRM_DEBUG_KMS(
>> +drm_dbg_kms(&T->drm,
>> ...)
>> |
>> -DRM_DEBUG_ATOMIC(
>> +drm_dbg_atomic(&T->drm,
>> ...)
>> )
>> ...+>
>> }
>>
>> @@
>> identifier fn, T;
>> @@
>>
>> fn(...) {
>> ...
>> struct drm_i915_private *T = ...;
>> <+...
>> (
>> -DRM_INFO(
>> +drm_info(&T->drm,
>> ...)
>> |
>> -DRM_NOTE(
>> +drm_notice(&T->drm,
>> ...)
>> |
>> -DRM_ERROR(
>> +drm_err(&T->drm,
>> ...)
>> |
>> -DRM_WARN(
>> +drm_warn(&T->drm,
>> ...)
>> |
>> -DRM_DEBUG_DRIVER(
>> +drm_dbg(&T->drm,
>> ...)
>> |
>> -DRM_DEBUG_KMS(
>> +drm_dbg_kms(&T->drm,
>> ...)
>> |
>> -DRM_DEBUG_ATOMIC(
>> +drm_dbg_atomic(&T->drm,
>> ...)
>> )
>> ...+>
>> }
>>
>> Cc: Wambui Karuga <wambui.karugax@gmail.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Wambui Karuga <wambui.karugax@gmail.com>

Many thanks for all the reviews, pushed the lot.

BR,
Jani.

>
>> ---
>> drivers/gpu/drm/i915/display/intel_audio.c | 12 +++++++-----
>> 1 file changed, 7 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
>> index 950160f1a89f..47402c2869db 100644
>> --- a/drivers/gpu/drm/i915/display/intel_audio.c
>> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
>> @@ -252,14 +252,16 @@ static u32 audio_config_hdmi_pixel_clock(const struct intel_crtc_state *crtc_sta
>> 		i = ARRAY_SIZE(hdmi_audio_clock);
>>
>> 	if (i == ARRAY_SIZE(hdmi_audio_clock)) {
>> -		DRM_DEBUG_KMS("HDMI audio pixel clock setting for %d not found, falling back to defaults\n",
>> -			      adjusted_mode->crtc_clock);
>> +		drm_dbg_kms(&dev_priv->drm,
>> +			    "HDMI audio pixel clock setting for %d not found, falling back to defaults\n",
>> +			    adjusted_mode->crtc_clock);
>> 		i = 1;
>> 	}
>>
>> -	DRM_DEBUG_KMS("Configuring HDMI audio for pixel clock %d (0x%08x)\n",
>> -		      hdmi_audio_clock[i].clock,
>> -		      hdmi_audio_clock[i].config);
>> +	drm_dbg_kms(&dev_priv->drm,
>> +		    "Configuring HDMI audio for pixel clock %d (0x%08x)\n",
>> +		    hdmi_audio_clock[i].clock,
>> +		    hdmi_audio_clock[i].config);
>>
>> 	return hdmi_audio_clock[i].config;
>> }
>> -- 
>> 2.20.1
>>
>>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
