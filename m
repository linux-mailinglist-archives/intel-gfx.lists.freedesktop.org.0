Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1486590C24
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 08:55:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C5929B2E0;
	Fri, 12 Aug 2022 06:55:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C61512AECB
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 06:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660287297; x=1691823297;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=QkZWxpOToKVPoI7Wdy0/m9hVYJpL8JNCSXN+BfpKncI=;
 b=Av0vJkRn6fKPGGmcnMAMY8c9ZE9On7FtmaDch75bNZangewqWGLkoOOO
 j8KpDjPIFJ6gMi1/RVoe018OaZtRqustQdU5+AdQ8t4dosNgVgC6qIyel
 G1Cb6XGKHb1qxm8+HVi0RyxckLN3H4/xbBgVzaqqGKxMKclAUoVjXKqcm
 ciCdsKo4jt7hOYLGjPHXjP0zP6kdUwxWQF1aOazynx0pH4F2PXeBdKan5
 TL9JJ1o4JzWVpaHmq0neR/NpQcAIx+GuAMjOYqbyg6P+e26MwKu7Ex+ga
 XswM8udYgX/+giDo8Th21klnA5ILuOjYDrUDkFUpi8rvQNQpxPlB5zVI4 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="355541952"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="355541952"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 23:54:56 -0700
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="665712194"
Received: from ebrazil-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.37.174])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 23:54:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB3177A54C0A8565E373DD04C3BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660230121.git.jani.nikula@intel.com>
 <97a3e319f4c55a6d0a1f32a18dc25f0474d7b02f.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB3177A54C0A8565E373DD04C3BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Fri, 12 Aug 2022 09:54:51 +0300
Message-ID: <87v8qyrlxg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 06/39] drm/i915: move wm_disp funcs to
 display.funcs
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 12 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
>> b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index 98c6ccdc9100..a6843ebcca5a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -8,6 +8,7 @@
>>
>>  #include <linux/types.h>
>>
>> +struct drm_i915_private;
>>  struct intel_atomic_state;
>>  struct intel_cdclk_funcs;
>>  struct intel_clock_gating_funcs;
>> @@ -31,6 +32,23 @@ struct intel_display_funcs {
>>       void (*commit_modeset_enables)(struct intel_atomic_state *state);
>> };
>>
>> +/* functions used for watermark calcs for display. */ struct
>> +intel_wm_funcs {
>> +     /* update_wm is for legacy wm management */
>> +     void (*update_wm)(struct drm_i915_private *dev_priv);
>> +     int (*compute_pipe_wm)(struct intel_atomic_state *state,
>> +                            struct intel_crtc *crtc);
>> +     int (*compute_intermediate_wm)(struct intel_atomic_state *state,
>> +                                    struct intel_crtc *crtc);
>> +     void (*initial_watermarks)(struct intel_atomic_state *state,
>> +                                struct intel_crtc *crtc);
>> +     void (*atomic_update_watermarks)(struct intel_atomic_state *state,
>> +                                      struct intel_crtc *crtc);
>> +     void (*optimize_watermarks)(struct intel_atomic_state *state,
>> +                                 struct intel_crtc *crtc);
>> +     int (*compute_global_watermarks)(struct intel_atomic_state *state);
>> };
>> +
>>  struct intel_display {
>>       /* Display functions */
>>       struct {
>> @@ -48,6 +66,9 @@ struct intel_display {
>>
>>               /* pm private clock gating functions */
>>               const struct intel_clock_gating_funcs *clock_gating;
>> +
>> +             /* pm display functions */
>> +             const struct intel_wm_funcs *wm;
>>       } funcs;
>
> Can the wm, dbuf, clock related move to a struct intel_pm ? which
> makes it more meaningful else again we end up creating a struct
> intel_display a long one like i915_private.

Well, I think the display wm/dbuf stuff also needs to be split from
intel_pm.c so it's not so clear cut. And for now, I'm keeping the
functions together.

BR,
Jani.




-- 
Jani Nikula, Intel Open Source Graphics Center
