Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCDF576F01
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Jul 2022 16:40:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3EC610FBEA;
	Sat, 16 Jul 2022 14:36:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53FC410E05A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 20:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657916474; x=1689452474;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qukNDkZEkH65Xsf/hc+OP1MAKgiaJ3VWgkMm7f0zrHc=;
 b=LXq/3MxdFNifmfysi1+PiJe2kXgucm4Lu0IGU9p22m1kINjKXV2L9jgN
 vKVL3xLdYr1SY+6u+IQ0EUC43T7LWuAIxku+qiB0g2O68Od3ynbV09Kez
 lDZpqbwJoHVl/3inyZVSxazVr7STRHtm7NDt5JLeK5Glb/m6QCdJEZ8FJ
 Orwowi2auBgFAgTrYlW7Fymrw8GxuH6IvD1Wc8IZvzq69ISDNN6eRD/C1
 /dSka0pVWH/5VeE7R7svr6o9r4lsYdY4a0yY2yb9OXDvIdZd5Ls0W00gr
 lIdstZubLAKJpic22TdAyUzMB3apG4umblbrqvoOPkUv3zGyOcWligbN+ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10409"; a="268914171"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="268914171"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 13:21:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="738789858"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by fmsmga001.fm.intel.com with SMTP; 15 Jul 2022 13:21:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Jul 2022 23:21:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jul 2022 23:20:41 +0300
Message-Id: <20220715202044.11153-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/12] drm/i915: Define all possible VBT device
 handles
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

We already have LFP1 and LFP2 device handles define. Just
add all the rest as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 2feba1e69a6d..f56c869e106f 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -197,6 +197,15 @@ struct bdb_general_features {
 #define GPIO_PIN_ADD_DDC_I2C	0x06 /* "ADDCARD DDC/I2C GPIO pins" */
 
 /* Device handle */
+#define DEVICE_HANDLE_CRT	0x0001
+#define DEVICE_HANDLE_EFP1	0x0004
+#define DEVICE_HANDLE_EFP2	0x0040
+#define DEVICE_HANDLE_EFP3	0x0020
+#define DEVICE_HANDLE_EFP4	0x0010 /* 194+ */
+#define DEVICE_HANDLE_EFP5	0x0002 /* 215+ */
+#define DEVICE_HANDLE_EFP6	0x0001 /* 217+ */
+#define DEVICE_HANDLE_EFP7	0x0100 /* 217+ */
+#define DEVICE_HANDLE_EFP8	0x0200 /* 217+ */
 #define DEVICE_HANDLE_LFP1	0x0008
 #define DEVICE_HANDLE_LFP2	0x0080
 
-- 
2.35.1

