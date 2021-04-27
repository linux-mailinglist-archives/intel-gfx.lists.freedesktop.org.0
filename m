Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F4E36CDFE
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 23:54:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A03EC6E9EB;
	Tue, 27 Apr 2021 21:54:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam08on2081.outbound.protection.outlook.com [40.107.100.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F01586E9E9;
 Tue, 27 Apr 2021 21:54:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GkBHVuhLCdaPDY21UyDiouqPqZhOV0OjEgFpmzepW6v1UtZyDn4sWTSS/gxSPvRohiOwMGZJwVlNxdqKhq2+aIFUFP2UfOzU0XZaWfYLaBvUE9x1BbXwy7VnZxQFpCVVYW7Ysmm3aS2W1ZeezuJ/jG1jT2HN4xy0Z0khPf0O7VVhYYYAbyQ29sn6Z1uc7Karo3QC+WCpq5+hNPhieX3SGtP4teJlprFYBQMTONXdhOr7jTzjU4aOM0yjVaQzcukIeL+sCSkbu0tab6CzaZelw39bGNLBgJSJblm5xmrJLzVic5yzZafmBbEKoxyZZrLPb9EfYP/AIVGaOWrs8jFnHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QiHtbq8WC4v4LQZOJhho2ObCxtD2AJiUnePkRtTtUhs=;
 b=DZwA+vsayrRd2HryQIzbN5kT7JNg7fqOX0GcXBdHINu9kr3WbNdXNpRhz0ClHjlU5uxabxHSFGFFx2p0e8s4mStjCOXMPMTmkqloB+x0XSXhyOREpbA0OBMu+iIhMzOsJdpD10Q+8Jy4yshKnFO2kb6eCYeeXtUUK+oVXAAmoeDOWyRj2AEDmzzAO/IB/eiPAqJBXO4pIp/C+3GoAbja6R2u2uKEskLlFYkhhtg2jQVJ5VRmHhVwYgM7SRJxxnVuxd0heov1zc8pmE46puy/rNaFmc9GJ/bUWqXJ7qR1YCCKxtU6uTPaRWmHS5EfcVBLqXZgiC/E5KeBqU32tKddBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QiHtbq8WC4v4LQZOJhho2ObCxtD2AJiUnePkRtTtUhs=;
 b=GxULcU+o5VFGYf994RLqwj7JN89H783kkDvvqz9nF7vPV9HF99fZuc5YYPhuTboad0icO0GIIo2KKUiv0jp6RGTP0Ur/DWcu338xsjz1vwR5UMdwyQ4iwy3XrARLMR9CGhr7H6gmMoEiTsofb5qPKKWKBJW0HgCLGDUcapocVKM=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from DM5PR12MB4679.namprd12.prod.outlook.com (2603:10b6:4:a2::37) by
 DM5PR12MB1356.namprd12.prod.outlook.com (2603:10b6:3:74::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.24; Tue, 27 Apr 2021 21:54:00 +0000
Received: from DM5PR12MB4679.namprd12.prod.outlook.com
 ([fe80::595e:20a2:f658:a7a5]) by DM5PR12MB4679.namprd12.prod.outlook.com
 ([fe80::595e:20a2:f658:a7a5%5]) with mapi id 15.20.4065.026; Tue, 27 Apr 2021
 21:54:00 +0000
From: Nikola Cornij <nikola.cornij@amd.com>
To: amd-gfx@lists.freedesktop.org
Date: Tue, 27 Apr 2021 17:52:33 -0400
Message-Id: <20210427215233.35874-1-nikola.cornij@amd.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [165.204.55.250]
X-ClientProxiedBy: YT1PR01CA0050.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2e::19) To DM5PR12MB4679.namprd12.prod.outlook.com
 (2603:10b6:4:a2::37)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ubuntu.localdomain (165.204.55.250) by
 YT1PR01CA0050.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2e::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.25 via Frontend Transport; Tue, 27 Apr 2021 21:53:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ff6b86aa-18a8-4682-067b-08d909c6f6d4
X-MS-TrafficTypeDiagnostic: DM5PR12MB1356:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR12MB1356BACB20E16D4B611A238AEE419@DM5PR12MB1356.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:186;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xLRtB/SM0H40PqrXb+etyQG385bC3Y6CbxDXCL235mivp3UBQJlAnrGI9+NJDUJALbHFJyJ+eTKvg3/tTn2YHdvdkdV1IKFoCQvuPaVUQpnwYvm0f8H8pUQhDBWkrnHBfBd71kaQKZEDlKyeivB1wdmWU5/YEINMk/Toj1vNolduPHScDo8HeU/fAmGUMNSvl/rPDPhqKfLjqXobo1P/kJhoe23cSabSkvrEl8lYP94F2pp51bZbIdb/eq2z+j95L4Gh8rvZHqFMZPp4kDF1SRvitWYNv1EW40aiKtvEKWUqy07yYNlgKnDtEXVTwWwBk95RtbnjA6AoIwWlfonqipngE0+NT5R33xM2Sb9wWFb5PF4ZaFdFgMS9/e9Qvp5gZoBOqloyRETGFFE9uZqtPA+t66YxmamQzdXGT8rDCsuBvvdUeBYAWEkQmU5VTo8Yk86oECqGS2FgnP78AHSgy06+jNs2opiq4qR39R62iXArB9v++iN1OJzBFHyGezL1PhPXUc9oHV2yVGrrgsmtw59HWPWgr8/etxNLxoiZb/2lJ3nBsQgUPIJD++kS2Nz50Fl4bQA/h7sUPxP+0Dbu0P69uXOjIItLvfIddNPQbmE25AjiEVSdcJFJrRfy35IQdBgdrkaNAx64YWwMGhKjAKCWWWFCcFDz1MTHbEd39t8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR12MB4679.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39850400004)(396003)(136003)(346002)(366004)(376002)(66946007)(186003)(66476007)(66556008)(6486002)(4326008)(16526019)(83380400001)(6506007)(52116002)(1076003)(38100700002)(6512007)(6916009)(44832011)(5660300002)(2616005)(30864003)(2906002)(316002)(36756003)(478600001)(38350700002)(26005)(8676002)(6666004)(86362001)(956004)(8936002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?W/6/YtDrIH09qce8vael22bcgbv3TylbGml8/WiPzhJq2GFh6nd7Jyj1FNue?=
 =?us-ascii?Q?Htq7kA5j5F1izPgQlQTu3EmNQWZKv0WPfJfJI5Vf8crUNr4u32In7KTTOBQh?=
 =?us-ascii?Q?Vk2ctcPToIY9DdBPStOl9q9lfpfKDLRI43oJAV4wAKyvwbTbxXX9jGot1WE/?=
 =?us-ascii?Q?SHu0CCNMrIj0hFFJMmobEQ6/N6TPbCDGm3EdEZkAxqFTnveEZpDdSLiKNNU5?=
 =?us-ascii?Q?n5V5ox8TASaHkIjWkuhmTlBSyvhrwhi/NGsxkyMGjp24yUhX2O7FfYXrl06I?=
 =?us-ascii?Q?yn5tDn77G5T9ChiJruqwCmgioDvVyANNZeCc3H8v4H5QStIjUV6ac3nZuXXF?=
 =?us-ascii?Q?DajqU77uIJIF44fHy7dUZtoGDCzkUs20l/c2IWOpYBhhaj8nNzD4oHM0NKDG?=
 =?us-ascii?Q?CsJm7R+1UZ3WYkHfDxvlaDGPhnGVramcx+BPTK4ROd01NWZwxs+ibaWAx6jb?=
 =?us-ascii?Q?EsCEqDw72x1/kMn1V2NGUcfOm+ci3nGNtJtlUlznAanyWPULwbGura/4w9Xi?=
 =?us-ascii?Q?X2neqJU43ogRcF+thkDdxB9gfyCAFHegPRTVOOsaJYmgKBgMkcO/1Y6zwcc7?=
 =?us-ascii?Q?dLtmGtKs8xAF80cI04rm4RtMUvp2JUMoQOKbzrDDxDmFSpdkNdrHr2d9dpQR?=
 =?us-ascii?Q?1icJFfWueYvX38Q5tfKk+pjhgqHSJQBhtyfaqSsyyNoN78clo27wF234z3vP?=
 =?us-ascii?Q?fz+80CT4PYeBGTFdkG/Ac4rirMWFjSxtiIMYxmtiJjmwqK2gN+rorZ0leB/F?=
 =?us-ascii?Q?JFXyEX/+pp/XdDW6ItNz2zhdWzN9WDut7Sbxkaj0tm4w5adx4QbMKArVanBF?=
 =?us-ascii?Q?DDKt3+zwD6HuGvz1c5bmlY7+vaC24vp/M5XrKQuLAvT0X+QWr0JaZCHoQ4l5?=
 =?us-ascii?Q?baOkHng9W8LX/1/3/C8pcxJo2pDmao9Z9Gowq42FWF/MkCb6EsxlrC2HIehb?=
 =?us-ascii?Q?MvO5iFaCCxJY/e5XxPBJPeYOvN76iOAKvLx8V/4g230W7D1jutuacIZHrYiv?=
 =?us-ascii?Q?6wLU4enRJwOdagSavINGAkiUr5mgujHZAtfzmTdJaQTFR9l0fYBdgDDUamkJ?=
 =?us-ascii?Q?hsqCYqy7qClj1nJcJ9bN27aSiXvlngIwtEh7pk94mKkzQ4ezXg6MlZID2mdM?=
 =?us-ascii?Q?SBumyA9hbiQHIQkwUtaOgABQsfFxpR+bgEIdk1kIfYjfynTL+L/0UpRxjmly?=
 =?us-ascii?Q?l76FbyuOO0Hsj4D1UKhaDuaw2vpMYYvYyuoHkeJ5jfhU/9/HDaDYCARxOWEr?=
 =?us-ascii?Q?OYuYZp8q6GS4sbZTnsD4hzH0d7pmyESvyFhNLA2mgQyC0kddz/AT4lOLapCW?=
 =?us-ascii?Q?iqppvDis8AiluasSPEutshVI?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff6b86aa-18a8-4682-067b-08d909c6f6d4
X-MS-Exchange-CrossTenant-AuthSource: DM5PR12MB4679.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2021 21:54:00.1479 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WObJQyCHHIydWKHc7fsvxdebD4ETrFqqPIlTMq5aA6D0RDVQYzanabxARxJFWY0WahMSOzfEkSIm/9A2eW5k8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1356
Subject: [Intel-gfx] [PATCH] drm/drm_mst: Use Extended Base Receiver
 Capability DPCD space
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
 koba.ko@canonical.com, aurabindo.pillai@amd.com, mikita.lipski@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

[why]
DP 1.4a spec madates that if DP_EXTENDED_RECEIVER_CAP_FIELD_PRESENT is
set, Extended Base Receiver Capability DPCD space must be used. Without
doing that, the three DPCD values that differ will be wrong, leading to
incorrect or limited functionality. MST link rate, for example, could
have a lower value or Synaptics quirk wouldn't work out well when
Extended DPCD was not read, resulting in no DSC for such hubs.

[how]
Modify MST topology manager to use the values from Extended DPCD where
applicable.

To prevent regression on the sources that have lower maximum link rate
capability than MAX_LINK_RATE from Extended DPCD, have the drivers
supply maximum lane count and rate at initialization time.

This also reverts 'commit 2dcab875e763 ("Revert "drm/dp_mst: Retrieve
extended DPCD caps for topology manager"")', brining the change back to the
original 'commit ad44c03208e4 ("drm/dp_mst: Retrieve extended DPCD caps
for topology manager")'.

Signed-off-by: Nikola Cornij <nikola.cornij@amd.com>
---
 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |  5 +++
 .../gpu/drm/amd/display/dc/core/dc_link_dp.c  | 18 ++++++++++
 drivers/gpu/drm/amd/display/dc/dc_link.h      |  2 ++
 drivers/gpu/drm/drm_dp_mst_topology.c         | 33 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  6 +++-
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |  3 +-
 drivers/gpu/drm/radeon/radeon_dp_mst.c        |  3 ++
 include/drm/drm_dp_mst_helper.h               | 12 ++++++-
 8 files changed, 67 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
index d62460b69d95..d038e3185afb 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
@@ -437,6 +437,8 @@ void amdgpu_dm_initialize_dp_connector(struct amdgpu_display_manager *dm,
 				       struct amdgpu_dm_connector *aconnector,
 				       int link_index)
 {
+	struct dc_link_settings max_link_enc_cap = {0};
+
 	aconnector->dm_dp_aux.aux.name =
 		kasprintf(GFP_KERNEL, "AMDGPU DM aux hw bus %d",
 			  link_index);
@@ -450,6 +452,7 @@ void amdgpu_dm_initialize_dp_connector(struct amdgpu_display_manager *dm,
 	if (aconnector->base.connector_type == DRM_MODE_CONNECTOR_eDP)
 		return;
 
+	dc_link_dp_get_max_link_enc_cap(aconnector->dc_link, &max_link_enc_cap);
 	aconnector->mst_mgr.cbs = &dm_mst_cbs;
 	drm_dp_mst_topology_mgr_init(
 		&aconnector->mst_mgr,
@@ -457,6 +460,8 @@ void amdgpu_dm_initialize_dp_connector(struct amdgpu_display_manager *dm,
 		&aconnector->dm_dp_aux.aux,
 		16,
 		4,
+		max_link_enc_cap.lane_count,
+		max_link_enc_cap.link_rate,
 		aconnector->connector_id);
 
 	drm_connector_attach_dp_subconnector_property(&aconnector->base);
diff --git a/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c b/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c
index 3ff3d9e90983..afa43181dec6 100644
--- a/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c
+++ b/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c
@@ -1893,6 +1893,24 @@ bool dc_link_dp_sync_lt_end(struct dc_link *link, bool link_down)
 	return true;
 }
 
+bool dc_link_dp_get_max_link_enc_cap(const struct dc_link *link, struct dc_link_settings *max_link_enc_cap)
+{
+	if (!max_link_enc_cap) {
+		DC_LOG_ERROR("%s: Could not return max link encoder caps", __func__);
+		return false;
+	}
+
+	if (link->link_enc->funcs->get_max_link_cap) {
+		link->link_enc->funcs->get_max_link_cap(link->link_enc, max_link_enc_cap);
+		return true;
+	}
+
+	DC_LOG_ERROR("%s: Max link encoder caps unknown", __func__);
+	max_link_enc_cap->lane_count = 1;
+	max_link_enc_cap->link_rate = 6;
+	return false;
+}
+
 static struct dc_link_settings get_max_link_cap(struct dc_link *link)
 {
 	struct dc_link_settings max_link_cap = {0};
diff --git a/drivers/gpu/drm/amd/display/dc/dc_link.h b/drivers/gpu/drm/amd/display/dc/dc_link.h
index 054bab45ee17..fc5622ffec3d 100644
--- a/drivers/gpu/drm/amd/display/dc/dc_link.h
+++ b/drivers/gpu/drm/amd/display/dc/dc_link.h
@@ -345,6 +345,8 @@ bool dc_link_dp_set_test_pattern(
 	const unsigned char *p_custom_pattern,
 	unsigned int cust_pattern_size);
 
+bool dc_link_dp_get_max_link_enc_cap(const struct dc_link *link, struct dc_link_settings *max_link_enc_cap);
+
 void dc_link_enable_hpd_filter(struct dc_link *link, bool enable);
 
 bool dc_link_is_dp_sink_present(struct dc_link *link);
diff --git a/drivers/gpu/drm/drm_dp_mst_topology.c b/drivers/gpu/drm/drm_dp_mst_topology.c
index de5124ce42cb..a86065c9a880 100644
--- a/drivers/gpu/drm/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/drm_dp_mst_topology.c
@@ -3693,18 +3693,23 @@ int drm_dp_mst_topology_mgr_set_mst(struct drm_dp_mst_topology_mgr *mgr, bool ms
 	/* set the device into MST mode */
 	if (mst_state) {
 		struct drm_dp_payload reset_pay;
+		int lane_count;
+		int link_rate;
 
 		WARN_ON(mgr->mst_primary);
 
 		/* get dpcd info */
-		ret = drm_dp_dpcd_read(mgr->aux, DP_DPCD_REV, mgr->dpcd, DP_RECEIVER_CAP_SIZE);
-		if (ret != DP_RECEIVER_CAP_SIZE) {
-			DRM_DEBUG_KMS("failed to read DPCD\n");
+		ret = drm_dp_read_dpcd_caps(mgr->aux, mgr->dpcd);
+		if (ret < 0) {
+			drm_dbg_kms(mgr->dev, "%s: failed to read DPCD, ret %d\n",
+				    mgr->aux->name, ret);
 			goto out_unlock;
 		}
 
-		mgr->pbn_div = drm_dp_get_vc_payload_bw(drm_dp_bw_code_to_link_rate(mgr->dpcd[1]),
-							mgr->dpcd[2] & DP_MAX_LANE_COUNT_MASK);
+		lane_count = min_t((int)(mgr->dpcd[2] & DP_MAX_LANE_COUNT_MASK), mgr->max_lane_count);
+		link_rate = min_t((int)mgr->dpcd[1], mgr->max_link_rate);
+		mgr->pbn_div = drm_dp_get_vc_payload_bw(drm_dp_bw_code_to_link_rate(link_rate),
+							lane_count);
 		if (mgr->pbn_div == 0) {
 			ret = -EINVAL;
 			goto out_unlock;
@@ -5432,14 +5437,17 @@ EXPORT_SYMBOL(drm_atomic_get_mst_topology_state);
  * @aux: DP helper aux channel to talk to this device
  * @max_dpcd_transaction_bytes: hw specific DPCD transaction limit
  * @max_payloads: maximum number of payloads this GPU can source
+ * @max_lane_count: maximum number of lanes this GPU supports
+ * @max_link_rate: maximum link rate this GPU supports, units as in DPCD
  * @conn_base_id: the connector object ID the MST device is connected to.
  *
  * Return 0 for success, or negative error code on failure
  */
 int drm_dp_mst_topology_mgr_init(struct drm_dp_mst_topology_mgr *mgr,
 				 struct drm_device *dev, struct drm_dp_aux *aux,
-				 int max_dpcd_transaction_bytes,
-				 int max_payloads, int conn_base_id)
+				 int max_dpcd_transaction_bytes, int max_payloads,
+				 int max_lane_count, int max_link_rate,
+				 int conn_base_id)
 {
 	struct drm_dp_mst_topology_state *mst_state;
 
@@ -5474,6 +5482,8 @@ int drm_dp_mst_topology_mgr_init(struct drm_dp_mst_topology_mgr *mgr,
 	mgr->aux = aux;
 	mgr->max_dpcd_transaction_bytes = max_dpcd_transaction_bytes;
 	mgr->max_payloads = max_payloads;
+	mgr->max_lane_count = max_lane_count;
+	mgr->max_link_rate = max_link_rate;
 	mgr->conn_base_id = conn_base_id;
 	if (max_payloads + 1 > sizeof(mgr->payload_mask) * 8 ||
 	    max_payloads + 1 > sizeof(mgr->vcpi_mask) * 8)
@@ -5880,14 +5890,13 @@ struct drm_dp_aux *drm_dp_mst_dsc_aux_for_port(struct drm_dp_mst_port *port)
 	if (drm_dp_has_quirk(&desc, DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD) &&
 	    port->mgr->dpcd[DP_DPCD_REV] >= DP_DPCD_REV_14 &&
 	    port->parent == port->mgr->mst_primary) {
-		u8 downstreamport;
+		u8 dpcd_ext[DP_RECEIVER_CAP_SIZE];
 
-		if (drm_dp_dpcd_read(&port->aux, DP_DOWNSTREAMPORT_PRESENT,
-				     &downstreamport, 1) < 0)
+		if (drm_dp_read_dpcd_caps(port->mgr->aux, dpcd_ext) < 0)
 			return NULL;
 
-		if ((downstreamport & DP_DWN_STRM_PORT_PRESENT) &&
-		   ((downstreamport & DP_DWN_STRM_PORT_TYPE_MASK)
+		if ((dpcd_ext[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_PRESENT) &&
+		    ((dpcd_ext[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_TYPE_MASK)
 		     != DP_DWN_STRM_PORT_TYPE_ANALOG))
 			return port->mgr->aux;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8e316146b6d1..0c37a86d3bc9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -941,6 +941,7 @@ intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)
 	struct intel_dp *intel_dp = &dig_port->dp;
 	enum port port = dig_port->base.port;
 	int ret;
+	int bios_max_link_rate;
 
 	if (!HAS_DP_MST(i915) || intel_dp_is_edp(intel_dp))
 		return 0;
@@ -955,8 +956,11 @@ intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)
 
 	/* create encoders */
 	intel_dp_create_fake_mst_encoders(dig_port);
+	bios_max_link_rate = intel_bios_dp_max_link_rate(&dig_port->base);
 	ret = drm_dp_mst_topology_mgr_init(&intel_dp->mst_mgr, &i915->drm,
-					   &intel_dp->aux, 16, 3, conn_base_id);
+					   &intel_dp->aux, 16, 3,
+					   dig_port->max_lanes,
+					   bios_max_link_rate / 27000, conn_base_id);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c b/drivers/gpu/drm/nouveau/dispnv50/disp.c
index 196612addfd6..54177d5fb352 100644
--- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
+++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
@@ -1617,7 +1617,8 @@ nv50_mstm_new(struct nouveau_encoder *outp, struct drm_dp_aux *aux, int aux_max,
 	mstm->mgr.cbs = &nv50_mstm;
 
 	ret = drm_dp_mst_topology_mgr_init(&mstm->mgr, dev, aux, aux_max,
-					   max_payloads, conn_base_id);
+					   max_payloads, outp->dcb->dpconf.link_nr,
+					   outp->dcb->dpconf.link_bw, conn_base_id);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/radeon/radeon_dp_mst.c b/drivers/gpu/drm/radeon/radeon_dp_mst.c
index 59cf1d288465..04a290db54fc 100644
--- a/drivers/gpu/drm/radeon/radeon_dp_mst.c
+++ b/drivers/gpu/drm/radeon/radeon_dp_mst.c
@@ -629,6 +629,7 @@ int
 radeon_dp_mst_init(struct radeon_connector *radeon_connector)
 {
 	struct drm_device *dev = radeon_connector->base.dev;
+	struct radeon_connector_atom_dig *dig_connector = radeon_connector->con_priv;
 
 	if (!radeon_connector->ddc_bus->has_aux)
 		return 0;
@@ -636,6 +637,8 @@ radeon_dp_mst_init(struct radeon_connector *radeon_connector)
 	radeon_connector->mst_mgr.cbs = &mst_cbs;
 	return drm_dp_mst_topology_mgr_init(&radeon_connector->mst_mgr, dev,
 					    &radeon_connector->ddc_bus->aux, 16, 6,
+					    drm_dp_max_lane_count(dig_connector->dpcd),
+					    drm_dp_max_link_rate(dig_connector->dpcd),
 					    radeon_connector->base.base.id);
 }
 
diff --git a/include/drm/drm_dp_mst_helper.h b/include/drm/drm_dp_mst_helper.h
index bd1c39907b92..3cc70b77af12 100644
--- a/include/drm/drm_dp_mst_helper.h
+++ b/include/drm/drm_dp_mst_helper.h
@@ -593,6 +593,14 @@ struct drm_dp_mst_topology_mgr {
 	 * @max_payloads: maximum number of payloads the GPU can generate.
 	 */
 	int max_payloads;
+	/**
+	 * @max_lane_count: maximum number of lanes the GPU can drive.
+	 */
+	int max_lane_count;
+	/**
+	 * @max_link_rate: maximum link rate per lane GPU can output.
+	 */
+	int max_link_rate;
 	/**
 	 * @conn_base_id: DRM connector ID this mgr is connected to. Only used
 	 * to build the MST connector path value.
@@ -765,7 +773,9 @@ struct drm_dp_mst_topology_mgr {
 int drm_dp_mst_topology_mgr_init(struct drm_dp_mst_topology_mgr *mgr,
 				 struct drm_device *dev, struct drm_dp_aux *aux,
 				 int max_dpcd_transaction_bytes,
-				 int max_payloads, int conn_base_id);
+				 int max_payloads,
+				 int max_lane_count, int max_link_rate,
+				 int conn_base_id);
 
 void drm_dp_mst_topology_mgr_destroy(struct drm_dp_mst_topology_mgr *mgr);
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
