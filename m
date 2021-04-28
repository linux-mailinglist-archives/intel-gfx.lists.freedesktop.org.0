Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1926136DCFE
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 18:26:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ADF989ABA;
	Wed, 28 Apr 2021 16:26:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2060.outbound.protection.outlook.com [40.107.94.60])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2CE889ABA;
 Wed, 28 Apr 2021 16:26:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pa8MvoOMrlFAQExZuJpkqt5IOynE0uXD80aN73ZmcWWrafI6egSCK6/TZ59i02xdxE2LdFRrpEs2eNekvL00KWx0XdcY9IF2Kh+RRlyhsByUDYOxuNZBpA8lJrDHzz0qT6yKChcrCtg9kNIEL1TgTUPjXR721rE4PQmmQknhgXZkXLTLL3soN11kkn7BbqVZbzgRAVfIr8Vn+Z3zAIgy4DNmUfIcGXa/EtTpqYJeKl8HjJMkVAuzGVkGwk8w5+s1LkT9g13l1qhhSlA6346zaDCYrIu/l63kvIPLt5xTIdnxQkmGQnAKVTV/b9EcqSOYpzLSqAosDZ1btbICeK3i4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7CuzHktOKTlHoTCyZL9UWmVn7KXGhlqFGv1ZlbPdiqI=;
 b=VkcvFX3b9E+RvYs792tDPlgnHLs41Z+XFPl0IVKcTJrRjeGzTC+plZ0QnYAFm1al0J3/UghR6JAVDqRdmTlEaNTG4vP0KKS0Ggh8y8shXvaCjxxKx9ynjY9Lvo/oBtd8LJNpVAb6OMB+3sICvlzM4ZgsWiL8+C3y1asmaKtOjP1Es39TI4XGO45YAjljO0jWwbh9NVl3OwwF4A5rORyniToamx+goWs1893j4RQCxNAvAzWrMA+B9ybDJZJt1CKKwBzyUT+Hfy8COt6CtQXftOdkDVsIXyFcIwLI3eYGqFmkpBjKsdDScoZmAOhqWSi/OOBl+Yjd4+r1WBOIQYHZTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7CuzHktOKTlHoTCyZL9UWmVn7KXGhlqFGv1ZlbPdiqI=;
 b=Oc2V7qfMoM9+GdSy/WbPGbX1z0N/v2Z18nBDp3JnT4nJYnuUgRnsvjQ/GnKr/aaVZrJorN0SERT4vfy86k+omvcC2ZD1yiHP1Yb/sk4I0W23S28/6s30QA0ufZF94/WwwG/wujD8gfBeSQW3IWqvtK3fw3sOOCPH5vngPga6wdc=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from DM5PR12MB4679.namprd12.prod.outlook.com (2603:10b6:4:a2::37) by
 DM5PR12MB1451.namprd12.prod.outlook.com (2603:10b6:4:d::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.21; Wed, 28 Apr 2021 16:26:17 +0000
Received: from DM5PR12MB4679.namprd12.prod.outlook.com
 ([fe80::595e:20a2:f658:a7a5]) by DM5PR12MB4679.namprd12.prod.outlook.com
 ([fe80::595e:20a2:f658:a7a5%5]) with mapi id 15.20.4065.026; Wed, 28 Apr 2021
 16:26:17 +0000
From: Nikola Cornij <nikola.cornij@amd.com>
To: amd-gfx@lists.freedesktop.org
Date: Wed, 28 Apr 2021 12:25:45 -0400
Message-Id: <20210428162545.530854-2-nikola.cornij@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210428162545.530854-1-nikola.cornij@amd.com>
References: <20210428162545.530854-1-nikola.cornij@amd.com>
X-Originating-IP: [165.204.55.250]
X-ClientProxiedBy: YT1PR01CA0063.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2e::32) To DM5PR12MB4679.namprd12.prod.outlook.com
 (2603:10b6:4:a2::37)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ubuntu.localdomain (165.204.55.250) by
 YT1PR01CA0063.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2e::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.25 via Frontend Transport; Wed, 28 Apr 2021 16:26:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fa664aa3-05ff-49f9-6163-08d90a62598a
X-MS-TrafficTypeDiagnostic: DM5PR12MB1451:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR12MB1451D20B730D5F26D723BE11EE409@DM5PR12MB1451.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:186;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XjK8IDA7nUJc4pJqznoGdK5PkUkjh0d0ZHPj0bbrfXa5UjjNcEwFYrJvqpXfi3deVvyZu5WGGNLXyZTt+Ism9HyaGbeX/7cMXfmxRsh9OojK/bs8eu686cSBNC9E36BTbDrN6LSovloM8Dm7TktXmkx8aG3pxXfNvf+5y6aR4gq6gjIgOjhQ/SwrdtGVsg0OR367RwdZqR70l4RN8Vl6sdcnjOE9D3fCOawwNQsQrNpcn0PdWHBp3Rd0MtC9uqyNJs1YwnXBJrskeAc92hZOxFJW2+SaCmUh/Wi09qNWAsJDqUdgQNdA8kl+iA6V59HKvzpL4o0wPrH5fLMnTmszvkZZqnIMFaJiGQDpAUk4kELvW2gUY01UoO4yLYFLG22ltQcCc5g90XgGBJBQtRSCQuz4uFbKojtbsqSpw7zA4Wr+jD2NOuNFF6RkuG/JJ/OXkbOpqkDRUAzkhUxWnDc2ZdXNQgpcqoZNqQsyrfrsi1FcvMT6TDsqnvGzVj9ltf6tc0HyT4eom91yZsQZPeFyx7BBubSB8bUqsWX6HIYFS5+jPJcikos9F6lSAU4H7e4CiXFi2chS0ChBMk+marrgzgpodE5NnpiJ9MHVkhcoXjrbd9SGpfGiYerGyiiUcBT7dVRsFiPYslGmhdu84Kqn+6M8Bcy+tfoUl/Gy8U6zhok=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR12MB4679.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(396003)(366004)(39860400002)(346002)(136003)(8936002)(86362001)(66946007)(44832011)(36756003)(6486002)(1076003)(956004)(83380400001)(186003)(26005)(4326008)(2906002)(6666004)(52116002)(316002)(16526019)(6506007)(478600001)(8676002)(6512007)(30864003)(5660300002)(66476007)(38100700002)(6916009)(66556008)(38350700002)(2616005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?BGtZW2y7NAMxV3T37/fYmjAoP2PRy5+Tx/GPvlQT63o+4c0gsXt4OBBXrEn1?=
 =?us-ascii?Q?kg6ZFXtpLmgQK7YgYtCS5XBokmdriCauLFv0t8kWEAxGvuFyR2wVnsZFZHJV?=
 =?us-ascii?Q?r6FXGpYNKeqQVPktBE/cd72TKO0h12k8e73N9YuqKXuejQes2tZI2zB9zcgk?=
 =?us-ascii?Q?+kN6Q2x+UG2MfRtyASfuBUSklkHfHV8nzgIaJJaVWvNuX7Fyun4FVncGahBR?=
 =?us-ascii?Q?smFBsbtU2/XKuFwefRnMNZ9cfjr2zbpW9upbYOWboS3GoESxoobNTs4uTdXB?=
 =?us-ascii?Q?tU4SBdqC5jyqdoT1GtidEiC24AswmBrQESADv4i4I7D34OaSOOr0i7o2n8Zo?=
 =?us-ascii?Q?c0I8xeT7oX8Eb/mJUek7cAXbriTwi2dmbgiSMa5BEEw0URzS/1eORni15cBp?=
 =?us-ascii?Q?MTdHq4InPpbFAwKQpAmFh/xUrknf5GvBPlVtDghHKCT7m/GbqaAkkc6lNSA6?=
 =?us-ascii?Q?EIF/jO4YoZ8aMbT4Y8CQFzU3o28tOsmOiSJKqAKK9WloRnfhzXVLMjUkA3k0?=
 =?us-ascii?Q?u1dbvBqXfZFuK5nHj/FmFOtkuy8lg+uAdAoOUdtVydGEMyzDwz1OBUv7pvu5?=
 =?us-ascii?Q?vkX5kfR+uBTXPHySxzRcoKoeLxfAnlmmJ7O58yu6BvMuiPXk/SbRq1/PXa2J?=
 =?us-ascii?Q?a2DmSM7N0V51nfVO2/pl8audIEpviY00poYDWZ7SSw75Un3cOHKE+1sDu4gK?=
 =?us-ascii?Q?509tRhZQmDn3bHIIDESgoOGT+mc+RHuEXZpywBR6JcoSJy//b3Bjr5MxQ1uk?=
 =?us-ascii?Q?ZdENSvXm1Qt+1v0TkyrbLSKVx58pdzlteW3kn4jRJmqRH6S+s2+5jMvpz0dr?=
 =?us-ascii?Q?5+kgpyj0d6Fm3tcxGVoHS2ldsazcOS5Few9e8GVtYRLTaA2BSRrdij9QT27P?=
 =?us-ascii?Q?ROlaO8Njla5Yb+xYCyibsa0Ysqi4Kwm8qd6vQxYmK/ecF2SIbQfE8E1DpY+9?=
 =?us-ascii?Q?jJfK5Wo4Ie2bKurBDTo1maieN3/gqvqYgu9ZaIXOs+4QNavKRCir+KGamC4g?=
 =?us-ascii?Q?pOkOl0kM9AUoSz+KgRcLvxtTgYc749WP4r/in+RSxH5v4tDYxqWs527NjJWM?=
 =?us-ascii?Q?9UzjhwwBDS1yb1PyJ+1ncsq+/gYO/SR2EJ4VL+syljSCU2vBxIeRZSewDiQr?=
 =?us-ascii?Q?2yqEI0Si2kAShovlK+NM7kJvkgP1b+PLk3+rUnfqNhrifAOpAefSXCS9xbiQ?=
 =?us-ascii?Q?zgMoKmOzWtd3fRjQ7JpNOt6urj7D3OuACljawF6ruVLwjb3uAQq9fBqIk1i/?=
 =?us-ascii?Q?809w9DZXDwI1PrBNRoZCH1kO/1Gb59JWjfuN0vhSpB/A7kP2NUtM1mT/uMxK?=
 =?us-ascii?Q?Yr4yUaKNA8Kbim1Q2V9E3T4B?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa664aa3-05ff-49f9-6163-08d90a62598a
X-MS-Exchange-CrossTenant-AuthSource: DM5PR12MB4679.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2021 16:26:17.6558 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1v8NE2tqs38sScqMZ1fqq6X8i93QDBTB6+blQ6SQ3bliV0tdf6PXOgBldN5mO38xu8n7IF2c09eNr/WPJ+JoPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1451
Subject: [Intel-gfx] [PATCH v5 1/1] drm/drm_mst: Use Extended Base Receiver
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
index de5124ce42cb..0c02476084a2 100644
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
+		lane_count = min_t(int, mgr->dpcd[2] & DP_MAX_LANE_COUNT_MASK, mgr->max_lane_count);
+		link_rate = min_t(int, mgr->dpcd[1], mgr->max_link_rate);
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
