Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 758099F5DB3
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2024 05:06:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CCE810E1D0;
	Wed, 18 Dec 2024 04:06:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TkA0ndv0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4945310E1D0;
 Wed, 18 Dec 2024 04:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734494773; x=1766030773;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4NVIz5fRVmzfTjEsTzk2MZn5eCp8HjtRkHyRln8yETs=;
 b=TkA0ndv06l1bK4l2RSs8itQ/AZ6R1Gwg5F7Bu6YNp2bEwTq8p9vWXnpn
 jxedGdFMpyr2RC4cB54wZ6cRPQbF0WBL7XkMQjNTxVL7SpiVEEsfP+glh
 PelVevrWqpsyMVcj8D+OMxcTdeds5Hq3jFMp2uQUVPCjlfixxcX6mLFG5
 eVEP4b93MbeMKkzTdHPuq+Siz9dJ1rbOkt0AWx1oSw7TmH+LAuYQ50Pg5
 Wq3kTv8v+/E08V4ry/vw7ETgup/VGEqqvEO0mabpgdoCvtef4qyehHOwP
 GzCuabOkI1eYJAVz7n2I4tF6GWTN2S470TE6133bAnrgogUIIonEWEzZr A==;
X-CSE-ConnectionGUID: 877bS6q2QyiSYbuj2yB3Bg==
X-CSE-MsgGUID: ec+Dwy4kTnOOIVDhP9Zugw==
X-IronPort-AV: E=McAfee;i="6700,10204,11289"; a="34278498"
X-IronPort-AV: E=Sophos;i="6.12,243,1728975600"; d="scan'208";a="34278498"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 20:06:11 -0800
X-CSE-ConnectionGUID: WaXuo4RSTkiRi4hIGJUjrA==
X-CSE-MsgGUID: XP7lE3wzR9iM3l+ueVSUkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="101877572"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Dec 2024 20:06:11 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 17 Dec 2024 20:06:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 17 Dec 2024 20:06:08 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 17 Dec 2024 20:06:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KmA0B7hWo2q5TxN4vrSDP+3QfDdv87jkChG7Vr4qA6D9N0QayzJOG6516XReBjvkAtKaJ2bdU8M8kJJmmgprqgHp1F6AuUPn76gdlf77hwUxA9hqCMM4iP24nu8gcavVlsa2GpL+4ODWfsgU+EM2CNdEZiCSJfB2m7Sad9to9cwVeTUM6R3QZP13IVdV9MEpwieE6JWnQHDYRZ1s9s41e07mEaIA+467SuQeyTh66kIzCocH1u7BYoSepn3Gf6YY77J0g9ITh6EeLe0EGfkvwtPmH5gaLMSr7cFAinQclL3MgWuCVNpie1GSdX9qbFC2G3adYj+R7lrKt/E6ydChmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LM6oTNeRDfbHD94iKjO6uB+D+OphtSA1G6l8zQusWjs=;
 b=gHc4GArlpmOhi1eu9EP0v+phdSwmL9zc+6G4zx3oFUKA0tTzVFJ9/RE1f5Ccg2O/MJ3uRtLEVwhiMOynMYAg8oPFRA7ZrGksXPfqt1JTdrGg9IXk+GcScZmwX5LF1kuhbsux9xhdUVs8wKz5hYwH58XE53tYtUH2Gv++QK0+dbfAZrxgkxxmqE73Nab6qivLeG0OyjS/dh3J8WvF4KWtjADI6IFS5mTitdJCVixjpiRRTgH9HL3rs9zvH1ncctJ2+EbIHTiYGCgXA+NrwaTTphq7GjLj3VD26uZpHhkepFn/WwP3ET0IMck8gfWCEb2cew3Ki6PLQnjvn+fd22zqTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BY1PR11MB8128.namprd11.prod.outlook.com (2603:10b6:a03:52c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.21; Wed, 18 Dec
 2024 04:06:03 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 04:06:02 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [PATCH 10/14] drm/i915/dp_mst: Use pipe_bpp->limits.{max/min}_bpp
 for dsc
Thread-Topic: [PATCH 10/14] drm/i915/dp_mst: Use
 pipe_bpp->limits.{max/min}_bpp for dsc
Thread-Index: AQHbUGZKGuZ91HxsBEWRIge/5Dsm2LLrY2Kw
Date: Wed, 18 Dec 2024 04:06:02 +0000
Message-ID: <SN7PR11MB6750A3331C77119B3F5AECC6E3052@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
 <20241217093244.3938132-11-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241217093244.3938132-11-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BY1PR11MB8128:EE_
x-ms-office365-filtering-correlation-id: 71aa74ad-bd35-4cba-cddb-08dd1f1949ca
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ODgtbqfx+YuWdWiUShnM4fuETNYFaaTWebvm9sMfPUuTew7y4z1c8vIFCgdw?=
 =?us-ascii?Q?gwoUllSgMMZ0r6ZwC9CdWteW3pWkXJc1VcGDmslBX65TECljF7e79BzHUNkl?=
 =?us-ascii?Q?FO9jCQKxYQS+sqqIjSiafYGcGZYyzPS4qTOaItc29NoMhUBo9cVvhgl9OU8+?=
 =?us-ascii?Q?lgvU0rAtVh59zjRVF5StsNagzkJUtJUo+hr6fJwk5y5lKvWrtRUulA6Yf00A?=
 =?us-ascii?Q?s25Fqs6O1je6So81I1/8sKDswkcquM6Luw9MAfLh37JyUdMIr+qiR1BCuTbM?=
 =?us-ascii?Q?ZhK97ZRBK0rU5SFj8BJPPafETzYkbEL3uerb1gYqdyneESqaazb8XHyiqSud?=
 =?us-ascii?Q?Kp7bnUwJ3X9ZDDiV0RYIFRtr8ENtJLwGsZjVmUvFyNRck4CHeec3ZmDvZeti?=
 =?us-ascii?Q?LSWk0r6dLJbulffTFSP2S9YbrdHGPRvaiYDnXeaIGapw0PodDKnPL7QHJa5J?=
 =?us-ascii?Q?mfbKlFb66PFduwHSI6mPdLdtX3X1l8DUgvU0j631XX+Eim9he4j7/FzzwvUh?=
 =?us-ascii?Q?FH6tacKZ1NCwdwMEij8et4Fw0fuBP0b/1ENR2fPQKCUhXoTcPxh05Ah211KC?=
 =?us-ascii?Q?kt4ExhFeje4oOeDGL0+IjEzp/gslINs7pet5bFmnV8oskVUkkqPhp0sq1M73?=
 =?us-ascii?Q?HhyQX5rR7cPsHhdE66aqsUGgVxSc4CVK5200U02EmO0ViRE/z9YGDZVq3xXi?=
 =?us-ascii?Q?hptGxycSyUO467N5U80O/tqo1TErOconNfOISfqShS+4EB4AOSwsbTB9SegV?=
 =?us-ascii?Q?qwEVz9E5FSczFAZq7unEXsU9XKAkEvn1CFsdR2R6fXT3Dxor5KunofmvDAkU?=
 =?us-ascii?Q?t+RNQldnidobGAzHnPtQDjr4QPdViUR0UY33rVdCebEHkIRSBEiq3OuzyRZs?=
 =?us-ascii?Q?aZBBdWJdBnMIKuXwkAH9dD6ITbkSEcZIFQTB99ma0tscCgdJcLM685s+cN3Z?=
 =?us-ascii?Q?64uhkNbqOkERR6liuZO7Bwemy1XNMWN/ey7A7pSJc3xuYdriS65CBNitYKMz?=
 =?us-ascii?Q?XJ/D932U8YL1dCTx7q5obQswEszjmiJKToy9NSexWzJ4t7CdTRx/Gjy2nDN4?=
 =?us-ascii?Q?nuXGl1U8YztUBH1Krw/eoji/S0mrKq+6sl5XO4Y1gFUKncJhNqTaXhrMUpmc?=
 =?us-ascii?Q?hGX3ZPXmAUMibB024uvbFq3vyKQi/HBCb4A1puzPneeWzPn61xYTGfjxD9SJ?=
 =?us-ascii?Q?3kIAvM1WYc5fgXygaO1eH7w8wNrFFD/kMma2lHspKqDsVPSijj3NUQ9uLGnk?=
 =?us-ascii?Q?lTuT9ZoDsD+ErQpiZn7ruijlB643qta+o5hD9Rshd5fZzeoHYTye0G91m1Af?=
 =?us-ascii?Q?Xb1DzKbmSSLTrjpRn/813oweVz02PCiNAPScJ6eWqaRv+N506/FwIdcHIXUe?=
 =?us-ascii?Q?P4cTDvc/MQe8vUIU8eZ3fe78IYpo?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?A7flQWu4sdBDWrWnw0+AIMBLxmS9bPKVytNqVgQr1vw2W2qPZ4FHoaWX9+vn?=
 =?us-ascii?Q?VLif74zIVSv+1jPR9C1XMmtpCfdzem+CIs1ClRcm/iPwY1jAl9nwwzWU1fug?=
 =?us-ascii?Q?GyN21Cn3BlMl9oY/zjUL5lhlQfYJx1P5HnQB/MpxjS3PFW7KdD/IVLr6/iH4?=
 =?us-ascii?Q?iOkdH+LtZ7/aJVREeTHC51zaPsLZ+EkC8H3v/KrQZIUDUA+tNrS9XGNTw7x/?=
 =?us-ascii?Q?G27LML3ZLSS7fn/JOUSaa8wp0gFelfj24+ORkuvQfqSVK7IV1yPxObMiCnoo?=
 =?us-ascii?Q?mn/fGWC2N7LZIZfrYEHitrqeshkhlwNTRfqICsdyfG5EjbMeNNWPKV8WLkL9?=
 =?us-ascii?Q?iXQrMVQCj88SnK5C9AyWrCRqz+M/93H9cEvLWZb1suOugbGzeruEqHLlQ4T4?=
 =?us-ascii?Q?ewtlTN21blK4CCPyHqQtyW2dq/AOXzcPl0HfzHfJeJrYuFdA+jmjE9d3OY2w?=
 =?us-ascii?Q?MBLHW/MsCjYPeEdluCNF11xGyx4SNfqeZFFakm0GbBplfjpt2jet7E4Ytn1j?=
 =?us-ascii?Q?jtuzQhn54bnUw8xiebYK5MD2rAGn1Rne1cYpKXLD7nwcRkoJbeZl5k/qZNHQ?=
 =?us-ascii?Q?kvvLz4plAc9TzmOl+0qvy0RDxSJQ53OTiX+o0fncz8MqjXsL6IPTm5O1Nyus?=
 =?us-ascii?Q?ptvdPgQJXg9EuHpvNEgehZ//2DDPAmYZ6IP4ZpGIQ4WpxlF1nIQSInW8Q3w5?=
 =?us-ascii?Q?SVOtRdcCHqQKGeQ1kCrnMhxWSnBWavIESBdXEgyv4JuzbyJz51RgLKdQMks4?=
 =?us-ascii?Q?IMFhuYSHiHvv3bkr1oDxs6TLoZFSFooPPszDNhTbE3Q0B4ukMnvTh1Awga3i?=
 =?us-ascii?Q?sY5NteVkyYUHs+rxSpbnbN2TbdsOj4B6pmQ5rv6qcJEug0JLQHEXJkVRP8Gy?=
 =?us-ascii?Q?WHcJ1z5R9lOFuCe976FQ2RMwMXNlwSjh9wS3eFS0OkiSDggzijp84q3OCXDz?=
 =?us-ascii?Q?C9WT6PXQBttsvk2XuQ59H79MabFwGlxpiqj5zgKNa7288MajOsKWgaz7jGCy?=
 =?us-ascii?Q?CsIMUkwlWsRxzhNTiQe9Fh5VmECYzRWLSVM2tjUPqZwIvX5KbExfyabmEObJ?=
 =?us-ascii?Q?R+EqCzYJsgXc3M0tqzJYCq2kp2oiWLi/PowTgB5QWYzl9mWxuIHbMZJVDmfw?=
 =?us-ascii?Q?Fzx7vZ+Ig9sYCPFTv455HK6sUIVahu2ydMAKDdo4EuL5uaPkdrF6cOVE7Pl4?=
 =?us-ascii?Q?pgqU7+4S/E7TQQs/NFOoY8gj+RDTny+VTb0VqCni99mczXfr2XdI4l1ucI9L?=
 =?us-ascii?Q?348raKBmIPVXrFqTpBzNNg14SxZQBx9N2RcUh0UXIljWERu8zrshZM0wT5RC?=
 =?us-ascii?Q?ryGUvw6RZnlA+k7LKBJpcCJ3pMOGN09iCViWk5pkKtDcRMF9SBsjwyNPINJN?=
 =?us-ascii?Q?CCWfefQXBPOs4vTJZjfqT15r3tUAb1s0L9FX6oN/ayF8yiKNQP2+9lRgvfMr?=
 =?us-ascii?Q?NR577puuJ/QFGhDKHeVQlpMN9ujhi0CM8BI9hNawDzmSbehx3fjCecIxTnqS?=
 =?us-ascii?Q?25bWw1ijq2tLvB6GzZ3S6ELC0iHawBDyjFYdnIeU3x8qcR2/eL8+fVFAb5u2?=
 =?us-ascii?Q?O9xKBx2u6U8YWBLLcNgwBvD2w5vezNoXgrobw2dc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71aa74ad-bd35-4cba-cddb-08dd1f1949ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 04:06:02.8806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 53oNvtIXggCDb7cVvo67KaUdSxBM/VETIWyEsvMr3VdvrVMVb8i+W8t/3CklfNyVYBRKpCxhFmBzRkbvywVefQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8128
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Tuesday, December 17, 2024 3:03 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.c=
om>;
> jani.nikula@linux.intel.com; Deak, Imre <imre.deak@intel.com>
> Subject: [PATCH 10/14] drm/i915/dp_mst: Use pipe_bpp-
> >limits.{max/min}_bpp for dsc
>=20
> The dsc limits->pipe.max/min_bpp are already set in
> intel_dp_compute_config_limits.
> Use the limits while computing the link config with DSC for MST.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index c9c4c8b960f1..689fbd6bcf9b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -396,14 +396,10 @@ static int
> mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
>  	int i, num_bpc;
>  	u8 dsc_bpc[3] =3D {};
>  	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
> -	int dsc_max_bpc, dsc_min_bpc;
>  	int min_compressed_bpp, max_compressed_bpp;
>=20
> -	dsc_max_bpc =3D intel_dp_dsc_max_src_input_bpc(display);
> -	dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc();
> -
> -	max_bpp =3D min(dsc_max_bpc * 3, limits->pipe.max_bpp);
> -	min_bpp =3D max(dsc_min_bpc * 3, limits->pipe.min_bpp);
> +	max_bpp =3D limits->pipe.max_bpp;
> +	min_bpp =3D limits->pipe.min_bpp;
>=20
>  	num_bpc =3D drm_dp_dsc_sink_supported_input_bpcs(connector-
> >dp.dsc_dpcd,
>  						       dsc_bpc);
> --
> 2.45.2

