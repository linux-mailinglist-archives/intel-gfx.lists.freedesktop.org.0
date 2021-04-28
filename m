Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 230AC36E07B
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 22:44:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 326F26EC33;
	Wed, 28 Apr 2021 20:44:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2075.outbound.protection.outlook.com [40.107.237.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3507C6EC32;
 Wed, 28 Apr 2021 20:44:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fHGxjryBQ0mTpxHoQMmTMN8woS5aau5YO6WJmijwSoMJf1UQvNzA6h7M+E1aR7nllki1BqquYUbdq9mNCBZsAPEosKZ5sWUp2WAg6FDwLQk7rpIEbXlctYlg0hUKWgwbWPGGv6A31L4zpMotEiediae3/KonRaU3LAb0HwMuMrRhbV4x/qixO+TrCGzxfYVAa8JosE51ZLGq/GarrCveIFsYAdZXi+bgsupKqTyp5kQFaw2fOQRC/w9/YnfhZcXXIRgJjmwkALwIJ8yFbIpbAw3jMqOznPk48fapNQ/FMTT9jmygFVFnekO3DT7gIhc2vF3lnwfL79LDiLlLzX/qpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dQwwigbypeDlTBRRMAKcRsH/OGrsbtzHDDfTDTavnzI=;
 b=JnbVSdfir9Of3MMg0pEFL7fsqI/cZBbaxGcKZ40qRo2OvvqifF5w2w2UJu7iePpN5DW8pAmolytZKEm00TYGHlIYaEdwTLbYVoA3CRW3XX5l9fDSltsUwQLFjCZksmatjbWBiWeSkdjsLVWlX3vWBkuOnCm1zb4gaCUrBcTV6aEfj4zZCpUyRw5gnVd4mbw9sjpqhhEiK/kCI7PGZNsMV8ebcff8GXj72FnTzgc83QrnFneIUPnAWbDkCVDsW4MQWQH8rCg+LIF5iHrNVuju2AoKoWXPl49lMSzDAlkm3U1D54BbB8eiMoKqhsiXmRwKHMoXajqt9E9U7deN6Svjxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dQwwigbypeDlTBRRMAKcRsH/OGrsbtzHDDfTDTavnzI=;
 b=2q+bUmDZenA4ATEI1qqcNuy1pmmwwehVpRieBOO2RSylMmjM8/rv7XqlNsj3T3A7AKNi5oUr5kqwCsMGn+1NeYYWftrTOP3CrR5m6P2GCkuTD8FS6GNkYMUxECWBGwCbjoU9LLjnoHyJa1ba5TAvU/ygUDZKG78AtODjWSJLXoM=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from DM5PR12MB4679.namprd12.prod.outlook.com (2603:10b6:4:a2::37) by
 DM5PR1201MB0218.namprd12.prod.outlook.com (2603:10b6:4:4d::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.23; Wed, 28 Apr 2021 20:44:22 +0000
Received: from DM5PR12MB4679.namprd12.prod.outlook.com
 ([fe80::595e:20a2:f658:a7a5]) by DM5PR12MB4679.namprd12.prod.outlook.com
 ([fe80::595e:20a2:f658:a7a5%5]) with mapi id 15.20.4065.026; Wed, 28 Apr 2021
 20:44:22 +0000
From: Nikola Cornij <nikola.cornij@amd.com>
To: amd-gfx@lists.freedesktop.org
Date: Wed, 28 Apr 2021 16:44:06 -0400
Message-Id: <20210428204406.1067318-2-nikola.cornij@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210428204406.1067318-1-nikola.cornij@amd.com>
References: <20210428204406.1067318-1-nikola.cornij@amd.com>
X-Originating-IP: [165.204.55.250]
X-ClientProxiedBy: YTXPR0101CA0019.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00::32) To DM5PR12MB4679.namprd12.prod.outlook.com
 (2603:10b6:4:a2::37)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ubuntu.localdomain (165.204.55.250) by
 YTXPR0101CA0019.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b00::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.25 via Frontend Transport; Wed, 28 Apr 2021 20:44:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 81784f28-19b0-4984-9d20-08d90a866739
X-MS-TrafficTypeDiagnostic: DM5PR1201MB0218:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR1201MB0218C7472D223A571840504AEE409@DM5PR1201MB0218.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:186;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Jwu9dRw6EjgCt8zWusoLttgaNsNKDLydc+nkbUVWovb6TvURLb7izIb1LsTjzB1wTZ19fO77mt/IoqNHE10A0QIBKO8BWT1vTuD+7ZjSFep1MgwflXM1XG1CWOb/R+4IKdbXYbFcXEx19MeqRmu4HTtpIlUhhNpSfI8MQ0ljaTxel1rfHj3GBgvbotU4h14WUzMX/scXPx0iViCb5ylHDv+NgG7J4uVczAdH2vlN3T/Xq8uLxh7H2CZWJuX9/SS0oMLkBo9EwBj2lEpc2I26fnQIIHCyBNCwKJLIsQkeRDubpsq9FmWUB7mQvjivp6oVleQTF4j50+xG7XR7iwF75oWVF/GeWJvgLZcSh+n1xvAlL37kezT95vUCWLVSvPtOHGSYuEF23k7tcMtNU3iVe7kq3ZgRGgNYhYQSde/5+uscJqEBrg/zezNTeSIL/l0FTYxwqxxQkSoU0agGWt/cnmDzP1XgaKaTrNHS2h/GefbsmFFRNolTcHiBR1sPLYBkynfYRnGBgMBEnmgqy66kTtohGd/SvLydLo6OxPb5RwHN4zt/1zjNFfoPaUMJbQwhTrXeQY22VoyesablwVqbfj24wESBgdGdCuB9bwzPbQLOD4c79mLIVxccoU05sH44E1L9H9+IalkRCh9+WygSAV3lqOVZBOPF7H2zruoDm/0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR12MB4679.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(396003)(376002)(346002)(366004)(39850400004)(30864003)(1076003)(2906002)(6916009)(66556008)(44832011)(83380400001)(38350700002)(478600001)(38100700002)(66946007)(316002)(66476007)(2616005)(16526019)(6506007)(4326008)(6666004)(52116002)(36756003)(86362001)(6512007)(956004)(8676002)(8936002)(6486002)(5660300002)(26005)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?jOmme1UoHZ1k7xgOz5p0e3xH4xx15H437DnL2344YI3gU2ITahbDMwDOljoN?=
 =?us-ascii?Q?2XR1n02hT/VY4fdlir72BsvspbZLlUClYtb/OqkaTk53a1FSkvKAMs9GuxGx?=
 =?us-ascii?Q?F90a2fS3PuONsCPRI9oQ9vFx4hL9zQvpoEq6+wFhB/atTriFqYbjpkC7Oc0f?=
 =?us-ascii?Q?4SEQi7OA6MmJwH7aOgXzcdVbgq1zc/xW8NcxaUxf1r7AQ0vPRIotPPAYYL6X?=
 =?us-ascii?Q?VLM/zdKAtv6qblUkNhsAWd9TavZhzmYRUBWhFakwUrQ/MXzG9XeVaNxJGB5U?=
 =?us-ascii?Q?tvGEm6HeccndvmKSFod74Es/yDvHJfS2aK6kMOE4bL7HFFEi1izzf+bV6bSh?=
 =?us-ascii?Q?NzDBkwb/+xSXVBaCBnZn8ODi/zjoDJDzPfW+gasc+W0cGbx2qsR7OqjulhBn?=
 =?us-ascii?Q?MaDPd/lJiDcpzy2ec/UrJh9gDT3xR+LcX8VotWnUYbrKRgdPRbBpzgLnWQ6f?=
 =?us-ascii?Q?9YNb2DSdhkhc+dvM+n5TUFK8L4Qw3RO0o9Rb20x/FfIYkD1eRqBGPiI4z0l5?=
 =?us-ascii?Q?8k7xR7DEouS6HrNbk1SV2OEJdWrTQ0nzrEuHxT9B83Iznd6U33mI4QI29sct?=
 =?us-ascii?Q?jFbG9QnBUgEllqSUucqN2VtqBFE/+fT5/p4+2ch07A5D7mcLBcFKfvCEqm/3?=
 =?us-ascii?Q?VZ08axQRyNuWiUrZlFHzcGWRYJhiEiXwgK4wJaKUCPBxXS4AdhJ56RbFD8qt?=
 =?us-ascii?Q?A39gWnhqVbha3uR106UzPUYqQxOdNF2Eheopn2j0psc66s8Vf/JMAawBPjk8?=
 =?us-ascii?Q?QvOKUDaYQCiOLpXkqWGB6uDfWQ8WI0qbOe8cMp/NqBsNBOvhEkigzEQFBo7Q?=
 =?us-ascii?Q?vgQgVRtxyKPIO54KAihww36FsOMtmE62BDGMUuFHewMx6ivi2hOLrNSSL27z?=
 =?us-ascii?Q?qY4L9JLX+JR8Uh/USIEMyIBYznjBMQfv5GnABSI4qA+U8AAI7u+lV4i6QYzU?=
 =?us-ascii?Q?lObhkTpW3Qq6FtKgZb7wg8jVFQDcqAxXiBOlme1MR382ClEx+Aip5YbmFDDw?=
 =?us-ascii?Q?Hxp90SBLzRMuUbgem0lDG8LV5J5MDP+cjHBXEJgBi+FCQdPyNeXuP6OXH8UD?=
 =?us-ascii?Q?Bmykg7QPEm7ey0hE82zzxSvxi/p3760EItnp+PZfHLJ+//D0NrzgIhsccIsT?=
 =?us-ascii?Q?G1D+ffUfhecG5JKAPt7N0hE7TL9LvO0vSVaXg1R8URSnLIRBSjOOcBZy4RIA?=
 =?us-ascii?Q?9WNOd86RpHKmS97JHSlkWacz1qo4xJ27eyCuCCSRIDYqW3HZx/G1BzT0MgW/?=
 =?us-ascii?Q?sbvqTmCU7ZyEA13vpkZpBtHu3AA5h9G2sRZAvJuxHq20tZJtLh7lOKWjnJ1z?=
 =?us-ascii?Q?I1RHDLjvnV3Drl+L3Q5gdzl9?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81784f28-19b0-4984-9d20-08d90a866739
X-MS-Exchange-CrossTenant-AuthSource: DM5PR12MB4679.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2021 20:44:22.4749 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1hkhWQqR3MpxscZ/edyqQ2Lq4esPqdYIwUkCgEa6zWOktAJ8SLi1OSSaTXNEpHC4rAcaW/Cw9/cSr7ja5d+ikw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1201MB0218
Subject: [Intel-gfx] [PATCH v6 1/1] drm/drm_mst: Use Extended Base Receiver
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
 .../gpu/drm/amd/display/dc/core/dc_link_dp.c  | 18 +++++++++++
 drivers/gpu/drm/amd/display/dc/dc_link.h      |  2 ++
 drivers/gpu/drm/drm_dp_mst_topology.c         | 32 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  6 +++-
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |  3 +-
 drivers/gpu/drm/radeon/radeon_dp_mst.c        |  8 +++++
 include/drm/drm_dp_mst_helper.h               | 12 ++++++-
 8 files changed, 71 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
index 997567f6f0ba..b7e01b6fb328 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
@@ -429,6 +429,8 @@ void amdgpu_dm_initialize_dp_connector(struct amdgpu_display_manager *dm,
 				       struct amdgpu_dm_connector *aconnector,
 				       int link_index)
 {
+	struct dc_link_settings max_link_enc_cap = {0};
+
 	aconnector->dm_dp_aux.aux.name =
 		kasprintf(GFP_KERNEL, "AMDGPU DM aux hw bus %d",
 			  link_index);
@@ -443,6 +445,7 @@ void amdgpu_dm_initialize_dp_connector(struct amdgpu_display_manager *dm,
 	if (aconnector->base.connector_type == DRM_MODE_CONNECTOR_eDP)
 		return;
 
+	dc_link_dp_get_max_link_enc_cap(aconnector->dc_link, &max_link_enc_cap);
 	aconnector->mst_mgr.cbs = &dm_mst_cbs;
 	drm_dp_mst_topology_mgr_init(
 		&aconnector->mst_mgr,
@@ -450,6 +453,8 @@ void amdgpu_dm_initialize_dp_connector(struct amdgpu_display_manager *dm,
 		&aconnector->dm_dp_aux.aux,
 		16,
 		4,
+		max_link_enc_cap.lane_count,
+		max_link_enc_cap.link_rate,
 		aconnector->connector_id);
 
 	drm_connector_attach_dp_subconnector_property(&aconnector->base);
diff --git a/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c b/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c
index 7d2e433c2275..6fe66b7ee53e 100644
--- a/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c
+++ b/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c
@@ -1894,6 +1894,24 @@ bool dc_link_dp_sync_lt_end(struct dc_link *link, bool link_down)
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
index b0013e674864..cb6d0543d839 100644
--- a/drivers/gpu/drm/amd/display/dc/dc_link.h
+++ b/drivers/gpu/drm/amd/display/dc/dc_link.h
@@ -346,6 +346,8 @@ bool dc_link_dp_set_test_pattern(
 	const unsigned char *p_custom_pattern,
 	unsigned int cust_pattern_size);
 
+bool dc_link_dp_get_max_link_enc_cap(const struct dc_link *link, struct dc_link_settings *max_link_enc_cap);
+
 void dc_link_enable_hpd_filter(struct dc_link *link, bool enable);
 
 bool dc_link_is_dp_sink_present(struct dc_link *link);
diff --git a/drivers/gpu/drm/drm_dp_mst_topology.c b/drivers/gpu/drm/drm_dp_mst_topology.c
index 5539a91b4031..b7869a1135bf 100644
--- a/drivers/gpu/drm/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/drm_dp_mst_topology.c
@@ -3708,19 +3708,23 @@ int drm_dp_mst_topology_mgr_set_mst(struct drm_dp_mst_topology_mgr *mgr, bool ms
 	/* set the device into MST mode */
 	if (mst_state) {
 		struct drm_dp_payload reset_pay;
+		int lane_count;
+		int link_rate;
 
 		WARN_ON(mgr->mst_primary);
 
 		/* get dpcd info */
-		ret = drm_dp_dpcd_read(mgr->aux, DP_DPCD_REV, mgr->dpcd, DP_RECEIVER_CAP_SIZE);
-		if (ret != DP_RECEIVER_CAP_SIZE) {
-			drm_dbg_kms(mgr->dev, "failed to read DPCD\n");
+		ret = drm_dp_read_dpcd_caps(mgr->aux, mgr->dpcd);
+		if (ret < 0) {
+			drm_dbg_kms(mgr->dev, "%s: failed to read DPCD, ret %d\n",
+				    mgr->aux->name, ret);
 			goto out_unlock;
 		}
 
+		lane_count = min_t(int, mgr->dpcd[2] & DP_MAX_LANE_COUNT_MASK, mgr->max_lane_count);
+		link_rate = min_t(int, mgr->dpcd[1], mgr->max_link_rate);
 		mgr->pbn_div = drm_dp_get_vc_payload_bw(mgr,
-							drm_dp_bw_code_to_link_rate(mgr->dpcd[1]),
-							mgr->dpcd[2] & DP_MAX_LANE_COUNT_MASK);
+					drm_dp_bw_code_to_link_rate(link_rate), lane_count);
 		if (mgr->pbn_div == 0) {
 			ret = -EINVAL;
 			goto out_unlock;
@@ -5448,14 +5452,17 @@ EXPORT_SYMBOL(drm_atomic_get_mst_topology_state);
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
 
@@ -5490,6 +5497,8 @@ int drm_dp_mst_topology_mgr_init(struct drm_dp_mst_topology_mgr *mgr,
 	mgr->aux = aux;
 	mgr->max_dpcd_transaction_bytes = max_dpcd_transaction_bytes;
 	mgr->max_payloads = max_payloads;
+	mgr->max_lane_count = max_lane_count;
+	mgr->max_link_rate = max_link_rate;
 	mgr->conn_base_id = conn_base_id;
 	if (max_payloads + 1 > sizeof(mgr->payload_mask) * 8 ||
 	    max_payloads + 1 > sizeof(mgr->vcpi_mask) * 8)
@@ -5896,14 +5905,13 @@ struct drm_dp_aux *drm_dp_mst_dsc_aux_for_port(struct drm_dp_mst_port *port)
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
index 860381d68d9d..a4245eb48ef4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -942,6 +942,7 @@ intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)
 	struct intel_dp *intel_dp = &dig_port->dp;
 	enum port port = dig_port->base.port;
 	int ret;
+	int bios_max_link_rate;
 
 	if (!HAS_DP_MST(i915) || intel_dp_is_edp(intel_dp))
 		return 0;
@@ -956,8 +957,11 @@ intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)
 
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
index 1c9c0cdf85db..e02f9d2d74eb 100644
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
index 20dc705642bd..b5b0bf37813b 100644
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
