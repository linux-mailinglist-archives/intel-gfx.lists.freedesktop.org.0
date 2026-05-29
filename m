Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yK8/NMG0GWoRyggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 17:46:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EEA604FD4
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 17:46:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2022112160;
	Fri, 29 May 2026 15:46:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jbf2XciR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18545112160;
 Fri, 29 May 2026 15:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780069567; x=1811605567;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=hGK7BwxCYjRk6JUOCsC6NdAL7AHEQMtmwYX91+HxKSg=;
 b=Jbf2XciRBBaGk71dnlsVsY2PwgqmjrR6ik87Sujp7hvsmeEq3t20S0jU
 HojAlaINB1XCVGKJmZqk7Fc+PoWzOANv4LdPrGHC4Qjm3K2z/wg856p2V
 x4sL5Xjp73QGucURJVmwYqi3UczEiWVPKQGf/LNzAP38bCmf4v/yQoJR8
 tW6uZFtGFsAhGdsxrFIQG/99IEPvN01QpPRFNI7Q79boqxSAk9U4Tb+M1
 qTsnUvRPphCw0CzcrCIDTbAkC6wSXQMmCg5ChRaDIkvLNt5FkxjtEDAU0
 2HoKIJTu5fxjgwasxeFHG5ctNcrwgHIhKNWz8aM6H80G0/Jg9D1tfKpCj w==;
X-CSE-ConnectionGUID: Pc7+FpszRmeFpW/0qok25w==
X-CSE-MsgGUID: 5totqx2iTQWX8y5qs42dVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="92039454"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="92039454"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 08:46:07 -0700
X-CSE-ConnectionGUID: L70FJlpHSFaC8Lfk0XAohg==
X-CSE-MsgGUID: axAbcoMuTcakv7jCwCCj1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="242084609"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 08:46:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 08:46:06 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 29 May 2026 08:46:06 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.69) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 08:46:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EgHGbdbNEXkFgdMniHj1kCu1Evu8jBauyR2etcBI1PnL2n+mOSS8NczOJxLMVHxozwp2vD0DP1PqiYv+2C/8WWcA+kXI7HxbVr6fH1FUZnFrobScfhXyvmGbQBaR65c1f5nnYpoFx98Pydqjd78y2k4GynC0o7/VDYOCIl/3IxXKkMmWKKQ9RZUm8TrgiFDJV+VjI1sft+MJZjL7jkLopRagCMXuii+LmU4s7HSZVHCoyilXWfjjfWkQO/lSm6V0LFoPhVxQBpYPaRV+D3xK2Jb8U27+yuRHaPbyUksnzSUuIU6WQKP2Lt1Kkg6HE7YnZwYziKJxNOYUosQLrlrCcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hGK7BwxCYjRk6JUOCsC6NdAL7AHEQMtmwYX91+HxKSg=;
 b=qD6uTiHUErgzHMBhMahBNEhO4BjfTEzjwKBdJbbe8MxJOw3N660W3HwIwyOQDh1XkdSzovF/gwg9UtOIN1ytAQb5JxM6wvtx55mVETJ3I8AjXWvOz3GqRpgamQCDKmAVFJpYLJFUsWqSnyLsjq9xjmHeVFdywE4QmEJF/gpnoteNmVEC1rm1+HYZeZIqoJlgRm7q5tpUPOfy0nMp6io3Wlfb90vol1gerzlYStZUyIz4fSekKX0ENWAo1YyO7Qo+hsN7sv6kBHJ2F8UxoEQtKoKjql6Wg4PAO59Xc8KoURQCEagRLaawocRCg49fwYFtkMCMq+WSPvk+9QAU7/yXGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DS0PR11MB7629.namprd11.prod.outlook.com (2603:10b6:8:146::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Fri, 29 May
 2026 15:46:02 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%4]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 15:46:02 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Lee,
 Shawn C" <shawn.c.lee@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>
Subject: Re: [PATCH] drm/i915/display: update BW buddy initialization for
 LPDDR4 and LPDDR5
Thread-Topic: [PATCH] drm/i915/display: update BW buddy initialization for
 LPDDR4 and LPDDR5
Thread-Index: AQHc7s+BIHDCVnHvaEuhsaCt0tdmjLYlA3OAgAAcLQCAAAc/AA==
Date: Fri, 29 May 2026 15:46:02 +0000
Message-ID: <d11d0432e1b442ecc187e9f5ef43ab2e42b28947.camel@intel.com>
References: <20260528182601.205595-1-vinod.govindapillai@intel.com>
 <d661dae5343e317fdf286194af4c5e707cbeea97@intel.com>
 <ahmupPZMuah4etPi@intel.com>
In-Reply-To: <ahmupPZMuah4etPi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DS0PR11MB7629:EE_
x-ms-office365-filtering-correlation-id: e701ad43-3bd5-4822-f9f8-08debd99632f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|10070799003|376014|18002099003|22082099003|38070700021|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: wVr09qRW88zUVt8SZUdF0kDGbxcDEd6qZYCklQ/bXuGtR11NI/D2/zIAtQqOElYN2gVKgAhiqZe9DkIuDOsD+4TKFV29MGk6GJpjsUH6JoQlGhFiVuYpkyXxkY8mGsCkLkiHznnTUY5PBebVIasPAM7Fn8wkTLx93BtxZraPilBb+srXAi4GUTRSCEmbTkkc7hE/1xM+hTyaoJA+m+S9smyu1+gVez63D3BKSRXIfGkmMiszeYR2Bwm3uPagjyfcW8/Ne8dUz7F4ixbO2lxeqpNyY5TEiDScYO0Jxj5EdSgAmsnAGfQxrrSFMGQEBnQu5Ku0I8H93Jx92vTqvuQhZWISRLBrE2K5vavMbRFHWLiiozwAt0osd68DhE6vOFdUJJya3/n2oPUPn54sreRVo93mmsy6aSUjrY+tJ0Y7AZNieuKz0O+Mo8zMBD52WI53OPAlT9MY9UPASB9cAH5r3tXCFjttAziJl7jT5KQtwYEnZyzKTEtX/+I/XFH6d3PkPlrWJIhLCyEJZhuxgZnkUJV44tS5kIys76yjZ9TrThLbzQvpvuOPHAIO87ew41lHRgIg4U3b5KacymB/qGJCx/QGsgiuYO9Tw9j+cbCU99/X4HmNnequ3pr6majPW4JRbVfEwx0j4P5KVh45AgJTmbq5ZmtlReWBLswK7/V5AeaUw2dZWomFsvqY1QbPX31j3lsFVHwqEC9D+y9aRs7aUTkm4Q/iPjEosHAwgT/kCw7U16d1Mo2ApZ9uqeIgyBNo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(18002099003)(22082099003)(38070700021)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cEY0ZUttV0pJT3FrM1dRSllVNm1kMExMN25IVTd4UC9NVEdFN1BWZHoydTEw?=
 =?utf-8?B?amJTUGZaQmVRRVZ3UTBEdVlNNzY4NWdzWHVSYUROWWFROVY0dE91UkdhVG9r?=
 =?utf-8?B?TDFYcWRGZlB2Q2x5eEZVTVBoZVZOR1k3Z09udUd1RlZvQmpvQUlBUDV3VVhJ?=
 =?utf-8?B?NkN2UWhZR3R5NTJZZ2hXQ21Ra1E1U2tIdHRnTW9GZHJTKzh5SkJ3djlRTTdR?=
 =?utf-8?B?ZjBDUGNySGZCdzNOUDRkWE94c00veHBDTkwxTjN1WFhuaG1mUmdCcUdnaTF0?=
 =?utf-8?B?OGgxSWxmREZlZGJ0aEFrL2tDN1ZDUnpybXhBOGpadmczMC9WWWRPcjB3UW5Z?=
 =?utf-8?B?b2o1dlN0bEVXVmc5YVVzTWgvTmF1UHBudkNRYTYvSHhIZXh6RXZPVFJxdDEx?=
 =?utf-8?B?TFppQ1FrU1pUUFFpRkJVNkp2L2pEU0x0ckRGREEwSWRzQTdDOGNWRWc4MXNN?=
 =?utf-8?B?THMrMFdNOGk5MXR5L3lyTlYwVk03eERRcjJYNWp6UWlQazFRTTZSTXZNSTg2?=
 =?utf-8?B?cHlJNUVlU3g5cEpHdThrb2lwK3pBdjBjTmRrSlovb3VnbkEwYWR0VWtRTFMy?=
 =?utf-8?B?RzNabnFnaWh2d0t6VnM2TjVUYjJXUit3dXRWUVhteUxyVGRId3kvbFl1NHVN?=
 =?utf-8?B?Wi9zeXF5OTZ4WS8xTTRXSTEyRERnMExUZjlKS0o0MkhUOHBHS1NRV2pNZ2tF?=
 =?utf-8?B?REY2b3pQbkJqVWU3dTllcDJzQVBnOUZEalRKODVCVUhXajBndjJIWXhwVkox?=
 =?utf-8?B?MzNSOFY2NmhsVllHL2NRRStMUUdKbEVhNGpIMGFlOWVvOHpaV09vUEdOazBH?=
 =?utf-8?B?VisxT1dsR09FcGQvMUFlVElnOVFPVDY1a2djVU44N3ZQK3lvQmdmZm1SZnNJ?=
 =?utf-8?B?T2VGcGRBbVZOS2IwT2N2Mk9JL2pKc1NRenVrZ2ZFOUU0cGtCYnpTdkdXem51?=
 =?utf-8?B?V3M5SXlRWEVuNVZCSWR3SFVFVG5FOXFnRjBubXpmTkVaOE5ncDFzSkNWV2RK?=
 =?utf-8?B?ZVh1UUlEYXlNTkx0MWo3eXdodEZKM1B3MjhWdUtuKzdkTDkwMWNHcGFDU2Zi?=
 =?utf-8?B?M2NrQ0tObVZoQjF2Tk90TVQ3aUI5SlRqRXFacUFOVzEzaGwwaGpIQk1vZGVU?=
 =?utf-8?B?dndOMEFTaVlWV1RvcGx3ME9NT3VWT2M0RDZIaGRNR2NuUmZld1FuMlNyVWpk?=
 =?utf-8?B?Ujl5ZVR1dGMrOEVLWVphakI0VlQ5UlgwaTdyKy9kcm03U2pLUTc1a09Nb1Bt?=
 =?utf-8?B?MVFFQ2I5Q0tVNWw4RTZ5dU5vdWxmOXVENG53b0dKdlFnU0dDMTlqWFRYZ09L?=
 =?utf-8?B?RHFqaS9DRkNFR0hFaHRWR3FjOGpvME9mQWJFV3ovcjVXc0VkRjQ0ZkNSWkNy?=
 =?utf-8?B?TGJZa1JmUExyMWpMc01Fa1l2ZWNkMWI4cHhjd2Rta0V5RnhPMmIwM0tEdTlk?=
 =?utf-8?B?MVRYYlEvR3N1enpaamlzODRjVW5TVUNXQXhEL3FONkpXNmR0bGNOYyszMkVz?=
 =?utf-8?B?VGpucEdudUZwM2NYVjlGUVVEY1dQa2hNV0E1TmYwYlVOTWVtM2FmU1lRdUtF?=
 =?utf-8?B?dEZTbG9lQi9qWkgwUERsTkJkMys5U3FyQTdMUE00T3dOdE9tNm1qdW4vWTdC?=
 =?utf-8?B?Q0NIaXpma0JFMG50VzA2cmM0aVNZa3ZSa2tLdDRmd0FHejQ2eEsrTlBUaFNq?=
 =?utf-8?B?SnVZemQxckZkSThVZUJ3Y0tSRTdMbWhpMkVZSTc0N1RFRGxIMkVIRUlsVmtQ?=
 =?utf-8?B?QkJYeXVvYnhWdzkrUnI4T0lMaEpWREFWT0ZwRzZPc1BXMUE2OVRRTmVySENR?=
 =?utf-8?B?NzlUMUtha2x4K014Y2tPaHRNMW9wMjZIRDVESFRmaGJQMytETHhTRCtTUElP?=
 =?utf-8?B?NDE1WEM3cG9XL0dZVmwySmxDWXJVVVpIZDZsUVZQYjVNZEpJVVBkOW9sM042?=
 =?utf-8?B?ZHM1VTBRY2xpb2tDT1VCNk4zMTZWN1I1OElUMitockxWU1lzNGxOOGRhaW5Z?=
 =?utf-8?B?cWZQZGZ0N0FJdTUvejBzWC9IK0ppNjQ0WSt1L0Ftc2crdGNGVUZBcVcrWUFu?=
 =?utf-8?B?NUc1U3JCSGhWb0JPbDVWMHRwVGIxcEVoaFoyM3dURU5VRkRJdEhHOXRvN3BO?=
 =?utf-8?B?OEZzQVhHS21sN1Z1aEdHZzR2T2d4OGoxVW5Td0VId0ppWXBGbmZhQ2VabXU0?=
 =?utf-8?B?ajh5aXRVR1Bja3lsdGlDdm1pWCt1aEpFQk5NNEhLZ2xpc1AxVmtkcU4xY2FT?=
 =?utf-8?B?REl6RjM3c0M5czdMY1dRdEIwQzRhRWhYVVR4V1Z0dHFicGlLTU11NzF5MCtq?=
 =?utf-8?B?SERweTdEdkxRVnZvczl5TUsyb3ovOUN5SVpiVU93ZFpGNFFiQk5PQlEzRHox?=
 =?utf-8?Q?iBV7GT165HYUsKaw9xPkkU6FIXT3zioJMX5MTCN/VeHYN?=
x-ms-exchange-antispam-messagedata-1: 6NLgvtGyNVWQX50HRFn8u1CwnLY3nJJtTcQ=
Content-Type: text/plain; charset="utf-8"
Content-ID: <12AA74BD13C5854287E4E6D23482BFE3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: WFCUjWHu1LikQLwx5dSZbAaAJkspNEjD/2bbUGqD2NDNpt97V10nEAPYskugl0FOzA4y2xasUQPfGUmTNx3n70ybmY328e7nTmLaEj78VVchdTpjGi+a9neds58My5j/6lzj5oJuayj1E7b+m93vCY+W2OGO9UBVRJzkIP6pF7SX0ga1YCMUQJPXsNs8qburzuqN1baDBYttzk0bSUwJZeB/S1jyFg4ch/822W5nZ/r3AO7Qf2pw3Gwj2/XR2fNzMU/QN2kc/TbbDbj8KPJZhSFabc6fT3kxMk+81CE6CDYl6vZizoRec6BdMrGD+5L/64AzaeDrVVrpPt8H11TDmQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e701ad43-3bd5-4822-f9f8-08debd99632f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2026 15:46:02.4868 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Txf89agikxlaMcOsWMTmskmAAoQmRv5QV+31n64tkRPjtOKUlJNTjZt9a/G7mdpzGE8U/XopkjuEmF/E4xC0Ih4RgqmgXx42wjg5NqKaJao=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7629
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 65EEA604FD4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI2LTA1LTI5IGF0IDE4OjIwICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgTWF5IDI5LCAyMDI2IGF0IDA0OjM5OjEzUE0gKzAzMDAsIEphbmkgTmlrdWxh
IHdyb3RlOg0KPiA+IE9uIFRodSwgMjggTWF5IDIwMjYsIFZpbm9kIEdvdmluZGFwaWxsYWkNCj4g
PiA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+ID4gUGNvZGUgcmVw
b3J0cyB0aGUgbnVtYmVyIG9mIHN1YmNoYW5uZWxzIGZvciBMUEREUjQgYW5kIExQRERSNS4NCj4g
PiA+IEJ1dCB0aGUgcGFnZSBtYXNrIHNlbGVjdGlvbiB0YWJsZSBpcyBiYXNlZCBvbiB0aGUgY2hh
bm5lbHMuIFNvDQo+ID4gPiBhZGp1c3QgdGhlIG51bWJlciBvZiBjaGFubmVscyBmb3IgTFBERFI0
IGFuZCBMUEREUjUgc28gdGhhdCB0aGUNCj4gPiA+IGNvcnJlY3QgcGFnZSBtYXNrIGNhbiBiZSBw
aWNrZWQuIFRoZXJlIGFyZSB0d28gc3ViY2hhbm5lbHMgcGVyDQo+ID4gPiBjaGFubmVsLg0KPiA+
IA0KPiA+IElNTyB0aGUgcGFyc2luZyBvZiB0aGUgaW5mb3JtYXRpb24gYmVsb25ncyBpbiBpbnRl
bF9kcmFtLmMuIElmIHlvdQ0KPiA+IGdldA0KPiA+IHN1YmNoYW5uZWxzIGZyb20gcGNvZGUgb3Ig
d2hlcmUgZXZlciwgaW50ZWxfZHJhbS5jIHNob3VsZCBmaWd1cmUgaXQNCj4gPiBvdXQsDQo+ID4g
YW5kIHN0b3JlIHRoZSBudW1iZXIgb2YgY2hhbm5lbHMgaW4gLT5udW1fY2hhbm5lbHMuDQo+IA0K
PiBXZSBhY3R1YWxseSB3YW50IHN1YmNoYW5uZWxzIGZvciBRR1Ygc3R1ZmYuIEFuZCB0aGF0J3Mg
d2hhdCBtb2Rlcm4NCj4gcGNvZGUgZ2l2ZXMgdXMsIG9sZGVyIHBjb2RlIGdhdmUgdXMgY2hhbm5l
bHMgaW5zdGVhZCBhbmQgd2UgY29udmVydA0KPiB0aGF0IHRvIHN1YmNoYW5uZWxzIGluIHRoZSBR
R1YgY29kZSBvbiB0aG9zZSBwbGF0Zm9ybXMuIEkgaGF2ZSBhDQo+IHBhdGNoDQo+IHRvIG1vdmUg
dGhlIGFkanVzdG1lbnQgaW50byBpbnRlbF9kcmFtLmMgZm9yIHRob3NlIHBsYXRmb3JtcyBzbyB0
aGF0DQo+IHdlIGdldCBjb25zaXN0ZW50IGRhdGEgb3V0IG9mIGludGVsX2RyYW0uYyBldmVyeXdo
ZXJlLg0KPiANCj4gRm9yIHRoaXMgdGhpbmcgaGVyZSBJIHRoaW5rIHRoZSBiZXN0IHRoaW5nIHdv
dWxkIGJlIHRvIGNoYW5nZSB0aGUNCj4gdGFibGUgdG8gdXNlIHN1YmNoYW5uZWxzIGluc3RlYWQu
IExvb2tzIGxpa2UgVmlub2QgZGlkbid0IGZpbGUgdGhlDQo+IEJzcGVjDQo+IGlzc3VlIGFza2lu
ZyBmb3IgdGhlIHRhYmxlIHRvIGJlIHVwZGF0ZWQgdGhlcmUsIHNvIEkganVzdCBkaWQgdGhhdC4N
Cg0KT2guLiBzb3JyeS4uICBJIHN1Z2dlc3RlZCBhIHdyb25nIGNvZGUgeWVzdGVyZGF5IG9uIGpp
cmEgdG8gYmUgdHJpZWQgYnkNCnRoZSBjdXN0b21lci4gU28gd2FudGVkIHRvIGZpeCB0aGF0ISBX
aWxsIHVzZSB0aGUgdXBkYXRlZCB0YWJsZSB3aGVuIGl0DQppcyB1cGRhdGVkLg0KDQpCUg0KVmlu
b2QNCg0KPiANCg0K
