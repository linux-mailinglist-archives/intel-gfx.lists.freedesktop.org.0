Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 990F2A6BABC
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 13:34:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2387F10E12A;
	Fri, 21 Mar 2025 12:34:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7083D10E12A;
 Fri, 21 Mar 2025 12:34:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Implement_Wa=5F14021?=
 =?utf-8?q?768792_to_bypass_m=5Fn_ratio_limit_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Mar 2025 12:34:03 -0000
Message-ID: <174256044345.64418.1329571076606682303@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <20250321112650.3594298-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250321112650.3594298-1-ankit.k.nautiyal@intel.com>
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

Series: Implement Wa_14021768792 to bypass m_n ratio limit (rev4)
URL   : https://patchwork.freedesktop.org/series/138257/
State : warning

== Summary ==

Error: dim checkpatch failed
8c868148a86f Add bits for link_n_exended for DISPLAY >= 14
76bc82ed6982 drm/i915/display: Limit m/n ratio to 10 for display > 12
67531f647513 drm/i915/display: Add bits for Wa_14021768792 for linkm/n ratio > 10
-:218: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#218: FILE: drivers/gpu/drm/i915/display/intel_display.c:5195:
+				     "found tu %i, data %i/%i link %i/%i bypass_m_n_ratio_limit %s)", \

total: 0 errors, 1 warnings, 0 checks, 225 lines checked
4488ab645f26 drm/i915/display: Implement Wa_14021768792 for BMG DP for link_m/n ratio > 10


