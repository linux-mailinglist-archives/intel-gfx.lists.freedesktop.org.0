Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A381A6AF83B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 23:08:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AF7D10E14B;
	Tue,  7 Mar 2023 22:08:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 406D210E14B;
 Tue,  7 Mar 2023 22:07:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 375AEA0078;
 Tue,  7 Mar 2023 22:07:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 07 Mar 2023 22:07:58 -0000
Message-ID: <167822687822.31450.8501950745773606452@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230214134348.11020-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230214134348.11020-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5Bv2=2C1/3=5D_drm/i915=3A_Don=27t_switch_t?=
 =?utf-8?q?o_TPS1_when_disabling_DP=5FTP=5FCTL_=28rev2=29?=
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

Series: series starting with [v2,1/3] drm/i915: Don't switch to TPS1 when disabling DP_TP_CTL (rev2)
URL   : https://patchwork.freedesktop.org/series/114011/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/114011/revisions/2/mbox/ not applied
Applying: drm/i915: Don't switch to TPS1 when disabling DP_TP_CTL
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_ddi.c
M	drivers/gpu/drm/i915/display/intel_fdi.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_fdi.c
Auto-merging drivers/gpu/drm/i915/display/intel_ddi.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_ddi.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915: Don't switch to TPS1 when disabling DP_TP_CTL
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


