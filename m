Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D464C9F3FA
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 15:12:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEC7E10E7FD;
	Wed,  3 Dec 2025 14:12:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ioHfSRYY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F4B010E77A;
 Wed,  3 Dec 2025 14:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764771160; x=1796307160;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=68FSMuAFVC826nYzlI0PjNhV7hq+UK0FBnwFlLnrqeQ=;
 b=ioHfSRYYf4MUUSHO1knBclOs9AybjwwmjnEUQOkaSkdJ4zUlicV9nDay
 JIebBG1gfAoaULmE21GpFSsmbI7z5F9EuRctnlVygyND6IqMdUePAbFWe
 W93QQzFIyW6XW7NAQJSMRXRZu1l2iSB/gigXQep9OUmnjUo91Pfq0pCrz
 bRPHzyUGInQUx4Z7zH+kVqr9HwUnkxrTUxuPogsciilFhcv9pSzrjrQ1i
 rnyO1SS3MUpMtGujYBwleQsWxrnzqGK7WAyffeHALztfTA56wLZxvy7oF
 6rXA8F+YELv+Twwk5QYcrBmRZt8+0GEF2jNHho11Nl3nkPPXK9V41InD0 A==;
X-CSE-ConnectionGUID: gWOmCQq6R1+u1A6MdDSkAA==
X-CSE-MsgGUID: mpB3qweCQLqa7/W6AKdWeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66654784"
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="66654784"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 06:12:39 -0800
X-CSE-ConnectionGUID: 3iMQXKmVQe2478201iqQ8A==
X-CSE-MsgGUID: rqq+X0VoTt2lf7iQSxZEww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="194351416"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa007.fm.intel.com with ESMTP; 03 Dec 2025 06:12:38 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [Core-for-CI] fs: PM: Fix reverse check in
 filesystems_freeze_callback()
Date: Wed,  3 Dec 2025 19:25:51 +0530
Message-Id: <20251203135551.2629298-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>

The freeze_all_ptr check in filesystems_freeze_callback() introduced by
commit a3f8f8662771 ("power: always freeze efivarfs") is reverse which
quite confusingly causes all file systems to be frozen when
filesystem_freeze_enabled is false.

On my systems it causes the WARN_ON_ONCE() in __set_task_frozen() to
trigger, most likely due to an attempt to freeze a file system that is
not ready for that.

Add a logical negation to the check in question to reverse it as
appropriate.

Fixes: a3f8f8662771 ("power: always freeze efivarfs")
Cc: 6.18+ <stable@vger.kernel.org> # 6.18+
Link: https://lore.kernel.org/linux-pm/12788397.O9o76ZdvQC@rafael.j.wysocki/
References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15341
Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Reviewed-by: Jan Kara <jack@suse.cz>
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 fs/super.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/super.c b/fs/super.c
index 277b84e5c279..4c79f170ac0d 100644
--- a/fs/super.c
+++ b/fs/super.c
@@ -1188,7 +1188,7 @@ static void filesystems_freeze_callback(struct super_block *sb, void *freeze_all
 	if (!sb->s_op->freeze_fs && !sb->s_op->freeze_super)
 		return;
 
-	if (freeze_all_ptr && !(sb->s_type->fs_flags & FS_POWER_FREEZE))
+	if (!freeze_all_ptr && !(sb->s_type->fs_flags & FS_POWER_FREEZE))
 		return;
 
 	if (!get_active_super(sb))
-- 
2.25.1

