Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 010B480DF81
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Dec 2023 00:30:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5985210E525;
	Mon, 11 Dec 2023 23:30:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1821D10E525;
 Mon, 11 Dec 2023 23:30:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 14620AADD5;
 Mon, 11 Dec 2023 23:30:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_cdclk/vo?=
 =?utf-8?q?ltage=5Flevel_cleanups_and_fixes_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 11 Dec 2023 23:30:52 -0000
Message-ID: <170233745208.19581.1969927200538431761@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: cdclk/voltage_level cleanups and fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/126979/
State : warning

== Summary ==

Error: dim checkpatch failed
c72f9e549673 drm/i915/cdclk: s/-1/~0/ when dealing with unsigned values
a77816dbd1a2 drm/i915/cdclk: Give the squash waveform length a name
9cda2dddad80 drm/i915/cdclk: Remove the assumption that cdclk divider==2 when using squashing
e83166a6573f drm/i915/cdclk: Rewrite cdclk->voltage_level selection to use tables
-:16: WARNING:TYPO_SPELLING: 'accomodate' may be misspelled - perhaps 'accommodate'?
#16: 
    accomodate JSL machines in CI that boot with high cdclk
    ^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 107 lines checked
6a5b56a8efe9 drm/i915/mtl: Fix voltage_level for cdclk==480MHz
bb7b4b2317cc drm/i915: Split intel_ddi_compute_min_voltage_level() into platform variants
b213f2ea9590 drm/i915/mtl: Calculate the correct voltage level from port_clock
64bbe45ecb12 drm/i915: Simplify intel_ddi_compute_min_voltage_level()


