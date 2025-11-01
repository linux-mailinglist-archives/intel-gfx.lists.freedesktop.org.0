Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 655C6C2766B
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:14:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C746910EC20;
	Sat,  1 Nov 2025 03:14:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 10055242dc62 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A054310EC0C;
 Sat,  1 Nov 2025 03:14:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Enable_LT_PHY_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 01 Nov 2025 03:14:09 -0000
Message-ID: <176196684964.8093.18138146702017721165@10055242dc62>
X-Patchwork-Hint: ignore
References: <20251101030434.4159839-1-suraj.kandpal@intel.com>
In-Reply-To: <20251101030434.4159839-1-suraj.kandpal@intel.com>
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

Series: Enable LT PHY (rev4)
URL   : https://patchwork.freedesktop.org/series/155955/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/155955/revisions/4/mbox/ not applied
Applying: drm/i915/ltphy: Add LT Phy related VDR and Pipe Registers
Applying: drm/i915/cx0: Change register bit naming for powerdown values
Applying: drm/i915/ltphy: Phy lane reset for LT Phy
Applying: drm/i915/cx0: Move the HDMI FRL function to intel_hdmi
Applying: drm/i915/ltphy: Program sequence for PORT_CLOCK_CTL for LT Phy
Applying: drm/i915/ltphy: Add a wrapper for LT Phy powerdown change sequence
Applying: drm/i915/ltphy: Read PHY_VDR_0_CONFIG register
Applying: drm/i915/ltphy: Add LT Phy Programming recipe tables
Applying: drm/i915/ltphy: Program the VDR PLL registers for LT PHY
Applying: drm/i915/ltphy: Update the ltpll config table value for eDP
Applying: drm/i915/ltphy: Enable SSC during port clock programming
Applying: drm/i915/ltphy: Add function to calculate LT PHY port clock
Applying: drm/i915/ltphy: Program the P2P Transaction flow for LT Phy
Applying: drm/i915/ltphy: Program the rest of the PORT_CLOCK_CTL steps
Applying: drm/i915/ltphy: Program the rest of the LT Phy Enable sequence
Applying: drm/i915/ltphy: Program LT Phy Non-TBT PLL disable sequence
Applying: drm/i915/ltphy: Hook up LT Phy Enable & Disable sequences
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/display/intel_cx0_phy.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0017 drm/i915/ltphy: Hook up LT Phy Enable & Disable sequences
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


