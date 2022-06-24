Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4365597C1
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 12:23:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C47010E766;
	Fri, 24 Jun 2022 10:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E964610E766;
 Fri, 24 Jun 2022 10:23:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E1273AADDA;
 Fri, 24 Jun 2022 10:23:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Fri, 24 Jun 2022 10:23:24 -0000
Message-ID: <165606620489.16786.398681279191559707@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220624080444.7619-1-christian.koenig@amd.com>
In-Reply-To: <20220624080444.7619-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/14=5D_fs=3A_add_per_file_RSS?=
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

Series: series starting with [01/14] fs: add per file RSS
URL   : https://patchwork.freedesktop.org/series/105588/
State : warning

== Summary ==

Error: dim checkpatch failed
babddea434e1 fs: add per file RSS
-:31: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#31: FILE: fs/file.c:1311:
+static int sumup_file_rss(const void *sum, struct file *file, unsigned n)

-:87: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct file *' should also have an identifier name
#87: FILE: include/linux/fs.h:2006:
+	long (*file_rss)(struct file *);

total: 0 errors, 2 warnings, 0 checks, 49 lines checked
636241e5d05e oom: take per file RSS into account
39df4975050f proc: expose per file RSS
-:56: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#56: FILE: fs/proc/internal.h:308:
+extern void task_mem(struct seq_file *, struct mm_struct *,

-:56: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct seq_file *' should also have an identifier name
#56: FILE: fs/proc/internal.h:308:
+extern void task_mem(struct seq_file *, struct mm_struct *,

-:56: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct mm_struct *' should also have an identifier name
#56: FILE: fs/proc/internal.h:308:
+extern void task_mem(struct seq_file *, struct mm_struct *,

-:56: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct files_struct *' should also have an identifier name
#56: FILE: fs/proc/internal.h:308:
+extern void task_mem(struct seq_file *, struct mm_struct *,

-:103: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 4 warnings, 1 checks, 66 lines checked
87761c6448cb mm: shmem: provide RSS for shmem files
-:47: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 28 lines checked
08739a34f27a dma-buf: provide file RSS for DMA-buf files
-:37: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 18 lines checked
e4733c89ac5b drm/gem: adjust per file RSS on handling buffers
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
Large amounts of VRAM are usually not CPU accessible, so they are not mapped

-:28: CHECK:LINE_SPACING: Please don't use multiple blank lines
#28: FILE: drivers/gpu/drm/drm_file.c:1053:
+
+

-:37: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#37: FILE: drivers/gpu/drm/drm_file.c:1062:
+{
+

total: 0 errors, 1 warnings, 2 checks, 83 lines checked
48d66273f79a drm/gma500: use drm_file_rss
-:24: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
2a9bf2b10bb3 drm/amdgpu: use drm_file_rss
4bc4faea2d54 drm/radeon: use drm_oom_badness
-:24: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
7c46b377611b drm/i915: use drm_file_rss
-:24: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
084bd2d1efa5 drm/nouveau: use drm_file_rss
-:24: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
4a23b1e57e43 drm/omap: use drm_file_rss
-:24: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
c148997308a5 drm/vmwgfx: use drm_file_rss
-:24: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
61078582a53e drm/tegra: use drm_file_rss
-:24: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 7 lines checked


