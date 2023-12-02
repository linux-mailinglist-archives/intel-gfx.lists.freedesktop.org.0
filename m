Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E2B801970
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Dec 2023 02:26:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B5C710E9AB;
	Sat,  2 Dec 2023 01:26:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 34A4010E9A8;
 Sat,  2 Dec 2023 01:26:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 14FC0AA916;
 Sat,  2 Dec 2023 01:26:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Sat, 02 Dec 2023 01:26:01 -0000
Message-ID: <170148036108.28444.13152451742162667154@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231128083754.20096-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20231128083754.20096-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_QGV/SAGV_related_fixes_=28rev3=29?=
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

Series: QGV/SAGV related fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/126962/
State : warning

== Summary ==

Error: dim checkpatch failed
f1e1dd9cee4b drm/i915: Add meaningful traces for QGV point info error handling
e838d5faf383 drm/i915: Extract code required to calculate max qgv/psf gv point
7bb73fc2d67a drm/i915: Disable SAGV on bw init, to force QGV point recalculation
-:9: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#9: 
(i.e all points allowed), however in reality we might get them all restricted,

-:54: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#54: FILE: drivers/gpu/drm/i915/display/intel_bw.c:882:
+	drm_dbg_kms(&i915->drm, "Forcing SAGV disable: leaving QGV point %d, PSF GV %d\n",
+				max_bw_qgv_point, max_bw_psf_gv_point);

total: 0 errors, 1 warnings, 1 checks, 49 lines checked


