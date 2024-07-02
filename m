Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F8291F070
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 09:43:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCA2B10E54E;
	Tue,  2 Jul 2024 07:43:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 664BC10E54E;
 Tue,  2 Jul 2024 07:43:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5Bv2=2C1/2=5D_drm/xe/bmg=3A_implement_Wa=5F16023588340?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 02 Jul 2024 07:43:23 -0000
Message-ID: <171990620341.4124.3552158246679550752@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240701132754.101832-3-matthew.auld@intel.com>
In-Reply-To: <20240701132754.101832-3-matthew.auld@intel.com>
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

Series: series starting with [v2,1/2] drm/xe/bmg: implement Wa_16023588340
URL   : https://patchwork.freedesktop.org/series/135597/
State : warning

== Summary ==

Error: dim checkpatch failed
0ad6bf3a77ef drm/xe/bmg: implement Wa_16023588340
aae26355963a drm/i915: disable fbc due to Wa_16023588340
-:43: WARNING:MACRO_ARG_UNUSED: Argument 'i915' is not used in function-like macro
#43: FILE: drivers/gpu/drm/i915/i915_drv.h:765:
+#define DISPLAY_NEEDS_WA_16023588340(i915)	false

total: 0 errors, 1 warnings, 0 checks, 34 lines checked


