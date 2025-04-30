Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A43AA4F0B
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Apr 2025 16:49:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81E4A10E7C2;
	Wed, 30 Apr 2025 14:49:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15BB610E7C2;
 Wed, 30 Apr 2025 14:49:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_ref=5Ftracker=3A_add?=
 =?utf-8?q?_ability_to_register_a_debugfs_file_for_a_ref=5Ftracker=5Fdir?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jeff Layton" <jlayton@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Apr 2025 14:49:34 -0000
Message-ID: <174602457408.30696.10894076377187487094@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250428-reftrack-dbgfs-v5-0-1cbbdf2038bd@kernel.org>
In-Reply-To: <20250428-reftrack-dbgfs-v5-0-1cbbdf2038bd@kernel.org>
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

Series: ref_tracker: add ability to register a debugfs file for a ref_tracker_dir
URL   : https://patchwork.freedesktop.org/series/148490/
State : warning

== Summary ==

Error: dim checkpatch failed
0218fb910229 ref_tracker: don't use %pK in pr_ostream() output
-:14: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#14: 
[1]: https://lore.kernel.org/netdev/20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de/

total: 0 errors, 1 warnings, 0 checks, 23 lines checked
8eb7b5f2a96c ref_tracker: add a top level debugfs directory for ref_tracker
6ce460ee7fbf ref_tracker: have callers pass output function to pr_ostream()
-:27: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#27: FILE: lib/ref_tracker.c:70:
+	void __ostream_printf (*func)(struct ostream *stream, char *fmt, ...);

total: 0 errors, 1 warnings, 0 checks, 96 lines checked
f265890c384d ref_tracker: allow pr_ostream() to print directly to a seq_file
d7ce6ab491a1 ref_tracker: add a static classname string to each ref_tracker_dir
acd83220e5c3 ref_tracker: automatically register a file in debugfs for a ref_tracker_dir
-:145: WARNING:VSPRINTF_SPECIFIER_PX: Using vsprintf specifier '%px' potentially exposes the kernel memory layout, if you don't really need the address please consider using '%p'.
#145: FILE: lib/ref_tracker.c:381:
+	ret = snprintf(name, sizeof(name), "%s@%px", dir->class, dir);

total: 0 errors, 1 warnings, 0 checks, 135 lines checked
cb4c341382ef ref_tracker: add a way to create a symlink to the ref_tracker_dir debugfs file
033734d8d7d0 net: add symlinks to ref_tracker_dir for netns
23893d4cb774 i915: add ref_tracker_dir symlinks for each tracker
e9bcd0710b19 ref_tracker: eliminate the ref_tracker_dir name field


