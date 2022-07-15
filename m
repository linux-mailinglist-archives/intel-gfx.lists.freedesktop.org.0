Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9A9576F36
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Jul 2022 16:42:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 550991121F7;
	Sat, 16 Jul 2022 14:36:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0B0410E05A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 20:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657916461; x=1689452461;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cTfNAmRouJct4IjPzaD+GeTQ52Zo3iHyBikJzUz0TcA=;
 b=FO2l5BHxjKwGH7TXA1WCepustrthNhD6xKHPIOiPN34jr+xL+xtYiR4D
 ZWJ6Po5qr3Aalzwho+Jm++40YCEg52ZbuhTr2vbJPHcpLcYg8/m3k51Kh
 ScNZ1OCvjFWUKF1T0o7DN/4SPHFoKiElDvYGT1VgObxmhGpuhNO+qsDEA
 cYcj6ub4wBuLZkKz434sBT8Y8uN4dyM5XHXDLFrDFx5D5liKNJC0Gl22r
 xIGndwyGQERd0ukrE8mmAz9ZiTgzjCOzZ7aczif5xhBnTmtA00acuMeVE
 QjvfD4Pa1tPlwmPb/O2zaMbaZu5Zb656hviCLzJZw+PY/lqHK+uS+Y8dp A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10409"; a="285919517"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="285919517"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 13:21:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="654484124"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by fmsmga008.fm.intel.com with SMTP; 15 Jul 2022 13:20:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Jul 2022 23:20:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jul 2022 23:20:37 +0300
Message-Id: <20220715202044.11153-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/12] drm/i915: Add the VBT LTTPR transparent
 vs. non-transparent bits
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

VBT gained a bit to indicate whether LTTPRs should use transparent
or non-transparent mode. Dunno if we should actually look at this...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index d583bb085913..b15e29509fac 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -408,7 +408,8 @@ struct child_device_config {
 			u8 compression_enable:1;		/* 198+ */
 			u8 compression_method_cps:1;		/* 198+ */
 			u8 ganged_edp:1;			/* 202+ */
-			u8 reserved2:4;
+			u8 lttpr_non_transparent:1;		/* 235+ */
+			u8 reserved2:3;
 			u8 compression_structure_index:4;	/* 198+ */
 			u8 reserved3:4;
 			u8 slave_port;				/* 202+ */
-- 
2.35.1

