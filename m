Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC39A3489FF
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 08:20:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD8846EB20;
	Thu, 25 Mar 2021 07:20:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 583 seconds by postgrey-1.36 at gabe;
 Thu, 25 Mar 2021 05:11:09 UTC
Received: from mail-m17637.qiye.163.com (mail-m17637.qiye.163.com
 [59.111.176.37])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B21F6EB19
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 05:11:09 +0000 (UTC)
Received: from wanjb-virtual-machine.localdomain (unknown [36.152.145.182])
 by mail-m17637.qiye.163.com (Hmail) with ESMTPA id 65E7C9802CA;
 Thu, 25 Mar 2021 13:01:23 +0800 (CST)
From: Wan Jiabing <wanjiabing@vivo.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Wan Jiabing <wanjiabing@vivo.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Manasi Navare <manasi.d.navare@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 Dave Airlie <airlied@redhat.com>,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Date: Thu, 25 Mar 2021 13:00:45 +0800
Message-Id: <20210325050059.848207-1-wanjiabing@vivo.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZS1VLWVdZKFlBSE83V1ktWUFJV1kPCR
 oVCBIfWUFZQkgYGE0dHxlDHUtNVkpNSk1NT0NPQ09KTE5VEwETFhoSFyQUDg9ZV1kWGg8SFR0UWU
 FZT0tIVUpKS0hKTFVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NVE6Eww5Fz8PGj40LxULAj8z
 KRgwCzNVSlVKTUpNTU9DT0NPTk5DVTMWGhIXVQwaFRESGhkSFRw7DRINFFUYFBZFWVdZEgtZQVlI
 TVVKTklVSk9OVUpDSVlXWQgBWUFITExJNwY+
X-HM-Tid: 0a7867c23509d992kuws65e7c9802ca
X-Mailman-Approved-At: Thu, 25 Mar 2021 07:20:42 +0000
Subject: [Intel-gfx] [PATCH] drivers: gpu: drm: Remove repeated declaration
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
Cc: kael_w@yeah.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

struct drm_i915_private, struct intel_crtc_state and
struct intel_crtc have been declared before. 
Remove the duplicate.

Signed-off-by: Wan Jiabing <wanjiabing@vivo.com>
---
 drivers/gpu/drm/i915/display/intel_crt.h     | 1 -
 drivers/gpu/drm/i915/display/intel_display.h | 1 -
 drivers/gpu/drm/i915/display/intel_vrr.h     | 1 -
 3 files changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.h b/drivers/gpu/drm/i915/display/intel_crt.h
index 1b3fba359efc..6c5c44600cbd 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.h
+++ b/drivers/gpu/drm/i915/display/intel_crt.h
@@ -11,7 +11,6 @@
 enum pipe;
 struct drm_encoder;
 struct drm_i915_private;
-struct drm_i915_private;
 
 bool intel_crt_port_enabled(struct drm_i915_private *dev_priv,
 			    i915_reg_t adpa_reg, enum pipe *pipe);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 76f8a805b0a3..29cb6d84ed70 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -48,7 +48,6 @@ struct i915_ggtt_view;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
-struct intel_crtc_state;
 struct intel_digital_port;
 struct intel_dp;
 struct intel_encoder;
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index fac01bf4ab50..96f9c9c27ab9 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -15,7 +15,6 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dp;
 struct intel_encoder;
-struct intel_crtc;
 
 bool intel_vrr_is_capable(struct drm_connector *connector);
 void intel_vrr_check_modeset(struct intel_atomic_state *state);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
