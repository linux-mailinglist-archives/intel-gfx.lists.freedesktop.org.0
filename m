Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3F0966974
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 21:20:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 419DB10EAE5;
	Fri, 30 Aug 2024 19:20:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AVZxCNGT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8865710EAE5;
 Fri, 30 Aug 2024 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725045655; x=1756581655;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CH+otoom2cglfK6islCz7BsjYJUDqbyc15SNC7VlFU8=;
 b=AVZxCNGTwhL541CJ7sWMy5/ejfF9/ajmnEKs8WVPyTx5hI11VlF/76MC
 4dBsFkg7cGBbyOGqOtsaJkeztoTu1o/AyM6wzTO6xQm/Hay0/3y8odi+8
 WY/WyzSeiKCQIWMQBcclsS6OeyOPoRnNdSqreNzXYt8+O9pm1cjV72Kpy
 GZcII6XaaVAAAME9zMZ+BKZEa7Bvau0wOUZfbN35AfjZYUoErI4z7Pp/f
 QFPymL2HHehwkKMu7fyur+ZnryXIOplaUOm2dEtOEm15c7Li5AwHun6o0
 JbNY5VkHiaAEX2GOIIM9yvEo5SCzei0JppbvRINPwW4sT8QIzQHdKfS/4 Q==;
X-CSE-ConnectionGUID: WOlkfMcGSKyH84DWc24kHw==
X-CSE-MsgGUID: I/sBOVEeT6OPtyT5zOcACQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11180"; a="23565254"
X-IronPort-AV: E=Sophos;i="6.10,189,1719903600"; d="scan'208";a="23565254"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 12:20:55 -0700
X-CSE-ConnectionGUID: Kldddoc2S0+iwU3gI3qMWA==
X-CSE-MsgGUID: j2OANDwVT6+FNeU/8OIljw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,189,1719903600"; d="scan'208";a="63605641"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Aug 2024 12:20:54 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 30 Aug 2024 12:20:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 30 Aug 2024 12:20:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 30 Aug 2024 12:20:53 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 30 Aug 2024 12:20:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dwsvSSzhDHfd9ORo3M42qdNBmgb+k1TbUTg4st1l+dQqpQGi0NC/CFalhld7vknEr8x9TcBIOn9acFBYw8nfLfmsa6dvt/6/m4/ttrVjpqo2vmcifRwIGam0T/lAGWYeYdBZt1k3QqBE4wt116sjtsQ9QEvVm5jzaQaowTTGDNqyX1rydKqFCQoYEyA7Zsc6Uh8zx/hdrU6xB8Kj6lKOpemAtGkgoeyCdEMNtPhvM2Nh23xlY7IcD0n9AILQH4USmDFGmxX3wzHrlJutlEWkVQE2ObbwT6eWcCOi8Ure7liGf/fHcfZOHdS6JZCeoR0l+bGlWyaTAdIEudYA3yM5JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t5DmpCSwudzO7JTdRWc1sPrFJ+4E9hItNiEOCqjCQv4=;
 b=YvioEM7oMVDWU+g1uyZJccDlO5bIIQb7fnEBP5tkflurHdkTZLkZGr6oOfOdUABE7Yhd/4GQfgD1I02/upp46JToLNrzM1sL+gKuyc1qyaoUQtt04th6rIYU7fkbHd5XkG3BTzSpF1ajYlTQ6rhqyV+oUj1fMtzqsoocAgEqmmAK8DfDeoM5RNkHyTpT3sq5NoKWIpZmh7G8FNO6bRdw8l0ODE5JZHTaLAog7a9V4LcQ/3KX/AqBYSXy/co/PW6h970dcKRiroeitMH6SyIMV+OfaNF/TG8/EvxEk3DGwILuE//Lqt9Vs99hoYnmT9mfVIUH4jyLd/0NYxRH5gYJyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by LV3PR11MB8506.namprd11.prod.outlook.com (2603:10b6:408:1bb::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.28; Fri, 30 Aug
 2024 19:20:50 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.7918.019; Fri, 30 Aug 2024
 19:20:50 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Ghimiray, Himal Prasad"
 <himal.prasad.ghimiray@intel.com>, "Brost, Matthew"
 <matthew.brost@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 1/2] drm/xe: Add missing runtime reference to wedged upon
 gt_reset
Thread-Topic: [PATCH 1/2] drm/xe: Add missing runtime reference to wedged upon
 gt_reset
Thread-Index: AQHa+wtvBTZx+ieO+EWxulwI8XGRVbJALS0A
Date: Fri, 30 Aug 2024 19:20:50 +0000
Message-ID: <CH0PR11MB54448FA6F72A4F4B3A0FF968E5972@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240830183507.298351-1-rodrigo.vivi@intel.com>
In-Reply-To: <20240830183507.298351-1-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|LV3PR11MB8506:EE_
x-ms-office365-filtering-correlation-id: d192a893-96fd-4630-b762-08dcc928dbc7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Hm6PcA/05VsM4bqvxKHLTNihoaIAyNMwXAuWhpvooiW/XcQf1qckNogcyFZB?=
 =?us-ascii?Q?n5YcHLZusjgF+bx2asyvaw4T6M/8CMN7obkPDFTNlJHL3w8mxhnHE7krTjmQ?=
 =?us-ascii?Q?y1mz1J0vs5x3SpqZmnouLrjiFDLBz/U5QQwHzfs/COO2ack2G97Fn0QsGtLM?=
 =?us-ascii?Q?DBud+Rqc+ZCWY7LV6EZMkoireGZHaI1Ktyu2/FA5FV3Ba6+zxGaz2U5QcxgT?=
 =?us-ascii?Q?PJsR5g7GODIGnhC2sLg7EzzVbdOHFXnvrp0ZDM/2m/FUGTHSJht1CCxRNioG?=
 =?us-ascii?Q?NJ373izqARX8V4FIGAI3rHzlkXZ/mduH6dZW1TfPCS9hAYOkabyNsrmnozeW?=
 =?us-ascii?Q?JbUiFAf+ZyMoFQZF76y4ZEx1roSrE6GuWigBualK+DrimXmeU7c8lx5fOVRL?=
 =?us-ascii?Q?7tE8OXPjwvecwQF3JeBtQ1VrXnoxYAixqkd2vM7zisHrJRJSAU1gQbCBTadU?=
 =?us-ascii?Q?8lFEoAR9MXo0aQP4qmT3rrDm52QDnr+6EurmtxAu69oYOh7SHoaNSdxnKOfz?=
 =?us-ascii?Q?sW+tG+GCNNzd8a6SJ2nKpInceELIOtcj/6csC1Mcf8qZxNwjuf5XQ+SZp7nG?=
 =?us-ascii?Q?V4nHox6iUq7eG8CEwAVc6CvnjTO4KC5opIDw45+7ro5xZKBo+JFX20iE1jpG?=
 =?us-ascii?Q?Mo3RRSQmoNuiBBuLXhmsp5qJKtzNHPZoTWtcOULLZmrtDUrIooPVzWYuhga2?=
 =?us-ascii?Q?A282HgQnKzgmV6c2AdT4UIzd7YjIDyXSb5gJQslz5p6YOE0+n7UhVEiRCBO9?=
 =?us-ascii?Q?WsMRxUKZ99rYLDajvFjRFxIIPjedJ/Wm8EMuC+KfGodwpLccSd3iSLcUMCx1?=
 =?us-ascii?Q?w2j64/38rKHUNPRNy8DZ1M9DFJz4CbPX/necq1YiXEQ5uFtLNsHwU7kkeV/M?=
 =?us-ascii?Q?jCrVcT2HURHAfD0peSyj6EN3JJfFLl/CwSJGXABbnukBuiwdPFDcSR94WvJV?=
 =?us-ascii?Q?jSgVSEp369YA99JDrRF9/Xtxd60nSPT86lzk2l1ciFIdHcCAw0dkHiH0aDIN?=
 =?us-ascii?Q?wiqvtgs4C8vcRmUxRuhF7xPjrvvjnEWQzGbdOp3+YLviNF5Bpv7PfqmZyk/f?=
 =?us-ascii?Q?FrixicrdOAD2m2G6GeJcSdNferb5jKOOPBw0Y+gNBrxxXI4HkiTxVyUZQODI?=
 =?us-ascii?Q?PYbA14IdkemavPCglL9bGbJ5c4P2GqvVMNlQSnE6XpyaHcJMJ2g/JHcPEH66?=
 =?us-ascii?Q?KQC75ZSD0UYgb9G5hj9EVeZdCtPPL8GoDgC9JTUcDGFI/TEz5UDwtJRbYyca?=
 =?us-ascii?Q?632wjYEikgNnP8ker+2E2d5zc1xLrxlttBLR2v/YR02BMMScG+P5E7KB28TP?=
 =?us-ascii?Q?BRHwRfygSQ7QJIMP5O3mWEc2oId+dVMgufPTZVv+sQ8FFGj+9K1vZBOmjZWz?=
 =?us-ascii?Q?bRwc/idHzyRqmhegA2MCyO1cvC4+XK+rx34p2AS+IanUmBhOKQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VWFUgpz7tKDiSrrlouGPaVU4IaLMyl4OBEausTQqJQt6BD5FqUXfUrJAf5kG?=
 =?us-ascii?Q?V1NKgNuwzSg/Vajvxs+gK+5I47foqhH89m8aa3Kpc6dLCrMu9s3O/9awwRMq?=
 =?us-ascii?Q?gKjGr8gU7aHdHE2dC0edCc+W9tUKCJlRSBsP8XuPti0h59/oxL9rSoU7ggix?=
 =?us-ascii?Q?CHFmJ0HJQTUN2iWyDsUdWlBGvKN4a6z9ryPleRzehQk57hx/+pdomdmIM9mr?=
 =?us-ascii?Q?cCSGiiqIywLuJG9n5JMuSs9PXtMhzQYlAUQ7on8yHB/HyEsYDcGptwctGEZJ?=
 =?us-ascii?Q?bXF7Ug+/gViElpNiPdY6tcb1/GtM6PaujHBAN3A+wT/4U2dJguz62YPZD68i?=
 =?us-ascii?Q?su8lziLi+0/DBHr1mmP8veDPeYFb1QaA+FwxvX8Q/TYF6gRJquCIAG6vUeqs?=
 =?us-ascii?Q?ajOGTkjHqP2bXknl1kK6URei2LIf1K+ePjdkoFDMaFq7eBWaYYNzszpqDIFS?=
 =?us-ascii?Q?0n5vVbKlG8thznJZicq7kWSad2kNxVwL6N+qOef5G16lVqs5qEd5ljpw1LGv?=
 =?us-ascii?Q?czR7z20xrIX0heIL+/UbaaJ+/tNXvjMD8+wUUJq17so/8wJtJn2AB0KVlKSR?=
 =?us-ascii?Q?eMnzP6XuW0LgeO+zRnXK3K4huV5X19v4/npd5vZTnH916uDjsR+5tARh2kLE?=
 =?us-ascii?Q?MDWELiSTnhGDp9LyaGKJQpGGI1r6CGmrcWjVek1YY2PB/8GG0ZXlUhkGeO9I?=
 =?us-ascii?Q?BOW1h6uZTCqL+U9bDkwCcCZepNkB1zw+/zzcuxFf2sA5HdK3/loiWtttSZZx?=
 =?us-ascii?Q?6rQ3/BuCH9rdreAOppD1399wekTCPdBZhVmLbirt71KU2Cc4c9oGXKNh994T?=
 =?us-ascii?Q?NHDmDFnGeHn20XYugV4dtQSGShe85LOOJITUOZERX6ajtz5bLtf3/OVMCJcW?=
 =?us-ascii?Q?qDtnBkA87187ptBC9ZwHyELBnDi8NIZJwzedTudAi0YAiipt3ph88MXlnORa?=
 =?us-ascii?Q?cq5p958cppcnN6daxzHw0/gpem4RNsb3G84ZoFBdKcAoQNqOV1EXhyIe6Ayc?=
 =?us-ascii?Q?fUYGnCrfB1YMjO22TvCIFM28OeS7Y189xw+5hca7yyShjn2WugPG6d4qqQN0?=
 =?us-ascii?Q?CaPuYm5Bpbu/FoKljS+YSL1y+LdLvnWSTzR5/aNj6sp22qvnczURYwi4JcQm?=
 =?us-ascii?Q?pJOBmFEvBztWbSpO3dv0XxS1vTfXcvLc8+wCQ+4osabNScsBBFb1MyqjDBVD?=
 =?us-ascii?Q?4hSPcBXtZ08XzII/32gKUSfr0DAGSWSMY1eNOCVEZxMISodqHh9tfgQ6u0ri?=
 =?us-ascii?Q?/j3oQ+zqqasqrq6H/hGwfZgwJsrjC81WZLV3u4OvTbqi/g4N227CnyUiZ/WU?=
 =?us-ascii?Q?oOspOQvZO/fE54rdM0TKM3SgKtLy8BVA/D8D35r0eH7oMzg0lXS8zkBW2KEt?=
 =?us-ascii?Q?kA+UoJpZPjktsG6meISrXEZEU+aJn58gBWT4/Jt6gc6HMEkRaxYS1z/f1YIQ?=
 =?us-ascii?Q?oY/SiLjOXyYOdfPIHb9k4OOdQYCwY6KxmLrvM02i3VW3XvJ63wqXDBd25vX5?=
 =?us-ascii?Q?GPF0iw73FOrMb00S3GJMWzeWDGF7TMWwIfVpAcvVrXoSg6B8YY2cJSQ+ENr/?=
 =?us-ascii?Q?xM5VTZJ5FBkD/L3CrV3gY8qeEiKw5WPe6WeOweBQ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d192a893-96fd-4630-b762-08dcc928dbc7
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2024 19:20:50.2624 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iZO9KlvE7Y6RBf21be5+aIqH3l7xi6vAGMd+FY0QqKjXr1KGko/71wbjqUKPaLKNjcTyEmdfj2+rk7ILYnx3khPIaKou0tjr6uYEWSKLCjk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8506
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

-----Original Message-----
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Rodrig=
o Vivi
Sent: Friday, August 30, 2024 11:35 AM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Ghimiray, Himal Prasad <himal.p=
rasad.ghimiray@intel.com>; Brost, Matthew <matthew.brost@intel.com>
Subject: [PATCH 1/2] drm/xe: Add missing runtime reference to wedged upon g=
t_reset
>=20
> Fixes this missed case:
>=20
> xe 0000:00:02.0: [drm] Missing outer runtime PM protection
> WARNING: CPU: 99 PID: 1455 at drivers/gpu/drm/xe/xe_pm.c:564 xe_pm_runtim=
e_get_noresume+0x48/0x60 [xe]
> Call Trace:
> <TASK>
> ? show_regs+0x67/0x70
> ? __warn+0x94/0x1b0
> ? xe_pm_runtime_get_noresume+0x48/0x60 [xe]
> ? report_bug+0x1b7/0x1d0
> ? handle_bug+0x46/0x80
> ? exc_invalid_op+0x19/0x70
> ? asm_exc_invalid_op+0x1b/0x20
> ? xe_pm_runtime_get_noresume+0x48/0x60 [xe]
> xe_device_declare_wedged+0x91/0x280 [xe]
> gt_reset_worker+0xa2/0x250 [xe]
>=20
> v2: Also move get and get the right Fixes tag (Himal, Brost)
>=20
> Fixes: fb74b205cdd2 ("drm/xe: Introduce a simple wedged state")
> Cc: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/xe/xe_gt.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/xe_gt.c b/drivers/gpu/drm/xe/xe_gt.c
> index f82b3e8ac5c8..dd96dec95b19 100644
> --- a/drivers/gpu/drm/xe/xe_gt.c
> +++ b/drivers/gpu/drm/xe/xe_gt.c
> @@ -754,12 +754,13 @@ static int gt_reset(struct xe_gt *gt)
> =20
>  	xe_gt_info(gt, "reset started\n");
> =20
> +	xe_pm_runtime_get(gt_to_xe(gt));
> +
>  	if (xe_fault_inject_gt_reset()) {
>  		err =3D -ECANCELED;
>  		goto err_fail;
>  	}
> =20
> -	xe_pm_runtime_get(gt_to_xe(gt));
>  	xe_gt_sanitize(gt);
> =20
>  	err =3D xe_force_wake_get(gt_to_fw(gt), XE_FORCEWAKE_ALL);
> @@ -794,11 +795,11 @@ static int gt_reset(struct xe_gt *gt)
>  	XE_WARN_ON(xe_force_wake_put(gt_to_fw(gt), XE_FORCEWAKE_ALL));
>  err_msg:
>  	XE_WARN_ON(xe_uc_start(&gt->uc));
> -	xe_pm_runtime_put(gt_to_xe(gt));
>  err_fail:
>  	xe_gt_err(gt, "reset failed (%pe)\n", ERR_PTR(err));
> =20
>  	xe_device_declare_wedged(gt_to_xe(gt));
> +	xe_pm_runtime_put(gt_to_xe(gt));
> =20
>  	return err;
>  }
> --=20
> 2.46.0
>=20
>=20
