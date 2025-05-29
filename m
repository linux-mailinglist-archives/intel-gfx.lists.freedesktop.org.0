Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A27FAC7974
	for <lists+intel-gfx@lfdr.de>; Thu, 29 May 2025 09:13:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A78E010E70F;
	Thu, 29 May 2025 07:13:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qy1MCzv0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C173110E30C;
 Thu, 29 May 2025 07:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748502790; x=1780038790;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M1YliiurrZSdVM6TtVcWmBAUiYOsh/1n0G9YZyRu9d0=;
 b=Qy1MCzv0xWBe8It1ByTpPEU5Rmplo2Wsm2LSZqp7ICJKM+w+Kifs7q7y
 Cgs0Vfy9bT+31/FxTG1FfmuGjcRFIvfoeuuS0KhN37lfrRkNW6QWqi1M6
 E7K6bqa43af1bQifLNEFu8xgbuFNB4JsLEzLw8Ez2IGs4CrtV1phrZsxI
 blntma2Oa/kOwMXqrRLEjnj+D/OawG5gA1F4u2bVIbhLpwXfaVMPmeNBu
 FG3fZVOT+Ycils6tuzipf0ldrnvV1zHZC/Pl/wfxEXeAzU06KL+Km3Lu0
 CNcuWwiU+FSvTrAd+VfvGpCiCZ5xGAuLT+3iPi9INqDcyXl/IVJNFF1rx A==;
X-CSE-ConnectionGUID: ZH3zkQqGSyGkEHAkfP61Ng==
X-CSE-MsgGUID: aROinS6WShy9auVWAtAlVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="60812538"
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="60812538"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:13:08 -0700
X-CSE-ConnectionGUID: Jk2t9hdyRZGfmj0g7enC4A==
X-CSE-MsgGUID: 95GiWf1vRjyeEkV6akepLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="148250117"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:13:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 29 May 2025 00:13:07 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 29 May 2025 00:13:07 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.49)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 29 May 2025 00:13:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JkfjMPWLVMFk8QdDJH0PzT9/JjkK0yUMXO8Tbn2GeNmZckbtyNE0ZrusJPREoQ6CzC0hEzom+F5uD5cKS5ZBRKsHtWiZycq65qDdMEsTQ4l6VDm42ie3CJvGQC3lo3ZmCiId8T99g0cnEIlNOyVBdm1B54x+H1g+JbAxSf3an9Q8gy6CadJeMnwkGxBIETZZoM7Nt0T98n33YbE1b9QakY3BxzT6dNd6Z+4X70IsqkYhEMDSH5i8EpRVgCoot7udcWWECwdW/S7H7pGfQdKvy8/tcb6vKtG8PcBS8K+iHmyFDx0mYw8SSWM/Bl7ESSJYxm5tHt4YdJPWFDcHm0kUrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rnonAxAz/MSLdI+MVwp4mFHP7IMYo0LpPj6EJecl7bI=;
 b=x99oF0BYenru93g9Gvm0ELnblpIqI2M7T8yKvNIECx4TA8injpKrfgpogNV//6HFW9cUuRlH9eFlCnmIhANOKjzY6DiHqstE+66KR3aGiSXXRkzQvvJGbjNmGdGJsEnzp4CcEM7Qo2e6gZKJF4oRfwuGfAz7IOjIr5Gu28h7RLuRjBNj9jh6QPF/RnUqeBmzmQJepsmfWiCBsZtl5Qbia2bGH4J9ct6UfZVQ1Ng+m4xBr3Owg6yGyqEK5nwM0kfOKO+yqiqRtJvBI2D/v7OkYklfCi1Vt/3BPWPBEw9CauUjRnd6Ex5vqUaWd7RjQqFRoJMznALizKEbg58Kb7gAag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ2PR11MB7474.namprd11.prod.outlook.com (2603:10b6:a03:4ca::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.26; Thu, 29 May
 2025 07:12:59 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8769.019; Thu, 29 May 2025
 07:12:59 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Garg, Nemesa" <nemesa.garg@intel.com>
Subject: RE: [PATCH] drm/i915/display: Implement wa_16011342517
Thread-Topic: [PATCH] drm/i915/display: Implement wa_16011342517
Thread-Index: AQHbxm/FjUmNrMlsgUekLV34z4NEM7PpRSnw
Date: Thu, 29 May 2025 07:12:58 +0000
Message-ID: <SN7PR11MB6750AB2655DDB986E09D37EFE366A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250516143101.3313286-1-nemesa.garg@intel.com>
In-Reply-To: <20250516143101.3313286-1-nemesa.garg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ2PR11MB7474:EE_
x-ms-office365-filtering-correlation-id: 064cabd6-42c3-4c57-ebc7-08dd9e803e02
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Y/5ILEb8f5kpUkSOHT462p9oGKKL6dU8TrK08YHdqUEEmOqS7aliIkkjGCXR?=
 =?us-ascii?Q?VSGNMeoG7c+kmgHs39Fjk5ovHVHblLhOlg6MbONGEixcpYZB+4odIQjrsVOU?=
 =?us-ascii?Q?qIzOTZyb6QUpAE+tJizaPUURgKQ1keED28E+TFAjPdEs5Bfb18Odw0q3jT1k?=
 =?us-ascii?Q?hrSQEDScOz+ZFwtfswMrfDLsh0fNQfGo6NxNd7ZRdsqZR1gCKqMasnp4fbjf?=
 =?us-ascii?Q?Wf6biHMHNTFjgaaPOyq5asbDomE+/Y5Xw3D/A8KNuseT329EJBL12k7SmYZz?=
 =?us-ascii?Q?tmiovXWK9IMVKlcvLwLx4lUhL8+9pNhlujjQVFqfc2uSAaEBKdqScmJkJqDA?=
 =?us-ascii?Q?FxzVKkukTB7MzF+UHVkUgLoOsvsYsf/kcQyVsiT08T7RQtEsBnBsf1SwRz80?=
 =?us-ascii?Q?Ddd8nf2QVJZ1IcBLfisj+FejCLaDrfNar/HJyGyGX7lHUr1k4gUMxuZQwyJe?=
 =?us-ascii?Q?y92E3fgZ6Pq7cmvjaP6PDB3Zs+8YX2QG7rKMXFDw2bJnj5H9jb1t1D7x/8fF?=
 =?us-ascii?Q?BLRzJ56jpxSu2X+Ox+HaJOKBthip5yGmyVoxlrp65+w8VhhhxqbL53uwpADQ?=
 =?us-ascii?Q?FwBUEr9i3mDY+Pw5jNt6CxJ37Bd2Z8NKd4jfwGMpjlGyxKAngurCvR6Jz8eU?=
 =?us-ascii?Q?pa4Uj2qZsas45b91N8oaEv5AjGdnsK29ChYFSF/7JgMRJ3B/FipK89VI/bun?=
 =?us-ascii?Q?qh07osmUjNHhzAhGBotoajckTUE+7TgG/NrbKJs3UaySamUc7xM+Q9zMtmh7?=
 =?us-ascii?Q?bPciJ84Ifr/fm8QZ4nRkmFafmEPdknyMVmTT+4j8Ve6lNCWe4F9SH9bA53Tm?=
 =?us-ascii?Q?l1Hxm4QufqYbbyl7FVvDdY/adYqZ/CKMkyT9V3iTiCi6iNx2ZYZ0Oe7g/TyF?=
 =?us-ascii?Q?qNwhhVxe9cLXci03S4CdQcYnyBZqzqtYFdOGEg3dmUmwtdEErvfn9QBQfZCJ?=
 =?us-ascii?Q?YGSGeZJlwwO30sWmY/eoSJtC93lHKfrRml0HkTwpgom8HTHNNklARYgphSGb?=
 =?us-ascii?Q?8MyFvXkBuYOG14C+UFio3tbxyC2zeWF2yFuGg7Ca0yY0tyfvNoXnWScytoHi?=
 =?us-ascii?Q?S/H7JW2gWlJ3YE61UA0TFnkLOqB20d2j9H6rWNJdxaaQI8E9vxC1G5/zzMAP?=
 =?us-ascii?Q?AX6T1pka4PB71d8UyVYYdYwYiTrVs6uImZSpC8K0EcSgE4NyZ97Vw91GdO4Q?=
 =?us-ascii?Q?eIKo1QcWRSAPm2FxvA5tMRfHob1/v869IjHT6clxKHPAHfx/srKabeEOn988?=
 =?us-ascii?Q?WniQymDEsZp/No0D+XtSplmXCq5znZX2IG4Xg423F4zHXBJlNH2PbAVD1osf?=
 =?us-ascii?Q?BztMKVbojLaFp9aq/MIOVkf2i7YZCwGewCXpJ5tRHSeB9MW6Bgi0hUo02c5j?=
 =?us-ascii?Q?M42OlDn6OGXFIX6qp9MZjMmfmZutONrgVg5JCjdb/9B2QqI9wmy3w/H2n40x?=
 =?us-ascii?Q?UhxUXBdA3eJ8IQUoKsNGBxm8lJafQy09Oypstzldlgpu5mu7aO7kpeI8bFR6?=
 =?us-ascii?Q?B75eRZHQ4yGOD90=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IjzfcgNlt8ICQxvaWABm7TyY//B/5C/I10dY1An6cEZ4Z6d8Wy9zQf2a0jtj?=
 =?us-ascii?Q?gOy4eLthC9HvCIEldMLgx+gF+NYMxdz9ybGTa7wKzKgFm/ChOuaCA5n6d4zl?=
 =?us-ascii?Q?OZL7AGDAdFAJhZsxA6NXdfaBijeMLfP4Ha3Mot09ogJ+8VJT/PZEhw0FWrEf?=
 =?us-ascii?Q?6FZDHZLxbr3yvA5E0yQXqRdTMQKI6QAbBBfZoKXyeWM0YS3cnX7r0J5iZbpv?=
 =?us-ascii?Q?EsL4urzUk9cjXENB1Zl/lsNjKvhojgnMdM9P66sOsNDVXpbcthSW8nsLh6rT?=
 =?us-ascii?Q?voNIQVR/TPj9rTD94DvZaeE7L/PAZROOsStezZqU5rM/6rxoGmOISjIucSuU?=
 =?us-ascii?Q?6ILAW5dRid9RfMc+4lXpDCjyy4maPMJoRgLEwQuYCT8HHce8W+pkB7eeU34R?=
 =?us-ascii?Q?HFS058wXmmydVctc0XLXZTrVyT7C00qkionPhx5nlgyYEY3YBXWf3DIbIe0N?=
 =?us-ascii?Q?jrFWt/CgyQZAgUmUupKB1ypJlUydfFUvGcel/0gZusQAXh8SeUAd6XawPKDA?=
 =?us-ascii?Q?2qafuxZzkK7wAdEViVLPnT4ApIPZSHpYWOmDfkYkC3MPq1PusQVuhs6vBMIs?=
 =?us-ascii?Q?VjCqlK80jZHurhh0sWrTSRocjsGOVqsI5zkkHU3BKqV1yU0f11DRautZZnXm?=
 =?us-ascii?Q?mPDEOfp+uFeuHzsLt6SH/P+tzOPfqNIwL7tpHrv/XZcGD8QFeGVaXpyQ2hLg?=
 =?us-ascii?Q?pNR2lh5zm5+KdMJ7LUOG4K10S6CDcurGWqFCdGCuX/q787VJamfmbVOndp1O?=
 =?us-ascii?Q?Hh9tYy0/7+wAZZknODlc9qAi7eiQC9fKqU0hpDZ9Msqd8liUtTekGNmfYa4n?=
 =?us-ascii?Q?hkI9fWQZAHceR12U5pYQTjN7OpujeSDtxh94ieEvgesUYCJR8YsFx28nXTES?=
 =?us-ascii?Q?D2av+RY3hHPT0JfCeXztLOOsusb8Szkoe3Ze0NDF9btmN9k2cnLOdMkFjG45?=
 =?us-ascii?Q?phxq3r3lptv2Me1eEyMUjaPn8VDYzN0f5r+EthXTfG1JqGgrHWTXp+d0G0Md?=
 =?us-ascii?Q?MC1zygdjO6bbbgldxytcGlr6klqXrThcylfnUKcpL0qT9Rew5Unm9Z0QT7Vy?=
 =?us-ascii?Q?tzIy7Bh4rSLqgY6aQ0dTvY9VLYlnwJfJfpdaQ8D4/2NDC6DI097QAVSoSH6f?=
 =?us-ascii?Q?1Uqx+xvi0ZAa7h86/c05uIVeJrCKD3nfSa8h+ktr1qVoqRF/JsjYzVCHNR2A?=
 =?us-ascii?Q?gNR0kQ3kqFntDugPKeCKlEmYHfVPgKFAZwScOJ7HyrdjyZxCMDTh4S4NP2NM?=
 =?us-ascii?Q?6mulcC8qA+xrMJW5h9Nqn2/bWH6wR2SQRQUEaKYxRxmCwX+psnrjlJtH5ifI?=
 =?us-ascii?Q?MhGr/sfV+A4U2suhFILkuV9UpLM8caUEYPdLleLGbF23k/XfmYUeP0qH3Xro?=
 =?us-ascii?Q?Rap2BdBtbhK5ZNR7r9vhr4Eczkj/otIopQaCSYo/1FJfJ6DBxfWWYwziO5wp?=
 =?us-ascii?Q?nLJfmzlNwWeoaxH7n2XBCFjx6qlwhppA4wROkvDj292NL4osEKoWdKANcR4t?=
 =?us-ascii?Q?ZgZmqqzITJfKNBjC+8MNyYn/4EHIqV73VlkX9HlBE5q50mRVLMqnAHj8P1sy?=
 =?us-ascii?Q?x6ovwp68FVphevT2iVUpxhh6y/DbmkZXzgG9oex6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 064cabd6-42c3-4c57-ebc7-08dd9e803e02
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2025 07:12:58.9818 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ub1mco3iqckQ2oXQ8QemnRumjF9B2G6KJs5dZPIWB9ru3MEbZ3DC1nYMJ5ZEvGoOoLkHqgK94AuhiVB678vuYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7474
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Nemesa Garg
> Sent: Friday, May 16, 2025 8:01 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: [PATCH] drm/i915/display: Implement wa_16011342517
>=20
> Workaround to prevent skew violation on type-c phy for DP 1.62 and HDMI.
>=20
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c         | 16 ++++++++++++++++
>  .../gpu/drm/i915/display/intel_dkl_phy_regs.h    |  4 ++++
>  2 files changed, 20 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 74132c1d6385..34b372b18aab 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -77,6 +77,7 @@
>  #include "intel_psr.h"
>  #include "intel_quirks.h"
>  #include "intel_snps_phy.h"
> +#include "intel_step.h"
>  #include "intel_tc.h"
>  #include "intel_vdsc.h"
>  #include "intel_vdsc_regs.h"
> @@ -1439,6 +1440,21 @@ static void tgl_dkl_phy_set_signal_levels(struct
> intel_encoder *encoder,
>=20
> DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK,
>  					  val);
>  		}
> +
> +		/* Wa_16011342517:adl-p */
> +		if (display->platform.alderlake_p &&
> +		    IS_DISPLAY_STEP(display, STEP_A0, STEP_D0)) {
> +			if ((intel_crtc_has_type(crtc_state,
> INTEL_OUTPUT_HDMI) &&
> +			     crtc_state->port_clock =3D=3D 594000) ||
> +			     (intel_crtc_has_type(crtc_state,
> INTEL_OUTPUT_DP) &&
> +			     crtc_state->port_clock =3D=3D 162000)) {
> +				intel_dkl_phy_rmw(display,
> DKLP_TX_DPCNTL2(tc_port),
> +
> LOADGEN_SHARING_PMD_DISABLE, 1);
> +			} else {
> +				intel_dkl_phy_rmw(display,
> DKLP_TX_DPCNTL2(tc_port),
> +
> LOADGEN_SHARING_PMD_DISABLE, 0);
> +			}
> +		}
>  	}
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> index 56085b32956d..fa3bad5efca9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> @@ -188,6 +188,10 @@ struct intel_dkl_phy_reg {
>=20
> _DKL_CMN_UC_DW27)
>  #define  DKL_CMN_UC_DW27_UC_HEALTH			(0x1 << 15)
>=20
> +#define _DKLP_PCS_GLUE_TX_DPCNTL2                       0xB68
> +#define DKLP_TX_DPCNTL2(tc_port)			_DKL_REG(tc_port, \
> +

Bspec link from where you are getting this

Regards,
Suraj Kandpal
> _DKLP_PCS_GLUE_TX_DPCNTL2)
> +#define LOADGEN_SHARING_PMD_DISABLE                     REG_BIT(12)
>  /*
>   * Each Dekel PHY is addressed through a 4KB aperture. Each PHY has more
> than
>   * 4KB of register space, so a separate index is programmed in
> HIP_INDEX_REG0
> --
> 2.25.1

