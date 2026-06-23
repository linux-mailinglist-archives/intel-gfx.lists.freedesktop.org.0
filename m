Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kHV/OaAVOmrQ1AcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 07:12:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 431566B41E2
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 07:12:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HW7MjTD0;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9731B10E942;
	Tue, 23 Jun 2026 05:11:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D02E10E941;
 Tue, 23 Jun 2026 05:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782191515; x=1813727515;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=b1tSgyu+8qGd3wNLcGe5AmiZAL0Ux9qup5NlfEHQvwo=;
 b=HW7MjTD04LopVLn3ePgw6em0Ilf7jh3DrdSJwkp/L7K0RNEPum6Vx9A/
 dgmQ3xggyYBoPMoVEUAUzVDvb8B2ZkqWt6LR8hmI+vnfMHF89+INv/mSJ
 VEpzyKW6/pisY58kDH5Fy9vrNJ3b3QVxC8mGNy1n+bakCaS4va58+h89S
 9gKpUInx44F2rXnBCFSvO7xTThsSz8iYU8VvOIsNgIvlJ77ZDaOsV5h+R
 sr2yVUECeIpQQVHm57pFXiqZ0ziz7fFPVaRPJwNHoSaCEH1vMGI4msLB6
 QDBpa/tFPavuV/JuOVo7rTi9pcidtUmGimYiu2I7XrPwN2pv0aXogrjTX g==;
X-CSE-ConnectionGUID: 1B6oSIGYTmqkm4Oc7IkhCA==
X-CSE-MsgGUID: BwU5qj8CSzmGqJ8VHHBipg==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="85476949"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="85476949"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 22:11:55 -0700
X-CSE-ConnectionGUID: CPCmyIAIR/aKmggeckU2Jw==
X-CSE-MsgGUID: 3x0DNl30QdaVRZvRAAHyoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="248268959"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 22:11:54 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 22:11:54 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 22:11:54 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.57)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 22:11:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VbChOJXmHK1dfePgn7XtZAqWPzboiT9HS0hdQvwWrlXpXdwU/nnEo+TddFMypq1LkAV54t6lEOkVBPjtjcBkAZoU8nm2hH3zJQloQ8PqqMT9T9VEFwWzH8UIBKuP1f9KLGW0Tux7co+lQ13o1k4pKdA8yKt7pPjkbaboZVyFQYRHh8l4RknjSApBMN8CKuFiI+lsnSWBOTe7qmYvf6K51tVwUxhp/yywt/N2U5VDaV1evAVzR0DVBID2jtnd9Z8C4hi+hmKehwPAXnst7VeKir198f96PcVUpn4p/qKOdfK9zTIQtRWg/L2ZX/ZUD2B7d3e0XVXkOTh53Va+cpSHWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5CURzU8BjqpM87yM2VRbTPZSHugKs9CDovyEcLDy9Sg=;
 b=fool/I1hvbatII8ndTqPLsfqCo+WCO5i7mYEb8jxiHCVI+wpk+CPdWFm4se55M4YGgpDrI2lrIhyfSzZHeuJ36JZ07B8KfDQ22fWdgunVEHRPpJiBfqCWs1VDspr3ahzzSwIR3/M6XVHrJNoPqr83ccM+39TN4BHbwAvSlEZXrAEBTSaFdCmzslGv15kjzmb38pc8KQd2QAlcGdDhJwmFTSB9qzTuyCb2j1N/8GRyQVnNyx+Y2E1olRvZss0E5BfyJsh+idYBribQ2I+To7bB/aPu+bGKMRQsDKSKYzfIlU6LgSJiq3B3JncO18rL3/RYZqSt64i2Icyofpsnk2ygA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by MN0PR11MB5964.namprd11.prod.outlook.com (2603:10b6:208:373::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.12; Tue, 23 Jun
 2026 05:11:51 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%3]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 05:11:50 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 12/28] drm/i915/dp_link_caps: Rename helper updating
 the link configurations
Thread-Topic: [PATCH v2 12/28] drm/i915/dp_link_caps: Rename helper updating
 the link configurations
Thread-Index: AQHc/c1yD3N2XM/aC02vDeIJ2hqWbLZLofAQ
Date: Tue, 23 Jun 2026 05:11:50 +0000
Message-ID: <IA1PR11MB64679C6A41F792DE33E44D45E3EE2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-13-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-13-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|MN0PR11MB5964:EE_
x-ms-office365-filtering-correlation-id: da54d2b5-c66b-4baf-9e71-08ded0e5ef03
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|23010399003|1800799024|366016|38070700021|18002099003|6133799003|22082099003|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: eswva7BUDhuHC12xyeH5E+wTIbZiWPUFmDqvoS7Lsc4drL306sB/W1JHhulH+Yr1uz2fOS/BY+aZ3P51BzSQgeXoxUfUn6UwCf0L8vxzEln8pHNIWyq5/dSdmWVQR8Z+1RlfV3QhgDmg+/nYRnI1bdKPeHb39rQOyHarpe7QmohFgMX7YSrfPZX8HYVc5Lco5HYw1TKXwkrdyLn/mIzbHcVWBBosKzHoW/54+KZyG+6cGxtDcWbJIlX5+Vo4dqTlujBZNP563kNUmJyhWK2J9DCgaT1wFnPuIC0AfF0eYnFmB5HPhVSEYK69h7A19AHOQLISuXgNPkVRPNEWCpl281KFqkiiFqD39+ctp14d6ZakQ/f2w5kj9KeeMlx0Ty/chGhcA7ATyuSu8VUC6sDck3muBKKBaZTNxMZZJEQizY9ZXuYIzZo34WV4TCp9HYNnZWPwk2tR/VpPXUv8q3gAMYXsyvbKJHHv0ma6s1du+D7poTudIBRKkie+YwAzpDtJ8HZxah/fZMGWg6JQuZycznHEcherby78AlY2xNYm7qngomMvHuiuoh10afHY+PnfA2bXtkS3caNAMJC6aDZhLUWplfNmP+7MfBn2pBbruBXpwJtP7FAzQ6Rp+2WRdSHYCmhYZn3mUSN9pv4YESQzIp0KykBSAxjswuvovlbcZUkUSIo2EZyyBAKEIEkaRkVYKYy5qkzdRnkwrBVqv2hXEZOxgO67QuHwQOfLWkasF10=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(1800799024)(366016)(38070700021)(18002099003)(6133799003)(22082099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fT18oU1FnhQn6fwup267CEPAcCf67AYXphWdBJ7FDMM0QCVSpbmSPegocKJ9?=
 =?us-ascii?Q?bObGWHXN3FjjHUZ83A6v0oL1AO7RGVgIdGtkVfQxmCrf87y/KFiiCGfp4Rv4?=
 =?us-ascii?Q?E7oZ2wFWe5eCxmtyDb0d9uDOqJ13iL7TlnOGG/PlxyOvGiwuRNgbrK/AH+7m?=
 =?us-ascii?Q?s+V03epmu8L96cnaXoZQtxrkMZAaYOElncDN9EpLOSIQqC+lYeKJaq537RQ5?=
 =?us-ascii?Q?PXsuSzkMVqzWv6BJOVc+Oao3490J71vGG/aXTX6iZDiMkicYT+GP53ye3ohv?=
 =?us-ascii?Q?DXyg2Ah5fd9LiDw4zrdnS+46zLYBnhmop/xUsDzPx0PrEqat7KKFhS1kPHC6?=
 =?us-ascii?Q?gqZczKJ5ewXyg2c/vRu7YNIV2U1zDtEf1n/sgIXQgI8t25OZVrwBUbfB8ukf?=
 =?us-ascii?Q?xfxtM0BxnUO7X5asI9pdlJvO36TZgP7N0kMtfIlMN1l3q4Yz3waGDNODwo3A?=
 =?us-ascii?Q?MOfaXNFm1B+NrQ94k3N1MDK6XI01AxE8VzXIFIxladpVy1eZGMJgBXnxJMc8?=
 =?us-ascii?Q?dTPbtLon5jURi+xHdXF6J8K51LkMb3WymJVF7+XtEJCjFIfhtJu7K5ZIPaaz?=
 =?us-ascii?Q?hsnbuhi/1kmc3KGzwK5FtZmNfsiWxaXT9/xJ/7NcuBvGVbAU+6gFWraQKqfp?=
 =?us-ascii?Q?bIDB3onX/uPzq+affDIgwuuXIEPGXZzV5kX2LYxGIb64B22IUzrW2DYzeDXr?=
 =?us-ascii?Q?YUjcQ5GKVtSzOn7qOGTEWyzUy12VClRuFu3w/fYNHhhPxhPCdXvYz820Vg3i?=
 =?us-ascii?Q?u+V+/FqYpSXP8EkHn0SHZs7AMGQd9J/0621PmDlxRW3EbJpiN+MGyTcbS3aq?=
 =?us-ascii?Q?V9Sgp8IfcH5NCIs057prqQyrnRSzzTv1MFgaDTFXe2a4Np5EaBFD2GuFtqUK?=
 =?us-ascii?Q?cwP8rSotUstXPoKaQ1Z5d+EX5xeJwy9cj4rdRhCDnbxigKAXJ3GaaGuA+CqF?=
 =?us-ascii?Q?OaaB3kS6PCibSdWE1ok8qp5Kx5knTvtm5C6tdePdjKLbFF9SdFtK56zLL+TJ?=
 =?us-ascii?Q?PepOI+aaaNDNg7aiy2nrE/ETegKgsUf42cUQp6PUwVtBzQ+oHA/ti0E3kiZ7?=
 =?us-ascii?Q?KCsPqQGFiqaBBEmHRcBRG3wja5iqgLqc7kDDlF8u5aLs9iK2oqDpOkI6hM2B?=
 =?us-ascii?Q?ctX9Bsy5nbRKf1dOBzUlFdN00eL5JKH12VmSehmnGEDt5Js0nzuExq00FiDC?=
 =?us-ascii?Q?2pmZ1aJcJTAicScq81fPTY1v90+/+FL/xvq6bE32UwV5UbN32Hj3tUMD7Y2F?=
 =?us-ascii?Q?8krx++P37y4YsE8DBRAjDqEn2/aMX+ZeCaC2h2o/QVSmKC1wi6aOQodzXgti?=
 =?us-ascii?Q?TeinYqQgPuXBDKLK/6e5yLx5oG0BgsrTESAunPPZ58+HFpyHja5YHyETDNtk?=
 =?us-ascii?Q?7DqraX0IzK1XanmKl3lGDFZBxu4WN34loGTzU4H2+CB8U4AjVKaV5q1cwxjc?=
 =?us-ascii?Q?gnDtOkKcVNfVi1uUltOH6itOFrkVoxA6XDwsHUkQ0FQDvmEyV9D2URG4hOY8?=
 =?us-ascii?Q?dlt0Des2ZeV/pXtus7gq+L5+okTDvL5i/uLvPDkBWmkFC6vL+Cw6QPi5CMs7?=
 =?us-ascii?Q?pa4FB/2HmHhp3o3WnUiBMSC65eAe+EQSyhQOqowE4tuDqg0v9Z8vqH36wEPB?=
 =?us-ascii?Q?7BvBwlekRUlWi0X3cs7/xht9k6VkIVVOsXekYMzcLd0WRJVR8CFOIDXKwaQU?=
 =?us-ascii?Q?FYmDdU+ztfnMaGV9FhlCAsIGBYOz1qKFNbXav0weXhgwi0nF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: gBQ3yNfVXoIdAON9wFbSF/RJtXwzLC9br/guzjGodMqpT4cwMooWTRbT+gkUQcQtFU/S7jTk30ivRcp8PVHuBOwBRhtU4pjbZrVAhsUi89uzbqqLEJlY11XgBRM9KL5X/P9/VU63otKeqvoN4E1y/tSbEKqNW22pKl6JnMyMwtlNu7ujxMxsIIizHrOgEsYTDC+L6PjULZbPvUtK/ImE+7BOasMlCE527u2/+2H4zgHa4GsSW59wGKtfYv+G9xrn0y+9AnP+HpT7Z77Lrji5Mnb8KrLOluIn6ldGW0aNeGWlBuDN/+q+bnSR6bVUhFcGRxg8CSYdNyvrkip6AbmIQA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da54d2b5-c66b-4baf-9e71-08ded0e5ef03
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2026 05:11:50.8809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u12hz627rDjKZkn3LHaoLFsNKNpILrAFLaLopQneUUcWIeSuECNgfqJddcOiNLFDHkqwRPMrvbuIoRQRXJFwOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5964
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 431566B41E2



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Wednesday, June 17, 2026 1:39 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: [PATCH v2 12/28] drm/i915/dp_link_caps: Rename helper updating
> the link configurations
>=20
> Rename the helper updating link configurations to
> intel_dp_link_caps_update() to better reflect its functionality.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c           | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 2 +-
> drivers/gpu/drm/i915/display/intel_dp_link_caps.h | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index c4b650431eff5..65a13b2f7584d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -720,7 +720,7 @@ static bool intel_dp_set_common_link_params(struct
> intel_dp *intel_dp)
>  	if (intel_dp_set_max_common_lane_count(intel_dp))
>  		params_changed =3D true;
>=20
> -	intel_dp_link_config_init(intel_dp);
> +	intel_dp_link_caps_update(intel_dp);
>=20
>  	return params_changed;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> index 05ec933c74407..2074952931738 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -131,7 +131,7 @@ static int link_config_cmp_by_bw(const void *a, const
> void *b, const void *p)
>  	       intel_dp_link_config_rate(intel_dp, lc_b);  }
>=20
> -void intel_dp_link_config_init(struct intel_dp *intel_dp)
> +void intel_dp_link_caps_update(struct intel_dp *intel_dp)
>  {
>  	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
>  	struct intel_display *display =3D to_intel_display(intel_dp); diff --gi=
t
> a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> index dab956e804b95..aed2122a05d24 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> @@ -20,7 +20,7 @@ void intel_dp_link_caps_get_forced_params(struct
> intel_dp_link_caps *link_caps,  int intel_dp_link_config_index(struct int=
el_dp
> *intel_dp, int link_rate, int lane_count);  void intel_dp_link_config_get=
(struct
> intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
>=20
> -void intel_dp_link_config_init(struct intel_dp *intel_dp);
> +void intel_dp_link_caps_update(struct intel_dp *intel_dp);
>=20
LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>

>  void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
>=20
> --
> 2.49.1

