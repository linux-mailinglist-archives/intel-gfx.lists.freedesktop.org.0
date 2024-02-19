Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4AB85A652
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Feb 2024 15:49:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EB2510E26D;
	Mon, 19 Feb 2024 14:48:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9106510E26D;
 Mon, 19 Feb 2024 14:48:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_QGV/SAGV_related_fix?=
 =?utf-8?q?es_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Feb 2024 14:48:58 -0000
Message-ID: <170835413859.89494.4168319731865091985@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240219091852.23162-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240219091852.23162-1-stanislav.lisovskiy@intel.com>
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

Series: QGV/SAGV related fixes (rev6)
URL   : https://patchwork.freedesktop.org/series/126962/
State : warning

== Summary ==

Error: dim checkpatch failed
e14a10f2859f drm/i915: Add meaningful traces for QGV point info error handling
aa498440ab05 drm/i915: Extract code required to calculate max qgv/psf gv point
e7e9a465da87 drm/i915: Disable SAGV on bw init, to force QGV point recalculation
-:12: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#12: 
(i.e all points allowed), however in reality we might get them all restricted,

-:45: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/display/intel_bw.c:165:
+		drm_err(&dev_priv->drm, "Failed to disable qgv points (%x) points: 0x%x\n", ret, points_mask);

-:87: CHECK:BRACES: braces {} should be used on all arms of this statement
#87: FILE: drivers/gpu/drm/i915/display/intel_bw.c:871:
+		if (max_data_rate > max_bw) {
[...]
+		} else if (max_data_rate == max_bw)
[...]

-:108: CHECK:SPACING: space preferred before that '|' (ctx:VxE)
#108: FILE: drivers/gpu/drm/i915/display/intel_bw.c:892:
+	bw_state->qgv_points_mask = ~(ICL_PCODE_REQ_QGV_PT(qgv_points)|
 	                                                              ^

-:121: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#121: FILE: drivers/gpu/drm/i915/display/intel_bw.c:905:
+
+}

total: 0 errors, 2 warnings, 3 checks, 98 lines checked


