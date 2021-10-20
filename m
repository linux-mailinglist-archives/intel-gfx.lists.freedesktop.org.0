Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BBA4348B1
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 12:11:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCB1C6E29D;
	Wed, 20 Oct 2021 10:11:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E1926E29D;
 Wed, 20 Oct 2021 10:11:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 45CE8AA0ED;
 Wed, 20 Oct 2021 10:11:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Oct 2021 10:11:21 -0000
Message-ID: <163472468128.27358.3771256146605311815@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211020090625.1037517-1-lucas.demarchi@intel.com>
In-Reply-To: <20211020090625.1037517-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gem=3A_stop_using_PAGE=5FKERNEL=5FIO?=
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

Series: drm/i915/gem: stop using PAGE_KERNEL_IO
URL   : https://patchwork.freedesktop.org/series/96045/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
419b331a6c11 drm/i915/gem: stop using PAGE_KERNEL_IO
-:10: WARNING:REPEATED_WORD: Possible repeated word: 'done'
#10: 
This is the same that was done done in commit 80c33624e472 ("io-mapping:

-:18: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 97ccedd793ac ("microblaze: Provide pgprot_device/writecombine macros for nommu")'
#18: 
same definition for pgprot_writecombine() since commit

-:21: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#21: 
for pgprot_writecombine() and pgprot_noncached_wc(). From the commit message

total: 1 errors, 2 warnings, 0 checks, 16 lines checked


