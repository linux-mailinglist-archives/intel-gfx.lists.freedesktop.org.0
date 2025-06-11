Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B396AD5D5A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 19:37:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E9D910E6DA;
	Wed, 11 Jun 2025 17:37:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56C1710E6E1;
 Wed, 11 Jun 2025 17:37:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dmc=3A_Deal?=
 =?utf-8?q?_with_loss_of_pipe_DMC_state?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Jun 2025 17:37:46 -0000
Message-ID: <174966346634.68523.16369401622761336287@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/dmc: Deal with loss of pipe DMC state
URL   : https://patchwork.freedesktop.org/series/150111/
State : warning

== Summary ==

Error: dim checkpatch failed
c7efbf9ad7e5 drm/i915/dmc: Limit pipe DMC clock gating w/a to just ADL/DG2/MTL
b58f40be8f18 drm/i915/dmc: Parametrize MTL_PIPEDMC_GATING_DIS
6e70aede7a05 drm/i915/dmc: Shuffle code around
-:112: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#112: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:590:
+		intel_de_write(display, PIPEDMC_INTERRUPT_MASK(pipe), ~pipedmc_interrupt_mask(display));

total: 0 errors, 1 warnings, 0 checks, 162 lines checked
5236a3eda7eb drm/i915/dmc: Extract dmc_load_program()
ca0213a40c15 drm/i915/dmc: Reload pipe DMC state on TGL when enabling pipe A
3ea8d44bd573 drm/i915/dmc: Reload pipe DMC MMIO registers for pipe C/D on PTL+
52c838714e07 drm/i915/dmc: Assert DMC is loaded harder
530e0a6f1837 drm/i915/dmc: Pass crtc_state to intel_dmc_{enable, disable}_pipe()
96391ed8fc2d drm/i915/dmc: Do not enable the pipe DMC on TGL when PSR is possible


