Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD6B3D66B5
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 20:29:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F19C76EA20;
	Mon, 26 Jul 2021 18:29:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B7D076E093;
 Mon, 26 Jul 2021 18:29:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B1893A73C9;
 Mon, 26 Jul 2021 18:29:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Mon, 26 Jul 2021 18:29:02 -0000
Message-ID: <162732414270.2613.6071417440367596158@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210726181559.80855-1-jose.souza@intel.com>
In-Reply-To: <20210726181559.80855-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Disable_audio=2C_DRRS_and_PSR_before_pl?=
 =?utf-8?q?anes?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/display: Disable audio, DRRS and PSR before planes
URL   : https://patchwork.freedesktop.org/series/93024/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4b987bbf5ee8 drm/i915/display: Disable audio, DRRS and PSR before planes
-:137: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_atomic_state *' should also have an identifier name
#137: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:199:
+	void (*pre_disable)(struct intel_atomic_state *,

-:137: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_encoder *' should also have an identifier name
#137: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:199:
+	void (*pre_disable)(struct intel_atomic_state *,

-:137: WARNING:FUNCTION_ARGUMENTS: function definition argument 'const struct intel_crtc_state *' should also have an identifier name
#137: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:199:
+	void (*pre_disable)(struct intel_atomic_state *,

-:137: WARNING:FUNCTION_ARGUMENTS: function definition argument 'const struct drm_connector_state *' should also have an identifier name
#137: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:199:
+	void (*pre_disable)(struct intel_atomic_state *,

total: 0 errors, 4 warnings, 0 checks, 132 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
