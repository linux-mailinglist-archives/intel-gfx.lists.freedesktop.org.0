Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E77301827AA
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 05:14:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08EA96EA21;
	Thu, 12 Mar 2020 04:14:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 77C5D6EA21;
 Thu, 12 Mar 2020 04:14:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 704AFA0099;
 Thu, 12 Mar 2020 04:14:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 12 Mar 2020 04:14:36 -0000
Message-ID: <158398647642.4949.4638502249449155380@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200312011631.15262-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200312011631.15262-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?Re-org_uC_debugfs_files_and_move_them_under_GT_=28rev2=29?=
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

Series: Re-org uC debugfs files and move them under GT (rev2)
URL   : https://patchwork.freedesktop.org/series/74051/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm/i915/gt: allow setting generic data pointer
Okay!

Commit: drm/i915/guc: drop stage_pool debugfs
Okay!

Commit: drm/i915/huc: make "support huc" reflect HW capabilities
Okay!

Commit: drm/i915/debugfs: move uC printers and update debugfs file names
Okay!

Commit: drm/i915/uc: Move uC debugfs to its own folder under GT
+drivers/gpu/drm/i915/gt/uc/debugfs_guc.c:31:6: warning: symbol 'intel_guc_debugfs_register' was not declared. Should it be static?
+drivers/gpu/drm/i915/gt/uc/debugfs_guc_log.c:109:6: warning: symbol 'intel_guc_log_debugfs_register' was not declared. Should it be static?
+drivers/gpu/drm/i915/gt/uc/debugfs_huc.c:26:6: warning: symbol 'intel_huc_debugfs_register' was not declared. Should it be static?

Commit: drm/i915/uc: do not free err log on uc_fini
Okay!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
