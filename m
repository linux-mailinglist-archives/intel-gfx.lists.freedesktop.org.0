Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F075083885B
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 08:55:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A929710E6AF;
	Tue, 23 Jan 2024 07:55:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0294910E41B;
 Tue, 23 Jan 2024 07:55:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/psr=3A_Requ?=
 =?utf-8?q?est_modeset_on_initial_commit_to_compute_PSR_state?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Tue, 23 Jan 2024 07:55:14 -0000
Message-ID: <170599651400.666240.8162212985162993698@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240123071103.2147760-1-jouni.hogander@intel.com>
In-Reply-To: <20240123071103.2147760-1-jouni.hogander@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/psr: Request modeset on initial commit to compute PSR state
URL   : https://patchwork.freedesktop.org/series/129068/
State : warning

== Summary ==

Error: dim checkpatch failed
82ba3b886668 drm/i915/psr: Request modeset on initial commit to compute PSR state
-:30: WARNING:LINE_CONTINUATIONS: Avoid line continuations in quoted strings
#30: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3330:
+		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset to compute PSR state\

-:62: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_dp' - possible side-effects?
#62: FILE: drivers/gpu/drm/i915/display/intel_psr.h:24:
+#define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
+			   (intel_dp)->psr.source_support)

total: 0 errors, 1 warnings, 1 checks, 32 lines checked


