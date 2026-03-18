Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LLoG7sPumk2RAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 03:36:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3312B53A1
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 03:36:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 697B110E6B0;
	Wed, 18 Mar 2026 02:36:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GzTn6DYR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1D6A10E6B0;
 Wed, 18 Mar 2026 02:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773801398; x=1805337398;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JbG9mSZYs2kJAzkMoJHAkHrlr//wOWjosLnyiVPtpZU=;
 b=GzTn6DYRXJaYRx0ZrecyNnWv3SwmETWXeuO1q1GrH0N9wPTiMqTgTApm
 EUJxYL0YTianTmPRaJiL7Dci+veAlZNg0aAcEUTbUIxNPbxp+IRcyWvni
 OdSw5ZhKhyMoMLDe2/kKdeCq/McDbV7KKovJ64dNYUAVyPyjGfuRKSw25
 bKwwVIA2uplq6M1Uj932svcQ8TVzg3QE0Kz8tMIMtOpvJhQgDkjnU0YM7
 SNrhNtpkC6MbW4D3IrgnqUFXeATNbjQFNkrSN1hE/s10IqIoGiIlIF7cN
 XZ3THmGKxZg+Rd2N0TccVRHKpS7cazJdZHF17uH9qIR9RSgTwrXlVR0+G w==;
X-CSE-ConnectionGUID: vkYOpQ6RQ1apNX1ubphxiQ==
X-CSE-MsgGUID: VpJVliMBT2qIvsp+nzf2xA==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="74028391"
X-IronPort-AV: E=Sophos;i="6.23,126,1770624000"; d="scan'208";a="74028391"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 19:36:38 -0700
X-CSE-ConnectionGUID: 9MFxkUXxTqWIEnjnny4/sQ==
X-CSE-MsgGUID: WqPSmTiTSFymtuo+vslutA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,126,1770624000"; d="scan'208";a="219537268"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 19:36:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 17 Mar 2026 19:36:37 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 17 Mar 2026 19:36:37 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.62) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 17 Mar 2026 19:36:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XXnruVhZQANNjGX/dixLoKYLmNsbxzA/aUd6Dc0Xx4SZ+6HOB7EtGA2N9Rn5df6b300g6tm20Htw0DGL2qdFbqZmM0b7dUsidM4TvcKSeEAiwfJVgg3Rvp7T6LQZjgg8SXLW75VF/UqBxH5ht/opuKtjmpv1xINLZNOqCFFoLFXUD/FRVzbdSF/y606ZstesYP3d1/jUcm/dVXj0fVzqAUccTIZoyNwhBwz8H5dItN8f2FC4Ux/7aI2vtPzgaBSOySflZQbzkBy5Y+io5dSctAgsPHeOZb6RDJ32T3i8iw/QHYMwFuh0h18Yl8UtDptrdf5M07TsJ4D57nrRbqJMuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PxKSwThc2MCS0CH8SIVFvdxpMROAWAN7Kl0Llx+QFsw=;
 b=GNUUqGifnQve+F3itV3uizo/mTDFnFeHwdGutGt6tdrxJtBM6kAy3WCnhPw+T+nYVumayGohSlTYurlT8CubKlypqJgIG5IPVG1Xk/5WlhEikmD/LKb+01IA1vXu0fhzoKB//IOy2bHBn12f4C+jc/fGVy+c06rxlEeNdsH/OwY1ea34iW5D1qkSJlbRPh1m5jOkDd8RvzSkrx5xPRy1Lh23CGVNxQ6JGpcTUtDVu8/iNBKYasdT1YHiQqRwD386CMn2jOKO9LxZV/eYQPjdy/hbXQYGrosAFyRO4xr9fTVHXsS6tU/LQUuq3XU8mkl4X7+HXfFe/z67r/8bD9vB1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW5PR11MB5857.namprd11.prod.outlook.com
 (2603:10b6:303:19d::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Wed, 18 Mar
 2026 02:36:28 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9723.008; Wed, 18 Mar 2026
 02:36:28 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Samala, Pranay" <pranay.samala@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2] drm/i915/backlight: Check if VESA backlight is possible
Thread-Topic: [PATCH v2] drm/i915/backlight: Check if VESA backlight is
 possible
Thread-Index: AQHctPOznMHbMUTTy0yiA9LiOAhF7LWwrggAgALn/dA=
Date: Wed, 18 Mar 2026 02:36:27 +0000
Message-ID: <DM3PPF208195D8D5A0A6D7DC83BE029DA14E34EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260309053956.3966624-1-suraj.kandpal@intel.com>
 <20260316031850.81794-1-suraj.kandpal@intel.com>
 <BL1PR11MB605085B725B919EAF8EA7745E740A@BL1PR11MB6050.namprd11.prod.outlook.com>
In-Reply-To: <BL1PR11MB605085B725B919EAF8EA7745E740A@BL1PR11MB6050.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW5PR11MB5857:EE_
x-ms-office365-filtering-correlation-id: 0ee845f9-eaa4-4222-7c1c-08de84972808
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: NWx+KRCePsoR2alZFoprSrMq6WbVM+95Z982nvM24QWglU39y7eQwqnkqmmNgaFXYc1sp+2bFeaxdoZXOWOLzXzHGNVL+VDwTlsA3OTtcOs6LWrp0ZUBGZfZYvvSxHZPsolHCh1Khiyi32bFUj9CUwYMdjLVd6OOK9UMf+VgPXxASQeSHLkt9BCIBF0VEVEaRqPlzNUOkQlHcTKPqdSfR//njY3iZjMqLs5KdmAofwJjzTYqK2x3iWvlKvG8xcpMudi9V4mPm800uWZyowmUbw/TcJHcsqyDMHlIqK9lvoVIMJaj0SqftuypKvV/QULIscvKIiz5wBVwRzCI5Thj6iOcXa3R+uMeeKrS5WC7Tju0wiWw4W+BSX6QEIfvjmBBoOCXZyHhO6YuLsJqCBHiMlDB810HNGNwtc9fWFGpdB25VYyfW5URI1TOnfNbi8Mf11L3oZYMppiDI+D40mU+WwQkvquUTE6jqWEKtGn5ctksCp7GbwFzsZx9i5NLg/X3hTejH+HB35r2KetWmgAnL56I4jBHBX4c4XH4b2m+CwuOT2NNvVclgyjEItKJ0JtWLZt6IuTn9/m3it2LbzSB4Kb5A7FsNBh7R8NRakAlaydam0pwjD2RTNXop/kqahOZhui4szlOTY1uUsEZAK/fn5BvpxA6z54NYnqVoNWGVV8c5W/CkrnX+x9KVvIf1k1RK+cDGodaGssP2c2hEXViH/gsHkfkdREUI2dmUJiq6Mg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Y4IrDd9zABxCWJi7dnyijPq5mRuPgxs0TGrI5v5XfkU8M9ujfNG22LgkP2RO?=
 =?us-ascii?Q?4KGB4g9iMVwRXTdEMfwIvLckHz06vZBhR82qav/E+updC3SjuV9Yp6QhSI71?=
 =?us-ascii?Q?NeoVlE3E9htJW4Wc1eirjkK7LanoioTeHoV7bB9Gw5YT+j55VqRzSGkXYwqi?=
 =?us-ascii?Q?H6PEH0e5XnByYBQCr1V3bC1wFBZdPjuPIba2El6mk4dAD9/xg2IiqTi7lQzr?=
 =?us-ascii?Q?BxZ6mejIVp3T8FkFLZbXEi3EHpuz5iK7HlFMqukAdkuk4Z29uiIsfoRPX72J?=
 =?us-ascii?Q?/wgg5u17OlhW8/ACi+tvUw/Ctt6LBByCg30Q86abXSZ+q3D//ZOv+n0aPBGd?=
 =?us-ascii?Q?zzmQ46rwj7GAhn16U0P8BoNZ2QyK7wgZ8MoFifVJMOt9pg+z54gcZltvRaCh?=
 =?us-ascii?Q?7mxMAVf/HqSAjp734S4nGDGifku+9FP+h6LpLD86tFip80HNzIJDZr3CZV/V?=
 =?us-ascii?Q?mp12DEKn/tBJREuUMHkP8EXBRnbEB+o7XoNehWSiIrZz41Mb+HdZTZosiUY1?=
 =?us-ascii?Q?5kzu7VNNpFK5mgRxro/Rbq+7tk8j/cf0q9QYr8vIAZuET4PZqfpkF4+MlSER?=
 =?us-ascii?Q?j5Qw5p0nKNFIxG0nh+slY7uVMg4I241C/PGhc79Z4LEwvk/AQd5bfeJbzFfe?=
 =?us-ascii?Q?MESo9MWjDnJi2iMzrR1emhEuDsaG7p3xt2/nrz2tfM21vuVI2FIVCP8QA/IS?=
 =?us-ascii?Q?s0FQz8dO4rD7M001da0IK3NXN2znU6HqttoQUfVBViQSqJ+RffYB8slnE/Yh?=
 =?us-ascii?Q?EvRkvbV+lX8x1rm6PwmtIBlMXAsjjqaacZ/DNsZH+Ix2sxEJkUQSMMGVOoPj?=
 =?us-ascii?Q?+Yn2BRifLTx/Q/r5d0TyfFZ1chWiFVRqjb/zWHaFHMsYQPLep0v7wAXEnk0Q?=
 =?us-ascii?Q?gf5rAkDgH9iWg9GNMGiR0wHb4GFCtPh9Epk5t51NTIR60turcj23OjfIKzij?=
 =?us-ascii?Q?Vw7Ule+hS1SSPhFh/MjAPXmSKA1EuNH3Ebqb82H0Cc1i81PJicRz080j2hQk?=
 =?us-ascii?Q?LXDkxcXlSifdr5bbrjhf1NA5K9I7/G6ZjHvsPXMDEEFk6reYQ+RESGcDkqpY?=
 =?us-ascii?Q?aXjrTbm7+5cKssezExkyQGBEFUQUYH98OloY0aQcbui/6BbBf3Sxn0n16lC9?=
 =?us-ascii?Q?DtpMAd0bFwRjQmxA1nr/TWM5OBJ5uJbFbxrV15a342k5P6WdhVxhRyq/lYAj?=
 =?us-ascii?Q?csbxborYivgbG/lgIIYrahx/6piBHRqokwB2FB2OoHVqCwpYTmGO6ws7VM2s?=
 =?us-ascii?Q?euGmRPc1y2c6D9o80gywm44lUo4pN/VhELYTqGfR0s1rsKGS16BTwKlwf3Ax?=
 =?us-ascii?Q?PaZhXgeXbusjIjI/ih29UsuPMdv0wv1W6dHhiAStu4PrAMh1YiSS0VgtYFFd?=
 =?us-ascii?Q?kztIIdTxba27t4bZ4V4gkKZc80yfoD3PdQEZTM/IVfuvNFrvI9jrFjtUrFzL?=
 =?us-ascii?Q?zd8ztSdV3PGBH0iy2fQDhtPgH9qYkEramYFnYmDD0fjxuHcFMIMq3bLR20eY?=
 =?us-ascii?Q?HNWgW447/ZR/BXZTUHMkwACZfI4Bh6gVVlJvfwtdgHPVlE2Mo5okSd6nC4sh?=
 =?us-ascii?Q?zbH+vH1x+Y38YK+iT4wpEGDmG74EAX8iREQuXWvORNHAcFv7J0N3JzhhoZww?=
 =?us-ascii?Q?LKh5KWLjXTMCpZvbyB3YbW9coi6gBvWa7Z5jxDUkGaN65rzyGAtZDYOAIiXy?=
 =?us-ascii?Q?UhsHhIjPxalVjSuizMLYDUbBMQU1DUsIIwVe5WX+f+NAHAQpE3kc9S3BYof0?=
 =?us-ascii?Q?HZ+ecFHCaw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: cYbxVniFQmEB3jyju4kxjseSP0f8Xp+iGWYXUsPk5PLKqEZk8bmj29ZDZo0jJCZH4khgfxqFY9iObWuZSKf+vTePNDhRTjYDd+zr6xdeLomz/P/v83tDO+aXxDuccr5EnlSqewnZ0hEKpqd1uwcvq47jTi3VLr47hjnbsbNboOsyKESwCm/FqVXrkG8Q2HUEr7fdHAbG1J6pr29GEj7f4YhWHkbJHOEFKsBQky2bjHXhHjrqRUdeUjFUyeCBkP8qFbx0ko/7dz2pRZo07hDkmxgwkGbFAElcrgeMto9iIqComGmK+pjw5gZm1w8Bi/IdccZv8THKqpdM2AJTg4wGhw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ee845f9-eaa4-4222-7c1c-08de84972808
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2026 02:36:27.9505 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d812jugrtmAuipgqW0OtRG+VdYOiYviH0N78FKQi8GiKDPNn79W8CngRCj0LigskGw/rsG7H0DrICnjkDyBXoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5857
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gitlab.freedesktop.org:url,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BE3312B53A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Samala, Pranay <pranay.samala@intel.com>
> Sent: Monday, March 16, 2026 11:43 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Subject: RE: [PATCH v2] drm/i915/backlight: Check if VESA backlight is po=
ssible
>=20
> Hi Suraj,
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Monday, March 16, 2026 8:49 AM
> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Samala, Pranay <pranay.samala@intel.com>; Kandpal, Suraj
> > <suraj.kandpal@intel.com>
> > Subject: [PATCH v2] drm/i915/backlight: Check if VESA backlight is
> > possible
> >
> > Check if BACKLIGHT_BRIGHTNESS_AUX_SET_CAPABLE bit is set then
> > EDP_PWMGEN_BIT_COUNT_CAP_MIN and
> EDP_PWMGEN_BIT_COUNT_CAP_MAX follow
> > the eDP 1.4b Section 10.3.
> > Which states min should be >=3D 1 and max should be >=3D min. Some lega=
cy
> > panels do not follow this properly. They set the
> > BACKLIGHT_BRIGHTNESS_AUX_SET_CAPABLE bit while not correctly
> > populating the min and max fields leading to a 0 max value.
> >
> > Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7514
> > Fixes: 40d2f5820951 ("drm/i915/backlight: Remove try_vesa_interface")
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> Changes LGTM,
> Reviewed-by: Pranay Samala <pranay.samala@intel.com>
>=20

Thanks for the review this is now pushed to din

> > ---
> >
> > v1 -> v2:
> > - Remove aux_set variable (Pranay)
> > - Fix commit message (Pranay)
> >
> >  .../drm/i915/display/intel_dp_aux_backlight.c | 32
> > ++++++++++++++++++-
> >  1 file changed, 31 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index a7b186d0e3c4..d0c76632a946 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -609,6 +609,34 @@ static int
> > intel_dp_aux_vesa_setup_backlight(struct
> > intel_connector *connector,
> >  	return 0;
> >  }
> >
> > +static bool
> > +check_if_vesa_backlight_possible(struct intel_dp *intel_dp) {
> > +	int ret;
> > +	u8 bit_min, bit_max;
> > +
> > +	if (!(intel_dp->edp_dpcd[2] &
> > DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP))
> > +		return true;
> > +
> > +	ret =3D drm_dp_dpcd_read_byte(&intel_dp->aux,
> > DP_EDP_PWMGEN_BIT_COUNT_CAP_MIN, &bit_min);
> > +	if (ret < 0)
> > +		return false;
> > +
> > +	bit_min &=3D DP_EDP_PWMGEN_BIT_COUNT_MASK;
> > +	if (bit_min < 1)
> > +		return false;
> > +
> > +	ret =3D drm_dp_dpcd_read_byte(&intel_dp->aux,
> > DP_EDP_PWMGEN_BIT_COUNT_CAP_MAX, &bit_max);
> > +	if (ret < 0)
> > +		return false;
> > +
> > +	bit_max &=3D DP_EDP_PWMGEN_BIT_COUNT_MASK;
> > +	if (bit_max < bit_min)
> > +		return false;
> > +
> > +	return true;
> > +}
> > +
> >  static bool
> >  intel_dp_aux_supports_vesa_backlight(struct intel_connector
> > *connector)  { @@ -625,12 +653,14 @@
> > intel_dp_aux_supports_vesa_backlight(struct
> > intel_connector *connector)
> >  		return true;
> >  	}
> >
> > -	if (drm_edp_backlight_supported(intel_dp->edp_dpcd)) {
> > +	if (drm_edp_backlight_supported(intel_dp->edp_dpcd) &&
> > +	    check_if_vesa_backlight_possible(intel_dp)) {
> >  		drm_dbg_kms(display->drm,
> >  			    "[CONNECTOR:%d:%s] AUX Backlight Control
> Supported!\n",
> >  			    connector->base.base.id, connector->base.name);
> >  		return true;
> >  	}
> > +
> >  	return false;
> >  }
> >
> > --
> > 2.34.1

