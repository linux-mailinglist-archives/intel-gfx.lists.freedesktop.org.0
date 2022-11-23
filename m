Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 191F26368A4
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 19:24:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 651F210E5D7;
	Wed, 23 Nov 2022 18:24:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 34DBC10E22D;
 Wed, 23 Nov 2022 18:24:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 32179AADDC;
 Wed, 23 Nov 2022 18:24:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 23 Nov 2022 18:24:17 -0000
Message-ID: <166922785720.15573.6701153627964975586@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIGRy?=
 =?utf-8?q?m/i915=3A_Gamma/DSB_prep_work?=
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

Series: drm/i915: Gamma/DSB prep work
URL   : https://patchwork.freedesktop.org/series/111262/
State : warning

== Summary ==

Error: make htmldocs had i915 warnings
./drivers/gpu/drm/i915/display/intel_dsb.c:201: warning: Excess function parameter 'crtc_state' description in 'intel_dsb_reg_write'
./drivers/gpu/drm/i915/display/intel_dsb.c:201: warning: Function parameter or member 'dsb' not described in 'intel_dsb_reg_write'
./drivers/gpu/drm/i915/display/intel_dsb.c:201: warning: Excess function parameter 'crtc_state' description in 'intel_dsb_reg_write'
./drivers/gpu/drm/i915/gt/intel_gt_mcr.c:739: warning: expecting prototype for intel_gt_mcr_wait_for_reg_fw(). Prototype was for intel_gt_mcr_wait_for_reg() instead
./drivers/gpu/drm/i915/gt/intel_gt_mcr.c:739: warning: expecting prototype for intel_gt_mcr_wait_for_reg_fw(). Prototype was for intel_gt_mcr_wait_for_reg() instead


