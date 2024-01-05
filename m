Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B55824C85
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 02:25:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55A7D10E169;
	Fri,  5 Jan 2024 01:24:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1A0A10E169
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 01:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704417897; x=1735953897;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=r/9dR84BhJJTqlc5L2ERwirmDcPGC8bo+AoA6LI69Dc=;
 b=YCvkBhHMJqLkjkWLOzinSE9NNmshms4HRCQiOmnsc6PQM05WGEIMjwa3
 SBbp9jCKX+eGdrl+pkjr3SeSqNgh5LwlmFoiSwe853n48IsQzDq3IUKF9
 ruAtC0JfhTcrUFs4jWphO0Rr/WPdtAgCpo7z49x9E3h8QJo2fJXHJPTZy
 oXZPyvt2iFcY9UvUh7J9HqVBH3kUNLpIDJufeA1vBmyvQrAuwAlgygiRP
 rsbU1+6SylLLsA6PqGiuOvl8Icie+cIJ32ZyRQZMWydR/ULApnFT0QCjF
 DAQ3Qxqu+/Qqt7GTq3OyPtyUyEs1EbEzHASNuCeoJ32Jqlcg/nx5tAQKl w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="463803589"
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; d="scan'208";a="463803589"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 17:24:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="784061568"
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; d="scan'208";a="784061568"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jan 2024 17:24:51 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 17:24:50 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Jan 2024 17:24:50 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Jan 2024 17:24:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SifiiQq/ZAGARLaxvoge6FfdZsUsu9++3divArlYwMfKrucwM3YkP67yoWCgxGVPHsA8KGmSRdmOETjaV4ASdBW8Wts5cG5uC7QvKIARzGbMRRRMPRxMQ2coXBAPc5fG4U8gvM1qkqwNgDUyKwNUsVUBTJKXfgwOU5qK2z/Y0hzko6gzKKluyy0sOG0NEepPVpGYYKoZu2tXoImBbGKEQQ/IneYLxnvaO8/fbCT54lo3Q+kA8QVrlsKJmEX8jVyj5aEfjAxEzUfDtovTej9assslock0OCb7r1713VQvG7G7w5vMTAXEcq79Ez7vFmld+L+8mHLPOZjjARQnnABuQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yeY6B0WmBSBTPPT2t7ZqhwPIaaHgFsBEwQY+4qKugFs=;
 b=Ms3iFunDZhNlAkPENIpGEI/pH4CTRdC87bi3QwH8qEJcslyN//nrP8OblbneDJZbpKWtBfxw1o/5wM4FtYo5refCNhOw9/JvX+16rvAfwwOZCrnuRexu3pJRKd4+4tbMYNN05UL+ERvHFgH6JtGxjT8b3wkooH51pnj1Lz9us8JgCO68lGfMOUAUrESqQPcHwS0TyVzqlcTj97RtUt0kOTaTTXEQp0F7wdcWzQyz4y4g+OmGtXS5r4xJMpU3YXVr5ODlFSqwDXVxRRgFOhTrgQPCfZ11ap7uPcMdoHXbg17HRt1y4qNC6q0yAP/KqVeqkMFNnzkIjqJOd+fj0ZThgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by IA0PR11MB7744.namprd11.prod.outlook.com (2603:10b6:208:409::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.16; Fri, 5 Jan
 2024 01:24:48 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::9ec5:f5c2:d277:63eb]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::9ec5:f5c2:d277:63eb%5]) with mapi id 15.20.7159.015; Fri, 5 Jan 2024
 01:24:48 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Nikula, 
 Jani" <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
Thread-Topic: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
Thread-Index: AQHaPiXFcjeQhKE49k6YIbnjTiV1MrDKbw1Q
Date: Fri, 5 Jan 2024 01:24:48 +0000
Message-ID: <MW3PR11MB462061FCBA580128D5B8E53089662@MW3PR11MB4620.namprd11.prod.outlook.com>
References: <20240103090715.307309-1-arun.r.murthy@intel.com>
In-Reply-To: <20240103090715.307309-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4620:EE_|IA0PR11MB7744:EE_
x-ms-office365-filtering-correlation-id: 02c0cee2-61fc-44b4-ca37-08dc0d8d1b76
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l3u3APtSDdVMgNagbYMNHZTEsYWUqy0IOjxngYpDaYDHL/1UJ9OlqU3DI5PXbyASvakA7RDZMiGTBiwrPRRRHsKUCUmg3NBY+aiLwm8gZE7zYpqgt/Z3W4GzcA1B28jAhXWxvbqAfrp58hO0AENc+UsMntvnA0xDYcgabWCumpSsdsBTgjvvaxvSbb2ffMJZaKZY/6Jfuih+evksrSCbW/hSU78nH+HZhl1UfQ0vzcvZuS81Udb0m5In2r387vZwybt4avualokzLNJAAfejXrS7MR5Sv57X0zQFYbLosPdBwBEiMVKL9YQzUTpY1EUjM0LALOy8lUEGLX/nIYQpV+fAmV+fhr8ULOqBY4yeIB7kDf+5VjU6I1eRLnAWFPcwh7twTeoDmitFTFw94nrk2conTSnwhykI/QzWjHstaB4tQ0Mn+YsSTm8+A8uqAfkZrEcvxQDoUvFe8EVaGMIuYZQZ4L4CUjhmvZSZCg/NMQbHhjewpwanVnWNs6lmSwXhsazbym28REve77oUq1C+nDB6OU7B+UpFEL8lZxZK/+Qvz08KN6y/bpemEL5/yCflC68boklNOXobUolcXcThHVgn+2X3nktY9rInunkLjOu7KB/fUYV5L91tUK0smwXk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(376002)(346002)(136003)(39860400002)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(53546011)(26005)(71200400001)(9686003)(478600001)(6506007)(7696005)(83380400001)(5660300002)(2906002)(41300700001)(66446008)(66476007)(66556008)(66946007)(76116006)(64756008)(316002)(6636002)(110136005)(8936002)(52536014)(8676002)(38070700009)(38100700002)(122000001)(86362001)(33656002)(82960400001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?109pKDdtI4O3pTcyWHAYU2S0yyivBDmcwivos1Ek2CHcKjeF2GHkmibOh0Xp?=
 =?us-ascii?Q?ixtxdXxITMAYmDzfWyQTmcBBuFfwXY/yiUUVu080k2veOWgIyPebYr+23wa/?=
 =?us-ascii?Q?arD6U4dFjPH5khXnaCc/+5Y8kMU4JykcwyGDQI/XbgWzU/kNBekG9f46gFDg?=
 =?us-ascii?Q?ERU9PMkfSpkko3mn+lZvXsj+JCTJPtsLm4iefjI3xp2b1CSco2J/KUfGcNfC?=
 =?us-ascii?Q?LNdnxT6E5p89MQteZmxDM/YsLqwTU0gWFs5DJsBR00AIfkXoW+QihB7dM+zp?=
 =?us-ascii?Q?bnyceGFyR4/aa9pdT8QyGOHMtOi0RtrGaE3x+L3i9s/AepvPk3BoYeuGiq0i?=
 =?us-ascii?Q?qF/OmGGVwLRpfWSIhi9u37q4WpuuPFIvkcltEdnXxqmYYh+4J9tBSeFYKPk7?=
 =?us-ascii?Q?B2LITX42AXz/a7W1jujJjwSSZEOcKBzxohtpBD3q4dagzC6ozsn5XOOFbpSk?=
 =?us-ascii?Q?552pyDVRSHKKavOoh4wfSdZflVs/p8z5YjwO2o6rV88XtI1k0bIo0V23a2Bd?=
 =?us-ascii?Q?RDr/HwTb0PxuUZ3wGYHOGtAQrNRpktZFbI4Ji/LgVxHuwsVkLGcKFKWHW4wA?=
 =?us-ascii?Q?OVoQf2s1UV0Ltqz9hVX9Ei2AgqI/rjfg8T9eNSeco425k2qF8/BpnrkwYEjB?=
 =?us-ascii?Q?24XuKkT0cHtbctlg6kF4vyXANxv6axJzgWxfzJmvxV+aBUSwKKF6FsBFGxtU?=
 =?us-ascii?Q?W3ED0M/ERGSeHMu0wPnivpt4uGE3b4/IEyLxVAyNXo/p61ymgsQDCCN83Tt5?=
 =?us-ascii?Q?tEPW2SloFE/6W2aSamhuVSQceg7i+ePuSCV1Y2fTwyZ/+7q/TwLbFKl6id/O?=
 =?us-ascii?Q?JYigm3ZYMv1pO24xQh1FiZVJ5ejrRcryQDY2KLp2cJEAUakmRpmuqW6pVSab?=
 =?us-ascii?Q?yWibIbvT0LHt+Iwj2CoQDrBZTFcqBgj9hZYBxFTRO87VIuhemdWl1aFOSvuP?=
 =?us-ascii?Q?XRNecjlljLwnjfHbvqHErLVKG3f9+lNVsB8nZw9M5RPU/jMfLBca6K5l4lt7?=
 =?us-ascii?Q?6eNN2WvU7OS53RlilbUM6K6pfnkoQnw/SfMYDtxhc6kAS3soacN3AOzcfQ3w?=
 =?us-ascii?Q?F1tWafo1NS7kCmOdmRzizxPEQWihW93eiGXvUOP7ynhediKhx2AMWvjqSSMY?=
 =?us-ascii?Q?/c+JBuVLWm9LMfFo5hwhn6VPavSolG9VWkD4S+iodIRuujlLnjt7aiHuJ+ML?=
 =?us-ascii?Q?yUdNOyMYGrAHafk7yF0Pdb8ILhYEbqnY9XC1eN7qql2qPscsMC+da0Y8ZvHm?=
 =?us-ascii?Q?xgiKyCrwpotQobMKpaFr1i2oktn/+Zy4Jv0ip0Vcpf8+FsnHRgMKKBwMLwsG?=
 =?us-ascii?Q?mhv3Oacjok/gd+kvf7ACDx37q6iqFJWWZXXrso5tR+QonXt/flMxMeQ/epDr?=
 =?us-ascii?Q?5FogzNk1xA45ASICqi8he5QvRRpWbK/uLRAINotPOjFrGGUScRm6s6df4ZPj?=
 =?us-ascii?Q?q4CLogFCtXoLZ54XdvrkPDe1JQF3dqSj75xgdHewfeGsbCPMPPxedHBYdpG1?=
 =?us-ascii?Q?TAlmEVATFDuX30151Mir2TvJHoWXQjS7pE1+9N22MQk3T0IYj9XXj8q3r95D?=
 =?us-ascii?Q?R7FUwIOch7QBg05fbPGYNIjYDlZRsL8dBJsK8qtOwz4rPlsirQkMqTvfiZXl?=
 =?us-ascii?Q?qA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02c0cee2-61fc-44b4-ca37-08dc0d8d1b76
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2024 01:24:48.1453 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1eNZEJPfxa7xdfCB4XMHthQR8Qa9Fl0qenfVuiOLV/7kGi3tLXjy1srU+UiH3IqJF9TEacj8ML7EX/Fgw/z0rUfXPu8Z2bclPAoReHxn110=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7744
X-OriginatorOrg: intel.com
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

Thank you for the patch

Tested-by: Khaled Almahallawy <Khaled.almahallawy@intel.com>

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Arun=
 R Murthy
Sent: Wednesday, January 3, 2024 1:07 AM
To: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>; =
Deak, Imre <imre.deak@intel.com>
Subject: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST

With a value of '0' read from MSTM_CAP register MST to be enabled.
DP2.1 SCR updates the spec for 128/132b DP capable supporting only one stre=
am and not supporting single stream sideband MSG.
The underlying protocol will be MST to enable use of MTP.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915=
/display/intel_dp.c
index 9ff0cbd9c0df..40d3280f8d98 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4038,8 +4038,13 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
 	if (!intel_dp_mst_source_support(intel_dp))
 		return;
=20
-	intel_dp->is_mst =3D sink_can_mst &&
-		i915->display.params.enable_dp_mst;
+	/*
+	 * Even if dpcd reg MSTM_CAP is 0, if the sink supports UHBR rates then
+	 * DP2.1 can be enabled with underlying protocol using MST for MTP
+	 */
+	intel_dp->is_mst =3D (sink_can_mst ||
+			    drm_dp_is_uhbr_rate(intel_dp_max_common_rate(intel_dp)))
+			    && i915->display.params.enable_dp_mst;
=20
 	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
 					intel_dp->is_mst);
--
2.25.1

