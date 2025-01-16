Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C70EA1326F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 06:24:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BF8510E8AF;
	Thu, 16 Jan 2025 05:24:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dJyDjUVE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E40A110E8AF
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 05:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737005078; x=1768541078;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UomjJvVdfFYUNKQq1jOQtCfaNDExoxovD9o3Si0ASuI=;
 b=dJyDjUVEtspF7hfbto4UisFtmYepRnZSQJIvm4rAtmxngxcdXKUWXXEE
 bgB1CE8t/Jw7VtV1TtbHIJnFl2DcjfgQFcBzijfd2FRLylzAByq72PqIj
 4wxSq2imm7dbIvaNOJJE4lImZlrVDaPlG/nOJ5YnruleccFJ+6hjkJ6bg
 +KVNSu6oy7oXKVHgHfHLq2rMcV+voVZhrbdj90vPfZKSfN2OKgoB7IVH1
 CkYg9+1kwDozIFkSeKjkzwbEFgrpien/uHWBN/I/CnVCF+pWfuMpMxWmB
 bSyZBMrBQRpkmnkGAniz+lx5UWIdzMaShnb0358Orz8f9NjWMsYMMw/C9 g==;
X-CSE-ConnectionGUID: R1Wohp3ySXyfcdjdSckwXw==
X-CSE-MsgGUID: +0Wsr3XkQAmRjXVZv/daaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="37604979"
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="37604979"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 21:24:37 -0800
X-CSE-ConnectionGUID: cHJz+m2zQIGY723Wuog2xA==
X-CSE-MsgGUID: 0qFDOlf6TUmm4lHlQ+axEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109404320"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jan 2025 21:24:38 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 15 Jan 2025 21:24:37 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 15 Jan 2025 21:24:37 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 15 Jan 2025 21:24:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lX3Jsw4HQBm2dzW2OmBxgxbKfL45hKrJSDcdfrHSSgUC4r3q09LM7rHgelu7DCekHiuvYtnM2nhOOHEJyAuyHmFNMrcSWpDS8I0W+hxh6PVj20fwWZxaieJBQfcIpZNBef9qmyj+OhKBSlg7ifVzpTNvROp3XVpV1vlK54rHKsR1QTC2yKZIcGxP2xZeuq4elHOLLpY1lUCxPaVUsFfrnOv934Pb+RTa+mPaigwIks9Cli0dURBp0RCJKdL7FONS9Bs5Czu21c+Y+reKZGkbZkC5xRjrYjz9TpSMZ1sbjiMAl4pixqLcQnewLnaac0jGjXb4R/KcAamoWY+Pgzd4ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=67esaH+SC759l8uRIuzDVuv15f9HnQQyR4pNHOmVuEw=;
 b=RtAQhVqQy3T8A9GwWKTXlhe3jCBb7I4Csaorw1EwEQ8zjmmfYMFXtNO5/v/8lulBEw2rNEJzWwZ9WkYE6OgQlTLRk4kRILij2Wu777ft2cTc53s/eZwdT5ukNk0bm2Wfc5oTVzmMpecSTvv5HoWhnVkrW98a4VUMONAcqF0pmCEkDEiLJCiL7OxVE6pyjMKjzCciagWAaGRMJd6VS+YuFXxTD9pFGwbnSX/pzDFN49Rj7WjnpazK5VBpWrbwUJroNafEOypLHKR13nIfRVESoO46R99XOnDKc2g4kSCdYtmTbd5EfrKW2Lk5E2Bki7ogiTP9A6reZoX+JieLdX75rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by IA1PR11MB7319.namprd11.prod.outlook.com (2603:10b6:208:425::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Thu, 16 Jan
 2025 05:24:07 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%6]) with mapi id 15.20.8335.017; Thu, 16 Jan 2025
 05:24:07 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Maurya, Ranu" <ranu.maurya@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>, "Vivekanandan,
 Balasubramani" <balasubramani.vivekanandan@intel.com>, "Maurya, Ranu"
 <ranu.maurya@intel.com>
Subject: RE: [PATCH] drm/i915: Add Wa_22010465259 in its respective WA list
Thread-Topic: [PATCH] drm/i915: Add Wa_22010465259 in its respective WA list
Thread-Index: AQHbZyKZVyaDGwUBi064qOZf0Y8LD7MY3cFQ
Date: Thu, 16 Jan 2025 05:24:07 +0000
Message-ID: <IA1PR11MB626630A12A6E359E2F69F3EFE21A2@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20250115075202.2356395-1-ranu.maurya@intel.com>
In-Reply-To: <20250115075202.2356395-1-ranu.maurya@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|IA1PR11MB7319:EE_
x-ms-office365-filtering-correlation-id: ad8f12b9-c171-4453-5b72-08dd35edffe2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Rh8yGwxNnGjcYW0eIPqXlNZr3pIW4xE9IVuvFUVyYZh9e7rVnxycKYgHqyGn?=
 =?us-ascii?Q?SEnbyXcKUZXYz4xn98xyqbgpnokB2bdohKFIsRtFvmXIrJurS8XzGEVo5UvA?=
 =?us-ascii?Q?pip/1e2Ip88R8WW65C8MVlLJIXFkKpPWZQznBiQxWao5ntjuv7prnqJjIA+m?=
 =?us-ascii?Q?11nGJULt26e74qq+ViYu9xOD4w7w/AJ6AWMxsDWB4pW3HLSmrtwK2BEXF4q3?=
 =?us-ascii?Q?E6nFR8d24ZjA+QHmok8xNBVqarur7sMGyazjn+s/8REoczEKZf4Cgnf+LjF1?=
 =?us-ascii?Q?smIyr6XbqeBV0ouNGkEZVa1IZnrAt3dMsLcokhFzsu9c/g26mD3WrLCqP1i0?=
 =?us-ascii?Q?Zy5IeD7QuxvFpn0uy8BRZg+JvRiDeRcVmsCt6vqQb2vrvHMHmwC2Srl7kTYg?=
 =?us-ascii?Q?KuLbwFOmOJPdj32kFDb2s9HK7XApFk5GVQm3RhmuZnv+kX2ZOKUBiaiWJB1S?=
 =?us-ascii?Q?CcvYkMEwwobcVsqKgQuQyLgw3H7uRJMjSYOHUCndB3FPQ2v3s3l8atFRpNns?=
 =?us-ascii?Q?O+LiB4IXvzLCBvGWKTzK3tyWUTgogmyBEIxPWrWYve9mtzxC3y0Zp3JDVXr7?=
 =?us-ascii?Q?HLZ8SdzeAy9nnsMsAyyEfaU47HuSy/aPu12iTMffS36ePuT3jIzUkr4zZtvd?=
 =?us-ascii?Q?lfg/yDuL2PoIinOoVvcJCJ84ktsXhYDk1yE6KuPupursIrahK4hcppKmOfI2?=
 =?us-ascii?Q?kke253Alhvv3khafrAXhCFCi6I0sZSN/oPrXUTuSqL8CDVoESAVg6ymkRBpY?=
 =?us-ascii?Q?Mksjhbx1qMay2+mhS48722AqIH2oDfUD0UwSNbtF1QgSCH8BKueAmOA3fCMB?=
 =?us-ascii?Q?jEY0+Hs/6cNuTOsOFA92dev4Xh1KUGn5HBhKW9n5wj/tbi9LN6wSDF6EM37W?=
 =?us-ascii?Q?im76pMCtaOfovtlXHR5eGnXb5/hxRn+7HELxkIcRV+Q7cLMZ97lgrhQwUgdB?=
 =?us-ascii?Q?XKOnHEFDCM6tosvpi30y8q8JYmgW0k9b/dV3EUeX93N1tcOBOUCmjZzVeCIA?=
 =?us-ascii?Q?EDYSHErxK8kOOe3FpTt4becvNquDWenvXqQ9gnvcdqhNXwTlyKEv6y+bb6hm?=
 =?us-ascii?Q?WkCG93EXxtadwcwRDEJJLEE0WguDrSvNOZCBftHgl0p5+k4rBiW8PbB7CL2e?=
 =?us-ascii?Q?x41mV6z/Oxxv4vxqSg5u9x6X6aFqra0Wq2mDyhJgFzjqfcdWX5LWau5UhAUh?=
 =?us-ascii?Q?aOTJDxJ633VqsI/440q6hak4h2JjHIMmF2lWdO4NQn6oEFYF1VeuRrGQArVD?=
 =?us-ascii?Q?Rw7C7460x0JCuxsLFLAO0Hemhe9IOxhD3Uk/mrfEtweGSoRh/5vGqUT/bRxW?=
 =?us-ascii?Q?YWASi37RhZfS/yRzRuknqu/DcZOz6cvYYvJ3/gunMA0X/2HRyfUHYxHLuqmF?=
 =?us-ascii?Q?rv6q8p3gYnmvTx2D+ZUmef9OQ0Gax1y11E7OOj4YknpouJudQx41F6gsov/X?=
 =?us-ascii?Q?I8LjQ6QjrBBvYAySqoAnUEVtNWqasQoQ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YzQs/f6jwNPsYHn22dzy/wg3iba56R7Avcsxx2kGwGlqYzk9PBDJ7INCF9Et?=
 =?us-ascii?Q?wQglj5Tf9gjwNXXuP6WGZEWM9XaAYjewzutNyAlWrG5UgAt5FxExIiUfm14Q?=
 =?us-ascii?Q?aeQJ1qp4cZov4df/6bru/p/WacOrjuTuD8ORSMls8Ebj5Gq67qPQFz8WLL0/?=
 =?us-ascii?Q?p0PIUaVeWu3uV37Nyrj33QZzah1XGqOjGRnoLs3+NExUWoSrGOdYscGjQ7mn?=
 =?us-ascii?Q?vGZOMJ8VdSFEI74//jxoNuyQ6IGL4A1sYCApMAaucbYEqQ1x5rGcJTb+dLnh?=
 =?us-ascii?Q?gjx4sqaRHo8/d5eJYiOc21G+Ky13a+vV4C1r94mezvWbN+mm6ayyTBasFILy?=
 =?us-ascii?Q?ZFltAj1c0m4tfBF86PQudKs5YArnRbU6Vk7ufzI1fUTOF+LMs7Yudx5g+9zJ?=
 =?us-ascii?Q?0U925J8dGx9Wl2MNYPQXhdYWKOxKWoIBQn0rgTO730jkTSqjql7HaueXrbSc?=
 =?us-ascii?Q?ZfOPJpE4b9hdwgp+l0ZTRF1RuGHD1I5Ej8lI0LHz/wlgv00fHgqpY9ucI1l2?=
 =?us-ascii?Q?Y+32gymnzUYX1uufzq9qo6YHeSCB6+zhzCTxOgQrkOy3aKpQPQlJDvqXyad3?=
 =?us-ascii?Q?bIaCd0FW3SPzvUI2DrZROjjAveQGhntOvt7cxYEN1RCT88vwsZkr3qM7GI7t?=
 =?us-ascii?Q?Y1wPve0NNvgTS7ZBmoRwGXI04rfTxWjJ1e3B5lrPeJeAjUqlh39/55/aV4SG?=
 =?us-ascii?Q?kOVvLUZpfht9iIL7IVKu6Xk0zmtIXv90h2TEpG8c0TaeUwXvgOWATsm+LUeJ?=
 =?us-ascii?Q?ks3m984wbc8VbB27YnIVuTDBqp9vdUilD0Gdj3dl8IBTgzx0NFqd4lkaxkcd?=
 =?us-ascii?Q?VV92+oouV4PZXNDJG6Hg4G8iCkVhnTnHR608nGl+WonoDyMeR0JMoWMlCsgz?=
 =?us-ascii?Q?OWud828PMiiO2wPwvAmaEprATlCTLpdgTVOQi7Fz7rn2wojNXosTqnFvONBr?=
 =?us-ascii?Q?J36eglZESDss0HVrF2K4c9qHgfRhX8U37jIHRXLq0E6Wwi8T3sgfD4Q3N6XQ?=
 =?us-ascii?Q?JDhy7op7Xirz4pfnLATzED+f/oceln+lGO+kspLJlPPX/6Bxv9Aj2PG1hpR0?=
 =?us-ascii?Q?QrJKw0QLWHGX6iZq6QbZUYEMPV+vqICySBaKbK0L65qmm+irJMvktDfsg7h5?=
 =?us-ascii?Q?xh3FbH/ZZ3NUzCAa0EJ48o7xzN2sn0Pei2/4wQgELvhtX31zGa7RKzRCj0gI?=
 =?us-ascii?Q?EBKKv/WLjeE4+TrkgsRmFYNu5XBBBHkwCz4wL25P8rSD4pRij0pjZ99GUput?=
 =?us-ascii?Q?QyVx98mZcFCHJ29SEn4ET37+GBL4Y/Di4NTkIE0RvxUQNf+sDryG5TWglC21?=
 =?us-ascii?Q?mQdjy+1OL4bzaP19Y5lifrLKFqdO1qCRwwX3egVrBD5edVwKYLXSmkzN3NNf?=
 =?us-ascii?Q?zL5jBj3NsvHJnvFTBONjmIXtLa1GixNmrSq6J8EvexQ2i293YJ1BupGshX03?=
 =?us-ascii?Q?QeDDfOjfe2BiD/WN7ySBLNfQMFPreZi3GL3HHFB+8zRh5UbjoY4EgZT0W3uL?=
 =?us-ascii?Q?RX4shjxXuT9RISLn4oOHzVOnRy+17crFHg5Q7lbInk1vD/eizAp+O1xEC4K+?=
 =?us-ascii?Q?CXf8zDU42l5fqIgbXg013vfWmcj2A9UzufhfMQBnkStv6Dme6H/k2zL0qX00?=
 =?us-ascii?Q?nA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad8f12b9-c171-4453-5b72-08dd35edffe2
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2025 05:24:07.2966 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: erUD7ePhWGp9SqufBkIxd2+uhx0lO9TFS2wyYaVx1kMAF5FdT1mP8/AVd4UVzKFh6+17i6VAG/2sF8n8Bmc4xgB7+POKrGdfD3yUp+bhXYc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7319
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ra=
nu
> Maurya
> Sent: Wednesday, January 15, 2025 1:22 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Pottumuttu, Sai Teja <sai.teja.pottumuttu@intel.com>; Vivekanandan,
> Balasubramani <balasubramani.vivekanandan@intel.com>; Maurya, Ranu
> <ranu.maurya@intel.com>
> Subject: [PATCH] drm/i915: Add Wa_22010465259 in its respective WA list
>=20
> Add Wa_22010465259 which points to an existing WA, but was missing from
> the comment list. While at it, update the other WAs and their applicable
> platforms as well.
>=20
> Signed-off-by: Ranu Maurya <ranu.maurya@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 570c91878189..277a4df31071 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -691,16 +691,17 @@ static void gen12_ctx_workarounds_init(struct
> intel_engine_cs *engine,
>  	struct drm_i915_private *i915 =3D engine->i915;
>=20
>  	/*
> -	 * Wa_1409142259:tgl,dg1,adl-p
> +	 * Wa_1409142259:tgl,dg1,adl-p,adl-n
>  	 * Wa_1409347922:tgl,dg1,adl-p
>  	 * Wa_1409252684:tgl,dg1,adl-p
>  	 * Wa_1409217633:tgl,dg1,adl-p
>  	 * Wa_1409207793:tgl,dg1,adl-p
> -	 * Wa_1409178076:tgl,dg1,adl-p
> -	 * Wa_1408979724:tgl,dg1,adl-p
> -	 * Wa_14010443199:tgl,rkl,dg1,adl-p
> -	 * Wa_14010698770:tgl,rkl,dg1,adl-s,adl-p
> -	 * Wa_1409342910:tgl,rkl,dg1,adl-s,adl-p
> +	 * Wa_1409178076:tgl,dg1,adl-p,adl-n
> +	 * Wa_1408979724:tgl,dg1,adl-p,adl-n
> +	 * Wa_14010443199:tgl,rkl,dg1,adl-p,adl-n
^^^ Please include DG2 in above platform list.

> +	 * Wa_14010698770:tgl,rkl,dg1,adl-s,adl-p,adl-n
^^^ Add DG2 in above list.=20

With these changes LGTM.=20

Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>=20

Regards,
Dnyaneshwar
> +	 * Wa_1409342910:tgl,rkl,dg1,adl-s,adl-p,adl-n
> +	 * Wa_22010465259:tgl,rkl,dg1,adl-s,adl-p,adl-n
>  	 */
>  	wa_masked_en(wal, GEN11_COMMON_SLICE_CHICKEN3,
>  		     GEN12_DISABLE_CPS_AWARE_COLOR_PIPE);
> --
> 2.25.1

