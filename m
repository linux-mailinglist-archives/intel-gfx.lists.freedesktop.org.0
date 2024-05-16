Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CB88C7C4B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 20:25:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 950C310EDAA;
	Thu, 16 May 2024 18:25:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FE2E10ED98;
 Thu, 16 May 2024 18:25:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_tracing/treewide=3A_Remov?=
 =?utf-8?q?e_second_parameter_of_=5F=5Fassign=5Fstr=28=29_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Steven Rostedt" <rostedt@goodmis.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 16 May 2024 18:25:46 -0000
Message-ID: <171588394665.2122196.3338029421854248723@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240516133454.681ba6a0@rorschach.local.home>
In-Reply-To: <20240516133454.681ba6a0@rorschach.local.home>
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

Series: tracing/treewide: Remove second parameter of __assign_str() (rev3)
URL   : https://patchwork.freedesktop.org/series/130320/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/130320/revisions/3/mbox/ not applied
Applying: tracing/treewide: Remove second parameter of __assign_str()
Using index info to reconstruct a base tree...
M	drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_trace.h
M	drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_trace.h
M	drivers/thermal/thermal_trace.h
M	fs/smb/client/trace.h
M	include/trace/events/btrfs.h
M	include/trace/events/sched.h
M	net/wireless/trace.h
Falling back to patching base and 3-way merge...
Auto-merging net/wireless/trace.h
Auto-merging include/trace/events/sched.h
CONFLICT (content): Merge conflict in include/trace/events/sched.h
Auto-merging include/trace/events/btrfs.h
Auto-merging fs/smb/client/trace.h
Auto-merging drivers/thermal/thermal_trace.h
Auto-merging drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_trace.h
CONFLICT (content): Merge conflict in drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_trace.h
Auto-merging drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_trace.h
CONFLICT (content): Merge conflict in drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_trace.h
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 tracing/treewide: Remove second parameter of __assign_str()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


