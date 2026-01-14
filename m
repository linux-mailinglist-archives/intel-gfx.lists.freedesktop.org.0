Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDAFD1C9BC
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 06:45:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D89F10E5C3;
	Wed, 14 Jan 2026 05:45:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CLvqU4Ux";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8D2210E5C3;
 Wed, 14 Jan 2026 05:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768369521; x=1799905521;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vbn6jXXPz6tzrr8SYlNSdI1hmH6P8W+MKrDagj+Db64=;
 b=CLvqU4UxeqZvTk+Voli1FddZqfac8nZcn0oV8d4WHgzSPsZNKwP4ekjZ
 C0bDHLeGRILn1ZCzGKpSRvT/lJR9q0q6zBD/Xf4jjaXdRausuK24i2bgj
 tv/tkKFgOk42uJOxDNdh1kFPDXUcGk7Hy3WMQ/PRUZiMQTIwFxcH9Omym
 3O441mOsV7OJOB2GFly/CEbR6WD7xr5EEwWtZ5p+r7ilhxek+15jbxQ//
 NPXWPHDfMaitFHDym3q4c/4Qpz5m9Uu5OBOK2hkCU7p6+vRjLBPENpz2f
 gmOcVpuU9rIXxSmuEJUERAmUi7BvGZzrjY2mnxz14pEuz8P7WPcnScvdD w==;
X-CSE-ConnectionGUID: NfvJHJHHTNWHuPieITFTyA==
X-CSE-MsgGUID: /pvLYXmQRbCak994qqYo0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="72247624"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="72247624"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 21:45:21 -0800
X-CSE-ConnectionGUID: Pi/0kbbgQXqp+DzQv/KHEg==
X-CSE-MsgGUID: PKWrCaeET1+OYGjIyYWJgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="204220886"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 21:45:20 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 21:45:19 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 13 Jan 2026 21:45:19 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.10) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 21:45:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rNTiu4kjp14L0Yp23tNGTFHYqofvcOrwzUofGwXlcBTmyYPxvwQ4nzr1PW2QBzDmoCRMgU0rrQ+YfQaOjem/GdHg+oAyqTvliGmp1EL9ncAoIQTBvJhS0j16tXxe7u+MV6tZUqKmxnzelBvUqt5AhqiJeKVLbKSQaxXMNdfqTckII2VTFtRnxm1vZQUalUxzhbj4D09fail0hjdwbL1J+8+YJ+mXegUHlggyAAz3YIc1pNFx4la/xZUgjYRs5FTVD6xv4HInutw2I9K5mMc1qWthywCIlHjuHNiW5o2Ri5/ltTJ51WpFl1asjQ7zDroQKhIlsmBksp5UkBzm0BmR9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AgK9W4ZZDVwrLVPnVes32V/yTKzFu+PaA5Q3m/lzsaY=;
 b=njJqZDdJXvo7FZURMlH62/ufaImNRg/3CVZbUtCABHoeX/zqcLYjlGVrk2TU/H+xN/Ic1zHzoZsV4iKIsKRkY0xfDWqOZ1LuAzw6JNp3b/0k2/NgHiMy15fdY5y8C0C9mFCgad0//+VqYh4+B5suQe5s4qdT6/mCHrVffO/oip1m6rurXo94X/0x1Vb32mbIunXzKjTMczl0100AZ+ratOK8E/Tp/o7HfOtPe16iV7aZQbD+n7WanvTeaH1o3++oh1dq/YrxQuzvTtkh9PQm7kyJr6gEmK4iPXDGHC2X1HOwg64ucdCu8AJiacwZaZsKAiuWWNZF3mHyYfz4S9F/GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by LV3PR11MB8507.namprd11.prod.outlook.com (2603:10b6:408:1b0::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Wed, 14 Jan
 2026 05:45:17 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%6]) with mapi id 15.20.9499.005; Wed, 14 Jan 2026
 05:45:17 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2] drm/i915/display: Disable casf with joiner
Thread-Topic: [PATCH v2] drm/i915/display: Disable casf with joiner
Thread-Index: AQHchFFMs17P52ZK20mMazqfFEq+DrVRGxqAgAAMAYA=
Date: Wed, 14 Jan 2026 05:45:16 +0000
Message-ID: <IA1PR11MB6467DEEE0C5EEADFE6761BA8E38FA@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260113054925.633053-1-nemesa.garg@intel.com>
 <DM3PPF208195D8D9B33FCC495AC893A59D3E38FA@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D9B33FCC495AC893A59D3E38FA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|LV3PR11MB8507:EE_
x-ms-office365-filtering-correlation-id: 46c7cfa1-6d04-4d80-4eba-08de533018a0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?lzP5X1jXG/7ROTtMZ9l7stgwwGwEusH/Y4EymP3b1Qc8LSg5p5imPyl9gsEn?=
 =?us-ascii?Q?h2sZ6ADZ/hKYOVvDDPUAUX/D1LxDq0puVRHsrIAPY3qRB+vgBJXQXLYkZqNW?=
 =?us-ascii?Q?OpPxZq8EkFSOs8mi+CY/y+AcSphaOhpHYRf64LJPWCcCnptk50CfoWvfunsD?=
 =?us-ascii?Q?4eBWjO47WTSqe5vhheI7BnA5Gio5xP3imCeAU5PnmqhqXiuloYCgJqmi0R1z?=
 =?us-ascii?Q?KENk5+GnBNHb1L1NO4nvzICeNH0ApYXOKjbpS028fd+li2ntJFgjpFbAemsM?=
 =?us-ascii?Q?u4VX8k94AJmFANIGzjwoslhYjb0K6YUA36sG224whL4AypqJORo5vRD3lu69?=
 =?us-ascii?Q?faiupZ5mtehJ95l3PerEjMtoBVnahn4kcVSPHpGBRHylS+Fxfgrx7NuDMIOZ?=
 =?us-ascii?Q?suBlk0Bnqq09+sqoEu5an7An75U3KT+eWYzcxKui7lGBUD69ivao20OCOvG7?=
 =?us-ascii?Q?upjbyrAfTuFWrZhLWIHYCFDV9j5HZ5z0oWJNfvFxUeiUIVulQh1bBtV7WCam?=
 =?us-ascii?Q?ElqKqvG2JhSUZFucMMczPxLvpImON5TA64p1y9IE4AA0/LFhZlxaPnNwYDcC?=
 =?us-ascii?Q?J6tXbRf7lIIV4aCc8geJnX85rdPXl8RVMkPYjZThsIdP0Xz7omlRc06AYQVQ?=
 =?us-ascii?Q?mg48gtmf3dRiHS3XEwwG6WOq957StZ1ymJKHysHfHyVW32Mls09dTri0+zLm?=
 =?us-ascii?Q?mPZtYDNK7DE2bqTjvrZysEEi+b8oXilPlhH6LoQe7khusjFxbnWKg+T0BhpX?=
 =?us-ascii?Q?/Ew2MhR1YcPegza/KocjRm0OEkuYYBK2if1Ood7Y3R9uAKkk71A+dih9V/I8?=
 =?us-ascii?Q?vp2cR7CrmexTEFvRWYl0qR8FHOn3rLpjefg9BoIA3ozyzI8z+6YQ4VuQ1SqP?=
 =?us-ascii?Q?YmqKzS+Ar7gLtOs86BM7vHRpp5xdJYk1348yPM9b2D0LA1f7rT+fdwQokAjm?=
 =?us-ascii?Q?4b7xE3k9b3qAT/0d3bELPfMxVq/zVGaJ4Zw/2GV41IrUWwoaB894FVXXBMjk?=
 =?us-ascii?Q?kgJCKSYpXrG6S/hoVieJZkJkJyV91NASpP+RNPAkhC7Ycc8YJ86wwVzx7/fD?=
 =?us-ascii?Q?Hh2Xc536xvz8aoeDR6c/wGLlZMnM2n97hLjsI0frfkRbX1+Di4JUCFpt5RWt?=
 =?us-ascii?Q?R8RrZfJ88lCeAqOmW0ZaIYOhmtQRKqT2zt8ngFfRiLzr+OGUSK1lZxbSqAfe?=
 =?us-ascii?Q?uP8ewZIcC8p+nfwzXFHT9veMj3LuqaqiwNixEcE8wBRBPbHKTky8I+h4RCxZ?=
 =?us-ascii?Q?aYStz/oEYQNjv1Fu0kWtUyExZaxYelVvKADMY536WvlMd/M80hRQuc27+TdD?=
 =?us-ascii?Q?MPvnEjKRgEECoXe7egZns2fwOhk6uPiTSFsRIAeWPvta9QGqOEq8AqFkBniS?=
 =?us-ascii?Q?uRbrnXc6EW2gylatQK85Wi4TLDDZ47Il4+ehX83LSrkc1pSivotNgWKdGLZv?=
 =?us-ascii?Q?1VKKPFokRMsUQz8BUHo0SWSI7z0exhaY6Ov0H+bYvVpcVHk43ncydvvjCH8q?=
 =?us-ascii?Q?3/SNNQpwcUgACFY8+d/er5AJ6g/TV5WD/ihe?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EjJ/RSu4s6G22aTioR1Ur2lnfe/UEYclPRlwITPhtqJS4PoFEW78PzFq1deB?=
 =?us-ascii?Q?zhJM2VwgO+a36eUpzOkpbq29SNTaPVHotouF0j1LBBucJLYPJrAGsyFnc6D+?=
 =?us-ascii?Q?q2NGLQ20B42bQ5PYg2Awm/2bm5yjQKrifwUEjhGBStMOYGorjqhxIqdo9r/f?=
 =?us-ascii?Q?tTcWIhECv0MUskRIMnBMgAaJ4lfcHfO1KYRILNR8Gdav67QXWIYh8cuaBAm+?=
 =?us-ascii?Q?sdnUbg3iVdkzkA1DI2Q0ajurCNTDNvW50C8lgLzJyEj+idEAmu6MfbXa/sVQ?=
 =?us-ascii?Q?srDQANI//I2Pttgvls0ea+/NgPwIq95MeQvG4X/nr19tnyLtDafK4yiW/aJK?=
 =?us-ascii?Q?dsiBBrnU6OGVGNwUCX9jJkVNPU5u72cT5rcIJwtwf2fCa8134ZU2LIJXHBy1?=
 =?us-ascii?Q?2lMlTl7zNEflfOt+bIc8Pfbn/X6WMMUXiHETLbgwZnRJ35RgyB/cp46d/o7/?=
 =?us-ascii?Q?1QyJq+qDRG0jWLNwr11temyId0RLruEIrH2Z5Q9iU0f+oLCOWAPB3d86rb04?=
 =?us-ascii?Q?qL1+zH5WcFRGNyFB87GsgM0SEd1aLMZkguloYZs2KV85TN3yT8sjb9UgXPrl?=
 =?us-ascii?Q?P08Bb6HFC+JkFcm4ry9rBhvOs0rLclFQPGDNTX8eMMEGA8VlbiH87sK3V1Mg?=
 =?us-ascii?Q?1IuQ8QTjcorsXjlAHYAO6rAwk2FUXYLVOxRyJWatwWRMDYyk3j7sBep/TLNq?=
 =?us-ascii?Q?0oB9X9msGvQ9ASMt2i3WfK0E9K+3FHHGziIviPSDbXCOLwNWZTfe7fd6wsMx?=
 =?us-ascii?Q?Gx6pi1ktVyVjMF0LMFXRvdeHf2DSkaN5o697WRuA5z2+/8Bey1at6x50MQY9?=
 =?us-ascii?Q?AX2Ht+onMLvgo8hTe6eKyh0z41x3xLv6yQM+Ee5KkGWka4BZUvYD9Lzcs7MR?=
 =?us-ascii?Q?W5FufuTgh9sDMFdYvLd0H0BskodV9O+ZS1a13EuhtmpqpyoaNoBrtA0khflh?=
 =?us-ascii?Q?d4WJJ2PhhFONyfMcuyGzwQ+omeIZ/r5ky8nT670+X1Dnfh68LondQvsFUFbb?=
 =?us-ascii?Q?s0aVzSb96tUzRwDX/890munbUkF9NMeUFKWOcacgzl4LpNoTtaxWUZ56S0h7?=
 =?us-ascii?Q?v9yI1rfoQPx+Cos+GbXciGzJhhWb8uc6gN2EFjOVA+NDiI55dkWySHzYkxjd?=
 =?us-ascii?Q?STjfLeF/qIEJ+ncSWKpKEvH/get1RwIDnTgcqSnvrL2XYFXEX3WIx5X19itK?=
 =?us-ascii?Q?hBDPkMwS1hF7Ug8zS4RHyhYpZgjV96IHLzgXwRPXPBByOzNifzYegZIOMjdo?=
 =?us-ascii?Q?lHjF7nl0zH2DwBb/uAHsicbSjXU8n4PGmleiwsBaiSF+yMPOycFk94tZrHBn?=
 =?us-ascii?Q?2o3BugTQofPThas/hyLFfc3TyArNFha65xNy53x9MW0rRGHAr5AplCRyQtjL?=
 =?us-ascii?Q?5n5J/dkanTUKYqIpAkWBqU3QDnXMhLxX6d//fRyvz16mmmXdZFnVoOkZllW2?=
 =?us-ascii?Q?eU6NI2yFhP6rElknK72+N2+yzRRsy/hjuYSKqRl6zTYo30RplkYRcrhWPKWc?=
 =?us-ascii?Q?U3D4ErGjFgZK88J9xLPkTmsHduVf8DXP0v87f84Rrp90YavimvtpeAE2X/ZP?=
 =?us-ascii?Q?og0PXqdEu0UGrJarLWpal6JsdBQjQqIFV9nkwWsd9QtqwLEwgB+IZ5qGnFj1?=
 =?us-ascii?Q?vIK0hrWFgRTk5dmcYKuznTrxX0Z3rFEntTQCM3HMVZ5D3WR/CG5hmwj4igoS?=
 =?us-ascii?Q?eh2wcx6lCKiNb3vyczPMu5TYJYtFhu6et47lING3/AedAHi66BZwf1bBU0C7?=
 =?us-ascii?Q?sVV4KK02vA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46c7cfa1-6d04-4d80-4eba-08de533018a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2026 05:45:16.9703 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NIaB3Pp0PMUBHvOHWyfMzLb0BjttKrOPDPGNSiJOsYq+0CIYlOh4ny5RLEundiX8r1jzaBHlUi0z4VU6Cli1AA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8507
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Wednesday, January 14, 2026 10:25 AM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: RE: [PATCH v2] drm/i915/display: Disable casf with joiner
>=20
> > Subject: [PATCH v2] drm/i915/display: Disable casf with joiner
> >
>=20
> This should be drm/i915/casf since you are doing the changes in intel_cas=
f
>=20
> Also please make sure you are keep the acronyms in capital letters (*CASF=
)
> Unless you don't mention it as a function name where it cannot be avoided
>=20
> > Currently pipe scaling is not supported with the joiner. As casf
> > requires pipe
>=20
> Ditto.
>=20
Will do.
> > scaling, fail the atomic commit whenever joiner comes into picture.
> >
> > v2: Replace dmesg_WARN with drm_dbg_kms. [Jani]
> >
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_casf.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_casf.c
> > b/drivers/gpu/drm/i915/display/intel_casf.c
> > index 95339b496f24..63c2c94a243b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_casf.c
> > +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> > @@ -116,6 +116,12 @@ int intel_casf_compute_config(struct
> > intel_crtc_state
> > *crtc_state)
> >  		return 0;
> >  	}
> >
> > +	/* CASF with joiner not yet supported in hardware */
>=20
> Commit message does not match the comment.
> Is pipe scaling not supported in H/w or we don't have the support in S/w =
yet
>=20
Currently in software we don't have a support for pipe scaling and joiner w=
orking together.
And CASF (which is based on pipe scaling) with joiner is not yet supported =
in hardware as it may require some more things as compare to normal pipe sc=
aling. Will modify the commit message.

Regards,
Nemesa

> Regards,
> Suraj Kandpal
>=20
> > +	if (crtc_state->joiner_pipes) {
> > +		drm_dbg_kms(display->drm, "CASF not supported with
> > joiner\n");
> > +		return -EINVAL;
> > +	}
> > +
> >  	crtc_state->hw.casf_params.casf_enable =3D true;
> >
> >  	/*
> > --
> > 2.25.1

