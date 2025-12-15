Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F1DCBCCC7
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 08:40:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8724410E10E;
	Mon, 15 Dec 2025 07:40:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UKeMv35h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B19910E10E;
 Mon, 15 Dec 2025 07:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765784451; x=1797320451;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4iuM34xVuWnSQv3j+Z6BInFxhGqDj1m7u6kAVxoZ7I4=;
 b=UKeMv35hM748h0ZPTt2KdaE5PmoVoQUZop4AzQ2lDTkUPaPCc/Df74TY
 xH8weiRsDJGBQDAqCHUDzwIjjV+jHu18xyhFPDP4i6thL2HSvkfMvyo1+
 Gvmo1HTAzsZLr56OnnzH4qDlG0oOGf7lgq5ub+A3S2NhHUsxcYjZr/7ns
 TV9gE6y4qjsPYuXLUCdo2iiyyjhIKD5NUIfdjtcoO/CCEVtDLHQAhWNmr
 ZFR1x8RYt5c+xaa2kOu9q/Q8OYnGmvpzd+WyzkHW63xPlpBjdDiaAOloq
 p8zsLCaw/30Gwm+Nj6Tfk43+bm5KsPBHNw4IuYOn9p2yBYztNGARz8m4F A==;
X-CSE-ConnectionGUID: SKmy6N08Q2+ZUjNcmECu9A==
X-CSE-MsgGUID: YGI6fk4CQT6nS3+vUwxabw==
X-IronPort-AV: E=McAfee;i="6800,10657,11642"; a="71535339"
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="71535339"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2025 23:40:51 -0800
X-CSE-ConnectionGUID: 6WHWCqRkTFaggL1kZSNxEg==
X-CSE-MsgGUID: zxW7hzESTI2HR8JGVuCACw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="202061069"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2025 23:40:50 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 14 Dec 2025 23:40:50 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 14 Dec 2025 23:40:50 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.11) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 14 Dec 2025 23:40:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mnyd5K5UTFVFyhCcdUpo+r6xfQ2iKje6RqS5wdMhaAau1o22tPfQnXBDE+fZ4Kw+S8zgyywnVmUDlqoXIQKlgvcM3NCL7VaEJs3E7RkMBsoPxpSgANKVzk/R/Rui2qYNwG4DjiQL8cT8J7YNKFoxinqzHvsGPru2sx/QqIm2KjgUKLbb96PvfSwLTyo4330UM1WZunxthMNgPh8CFJC21d0fJFOEoD8tipX3VhWQlY3XHL6tgQbwrfBlr9vFVUGOKSlEnxf+NhDumnji4bKshNUhlLKyOO8BCsUu6CYufgsb1yukdX+9FRJ5UUynKp62e0UeEt4+/Pv3JU+W1yRFrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4iuM34xVuWnSQv3j+Z6BInFxhGqDj1m7u6kAVxoZ7I4=;
 b=gzwtZLGY0CBbLYNXFfvXzXMKNRZVi4v5wxB1PU4kxd4GpGP7uv/RZznCLUPdzRxQ5loJj/25GwUi5FELU9xXTqUALqxn50YgYORc44sbku265si6k4GWRsq5gXOsWJQMJ4lQD1NJhR5n/jvscx/dxog8uP5hAa0svYdvezbUUKAvW6grO8EsUpv/pT+848ecHJPFKQJDPW511+ANxh3rnKHhTdUk2rf7cu4wQSwYxYVfD8uYUZcn0R7nFZEyEpB4U8r/frtQ8TUYLZxD5TQeaAgJZbbJagAGKlbegSfmFnS5suq3o0n7MI/LDHzAlqGDB8F2t9dymHUZMX9PEo6GFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ0PR11MB4893.namprd11.prod.outlook.com (2603:10b6:a03:2ac::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 07:40:46 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 07:40:46 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v10 15/17] drm/i915/vrr: Pause DC Balancing for DSB commits
Thread-Topic: [PATCH v10 15/17] drm/i915/vrr: Pause DC Balancing for DSB
 commits
Thread-Index: AQHcY16BqD4NZjm3w0G0RExQm8wnVbUiZWGQ
Date: Mon, 15 Dec 2025 07:40:46 +0000
Message-ID: <DM4PR11MB636064A6A44CDECDFA217998F4ADA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251202073659.926838-16-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20251202073659.926838-16-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ0PR11MB4893:EE_
x-ms-office365-filtering-correlation-id: 65f88918-47c5-4bda-3398-08de3bad42b8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?L1Q1cUhXVUdjMGliWFdNbyt6d0JLSFl3cGpwTE1pWHpSSkVxTWlXakZBT2Nw?=
 =?utf-8?B?SGlBNVIzYWNwaXVzZDlHSHlVNGdSd1JvOVdzRTdNUVJqak9lVWFBN0FQTEZR?=
 =?utf-8?B?aUcweFVKSDNYK1MvbkFvc3pRNm9kQVUvOXNPY0ROQm9HakZVYXA4MlZpZmdC?=
 =?utf-8?B?RW9OUVF4L25RUHpaUmdrVklFQ3Vldm56Nk0rT0hMVGJyQlo3d2Q3Yzk3dzRj?=
 =?utf-8?B?VkFKaWdyeXo0OERxRjBoSG1RQjlzZjZublUySEFyRFZrcU9idTUxclF5YVJX?=
 =?utf-8?B?STVZeno2d1E3RjgvNVBjNVBmc2dFNFZoOERLS2FhSTllR3IramxmR29DcW1i?=
 =?utf-8?B?RTEwMVlzd2xESlNodFZ1eGNsSEZJWVFGcTBpZjZjUGFqdnIvLy9zSzZwZTRt?=
 =?utf-8?B?bjl2Q3g2VXdBMHBYN1VLcDRYQ1ljcDVDY2h1eVB6VGtuYm1JR0dDK1JEYTFK?=
 =?utf-8?B?dm5CY1VHakk3L054S1EydEVOY3MyZUhVajdTQS9NK3craE5IWGlDcWV1b093?=
 =?utf-8?B?UUV6dW5ra2NYTWZkSHp3RTU0Z2pvNjNoMXo5SWdnNTJlaWdxNUppakxSVlpB?=
 =?utf-8?B?U2R0cGgyS2RvRGhjQUpaSk5ZQzd1eDVZNTNoS0dJTER1ZjhnOXNMbFh6STJ4?=
 =?utf-8?B?OUluNmxad0x2bi9YdmRIa0MwRmlqWVhFdGxORWZhdkkwRHF4ajZoU3pNVlNz?=
 =?utf-8?B?RkQ0elRyeFF6WEhJQWFIbjVwazdXQURDZGE1ckczTDB0WVRtZU52RnpvMnMr?=
 =?utf-8?B?UE1GWTlhZ3Q0eE9vUXFoaEVHMC83UlNEWDhlUnBRck03bWlxWTUyb08xS3dl?=
 =?utf-8?B?dC8wT2RVcHFPZmp5aHhNcXJFdEZvc1B4bzNzdys3Y1lVREM5K1VhZzQ3SDJW?=
 =?utf-8?B?d0RvUWd1TFVjYlVzQjh1SHJIaVU3MlRwYXAzZkNHVmtmc3o1VWJPdU9PeFNh?=
 =?utf-8?B?YzljcW1yS3laY2hwLzhOM09rY3NXelB1L0t0c0I3bTRpMTh3cEt1OUR3T25l?=
 =?utf-8?B?VWRRVGhLdlhGbjhVRTN6Y2RXSlNoWGdOUGVuamt0eUFSQVVqMzNhQTZEc0Fv?=
 =?utf-8?B?K1VMcGNWQW94NmJMNFhLbzdvUFBIalpkaEdOV3BJd2lsTkloMGhGa2NocDI3?=
 =?utf-8?B?YmZ2OWJHU2xBS1VYa1Z4S1dwbHQ5engxMnNobGpVVzZBdVlCdERaS29oMlNM?=
 =?utf-8?B?Q2NBZDA1RmlQR3BrQWNzRmhlVFVBRk5UNnVtbUlMTHNqd0FTdlFJa3poKzA3?=
 =?utf-8?B?aUxENTF3QnFoODZ0dWFML2gxQ3JLdDNBcUR3UllueFRqb1owUkFYK2szSFRU?=
 =?utf-8?B?OEpiZ1crRzBPSyswSVpLcStKREJpS2tZZUpIWWloV0lJUjM1QTNFTEZyMjQx?=
 =?utf-8?B?MXVjNDhMU2tXa2ZoZEEwdzUzcFFnSEFEbmhJWk1hZWo1RzJHd1Yremo5K0NT?=
 =?utf-8?B?M2pYTGtSSEt5YWFYSENESUNKa1BvRGRDZUlKOTl6TzhQTmNOaHpnRDN3VFYy?=
 =?utf-8?B?N3J6cWhJaEZhS3AzQ2pvcGtwM21WU0NrS1hoVXExQWtQa1k5QXgwbGRCZVJM?=
 =?utf-8?B?ekxMc3RvTEg4UUlaV2dqaVE4M2dIMFdyeDI4ZzVCMWp6alFBWDdKVjhaeWcv?=
 =?utf-8?B?RnVhUVNTT3BPRFlIKzZGejJJUnA2eWk4dHhCcFhGaEMzMVJBOWRIeEFOamtI?=
 =?utf-8?B?VjZWRWpPS1dSZ204ZmpVSEYyVzFVbFBtdmRkdnBoZkRtNmJ1SnowYU1xZFd4?=
 =?utf-8?B?UkorUUc4Zml2ZHdMOUpVbnB4NEpVNnBIMkozb05ZYkllcDhmOWIzVlV2YmZa?=
 =?utf-8?B?S2YrbkN3Yjh1U2Vmb0dFbHdnS2NGUHM4WEozZzZKenh6blhESU9sSEhpZ0hK?=
 =?utf-8?B?SGYwMmJaWE1oTzRJRENnbEtUbFZXMThVQ0U4d2J4RzVOdEI0eGgySUl3c0l2?=
 =?utf-8?B?Ujl2d0ZVNmR1cXJwQnhyZlI0d2JNUGQ5UEVxWHQ1NmhvRWlOKzVmeGZ5WVhm?=
 =?utf-8?B?Y2tjaGppTHdWRHZXOGpFUk1tdHVHOTJXSzVIVTJzNUhFR0dPYnFBSTBkUTVR?=
 =?utf-8?Q?XcYIMp?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U3dYWWY3czdUV1M1WTNiK1dkRUNoS0NZZjJ2SXBjbVFFQUxCZnpDbU0wTE84?=
 =?utf-8?B?U2dBa1JkZXFnTnNBZXVGQzdoekQvci82ZFhFZy9uTnBwRXVvWkZJMVYvUjJa?=
 =?utf-8?B?NGJjWUJ2MVpQVjBDVUE0T2hrWnIzWmdnTjJLa2dlbENzOUV2TmpYQTNYeWlk?=
 =?utf-8?B?djNpbVZVVmUvalB0UkRjbzdVY1VBZTNDc2lqN1NNbG5zc2ViTktnWGRYakxR?=
 =?utf-8?B?SjB0dWhxeFhjaXAzUEUyKytYdlZ2NU8wWExVanNhT3hrVkFhczJlZ0Z4Ykdm?=
 =?utf-8?B?S3kraHZJMUd1d0hFMWVOSUo2SjVrblJaZmswb1V5R2l2Vnc0VWlRQzJtbWFG?=
 =?utf-8?B?TE1QK0N6enhjVGRFUlJUL0Y5ZHg3VXJpWTNFbDdrN2xObzg3dUtyVkVKUnBT?=
 =?utf-8?B?UnQySUo1dTlRNHQ4T0ZlL0FVeGozTkFSVFovYWI5Q04yTG1jUkhqb05iYmlo?=
 =?utf-8?B?Sm5HRmxlblNLM0E4REJTMWlxUldXKzhIM1QybVpKcFpraE8wVjQram5ja1Qr?=
 =?utf-8?B?blY0QWo1bDF1czRDK0x4YTBrVnpEVE5IYTZlb2pNRW1RREZjay8zNTVGZHNM?=
 =?utf-8?B?TlozOXROREVjU21XdDJFZmhYTEJUT0hDMnFUb3gzTWZJOGpBR1BSS2pqODRa?=
 =?utf-8?B?YzJrMWNLYWd4SXB3NjJKWTRrRDRWQ2xKVURRMHBlRjFkeDdjcUVvdSsvNnFk?=
 =?utf-8?B?VkhNUmVCMXlNU2FUWnl5eUppbkpJQTRKc0JzT043YVRLWXJtU3JRSTlpTnJ3?=
 =?utf-8?B?aEFwRkdtcEFNODVHS24yTktuZzliT0tHOFhnMmJtVklRZUdpaUpFMWtZb3Q4?=
 =?utf-8?B?dnlJZWtVYUdtM3dpaGtXaUYzTS9GS1E3eVBpcmhkYlFISVRxSkRsZ2svSlhz?=
 =?utf-8?B?d1ZCeEVJU1R2OUNFVWZnWmdVY0xlNStCTmRDUDg3anphcTMyOWY1VmdjMEtD?=
 =?utf-8?B?RlRMRGJNYWc3MHROSk9PZWI5L2ZHWjlkaGVSUnB0dHB2UjMybkwwTWF4am5J?=
 =?utf-8?B?Q2laQjBPanU1U1JQamdrS0ErRUh3K05XRlVTUENYdHdqbk1NTTBFd1I1UGlo?=
 =?utf-8?B?TTh3SGZNYmhzb2g1a0Q2TVF5dHhyQ3c0NUlvOU5XY1hKZ3N0blFWbDYzQWJ1?=
 =?utf-8?B?ZFQ0OEkzVE9NSitLclo4MkJBdTRycEs1RUJqajJya1NNaTNzQnBOTk94SDkw?=
 =?utf-8?B?UlVyZlhDUWQ0dTVpbFRDQWtkaFRsTkVqbmtiY1hVaDErTkZxc0ZqaTY0SjRu?=
 =?utf-8?B?SUZDOWpWQSswK05vbVhtT3R0bHpXVmtLTnpPcWN6WTREOHB6M3RqUTBCTE1s?=
 =?utf-8?B?eHB0TGl1K2JPVFJBNWRLM3VlQVpPdjFyWWlNeUQ5YVhPZWU5Smd0ODc5cGM1?=
 =?utf-8?B?dThIQ1FJdGs2QmpJWDFWdVhpeUVRT0FkTGc2cllZT2VIUTF2Z09vZDdPdnVI?=
 =?utf-8?B?bDlSamI0Z2dZV2xhQ0thNkZKQm8xNGg2elc2ckNJeEN0UnlRcFJKNUFTYjQv?=
 =?utf-8?B?cjZMVHJEemx5a3hTSEI5WmJnbTFSWGltTS9nQ25uK1JmOFB1bGMxaG5DdHlt?=
 =?utf-8?B?OXh3eHFLRzR6L2NCZkpTWDNPdWo2eVplN1JyMkEvWjRlTVIwOU51K01oMmls?=
 =?utf-8?B?dW9zR3dud2hTaHVNRnZBWkwrS3M5eGJpTnZnbTRqMGgzOXJrbmpyOGVKeFNI?=
 =?utf-8?B?eTlrN2FCUFpwSllRQVV0ekFQNHhqSEJXRlFlSGIwS1dFTlk3Q2NKTThDMWNp?=
 =?utf-8?B?ZGJGSzVET1RETGVhZFIzdG5pVXdpc241RW1NTE1kTS83ck5hWml6M0dkR0Z1?=
 =?utf-8?B?MklEdk1qSkd2QW9Qb3hzTEREd0o5d0t1YlVadE9LWUkwVjM0YXp0L3k0cWRm?=
 =?utf-8?B?dW1aZC94QTFpNFlSNXRVRUtSZHBXUTJ5M2tpQklrblZGeUpoQ1BXQ0hPSTNn?=
 =?utf-8?B?V2hGK3VIVyt1cVAzU2E5RDQweGczOUpyeldLejVqeHBMNHFsYXA4T2hmUXpT?=
 =?utf-8?B?dVRmSk9HWTBSQ2pzWjM1Slc4TC9XajdCSEVRWlh1Ynpkdk8xSDB3QTRlZ3VD?=
 =?utf-8?B?Um1kcmJnUFNManM0aXg3OWVUOVBMOVBGa0ZvTnJkYTNyUjRBRmVhYStBeFVC?=
 =?utf-8?Q?GqHZWoTVRcZrd2aU5XtxGNFpS?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65f88918-47c5-4bda-3398-08de3bad42b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2025 07:40:46.7920 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WkPhvHXNQv36fmILHhMUWWYZnDVhzVl3DS0tqCt1q1JTlpYSCOSlvQ7DOLOtDmHBaFwj0Xv+bL7St1rFoNx54A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4893
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR29sYW5pLCBNaXR1bGt1
bWFyIEFqaXRrdW1hciA8bWl0dWxrdW1hci5haml0a3VtYXIuZ29sYW5pQGludGVsLmNvbT4NCj4g
U2VudDogVHVlc2RheSwgRGVjZW1iZXIgMiwgMjAyNSAxOjA3IFBNDQo+IFRvOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5v
cmc7IEdvbGFuaSwgTWl0dWxrdW1hciBBaml0a3VtYXINCj4gPG1pdHVsa3VtYXIuYWppdGt1bWFy
LmdvbGFuaUBpbnRlbC5jb20+OyBOYXV0aXlhbCwgQW5raXQgSw0KPiA8YW5raXQuay5uYXV0aXlh
bEBpbnRlbC5jb20+OyB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbTsgU2hhbmthciwgVW1h
DQo+IDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYxMCAxNS8xN10gZHJtL2k5MTUvdnJyOiBQYXVz
ZSBEQyBCYWxhbmNpbmcgZm9yIERTQiBjb21taXRzDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gUGF1c2UgdGhlIERNQyBE
QyBCYWxhbmNpbmcgZm9yIHRoZSByZW1haW5kZXIgb2YgdGhlIGNvbW1pdCBzbyB0aGF0IHZtaW4v
dm1heA0KPiB3b24ndCBjaGFuZ2UgYWZ0ZXIgd2UndmUgYmFrZWQgdGhlbSBpbnRvIHRoZSBEU0Ig
dmJsYW5rIGV2YXNpb24gY29tbWFuZHMuDQo+IA0KPiAtLXYyOg0KPiAtIFJlbW92ZSB0eXBvLiAo
QW5raXQpDQo+IC0gU2VwYXJhdGUgdnJyIGVuYWJsZSBzdHJ1Y3R1cmluZy4gKEFua2l0KQ0KPiAN
Cj4gLS12MzoNCj4gLSBBZGQgZ2F1cmQgYmVmb3JlIGFjY2Vzc2luZyBEQyBiYWxhbmNlIGJpdHMu
DQo+IC0gUmVtb3ZlIHJlZHVuZGFuY3kgY2hlY2tzLg0KPiANCj4gLS12NDoNCj4gLSBNb3ZlIGV2
ZW50cyB0byBzZXBhcmF0ZSBmdW5jdGlvbi4NCg0KTG9va3MgR29vZCB0byBtZS4NClJldmlld2Vk
LWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNp
Z25lZC1vZmYtYnk6IE1pdHVsIEdvbGFuaSA8bWl0dWxrdW1hci5haml0a3VtYXIuZ29sYW5pQGlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyB8IDE5ICsrKysrKysrKysrKysrKysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdnJyLmMgICAgIHwgIDMgKysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDIy
IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IGY5YTc3OWM1NTVjYy4uM2RiYWQ1OTI4MzJlIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBA
QCAtNzMyMSw2ICs3MzIxLDIxIEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19kc2JfZmluaXNo
KHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQlpZiAobmV3X2NydGNf
c3RhdGUtPnVzZV9mbGlwcSkNCj4gIAkJCWludGVsX2ZsaXBxX3dhaXRfZG1jX2hhbHQobmV3X2Ny
dGNfc3RhdGUtPmRzYl9jb21taXQsDQo+IGNydGMpOw0KPiANCj4gKwkJaWYgKG5ld19jcnRjX3N0
YXRlLT52cnIuZGNfYmFsYW5jZS5lbmFibGUpIHsNCj4gKwkJCS8qDQo+ICsJCQkgKiBQYXVzZSB0
aGUgRE1DIERDIGJhbGFuY2luZyBmb3IgdGhlIHJlbWFpbmRlciBvZg0KPiArCQkJICogdGhlIGNv
bW1pdCBzbyB0aGF0IHZtaW4vdm1heCB3b24ndCBjaGFuZ2UgYWZ0ZXINCj4gKwkJCSAqIHdlJ3Zl
IGJha2VkIHRoZW0gaW50byB0aGUgRFNCIHZibGFuayBldmFzaW9uDQo+ICsJCQkgKiBjb21tYW5k
cy4NCj4gKwkJCSAqDQo+ICsJCQkgKiBGSVhNRSBtYXliZSBuZWVkIGEgc21hbGwgZGVsYXkgaGVy
ZSB0byBtYWtlIHN1cmUNCj4gKwkJCSAqIERNQyBoYXMgZmluaXNoZWQgdXBkYXRpbmcgdGhlIHZh
bHVlcz8gT3Igd2UgbmVlZA0KPiArCQkJICogYSBiZXR0ZXIgRE1DPC0+ZHJpdmVyIHByb3RvY29s
IHRoYXQgZ2l2ZXMgaXMgcmVhbA0KPiArCQkJICogZ3VhcmFudGVlcyBhYm91dCB0aGF0Li4uDQo+
ICsJCQkgKi8NCj4gKwkJCWludGVsX3BpcGVkbWNfZGNiX2Rpc2FibGUoTlVMTCwgY3J0Yyk7DQo+
ICsJCX0NCj4gKw0KPiAgCQlpZiAoaW50ZWxfY3J0Y19uZWVkc19jb2xvcl91cGRhdGUobmV3X2Ny
dGNfc3RhdGUpKQ0KPiAgCQkJaW50ZWxfY29sb3JfY29tbWl0X25vYXJtKG5ld19jcnRjX3N0YXRl
LT5kc2JfY29tbWl0LA0KPiAgCQkJCQkJIG5ld19jcnRjX3N0YXRlKTsNCj4gQEAgLTczNzQsNiAr
NzM4OSwxMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfZHNiX2ZpbmlzaChzdHJ1Y3QNCj4g
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJaW50ZWxfZHNiX3dhaXRfZm9yX2RlbGF5
ZWRfdmJsYW5rKHN0YXRlLCBuZXdfY3J0Y19zdGF0ZS0NCj4gPmRzYl9jb21taXQpOw0KPiAgCQlp
bnRlbF92cnJfY2hlY2tfcHVzaF9zZW50KG5ld19jcnRjX3N0YXRlLT5kc2JfY29tbWl0LA0KPiAg
CQkJCQkgIG5ld19jcnRjX3N0YXRlKTsNCj4gKw0KPiArCQlpZiAobmV3X2NydGNfc3RhdGUtPnZy
ci5kY19iYWxhbmNlLmVuYWJsZSkNCj4gKwkJCWludGVsX3BpcGVkbWNfZGNiX2VuYWJsZShuZXdf
Y3J0Y19zdGF0ZS0+ZHNiX2NvbW1pdCwNCj4gY3J0Yyk7DQo+ICsNCj4gIAkJaW50ZWxfZHNiX2lu
dGVycnVwdChuZXdfY3J0Y19zdGF0ZS0+ZHNiX2NvbW1pdCk7DQo+ICAJfQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+IGluZGV4IDRjMTQ3MGRjZDNi
Yi4uMzhkYzRmODdlNmZlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Zyci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdnJyLmMNCj4gQEAgLTEwLDYgKzEwLDcgQEANCj4gICNpbmNsdWRlICJpbnRlbF9kZS5oIg0K
PiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfcmVncy5oIg0KPiAgI2luY2x1ZGUgImludGVsX2Rp
c3BsYXlfdHlwZXMuaCINCj4gKyNpbmNsdWRlICJpbnRlbF9kbWMuaCINCj4gICNpbmNsdWRlICJp
bnRlbF9kbWNfcmVncy5oIg0KPiAgI2luY2x1ZGUgImludGVsX2RwLmgiDQo+ICAjaW5jbHVkZSAi
aW50ZWxfcHNyLmgiDQo+IEBAIC04MjQsNiArODI1LDcgQEAgaW50ZWxfdnJyX2VuYWJsZV9kY19i
YWxhbmNpbmcoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+
ICAJCSAgICAgICBjcnRjX3N0YXRlLT52cnIuZGNfYmFsYW5jZS52YmxhbmtfdGFyZ2V0KTsNCj4g
IAlpbnRlbF9kZV93cml0ZShkaXNwbGF5LA0KPiBUUkFOU19BREFQVElWRV9TWU5DX0RDQl9DVEwo
Y3B1X3RyYW5zY29kZXIpLA0KPiAgCQkgICAgICAgQURBUFRJVkVfU1lOQ19DT1VOVEVSX0VOKTsN
Cj4gKwlpbnRlbF9waXBlZG1jX2RjYl9lbmFibGUoTlVMTCwgY3J0Yyk7DQo+ICB9DQo+IA0KPiAg
c3RhdGljIHZvaWQNCj4gQEAgLTgzNyw2ICs4MzksNyBAQCBpbnRlbF92cnJfZGlzYWJsZV9kY19i
YWxhbmNpbmcoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRl
KQ0KPiAgCWlmICghb2xkX2NydGNfc3RhdGUtPnZyci5kY19iYWxhbmNlLmVuYWJsZSkNCj4gIAkJ
cmV0dXJuOw0KPiANCj4gKwlpbnRlbF9waXBlZG1jX2RjYl9kaXNhYmxlKE5VTEwsIGNydGMpOw0K
PiAgCWludGVsX2RlX3dyaXRlKGRpc3BsYXksDQo+IFRSQU5TX0FEQVBUSVZFX1NZTkNfRENCX0NU
TChjcHVfdHJhbnNjb2RlciksIDApOw0KPiAgCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFBJUEVE
TUNfRENCX1ZNSU4ocGlwZSksIDApOw0KPiAgCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFBJUEVE
TUNfRENCX1ZNQVgocGlwZSksIDApOw0KPiAtLQ0KPiAyLjQ4LjENCg0K
