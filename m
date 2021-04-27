Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE0636CDE4
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 23:34:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E237F6E9D2;
	Tue, 27 Apr 2021 21:34:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2085.outbound.protection.outlook.com [40.107.237.85])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ACAE6E9D0;
 Tue, 27 Apr 2021 21:34:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KE7hZdU+TAc9i9hPL6pgakAqvLB3dvCNkxuBOH+4c4uOlA5c6jK0Fij6sg8GtIHwSH2ygICjEV/10f97Kj2ER3sLR2D8rhUKdExwm6pNnI+qFSVJseORs2MZhZ7r8XDBsaEb8U3F6oVeIBPXxXLx+6cR0HwvQBQEU9AN8AZwONuIcErdOCM1qgMzFh9bbaDVtX5XE9AQ2UoZQJhg6vSj33OSgMReh/qmY4DwWfBgXZSZlDpv/4GfGITUZE+2u2RRyeZMfF86yxiyxv9MYYABFx7N6/oKEoHhazLaDmJBxg8dHloHHtCDP+YFeuekTRkReT/XDnBCVhk8jxZ4xxYN7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RyIcuydxSy5LrGRYivwMJ830QCTyNU6XO2bLRXAX8iw=;
 b=koe4GXXstxDDRqlJ221Yej6MJBaK72ojC4qRd4VbJFulZa0gxxI2m34fZy2rHJeWSuDgh4lwwE9G+B3i+zFo76n4X/ooddtPuKDKrxBto3X2jaDgrJt54LDUKAFeZoJddgbf7Adkqe3YSuR2+9aNZr5g3XFqG8xI3cL6OsmSET98iw7mB6qyqlOAxPsh0UGgliuFP3Ld0djAzQkvZSzQbLyXzvG5d9H2H5Yi8Yzt2SzP/J8IwSlMXRBj4iR/OTMeqsv1NoG8ZL6gZRAMWCos9NOk5OkSTKzkWTlku7YpHay9S+9+D2Hrs4rTa/lnDnCDm2FF/b67JuGMbPAHukB9cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RyIcuydxSy5LrGRYivwMJ830QCTyNU6XO2bLRXAX8iw=;
 b=GDGRYBxBFHsnoCQewtWuUO039kjd8AEIjpvnd5j+AO8tPbyXkoHxNtE0/pYmLN8zgcRm8aY5vpXayF1/wot1uryF9RfRtLb4utQZlvVNGkMMV66Qe9ibBOo1jl82eo4O2KaiOjDic5umyRwLjBSV7C/ijAW1pX/Mi3H3+Klwz58=
Received: from DM5PR12MB4679.namprd12.prod.outlook.com (2603:10b6:4:a2::37) by
 DM6PR12MB2987.namprd12.prod.outlook.com (2603:10b6:5:3b::25) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.25; Tue, 27 Apr 2021 21:34:16 +0000
Received: from DM5PR12MB4679.namprd12.prod.outlook.com
 ([fe80::595e:20a2:f658:a7a5]) by DM5PR12MB4679.namprd12.prod.outlook.com
 ([fe80::595e:20a2:f658:a7a5%5]) with mapi id 15.20.4065.026; Tue, 27 Apr 2021
 21:34:16 +0000
From: "Cornij, Nikola" <Nikola.Cornij@amd.com>
To: "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/drm_mst: Use Extended Base Receiver Capability DPCD
 space
Thread-Index: AQHXO6xeWHaBtDAjsUSuu/jbj7ruWarI4XqQ
Date: Tue, 27 Apr 2021 21:34:16 +0000
Message-ID: <DM5PR12MB467900C07F35D12533241DBBEE419@DM5PR12MB4679.namprd12.prod.outlook.com>
References: <20210427212850.35267-1-nikola.cornij@amd.com>
In-Reply-To: <20210427212850.35267-1-nikola.cornij@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_ActionId=bb425556-943d-4b14-a80e-53523fda7c2b;
 MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_ContentBits=0;
 MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_Enabled=true;
 MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_Method=Standard;
 MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_Name=Internal
 Use Only - Unrestricted;
 MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_SetDate=2021-04-27T21:29:32Z;
 MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
x-originating-ip: [165.204.55.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ceab61e0-fd8f-4e58-93ab-08d909c43593
x-ms-traffictypediagnostic: DM6PR12MB2987:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR12MB2987F5B2E6A546630B1A6EDBEE419@DM6PR12MB2987.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DySh+GsK886pyWuVvrmBlIR7RN5eQqN3PCGNDoest6KmF3uUMRRsyVunV8SK2UtHGKpFncIcSJ7jpKXDb1ylGtUOdwINW84W8AkM2c69oh6K4E6rNpLwf3Q0lZJJDIogzOMwgjWc+LQa1RNg+Xzuf5dXsT3cfl/w5Gg5QQuBkwMgAi5a41YLAx1L9jcFdsmyham6i8siY3aTKBq6vTqQ2oKLB+1MGWSW6O+dh0aUSQdGWwCPDWLF2rsvMJFRkKC8o95BGcu746j03BrZCA7HFKQs6uxhDJ8weyR1edq/FG25f5VWwfgkDTaPPnKmmag2iwDLJsfbuKkcb6+CLksZ4cnIDjnu3juQbg5Xv8mHgZCbrbVST2YkVzo31Hlw23rFvNvItGpsf2RtZ9M6PipjSmQ+varDHyhAiLEGkT+4WJLD/Yn8Yr2Ln+9j+bB+lXstCOMvYk9hAV0zcMbLZXuX9zzuN7EaxVILLHsdhP5S/LrxqCCUpOmcdAYVTMQi2hRbUa1LtEfxmD7T1IldbfWstbWyiKGAlvL5jCPf1rwabtJ9i6DkNmwtL74KdIeGpCPq2a8FASd3+pnyWmJAdbVn9LDr9RDIikT91VAJn3URci0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR12MB4679.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(366004)(136003)(39850400004)(396003)(38100700002)(122000001)(86362001)(26005)(53546011)(83380400001)(33656002)(9686003)(52536014)(2906002)(55016002)(6916009)(5660300002)(186003)(8936002)(30864003)(316002)(71200400001)(7696005)(478600001)(66476007)(66946007)(76116006)(6506007)(4326008)(64756008)(66556008)(66446008)(8676002)(54906003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?G0kJ3QGJjL9iNRj6r0cSK+A09+t8QcArRZTBshG99GefL7aHhT0ucgzkZ/MU?=
 =?us-ascii?Q?Xjokeg6vPEJ/N2RkjOSeJHXuJHm00JOJHjpDiCHMdcBYu85k4Z3QnK1yr55u?=
 =?us-ascii?Q?J5QLOnmKDfzTutMq0Pu8jUvRei43mxUZI2IwfEvQy7W3sG8DWgggquOaaBOR?=
 =?us-ascii?Q?AO5ForZXWWnbe+MAeJ+w++SDWjGzz0Jw1DXCvNPSfcXXSm/81ieQnMXEGdFi?=
 =?us-ascii?Q?6VriXeeEBI6E+PVsRI3cCdYlHKHmeI2pGjlrii7UbVbGqjTy/nYgePRmLaa2?=
 =?us-ascii?Q?hiFGRs305TBi1NrYcJWQ+ApqYrVI6Te7C3sIhzM9CsthTjxD7KBsLlPoh+FQ?=
 =?us-ascii?Q?RgDUo4CCdBrDl7ZjxHDJJqtmc8qgYZa7JhZcOk8lECrMpiYitqjORiO+vPXZ?=
 =?us-ascii?Q?dE5KLlvNVHXoXox0pFamLvfahhvzC8Zu9TmhOm3XI0yjwhTJlD5j5FzNH/6h?=
 =?us-ascii?Q?3eWNwjimJzwF6fGYq7tzrbCrEDL2yN1YyecnVrv31OuJv+mw2P6yfyzNOwpW?=
 =?us-ascii?Q?ph0OTnva3NQANKj0dNzunZmVmV66hhSBQ1oUIXPoD/c3rBQp9b5TNEfkbj2t?=
 =?us-ascii?Q?ortOtZHRNWjslURvRl7j28ZJZV+Ly/mc0CZ6Y3fI3bshbiPd39CUrt6fzr9t?=
 =?us-ascii?Q?NOAlIkU/Sgs673ozlz9XE1waom9PhwiFLQ13Lc+BDBWla4H1UPbmQ6sulEnt?=
 =?us-ascii?Q?C5UBBJvzPcRIr3UKR4yfnzpcY+72sfbtX4kDVoYQXbUSZjSHriGVR7rkArGb?=
 =?us-ascii?Q?xeU1LeqFYwm9gQVh7y+bmCGNQNgmp3KShjxKJrycd0v+oXGtxfYoIqPJLtLm?=
 =?us-ascii?Q?FdhASNtDjWt3uZYnuGpNhIEw/x4e9QK3E6QkaM29oTPRw7lCSdVVFM83XmM0?=
 =?us-ascii?Q?QWpTjV5S0aTz8XiKC/v3Kt75jXeuEqzeZnRGO9sK9x38/KNgyRr61cprG2Sb?=
 =?us-ascii?Q?cQ+akLvEU3tXSDORowrV1C7snnqo4S+OsYaeKuKof7+/sVLPjLUUBeZb9+V9?=
 =?us-ascii?Q?TBez4oOc1cZpb/JCb2gKnNfE1PB2Rat9YEbwL5CC9n8dTT1BZO7ps1jK8Le5?=
 =?us-ascii?Q?s4vdQFJQ8thwU2GAdJX7b8JtGDJrfwkeeDuyZ055hBV16IoColxDcOX/dng3?=
 =?us-ascii?Q?/ozn7kyFzmQ03ahJGfTQhv7BHtsPkH1+XdIxuk8VNIQ+huv8PeGcrnCYQVPU?=
 =?us-ascii?Q?ffzu4K4SzvVm2KPInpaiVJXxOftHGdEFr1SEp4L+ctWZBTPBCU1Qo3EUOL3b?=
 =?us-ascii?Q?5WAhPp4YpaexD7gVG6MZH92tFqveC6gPMwK5ZxGxnhNL7rFKWBdC3HuE7BGb?=
 =?us-ascii?Q?ObVbq++6KvkaQ5Ym+rMbsxgo?=
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR12MB4679.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ceab61e0-fd8f-4e58-93ab-08d909c43593
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2021 21:34:16.5500 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a+9SUXl45gEwNJdafgpDEo9ImqDIeBueg1iRrzn9bRshH3ydGHerBO9rxW5WN9KUlnH4M/kL8gtVzM5D2KCb2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB2987
Subject: Re: [Intel-gfx] [PATCH] drm/drm_mst: Use Extended Base Receiver
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "koba.ko@canonical.com" <koba.ko@canonical.com>, "Pillai,
 Aurabindo" <Aurabindo.Pillai@amd.com>, "Lipski,
 Mikita" <Mikita.Lipski@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

[AMD Official Use Only - Internal Distribution Only]

Hi,

drm/radeon/ part is still WIP (i.e. I doubt it'll work as is), but drm/i915 and drm/nouveau/ should be OK. Would it be possible to test those while I'm figuring out drm/radeon/ settings?

I'm pretty sure the follow-up change would affect only drm/radeon/, i.e. no modifications in other parts of the code (unless found wrong in review, of course).

I've tested drm/amd/ and it passes - I've confirmed the link and rate values make it all the way to drm_dp_mst_topology_mgr_set_mst().

Thanks,

Nikola

-----Original Message-----
From: Cornij, Nikola <Nikola.Cornij@amd.com>
Sent: Tuesday, April 27, 2021 5:29 PM
To: amd-gfx@lists.freedesktop.org
Cc: Pillai, Aurabindo <Aurabindo.Pillai@amd.com>; Lipski, Mikita <Mikita.Lipski@amd.com>; lyude@redhat.com; ville.syrjala@linux.intel.com; koba.ko@canonical.com; intel-gfx@lists.freedesktop.org; Cornij, Nikola <Nikola.Cornij@amd.com>
Subject: [PATCH] drm/drm_mst: Use Extended Base Receiver Capability DPCD space

[why]
DP 1.4a spec madates that if DP_EXTENDED_RECEIVER_CAP_FIELD_PRESENT is set, Extended Base Receiver Capability DPCD space must be used. Without doing that, the three DPCD values that differ will be wrong, leading to incorrect or limited functionality. MST link rate, for example, could have a lower value or Synaptics quirk wouldn't work out well when Extended DPCD was not read, resulting in no DSC for such hubs.

[how]
Modify MST topology manager to use the values from Extended DPCD where applicable.

To prevent regression on the sources that have lower maximum link rate capability than MAX_LINK_RATE from Extended DPCD, have the drivers supply maximum lane count and rate at initialization time.

This also reverts the 2dcab875e763 (Revert "drm/dp_mst: Retrieve extended DPCD caps for topology manager), brining the change back to the original commit ad44c03208e4 (drm/dp_mst: Retrieve extended DPCD caps for topology manager).

Signed-off-by: Nikola Cornij <nikola.cornij@amd.com>
---
 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |  5 +++
 .../gpu/drm/amd/display/dc/core/dc_link_dp.c  | 17 ++++++++++
 drivers/gpu/drm/amd/display/dc/dc_link.h      |  2 ++
 drivers/gpu/drm/drm_dp_mst_topology.c         | 33 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  6 +++-
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |  3 +-
 drivers/gpu/drm/radeon/radeon_dp_mst.c        |  3 ++
 include/drm/drm_dp_mst_helper.h               | 12 ++++++-
 8 files changed, 66 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
index d62460b69d95..d038e3185afb 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
@@ -437,6 +437,8 @@ void amdgpu_dm_initialize_dp_connector(struct amdgpu_display_manager *dm,
        struct amdgpu_dm_connector *aconnector,
        int link_index)
 {
+struct dc_link_settings max_link_enc_cap = {0};
+
 aconnector->dm_dp_aux.aux.name =
 kasprintf(GFP_KERNEL, "AMDGPU DM aux hw bus %d",
   link_index);
@@ -450,6 +452,7 @@ void amdgpu_dm_initialize_dp_connector(struct amdgpu_display_manager *dm,
 if (aconnector->base.connector_type == DRM_MODE_CONNECTOR_eDP)
 return;

+dc_link_dp_get_max_link_enc_cap(aconnector->dc_link,
+&max_link_enc_cap);
 aconnector->mst_mgr.cbs = &dm_mst_cbs;
 drm_dp_mst_topology_mgr_init(
 &aconnector->mst_mgr,
@@ -457,6 +460,8 @@ void amdgpu_dm_initialize_dp_connector(struct amdgpu_display_manager *dm,
 &aconnector->dm_dp_aux.aux,
 16,
 4,
+max_link_enc_cap.lane_count,
+max_link_enc_cap.link_rate,
 aconnector->connector_id);

 drm_connector_attach_dp_subconnector_property(&aconnector->base);
diff --git a/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c b/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c
index 3ff3d9e90983..18a0b84e9869 100644
--- a/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c
+++ b/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c
@@ -1893,6 +1893,23 @@ bool dc_link_dp_sync_lt_end(struct dc_link *link, bool link_down)
 return true;
 }

+bool dc_link_dp_get_max_link_enc_cap(const struct dc_link *link, struct
+dc_link_settings *max_link_enc_cap) {
+if (max_link_enc_cap == NULL) {
+DC_LOG_ERROR("%s: Could not return max link encoder caps", __func__);
+}
+
+if (link->link_enc->funcs->get_max_link_cap) {
+link->link_enc->funcs->get_max_link_cap(link->link_enc, max_link_enc_cap);
+return true;
+}
+
+DC_LOG_ERROR("%s: Max link encoder caps unknown", __func__);
+max_link_enc_cap->lane_count = 1;
+max_link_enc_cap->link_rate = 6;
+return false;
+}
+
 static struct dc_link_settings get_max_link_cap(struct dc_link *link)  {
 struct dc_link_settings max_link_cap = {0}; diff --git a/drivers/gpu/drm/amd/display/dc/dc_link.h b/drivers/gpu/drm/amd/display/dc/dc_link.h
index 054bab45ee17..fc5622ffec3d 100644
--- a/drivers/gpu/drm/amd/display/dc/dc_link.h
+++ b/drivers/gpu/drm/amd/display/dc/dc_link.h
@@ -345,6 +345,8 @@ bool dc_link_dp_set_test_pattern(
 const unsigned char *p_custom_pattern,
 unsigned int cust_pattern_size);

+bool dc_link_dp_get_max_link_enc_cap(const struct dc_link *link, struct
+dc_link_settings *max_link_enc_cap);
+
 void dc_link_enable_hpd_filter(struct dc_link *link, bool enable);

 bool dc_link_is_dp_sink_present(struct dc_link *link); diff --git a/drivers/gpu/drm/drm_dp_mst_topology.c b/drivers/gpu/drm/drm_dp_mst_topology.c
index de5124ce42cb..36e4155f048c 100644
--- a/drivers/gpu/drm/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/drm_dp_mst_topology.c
@@ -3693,18 +3693,23 @@ int drm_dp_mst_topology_mgr_set_mst(struct drm_dp_mst_topology_mgr *mgr, bool ms
 /* set the device into MST mode */
 if (mst_state) {
 struct drm_dp_payload reset_pay;
+int lane_count;
+int link_rate;

 WARN_ON(mgr->mst_primary);

 /* get dpcd info */
-ret = drm_dp_dpcd_read(mgr->aux, DP_DPCD_REV, mgr->dpcd, DP_RECEIVER_CAP_SIZE);
-if (ret != DP_RECEIVER_CAP_SIZE) {
-DRM_DEBUG_KMS("failed to read DPCD\n");
+ret = drm_dp_read_dpcd_caps(mgr->aux, mgr->dpcd);
+if (ret < 0) {
+drm_dbg_kms(mgr->dev, "%s: failed to read DPCD, ret %d\n",
+    mgr->aux->name, ret);
 goto out_unlock;
 }

-mgr->pbn_div = drm_dp_get_vc_payload_bw(drm_dp_bw_code_to_link_rate(mgr->dpcd[1]),
-mgr->dpcd[2] & DP_MAX_LANE_COUNT_MASK);
+lane_count = min((int)(mgr->dpcd[2] & DP_MAX_LANE_COUNT_MASK), mgr->max_lane_count);
+link_rate = min((int)mgr->dpcd[1], mgr->max_link_rate);
+mgr->pbn_div = drm_dp_get_vc_payload_bw(drm_dp_bw_code_to_link_rate(link_rate),
+lane_count);
 if (mgr->pbn_div == 0) {
 ret = -EINVAL;
 goto out_unlock;
@@ -5432,14 +5437,17 @@ EXPORT_SYMBOL(drm_atomic_get_mst_topology_state);
  * @aux: DP helper aux channel to talk to this device
  * @max_dpcd_transaction_bytes: hw specific DPCD transaction limit
  * @max_payloads: maximum number of payloads this GPU can source
+ * @max_lane_count: maximum number of lanes this GPU supports
+ * @max_link_rate: maximum link rate this GPU supports, units as in
+ DPCD
  * @conn_base_id: the connector object ID the MST device is connected to.
  *
  * Return 0 for success, or negative error code on failure
  */
 int drm_dp_mst_topology_mgr_init(struct drm_dp_mst_topology_mgr *mgr,
  struct drm_device *dev, struct drm_dp_aux *aux,
- int max_dpcd_transaction_bytes,
- int max_payloads, int conn_base_id)
+ int max_dpcd_transaction_bytes, int max_payloads,
+ int max_lane_count, int max_link_rate,
+ int conn_base_id)
 {
 struct drm_dp_mst_topology_state *mst_state;

@@ -5474,6 +5482,8 @@ int drm_dp_mst_topology_mgr_init(struct drm_dp_mst_topology_mgr *mgr,
 mgr->aux = aux;
 mgr->max_dpcd_transaction_bytes = max_dpcd_transaction_bytes;
 mgr->max_payloads = max_payloads;
+mgr->max_lane_count = max_lane_count;
+mgr->max_link_rate = max_link_rate;
 mgr->conn_base_id = conn_base_id;
 if (max_payloads + 1 > sizeof(mgr->payload_mask) * 8 ||
     max_payloads + 1 > sizeof(mgr->vcpi_mask) * 8) @@ -5880,14 +5890,13 @@ struct drm_dp_aux *drm_dp_mst_dsc_aux_for_port(struct drm_dp_mst_port *port)
 if (drm_dp_has_quirk(&desc, DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD) &&
     port->mgr->dpcd[DP_DPCD_REV] >= DP_DPCD_REV_14 &&
     port->parent == port->mgr->mst_primary) {
-u8 downstreamport;
+u8 dpcd_ext[DP_RECEIVER_CAP_SIZE];

-if (drm_dp_dpcd_read(&port->aux, DP_DOWNSTREAMPORT_PRESENT,
-     &downstreamport, 1) < 0)
+if (drm_dp_read_dpcd_caps(port->mgr->aux, dpcd_ext) < 0)
 return NULL;

-if ((downstreamport & DP_DWN_STRM_PORT_PRESENT) &&
-   ((downstreamport & DP_DWN_STRM_PORT_TYPE_MASK)
+if ((dpcd_ext[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_PRESENT) &&
+   ((dpcd_ext[DP_DOWNSTREAMPORT_PRESENT] &
+DP_DWN_STRM_PORT_TYPE_MASK)
      != DP_DWN_STRM_PORT_TYPE_ANALOG))
 return port->mgr->aux;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8e316146b6d1..5edd06a4441a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -941,6 +941,7 @@ intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)
 struct intel_dp *intel_dp = &dig_port->dp;
 enum port port = dig_port->base.port;
 int ret;
+int bios_max_link_rate;

 if (!HAS_DP_MST(i915) || intel_dp_is_edp(intel_dp))
 return 0;
@@ -955,8 +956,11 @@ intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)

 /* create encoders */
 intel_dp_create_fake_mst_encoders(dig_port);
+bios_max_link_rate = intel_bios_dp_max_link_rate(&dig_port->base);
 ret = drm_dp_mst_topology_mgr_init(&intel_dp->mst_mgr, &i915->drm,
-   &intel_dp->aux, 16, 3, conn_base_id);
+   &intel_dp->aux, 16, 3,
+   dig_port->max_lanes,
+   bios_max_link_rate/27000, conn_base_id);
 if (ret)
 return ret;

diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c b/drivers/gpu/drm/nouveau/dispnv50/disp.c
index 196612addfd6..54177d5fb352 100644
--- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
+++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
@@ -1617,7 +1617,8 @@ nv50_mstm_new(struct nouveau_encoder *outp, struct drm_dp_aux *aux, int aux_max,
 mstm->mgr.cbs = &nv50_mstm;

 ret = drm_dp_mst_topology_mgr_init(&mstm->mgr, dev, aux, aux_max,
-   max_payloads, conn_base_id);
+   max_payloads, outp->dcb->dpconf.link_nr,
+   outp->dcb->dpconf.link_bw, conn_base_id);
 if (ret)
 return ret;

diff --git a/drivers/gpu/drm/radeon/radeon_dp_mst.c b/drivers/gpu/drm/radeon/radeon_dp_mst.c
index 59cf1d288465..04a290db54fc 100644
--- a/drivers/gpu/drm/radeon/radeon_dp_mst.c
+++ b/drivers/gpu/drm/radeon/radeon_dp_mst.c
@@ -629,6 +629,7 @@ int
 radeon_dp_mst_init(struct radeon_connector *radeon_connector)  {
 struct drm_device *dev = radeon_connector->base.dev;
+struct radeon_connector_atom_dig *dig_connector =
+radeon_connector->con_priv;

 if (!radeon_connector->ddc_bus->has_aux)
 return 0;
@@ -636,6 +637,8 @@ radeon_dp_mst_init(struct radeon_connector *radeon_connector)
 radeon_connector->mst_mgr.cbs = &mst_cbs;
 return drm_dp_mst_topology_mgr_init(&radeon_connector->mst_mgr, dev,
     &radeon_connector->ddc_bus->aux, 16, 6,
+    drm_dp_max_lane_count(dig_connector->dpcd),
+    drm_dp_max_link_rate(dig_connector->dpcd),
     radeon_connector->base.base.id);  }

diff --git a/include/drm/drm_dp_mst_helper.h b/include/drm/drm_dp_mst_helper.h index bd1c39907b92..3cc70b77af12 100644
--- a/include/drm/drm_dp_mst_helper.h
+++ b/include/drm/drm_dp_mst_helper.h
@@ -593,6 +593,14 @@ struct drm_dp_mst_topology_mgr {
  * @max_payloads: maximum number of payloads the GPU can generate.
  */
 int max_payloads;
+/**
+ * @max_lane_count: maximum number of lanes the GPU can drive.
+ */
+int max_lane_count;
+/**
+ * @max_link_rate: maximum link rate per lane GPU can output.
+ */
+int max_link_rate;
 /**
  * @conn_base_id: DRM connector ID this mgr is connected to. Only used
  * to build the MST connector path value.
@@ -765,7 +773,9 @@ struct drm_dp_mst_topology_mgr {  int drm_dp_mst_topology_mgr_init(struct drm_dp_mst_topology_mgr *mgr,
  struct drm_device *dev, struct drm_dp_aux *aux,
  int max_dpcd_transaction_bytes,
- int max_payloads, int conn_base_id);
+ int max_payloads,
+ int max_lane_count, int max_link_rate,
+ int conn_base_id);

 void drm_dp_mst_topology_mgr_destroy(struct drm_dp_mst_topology_mgr *mgr);

--
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
