Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDF7928954
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 15:08:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA9C510E26E;
	Fri,  5 Jul 2024 13:08:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57FAC10E26E;
 Fri,  5 Jul 2024 13:08:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?Call_panel=5Ffitting_function_from_pipe=5Fconfig?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nemesa Garg" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 05 Jul 2024 13:08:41 -0000
Message-ID: <172018492135.30984.8549307670985523929@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240705094308.73498-1-nemesa.garg@intel.com>
In-Reply-To: <20240705094308.73498-1-nemesa.garg@intel.com>
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

Series: drm/i915/display: Call panel_fitting function from pipe_config
URL   : https://patchwork.freedesktop.org/series/135791/
State : warning

== Summary ==

Error: dim checkpatch failed
2971c1bf873c drm/i915/display: Call panel_fitting function from pipe_config
-:134: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#134: FILE: drivers/gpu/drm/i915/display/intel_panel.c:458:
+			x = y = 0;

-:138: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#138: FILE: drivers/gpu/drm/i915/display/intel_panel.c:462:
+			x = y = 0;

total: 0 errors, 0 warnings, 2 checks, 111 lines checked


