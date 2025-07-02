Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A9DAF5AB4
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 16:12:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A92E10E717;
	Wed,  2 Jul 2025 14:12:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dwAPIyVY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6938010E717;
 Wed,  2 Jul 2025 14:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751465570; x=1783001570;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=tTVKzZpEnc7zeJ0EyQEnBhBVZ0c91y5ihShsNJAt4TA=;
 b=dwAPIyVY8cI5uxsdl7xemjrqfJgsafP49iTZERHq07hXOu5p2fbfUG7x
 odfTpliJkVcpFwkXP1wriPI5+0p7S+R6UVZMGzkUGTmLmlrTLednelN/6
 8oAYoKOrA9d696ZpMIxDV9Qxg00D6YgEC/SWlsH9Y0gjzAcIkgRSRWP0/
 QxRouv1kYdFx6qRuI7qhtm4u8t/lOatUQnd1BaoiLlT8B+gsG2CQ4v2wu
 Zih/nsJwuHIbzwyl9dCKQrFt/np315khDDdREiaET5UAwxJB6Ae0SWpQ/
 3RVuJzgrzKvS3MuGlIFPK2FyE5FUpQUSPs5BfXkymvVyQ+vRYBs+4uqym A==;
X-CSE-ConnectionGUID: V6U7HbGTTiW5dt/NYNjFdA==
X-CSE-MsgGUID: 1C2QKBpkTqCtTmPpYvInhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="64009118"
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="64009118"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 07:12:50 -0700
X-CSE-ConnectionGUID: Bl4kLbN8TYuEfK6iVaoptA==
X-CSE-MsgGUID: +7amJITWRvG7SO/ep4wRIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="154433102"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.29])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 07:12:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
In-Reply-To: <175146302838.3748.9114348489206219151@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
 <20250702084620.3837426-2-ankit.k.nautiyal@intel.com>
 <175146302838.3748.9114348489206219151@intel.com>
Date: Wed, 02 Jul 2025 17:12:43 +0300
Message-ID: <45e9d0aa40e0f9bf9dac03054e7a46c52623ba84@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, 02 Jul 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Ankit Nautiyal (2025-07-02 05:46:18-03:00)
>>Introduce a generic helper to check display workarounds using an enum.
>>
>>Convert Wa_16023588340 to use the new interface, simplifying WA checks
>>and making future additions easier.
>>
>>v2: Use drm_WARN instead of MISSING_CASE and simplify intel_display_wa
>>macro. (Jani)
>>
>>Suggested-by: Jani Nikula <jani.nikula@intel.com>
>>Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_display_wa.c | 15 +++++++++++++++
>> drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
>> drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
>> 3 files changed, 25 insertions(+), 1 deletion(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gp=
u/drm/i915/display/intel_display_wa.c
>>index f57280e9d041..f5e8d58d9a68 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>>+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>>@@ -3,6 +3,8 @@
>>  * Copyright =C2=A9 2023 Intel Corporation
>>  */
>>=20
>>+#include "drm/drm_print.h"
>>+
>> #include "i915_reg.h"
>> #include "intel_de.h"
>> #include "intel_display_core.h"
>>@@ -39,3 +41,16 @@ void intel_display_wa_apply(struct intel_display *disp=
lay)
>>         else if (DISPLAY_VER(display) =3D=3D 11)
>>                 gen11_display_wa_apply(display);
>> }
>>+
>>+bool __intel_display_wa(struct intel_display *display, enum intel_displa=
y_wa wa)
>>+{
>>+        switch (wa) {
>>+        case INTEL_DISPLAY_WA_16023588340:
>>+                return intel_display_needs_wa_16023588340(display);
>>+        default:
>>+                drm_WARN(display->drm, 1, "Missing Wa number: %d\n", wa);
>
> Hm... I wonder how useful the message would be if we just show the enum
> value. For example, if the next workaround that we added was
> INTEL_DISPLAY_WA_99999999999 and we had it missing here, I think we
> would get the following warning message:
>
>     "Missing Wa number: 1"
>
> Perhaps the enum identifier could be found in the callstack that is
> presented with the warning, but I'm wondering if we could do better
> here.
>
> Not sure there is a good solution without requiring extra memory to map
> each enum member to its corresponding the workaround number.

The solution would be to make the function:

bool __intel_display_wa(struct intel_display *display, enum intel_display_w=
a wa, const char *name);

and the macro:

#define intel_display_wa(__display, __wa) \
	__intel_display_wa((__display), INTEL_DISPLAY_WA_##__wa, __stringify(__wa))

and then you could debug log the name.

Worth it? Not sure.


BR,
Jani.


>
> --
> Gustavo Sousa
>
>>+                break;
>>+        }
>>+
>>+        return false;
>>+}
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gp=
u/drm/i915/display/intel_display_wa.h
>>index babd9d16603d..146ee70d66f7 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>>+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>>@@ -21,4 +21,13 @@ static inline bool intel_display_needs_wa_16023588340(=
struct intel_display *disp
>> bool intel_display_needs_wa_16023588340(struct intel_display *display);
>> #endif
>>=20
>>+enum intel_display_wa {
>>+        INTEL_DISPLAY_WA_16023588340,
>>+};
>>+
>>+bool __intel_display_wa(struct intel_display *display, enum intel_displa=
y_wa wa);
>>+
>>+#define intel_display_wa(__display, __wa) \
>>+        __intel_display_wa((__display), INTEL_DISPLAY_WA_##__wa)
>>+
>> #endif
>>diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
>>index 6e26cb4c5724..e2e03af520b2 100644
>>--- a/drivers/gpu/drm/i915/display/intel_fbc.c
>>+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>>@@ -1464,7 +1464,7 @@ static int intel_fbc_check_plane(struct intel_atomi=
c_state *state,
>>                 return 0;
>>         }
>>=20
>>-        if (intel_display_needs_wa_16023588340(display)) {
>>+        if (intel_display_wa(display, 16023588340)) {
>>                 plane_state->no_fbc_reason =3D "Wa_16023588340";
>>                 return 0;
>>         }
>>--=20
>>2.45.2
>>

--=20
Jani Nikula, Intel
