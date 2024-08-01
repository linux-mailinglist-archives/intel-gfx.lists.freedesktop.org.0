Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D645944678
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 10:23:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8287510E35B;
	Thu,  1 Aug 2024 08:23:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g7/93aiy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D74410E35B
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2024 08:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722500589; x=1754036589;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KvkUICcLnnVVgActzEeCFcBHNKty6prgKrWfLQvF1qI=;
 b=g7/93aiyLjz0VQsxzl4P1xvRbHndeIvgTfUQsYtIaFkii9zIAfZ2d7iS
 6JiszFc8t+uqpSG/DCnGWJkTA+WWUtUhCcf2DuhD/m7OPiTqt23grbG4h
 Jl9ivtVbunvxgcBV6IhbYchUr/7e/Q31X0cJaoHL82+Qk+qzACqR1LQAv
 xKCrQ8zNeSUJ/m7CMUnZ3sucww8kcSMTHebNISUpbhp35qe15KogxG3SM
 RrS5Y626G0nPIehbF9Ai++3LONMGcPpqBQovEpFHouLyZLJEDgiyd9zKD
 vvxzsenLuTkCoqKBw2ETHhwtcB4kMgqeTmaQBRFd9jujhtCr2P0k7hv3M Q==;
X-CSE-ConnectionGUID: IgaaDF6KSLqrVcx1gbhLFw==
X-CSE-MsgGUID: 2y6soDT+Rqqg9i2GlEqxww==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="12824716"
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="12824716"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 01:23:09 -0700
X-CSE-ConnectionGUID: cctjWcggTzmUFXiX1iq32A==
X-CSE-MsgGUID: b/LEP180T9+IpV445q0lHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="55549740"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 lcoelho-mobl1.ger.corp.intel.com) ([10.245.244.200])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 01:23:07 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com
Subject: [core-for-CI PATCH] scsi: sd: Move sd_read_cpr() out of the
 q->limits_lock region
Date: Thu,  1 Aug 2024 11:22:57 +0300
Message-Id: <20240801082257.506006-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
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

From: Shin'ichiro Kawasaki <shinichiro.kawasaki@wdc.com>

Commit 804e498e0496 ("sd: convert to the atomic queue limits API")
introduced pairs of function calls to queue_limits_start_update() and
queue_limits_commit_update(). These two functions lock and unlock
q->limits_lock. In sd_revalidate_disk(), sd_read_cpr() is called after
queue_limits_start_update() call and before
queue_limits_commit_update() call. sd_read_cpr() locks q->sysfs_dir_lock
and &q->sysfs_lock. Then new lock dependencies were created between
q->limits_lock, q->sysfs_dir_lock and q->sysfs_lock, as follows:

sd_revalidate_disk
  queue_limits_start_update
    mutex_lock(&q->limits_lock)
  sd_read_cpr
    disk_set_independent_access_ranges
      mutex_lock(&q->sysfs_dir_lock)
      mutex_lock(&q->sysfs_lock)
      mutex_unlock(&q->sysfs_lock)
      mutex_unlock(&q->sysfs_dir_lock)
  queue_limits_commit_update
    mutex_unlock(&q->limits_lock)

However, the three locks already had reversed dependencies in other
places. Then the new dependencies triggered the lockdep WARN "possible
circular locking dependency detected" [1]. This WARN was observed by
running the blktests test case srp/002.

To avoid the WARN, move the sd_read_cpr() call in sd_revalidate_disk()
after the queue_limits_commit_update() call. In other words, move the
sd_read_cpr() call out of the q->limits_lock region.

[1] https://lore.kernel.org/linux-scsi/vlmv53ni3ltwxplig5qnw4xsl2h6ccxijfbqzekx76vxoim5a5@dekv7q3es3tx/

Fixes: 804e498e0496 ("sd: convert to the atomic queue limits API")
Signed-off-by: Shin'ichiro Kawasaki <shinichiro.kawasaki@wdc.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/scsi/sd.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/sd.c b/drivers/scsi/sd.c
index adeaa8ab9951..08cbe3815006 100644
--- a/drivers/scsi/sd.c
+++ b/drivers/scsi/sd.c
@@ -3753,7 +3753,6 @@ static int sd_revalidate_disk(struct gendisk *disk)
 			sd_read_block_limits_ext(sdkp);
 			sd_read_block_characteristics(sdkp, &lim);
 			sd_zbc_read_zones(sdkp, &lim, buffer);
-			sd_read_cpr(sdkp);
 		}
 
 		sd_print_capacity(sdkp, old_capacity);
@@ -3808,6 +3807,14 @@ static int sd_revalidate_disk(struct gendisk *disk)
 	if (err)
 		return err;
 
+	/*
+	 * Query concurrent positioning ranges after
+	 * queue_limits_commit_update() unlocked q->limits_lock to avoid
+	 * deadlock with q->sysfs_dir_lock and q->sysfs_lock.
+	 */
+	if (sdkp->media_present && scsi_device_supports_vpd(sdp))
+		sd_read_cpr(sdkp);
+
 	/*
 	 * For a zoned drive, revalidating the zones can be done only once
 	 * the gendisk capacity is set. So if this fails, set back the gendisk
-- 
2.39.2

