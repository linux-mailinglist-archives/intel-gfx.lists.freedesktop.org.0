Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 784AC194934
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 21:31:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 635FF6E357;
	Thu, 26 Mar 2020 20:31:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB6D86E2EC;
 Thu, 26 Mar 2020 20:31:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E49BAA00C7;
 Thu, 26 Mar 2020 20:31:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 26 Mar 2020 20:31:49 -0000
Message-ID: <158525470990.23002.5626319382643672441@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326181121.16869-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200326181121.16869-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Re-org_uC_debugfs_files_and_move_them_under_GT_=28rev3=29?=
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

Series: Re-org uC debugfs files and move them under GT (rev3)
URL   : https://patchwork.freedesktop.org/series/74051/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e19786b07259 drm/i915/gt: allow setting generic data pointer
72a498f33e07 drm/i915/guc: drop stage_pool debugfs
6d5324446d31 drm/i915/huc: make "support huc" reflect HW capabilities
ada6ea1bdc35 drm/i915/debugfs: move uC printers and update debugfs file names
33c4bb916643 drm/i915/uc: Move uC debugfs to its own folder under GT
-:97: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#97: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 516 lines checked
209216ba5e1f drm/i915/uc: do not free err log on uc_fini

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
