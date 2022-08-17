Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2125969D2
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 08:51:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42CF410FD78;
	Wed, 17 Aug 2022 06:51:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B33310FD7A
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 06:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660719060; x=1692255060;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+VvuTtlsW2jX1y/7kzq1L5VzqtcFVksbc1oqagNGchU=;
 b=hoOgZzw72vFGrX6gEF9AEzKfMuqdP1TAki0V2+c0UtT5SGEyCebY0IFo
 Y7S5QqNq9fhOGBE6T5JOMCrOGBSV1ttaBMg51yDfihV8reqBtAgdPUzyb
 6n7wcCVha5g3KWlpkRYNikQUp+jxgpSy8eq12sZ/OUgoi4Bw5KbOsK0kp
 1hkJX3Nr4zvmAam+ROxdZD+X7w4JHsGirB34z1Z+ipCU00KwR3W9HTP77
 jhfpyxmRAmLorkdedfeazCbElz+S/XMtLWRtEICQXp/5LPAyMdRveZZd/
 nCWr20/5ZOsTursKsIWgdQO16Jix+UMU+wCkIs62MTTPuqbG2l9q5nSPg g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="293694632"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="293694632"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 23:50:55 -0700
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="667475942"
Received: from sbammi-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 23:50:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20220817013813.gnh2nnyd7ma2me7g@ldmartin-desk2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660230121.git.jani.nikula@intel.com>
 <ee8405fc39f5c4c0f439590d98a107adfd1bf6d1.1660230121.git.jani.nikula@intel.com>
 <20220817013813.gnh2nnyd7ma2me7g@ldmartin-desk2.lan>
Date: Wed, 17 Aug 2022 09:50:52 +0300
Message-ID: <871qtfqs6r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 05/39] drm/i915: move clock_gating_funcs to
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 16 Aug 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Thu, Aug 11, 2022 at 06:07:16PM +0300, Jani Nikula wrote:
>>Move display related members under drm_i915_private display sub-struct.
>>
>>Rename struct i915_clock_gating_funcs to intel_clock_gating_funcs while
>>at it.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> .../gpu/drm/i915/display/intel_display_core.h |  4 ++
>> drivers/gpu/drm/i915/i915_drv.h               |  4 --
>> drivers/gpu/drm/i915/intel_pm.c               | 58 +++++++++----------
>> 3 files changed, 33 insertions(+), 33 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>>index ff76bd4079e4..98c6ccdc9100 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>>@@ -10,6 +10,7 @@
>>
>> struct intel_atomic_state;
>> struct intel_cdclk_funcs;
>>+struct intel_clock_gating_funcs;
>> struct intel_crtc;
>> struct intel_crtc_state;
>> struct intel_dpll_funcs;
>>@@ -44,6 +45,9 @@ struct intel_display {
>>
>> 		/* irq display functions */
>> 		const struct intel_hotplug_funcs *hotplug;
>>+
>>+		/* pm private clock gating functions */
>>+		const struct intel_clock_gating_funcs *clock_gating;
>
> did we get this correct moving clock_gating to display? The question I'd
> ask is: if a platform doesn't have display, would it need to do
> anything clock-gating related? Looking at the current functions e.g. 
> gen9_init_clock_gating setting some chicken bits, I'd say yes.
>
> Another reasoning I'd have is regarding the registers it touches.
> And here they are not from display.
>
> So, I don't really understand the reason for moving clock_gating here,
> except that there are indeed several functions doing display-related
> things. Should we rather split one for i915 and one for i915-display?

Mmmh, maybe. It's hard to split the driver nicely when the hardware
isn't!

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
