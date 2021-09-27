Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C06419690
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 16:42:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE68B89FC0;
	Mon, 27 Sep 2021 14:42:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2079.outbound.protection.outlook.com [40.107.236.79])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99BA889C0A
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 14:39:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F6hqu53dWI+b7U13OD/+E9W5h+YUARnIRzTcBYNSGcbUqYxwzKMjJzx++VqUbJrD2aJ6dIJMxeLb9mtFCeSOlGKsl3VVanX8JcbJKnJR5iBkVeGVloIsgVbpgVUDnfE110vk18KejbTYz9Tn1u5neDA8QShHsuFdAvbKgoehP+z096wQYmTNcYnMEytQd56XaJjDP9evM14zvO3P/5Bp4p+B0sBRizIpjHrgqYiY9v/U3u1+aHKgb0A5jt+0IWjJ2zp29bOXA5rmR7BEoUljJYYNGP7MefgFda4LyIpmn6nO56DoY/A+qc7gg3gxVEoQf/y7jNKoKPrzv45z4WE/FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=v/VVI1RzzkZJ4u6cz1QfGmSThAsmntIzEgc5XW9dubg=;
 b=jqO0rxNYEPxDDF7FJDPsgcygZ5NeXnPUyaiNxCp8aS8NE2DAF3D/7D3ZmjeHbtWSqxUx3u9RmO/ZM9G+5ziqA/J8nqEwZbMP3vwkuh9MzX2fYrpiGJGsnSh2jRmsvjP6RcsFcVqwv3YAgVBSOOEEoECZHHfXsP6ALC7fOh/Kj4rzumozOrMySVWTkTllOMaaGrBn3VtzW4NFzREld5OMyQXAHLI3iqVpuyiIi44OfJ4KXxslAEqUa7x19aBf+rjtlCAUkrLrzy0ckDpdByBatbW5uZObazPnAmiJXvfjrkhVPIsMeFb3QFyi/A9g+WjTWqdFMsWT7V8ilCytak9aiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v/VVI1RzzkZJ4u6cz1QfGmSThAsmntIzEgc5XW9dubg=;
 b=s+XBoPNc4hr+dW4VX7azuOmc8jVZsYpjxTuNrv5FeV4nVG5tWqTAgv7Q7oU0g6QGDuemoi+m8VUL7az6WVNNodNC//naFx83DVHGQbZBoAy2VATV9GAimCu+OAv0tYjSjxUY9ay3+LAhUT9Pw5nP0Y6YGPbw/a0cH1VTmhzzQGU=
Received: from BN9PR03CA0346.namprd03.prod.outlook.com (2603:10b6:408:f6::21)
 by BYAPR12MB4693.namprd12.prod.outlook.com (2603:10b6:a03:98::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.14; Mon, 27 Sep
 2021 14:39:00 +0000
Received: from BN8NAM11FT067.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:f6:cafe::5e) by BN9PR03CA0346.outlook.office365.com
 (2603:10b6:408:f6::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.15 via Frontend
 Transport; Mon, 27 Sep 2021 14:39:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; lists.freedesktop.org; dkim=none (message not signed)
 header.d=none;lists.freedesktop.org; dmarc=pass action=none
 header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com;
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 BN8NAM11FT067.mail.protection.outlook.com (10.13.177.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4544.13 via Frontend Transport; Mon, 27 Sep 2021 14:38:59 +0000
Received: from SATLEXMB05.amd.com (10.181.40.146) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.8; Mon, 27 Sep
 2021 09:38:59 -0500
Received: from SATLEXMB04.amd.com (10.181.40.145) by SATLEXMB05.amd.com
 (10.181.40.146) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.8; Mon, 27 Sep
 2021 09:38:59 -0500
Received: from jzuo-linux.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server id 15.1.2308.8 via Frontend
 Transport; Mon, 27 Sep 2021 09:38:58 -0500
From: Fangzhi Zuo <Jerry.Zuo@amd.com>
To: <intel-gfx@lists.freedesktop.org>, <jani.nikula@intel.com>
CC: <harry.wentland@amd.com>, <Nicholas.Kazlauskas@amd.com>,
 <wayne.lin@amd.com>, Fangzhi Zuo <Jerry.Zuo@amd.com>
Date: Mon, 27 Sep 2021 10:38:56 -0400
Message-ID: <20210927143856.2214981-1-Jerry.Zuo@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5ad9d570-e5cf-4895-234f-08d981c48b2f
X-MS-TrafficTypeDiagnostic: BYAPR12MB4693:
X-Microsoft-Antispam-PRVS: <BYAPR12MB4693CCA401C7178C7B25B43DE5A79@BYAPR12MB4693.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:144;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DN+Xo2SGQ9b8E0P2oSiFQqs0JRwA7XdmZsQXaQpNtjLTxGLm8OAi65dpnfeMcSZxj0ozic5bc5aUQFkPoNl3NWubfYcHjrj3zvVd1DR63ymNDnS/7GREFdjyh99OS8GRDEbCk233I41dRrdMFCLZA2VdUvtcIKyrx4RJJNbt9UjCql0Esy2G/mKGGPAETxcEwOYA2ImmpCYdSnmqTcmDOXNX6xwMrWCwwhgWsZWPSEzG2thrZY97eq/GLkbERAawkVa5FUnrjI2CLVDyJ+666bzJ+9dzmRSIuTFanhqXmk57PXIJ0ZeIq0xBxrhenzImgBLC7pZyC5ApSm4YY/mZJRRY+Fc6idBnP0wR+Rq2gFBfdHiqIeJbDRzq7y0w8EgFJ7jtNbEo5u8dxPFgpzZV5MvlcBOIL+pijt4/OWGul/N7YA9Dxa56S2hsrrHLSibwn7NZkowN2OXLhjw03JJ3CVIrc1eJX3etwTGINd6oduSYXS6cJnRZGFCxx1V7T7aFYN6NlW2qJKdVs9Y7WKQRDiOHJjH1qsqTH6ZaMc4rWzsexgd6+ujTispdZYavxdAG2lm6fcM7NGwU8xEEHDsbKWW8AQRrzocIWr8zEc/zcGkjEpX0ZHTuOV/lpOCvVZoMgR0xDxHMi8+MYU5CT8haK0vGn/K94PaxmtdiKQMQIsMAwaTz78lt8M9JA2QsIjk/lFwOZnqlnIdxRqMXGw+vGWdfCk+f0hQFcge7gTq/VBsFnUjD/UHlXuHpF+Sm+5iy
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:SATLEXMB04.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(4636009)(46966006)(36840700001)(70586007)(508600001)(26005)(36756003)(86362001)(70206006)(82310400003)(36860700001)(316002)(8936002)(2616005)(426003)(2906002)(83380400001)(356005)(336012)(47076005)(5660300002)(81166007)(4326008)(7696005)(8676002)(1076003)(110136005)(54906003)(186003)(21314003)(36900700001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2021 14:38:59.7901 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ad9d570-e5cf-4895-234f-08d981c48b2f
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT067.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB4693
X-Mailman-Approved-At: Mon, 27 Sep 2021 14:42:17 +0000
Subject: [Intel-gfx] [PATCH] drm/dp: Add Additional DP2 Headers
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

Include FEC, DSC, Link Training related headers.

Signed-off-by: Fangzhi Zuo <Jerry.Zuo@amd.com>
---
 include/drm/drm_dp_helper.h | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index 1d5b3dbb6e56..bfd8e3e0171d 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -453,6 +453,7 @@ struct drm_panel;
 # define DP_FEC_UNCORR_BLK_ERROR_COUNT_CAP  (1 << 1)
 # define DP_FEC_CORR_BLK_ERROR_COUNT_CAP    (1 << 2)
 # define DP_FEC_BIT_ERROR_COUNT_CAP	    (1 << 3)
+#define DP_FEC_CAPABILITY_1			0x091   /* 2.0 */
 
 /* DP-HDMI2.1 PCON DSC ENCODER SUPPORT */
 #define DP_PCON_DSC_ENCODER_CAP_SIZE        0xC	/* 0x9E - 0x92 */
@@ -537,6 +538,9 @@ struct drm_panel;
 #define DP_DSC_BRANCH_OVERALL_THROUGHPUT_1  0x0a1
 #define DP_DSC_BRANCH_MAX_LINE_WIDTH        0x0a2
 
+/* DFP Capability Extension */
+#define DP_DFP_CAPABILITY_EXTENSION_SUPPORT	0x0a3	/* 2.0 */
+
 /* Link Configuration */
 #define	DP_LINK_BW_SET		            0x100
 # define DP_LINK_RATE_TABLE		    0x00    /* eDP 1.4 */
@@ -688,6 +692,7 @@ struct drm_panel;
 
 #define DP_DSC_ENABLE                       0x160   /* DP 1.4 */
 # define DP_DECOMPRESSION_EN                (1 << 0)
+#define DP_DSC_CONFIGURATION				0x161	/* DP 2.0 */
 
 #define DP_PSR_EN_CFG				0x170   /* XXX 1.2? */
 # define DP_PSR_ENABLE				BIT(0)
@@ -743,6 +748,7 @@ struct drm_panel;
 # define DP_RECEIVE_PORT_0_STATUS	    (1 << 0)
 # define DP_RECEIVE_PORT_1_STATUS	    (1 << 1)
 # define DP_STREAM_REGENERATION_STATUS      (1 << 2) /* 2.0 */
+# define DP_INTRA_HOP_AUX_REPLY_INDICATION	(1 << 3) /* 2.0 */
 
 #define DP_ADJUST_REQUEST_LANE0_1	    0x206
 #define DP_ADJUST_REQUEST_LANE2_3	    0x207
@@ -865,6 +871,8 @@ struct drm_panel;
 # define DP_PHY_TEST_PATTERN_80BIT_CUSTOM   0x4
 # define DP_PHY_TEST_PATTERN_CP2520         0x5
 
+#define DP_PHY_SQUARE_PATTERN				0x249
+
 #define DP_TEST_HBR2_SCRAMBLER_RESET        0x24A
 #define DP_TEST_80BIT_CUSTOM_PATTERN_7_0    0x250
 #define	DP_TEST_80BIT_CUSTOM_PATTERN_15_8   0x251
@@ -1109,6 +1117,18 @@ struct drm_panel;
 #define DP_128B132B_TRAINING_AUX_RD_INTERVAL   0x2216 /* 2.0 */
 # define DP_128B132B_TRAINING_AUX_RD_INTERVAL_MASK 0x7f
 
+#define DP_TEST_264BIT_CUSTOM_PATTERN_7_0		0x2230
+#define DP_TEST_264BIT_CUSTOM_PATTERN_263_256	0x2250
+
+/* DSC Extended Capability Branch Total DSC Resources */
+#define DP_DSC_SUPPORT_AND_DECODER_COUNT			0x2260	/* 2.0 */
+#define DP_DSC_MAX_SLICE_COUNT_AND_AGGREGATION_0	0x2270	/* 2.0 */
+# define DP_DSC_DECODER_0_MAXIMUM_SLICE_COUNT_MASK	(1 << 0)
+# define DP_DSC_DECODER_0_AGGREGATION_SUPPORT_MASK	(0b111 << 1)
+# define DP_DSC_DECODER_0_AGGREGATION_SUPPORT_SHIFT	1
+# define DP_DSC_DECODER_COUNT_MASK			(0b111 << 5)
+# define DP_DSC_DECODER_COUNT_SHIFT			5
+
 /* Protocol Converter Extension */
 /* HDMI CEC tunneling over AUX DP 1.3 section 5.3.3.3.1 DPCD 1.4+ */
 #define DP_CEC_TUNNELING_CAPABILITY            0x3000
-- 
2.25.1

