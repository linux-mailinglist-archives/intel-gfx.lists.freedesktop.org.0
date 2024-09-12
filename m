Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B889772AA
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 22:22:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EA0110EC3E;
	Thu, 12 Sep 2024 20:22:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UHbkWlpU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB28F10EC3E
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 20:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726172521; x=1757708521;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cswhN4m5JU4Zf1xzYGzBFtYdizhVZawIMVqx+tRs/Hk=;
 b=UHbkWlpU1ycDh1ojVoY4my2MujPlymILzbQ5lxiQGCt50lROv5kKUmC1
 n2F0XHluY+2lObYR/oAkWPoYhzb+0cBCwVlUjdh/BYpm+8WCsJ+Sk93FB
 6azuJTe0fcHNn26ynlL0SL/7bxCzit3ZPuL2W+lrC19iZszXsS/k10BJO
 9OucHxtC1AYC/uZRcnjbc5fAvEYLoYrY5LLbpRS7FeEq/tB4mt++P4fxa
 IEF9JVJistjogYGGTkbm6iKwyEU5ojlqrVGejmzVKFK9HuOAKA/cYWTvj
 OCnI6lyOydMw5YQW91gzRiPCqTRI8Spx5HPgixUAOsXryLI7JmbGedCup w==;
X-CSE-ConnectionGUID: dZ22D7yXSeKvDowhqLiPUw==
X-CSE-MsgGUID: tXcobDbWQuioxbnusqEFUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="42566824"
X-IronPort-AV: E=Sophos;i="6.10,224,1719903600"; d="scan'208";a="42566824"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 13:21:56 -0700
X-CSE-ConnectionGUID: NYGOt4s+S3SJ+rQibvRuAg==
X-CSE-MsgGUID: rKcBGcs6QAGS/bQgCRDlGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,224,1719903600"; d="scan'208";a="68341803"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 13:21:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 13:21:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 13:21:53 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 13:21:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jF62TIuVcoq8y0RILQOgZWi6j1c4/Axvu840OadJQKRhxTj0s7N5EzHYANDsn2ySPzne0WZUocm45yACAdH9fCVQqPL18xT4DVouJZpZ3rFYQh60qWV6wc9cMx2oI91VfGJNP7PEZ0r8a6+P+BcfxDyvwnHuTEHC5t2UEcShIFuZnC8uEYCDwEFgsGHCFHY1PVJaTntTHDMO8uMlFkwQhJm5Q49EaNFYJLnTJVpQjxGxtXy3+lrf5ZHxSa0c6TYUyNtJ1T764/bBr3LqjAIq/EmU0Y/wkDDfqHv8BXY0r879hytNOyZN/rKIKE6Bcg1WD3MBvneVwSDIoDFYGjRt8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AuVjBBjRcnTc7FUelfOVCGMuUbaUBwHQKdaQN0EPu+M=;
 b=Oiy1Tnr+XrsMv33XT/4iCnev8K8z+lqk6xebPE6H6O4snSvqBqOhufjoYG1htSvveRTWX0a/ZrpRwJiEvmjnsRUa7q1d4K5Lc3FFZNbGdpdNrqP+O1pc4l6dRHFkgko6aamkIpjgtUbTwG/pWtDXytUWHb77STeD1qXDVaTF6owjCwzCUL8ihskRb11/SJgFV4NPtUEttRWkw8PP6b2yefkz81kxHGTx+JlLUaY9mx0yfsHT4F5YQl1Ty6p9qNJGkX1/qWnAfzIP+127qC9bhGjtNwgXME9bQOFe5bxZXTVqaWBFOIpDWZ/OhiVj2CeGmEjo+Ejz3fs2A3EaJX89hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by BY1PR11MB8055.namprd11.prod.outlook.com (2603:10b6:a03:530::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Thu, 12 Sep
 2024 20:21:48 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.7939.025; Thu, 12 Sep 2024
 20:21:48 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 3/3] drm/i915/irq: Rename suspend/resume funcitons
Thread-Topic: [PATCH 3/3] drm/i915/irq: Rename suspend/resume funcitons
Thread-Index: AQHbBTjdz64KrNhVzkSP2aGsnmgI9bJUlAVA
Date: Thu, 12 Sep 2024 20:21:47 +0000
Message-ID: <CH0PR11MB5444424A8B0D7098625897B6E5642@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240912172539.418957-1-rodrigo.vivi@intel.com>
 <20240912172539.418957-3-rodrigo.vivi@intel.com>
In-Reply-To: <20240912172539.418957-3-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|BY1PR11MB8055:EE_
x-ms-office365-filtering-correlation-id: 33876a3e-7c3f-4f7f-2738-08dcd3688734
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?607VMPPyCUV+yVpndkuQb/mRn9g0p54DH+vuUy5UcrBvcVEqkUZX66QZSBvZ?=
 =?us-ascii?Q?UMdBxdWN/J1hBE0Js8OMaUfdvAwWRBwXQBA/7FA3TcXfBfrWE6UmF3xbXlMQ?=
 =?us-ascii?Q?DFbmnZyfph7OA5SgeGQZ2hghyBJFjrLGhSXVNvQ2u5weaRGD/ePkMlJkbMWp?=
 =?us-ascii?Q?uB1lIuXz4q8t+F4pYR6XkWD23LGTPkYI2yGgUkOjzQwnz0jDWo50RW07YT8X?=
 =?us-ascii?Q?oaATO+aVU1lAtKVwQrYJLS4sytZZI3kxIYHFlEKUnmStaRlUw3YgCZGN3999?=
 =?us-ascii?Q?ults6sLVsEAePySuw10R2jxczFwuVH0lcFJWSF1mHdeGCtyH/AnejvHf0kPl?=
 =?us-ascii?Q?HlBU76QmgCP7kxzkuBUhr7XwPhdvaJGK8iMHep923+QA0h+Qmt4RLyQhODdh?=
 =?us-ascii?Q?PPUswqqc/fGGtEsj0Ikg6noPbP/TpuvIEix/H0Z3zvgNmVHIK9yqrWB/HCqX?=
 =?us-ascii?Q?yBeZakGiR4bNPDuKDQ7NWZvReji2ANafEikJhRnqizrUcTD+CH/dw25p1J8d?=
 =?us-ascii?Q?AuBQuyfwBIgTZhDHphHcv+uTtKwO03ABsv7kpTQ8rTjQ2yJzHepydi5kjIxW?=
 =?us-ascii?Q?nPJiZwfFwk0BHpOTGi0sMgcafDtBZzY99UCn8/p9oVRU7wEgoxvPaL6QJU1X?=
 =?us-ascii?Q?Eu2E1iFWGtRVp8elIxTO8SqitB/qjQmsSZihJGZ+hZsqxpoVCasxzUbP9W0W?=
 =?us-ascii?Q?vAvXIAqkcn+YtDvAHIuD0drRGtgv9WQBY+yWiiGqDeW4ezEw23ROqVi9tWMK?=
 =?us-ascii?Q?ctZX+RTtcmcGscYc+DKXHxL4Ci0ZzkJqju71+1wNhf5MlTzwBskkE/L6rUut?=
 =?us-ascii?Q?FrNjBoXBULN0j15dtUoihKAsOu69IYc9qg+sW4oU+9qKXNqJqx0Pvb4WYLLw?=
 =?us-ascii?Q?nrrlrk9VvcKNYurb+wcP3eSoO04CL8lydfMpW7jNrxIGBJcvNy4JD/2ReTYA?=
 =?us-ascii?Q?a8AdHClWmyzQa8qICRfZvLmV4STYll6EB/4FwLqONTPFIGZM9gYHisl87TQ8?=
 =?us-ascii?Q?b47Riq0uMp4zlOUFnNxHRYHFRx/ydEh9X2liz2tEY+0Vv0dXkwRTgNz6fRrx?=
 =?us-ascii?Q?YyU+6S0Phf2v0bsxGZjkAPqgO3PrnJXSYTTvFFz1UMnkcUQe7EWNSV1L7uoL?=
 =?us-ascii?Q?d5198ywRf+EHM6Q+uWro5OGx3l0gKR9LC+kqR2PvMcr2plk1Dd7trEcpaNWo?=
 =?us-ascii?Q?PREIONU0LDPY+7s5/lYpyt4tztTCf4DaG0cIa0StYt9kl8EwZB+6NuOB8xRK?=
 =?us-ascii?Q?FUTeGZ0ygf2YFQ07msPts3hOADpSTxZoXtExDKhln+ZwNnkLimFbdT7ruXXe?=
 =?us-ascii?Q?v1yzsYBvwZjJ9jbTuwvt/7JYws+8U/SIoS2HwOjBlh38uQBTOvyApF1FAj2P?=
 =?us-ascii?Q?GAVPqwuAGKJ0+0sEC2YW3oui44HyR50j5HRtgP6HkBM/fVq5bA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RbOulk3m719j7QeuoVX3PlXFkXJVlJiU0ZdNZyf7d2884s6Zj8kjwU0NeOz7?=
 =?us-ascii?Q?aFqrfwJY3i5AG2bdgssWvkyu0cswuNMgC/Xuzryi34fAzuCpnfEQcLBTGoTF?=
 =?us-ascii?Q?cQNlLSfnyl+qpQrAOx5PCQ/Z4dDvnDRoQ2B1+AXf8FedFTA8X12fwN6c1GFm?=
 =?us-ascii?Q?TJw+/mdixGGwsXQWaOfZvemmPe4V/wpJ+OClXPlqOihjFvcAuvgk8Q0NQR3m?=
 =?us-ascii?Q?BEBUtpp53lAa/AuqwxvlwrFWeBDmwCO1W8063G/dG9oE203yjwMMugg8rAZ9?=
 =?us-ascii?Q?zIsyw0Fdy+QuEeUqaVNM5vDN+/6a/5f3LGrvGzbhbd4NAA34ElyByQbeVJr9?=
 =?us-ascii?Q?Jsbc8MVLpXMTgdFtNVo8w5L2GgVVLm4mkYC/I7jnhyfxaWGQuf2NOL3w3u5+?=
 =?us-ascii?Q?bicuMhomvbaxBmqG1sQgYQwSr/Hj/6F01Dvd+Tk7I2Vtw7LIXCit11Q+KULW?=
 =?us-ascii?Q?TzuPjKdPbdXd6Vf9HOeMe7Epeu+Ez4QXP3bUUA9KlowepFZPnwIjIDt1p8yr?=
 =?us-ascii?Q?LCJ3KZI7oYjVHakWEwMDZl4gK91oeZbzd1ZqDlG9h4G6+mvo6OeXYZfdipb+?=
 =?us-ascii?Q?A/hkudgmjDnP7TKPNlGXZQKHJgi46bbMV79Y4MVGyhZwWYwpwUJlJ3GO7KoD?=
 =?us-ascii?Q?270ocV1zLXpOfC5SHGzliVV9A5LwQnT6e1/bbe8/NZ0bz+uTsE1OLU+TEe7r?=
 =?us-ascii?Q?t3J1Fd1np3/CppGxUhFtUFRNraulo4UWpsG7bdo2LoRUo+lBpBqVqSCsCn6h?=
 =?us-ascii?Q?PeqLCztd2KzcF5iyK8wOTzCdtKNllVf05IVb71cPZ021j4GGECbfAQYhHqDQ?=
 =?us-ascii?Q?PpLyBUYawVEdHXG24q1T/YqgSJP3GBBwfO1ov+NDlDYQSqtoIbjnV0SWGrcX?=
 =?us-ascii?Q?sfXWuPZJrzb/kDaK4mD3SU43/gHVch28OAGsSNnMnKYAPjojBlAD3EDBiJ+4?=
 =?us-ascii?Q?Cvjpe4Vlx1+AW1pSr60y+ZbPbWB8Y+TdLPUHNFkfvzlDfweuqrBWmDTeBK6z?=
 =?us-ascii?Q?JCYjxy0mfAjgs2DGCvIxz1/7gC6owLuXR0CZLZoMjbPvs3fup9eUxSy7t5mU?=
 =?us-ascii?Q?ptMy+TjpIiEZCdEqf1yxs3cnVufLpp8ZeN1FGCI/9sn+OwbYYeqN9FuGRXAH?=
 =?us-ascii?Q?7Lr8GH6RniYTKLS/ryJHU6uGVZltp/vV+prI4/4+OPSpo6LOXgIOcIGxtOtZ?=
 =?us-ascii?Q?ENpejoGAts8xDAoIm4kBmneJxq8to8RvrZ5p87IM/aPN+TzWVq24D7qZIc1J?=
 =?us-ascii?Q?x1iRIy24XFv9CAJaDYjcIfC+QsZ8cEw7Si6FI9b6IhepDyJNklAdYCXUqBoM?=
 =?us-ascii?Q?wownNTI7dC2DdR59ru3AIjUhoaBHxejfP9VGPKqa90Lbkwtn//naEhyI5dIZ?=
 =?us-ascii?Q?RWP9FNoM38TFlvL8RaRljNoCpv4CvUKqIhU6mi2gPQu/UO/PfeyjI75G0J0t?=
 =?us-ascii?Q?8XHAehHxZUF1NmgCscC9zfH1jdKIwHOPE8mCsJt4AmxzIOGBE+DRWwl+nq7z?=
 =?us-ascii?Q?5Ll4OODlAu8lTVQzQkWwZRiLKPofuee2eZ2briyVIztjosVlx0itN8qMZvjN?=
 =?us-ascii?Q?QjmKJaZqDvoLhVfVvA5DQaIYF+rMl/9ZUDYJR13I?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33876a3e-7c3f-4f7f-2738-08dcd3688734
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 20:21:47.8073 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MJq1soGSWN/hal1AUwjShqm8IsTLytZcsMQ/0sgKJgV37hO+h+Bc/ZlMDpDR524+msaBi4rf3YQjJR+wO+l8eUATCCCaoe/nCxYKk678m1w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8055
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
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodr=
igo Vivi
Sent: Thursday, September 12, 2024 10:26 AM
To: intel-gfx@lists.freedesktop.org
Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>
Subject: [PATCH 3/3] drm/i915/irq: Rename suspend/resume funcitons
>=20

s/funcitons/functions

> Although these functions are used in runtime_pm, they are not
> exclusively used there, so remove the misleading prefix.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_reset.c |  4 ++--
>  drivers/gpu/drm/i915/i915_driver.c    | 12 +++++------
>  drivers/gpu/drm/i915/i915_irq.c       | 30 +++++++++++++--------------
>  drivers/gpu/drm/i915/i915_irq.h       |  4 ++--
>  4 files changed, 24 insertions(+), 26 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915=
/gt/intel_reset.c
> index 8f1ea95471ef..f42f21632306 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1233,7 +1233,7 @@ void intel_gt_reset(struct intel_gt *gt,
>  	}
> =20
>  	if (INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
> -		intel_runtime_pm_disable_interrupts(gt->i915);
> +		intel_irq_suspend(gt->i915);
> =20
>  	if (do_reset(gt, stalled_mask)) {
>  		gt_err(gt, "Failed to reset chip\n");
> @@ -1241,7 +1241,7 @@ void intel_gt_reset(struct intel_gt *gt,
>  	}
> =20
>  	if (INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
> -		intel_runtime_pm_enable_interrupts(gt->i915);
> +		intel_irq_resume(gt->i915);
> =20
>  	intel_overlay_reset(gt->i915);
> =20
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 943e938040c0..f82aa313f854 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -950,7 +950,7 @@ void i915_driver_shutdown(struct drm_i915_private *i9=
15)
> =20
>  	intel_dp_mst_suspend(i915);
> =20
> -	intel_runtime_pm_disable_interrupts(i915);
> +	intel_irq_suspend(i915);
>  	intel_hpd_cancel_work(i915);
> =20
>  	if (HAS_DISPLAY(i915))
> @@ -1035,7 +1035,7 @@ static int i915_drm_suspend(struct drm_device *dev)
> =20
>  	intel_dp_mst_suspend(dev_priv);
> =20
> -	intel_runtime_pm_disable_interrupts(dev_priv);
> +	intel_irq_suspend(dev_priv);
>  	intel_hpd_cancel_work(dev_priv);
> =20
>  	if (HAS_DISPLAY(dev_priv))
> @@ -1181,7 +1181,7 @@ static int i915_drm_resume(struct drm_device *dev)
>  	 * Modeset enabling in intel_display_driver_init_hw() also needs workin=
g
>  	 * interrupts.
>  	 */
> -	intel_runtime_pm_enable_interrupts(dev_priv);
> +	intel_irq_resume(dev_priv);
> =20
>  	if (HAS_DISPLAY(dev_priv))
>  		drm_mode_config_reset(dev);
> @@ -1481,7 +1481,7 @@ static int intel_runtime_suspend(struct device *kde=
v)
>  	for_each_gt(gt, dev_priv, i)
>  		intel_gt_runtime_suspend(gt);
> =20
> -	intel_runtime_pm_disable_interrupts(dev_priv);
> +	intel_irq_suspend(dev_priv);
> =20
>  	for_each_gt(gt, dev_priv, i)
>  		intel_uncore_suspend(gt->uncore);
> @@ -1494,7 +1494,7 @@ static int intel_runtime_suspend(struct device *kde=
v)
>  			"Runtime suspend failed, disabling it (%d)\n", ret);
>  		intel_uncore_runtime_resume(&dev_priv->uncore);
> =20
> -		intel_runtime_pm_enable_interrupts(dev_priv);
> +		intel_irq_resume(dev_priv);
> =20
>  		for_each_gt(gt, dev_priv, i)
>  			intel_gt_runtime_resume(gt);
> @@ -1587,7 +1587,7 @@ static int intel_runtime_resume(struct device *kdev=
)
>  	for_each_gt(gt, dev_priv, i)
>  		intel_uncore_runtime_resume(gt->uncore);
> =20
> -	intel_runtime_pm_enable_interrupts(dev_priv);
> +	intel_irq_resume(dev_priv);
> =20
>  	/*
>  	 * No point of rolling back things in case of an error, as the best
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 2c0fdb5e05a6..d42997fdee65 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -1449,31 +1449,29 @@ void intel_irq_uninstall(struct drm_i915_private =
*dev_priv)
>  }
> =20
>  /**
> - * intel_runtime_pm_disable_interrupts - runtime interrupt disabling
> - * @dev_priv: i915 device instance
> + * intel_irq_suspend - Suspend interrupts
> + * @i915: i915 device instance
>   *
> - * This function is used to disable interrupts at runtime, both in the r=
untime
> - * pm and the system suspend/resume code.
> + * This function is used to disable interrupts at runtime.
>   */
> -void intel_runtime_pm_disable_interrupts(struct drm_i915_private *dev_pr=
iv)
> +void intel_irq_suspend(struct drm_i915_private *i915)
>  {
> -	intel_irq_reset(dev_priv);
> -	dev_priv->irqs_enabled =3D false;
> -	intel_synchronize_irq(dev_priv);
> +	intel_irq_reset(i915);
> +	i915->irqs_enabled =3D false;
> +	intel_synchronize_irq(i915);
>  }
> =20
>  /**
> - * intel_runtime_pm_enable_interrupts - runtime interrupt enabling
> - * @dev_priv: i915 device instance
> + * intel_irq_resume - Resume interrupts
> + * @i915: i915 device instance
>   *
> - * This function is used to enable interrupts at runtime, both in the ru=
ntime
> - * pm and the system suspend/resume code.
> + * This function is used to enable interrupts at runtime.
>   */
> -void intel_runtime_pm_enable_interrupts(struct drm_i915_private *dev_pri=
v)
> +void intel_irq_resume(struct drm_i915_private *i915)
>  {
> -	dev_priv->irqs_enabled =3D true;
> -	intel_irq_reset(dev_priv);
> -	intel_irq_postinstall(dev_priv);
> +	i915->irqs_enabled =3D true;
> +	intel_irq_reset(i915);
> +	intel_irq_postinstall(i915);
>  }
> =20
>  bool intel_irqs_enabled(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_=
irq.h
> index e665a1b007dc..cde4cac5eca2 100644
> --- a/drivers/gpu/drm/i915/i915_irq.h
> +++ b/drivers/gpu/drm/i915/i915_irq.h
> @@ -34,8 +34,8 @@ void gen6_disable_rps_interrupts(struct drm_i915_privat=
e *dev_priv);
>  void gen6_rps_reset_ei(struct drm_i915_private *dev_priv);
>  u32 gen6_sanitize_rps_pm_mask(const struct drm_i915_private *i915, u32 m=
ask);
> =20
> -void intel_runtime_pm_disable_interrupts(struct drm_i915_private *dev_pr=
iv);
> -void intel_runtime_pm_enable_interrupts(struct drm_i915_private *dev_pri=
v);
> +void intel_irq_suspend(struct drm_i915_private *i915);
> +void intel_irq_resume(struct drm_i915_private *i915);

Aside:
Though part of me would've preferred intel_irq_disable and intel_irq_enable
for these function names, I can see why we would want to use suspend and
resume instead: irrespective of naming policy, intel_irq_enable is just a b=
it
too close to intel_irqs_enabled in name.

LGTM.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt


>  bool intel_irqs_enabled(struct drm_i915_private *dev_priv);
>  void intel_synchronize_irq(struct drm_i915_private *i915);
>  void intel_synchronize_hardirq(struct drm_i915_private *i915);
> --=20
> 2.46.0
>=20
>=20
