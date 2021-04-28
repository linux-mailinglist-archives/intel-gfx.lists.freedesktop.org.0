Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E3936D0BC
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 05:05:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2611F6E05C;
	Wed, 28 Apr 2021 03:05:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2055.outbound.protection.outlook.com [40.107.236.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 970446E05C;
 Wed, 28 Apr 2021 03:05:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c2WL+sHblEA8AfvnJFrTbnu5hcCFhYEbQO/xQzECwe0nv2KbrbtNf62QGdYNC9cJT3N3GLwVij5bPdoiQjGg9hX2nHaPxhIGKoHhiAL7/3JVPkRhsyORxek3Z/xmEK38FQfZ32CjhBhplWeFJXlSFySbbFD5RwrSWOPv5g9GE+jgiOtBEKuFgv9XjJTzHtXRJoWvxEFtWfnj5OJxN70WoMxykz4OYVe2KaOtIoM3RRvC6Sxv5f6oWYi2G8SPN0ARHLMnQ0W4AJ3XfI1qKHXRHBrruOH3OzBZUcS/f3SRSzh87Lx3hfznbodJ2XMfmCGadIGH/92aGiPwTDZhSQVBRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rmuRO92bJM9ugVCX6QTePkelokxZW4wKHKmKg5/9m68=;
 b=BYgb6sST64ibrn6UO2gE5mGgXHT+OhCp+K368V+nwa93oa1e+itiPZeMje55gM6R5JbSdsy8LgAx151YgT9icsYvE20PUXmwhrF9tETMDWDHawC9YDj5ge9rP+J68XHb8GSKzX05Iqiw7DI9dvBcnFHq21lQsyUSkrklqmjne9QaqpnL+l1QYMUfndh1T7KeDgLerdOFjgIC0RPvFHSuqfyOI1zXzLpqTRjFZab2V7WuDu38Wj94irOpFOfo7+h0Exx22pn+g4PeZyM/t8RkcyqzQOXI3A589Wzah454M9iDVg6jHd3Bz1VNrxAGDGd3rPnajqD8IsAulrm69kfztQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rmuRO92bJM9ugVCX6QTePkelokxZW4wKHKmKg5/9m68=;
 b=4LkRHPj3ghinMnGjNTwpomDUJhV+Ty/9MEzdasQQX7aaGcpBL/2gaA+hUa2Pxh7ZtYunXOeJ669K0MfIV6bN4ncfhqkx8SIKBDdGgBNXD4jgc80b+t2NCH0qcVM/IkkkIbHUpop5smijG6h5oQ1uDcbFrDpfk6fV4WkDceeqcY8=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from DM5PR12MB4679.namprd12.prod.outlook.com (2603:10b6:4:a2::37) by
 DM5PR1201MB0123.namprd12.prod.outlook.com (2603:10b6:4:50::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.24; Wed, 28 Apr 2021 03:05:43 +0000
Received: from DM5PR12MB4679.namprd12.prod.outlook.com
 ([fe80::595e:20a2:f658:a7a5]) by DM5PR12MB4679.namprd12.prod.outlook.com
 ([fe80::595e:20a2:f658:a7a5%5]) with mapi id 15.20.4065.026; Wed, 28 Apr 2021
 03:05:42 +0000
From: Nikola Cornij <nikola.cornij@amd.com>
To: amd-gfx@lists.freedesktop.org
Date: Tue, 27 Apr 2021 23:05:26 -0400
Message-Id: <20210428030526.44503-1-nikola.cornij@amd.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [165.204.55.250]
X-ClientProxiedBy: YT1PR01CA0069.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2d::8) To DM5PR12MB4679.namprd12.prod.outlook.com
 (2603:10b6:4:a2::37)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ubuntu.localdomain (165.204.55.250) by
 YT1PR01CA0069.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2d::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.24 via Frontend Transport; Wed, 28 Apr 2021 03:05:42 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2b9b57e2-1c1b-4fcd-170c-08d909f28266
X-MS-TrafficTypeDiagnostic: DM5PR1201MB0123:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR1201MB01235C3FC37D25E8CE1821E9EE409@DM5PR1201MB0123.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:186;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +fsvkaVh7v9DdvPLAyb41KrPgmyJa+7s91QJ97HBwbcHMxS5/EYr65SliORqaYofF/fWpjnAVGXECgq7jYtuVy/azo+Es7UN0DFVIJpEhAioS7ZxPjb5QaDsUV29AJ1Q8NVWdSeIoLhg/VLTOXulugX78UPV1Dm89L0DKoHctMxnCRZVNN5bo9o40JoZYr82AZVkhX+1Z3sSEtCz/cioF9U7NTzXUF60TVriiRA4tauVjqpUJznsWLhMytIMQSI0tXvFUbxKkoVJQt7mkOpjs1YhJ6jhqdTldjTm/TtIDizQvgXQHr8JH4gldV1y6ws/90G0wcuDtn8xclXPZUAwDny7/iYp/EEZKvATw76ufmkUQCproMlHS6CpvP+CoDEqRR9gn4XU1N+13xPaadRI19M8nyUbm+4lTGfcsK5gwwvg/CWdB8GrNdNCV5CJCN3jku9bBLLpdAGMgidiwocmXW/BobtndaawLaLGJDpmHOpYVsVFy2LGoiSAptfrVW4CP2lWZWed64PrNQD6hL4c10imILpZkpk8UaN9Yy/35JhN4wP2lmw4qyxHOniT4u5TBnuj64PE9UjF1PQUZCn42x63nu/22N3uDt/eNRdrwndQoYV0MK9zK8yD3deS0QkW764GNIrHlKInrE+pAUmV/sB38LLMDZxtbLtZkzuNgzg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR12MB4679.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(396003)(366004)(136003)(376002)(1076003)(478600001)(86362001)(6666004)(186003)(2906002)(316002)(44832011)(66946007)(52116002)(8676002)(6506007)(30864003)(66476007)(5660300002)(36756003)(6512007)(83380400001)(8936002)(66556008)(6916009)(38350700002)(38100700002)(4326008)(6486002)(16526019)(956004)(2616005)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?+gwwS/h6vEflO2GCsFlqg0UE/zrLsdDZgidP5NDzPCHlWQDZyp+mecJhL3XI?=
 =?us-ascii?Q?ODj3bkyDhbud200g3jlvNGK8y2kI/T2BWu7UZNCSgbAfxAtyZ7Pz5aCnRu+G?=
 =?us-ascii?Q?9+5Z571kEPBjr2n0ohfMixD2Dzq4C0bx0AGKXcDu/W59i6Jd6BbWQ6WJS7JJ?=
 =?us-ascii?Q?WnV3Bj7h09dd6TdRxEgSLO/1yebwp0ANe5zAX7JDYBQvjpnNnwIXCX8uDRcs?=
 =?us-ascii?Q?Re6jX/EFrNJxkKjZHA8PpXHInqWUhNzN/O61tVYLTQkXXL7IQHnabyRj22rg?=
 =?us-ascii?Q?yP2tz55Bt+yyNWCg1CX1GI0O8WLvi2sV52IT3VA9YEdU6+lBygk7mhXmNzuy?=
 =?us-ascii?Q?OSWHwk91mYng3jcdK3W0zA+sLHxu4516d4qZZyeL5cjiQgi19GNN1ZsbgbUM?=
 =?us-ascii?Q?WpGJ0bnnrfKBW5vQ0ppnzaRJZzn7jR59P41kaLxz/p/9Udr1tHi0mybVeQuC?=
 =?us-ascii?Q?d6+WoaMGttyd4X+r42I+jv/n+eAOZu6wb4WUZ+o/UZNndLD6cO8jA43GiDwk?=
 =?us-ascii?Q?MKYs0e6f/eqcVdGRnTedLEejsA6LHxrDepY0MCihCNpbAnGnvOvI7YTflY5c?=
 =?us-ascii?Q?9e8OciAhnxihzMEatY+S253ohRGG9HGZc7uqwurY6+qugZKAvC306674ArVs?=
 =?us-ascii?Q?NKmS+NSkNgoSVNrCs1JLlk8E5iUrtkd+PaegCwcD9VwMv0OJwniPs5gA1N6A?=
 =?us-ascii?Q?EvntQNjkOHfkW1IDfHTJ2AmGymAKEJnkyDJgWfnS491zCC2Vfg19mSOG3R4U?=
 =?us-ascii?Q?iPsaAkCaox3NaWjFJt0rtBRX2W9L4XScB5jvgG8XDytrOwps7ObSmntTXnba?=
 =?us-ascii?Q?dm/ldgv27pVgwErrUc3pbIIp2n7r0EUXhiXJzqm3Okdtz2H4CrDQ55d0kSqt?=
 =?us-ascii?Q?TVRPXfThYZIuK98qJWfWguNmzTEBb1sQnFm7OpthqGUnvRIS7i3OcrJk3Mus?=
 =?us-ascii?Q?0GP5vuUZezY2lFyBvEmeA50pm/5uuh89Xy3yMqtD2/KXu2GypWIqoXfocGZI?=
 =?us-ascii?Q?TSuWxgr8gPIuLqV3n8t3LOfbarBY0h1fEA7puYD2+e237zE+sMJX+t5RQedi?=
 =?us-ascii?Q?ArdP4zWpFJYo+p9KbLIkNxlOCBplYjyOXZrEIGAmBhYIpMCcTUGcjwMHKD3S?=
 =?us-ascii?Q?APP5yj0vuePT4miqXGZgQyjrFgvPE3LRnNy7P0zJnpCROIrnZ26rnNjE+hi9?=
 =?us-ascii?Q?wZIY+rReKBZybkKOTG/M8n2/KV907UefvmS37yHVUjrSTZgDyvWWAU+25O6C?=
 =?us-ascii?Q?yP1yVoslOdYUxg6mrXIygLOANGJltvn07Hp/S/A4H3pzue8/4k8sDv0M7RYJ?=
 =?us-ascii?Q?KlIumsjyJ8hQA4I9c2Yb2qTO?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b9b57e2-1c1b-4fcd-170c-08d909f28266
X-MS-Exchange-CrossTenant-AuthSource: DM5PR12MB4679.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2021 03:05:42.5829 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3froEmjCyvcPmDBwtwTvaOAncSazkxrVN9v52DZN78iQr/2y0l7vbsYKxcYmYn8F38AcCay3li3cGiHWIGpXEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1201MB0123
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
have a lower value. Also, Synaptics quirk wouldn't work out well when
Extended DPCD was not read, resulting in no DSC for such hubs.

[how]
Modify MST topology manager to use the values from Extended DPCD where
applicable.

To prevent regression on the sources that have a lower maximum link rate
capability than MAX_LINK_RATE from Extended DPCD, have the drivers
supply maximum lane count and rate at initialization time.

This also reverts 'commit 2dcab875e763 ("Revert "drm/dp_mst: Retrieve
extended DPCD caps for topology manager"")', brining the change back to
the original 'commit ad44c03208e4 ("drm/dp_mst: Retrieve extended DPCD
caps for topology manager")'.

Signed-off-by: Nikola Cornij <nikola.cornij@amd.com>
---
 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |  5 +++
 .../gpu/drm/amd/display/dc/core/dc_link_dp.c  | 18 ++++++++++
 drivers/gpu/drm/amd/display/dc/dc_link.h      |  2 ++
 drivers/gpu/drm/drm_dp_mst_topology.c         | 33 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  6 +++-
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |  3 +-
 drivers/gpu/drm/radeon/radeon_dp_mst.c        |  8 +++++
 include/drm/drm_dp_mst_helper.h               | 12 ++++++-
 8 files changed, 72 insertions(+), 15 deletions(-)

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
index 59cf1d288465..cf3be8b14676 100644
--- a/drivers/gpu/drm/radeon/radeon_dp_mst.c
+++ b/drivers/gpu/drm/radeon/radeon_dp_mst.c
@@ -629,13 +629,21 @@ int
 radeon_dp_mst_init(struct radeon_connector *radeon_connector)
 {
 	struct drm_device *dev = radeon_connector->base.dev;
+	struct radeon_connector_atom_dig *dig_connector = radeon_connector->con_priv;
+	int max_link_rate;
 
 	if (!radeon_connector->ddc_bus->has_aux)
 		return 0;
 
+	if (radeon_connector_is_dp12_capable(&radeon_connector->base))
+		max_link_rate = 0x14;
+	else
+		max_link_rate = 0x0a;
+
 	radeon_connector->mst_mgr.cbs = &mst_cbs;
 	return drm_dp_mst_topology_mgr_init(&radeon_connector->mst_mgr, dev,
 					    &radeon_connector->ddc_bus->aux, 16, 6,
+					    4, max_link_rate,
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
