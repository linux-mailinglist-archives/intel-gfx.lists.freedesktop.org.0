Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FD3817FF6
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 03:51:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1227210E166;
	Tue, 19 Dec 2023 02:51:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB09610E155;
 Tue, 19 Dec 2023 02:51:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A21FCAADEA;
 Tue, 19 Dec 2023 02:51:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/guc=3A_Add_?=
 =?utf-8?q?MCR_type_check_for_wa_registers?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shuicheng Lin" <shuicheng.lin@intel.com>
Date: Tue, 19 Dec 2023 02:51:44 -0000
Message-ID: <170295430463.17580.16846788532839937093@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <[PATCH]
In-Reply-To: <[PATCH]
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

Series: drm/i915/guc: Add MCR type check for wa registers
URL   : https://patchwork.freedesktop.org/series/127935/
State : warning

== Summary ==

Error: dim checkpatch failed
9cab6f43c361 drm/i915/guc: Add MCR type check for wa registers
-:56: WARNING:BRACES: braces {} are not necessary for single statement blocks
#56: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.c:738:
+		if (reg_needs_read_steering(gt, mcr_reg, type)) {
+			return true;
+		}

total: 0 errors, 1 warnings, 0 checks, 66 lines checked


