Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FB48B284C
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Apr 2024 20:45:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F40C311A7A0;
	Thu, 25 Apr 2024 18:45:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4154E11A7A0;
 Thu, 25 Apr 2024 18:45:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/xe/display=3A_Fi?=
 =?utf-8?q?x_ADL-N_detection?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Apr 2024 18:45:03 -0000
Message-ID: <171407070326.1668081.14347313946199970101@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240425181610.2704633-1-lucas.demarchi@intel.com>
In-Reply-To: <20240425181610.2704633-1-lucas.demarchi@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/xe/display: Fix ADL-N detection
URL   : https://patchwork.freedesktop.org/series/132918/
State : warning

== Summary ==

Error: dim checkpatch failed
892efbcfdda2 drm/xe/display: Fix ADL-N detection
-:20: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#20: 
	xe 0000:00:02.0: drm_WARN_ON(!((dev_priv)->info.platform == XE_ALDERLAKE_S) && !((dev_priv)->info.platform == XE_ALDERLAKE_P))

-:36: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#36: FILE: drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:81:
+#define IS_ALDERLAKE_P(dev_priv) (IS_PLATFORM(dev_priv, XE_ALDERLAKE_P) || \
+				  IS_PLATFORM(dev_priv, XE_ALDERLAKE_N))

total: 0 errors, 1 warnings, 1 checks, 9 lines checked


