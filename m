Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F96653A05
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 01:14:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D334410E429;
	Thu, 22 Dec 2022 00:14:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8326210E137;
 Thu, 22 Dec 2022 00:14:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7CF53AADE2;
 Thu, 22 Dec 2022 00:14:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Steven Rostedt" <rostedt@goodmis.org>
Date: Thu, 22 Dec 2022 00:14:18 -0000
Message-ID: <167166805848.14835.13122901960242200080@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221220134519.3dd1318b@gandalf.local.home>
In-Reply-To: <20221220134519.3dd1318b@gandalf.local.home>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciB0?=
 =?utf-8?q?reewide=3A_Convert_del=5Ftimer*=28=29_to_timer=5Fshutdown*=28?=
 =?utf-8?q?=29?=
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

Series: treewide: Convert del_timer*() to timer_shutdown*()
URL   : https://patchwork.freedesktop.org/series/112115/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/112115/revisions/1/mbox/ not applied
Applying: treewide: Convert del_timer*() to timer_shutdown*()
Using index info to reconstruct a base tree...
M	block/blk-iocost.c
M	block/blk-iolatency.c
M	drivers/acpi/apei/ghes.c
M	drivers/block/drbd/drbd_main.c
M	drivers/block/loop.c
M	drivers/bluetooth/hci_bcsp.c
M	drivers/hid/hid-wiimote-core.c
M	drivers/isdn/mISDN/l1oip_core.c
M	drivers/leds/trigger/ledtrig-pattern.c
M	drivers/net/ethernet/intel/i40e/i40e_main.c
M	drivers/net/ethernet/marvell/sky2.c
M	drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c
M	drivers/net/wireless/intel/iwlwifi/mvm/sta.c
M	drivers/staging/wlan-ng/prism2usb.c
M	drivers/tty/n_gsm.c
M	fs/ext4/super.c
M	net/802/garp.c
M	net/802/mrp.c
M	net/bridge/br_multicast.c
M	net/ipv4/ipmr.c
M	net/ipv6/ip6mr.c
M	net/sched/cls_flow.c
M	net/sunrpc/svc.c
Falling back to patching base and 3-way merge...
Auto-merging net/sunrpc/svc.c
Auto-merging net/sched/cls_flow.c
Auto-merging net/ipv6/ip6mr.c
Auto-merging net/ipv4/ipmr.c
Auto-merging net/bridge/br_multicast.c
Auto-merging net/802/mrp.c
Auto-merging net/802/garp.c
Auto-merging fs/ext4/super.c
Auto-merging drivers/tty/n_gsm.c
Auto-merging drivers/staging/wlan-ng/prism2usb.c
CONFLICT (content): Merge conflict in drivers/staging/wlan-ng/prism2usb.c
Auto-merging drivers/net/wireless/intel/iwlwifi/mvm/sta.c
Auto-merging drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c
Auto-merging drivers/net/ethernet/marvell/sky2.c
Auto-merging drivers/net/ethernet/intel/i40e/i40e_main.c
Auto-merging drivers/leds/trigger/ledtrig-pattern.c
Auto-merging drivers/isdn/mISDN/l1oip_core.c
Auto-merging drivers/hid/hid-wiimote-core.c
Auto-merging drivers/bluetooth/hci_bcsp.c
Auto-merging drivers/block/loop.c
Auto-merging drivers/block/drbd/drbd_main.c
Auto-merging drivers/acpi/apei/ghes.c
Auto-merging block/blk-iolatency.c
Auto-merging block/blk-iocost.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 treewide: Convert del_timer*() to timer_shutdown*()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


