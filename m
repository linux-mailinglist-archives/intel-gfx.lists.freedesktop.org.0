Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJZWLGsI1GnoqAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 21:24:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C063A6979
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 21:24:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D5E110E221;
	Mon,  6 Apr 2026 19:24:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K1Js22GF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD38810E02C;
 Mon,  6 Apr 2026 19:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775503465; x=1807039465;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L/mWPP43DMBfxI/U5axj5kQMssy4YN/ZZ4TLROAGXLU=;
 b=K1Js22GFHJnBeJ/fZMGFmmLmdn26K6DDh1QJDG7OHf4uhfOIuIdkYF1S
 X+KFW+f2EeEon96v1sT1GTydxke5e0aTEx4Mm5TZoXuU2pNEyuT7ULEdL
 eNSMohru78SonUfgyOGnq3eVmZpLTBDYjgKWazx9LYPaR6mzpIn7Xww45
 ot5j7bmm/H98+eR7K34tpCmuQhR+LLSojOgRUAb9uDYHs8wO3jPTqu0fD
 xWBS3h9zeIdYJSW+OD0Ym6tcscFW4ye+YEAS7rKHr0ewRsV2GwzU1B3Wp
 /y8eraCJ5nf4ASBEkFkPpnkIxbVVoBNaJKYhu7Autdjz7dr6/aZ1yCL7N g==;
X-CSE-ConnectionGUID: j9r5PbMcRbKE7jjSz2Z54Q==
X-CSE-MsgGUID: F0isHDSLQFawSl2HQfpohA==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="76645775"
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="76645775"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 12:24:24 -0700
X-CSE-ConnectionGUID: TZFqiWA1Q42ATQoqFwm+UA==
X-CSE-MsgGUID: vbTOpEgaSUWvXixwxUMoYw==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 12:24:23 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 12:24:22 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 12:24:22 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.35) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 12:24:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NGVCXVylGjcjMQwZXFPwOpl1A3u8kROgJl4nRcZefTCiwR2Ax56hCFkS/pRo6qdS/nbumY/KAL8ajs+FxrjelsRg7qZG2KApLPPvXxF2EfcUoySC/4LQFCjXoYAdKybgZBOmYp++jWSk1g6Mc+hrJNFTXGVglb5hL+Hw4a5YjCkwb0uT0l/gUgUBrKZYRVvtXapBIiPJsf3Q8L4NSAe1Bn/UmdjBWQLiPYlQSlwIy1qPIHvojVuR0YDxZeNZZxN9PI71dNBlHc8fvFn3alNRTLkgWJl7yX9IhfSqcLjgT7PBJmZzh2UvrYlCFPZpzhYW/KbGPUYjuhNnxkSdAfTaXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yBwoyBYHfFPDx51KYun18QnOJWVJP9DkEKtZT+r4Upw=;
 b=n7NSYn4WOFvTbFONH7bc85W6fHgiziLMsX2W/X+/dXEGJjE0a4sMcL2ppJeaHugUeiiO6nmdX6nlShoHjRrqJXMKr6t22KLeMppElUL0SDhrKrgU7Sjnk3t9Ie7/roUkBAlS8zZExw3ZQS3LWvCREu6PfxaPBTYeHth141Sc26HZ8Xu8PxfFcziBaJIfcBB3LrSZOhpUjv4XGQS2tRo4FDaz0JMsdmmBkxvX09ZSUPiIX6Xk2yPDBj8w8BLHQpH8O5Vx9OgKD27DGEysGZUXOcdQAP1uL90Tgl5E3PPRIm1CWt1oacbpDSMinoRky6c8oC8gZB+QNTNlWHmVuX1aHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SN7PR11MB7043.namprd11.prod.outlook.com (2603:10b6:806:29a::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.15; Mon, 6 Apr 2026 19:24:19 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 19:24:19 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v3 03/12] drm/i915/cmtg: set timings for CMTG
Thread-Topic: [PATCH v3 03/12] drm/i915/cmtg: set timings for CMTG
Thread-Index: AQHcswMOQPIVnWZp40y3MRpapWJS/LXSie4Q
Date: Mon, 6 Apr 2026 19:24:18 +0000
Message-ID: <DM4PR11MB6360D8D8D522A61C180527D5F45DA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260313153300.3530695-1-animesh.manna@intel.com>
 <20260313153300.3530695-4-animesh.manna@intel.com>
In-Reply-To: <20260313153300.3530695-4-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SN7PR11MB7043:EE_
x-ms-office365-filtering-correlation-id: 51152e9b-6cd3-4e49-feff-08de94121969
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|38070700021|56012099003|22082099003;
x-microsoft-antispam-message-info: caAB7mrJnEZUcOYdT+JqVWx1BtYJ/D7tg3dlUV316ZaOdpA2iWN/AWQBjODA10u40kXaIpwEUrc+Gt54rc0RwChbb+SSF6eznQK9G1xyUtVNvu7w7MbjWsGwjKugOL4+Rn6bQyXbNPsQcQis9f5E6TfKMt+OaSSmQ5C8AXc5FbLou9JzBtP9Nd+rysVFx5OZANnNb/OnFMr46F5nbfFF/ZOI94Gm0aQVIvnKj0ag6nct8Ux8jVIRHRY1sbKnA22kDtsJbk8NvHy3jbPAxcCTB8nhQSfh1EdPsCPKDXoN8vuurMh2TgEtHoijd2YLV0qvsVWD5X/mWJyaXebp3GIeQZpH6HWfm2EKLse0/oe49eshju+GWcJsDL28zFKj5X5FAHwZu8Sk97B2aipIXxF6etix6dmAlbVrMuz9MUdzXUqmzNnORHz9afraye38fTiwZqdRbbilBjymIFdmvvhZfG27X41Z1ns9Oy4BMe44LERvWxk5A1eAGAktgXhCMAPFzxV37s3SJsYbPeu0g8wMRL7tKmZv8vhAOInCS1QGArlmGzspW9CA6ynYnlyi5O9IX681V3efRsIvK2di3TqYPD9Rp7vrYY6Xju+AB4UAv5K6dfFlepHarTTAfVBpYBYc0/ZqlPRKlt8CyUqfPCEfQAN6lBhSYawWrcUZITAYcUdtjtiRucOW+hSCB9Zv4nMe/kMZEG5zNbf5mxlF2W+YopqIOnET7lpAHa1fbXylDoV84DnB1lIvqpQehho1myQUKLxFl6wr25QTt4uMdiuC+a8KSdvREdeYq/veuU3hefM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(38070700021)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rI1ioAOhrdPfPPck26dtC4RUrdXqr89SXkrN2emA6gOURpXg7wDOlTuCU6xt?=
 =?us-ascii?Q?UyQYPKHN9RhdmmqUViPGPmTt+fT8o25FZG7PUQ436iEn6QHbQpT2M/NEFGxp?=
 =?us-ascii?Q?Y8jxhOeoKPpMOnLHjGRdSho41Oh/UGE/GqxLec7cByKz/uhCtI1BU9F/CV2W?=
 =?us-ascii?Q?zOKECnteGBNzG1WoNWzd8XajVHRGyObrextES5bW+3eMkZh8qyy1tH5MYCDb?=
 =?us-ascii?Q?9+2+p/w2LiZws1k+8wiXyTa4ibsR+kVzuTsBcStpgTLR68MZA9uEaEGuGfqM?=
 =?us-ascii?Q?hELCZMtoAKb5MWLa/Kd3PglksLmn7H1WjLyLBi9FzFXikCI6AHStAyBAI8iE?=
 =?us-ascii?Q?QUq99YNXvxj8PLGw3vn/hTqdLqiHTSB6+Ni84npnjVVJPV72loNiEYqUNBIr?=
 =?us-ascii?Q?hzT8DwTOyt2F9ZFbVQ5u2viUanSongpG5RhzfNonOdlCTkmQ8XoIDeft2+z2?=
 =?us-ascii?Q?Dln31lQwJYm4i5PtUINIOM+ibBxsc4UDh0i92hJvSl0HT2Y9YGdh1DOfCU/V?=
 =?us-ascii?Q?OxkKcxLMxOEe0I8/FhRL235B+TJgOOd/452DJ03/v9oEapyja0hAe0DMuIeD?=
 =?us-ascii?Q?pcNcvpi6bRUP8YKDEtV9JhVpX6SBsSTvj7CpdeASNhhcizNiHAepJwObyCDw?=
 =?us-ascii?Q?Rm/JnLKzDv9WScfdh4ur51Prl2KcF2aVovf6mMR/b4ZukbfVv3kKYX10Hf2L?=
 =?us-ascii?Q?B5NGtGyAKsUzXhOTTGpiR/tiHgu8tN1EFpCmumFNRQS4DYBZS51MOuZnj/VA?=
 =?us-ascii?Q?SeqR5l0IEujprEY6DYGu73XIzyP2R7WNJOfY1g+r6xtpt12cguo+cgFvO+IO?=
 =?us-ascii?Q?9eMvnl59Hfc4dEYlmApkaxGVOKYwiS2GTA1vlaAG6LxQlxtutEbH+5DOCKKS?=
 =?us-ascii?Q?OLvMynsJGAK5rtQTuNAN2K8qlMRXnBwIyzyjyY0izqRM5Y8sqyiwnDFKmkln?=
 =?us-ascii?Q?hg90kmyHPNXk79yhwFYhZepz6zWyGryQ3CRdB+9yi/aAih1XCv/4989UYJJ/?=
 =?us-ascii?Q?XAtNYDCADEsck5NXAgV/kPH1Hyky0N3Z2X1iLU8eDNQgiFdkrqrSnOKbaD5E?=
 =?us-ascii?Q?xBe2BtgzcgKBvMx2YLUo4Xvhlrex5RtnSf4nCM4Omdy1YCwuu78t6IPwHMOy?=
 =?us-ascii?Q?fX8vrK82hKmd6ddjkTrfN7HzSBxowPGaHv1wYavQJyuwlbvAKAFU8Bf+ICuX?=
 =?us-ascii?Q?QqU2ZksniCU9LwxAcCzgTNNKCWz4X//yXgCghbpUlj6VHqye/N/8a2q6cDJm?=
 =?us-ascii?Q?VQF+qacrpVBxoSDCjqZhj5S0udjF2PIzFccZLhGYmMIu+W2enDJGG6IPJ9Lz?=
 =?us-ascii?Q?8PsqU7+mdZbkIZTEe4szY4bQfkZTvQBf5pV/Pcx2Mv2U7CqDLQyWusFpoik1?=
 =?us-ascii?Q?xASUPovSXTLgvUO6HhypZlD9O+SRGyu73Y72OSyffhhgN/LH5MdsRP5PRYQH?=
 =?us-ascii?Q?yysDg9fsvItXFBO8XpvK/Zq3V/Ga0tnCK4QmYRwRf19rA/q2tczL1GC8U4TV?=
 =?us-ascii?Q?STj/5Um6i4wHu2ozcKteEKQ7MBXf6IGoQhscy3jp31t9q/A4Yzv8CGHc4Q16?=
 =?us-ascii?Q?kjTej6lQvz1yssY9403BtmLS5Ic0Vd1BtrkuvmITzkeQkJmdV+nmEW5FvvnH?=
 =?us-ascii?Q?wKG2b0s1OW7SWvky1aZKPufkFwkTEdVl5ZDf6Y/GrQshSqZjgNOsO5VjNB2a?=
 =?us-ascii?Q?chHcQF41e+5Y76hAedXqOdq0Jdm6JJC+CoZizetsqg3S7177q5cHHpbINl0N?=
 =?us-ascii?Q?mRdDgG5XGg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: wfEeUhnxPjX3ejcjRaNoNZ5DY0q6iZSDZxiEsBw4+mUkDJT855AOsyu65R8QhBK8wirbzfj7HYIJcOiS+9AhFcsYykdowfxiot/I82yVmB0xgQ1PB+G6GGYvFSYUr5udmqK+EBzaV4hnR5H0hi5oOnaSIZMZtCJKiNWRpZKMPiQnV++dgvO2KY2gA7gO1JwSZHo/l3PU3xuYvEvYkUCHMNCodD8r3AB4Oa2XVhxfRLyjSRjuSGs4uYP8EBTFIv0xQHakpxzOg+cRaMeWXebR4h0uG0e8GzE2TdcEGJr9VJzFQPiARtfpmYTtGpQ6dG0NlcW6RgMgD5rb1n2GV/3Z8w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51152e9b-6cd3-4e49-feff-08de94121969
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2026 19:24:18.9752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BfbElUQaUqgPH9Vx8jKTKb16Ct30TPcdHRVMQ1NDBEId+h8Idfr0iyOa7duJ0bKUcDIjFVnLoLx2BAsDyKI8iA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7043
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 19C063A6979
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Friday, March 13, 2026 9:03 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v3 03/12] drm/i915/cmtg: set timings for CMTG
>=20
> Timing registers are separate for CMTG, read transcoder register and prog=
ram
> cmtg transcoder with those values.
>=20
> v2:
> - Use sw state instead of reading directly from hardware. [Jani]
> - Move set_timing later after encoder enable. [Dibin]
>=20
> v3:
> - replace id with trans. [Jani]
> - program cmtg set_timing() along with primary transcoder timing.
>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 48 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  3 ++
>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  9 ++++
>  drivers/gpu/drm/i915/display/intel_display.c  |  4 ++
>  4 files changed, 63 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 644522b96288..e0f12925f5c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -4,7 +4,6 @@
>   */
>=20
>  #include <linux/string_choices.h>
> -#include <linux/types.h>
>=20
>  #include <drm/drm_device.h>
>  #include <drm/drm_print.h>
> @@ -223,3 +222,50 @@ void intel_cmtg_set_clk_select(const struct
> intel_crtc_state *crtc_state)
>  	if (clk_sel_set)
>  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
> }
> +
> +void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state,
> +bool lrr) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> +	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	crtc_vdisplay =3D adjusted_mode->crtc_vdisplay;
> +	crtc_vtotal =3D 1;
> +	crtc_vblank_start =3D 1;

Why 1 ?

> +	crtc_vblank_end =3D adjusted_mode->crtc_vblank_end;
> +
> +	if (lrr) {
> +		intel_de_write(display, TRANS_VTOTAL_CMTG(cpu_transcoder),
> +			       VACTIVE(crtc_vdisplay - 1) |
> +			       VTOTAL(crtc_vtotal - 1));
> +		intel_de_write(display, TRANS_VBLANK_CMTG(cpu_transcoder),
> +			       VBLANK_START(crtc_vblank_start - 1) |
> +			       VBLANK_END(crtc_vblank_end - 1));

We will end up programming vtotal and vblank_start as 0, check and fix.

> +		return;
> +	}
> +
> +	intel_de_write(display, TRANS_HTOTAL_CMTG(cpu_transcoder),
> +		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
> +		       HTOTAL(adjusted_mode->crtc_htotal - 1));
> +	intel_de_write(display, TRANS_HBLANK_CMTG(cpu_transcoder),
> +		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
> +		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
> +	intel_de_write(display, TRANS_HSYNC_CMTG(cpu_transcoder),
> +		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
> +		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
> +	intel_de_write(display, TRANS_VTOTAL_CMTG(cpu_transcoder),
> +		       VACTIVE(crtc_vdisplay - 1) |
> +		       VTOTAL(crtc_vtotal - 1));
> +	intel_de_write(display, TRANS_VBLANK_CMTG(cpu_transcoder),
> +		       VBLANK_START(crtc_vblank_start - 1) |
> +		       VBLANK_END(crtc_vblank_end - 1));
> +	intel_de_write(display, TRANS_VSYNC_CMTG(cpu_transcoder),
> +		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
> +		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
> +	intel_de_write(display,
> TRANS_SET_CTX_LATENCY_CMTG(cpu_transcoder),
> +		       crtc_state->set_context_latency); }
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 660ec513626e..53a44f505dd2 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -6,9 +6,12 @@
>  #ifndef __INTEL_CMTG_H__
>  #define __INTEL_CMTG_H__
>=20
> +#include <linux/types.h>
> +
>  struct intel_display;
>  struct intel_crtc_state;
>=20
> +void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state,
> +bool lrr);
>  void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state=
);  void
> intel_cmtg_sanitize(struct intel_display *display);  bool
> intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state); diff --=
git
> a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index 8a767b659a23..60714a2080c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -20,4 +20,13 @@
>  #define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
>  #define  CMTG_ENABLE			REG_BIT(31)
>=20
> +#define TRANS_HTOTAL_CMTG(trans)	_MMIO(0x6F000 + (trans) *
> 0x100)
> +#define TRANS_HBLANK_CMTG(trans)	_MMIO(0x6F004 + (trans) *
> 0x100)
> +#define TRANS_HSYNC_CMTG(trans)		_MMIO(0x6F008 + (trans)
> * 0x100)
> +#define TRANS_VTOTAL_CMTG(trans)	_MMIO(0x6F00C + (trans) *
> 0x100)
> +#define TRANS_VBLANK_CMTG(trans)	_MMIO(0x6F010 + (trans) *
> 0x100)
> +#define TRANS_VSYNC_CMTG(trans)		_MMIO(0x6F014 + (trans)
> * 0x100)
> +
> +#define TRANS_SET_CTX_LATENCY_CMTG(trans)	_MMIO(0x6F07C +
> (trans) * 0x100)
> +
>  #endif /* __INTEL_CMTG_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index b18ce0c36a64..82e4d0524d54 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -61,6 +61,7 @@
>  #include "intel_casf.h"
>  #include "intel_cdclk.h"
>  #include "intel_clock_gating.h"
> +#include "intel_cmtg.h"
>  #include "intel_color.h"
>  #include "intel_crt.h"
>  #include "intel_crtc.h"
> @@ -2775,6 +2776,8 @@ static void intel_set_transcoder_timings(const stru=
ct
> intel_crtc_state *crtc_sta
>  		intel_de_write(display, DP_MIN_HBLANK_CTL(cpu_transcoder),
>  			       crtc_state->min_hblank);
>  	}
> +
> +	intel_cmtg_set_timings(crtc_state, false);
>  }
>=20
>  static void intel_set_transcoder_timings_lrr(const struct intel_crtc_sta=
te
> *crtc_state) @@ -2836,6 +2839,7 @@ static void
> intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>  		       VACTIVE(crtc_vdisplay - 1) |
>  		       VTOTAL(crtc_vtotal - 1));
>=20
> +	intel_cmtg_set_timings(crtc_state, true);
>  	intel_vrr_set_fixed_rr_timings(crtc_state);
>  	intel_vrr_transcoder_enable(crtc_state);
>  }
> --
> 2.29.0

