Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C4F4045C3
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 08:44:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4C016E44B;
	Thu,  9 Sep 2021 06:44:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A89746E44A;
 Thu,  9 Sep 2021 06:44:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0596AA0EA;
 Thu,  9 Sep 2021 06:44:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 Sep 2021 06:44:46 -0000
Message-ID: <163116988662.16811.4453846090921295084@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210909004941.379035-1-lucas.demarchi@intel.com>
In-Reply-To: <20210909004941.379035-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915=3A_rename_debugfs?=
 =?utf-8?q?=5Fgt_files_=28rev2=29?=
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

Series: series starting with [1/4] drm/i915: rename debugfs_gt files (rev2)
URL   : https://patchwork.freedesktop.org/series/94489/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
432bfa5f078a drm/i915: rename debugfs_gt files
-:168: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#168: 
rename from drivers/gpu/drm/i915/gt/debugfs_gt.c

total: 0 errors, 1 warnings, 0 checks, 340 lines checked
3a81fa262389 drm/i915: rename debugfs_engines files
-:33: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#33: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 66 lines checked
51f63f32325f drm/i915: rename debugfs_gt_pm files
-:33: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#33: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 68 lines checked
10a81e9deb43 drm/i915: deduplicate frequency dump on debugfs


