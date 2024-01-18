Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5807983201E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 21:04:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64D810E0C0;
	Thu, 18 Jan 2024 20:04:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6761C10E0C0;
 Thu, 18 Jan 2024 20:04:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_QGV/SAGV_related_fix?=
 =?utf-8?q?es_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Thu, 18 Jan 2024 20:04:52 -0000
Message-ID: <170560829242.558567.15997215769137261459@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240117155718.3439-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240117155718.3439-1-stanislav.lisovskiy@intel.com>
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

Series: QGV/SAGV related fixes (rev5)
URL   : https://patchwork.freedesktop.org/series/126962/
State : warning

== Summary ==

Error: dim checkpatch failed
2b101b19c57e drm/i915: Add meaningful traces for QGV point info error handling
642d40ddd8ca drm/i915: Extract code required to calculate max qgv/psf gv point
cfe55d16c546 drm/i915: Disable SAGV on bw init, to force QGV point recalculation
-:9: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#9: 
(i.e all points allowed), however in reality we might get them all restricted,

-:54: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#54: FILE: drivers/gpu/drm/i915/display/intel_bw.c:873:
+	drm_dbg_kms(&i915->drm, "Forcing SAGV disable: leaving QGV point %d\n",
+				max_bw_qgv_point);

total: 0 errors, 1 warnings, 1 checks, 42 lines checked


