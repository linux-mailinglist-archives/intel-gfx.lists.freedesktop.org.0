Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CA47E1086
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Nov 2023 18:53:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E68E10E229;
	Sat,  4 Nov 2023 17:53:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E04E810E229;
 Sat,  4 Nov 2023 17:53:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D99ECAADD1;
 Sat,  4 Nov 2023 17:53:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sat, 04 Nov 2023 17:53:45 -0000
Message-ID: <169912042588.30095.3455964557855912918@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231101114212.9345-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231101114212.9345-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Some_register_cleanups_=28rev3=29?=
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

Series: drm/i915: Some register cleanups (rev3)
URL   : https://patchwork.freedesktop.org/series/125853/
State : warning

== Summary ==

Error: dim checkpatch failed
8754ef33cc1c drm/i915: Extract hsw_chicken_trans_reg()
-:91: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#91: FILE: drivers/gpu/drm/i915/display/intel_display.c:3789:
+		tmp = intel_de_read(dev_priv, hsw_chicken_trans_reg(dev_priv, pipe_config->cpu_transcoder));

total: 0 errors, 1 warnings, 0 checks, 97 lines checked
a7951db3ffad drm/i915: Stop using a 'reg' variable
9a4052876ddb drm/i915: Extract mchbar_reg()
af4c3bf7920c drm/i915/dsi: Remove dead GLK checks
44c971a168fe drm/i915/dsi: Extract port_ctrl_reg()


