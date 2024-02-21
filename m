Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5452A85D54C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 11:18:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5746A10E3EE;
	Wed, 21 Feb 2024 10:18:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D414D10E3EE;
 Wed, 21 Feb 2024 10:18:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_IO_and_fast_wake_lin?=
 =?utf-8?q?es_calculation_and_increase_fw_sync_length?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Feb 2024 10:18:24 -0000
Message-ID: <170851070487.178559.359830718705585396@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240221075322.2764209-1-jouni.hogander@intel.com>
In-Reply-To: <20240221075322.2764209-1-jouni.hogander@intel.com>
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

Series: IO and fast wake lines calculation and increase fw sync length
URL   : https://patchwork.freedesktop.org/series/130173/
State : warning

== Summary ==

Error: dim checkpatch failed
ec74338c41e4 drm/i915/display: Add aux function pointer for fast wake sync pulse count
f2059a05bb86 drm/i915/psr: Improve fast and IO wake lines calculation
-:38: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#38: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1163:
+static int get_io_wake_time(struct intel_dp *intel_dp,
+			struct intel_crtc_state *crtc_state)

total: 0 errors, 0 warnings, 1 checks, 52 lines checked
854e6c44050d drm/i915/display: Increase number of fast wake precharge pulses


