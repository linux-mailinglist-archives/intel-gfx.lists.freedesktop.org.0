Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 681A6A61A43
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 20:19:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 035A710E305;
	Fri, 14 Mar 2025 19:19:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEC7010E305;
 Fri, 14 Mar 2025 19:19:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5B1/3=5D_drm/i915/dsi=3A_Fix_off_by_one_in_BXT=5FMIPI=5FTRANS?=
 =?utf-8?q?=5FVTOTAL?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Mar 2025 19:19:14 -0000
Message-ID: <174197995477.36736.12701786674378816646@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <20250314150136.22564-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250314150136.22564-1-ville.syrjala@linux.intel.com>
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

Series: series starting with [1/3] drm/i915/dsi: Fix off by one in BXT_MIPI_TRANS_VTOTAL
URL   : https://patchwork.freedesktop.org/series/146325/
State : warning

== Summary ==

Error: dim checkpatch failed
f342c298c703 drm/i915/dsi: Fix off by one in BXT_MIPI_TRANS_VTOTAL
-:23: ERROR:CODE_INDENT: code indent should use tabs where possible
#23: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:1063:
+^I^I^I^I              BXT_MIPI_TRANS_VTOTAL(port)) + 1;$

total: 1 errors, 0 warnings, 0 checks, 16 lines checked
cf318e3f6f45 drm/i915/dsi: Don't set/read the DSI C clock divider on GLK
3e69eeb1f59c drm/i915/dsi: Assert that vfp+vsync+vbp == vtotal on BXT/GLK


