Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9BD9BE1C8
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 10:08:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5390F10E69F;
	Wed,  6 Nov 2024 09:07:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ePRB69AP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 745A510E0E0;
 Wed,  6 Nov 2024 09:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730884077; x=1762420077;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=P/C4d8979fGeYGoJ5o7JDkPuRDltcOxOLLz51dlMedY=;
 b=ePRB69APeulATQ+UikV7NGqxrhGygwmXOziAB3EbSdXdIs/JY9XryL3Z
 DV6rKUQCkahLjOnGeY59j8aRH9PHs09u86J8+E0ejXRMBoDkTjz56f50I
 ym9djY7R5fP2eDbZEVu7t49i/d8lO28z1Dar/m0gLb9Iwn3M6dVCEYDGr
 29DdkkJpeojhJxJquNlnZu7VyJYvOcpWBd8PxzsjaFovsgG42cCBmJV/X
 3k0IfSf1uxMHq7PWbMqBNRtAx9bucvj0lMHz/MDgL+0WlEE27mpYnZzl6
 RPoUnU777FnyzSzovMS0Dom06Ufj5axxF51mGnYZBQdLP6lRYLcNhlOEo A==;
X-CSE-ConnectionGUID: zKHh8gUWQ3SWbNPH+ZpgEw==
X-CSE-MsgGUID: 8OvAxf4XSWev/KCNcd09RQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="30555730"
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="30555730"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 01:07:56 -0800
X-CSE-ConnectionGUID: tl0XSs8RSl6d/Tk0Q4Suyg==
X-CSE-MsgGUID: rHGa52+jTDSd+5LppeerVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="89563262"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.143])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 01:07:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 02/15] drm/i915/display: convert
 HAS_D12_PLANE_MINIMIZATION() to struct intel_display
In-Reply-To: <38ef337723bdb90ce4842fd25bd2e4feea382f55.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1730740629.git.jani.nikula@intel.com>
 <3f7b119ce893194eb50b652c6e6a9050d0d3c2a9.1730740629.git.jani.nikula@intel.com>
 <38ef337723bdb90ce4842fd25bd2e4feea382f55.camel@intel.com>
Date: Wed, 06 Nov 2024 11:07:51 +0200
Message-ID: <877c9ghgrc.fsf@intel.com>
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

On Wed, 06 Nov 2024, "Govindapillai, Vinod" <vinod.govindapillai@intel.com> wrote:
> On Mon, 2024-11-04 at 19:19 +0200, Jani Nikula wrote:
>> Convert HAS_D12_PLANE_MINIMIZATION() to struct intel_display. Do minimal
>> drive-by conversions to struct intel_display in the callers while at it.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_device.c |  2 +-
>>  drivers/gpu/drm/i915/display/intel_display_device.h |  2 +-
>>  drivers/gpu/drm/i915/display/intel_display_irq.c    | 12 +++++++-----
>>  drivers/gpu/drm/i915/display/skl_universal_plane.c  |  4 +++-
>>  4 files changed, 12 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c
>> b/drivers/gpu/drm/i915/display/intel_display_device.c
>> index 47957384d56d..1e561df02751 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>> @@ -1687,7 +1687,7 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private
>> *i9
>>                 display_runtime->num_scalers[PIPE_C] = 1;
>>         }
>>
>> -       if (DISPLAY_VER(i915) >= 13 || HAS_D12_PLANE_MINIMIZATION(i915))
>> +       if (DISPLAY_VER(i915) >= 13 || HAS_D12_PLANE_MINIMIZATION(display))
> Just want to note that, I guess you intentionally leftout rest of the "i915" in this
> __intel_display_device_info_runtime_init(). Though all instances of i915 in
> gen8_de_pipe_fault_mask() are changed to intel_display.

Judgement call. Changing __intel_display_device_info_runtime_init()
would be a bigger change than everything else in the patch. It's done
separately in a later patch, and that depends on this
patch. gen8_de_pipe_fault_mask() has a few references only, so makes
sense to convert that.

> Anyway, doesnt impact any functionalities..
>
> Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

Thanks.

>
>>                 for_each_pipe(i915, pipe)
>>                         display_runtime->num_sprites[pipe] = 4;
>>         else if (DISPLAY_VER(i915) >= 11)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
>> b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index 392fbe29e974..e45ba21166d3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -144,7 +144,7 @@ struct intel_display_platforms {
>>  #define HAS_CDCLK_CRAWL(i915)          (DISPLAY_INFO(i915)->has_cdclk_crawl)
>>  #define HAS_CDCLK_SQUASH(i915)         (DISPLAY_INFO(i915)->has_cdclk_squash)
>>  #define HAS_CUR_FBC(i915)              (!HAS_GMCH(i915) && IS_DISPLAY_VER(i915, 7, 13))
>> -#define HAS_D12_PLANE_MINIMIZATION(i915) (IS_ROCKETLAKE(i915) || IS_ALDERLAKE_S(i915))
>> +#define HAS_D12_PLANE_MINIMIZATION(__display)  ((__display)->platform.rocketlake || (__display)-
>> >platform.alderlake_s)
>>  #define HAS_DBUF_OVERLAP_DETECTION(__i915) (DISPLAY_RUNTIME_INFO(__i915)-
>> >has_dbuf_overlap_detection)
>>  #define HAS_DDI(i915)                  (DISPLAY_INFO(i915)->has_ddi)
>>  #define HAS_DISPLAY(i915)              (DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> index e1547ebce60e..f0d3bdb5fc60 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> @@ -843,7 +843,9 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
>>
>>  static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
>>  {
>> -       if (DISPLAY_VER(dev_priv) >= 14)
>> +       struct intel_display *display = &dev_priv->display;
>> +
>> +       if (DISPLAY_VER(display) >= 14)
>>                 return MTL_PIPEDMC_ATS_FAULT |
>>                         MTL_PLANE_ATS_FAULT |
>>                         GEN12_PIPEDMC_FAULT |
>> @@ -853,7 +855,7 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
>>                         GEN9_PIPE_PLANE3_FAULT |
>>                         GEN9_PIPE_PLANE2_FAULT |
>>                         GEN9_PIPE_PLANE1_FAULT;
>> -       if (DISPLAY_VER(dev_priv) >= 13 || HAS_D12_PLANE_MINIMIZATION(dev_priv))
>> +       if (DISPLAY_VER(display) >= 13 || HAS_D12_PLANE_MINIMIZATION(display))
>>                 return GEN12_PIPEDMC_FAULT |
>>                         GEN9_PIPE_CURSOR_FAULT |
>>                         GEN11_PIPE_PLANE5_FAULT |
>> @@ -861,7 +863,7 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
>>                         GEN9_PIPE_PLANE3_FAULT |
>>                         GEN9_PIPE_PLANE2_FAULT |
>>                         GEN9_PIPE_PLANE1_FAULT;
>> -       else if (DISPLAY_VER(dev_priv) == 12)
>> +       else if (DISPLAY_VER(display) == 12)
>>                 return GEN12_PIPEDMC_FAULT |
>>                         GEN9_PIPE_CURSOR_FAULT |
>>                         GEN11_PIPE_PLANE7_FAULT |
>> @@ -871,7 +873,7 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
>>                         GEN9_PIPE_PLANE3_FAULT |
>>                         GEN9_PIPE_PLANE2_FAULT |
>>                         GEN9_PIPE_PLANE1_FAULT;
>> -       else if (DISPLAY_VER(dev_priv) == 11)
>> +       else if (DISPLAY_VER(display) == 11)
>>                 return GEN9_PIPE_CURSOR_FAULT |
>>                         GEN11_PIPE_PLANE7_FAULT |
>>                         GEN11_PIPE_PLANE6_FAULT |
>> @@ -880,7 +882,7 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
>>                         GEN9_PIPE_PLANE3_FAULT |
>>                         GEN9_PIPE_PLANE2_FAULT |
>>                         GEN9_PIPE_PLANE1_FAULT;
>> -       else if (DISPLAY_VER(dev_priv) >= 9)
>> +       else if (DISPLAY_VER(display) >= 9)
>>                 return GEN9_PIPE_CURSOR_FAULT |
>>                         GEN9_PIPE_PLANE4_FAULT |
>>                         GEN9_PIPE_PLANE3_FAULT |
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> index 038ca2ec5d7a..c6e464d70cc7 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -239,7 +239,9 @@ int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
>>
>>  static u8 icl_nv12_y_plane_mask(struct drm_i915_private *i915)
>>  {
>> -       if (DISPLAY_VER(i915) >= 13 || HAS_D12_PLANE_MINIMIZATION(i915))
>> +       struct intel_display *display = &i915->display;
>> +
>> +       if (DISPLAY_VER(display) >= 13 || HAS_D12_PLANE_MINIMIZATION(display))
>>                 return BIT(PLANE_4) | BIT(PLANE_5);
>>         else
>>                 return BIT(PLANE_6) | BIT(PLANE_7);
>

-- 
Jani Nikula, Intel
