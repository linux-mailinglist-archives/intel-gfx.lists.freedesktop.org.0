Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D8A576F23
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Jul 2022 16:41:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8479810FF97;
	Sat, 16 Jul 2022 14:36:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E232510E282
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 20:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657916459; x=1689452459;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Q1mfau9LoKG+MnEwncgKf6wHul0fXmEfqC1/VxDLbW8=;
 b=IUBXKpWhFYlrWpi9drSNMUZZCrL00BSN3bRRLb6s9pwJIxZrGldvZz7p
 dvqkYx2Cwwb583A1+ShTuDBhvJOFhtdikDVfBIDVYdgNqlk8D/XvKlHjc
 SVXNu2SpcPvqdrM2wKlcdawyFXMn3O7NFKCMAy0MyASwX5OABVA/3yuaO
 6AOYu7gQmvgDYZnMSlz9zHjlXqTxagMNjwMqTuuIsEuCvJoIsMx69D/Ko
 8NGeyO/M0C98pQNbb6mXIvMWVDE84gMF3Xodz5DocO9At3HRDyfhQgnWs
 fE4uAiOiN8ovex9YB15Y/2T4v71ZWOhBKHYkT/mq8Zxb+v91O/wjFc6tX A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10409"; a="284651931"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="284651931"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 13:20:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="593858388"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by orsmga007.jf.intel.com with SMTP; 15 Jul 2022 13:20:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Jul 2022 23:20:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jul 2022 23:20:36 +0300
Message-Id: <20220715202044.11153-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/12] drm/i915: Define VBT eDP/DP max lane
 count bits
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

Since version 244 the VBT can llimt the eDP/DP max lane count.
Add the bits.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index a88c5ef51cd8..d583bb085913 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -438,7 +438,7 @@ struct child_device_config {
 			u8 iboost:1;				/* 196+ */
 			u8 hpd_invert:1;			/* 196+ */
 			u8 use_vbt_vswing:1;			/* 218+ */
-			u8 flag_reserved:2;
+			u8 dp_max_lane_count:2;			/* 244+ */
 			u8 hdmi_support:1;			/* 158+ */
 			u8 dp_support:1;			/* 158+ */
 			u8 tmds_support:1;			/* 158+ */
-- 
2.35.1

