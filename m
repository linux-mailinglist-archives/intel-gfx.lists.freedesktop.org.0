Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 958B788A747
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 16:44:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E916C10E046;
	Mon, 25 Mar 2024 15:44:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78E4010E046;
 Mon, 25 Mar 2024 15:44:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_QGV/SAGV_related_fix?=
 =?utf-8?q?es_=28rev8=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Mar 2024 15:44:30 -0000
Message-ID: <171138147049.1035680.17759458755922922517@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240325130156.205726-1-vinod.govindapillai@intel.com>
In-Reply-To: <20240325130156.205726-1-vinod.govindapillai@intel.com>
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

Series: QGV/SAGV related fixes (rev8)
URL   : https://patchwork.freedesktop.org/series/126962/
State : warning

== Summary ==

Error: dim checkpatch failed
c4243da90814 drm/i915: Add meaningful traces for QGV point info error handling
3418442208ab drm/i915: Extract code required to calculate max qgv/psf gv point
df3c29b0f04e drm/i915: Disable SAGV on bw init, to force QGV point recalculation
-:87: CHECK:SPACING: space preferred before that '|' (ctx:VxE)
#87: FILE: drivers/gpu/drm/i915/display/intel_bw.c:882:
+	bw_state->qgv_points_mask = ~(ICL_PCODE_REQ_QGV_PT(qgv_points)|
 	                                                              ^

-:99: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#99: FILE: drivers/gpu/drm/i915/display/intel_bw.c:894:
+
+}

total: 0 errors, 0 warnings, 2 checks, 95 lines checked
d6387b18431d drm/i915/display: handle systems with duplicate qgv/psf gv points


