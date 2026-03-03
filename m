Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHt5B/m+pmlDTQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 11:59:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6671ED343
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 11:59:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC3F810E166;
	Tue,  3 Mar 2026 10:59:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Muuf8Zmz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49BC710E166;
 Tue,  3 Mar 2026 10:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772535540; x=1804071540;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ViVX6UHMRFVnz837wL8HdeDNAkDDOnHTA/e/WNaXXo0=;
 b=Muuf8ZmzbpVYsWw05CNX9kvciond1GumnA1sOun5mcxhNHIdv1Smbs6k
 G1A4VR4JxoAmLQafu7wsKAwcZWT+4CxpHF2CdNC3dyS0+92G2jiFQo6Wj
 3aNNuz7vRez4tVoaXbfBoYPzjrGThJqyUY8xNn3sPHzWGgZSgrISwukGD
 xqJX1nWRw8VcnqwMpPyRsScimMdO4kVZsyecM1JF8utZlJ/mktOGMOM1Q
 OvHZA7Zx51t3SQhn0VMQXexutLXU1DQRH1JIBwZ1+6TYVBHhjZ6BUthjN
 NcQbj7deZuMHknES1pro1VFaTjbeva2BXenGor679I9nZ1baFiwIqobxi g==;
X-CSE-ConnectionGUID: 3xX1kb1vTSeCWezElVY21A==
X-CSE-MsgGUID: iFCc5oD4QDicxA2o8CwUlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="77437727"
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="77437727"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 02:58:59 -0800
X-CSE-ConnectionGUID: zO4Jc1cCSsusV+T75tyXXQ==
X-CSE-MsgGUID: fHEJZWUIRwu5GFOVizZ4OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="217947692"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 02:59:00 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 02:58:58 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 02:58:58 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.52) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 02:58:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B/fvLhZFkVEeXvVnMJM9rLCa2UVMpzkEgfz74ZNtpxOYx74p9LAecczDh5QDkpODNEaipjM66N2+sRBQZ95GR8elBgaASpCMotyLCBrYBaLKuzvZnOmL5wxyfNIavL1/YPOVSTw2cvY/1WKckU1i2kclp5myjITNh0yDqciCbNjEEMV2nEV/7162ES73pP4Ipp2WrH/r8dtukE6QfrLxF+5PHrhu5vn4JRBOgfkJB7Z5FDrWqv7j/Ebe6RDHGFfHvK5TfmxunBB3AGMASM9W8bw5oSrwGlSbfq3hjBHs06vqJY5PJLFx5Jafl63j00deKxXGuOd/KaZaGz9zreJB7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ftskUCJWkMcEkr8H9O+EMiR7tmeKhyuDeNr3UeE6qmw=;
 b=MQHlwRgswCHQ2IF689kmswoK9P+HaGKjSDoJLsHIcthWDijSLbbT4CC6rqaVD3oLw7a20NVIj2DIFB3mUS0HNmc+9N66JIMhWucVDaBZcVrxKuY2InOCBp/98qUzh1DmVOfik4+Nh7YhkEh/f05dyZLmSImDyPbUipzBhsOcmMomJfkyJQr3nCiWAjSmBhyKAPe29C8kU0fQMTSWp5rkX71VBXHEw6JC6weP8VSiDgZDNUDGwn3XEfg771OCrh/et030aYDKl2aZ19FNS9Sixsx9brdlfCg4wdW9lbzUDnKO7epenFHh4zIufGTkiVchN+DiH+ms6e4ne/pKkkkxHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 PH0PR11MB7470.namprd11.prod.outlook.com (2603:10b6:510:288::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.22; Tue, 3 Mar 2026 10:58:56 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%7]) with mapi id 15.20.9654.022; Tue, 3 Mar 2026
 10:58:56 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCHv3 2/2] drm/i915/dp: Rename alpm_init to alpm_init_dpcd
Thread-Topic: [PATCHv3 2/2] drm/i915/dp: Rename alpm_init to alpm_init_dpcd
Thread-Index: AQHcqkhQtuPdWIxY2keC8myCOmPF3LWcnPOg
Date: Tue, 3 Mar 2026 10:58:55 +0000
Message-ID: <DS0PR11MB8049F77A2C17C4E059522846F97FA@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260302132602.480408-1-arun.r.murthy@intel.com>
 <20260302132602.480408-2-arun.r.murthy@intel.com>
In-Reply-To: <20260302132602.480408-2-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|PH0PR11MB7470:EE_
x-ms-office365-filtering-correlation-id: 6a51b94e-34de-4cca-32f3-08de7913dd82
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: KNEoBMrFxqcsdV3Je4kPRlsfd+8wH6Wv8BZ+UC6Q604pE2CIEYKGpeooDg4RNTNfMIXbDLr72pmtkbqMmn/M7WsQr6aiKK8nx0CcfN19sSLEqxsaTtqzrLkxlNpUDpVJRFrG7n8Pfp/t7ffIs0VY1YgZBsqt8OSjrkiVx8Ji36Kg/ICb2ncW7WyW6sUOsWZFaCK+5hP2I1Ie85LCZC6mB0EO3CTpB4Ph5xqSIYnEUntr/8c8mfPtQ7WZVQ2YRBUsBiIf1kVZUfssM7mMBJWdYg8yr5H/LANDzo0VKwlAvQ/6jZk0LxgYvHWdapoHhjRWQxEiKm9WFLy0HJ2Cbz0mb3sXb+owZ+XOIKDPh4RT4Uy/uRLhO46ro0acYSz6RTJ097axfORmO4vmB1FKWt8hjjURpKL6ax2l2ZvUgwn0PEpQhoGZztV2alj0P6z2wRZ8qRFo81l/xWQJvvYJclfMF3HK87ty2LqkODrjXz0cpEEvJB+uzftx4qG/fdutFOp03l11avmP+aVIahCMFaoeuqkqHzJzZkLG5GZEASMON38QBfPFVmZwygzJH9AoSauRdmmLhFm7qOubBcP9jSaCR/XwiIIN3XTpwk5UI2q0EJlEqii0ECPaEW+5Q8R7iXbvlGhuq7GiInwNhUMnFiZVp1Hddqx0Tg4THg50Z5WoCDrsYvRHiLHBh+87zMGeJVQCX3DEzsOP7xDsPrx2r5zjeb5MrRVEdpNWpOfFdHENjiz4FR9NP0nM3DAafYWO6VT2FPVacJ3I8qAeLkjOh0DfaQ2AwapcsrIjXzK5N1x8nVc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OoZwamYSyycZOeso++QcCtfFljoW0ilVXX8Qw99vYzWRgC/UG+FpmqkTwFPE?=
 =?us-ascii?Q?C5wkIgsyt7GgW88Y/jhb25iVq8vJkKq0u93UmoBGxcaLqBZ1tuW3qjhOarSn?=
 =?us-ascii?Q?s1rM8H1hR/JRkV09hIf7FdQdEMI9L8s6Yn/t679LEFkYNkwnW0jHJYWDVNST?=
 =?us-ascii?Q?oHocNNaPsqF9AX7Uv1khDM66SL+H8f7QRycRPipbHXdF7Vhi1UJ32uDNN9lo?=
 =?us-ascii?Q?tbRe33AgrVMaq6O/ZSu/Hw/j7lStFjiGWPIJdQR7JUlOxNkv4SkJA0gnl2TR?=
 =?us-ascii?Q?C4VwfB8ntk4eMFVugUfVxVD8PeSRUgr1MVWA5SFCZVtDsQ1e0P7sl8CV/P05?=
 =?us-ascii?Q?tp3vfL5c4JIjytkbv6kFXB2YAtV+EHpm56DRqkhKh+q/9Dsc1YMw6R67av0+?=
 =?us-ascii?Q?i/mwCstY7N444Q1/nljxadUoQe/1MK+CQqmv9ghyNe6P+8N8SpTrNvBX3iv/?=
 =?us-ascii?Q?L3BU9f/9kDjbl3l93mamwEkmizkQ1hGlIwrT9MJmhL05C7fG1nB//GEwkyWj?=
 =?us-ascii?Q?4T4Yof6z2Lk1rnuiP4KqNx2bsnwPbsWMNBp87dvq6bLiQNWayilvZfxsIYU0?=
 =?us-ascii?Q?LO7AGKBmhYiI+V041EUsTPhmcaq4M7cQDDCmDRAJwquZhORv0t+Y4Smu5spC?=
 =?us-ascii?Q?ZyME+7OSBe+ATITNAp5D5MrTKH1cn5Sa6Mcox/Hl2nAawrx1Vn+GOsRsPSDx?=
 =?us-ascii?Q?KZmzraP9o9EcrrAJv2X4VXdFAy8yC4Hzh+etAKetConmPK9NW6FvAhuxrdNs?=
 =?us-ascii?Q?ePK+JhiMrYboAwPC8tdsnQZsM9DOJiCccYCB2/V70oYxy6SOckrzmHiKdxxk?=
 =?us-ascii?Q?6CsIPCXP3872fJSVPoPVCsucK7D5+mEAJYm82upZHehemdkw+WKcWq3H2pLi?=
 =?us-ascii?Q?UJWi8D1UZ1GJGNbhS2GTxTM3xWXz+H3IYmUvVdsV7920iA/qnfpsbmcbQHhm?=
 =?us-ascii?Q?sBsmBuc4ljMz2JCsp/VU3fE/QydkH+naglRwDDNbkEU/9hGkR3DlnT8MIDUm?=
 =?us-ascii?Q?XOw7B5g9h80Qnk7Ondmra9eXgTRPiB+RpACcSmCZrcJRCvXYrfsJnlJWdvXw?=
 =?us-ascii?Q?FS3l0i/lImJJ7Cs+tRUw1vh9fIUOYlow/9+esX1f77SRSvS5kgxBn4FEVzWh?=
 =?us-ascii?Q?0FxdgYCch4canBLgDKEF7X7WgHA/o1D8/F5GWbe/xm4p8ubM2K6NPtk5XcL+?=
 =?us-ascii?Q?INoh/tYCJJn4xPBlqkXSxCcb2bALqCOetH286w7Bf8Y9Hvw+emiSqzNrnaKU?=
 =?us-ascii?Q?7bgqnNLCiBWXRZi+VPR4+ujh2LRAZzwji/6+3MxJWKUceAoLunBxlb/akNGj?=
 =?us-ascii?Q?r/8rw17qkUJt+QUm/szfx6iDRchdmwEyydw2rGJ+Ywo6VUncf3OTNXtGMyeM?=
 =?us-ascii?Q?CEmGfqWjsTZFPtvrGvwhupE6UxQpCUTLBs6ilHnfmqjVo2GSgY8IeKxCS8DF?=
 =?us-ascii?Q?wtRraiK4nFDnL/PWnDAuxFhAcREDXrDS/N+ztGeDzqTp1nwK6sJafj96cUbX?=
 =?us-ascii?Q?0ubhjC9Au7Wmcs7KB85gQZyI4raI4EBHjE92SOz/6Yyq9E6gKQEzVLvq+Onn?=
 =?us-ascii?Q?ewdf4ZXSxNiEpvyIp7M35gg4K1/9PxsMpL9H+5H/H1E0dRNCmkt6IdP8TwYY?=
 =?us-ascii?Q?skEjBAX8NqZ8GtHET9/4ZVI4SwZyKENgsUqbEJi9vm47UZ94T4ARxUCYiCp5?=
 =?us-ascii?Q?xChkd5bl84s/9HDE7tCYk1nO+JJCm4lazQtTnboF5S51Vh7o7/R9VErbRwML?=
 =?us-ascii?Q?UQ0pF73KvQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a51b94e-34de-4cca-32f3-08de7913dd82
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2026 10:58:56.0516 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q69Jz90jU6G9ydzqKufBZFpVm5KPbH6Zg4NgGVL+h14nz82Alg/Ai4yeh/m+OvXfAEIp08iQ1aYLY4vMc+GATQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7470
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
X-Rspamd-Queue-Id: 9E6671ED343
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DS0PR11MB8049.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Hi,

> -----Original Message-----
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Monday, March 2, 2026 6:56 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Nikula, Jani <jani.nikula@intel.com>;
> Hogander, Jouni <jouni.hogander@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>
> Subject: [PATCHv3 2/2] drm/i915/dp: Rename alpm_init to alpm_init_dpcd
>=20
> In the function intel_alpm_init we are reading the ALPM_CAPABILITIES and
> storing them in intel_dp, so appending the function name to _dpcd so as t=
o
> align with other function such as intel_psr_init_dpcd referenced in the s=
ame
> function.
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 2 +-
> drivers/gpu/drm/i915/display/intel_alpm.h | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c   | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> b/drivers/gpu/drm/i915/display/intel_alpm.c
> index b3334bc4d0f9..8ba7463d7fe1 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -42,7 +42,7 @@ bool intel_alpm_is_alpm_aux_less(struct intel_dp
> *intel_dp,
>  		(crtc_state->has_lobf &&
> intel_alpm_aux_less_wake_supported(intel_dp));
>  }
>=20
> -void intel_alpm_init(struct intel_dp *intel_dp)
> +void intel_alpm_init_dpcd(struct intel_dp *intel_dp)

IMO, intel_alpm_init() will be good place to do mutex_init() and can have a=
 separate intel_alpm_init_dpcd() which will be part of intel_edp_init_dpcd(=
).

Regards,
Animesh

>  {
>  	u8 dpcd;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h
> b/drivers/gpu/drm/i915/display/intel_alpm.h
> index 1cf70668ab1b..a24a7a03bdaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> @@ -15,7 +15,7 @@ struct intel_connector;  struct intel_atomic_state;
> struct intel_crtc;
>=20
> -void intel_alpm_init(struct intel_dp *intel_dp);
> +void intel_alpm_init_dpcd(struct intel_dp *intel_dp);
>  bool intel_alpm_compute_params(struct intel_dp *intel_dp,
>  			       struct intel_crtc_state *crtc_state);  void
> intel_alpm_lobf_compute_config(struct intel_dp *intel_dp, diff --git
> a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1544758c0bbc..4e9df88b90cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4749,7 +4749,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp,
> struct intel_connector *connector
>  	intel_dp_init_source_oui(intel_dp);
>=20
>  	/* Read ALPM DPCD caps before reading the PSR CAPS */
> -	intel_alpm_init(intel_dp);
> +	intel_alpm_init_dpcd(intel_dp);
>=20
>  	/*
>  	 * This has to be called after intel_dp->edp_dpcd is filled, PSR checks
> --
> 2.25.1

