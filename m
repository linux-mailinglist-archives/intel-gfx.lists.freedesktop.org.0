Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE57B386DDA
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 01:42:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88C8E6E560;
	Mon, 17 May 2021 23:41:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BFB646E55E;
 Mon, 17 May 2021 23:41:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B8011A0BCB;
 Mon, 17 May 2021 23:41:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Mon, 17 May 2021 23:41:56 -0000
Message-ID: <162129491672.27269.9634722380881135191@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
In-Reply-To: <20210515031035.2561658-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBB?=
 =?utf-8?q?lder_Lake-P_Support_=28rev4=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Alder Lake-P Support (rev4)
URL   : https://patchwork.freedesktop.org/series/89899/
State : failure

== Summary ==

Applying: drm/i915/xelpd: Enhanced pipe underrun reporting
Applying: drm/i915/xelpd: Support DP1.4 compression BPPs
Applying: drm/i915/xelpd: Calculate VDSC RC parameters
Applying: drm/i915/xelpd: Add rc_qp_table for rcparams calculation
Applying: drm/i915/xelpd: Add VRR guardband for VRR CTL
Applying: drm/i915/adl_p: Add dedicated SAGV watermarks
Applying: drm/i915/adl_p: Setup ports/phys
Applying: drm/i915/adl_p: Handle TC cold
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/display/intel_display_power.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0008 drm/i915/adl_p: Handle TC cold
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
