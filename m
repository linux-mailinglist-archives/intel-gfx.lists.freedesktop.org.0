Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 244959DA3D9
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 09:24:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 935D910E0D8;
	Wed, 27 Nov 2024 08:24:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g3JizVlP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4B9510E0D8
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 08:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732695892; x=1764231892;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=o547ZbYOnrhsTJCNU8mAToX+/3rgs9GRlEAFOx8nvwI=;
 b=g3JizVlP6U1gdi44w9OmMo3GWEB4k+Xejd28wiUrV4iHYRNt0VxBcQbF
 TkydjCI1QyKyM3P+jHEcKOs83XWxKake68ZgUxtsWQsgtA3zSAFNDfpzH
 yA5nXDN9VwLKBaHuTWLXfydGUI2xbESXZHtKH9M/Wp9nqKfBPrV1sHDI8
 xE2HX16fD0jBU6syYss6BEhIqYdsu9K0ZXP2Rcf24KdOeg4ka3Q3sDFic
 FPpD5q1GR1gARMMpma4eDQKxEKkl7F1yTWFkzX9aHonB1jdSsJugc79cq
 WrIbr/Ov/hMnPvYTT9XvD8apdyyN0MIQNKVAFfYPJLqaoX09+Y6rZirUd Q==;
X-CSE-ConnectionGUID: dodPX+I2S4qpNC+xJHgsHw==
X-CSE-MsgGUID: m3IUFUEVTUy+io5V1VcRNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="32261533"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="32261533"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 00:24:52 -0800
X-CSE-ConnectionGUID: DVLLqcMoSIat4SYwa8ujGQ==
X-CSE-MsgGUID: zRWScw1zTnq3tOmfQmdohw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="91966984"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 00:24:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/display: prefer DISPLAY_VER over
 GRAPHICS_VER in display s/r
In-Reply-To: <SN7PR11MB7041961C1C14C32794C4091DEF282@SN7PR11MB7041.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241126101222.2671224-1-jani.nikula@intel.com>
 <SN7PR11MB7041961C1C14C32794C4091DEF282@SN7PR11MB7041.namprd11.prod.outlook.com>
Date: Wed, 27 Nov 2024 10:24:46 +0200
Message-ID: <87v7w9w0c1.fsf@intel.com>
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

On Wed, 27 Nov 2024, "Kahola, Mika" <mika.kahola@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Tuesday, 26 November 2024 12.12
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
>> Subject: [PATCH 1/2] drm/i915/display: prefer DISPLAY_VER over GRAPHICS_VER
>> in display s/r
>>
>> Use display version checks for display scratch registers, not graphics version. And
>> for the older platforms it's the same thing anyway.
>>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Looks ok to me.
>
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>

Thanks for the review, pushed to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/i9xx_display_sr.c | 16 ++++++++--------
>>  1 file changed, 8 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.c
>> b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
>> index 4c78b7165831..e0e8044f9bcb 100644
>> --- a/drivers/gpu/drm/i915/display/i9xx_display_sr.c
>> +++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
>> @@ -16,14 +16,14 @@ static void i9xx_display_save_swf(struct
>> drm_i915_private *i915)
>>       int i;
>>
>>       /* Scratch space */
>> -     if (GRAPHICS_VER(i915) == 2 && IS_MOBILE(i915)) {
>> +     if (DISPLAY_VER(i915) == 2 && IS_MOBILE(i915)) {
>>               for (i = 0; i < 7; i++) {
>>                       display->restore.saveSWF0[i] = intel_de_read(display,
>> SWF0(i915, i));
>>                       display->restore.saveSWF1[i] = intel_de_read(display,
>> SWF1(i915, i));
>>               }
>>               for (i = 0; i < 3; i++)
>>                       display->restore.saveSWF3[i] = intel_de_read(display,
>> SWF3(i915, i));
>> -     } else if (GRAPHICS_VER(i915) == 2) {
>> +     } else if (DISPLAY_VER(i915) == 2) {
>>               for (i = 0; i < 7; i++)
>>                       display->restore.saveSWF1[i] = intel_de_read(display,
>> SWF1(i915, i));
>>       } else if (HAS_GMCH(i915)) {
>> @@ -42,14 +42,14 @@ static void i9xx_display_restore_swf(struct
>> drm_i915_private *i915)
>>       int i;
>>
>>       /* Scratch space */
>> -     if (GRAPHICS_VER(i915) == 2 && IS_MOBILE(i915)) {
>> +     if (DISPLAY_VER(i915) == 2 && IS_MOBILE(i915)) {
>>               for (i = 0; i < 7; i++) {
>>                       intel_de_write(display, SWF0(i915, i), display-
>> >restore.saveSWF0[i]);
>>                       intel_de_write(display, SWF1(i915, i), display-
>> >restore.saveSWF1[i]);
>>               }
>>               for (i = 0; i < 3; i++)
>>                       intel_de_write(display, SWF3(i915, i), display-
>> >restore.saveSWF3[i]);
>> -     } else if (GRAPHICS_VER(i915) == 2) {
>> +     } else if (DISPLAY_VER(i915) == 2) {
>>               for (i = 0; i < 7; i++)
>>                       intel_de_write(display, SWF1(i915, i), display-
>> >restore.saveSWF1[i]);
>>       } else if (HAS_GMCH(i915)) {
>> @@ -71,10 +71,10 @@ void i9xx_display_sr_save(struct drm_i915_private *i915)
>>               return;
>>
>>       /* Display arbitration control */
>> -     if (GRAPHICS_VER(i915) <= 4)
>> +     if (DISPLAY_VER(i915) <= 4)
>>               display->restore.saveDSPARB = intel_de_read(display,
>> DSPARB(i915));
>>
>> -     if (GRAPHICS_VER(i915) == 4)
>> +     if (DISPLAY_VER(i915) == 4)
>>               pci_read_config_word(pdev, GCDGMBUS, &display-
>> >restore.saveGCDGMBUS);
>>
>>       i9xx_display_save_swf(i915);
>> @@ -90,10 +90,10 @@ void i9xx_display_sr_restore(struct drm_i915_private
>> *i915)
>>
>>       i9xx_display_restore_swf(i915);
>>
>> -     if (GRAPHICS_VER(i915) == 4)
>> +     if (DISPLAY_VER(i915) == 4)
>>               pci_write_config_word(pdev, GCDGMBUS, display-
>> >restore.saveGCDGMBUS);
>>
>>       /* Display arbitration */
>> -     if (GRAPHICS_VER(i915) <= 4)
>> +     if (DISPLAY_VER(i915) <= 4)
>>               intel_de_write(display, DSPARB(i915), display-
>> >restore.saveDSPARB);  }
>> --
>> 2.39.5
>

-- 
Jani Nikula, Intel
