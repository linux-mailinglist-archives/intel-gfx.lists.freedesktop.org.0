Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7628DC8D53C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 09:24:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 052AA10E79E;
	Thu, 27 Nov 2025 08:24:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WvU2B3CA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C11FF10E79E;
 Thu, 27 Nov 2025 08:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764231872; x=1795767872;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hi87AQpT3yReFeedN44M0JDnNbJ2bnPq/YfB4W+VT4Y=;
 b=WvU2B3CAdOzXndrM4CYKO+j2k0N/UZ3w2HisldoHE5xKhTN2y7Gr4um3
 mmZuCa11vGeoDQshjOfBrkJfV/PhTAvPy6e2zuYG1hPeAuKoAA/4Q/2zc
 GS1js7n6tfH6ZOkFc4liCIj1cDisZjT2ezR4O30N+GxloTNRLCep4i8Np
 RoIFnCZAzgBvCURM0RHmmp0nwYvPjCtRyHD6BWuilr+PTcqb0f3v1lYgV
 3qSgS7KBbGgxwrOzwA4tIBpvKUw33sZ7B3G3ZvYwuaN4cdbE9Q2QrdoQa
 ln8/L3D3c2aosT+R0rgdkWpSMZtG5MRFeJnBXAoptpj81Vv2zKOjrIGsV w==;
X-CSE-ConnectionGUID: giKE7zEhTSmHFfz+Jv5Tbw==
X-CSE-MsgGUID: PpU9wubDQA6P+lHuCuq1WA==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="69897697"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="69897697"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 00:24:31 -0800
X-CSE-ConnectionGUID: D5JRD/nNSOiGKvt80qj0SQ==
X-CSE-MsgGUID: gu7YUO4FSmi+cLN2oVAC1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="192419317"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 00:24:30 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 00:24:31 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 00:24:31 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.67) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 00:24:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IBZz0yf1xZKciZXrN/8iviOQyhvcLTvLu8S1p1w8EX7A1Hno971QjC+FbJ/UpRtRT+N3WnvwyX3ao/VRUiK+Pgd1xVuc8sVInvtMDlxQIEOknGRmiKOG8OERZ+e0Z5oQOX8hNiHi9OOQvj6r1e+/LI6P25WW6FTrGmG1oWQYjyhfaWjk3lk+VOaB/4NJha+cWph4Kq5V8slXNNBM/8cKH5a515QVafvXhGVaq0XysvRsy/41COFpVUvoCt8D9kj3cWVtVL3PNnNbJ5/bKEbq3OyQmjCsTMUwu875mzXGl78bGDUctU15NEEZJJaZJasklOyZWaw/Ak63ykzSVPAMjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=waDmzu3iT1cPAxxoDH36jP7JQwqRZy9GFa6/tfmQxt0=;
 b=hMPGJY1hMVCEesR0rwjLBD0e46xWdtaPQ1Jpst/DGL0qe0WKDBnNPeZ4xjXJA4Ir7Fl1jpXcXr7rWkrFJiW/2U9DpTvbfO8n1/WuEG+QMiXrJgGoi7ix6/qInKfSMo8v08Sls96LTeS0r4E5HYMBml7Uioy2QJTFEVnegicPIWRK/OflfUHgYDvcGswe4Q2ZuFBpnTGUwv513ptN0N1fGsCX9Aazr7YCTvSJEDGjgex1RAlBKVHOvaQkK+e6WDXwVTnUUnDdLrjIMqusUhCl80gZVKDsqvqRC2tDitZloSwmoePNtY4NLpB8Pl9LNL7d/OcBw9EBPA5u2psg6gdWbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8035.namprd11.prod.outlook.com (2603:10b6:510:245::21)
 by MW6PR11MB8410.namprd11.prod.outlook.com (2603:10b6:303:249::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 08:24:23 +0000
Received: from PH7PR11MB8035.namprd11.prod.outlook.com
 ([fe80::b991:bb49:eda1:e063]) by PH7PR11MB8035.namprd11.prod.outlook.com
 ([fe80::b991:bb49:eda1:e063%4]) with mapi id 15.20.9366.009; Thu, 27 Nov 2025
 08:24:23 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [RESEND 3/4] drm/{i915,xe}/dsb: make struct intel_dsb_buffer
 opaque
Thread-Topic: [RESEND 3/4] drm/{i915,xe}/dsb: make struct intel_dsb_buffer
 opaque
Thread-Index: AQHcXsV9VwTOSQJsq02/T4ZtMpIQWLUGMLQA
Date: Thu, 27 Nov 2025 08:24:23 +0000
Message-ID: <PH7PR11MB8035BD6B4B159B9331BE300AF9DFA@PH7PR11MB8035.namprd11.prod.outlook.com>
References: <cover.1764155417.git.jani.nikula@intel.com>
 <08a8a7745042afcffa647f82ae23ebbeda0234c9.1764155417.git.jani.nikula@intel.com>
In-Reply-To: <08a8a7745042afcffa647f82ae23ebbeda0234c9.1764155417.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8035:EE_|MW6PR11MB8410:EE_
x-ms-office365-filtering-correlation-id: c6d1bc21-9092-430c-1bef-08de2d8e5ee1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?LTXJvtlmPveDUKrMnhL0m4MJfVGXNu7bU8UOYudG01dOvYOkRjGCcO6OIpwp?=
 =?us-ascii?Q?lQZIfDuQfzXfPdJyux39iLGJwsymM04M4Xm5A2CtN0R4hWeFpDfpUR+6uEuW?=
 =?us-ascii?Q?Kang2gTmbusv1Cq47fz1ouB1nU+aYUhzn9jBeY8UQam9lCU3Dp0IJJ0E28jK?=
 =?us-ascii?Q?3CdidxMDD9sbIOpLVZyAmUA15/LgtiLCD4JEz0QMqPdJY4c8KqoY2u4Cj+Jk?=
 =?us-ascii?Q?ZPFcCKAOPcvJbwyEyd+yrpu9WDCCA/w0dhGKFeEMP6nkDOFPxrVG2y4yZSyW?=
 =?us-ascii?Q?NzcRObSkMj8IXQt51E0gDhsxvTDExoj/HkL+vn1zE0sOTXU7YQjPpJ3aJooA?=
 =?us-ascii?Q?W4B7M8DUiDdSSSJPjRyJGIGg8y1wceZ/arVxcjO01EfD4q/ip++HSZehfUxI?=
 =?us-ascii?Q?JlROcEPd0iryqFpq9bc0Ee12JDdaJrX66N2EkGawwPad2cib9MXjZl5ZR40T?=
 =?us-ascii?Q?1bintIsGqhrcOeBYiwY8ILMZ+8rXH2/HNIZwX+tyxIO3G0Qowvd75oVWmeKA?=
 =?us-ascii?Q?mWpC1JmXOGvFXcb5uTyDbSx0sV9/mC1BU2U63FA4iAZFSPfBhuYWwKE08fTj?=
 =?us-ascii?Q?SUa8RAv+6WBZHvSMIwZQLod8EsQ1GvDvEAu9JOvALDPkJR7+g9YGFRa9K2Vs?=
 =?us-ascii?Q?+2vCeicktvadAmIkPfFrUwxpGY7yZfJL3bTl+gXotOYDQkqycxYbGbUD0Jwz?=
 =?us-ascii?Q?zOwN0Bo+tLwPUxjnhfgafzUuofyxQeTW+EjBGYy0IiE6dSOs9rZNFLCgjs8O?=
 =?us-ascii?Q?xoieJbOp17fXMGcx1Nkni+226mcrroLeR3FVCplb6n4jgKI0LCRQdGOPSDYc?=
 =?us-ascii?Q?bC/WeWD3SVerDginoTEbAch76CcInOUwyKfGPzZ0C/87YRRPSsE7VyZUt4OX?=
 =?us-ascii?Q?+GQI/MTiLEOLidC+K1I45twG3r5R14yzx7p/3jiexrvmbqi9lmhz+49HsYNi?=
 =?us-ascii?Q?j/tY2a8LwIZhAHciDV4LB4a2vfYa1YhIDx6XnDKZnV0DMlmMqAEMk5eOVYHT?=
 =?us-ascii?Q?SmYbK4u9Be715/CBoCQlpOPM5/JuFczYvKAA7J2vt2CyHhez1tlckuqKgCu7?=
 =?us-ascii?Q?PxW2HbsQmy2ZRpgF9ApnLXSK5clGtwYWuPuzMEmTUDcCcdgPNzwKdFo9q2sR?=
 =?us-ascii?Q?hfPjgyikOsVi6VGlH0s6V6BrK1/nLArx85ubY6MySr7ths8U7kwBQPWDVCj2?=
 =?us-ascii?Q?wX5SQBhOAgJmAIYcLTNZ6kmbdRPuG09V0htGqLcYXSV3ZEMYBtSiWnzCGswV?=
 =?us-ascii?Q?zdIOPIxevQjBXYS4Uxgkv8wykrsFKpw6G3oN9SxZOPH+m8lykXCZFxZZED2/?=
 =?us-ascii?Q?yZqDvpJrrCKNhKipFQndlaRpPqs/PpfoufrWLu/1BgiZFes7ACUVeIDuNwKW?=
 =?us-ascii?Q?vHnXy6xoMnG+LjGod9daapJKxVpjRoJrH6JmVdAEooOCsTutL3+FpPJOlpF1?=
 =?us-ascii?Q?IXJk9ydygpe+X1tGAnkHcwL4xtq4/cPIhcVs0lqTclH3/wRJHnhJyIhNM4er?=
 =?us-ascii?Q?YPed7OuOtaH5TcfCXAHDZMLCoHb9A12LkkWF?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8035.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gu5O1Kh+DWrHps8Q/HvB4XOdIo7rqdTy5O4zA/4TDv/bcDgFWRW3cz+bRoBq?=
 =?us-ascii?Q?iDfv1Djbg4jUI3t8orr4jz1rwo1IR0JMZqaRsc3z0k/LaFtif9vRTpkN+a26?=
 =?us-ascii?Q?yYEi4xgnQUAZX51z2eCqEnVK45Fc8D52tPSuUem+/Wu2qJaAVCmucl2BUIRG?=
 =?us-ascii?Q?g5pdbbqgXzo8SnIYazVRn6ap4BrYIoEwCvUP5/OWzNkb4vv7l4bNVqs3hrYw?=
 =?us-ascii?Q?gmW7k/CNB6qkAj0Vs31Fj2ee1J1qr9JR5oi0xe+WO8SRxbrD5XQUTLmFC9qT?=
 =?us-ascii?Q?zxU/NECtFeWQTx4meqPHbEahQtyx6adKmWVGoxWTNL9kWArm9Zi/oMjXI0Lb?=
 =?us-ascii?Q?zAQQ7IXsvLm6RgsQopaRHs1qcmokxQichDKVzPZ1B36yxYNCKTRBDQUWw0qB?=
 =?us-ascii?Q?M8Aoi78pGWeVtKY4/OmlxtI9BbpWlUm0YLhVvvD0BSRaGjqhonbv1GHymGSn?=
 =?us-ascii?Q?yii/JFp5dTWGQph2hJcGoARAq2pdbQ3gpTTqCEm+ez8AbsjAH/HcnQtmiNWv?=
 =?us-ascii?Q?2209akSRLSRUoHE+XF1gU0NXT20PbGJIMVLAP3yEHIW7Ky8FNPeW6ll/MqEf?=
 =?us-ascii?Q?0CJF4fmCDsFOwGidFpNEZeFtDQXmhtlU6zRwvytFiuB8yvWwohlHQxnL3rO6?=
 =?us-ascii?Q?NQwzuyUil/yz1pKxJ96spS6NHibL/7I8R63KaSU/XTV1hozMbYsnNwERwSrm?=
 =?us-ascii?Q?TrVZWSWuKQVJoZSMv72C7De4bAgoY7eh17X6jepON+MyQDXLfhEKa1Enaf6z?=
 =?us-ascii?Q?YJzsth8VEzlmkieCwVbA/UGPhGATwYgYrb0PXx5MOVNMBilKG2b14SJRjBP4?=
 =?us-ascii?Q?OoApeng1ZIGaZsfAqQFXrd85d4KLkt9PudCxYFr3MDPCYj7xE7Gak/0MT1y6?=
 =?us-ascii?Q?YxX/G7+uN7FwYKdJcNd9JtcngsbX7o9n9cBQXnB8yVE0wfNvlEuGZSgdmT35?=
 =?us-ascii?Q?YiLRnOeKvgoRgypCnYDUYeL9j2SOGA6Su8Q4ymB2a2Wyw/5eAHRxe/0lyGW2?=
 =?us-ascii?Q?VwqsGnYPWbv9eKLNuH7u5ICJTn3PocngT2fbMVtxEJdTGPdn8lBKXqlI7rSa?=
 =?us-ascii?Q?5wo0igx+oQpGLbRf5+jOmGwBPg40B76pFacdthNOWgHbGNq6V1YmHGCZJbsa?=
 =?us-ascii?Q?EwEipABJJ03wyj3sGm3tr68DYMPk0Qc/w4b1ibvllXNM9Ji3a9mUXWlZyUJ3?=
 =?us-ascii?Q?XL/5EfZEotlEWT391r2n4mPfLL4BAAQeZaG01dOFs01ITggirlLoSDpSM0NE?=
 =?us-ascii?Q?BKRBv7meIS7U6JOoeqReEdSyD++Ub5b2/GbIsGArIUSxLbIudUGNwk1JrrnD?=
 =?us-ascii?Q?Xc9riQTQ32fHjjJA95OKNZCur9g5hkxOt5mOT7r6aY9UfqJBP80iXFzBh+kO?=
 =?us-ascii?Q?phYYRaaaJvdXd5hkYBZhmIYuog/FUXsLgWNvXEFkjWtgKGiu2OHeSs1QrFmH?=
 =?us-ascii?Q?fpjpXaYGkmKSBSPClzwWAmYvBbGakRIIfHNK3LDqSvwcvByP+kBFi8DZkAyW?=
 =?us-ascii?Q?zW1Hd6iWcHLiIM3OCzUUslhgeL2WUnmLigbJ0A0nv6PiV8dJ1X0Qn4TsZx14?=
 =?us-ascii?Q?FoENApN47jNxvFohqEd71ix9IZLSRLsK6bcsHPPd?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8035.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6d1bc21-9092-430c-1bef-08de2d8e5ee1
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2025 08:24:23.3269 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KJIpO1PdA/CzYBUxsF4STBuQE8CnpxC9y6jXJ+j3TUrOvRpjFrDK9VHeVQMUTOmyznCduNGL+nzXAoUNx7O6HA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8410
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Wednesday, November 26, 2025 4:41 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; ville.syrjala@linux.intel.com
> Subject: [RESEND 3/4] drm/{i915,xe}/dsb: make struct intel_dsb_buffer
> opaque
>=20
> Move the definitions of struct intel_dsb_buffer to the driver specific fi=
les,
> hiding the implementation details from the shared DSB code.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dsb_buffer.c | 6 ++++++
> drivers/gpu/drm/i915/display/intel_dsb_buffer.h | 8 +-------
>  drivers/gpu/drm/xe/display/xe_dsb_buffer.c      | 6 ++++++
>  3 files changed, 13 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> index fc1f0e6031ba..50faf3869b6c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> @@ -9,6 +9,12 @@
>  #include "i915_vma.h"
>  #include "intel_dsb_buffer.h"
>=20
> +struct intel_dsb_buffer {
> +	u32 *cmd_buf;
> +	struct i915_vma *vma;
> +	size_t buf_size;
> +};
> +
>  u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)  {
>  	return i915_ggtt_offset(dsb_buf->vma); diff --git
> a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> index 2cf639fae47a..d746c872e0c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> @@ -9,13 +9,7 @@
>  #include <linux/types.h>
>=20
>  struct drm_device;
> -struct i915_vma;
> -
> -struct intel_dsb_buffer {
> -	u32 *cmd_buf;
> -	struct i915_vma *vma;
> -	size_t buf_size;
> -};
> +struct intel_dsb_buffer;
>=20
>  u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf);  voi=
d
> intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val=
);
> diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> index ee7717b1980f..d55858705106 100644
> --- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> +++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> @@ -9,6 +9,12 @@
>  #include "xe_device.h"
>  #include "xe_device_types.h"
>=20
> +struct intel_dsb_buffer {
> +	u32 *cmd_buf;
> +	struct i915_vma *vma;
> +	size_t buf_size;
> +};
> +
>  u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)  {
>  	return xe_bo_ggtt_addr(dsb_buf->vma->bo);
> --
> 2.47.3

