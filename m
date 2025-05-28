Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AA7AC6C6A
	for <lists+intel-gfx@lfdr.de>; Wed, 28 May 2025 17:01:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7035610E6C3;
	Wed, 28 May 2025 15:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2BE510E622;
 Wed, 28 May 2025 15:01:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_ref=5Ftracker=3A_add?=
 =?utf-8?q?_ability_to_register_a_debugfs_file_for_a_ref=5Ftracker=5Fdir_=28?=
 =?utf-8?q?rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jeff Layton" <jlayton@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 28 May 2025 15:01:47 -0000
Message-ID: <174844450792.28781.9553915232956430722@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250528-reftrack-dbgfs-v11-0-94ae0b165841@kernel.org>
In-Reply-To: <20250528-reftrack-dbgfs-v11-0-94ae0b165841@kernel.org>
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

Series: ref_tracker: add ability to register a debugfs file for a ref_tracker_dir (rev7)
URL   : https://patchwork.freedesktop.org/series/148490/
State : warning

== Summary ==

Error: dim checkpatch failed
35a19b0086ca i915: only initialize struct ref_tracker_dir once
cfda4efe86ab ref_tracker: don't use %pK in pr_ostream() output
-:14: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#14: 
[1]: https://lore.kernel.org/netdev/20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de/

total: 0 errors, 1 warnings, 0 checks, 23 lines checked
5eba11b2fadd ref_tracker: add a top level debugfs directory for ref_tracker
e93eb183b8c4 ref_tracker: have callers pass output function to pr_ostream()
-:37: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#37: FILE: lib/ref_tracker.c:66:
+	void __ostream_printf (*func)(struct ostream *stream, char *fmt, ...);

total: 0 errors, 1 warnings, 0 checks, 101 lines checked
d7d88d30f299 ref_tracker: add a static classname string to each ref_tracker_dir
49c0a980992c ref_tracker: allow pr_ostream() to print directly to a seq_file
b05025bd385a ref_tracker: automatically register a file in debugfs for a ref_tracker_dir
-:155: WARNING:VSPRINTF_SPECIFIER_PX: Using vsprintf specifier '%px' potentially exposes the kernel memory layout, if you don't really need the address please consider using '%p'.
#155: FILE: lib/ref_tracker.c:377:
+	ret = snprintf(name, sizeof(name), "%s@%px", dir->class, dir);

total: 0 errors, 1 warnings, 0 checks, 145 lines checked
33a3f303eecb ref_tracker: add a way to create a symlink to the ref_tracker_dir debugfs file
49f5602d87f0 net: add symlinks to ref_tracker_dir for netns
84d3fe16bf47 ref_tracker: eliminate the ref_tracker_dir name field


