Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E45481326C
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 15:04:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF65510E94C;
	Thu, 14 Dec 2023 14:04:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C0E1010E2E1;
 Thu, 14 Dec 2023 14:04:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A8A8EA47DF;
 Thu, 14 Dec 2023 14:04:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_VSC_SDP_rework?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Thu, 14 Dec 2023 14:04:53 -0000
Message-ID: <170256269365.19957.16858549630300404211@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231214114838.1113648-1-jouni.hogander@intel.com>
In-Reply-To: <20231214114838.1113648-1-jouni.hogander@intel.com>
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

Series: VSC SDP rework
URL   : https://patchwork.freedesktop.org/series/127803/
State : warning

== Summary ==

Error: dim checkpatch failed
44b69011f471 drm/i915/display: Remove intel_crtc_state->psr_vsc
80b416493849 drm/i915/display: Move colorimetry_support from intel_psr to intel_dp
a2f6d5640cfe drm/i915/display: Unify VSC SPD preparation
-:28: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#28: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2622:
+	if ((!intel_dp->colorimetry_support ||
+	    !intel_dp_needs_vsc_sdp(crtc_state, conn_state)) &&

total: 0 errors, 0 warnings, 1 checks, 104 lines checked
e278729c0558 drm/i915/display: Fix vsc_sdp computation
cef9d3489020 drm/i915/display: Ignore only psr specific part of vsc sdp
316d0040edf7 drm/i915/display: Read PSR configuration before VSC SDP
a17da34870d9 drm/i915/display: Take care of VSC select field in video dip ctl register


