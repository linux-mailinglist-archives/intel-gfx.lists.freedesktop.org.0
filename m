Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9522A9C38B4
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 07:55:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B36210E1A2;
	Mon, 11 Nov 2024 06:55:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nlni1/hn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DE9510E1A2;
 Mon, 11 Nov 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731308154; x=1762844154;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bvjQM7EWPK+KuC0+X5qiGOQbdvrg1bu21TzpILu9SBM=;
 b=nlni1/hnNAWFZE0oNPsw5MEZb/AT+bSbQuqUnyRmUg6XvNuttaTJ7TXm
 jF+73WygjNuqXQRd2zxGirGQ6rXmpJle7NbB2BayXmAtrShKEUIsTKTU+
 FrOrLZxTVMRTZyjUGjrGX/bhOB6HhiDlJy+R1OpVXQO3QPRWxmIFnAvF1
 SRx8EL6id7+VLZyGRBm4VJMAz6hAR5xnuU1ncVA9MMSSw4KnnWv9Q9z55
 UYBWFcoB7hmFeCSBRzpomFlTVnjhh0AqP7rONwiEAjEl+UfjazbbSocns
 p8IYmsWWEijroncsBNOnptB1xMlzkvEzTyaHvc5NhVaOCPcL2AJOAhs0U g==;
X-CSE-ConnectionGUID: qefH0i10RDispx01hfyakA==
X-CSE-MsgGUID: Ze54Poh+Tf2T/qMoPRi+zQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30957941"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30957941"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2024 22:55:53 -0800
X-CSE-ConnectionGUID: bngnNFFqS7aHGnseWrHmmw==
X-CSE-MsgGUID: YiNQ5JmxTqCic1wFR6pixA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86878757"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Nov 2024 22:55:52 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 10 Nov 2024 22:55:52 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 10 Nov 2024 22:55:52 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 10 Nov 2024 22:55:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xrh2rVTrg1GjMXwHmiWN1LsAGm2yk7XkxoEpYAcCxBFIAvzstE2vJC9uZpsbPWi9OqGoTMCIEFcamSvPblaErxo45RU9HrnCMqSd4Xw1yxvA7CWVVaFeRDi4SuJCPef5B/22Nq6CxaTlJndx3YH+eiaY/IFdefxJyGCc5vr3BklxEUMoLZOg8GI3MOJ6GkgF2BgmFkgMw98LbZHHuJ02MxWbK+yAIHV6eESfm0ClMnb5yGGrEEsV3IR7yoQqcaZyQb9EZjKC2f67jtDf7/Xp5sqbtRwpBU65cs5KgnrvEp5A0M0P0iFllRqA7nG1zvnbuBJ+vV/1VWgBcwbuny7qSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nsQWItKXg9GB16/aCuxfkBXg6Z8iUjgg/2Auba8oq+0=;
 b=q7rmK+EONNh2jc/Pb3fmpdizDTM7+boB5bzMcsAchB97P1EAY0PBjX0ikyLaJe/3XPia1ueR9u8yuN8HaGwI/R7GkYq7RoEnFJJRn+dIWnUvxxXd5A7iFegR46wcqnk5k6fRq0HKg2oBK2kP+ytRki/PQojablhZ2sr/8t/LL7sEToiwZdpWjmt4v3vIOGMX+j3xXYMQTR1LNMHXBDxfaXEUJp4IHoulYL3DTVXAW8h63DDV/p8gyd3UBIWHm9DZVBdt6KOmBlHVG1ZXg6mknkkXoZPQlSndnt6VYs8zsHsToXLs33e9mep3rRebM2FU2n1QRFKj11954dQZwO1HJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5508.namprd11.prod.outlook.com (2603:10b6:610:d7::16)
 by SJ0PR11MB5119.namprd11.prod.outlook.com (2603:10b6:a03:2d6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.27; Mon, 11 Nov
 2024 06:55:49 +0000
Received: from CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd]) by CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd%4]) with mapi id 15.20.8137.027; Mon, 11 Nov 2024
 06:55:49 +0000
From: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/dp: Limit max compressed bpp to 18 when forcing
 DSC
Thread-Topic: [PATCH] drm/i915/dp: Limit max compressed bpp to 18 when forcing
 DSC
Thread-Index: AQHbKqcoE2zq90wRw06l73M60JS3GbKxt9eQ
Date: Mon, 11 Nov 2024 06:55:49 +0000
Message-ID: <CH0PR11MB5508C6F1C3D7A4FDAB7D5080C2582@CH0PR11MB5508.namprd11.prod.outlook.com>
References: <20241030084100.1361689-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241030084100.1361689-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5508:EE_|SJ0PR11MB5119:EE_
x-ms-office365-filtering-correlation-id: 1eeb9af9-64ea-4d43-23a5-08dd021de038
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?wy8T89FtVErW92D0O01XIaOtAyyPaDFoN524tSLBHXmb4+xKK770hVl5HJqi?=
 =?us-ascii?Q?A0kuZ4vn1xT5V9XifcPRKCoL8mPR2m9mBksQGMSUv+0TAwRHDOFIFZXXiaf6?=
 =?us-ascii?Q?XkZlBcMiEQPiJx86X/RpxLFQqRuR/lNsdniziHsGFYuTXkyfifEJKDnXZ5vn?=
 =?us-ascii?Q?4W/hfTlCpAMnhVeROuA2eljXukQkxe2Ji6HWuJrXuk/LM60Dh0OTYFo6AyX1?=
 =?us-ascii?Q?5KNXrOcVUa4m9nar3b8emuMYh2M1cII/iGpzJQgDu9RVfGBAyOtK8hOUoJU/?=
 =?us-ascii?Q?dOmYc4MG/8zvjL3zG5ihxQURsK0WlmW9sCqsKnPxNsC5vouyb9182q6J+yua?=
 =?us-ascii?Q?QmJGvKrh/IDmj9mX8EL+r+d6CR6dGJ9V1u1njml3h9raWytmdEO1EqlwjrX2?=
 =?us-ascii?Q?kVBPCetuWuqQ/ajYbAINioReJIoohqSgb+/583MaId+/yGUWFqurXmhvujdc?=
 =?us-ascii?Q?v6FKt/WRbq+pSUdkAlFXWF05vio+sKTGuvN/66QH6ksrAq90PCZnSED+jjHB?=
 =?us-ascii?Q?rsAnAnHDDcubTvwejPO95aEBJLPNOI7QQuaPaaMqPIU+diAM8wkoFp6gxWIL?=
 =?us-ascii?Q?ryhzbYOBuTFTX5+3yMcQcxWrfRasNLVW0kNg9ngkio6HECbk/57+PO3bmOy8?=
 =?us-ascii?Q?LXlQoNpREpQopRtiJJOsODvAJxuorcNw6boDoNFcE5G4oiI1Ui4CCgjK9qkl?=
 =?us-ascii?Q?4J+5wQOmSzL9Z6cWu1U5Q9gro+ha/BPJ/eRrc9qklU+pMBVyAaB5JYSQha+F?=
 =?us-ascii?Q?+upoU/j+DYFr0UKdMr46UIRTdTn9amY7TQsdivfShq4OMoyxCqBthblUWPT0?=
 =?us-ascii?Q?ZZSh+SXYXnQ9YojSJPJC89Vu8hhg94+ls/WQnKvKMhqrp4lrjsLhk8HRp9M2?=
 =?us-ascii?Q?MH0E/NOdaNwPWty/2+bgQFn3uA5YY6P8F1r1mvvJPMf4TdRbTwcsVcajhpFA?=
 =?us-ascii?Q?3iPlOm7Svw9mDZcmST1rTGMOF5p8lE36DJ6wL+cyyRikiNNKjo4x+4laNwHg?=
 =?us-ascii?Q?UiINGzegQ99SXWu6RaiIR3gW6TZ6q2ROpJ3tvoy+0IaZR6ZkRc/eOsCVBiBq?=
 =?us-ascii?Q?J4f4zuWfgtXn7rVEQoo31N+NRvyqy/CD5YnMWOXkIXh2+8OmSnyRqcukO6lN?=
 =?us-ascii?Q?w9LW6vJu6Uh71xdtJG9Nwd1Y3mBFJXt6cN0QnYD04Rzn2eS7PuYk55NuB8Ji?=
 =?us-ascii?Q?+fhl8fKyc8Zky+Dv8LR5vJ2b/h0PiiNP2UeaV4lXR03zRxnkxbDvtgR8ETEQ?=
 =?us-ascii?Q?OulIqRUsqiIeBWkARMunTgLw2+7E05rmVP8kHRY+rYmVL3m074Z1Xt11F/NI?=
 =?us-ascii?Q?aGUJUCyISC8Sio4ZY8zHzQegsm8TRNAqk6i58mVDYdzFIYllDl3hT8edR+YC?=
 =?us-ascii?Q?CFCdP74=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?P3p1IMxLUqCYxX9/6AxOrydTo1ZYHj3SIlo9jmnNr90OlsZBoeHFweaJhES6?=
 =?us-ascii?Q?RZ3D1ELK4bXbhufee5YkmyaAjacJGs9EwxJuwnuVNtND2nUfgLTAs8ueMXDs?=
 =?us-ascii?Q?QDfe8hY1OhQdj1zsCyA+SrVrNdq5wqip12b9f3b6BFekFkEFuT6WlHIDOJuy?=
 =?us-ascii?Q?gfi/cav/mXmiqR4JJu+3zt4Ar7SEO9F8T80Ra860CQ/jkA32VgDE7SHGeUtA?=
 =?us-ascii?Q?eSDaCVLrsusB1AkdHKYukDxRJZ1iIuuVwmQOJwgOM8EsUfQXgw0yD666IpDi?=
 =?us-ascii?Q?tB8DKMJNu5094zSgZlumH3nTCQKR9AedMDD+eDe0ntVbJwkcWw++8+dYAf24?=
 =?us-ascii?Q?whpSsU1bS46PhqFGrVZhFA5PnZ5i0d0rzST2KZ6kF5YDe8ya/vtVbDuA84nZ?=
 =?us-ascii?Q?gl6KpGM2bi0DQ4qdSQpVa/IZDXrrj0O5+gwARfztTjQpRhKHzNEJq9K6Oh/1?=
 =?us-ascii?Q?lKpZDWrJIHXH2XgFgH/ngoSm5fgw3+oaztttn3PyrjrH1YIBtPPQ9NzcbThL?=
 =?us-ascii?Q?z+VARwSanZDb+BoA2j4l4hSECpdl4a2XJK/I5P7s3ZCgaReaAaTGdayXnVOh?=
 =?us-ascii?Q?qOulfDoeUO7srdUAL/qvLj3yTqDFNjXIMEBM0rwFvenOBoyQdpDmupPGl5ps?=
 =?us-ascii?Q?0dKBS3+vpxTCrQNYYX6JwcKfMV9ayiu/ZqnxbOSeHeRICchW2BGaXrebjIUj?=
 =?us-ascii?Q?sgMaLOVVwUpiNlWhi+GM31UAKBVdm/SVHKkRIp9M0x9eMsZABEHD5GtOZLU7?=
 =?us-ascii?Q?55SZnKAQpVJc7T4pcqaTYERiVEMDsb8Yv1NHBt8nClcyLIgNh+9RjxOBp9xK?=
 =?us-ascii?Q?f82rD5DiyfW2rKEYhBBda/YCs0WLcJANvJxMryyLiZKMTUXIH2ERL3XbADrK?=
 =?us-ascii?Q?4OVBErbU0TtedAIvCnk+UknV7hMQwfbgK2doKdOZRCWNGQavSYDds6jMigVH?=
 =?us-ascii?Q?rNtr8pETgsZt6JoPSEYmwXn08mCQFVPNcXqQPicyTN7/yzE4/By6k2GQF1zL?=
 =?us-ascii?Q?D+U0N1H3KrCRypZwsnEsAskOWlLHUbURuAIDNSmgAmNzgRqbYRIAYZF+pJJh?=
 =?us-ascii?Q?aCSPryJBbxH4AZQ/Jcvp6kRVCj53MYP6drPKRAHd0Y/azz9EvJPrBNOTWlw/?=
 =?us-ascii?Q?zzIAL9rWwWO5pB41GYgstdzNoEQmJ4QmSTZAEmRhdCOaQTIk4Gbix50ezZY/?=
 =?us-ascii?Q?O26kDpcxT1Stkd4L77JvZgfOSb2VNI7fIqAx5Ji3RPWzHl3/tY6xLVPSqbAf?=
 =?us-ascii?Q?3BI4AOtARpXNQTFyJzZ/sYtjU7ClzN9avoShv9QtG3mvlIk0POIu6sJ6sRVo?=
 =?us-ascii?Q?wtx44jvCE5VPYxQNAcaPn/aBAzq7hp2tzkRzvakiRAk4XMU5HFEYuj98Z1Sy?=
 =?us-ascii?Q?3dU5IWRYFii6rYrUSAfKgbw5bzvJVqsBfCixFOz+5MmU1JOU7oN7UdX9uFdK?=
 =?us-ascii?Q?9Hsv2qia6HCAM0E3Ui9NkJPsq5gle+xs5vxOzXFtLLGI/oMfTmdpAx9jF2T3?=
 =?us-ascii?Q?I5fw+okCXEe+Rc1DWLHVdmvmJ4h4kWjBVgDc03Z5CyVEGSY85rNW4PoJWEmN?=
 =?us-ascii?Q?+du7Ca1YJMoDOoOyZfTDV1sp3En3Y24OtbZ8yqIxnuKwCGUui6V6V889tsRZ?=
 =?us-ascii?Q?RQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1eeb9af9-64ea-4d43-23a5-08dd021de038
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2024 06:55:49.5460 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9VrU4Hn4XGgMlwY57kooCH9vQ/kw/kJ0toBaNXbOnSPYMskza1rAApVsAHLI8oOKJqyMf8+04BG3yUmWCnScoBBnXQVq5AyL4QsydJPrxtoxJmhEJL5wVxCdSXZKJ2ki
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5119
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



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Anki=
t
> Nautiyal
> Sent: Wednesday, October 30, 2024 2:11 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org
> Subject: [PATCH] drm/i915/dp: Limit max compressed bpp to 18 when
> forcing DSC
>=20
> While forcing DSC when it is not actually required, the max compressed bp=
p
> from the source gets picked for compression for some pipe bpps.
> Apparently, when DSC is not required, forcing DSC to the maximum
> compressed bpp seems to cause underruns.
>=20
> To avoid this, limit the max compressed bpp to 18 while forcing DSC. This
> value works across platforms with different pipe bpps and prevents
> underruns.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Looks good to me.
Reviewed-by: Naga Venkata Srikanth V <nagavenkata.srikanth.v@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 28fa5e2d0c33..0ce29cefaa13 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2021,6 +2021,15 @@ static int dsc_src_max_compressed_bpp(struct
> intel_dp *intel_dp)  {
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>=20
> +	/*
> +	 * Forcing DSC and using the platform's max compressed bpp is seen
> to cause
> +	 * underruns. Since DSC isn't needed in these cases, limit the
> +	 * max compressed bpp to 18, which is a safe value across platforms
> with different
> +	 * pipe bpps.
> +	 */
> +	if (intel_dp->force_dsc_en)
> +		return 18;
> +
>  	/*
>  	 * Max Compressed bpp for Gen 13+ is 27bpp.
>  	 * For earlier platform is 23bpp. (Bspec:49259).
> --
> 2.45.2

