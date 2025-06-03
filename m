Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1CEACC659
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 14:20:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89F3310E028;
	Tue,  3 Jun 2025 12:20:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C296D10E010;
 Tue,  3 Jun 2025 12:20:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_ref=5Ftracker=3A_add?=
 =?utf-8?q?_ability_to_register_a_debugfs_file_for_a_ref=5Ftracker=5Fdir_=28?=
 =?utf-8?q?rev9=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jeff Layton" <jlayton@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 03 Jun 2025 12:20:30 -0000
Message-ID: <174895323078.43118.12502752470588891144@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250603-reftrack-dbgfs-v13-0-7b2a425019d8@kernel.org>
In-Reply-To: <20250603-reftrack-dbgfs-v13-0-7b2a425019d8@kernel.org>
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

Series: ref_tracker: add ability to register a debugfs file for a ref_tracker_dir (rev9)
URL   : https://patchwork.freedesktop.org/series/148490/
State : warning

== Summary ==

Error: dim checkpatch failed
00c8ac947842 ref_tracker: don't use %pK in pr_ostream() output
-:14: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#14: 
[1]: https://lore.kernel.org/netdev/20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de/

total: 0 errors, 1 warnings, 0 checks, 23 lines checked
ce02b70c482b ref_tracker: add a top level debugfs directory for ref_tracker
55d40ca1f391 ref_tracker: have callers pass output function to pr_ostream()
-:37: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#37: FILE: lib/ref_tracker.c:66:
+	void __ostream_printf (*func)(struct ostream *stream, char *fmt, ...);

total: 0 errors, 1 warnings, 0 checks, 102 lines checked
0da660830e6a ref_tracker: add a static classname string to each ref_tracker_dir
9ba29b28520a ref_tracker: allow pr_ostream() to print directly to a seq_file
4ffff1cb354b ref_tracker: automatically register a file in debugfs for a ref_tracker_dir
-:155: WARNING:VSPRINTF_SPECIFIER_PX: Using vsprintf specifier '%px' potentially exposes the kernel memory layout, if you don't really need the address please consider using '%p'.
#155: FILE: lib/ref_tracker.c:378:
+	ret = snprintf(name, sizeof(name), "%s@%px", dir->class, dir);

total: 0 errors, 1 warnings, 0 checks, 139 lines checked
c7a9738cff5c ref_tracker: add a way to create a symlink to the ref_tracker_dir debugfs file
dd204f2841dd net: add symlinks to ref_tracker_dir for netns
6b0358c379f9 ref_tracker: eliminate the ref_tracker_dir name field


