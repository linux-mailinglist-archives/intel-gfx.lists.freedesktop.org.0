Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA71497E5EC
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 08:21:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3791010E382;
	Mon, 23 Sep 2024 06:21:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EnrYQTsG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04E6010E380;
 Mon, 23 Sep 2024 06:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727072500; x=1758608500;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sVE5OwC2gFxU9fqfAawAFqFFyPRGEINuevOQIxIoMyI=;
 b=EnrYQTsGykfayJ3XF5BHCosU9svkTlH39+9HMAgcZp16a1dyqGhNfjUH
 0+m1vo5lkGVFJmjUPeBkNmeFke5sFZwO/RN+NrdJjzp7Lxry6WhHTP49q
 SFUiHjKkhp0uvEBTzG5CyGC2BbgjH57LQJK0fTiA+Wh6anV0DQCzx4gLd
 4zycO82jOsjXI7xwIr62v7K+Cb+L/JHPCuKxHbPBy145Q1DlZg3verebL
 EuIs8dkyQZdWgJCIA2kYkvEuHpD4X00nBdg/fexsowO0Va4pePdf76HcY
 66ZAJ8MKB24frDPNn7JcEaf6VLYu9IQJe4TTtqs7YXndOahbceRlFPC7N w==;
X-CSE-ConnectionGUID: s11ohBTDTDatymi4a6aL/A==
X-CSE-MsgGUID: Ppigg+/aRGaxa96cr2ZZRg==
X-IronPort-AV: E=McAfee;i="6400,9594,5688"; a="26195217"
X-IronPort-AV: E=Sophos;i="5.88,1,1635231600"; 
   d="scan'208";a="26195217"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 23:21:34 -0700
X-CSE-ConnectionGUID: z9EhG7n2SEGlbUsS+41G0g==
X-CSE-MsgGUID: xeECJS+4Q3Go/HbCIh/eEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="71274801"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2024 23:21:34 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 23:21:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 22 Sep 2024 23:21:33 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 22 Sep 2024 23:21:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cz2/NJ7u3xvXbG9QQKfPS8Kgzd4BYS2U2QNYVIc9y0fdtEg7nS5S8u+r02GOXd5U6CI0Xs/kN9vVmPq/SwXcAkGxXXudrr3ZJiWwlUqG4K2ejSTe9+7mKaHdJ9jR5/lUPvHW6GQ+WBvvG6j4mTg6GfsGjh5tDSZQrHzC8h0y/yoWqGFxF0TxDgj7hOUCdY3aRbIIFGfzMz2J0Gk+sZMl8ob9FS6z0EJFDltKwNTJWQj1addLY0gm/ALKkyrhZYXBBXxLRD9XvHryMnlqLWXcWMaw0wSKquJhuyym7kJa+ib7uzKxXcE88RZsi8COw8BJ6z2kV9HMuaEXAEtX1J5A+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MPsachd38Xxiqdj6oq/gnnGPW30r64lOJgZfImWZh54=;
 b=s5qUo19f615k58FEyzXsLdsnrC2FDHu91xXwsS+Rz4c6MsgOTDbWSWvtpyzAsklKQRg3pZ7ohEBn1Aa2DkN5X/Y8U46FKSICUQJSo6bABPpBd8cYfmeXxT+3DyoGBink0jqLoUoEtB0z/oeyV6ltWIBC7VYTFr5Ix4CudWrhMYe3DhG20xmxWnv6lWvbjP2cZnY6mWBnoKQ0gyik1Gc++AK2F4Pi5TLO0y4P4Hj1ZqLelkxZtElj3+oetCa8nITW/kJR+UIYmtVwrAwTWxVagZ4L7+1iWsepgYfKNVVym/DvJrElplJa6KNQcRlziUZVlC4fYEMfZiEKMcymFktXxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM4PR11MB6480.namprd11.prod.outlook.com (2603:10b6:8:8d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 06:21:23 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 06:21:23 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Srikanth V, NagaVenkata"
 <nagavenkata.srikanth.v@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading the
 FFE preset
Thread-Topic: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading the
 FFE preset
Thread-Index: AQHbBNLcqGgbxRpHh0iYwFS0SOqK2rJk91PA
Date: Mon, 23 Sep 2024 06:21:23 +0000
Message-ID: <SN7PR11MB67504B125D9B035F37D79420E36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-3-arun.r.murthy@intel.com>
In-Reply-To: <20240912050552.779356-3-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM4PR11MB6480:EE_
x-ms-office365-filtering-correlation-id: 234ef7b3-620b-4fea-5875-08dcdb97f2b2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Kj+8ihkQy/kGuRxtATz6L4tRoxCiwD2D4jVzcfkhFYkxZVZSZxLIwQmrta3V?=
 =?us-ascii?Q?iGLGqNzvU74gGYyNoD8j3nqAXTwVEEWfBMPngVYbKihRHwvktUbx3RuQuLnO?=
 =?us-ascii?Q?QYfDq2B58GBA0d7dDI9HJtPdlkRJ4Us0JYN6lvyaK14WxF3nnPaeUN+kvq//?=
 =?us-ascii?Q?1J+Cz8ehRB5YjX633HPUg5bT6ykSFwh/so81KIkwkx0DHlA0ZCOTuQH5XFNv?=
 =?us-ascii?Q?qJtC7uF0zcnj7OV3NT0OSRmQHrge3icq21yfO7ArdJ3Jn4M8nH0Cey/zrkCS?=
 =?us-ascii?Q?h3uBniT+ByORfRaOGYZPSfgSPGQ6WhUoBf449W6zT9a3KyHeY32ke/YxBFze?=
 =?us-ascii?Q?6vD2Hrmqkz2uRKxsgBdXQetVlhnsY8z+Z2jyHxFhnylF/+x+97OFo6X7KPus?=
 =?us-ascii?Q?JRWxXDeL7FQ1Hr/IQKR2EbKPuZuZ5Rddts4li9zyiG7dh+zkiCthwd5yYLb6?=
 =?us-ascii?Q?1G+AqCPv+C+uthwGxew9Kc9EzjL5H7tbRzXx8YqGBQaPmMfNDfiDXE51yrJW?=
 =?us-ascii?Q?cPtWRZYdLOj1Q02eSc5tOcVdtjFy9WcmpXs5U12gNH4UUCyW3d0ORU0xqikK?=
 =?us-ascii?Q?4I+X0s3kvzBJ4qKo/ShxJGfyRSyiffN/03k7iX0x+zhfOBa+3Mq6hbFCm8VE?=
 =?us-ascii?Q?Ttf4ae1nAq6D+fgM8rSSFyxkO/HuHvtE/E97LwGTNTzB5tPwq6XYl2PBw2Of?=
 =?us-ascii?Q?WlJAeZdrTOn+nrTBWq9YbzGeWP5WVBj3QZTYOeohLC2FTIUOdXSzd+TujwiA?=
 =?us-ascii?Q?lYkreOvTSSdzownDNjZQaBEusjk3656/jB7z0cm7CjFAW5gBetTC9wT0RCjp?=
 =?us-ascii?Q?kyZomD4WYaXYLATS825/XWk+oadSIZy5TI0U47yVqPFd8jBGaUprdeelcAbW?=
 =?us-ascii?Q?4otQUE5iSv90jw2N7kF8qfjk3gkEHrz6N+o0n3VQBH2kXkDSJuSv6POznx8U?=
 =?us-ascii?Q?czGuENXJaWeg1AmHGCDujznhKtZH5CSCvK8nQWkVp/lM6gA1rA5gjFnIfGoX?=
 =?us-ascii?Q?KW9bYlX2oATXfAn4fzfJW3YXJOGRBYpHGzllQ0hyD+b/PmJ2FeD5V9e9iz7Q?=
 =?us-ascii?Q?d0xZMrL70bRreKGhQYTAOzHMac6eKFojt298O5HDQ3tNTvlvrDbcGtsBNq97?=
 =?us-ascii?Q?jLci3PVsw0YQHp97HLjlMi8zn6ysM3eJOIcwjCUn/AJsgmiMUbY6/XKF9AEc?=
 =?us-ascii?Q?tiuYhK0NKTcSNtZSELqAEftuCP5/KsJZi4IFGv/GJt9Q43arQb+97FnifrEU?=
 =?us-ascii?Q?HpYbceTTIqU3euEv0+LpjpYyGfoWx9bJyDM8rJMD2Fzpc6J31Rk3Wz8rZ1fD?=
 =?us-ascii?Q?mZK2D1MmSgsyHKj5pF+xSTr5HnwHrOJx4EgoON+GCMnnVA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ELDXPIPwPETvP9uUPXMV3BAk4fcHvV0y5rrgMUP78c1RPsqQiCwYGrFyu3fG?=
 =?us-ascii?Q?pAnMjU/eQV44rh8Ale1u415Ej1UjeO4D7ghLr7nlfEhVRETHsCYinphpav1P?=
 =?us-ascii?Q?C046z/vFsE5TtFS7McEyKMdl1CGEyPRxjHXpw2U7vLVy7fb3dm1uAXBxxN/u?=
 =?us-ascii?Q?1sGvkMHCKqdoHiQ6rtmk45V3hKhnKb4bVqDxz/AKPXbP4awv3F9pzDN0yl4Y?=
 =?us-ascii?Q?8KfEs9d07kv3EgY+rfHiSo4f0hz8Iwvh6Gony5QDjT4HqdeXO8OlATZubIHs?=
 =?us-ascii?Q?RE8V/jlfw+dMWqP1wHcA+CeTFNmy7F0hIBSUweFbuYriN9qFMsTQMMd6TikR?=
 =?us-ascii?Q?qC2sOPH0MIYxfbaxy0fPDUMJlt06rJSvVr815F5CbXvp5SQqV1LRMlad10PT?=
 =?us-ascii?Q?Xaqz5pJeFK4Mp/EpDBGJF7CEyO4XJ1gjmIwcqaPXvNp6rkxOksTsLwftepAL?=
 =?us-ascii?Q?Gv2BTk2OA301kQ8wHvBLlcgXJujbalINjXh0B76O/f/t9XJyaNeUuu+6LYJr?=
 =?us-ascii?Q?mZseiigOrbfaYOJnwPVchaFjeyeJN+MR+acQsrG3KLFs3D/bEHOtx7evTo3h?=
 =?us-ascii?Q?OjjypILEcSsVctOvyXguOGdHxNaP5Cq6VEd90G2P6NH3D/Jk00HNBou317Sg?=
 =?us-ascii?Q?YB4sJZWxel24mkTXrUONduw+dIQw1S6O6UtaVRvw6HyTic5BPJ6Nf4erZ6yd?=
 =?us-ascii?Q?gtqU4Hts8o+1+LfiCPA99GPlNCYRc6yKq1qcXQugMfZaHLoio3UV2YnW0Pcx?=
 =?us-ascii?Q?0PDotZoinyy7AwztQ5Adrp1WwvVLRNFDObJZaPPdhBlAh/x93Z14qiMFF7AD?=
 =?us-ascii?Q?yH6SvrpuW9jiH3+8gG92DpOXAX07CSyJj8n4390T0jGK/qP5WsUr23VCXGHf?=
 =?us-ascii?Q?FctHOeGM9x81ObbAMmIwyom0SCaX/y+djhA5MmXFjRiQvQgCS3tNgwQM1AfN?=
 =?us-ascii?Q?+jJLl5/QmQq4VgukWT30HzFWFmYzO4G76Ld7JyouX+aYu6t3Rfb73WGhWr9F?=
 =?us-ascii?Q?DFFZegUNzF278KQj1VPHDdr3r/e7lP6uGl5ylPb6DeltqCnlbnhvQ8iIzujv?=
 =?us-ascii?Q?PdY75wRsGD4+kFWAqIcajQ5tcqI4Nreo//UK6hPSVxcZcKyv725oO4HrDM66?=
 =?us-ascii?Q?KHV0rWdaSpeZlZ/KheKA19Y4EoYxoMREqucoJPIAXKSkLn+XnuNcEFGUstc3?=
 =?us-ascii?Q?Mw2QuWlK40MDvQd+4Ulg0BVBu/mLs2upKsYiQ56cfR2zi0kIMhAeEqlWz1lf?=
 =?us-ascii?Q?6bv4VOgS4+Psah4SBFBgUtSjm1RpYo6FjH2X1cLtL2aVby9CpZloYjXI8F7K?=
 =?us-ascii?Q?5tfV8GO+7qOcQ3ZSF+ZPY0UdPB18W92VTsA/FLVIMkaDau38q/De7Xglv8xx?=
 =?us-ascii?Q?af8M+lhDSqlfrXBUTZogkJlLGqoWJ/zUauPW31Q8JyvYEEfvcyzRZ+GnHjG9?=
 =?us-ascii?Q?ne0utB4IAjUZTgfXbs4f01ot5FVhUdwGcGENKUHsoEixICn+nFrialgC9Uq6?=
 =?us-ascii?Q?KrztfEd4R88GADYIfaVurQvFInnHHBwI99yrBXdtovnlma06dU+1DVoKayKA?=
 =?us-ascii?Q?FKWIk5pbEjFx8P3KIrQwbxc2UcxER4MSWDmBBXfT?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 234ef7b3-620b-4fea-5875-08dcdb97f2b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2024 06:21:23.7814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rfvk240oTjIYCG96MwZUjMfMxQNwLpUR/CbfgaqFlIixXy9sLl9x3KX2HQiXPQUKRirTkI8nuQENLvokKffpgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6480
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Arun=
 R
> Murthy
> Sent: Thursday, September 12, 2024 10:36 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Srikanth V, NagaVenkata
> <nagavenkata.srikanth.v@intel.com>
> Subject: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading the =
FFE
> preset
>=20
> DP Source should be reading AUX_RD interval after we get adjusted
> TX_FFE_PRESET_VALUE from the DP Sink. (before actually adjusting in DP
> Source)

I think mentioning the dp spec reference here would be helpful

>=20
> Signed-off-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index f41b69840ad9..ca179bed46ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1419,12 +1419,6 @@ intel_dp_128b132b_lane_eq(struct intel_dp
> *intel_dp,
>  	for (try =3D 0; try < max_tries; try++) {
>  		fsleep(delay_us);
>=20
> -		/*
> -		 * The delay may get updated. The transmitter shall read the
> -		 * delay before link status during link training.
> -		 */
> -		delay_us =3D
> drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
> -
>  		if (drm_dp_dpcd_read_link_status(&intel_dp->aux,
> link_status) < 0) {
>  			lt_err(intel_dp, DP_PHY_DPRX, "Failed to read link
> status\n");
>  			return false;
> @@ -1457,6 +1451,12 @@ intel_dp_128b132b_lane_eq(struct intel_dp
> *intel_dp,
>  			lt_err(intel_dp, DP_PHY_DPRX, "Failed to update TX
> FFE settings\n");
>  			return false;
>  		}
> +
> +		/*
> +		 * The delay may get updated. The transmitter shall read the
> +		 * delay before link status during link training.
> +		 */

The comment needs to be updated as this is not being done before link statu=
s=20
Also a question does this not conflict with the requirement we previously h=
ad (reading it before link status) ?

Regards,
Suraj Kandpal

Regards,
Suraj Kandpal

> +		delay_us =3D
> drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
>  	}
>=20
>  	if (try =3D=3D max_tries) {
> --
> 2.25.1

