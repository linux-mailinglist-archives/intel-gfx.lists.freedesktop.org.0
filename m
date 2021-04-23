Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0754369B1A
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Apr 2021 22:06:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D115C6EC41;
	Fri, 23 Apr 2021 20:06:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2080.outbound.protection.outlook.com [40.107.220.80])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9830C6EC41;
 Fri, 23 Apr 2021 20:06:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XSCJ3uRErAsdxSiKB3Yrr6YylkfX//r7RLx62ypYh3lKDervAI1CE/L4ReNpj7utHpAL6PaobQb4Wk5fKnsPiONEb6hmte1geiYqyRBbWOl050cyN0Rm/LuKEa2r1pCX5DkBsIqzV3E2BjNniXm3ZY3xyTF142TwzxoPcRKh6JoxTyZu8qsBa3Mv7563SlcrTCyLMfqqRJNJHvdGp5hJmS7tGHTItNg+gcYU72WNU4qM5ol2k3SIsSvH7tVMjQwOs3zPsEtGLEykqTvpGeuKXBJF9ma8UY8qfvmG4qM1l3MnCGQvRkOs2xOAWo54fBEy7B+J8qdehj7rrLwKV+/rqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0N9cmfIeEdU0oLImR1n8KqDWf0jA2fhAcgycO8++4As=;
 b=nvqEcfFw8iIjFT9yNEDQU0o3cTjd/3IBOq+WkMx7WN65Jh/P2N3+LpkAeXtLW5kY1WcE3lwxHWUxVZm+v7Rr11z+C9KUnrzOwg6t3IhFlikAtlqEvqFcbbG323r+hGQppR2bPFPfG87/b1sGw3jzn3z6WjlTU8/Qi2WVD9WacDxM5G1lNZzyFde5vIb/xejoCm2FKsw3asjVS6qHW65BOGAwOSB2r2RF24ZqozjEi7a0hn1/WR96UTReKFbk3ZXZkp9eNIsriv7Me09V6PkH8iT/2N7+jQpp++4s7GRkTPrwoqtLaIPuTSZsZ4kFxpsA4L4qrihhem1rtSHiBQlKMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0N9cmfIeEdU0oLImR1n8KqDWf0jA2fhAcgycO8++4As=;
 b=NUFh1LWPpT8MK8dh3cGxcyoIwYPMIrliu3EHgcvKOh34vl0LCmICPvevKoksZyNDLz/NPqJTyjZid5bNGPk8PXabDCqpJSmX2ygnihLUMEEWXsvw597d+8RA8IgSM8oIzFr31dTESJIuIJfH5MHR+sSEO1Zz0fkR/R6CCfvgzCA=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from DM5PR12MB4679.namprd12.prod.outlook.com (2603:10b6:4:a2::37) by
 DM5PR12MB1835.namprd12.prod.outlook.com (2603:10b6:3:10c::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.20; Fri, 23 Apr 2021 20:06:18 +0000
Received: from DM5PR12MB4679.namprd12.prod.outlook.com
 ([fe80::595e:20a2:f658:a7a5]) by DM5PR12MB4679.namprd12.prod.outlook.com
 ([fe80::595e:20a2:f658:a7a5%5]) with mapi id 15.20.4042.024; Fri, 23 Apr 2021
 20:06:18 +0000
From: Nikola Cornij <nikola.cornij@amd.com>
To: amd-gfx@lists.freedesktop.org
Date: Fri, 23 Apr 2021 16:05:52 -0400
Message-Id: <20210423200552.223110-1-nikola.cornij@amd.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [165.204.55.250]
X-ClientProxiedBy: YTOPR0101CA0017.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00:15::30) To DM5PR12MB4679.namprd12.prod.outlook.com
 (2603:10b6:4:a2::37)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ubuntu.localdomain (165.204.55.250) by
 YTOPR0101CA0017.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b00:15::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.21 via Frontend
 Transport; Fri, 23 Apr 2021 20:06:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8e83e6cb-9c17-4ac1-3a13-08d90693419a
X-MS-TrafficTypeDiagnostic: DM5PR12MB1835:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR12MB183564F00838CCA88860B442EE459@DM5PR12MB1835.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: harh9iTY1ZJoV9D5Y1UrAY5HPYpDoh0D17lMuRGSLVVJHksevDBPqcx8FY9yNBunjcLLnLRjKPg4gHhnFgg7T6D1dLlWDK8QfcLipRWPJxyl5IlXxoV4xd+BbVJNU29XtlZt01Ry/mjFtIXV1cNK9w2MCRNOOWsg1GzqTgqe/0kwBSHa9aVY0p64JWM35IdJS4xX9dx7UMvbZ2Fwah0wxBwdVNVDx67QYqNTGBIUrLITABhlB/kW6oJhCFYilpT0kKB9FSrjfzuMZG6q4TRdhDOn7+C4WNd7vXwPsmLh8L/boQxTHzF3tRsrZG/AYkJfCD7n7Db4OV0s5Mq7XW/ZOuw2HzL2WMNmk4Xw8hVYZxL9bj2nhyrbj5pDHHs/vcs4+jf+XYWmI25OmUifRMbGnYz9DaVpZ5RZ7UEm4w3o1eVbsk9yd/Sb1tmYWvTGhxIDIWWBJxXCB4IesRkKyZ8xjCOozfNHA1PskOBdMc2o+vnU2qgCKmq03nvDTPtul2BsLEbqJA33afXmRGb+tFxeMnJllceFxSpbnaLWQZvSv4GPHvwErn1InlXfan86+m5nJVy1nP4lsq27xdif1KX+HGt5aho3XVmPRlOHRPFNe9hsOd5M3l6XqSX0Bj4ntPeuqbX6FtYzAI/ECTwaRLvyDg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR12MB4679.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(39850400004)(396003)(376002)(136003)(66476007)(16526019)(8936002)(66556008)(86362001)(66946007)(52116002)(38350700002)(956004)(2616005)(6512007)(6506007)(44832011)(5660300002)(186003)(1076003)(83380400001)(2906002)(316002)(6666004)(8676002)(26005)(478600001)(36756003)(6916009)(6486002)(4326008)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?LLm4pymDkBQBKkLl/varMKoc9FaKR0hlX+076qo+246CqCduPe6++75aYvjQ?=
 =?us-ascii?Q?djfcO7DI4N2dQ+3MbWEd489vfUxI304mcdb24LNb32coYcZKnbnofovPx+Ts?=
 =?us-ascii?Q?RifsWBAq4czQ8cGNDwAOPQwO5KJtwJ2OulPKip7iu+VF24d+JhAzgX5ZWP6d?=
 =?us-ascii?Q?mL4hDA90+jOX5vR8gJPIymF2lifaoYoA/afa4p0HXNmQVxsk1vnLsIywp4uJ?=
 =?us-ascii?Q?o3AVW211hgE4DjDOTQraZ1UYMns8FvbL3TLWHuKS+LdXqxO8Tb+3C3QM7O4X?=
 =?us-ascii?Q?kl80awRcI7svfxS9TwYUx+ShH2wiIt3N16TMzEqOuJdypOpRL10iun9mEIcF?=
 =?us-ascii?Q?x35EtnnN/GqCdt3N6ryjIFkIizX0+GFuyYQpO7GUH6KmYjKxjo0MLMds2u2n?=
 =?us-ascii?Q?yINxGBuYb44AopfoE/nFxZutVktFQkTIoZIaopCm8NczVF1o+4DyGIbvyuJg?=
 =?us-ascii?Q?m+fLLEbeczmf0sBdN55AF20qplI33buYevWb++DkOfbbQ7cQy/L7F4QzqP5Y?=
 =?us-ascii?Q?WLzPH7j6BYf8wc5uXzylEbR5APTv6zGPEI4Nv6fDXVz4upVPyD7yr/pATI1n?=
 =?us-ascii?Q?VSAAnCmDs6naztU4V//PcNB17j804nVBkSeRQRlCzm8+0sFihJ5I1X7URd/H?=
 =?us-ascii?Q?eQsZydeMVtnTHSSPEXkUv+Xq/ExvEt7my7N8AM4aZjljQOyCUCij4tXMtTsd?=
 =?us-ascii?Q?vNx9aUAKQFWGuXlFtuarqNgbFrstLjq9vsf8bpAdgZxFbG2BgDwyylxtlpli?=
 =?us-ascii?Q?iNjL1MROrXolkZlKcu86CPm0jv9OHGfGTH1/D4bJEP92og2tWvOOasKXFVIN?=
 =?us-ascii?Q?rvOO1a1kVQyqz2dLvruT52q/P5GJwgkAycS5EdUazMzakh4wcFb3K8Y3ZLiM?=
 =?us-ascii?Q?H6pBDtVBJjfTJ9ngTM2gPt+CSQoqddfALdt4Y+IqvbVgnr+Zo8JVvfgRfGSA?=
 =?us-ascii?Q?NW/dFYMk/zVc09OjGJFHdGjx9kj1Ru+WarfGXgu5WwMjHzCZgLTLp8rAcToY?=
 =?us-ascii?Q?El8Pn/tut7ccznDoLmrCxeAhww7sy/vgfUpSxtA4bf6RbzvB1byFLMWkbIk2?=
 =?us-ascii?Q?H9IbLzGEfbPZYMxGpn2jIw0PWhWliqEus1ltq0jk67O12jY8+rSumy/cmBh9?=
 =?us-ascii?Q?vqtC8KH5sr+3xsLVUTGulme5XJZUikF5elr70nL9OAv9LEtK7kmgUNDfWG40?=
 =?us-ascii?Q?SgP5WxkVtX+Z+p8d7qtdy+ZqOjk+vI8PffYPnqQplf2yv1QNbMM3MJur1Xpb?=
 =?us-ascii?Q?rM5N406e5Gq+jXR6n8FRiHbfZ0EDRs/L4XxxBGO4bmUEGUzeoN1Znx02zcPq?=
 =?us-ascii?Q?aKkHvr506u52/JJLkMnUwSkI?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e83e6cb-9c17-4ac1-3a13-08d90693419a
X-MS-Exchange-CrossTenant-AuthSource: DM5PR12MB4679.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2021 20:06:18.2450 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QXFd2fZuat2UojNMlh6zettm3bJghed0biV3gYAv4H317v8uFHrFlE7incex8gRprMcPGnFQygjRc9/7m0aIUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1835
Subject: [Intel-gfx] [PATCH] drm/dp_mst: Use the correct DPCD space in
 Synaptics quirk
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
Cc: intel-gfx@lists.freedesktop.org, Nikola Cornij <nikola.cornij@amd.com>,
 aurabindo.pillai@amd.com, mikita.lipski@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

[why]
Two conditions that were part of this fix did not go through:

1. DPCD revision has to be v1.4 and up
   This was because wrong DPCD space was used to get the values

2. Downstream port must not be VGA converter
   This was because for MST the topology manager AUX has to be used,
   due to the way MST AUX reads are done.

[how]
- Use Extended Receiver Capability DPCD space if
DP_EXTENDED_RECEIVER_CAP_FIELD_PRESENT is set
- Use MST topology manager AUX to get port DPCD

Signed-off-by: Nikola Cornij <nikola.cornij@amd.com>
---
 drivers/gpu/drm/drm_dp_mst_topology.c | 33 ++++++++++++++++++++-------
 1 file changed, 25 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/drm_dp_mst_topology.c b/drivers/gpu/drm/drm_dp_mst_topology.c
index de5124ce42cb..69fd16ce2cb3 100644
--- a/drivers/gpu/drm/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/drm_dp_mst_topology.c
@@ -5878,18 +5878,35 @@ struct drm_dp_aux *drm_dp_mst_dsc_aux_for_port(struct drm_dp_mst_port *port)
 		return NULL;
 
 	if (drm_dp_has_quirk(&desc, DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD) &&
-	    port->mgr->dpcd[DP_DPCD_REV] >= DP_DPCD_REV_14 &&
 	    port->parent == port->mgr->mst_primary) {
-		u8 downstreamport;
+		u8 training_aux_rd_interval = 0;
+		u8 dpcd_rev = 0;
+		unsigned int dpcd_caps_offset = 0;
 
-		if (drm_dp_dpcd_read(&port->aux, DP_DOWNSTREAMPORT_PRESENT,
-				     &downstreamport, 1) < 0)
+		if (drm_dp_dpcd_read(port->mgr->aux, DP_TRAINING_AUX_RD_INTERVAL,
+				     &training_aux_rd_interval, 1) < 1)
 			return NULL;
 
-		if ((downstreamport & DP_DWN_STRM_PORT_PRESENT) &&
-		   ((downstreamport & DP_DWN_STRM_PORT_TYPE_MASK)
-		     != DP_DWN_STRM_PORT_TYPE_ANALOG))
-			return port->mgr->aux;
+		/* If DP_EXTENDED_RECEIVER_CAP_FIELD_PRESENT is set, the Extended Receiver Capability field has to be used */
+		if (training_aux_rd_interval & DP_EXTENDED_RECEIVER_CAP_FIELD_PRESENT)
+			dpcd_caps_offset = 0x02200;
+
+		if (drm_dp_dpcd_read(port->mgr->aux, dpcd_caps_offset + DP_DPCD_REV,
+				     &dpcd_rev, 1) < 1)
+			return NULL;
+
+		if (dpcd_rev >= DP_DPCD_REV_14) {
+			u8 downstreamport = 0;
+
+			if (drm_dp_dpcd_read(port->mgr->aux, dpcd_caps_offset + DP_DOWNSTREAMPORT_PRESENT,
+					     &downstreamport, 1) < 1)
+				return NULL;
+
+			if ((downstreamport & DP_DWN_STRM_PORT_PRESENT) &&
+			   ((downstreamport & DP_DWN_STRM_PORT_TYPE_MASK)
+			     != DP_DWN_STRM_PORT_TYPE_ANALOG))
+				return port->mgr->aux;
+		}
 	}
 
 	/*
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
