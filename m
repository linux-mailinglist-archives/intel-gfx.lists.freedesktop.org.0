Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B053F7072E6
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 22:22:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3811710E471;
	Wed, 17 May 2023 20:22:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 95F1E10E2A6;
 Wed, 17 May 2023 20:22:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9F9EEA47E9;
 Wed, 17 May 2023 20:22:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Wed, 17 May 2023 20:22:34 -0000
Message-ID: <168435495462.6589.5491972708604477687@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230517194040.3857137-1-andrzej.hajda@intel.com>
In-Reply-To: <20230517194040.3857137-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2CDO=5FNOT=5FMERGE=2C1/3=5D_drm/?=
 =?utf-8?q?i915/mtl=3A_do_not_enable_render_power-gating_on_MTL?=
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

Series: series starting with [CI,DO_NOT_MERGE,1/3] drm/i915/mtl: do not enable render power-gating on MTL
URL   : https://patchwork.freedesktop.org/series/117912/
State : warning

== Summary ==

Error: dim checkpatch failed
51fd4c7e1efa drm/i915/mtl: do not enable render power-gating on MTL
e61f2c27f201 drm/i915/gt: do not enable render and media power-gating on ADL
-:10: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' or 'Closes:' instead
#10: 
References: https://gitlab.freedesktop.org/drm/intel/-/issues/4983

total: 0 errors, 1 warnings, 0 checks, 9 lines checked
38b99bb9bc5d drm/i915/selftests: add forcewake_with_spinners tests
-:78: CHECK:SPACING: No space is necessary after a cast
#78: FILE: drivers/gpu/drm/i915/selftests/intel_uncore.c:397:
+		intel_klog_error_capture(gt, (intel_engine_mask_t) ~0U);

-:84: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#84: FILE: drivers/gpu/drm/i915/selftests/intel_uncore.c:403:
+	msleep(3);

total: 0 errors, 1 warnings, 1 checks, 104 lines checked


