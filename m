Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18973576F10
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Jul 2022 16:40:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED3E010E94B;
	Sat, 16 Jul 2022 14:36:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E2F10E05A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 20:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657916476; x=1689452476;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+x6N/1y2GPyfJ9ggeLyynjtmJvRTVjVHHbD80FkuSaA=;
 b=d8Y/XJw9SE1ZhjF4rQtFeFHrSv4BXNwx/EB7ox13ml6ckOeKPL/LFJED
 fryTS70ojJ+k0crJ9Ht76x/opF0ybDEB/0++CP/++JQF/BpA+uXOqMllA
 68ANjwK8D8B3bx/qpKXhDRcCF37mJX2GYlu1oUhoCH5uWBR301AdBjJZW
 DNUXaDYdzZbeqPsa8EbmF9/EXEfR0V5Rr3G5zz60touRDyzmUfM4Temss
 MtazwVCmOvIWXb+HJvGvntuKK3i9RVIeE43EmsIeiYt49uIWQpGHH0SCi
 ErY7GvYSu0cXWlDqNFiryd/JNfH7E2VBIVidk3jR3QjibyaY3od/Vs5Me g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10409"; a="311560798"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="311560798"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 13:21:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="686090669"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by FMSMGA003.fm.intel.com with SMTP; 15 Jul 2022 13:21:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Jul 2022 23:21:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jul 2022 23:20:42 +0300
Message-Id: <20220715202044.11153-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/12] drm/i915: Rename some VBT bits
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The allow vs. block display switch bits are named rather
inconsistently. Fix it up.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index f56c869e106f..62183c6bdc10 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -553,8 +553,8 @@ struct bdb_psr {
 struct bdb_driver_features {
 	/* Driver bits */
 	u8 boot_dev_algorithm:1;
-	u8 block_display_switch:1;
-	u8 allow_display_switch:1;
+	u8 allow_display_switch_dvd:1;
+	u8 allow_display_switch_dos:1;
 	u8 hotplug_dvo:1;
 	u8 dual_view_zoom:1;
 	u8 int15h_hook:1;
-- 
2.35.1

