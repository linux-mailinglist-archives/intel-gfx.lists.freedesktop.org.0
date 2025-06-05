Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA237ACECF8
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jun 2025 11:39:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7986D10E805;
	Thu,  5 Jun 2025 09:39:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71A4510E805;
 Thu,  5 Jun 2025 09:39:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?Add_no=5Fpsr=5Freason_to_PSR_debugfs_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Micha=C5=82_Grzelak?= <michal.grzelak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 05 Jun 2025 09:39:18 -0000
Message-ID: <174911635845.51389.7676430623897250804@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250605091300.3739436-1-michal.grzelak@intel.com>
In-Reply-To: <20250605091300.3739436-1-michal.grzelak@intel.com>
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

Series: drm/i915/display: Add no_psr_reason to PSR debugfs (rev2)
URL   : https://patchwork.freedesktop.org/series/148958/
State : warning

== Summary ==

Error: dim checkpatch failed
25e0075a3a62 drm/i915/display: Add no_psr_reason to PSR debugfs
-:63: ERROR:CODE_INDENT: code indent should use tabs where possible
#63: FILE: drivers/gpu/drm/i915/display/intel_psr.c:2925:
+^I^I                psr->no_psr_reason = "PSR disabled in new state";$

-:65: ERROR:CODE_INDENT: code indent should use tabs where possible
#65: FILE: drivers/gpu/drm/i915/display/intel_psr.c:2927:
+^I^I                psr->no_psr_reason = "All planes will go inactive";$

-:69: ERROR:CODE_INDENT: code indent should use tabs where possible
#69: FILE: drivers/gpu/drm/i915/display/intel_psr.c:2931:
+^I^I                psr->no_psr_reason = "Region Early Transport changing";$

-:73: ERROR:CODE_INDENT: code indent should use tabs where possible
#73: FILE: drivers/gpu/drm/i915/display/intel_psr.c:2935:
+^I^I^I        psr->no_psr_reason = "Bspec #21664 Display WA #1136: skl, bxt";$

total: 4 errors, 0 warnings, 0 checks, 76 lines checked


