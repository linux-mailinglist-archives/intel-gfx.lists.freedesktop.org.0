Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA0786A991
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 09:10:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B31010E087;
	Wed, 28 Feb 2024 08:10:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C85E10E8C1;
 Wed, 28 Feb 2024 08:10:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5BV2=2C1/2=5D_drm/i915/drrs=3A_Refactor_CPU_transcoder_DRRS_che?=
 =?utf-8?q?ck_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhanuprakash Modem" <bhanuprakash.modem@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Feb 2024 08:10:08 -0000
Message-ID: <170910780805.356522.11296011603669205662@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240227123833.2799647-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20240227123833.2799647-1-bhanuprakash.modem@intel.com>
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

Series: series starting with [V2,1/2] drm/i915/drrs: Refactor CPU transcoder DRRS check (rev2)
URL   : https://patchwork.freedesktop.org/series/130433/
State : warning

== Summary ==

Error: dim checkpatch failed
147912ac72e7 drm/i915/drrs: Refactor CPU transcoder DRRS check
-:91: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#91: FILE: drivers/gpu/drm/i915/display/intel_drrs.h:20:
+bool intel_cpu_transcoder_has_drrs(struct drm_i915_private *i915,
+			   enum transcoder cpu_transcoder);

total: 0 errors, 0 warnings, 1 checks, 60 lines checked
72c330efb446 drm/i915/display/debugfs: Fix duplicate checks in i915_drrs_status
-:27: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#27: FILE: drivers/gpu/drm/i915/display/intel_drrs.c:325:
+		   str_yes_no(intel_cpu_transcoder_has_drrs(i915,
+						crtc_state->cpu_transcoder)));

total: 0 errors, 0 warnings, 1 checks, 11 lines checked


