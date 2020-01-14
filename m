Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E8813ABC8
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 15:02:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2776F6E3DB;
	Tue, 14 Jan 2020 14:02:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE4CE6E3DF
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 14:02:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 06:02:12 -0800
X-IronPort-AV: E=Sophos;i="5.69,433,1571727600"; d="scan'208";a="225225809"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 06:02:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2020 16:01:38 +0200
Message-Id: <1effc5c8688803cae96d6c3dbbc447998cab8f56.1579010266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579010266.git.jani.nikula@intel.com>
References: <cover.1579010266.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 4/5] drm/i915: Auto detect DPCD backlight
 support by default
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
Cc: jani.nikula@intel.com, AceLan Kao <acelan.kao@canonical.com>,
 Perry Yuan <pyuan@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Lyude Paul <lyude@redhat.com>

Turns out we actually already have some companies, such as Lenovo,
shipping machines with AMOLED screens that don't allow controlling the
backlight through the usual PWM interface and only allow controlling it
through the standard EDP DPCD interface. One example of one of these
laptops is the X1 Extreme 2nd Generation.

Since we've got systems that need this turned on by default now to have
backlight controls working out of the box, let's start auto-detecting it
for systems by default based on what the VBT tells us. We do this by
changing the default value for the enable_dpcd_backlight module param
from 0 to -1.

Tested-by: AceLan Kao <acelan.kao@canonical.com>
Tested-by: Perry Yuan <pyuan@redhat.com>
Signed-off-by: Lyude Paul <lyude@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_params.c | 2 +-
 drivers/gpu/drm/i915/i915_params.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 1dd1f3652795..31eed60c167e 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -172,7 +172,7 @@ i915_param_named_unsafe(inject_probe_failure, uint, 0400,
 
 i915_param_named(enable_dpcd_backlight, int, 0600,
 	"Enable support for DPCD backlight control"
-	"(-1=use per-VBT LFP backlight type setting, 0=disabled [default], 1=enabled)");
+	"(-1=use per-VBT LFP backlight type setting [default], 0=disabled, 1=enabled)");
 
 #if IS_ENABLED(CONFIG_DRM_I915_GVT)
 i915_param_named(enable_gvt, bool, 0400,
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 31b88f297fbc..a79d0867f77a 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -64,7 +64,7 @@ struct drm_printer;
 	param(int, reset, 3) \
 	param(unsigned int, inject_probe_failure, 0) \
 	param(int, fastboot, -1) \
-	param(int, enable_dpcd_backlight, 0) \
+	param(int, enable_dpcd_backlight, -1) \
 	param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE) \
 	param(unsigned long, fake_lmem_start, 0) \
 	/* leave bools at the end to not create holes */ \
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
