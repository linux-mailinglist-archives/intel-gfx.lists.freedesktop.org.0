Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C509F7DC1
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 16:13:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3819F88647;
	Thu, 19 Dec 2024 15:13:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NsnnMYgm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5C0310E0A7;
 Thu, 19 Dec 2024 15:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734621213; x=1766157213;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=P0RvEpJ/fHr16oa1D3+UioShUrRjAbnhp20oLiPIvmU=;
 b=NsnnMYgmZ3y95G8LGE28g1SHqetJt9VVobzKx1sq3xpVybT2tKvKmYD+
 0DHYyS9UZ82/8W6OaiAA79JO6gT9BqWTDe6v9cj4+muUZdyPqwfC50Eai
 tuIE4gNTV9tHMg+A6NsgXlBHXEJcZdUUQA507WHz7EEKjU/GzlDFU7p6q
 dr8xm1ylyc8KZOzb5LVpPPQDC/shV4miE8N3plSLJvl9v03MFPVhn7mgk
 ul3YUjMBxdJPC0h1tMoFYx0ru9b0hka7iPaLbCErR3UCjXBPQVsR0axF1
 GBNVNR68bq+i7r//nm04BQaFTkeZtTraD4/FBhYwIDmfIQc0pdOPaFx53 A==;
X-CSE-ConnectionGUID: K5iZRdt6TRGpF990+mIYqw==
X-CSE-MsgGUID: 10LL2FdEQEKdvJ37SIkyGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="38811257"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="38811257"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 07:13:32 -0800
X-CSE-ConnectionGUID: /1wFq6aDQCqnngUc8S8PyQ==
X-CSE-MsgGUID: pjOY92FzQMqS//hf775HoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102345489"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2024 07:13:31 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 19 Dec 2024 07:13:31 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 19 Dec 2024 07:13:31 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 19 Dec 2024 07:13:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H18UP25VAKcoofKW/bN3If3s5stzAj3vDgHGNCMZukERBkzT3+4aZw6+/VAjy2AkX3W8WDuyOKNNcS+P/1mGO6Zik4lwJ7BCWj1J4c0dt4U6XOPbAllm2tAEGTea1yNaeLS4yFbGexmd1hX5EPwCF+qtyZR3M+NJAO910/vqBb0wp3TUGiYCCeQsSd5PbcP7u3zSIdJXShQ+jd1KPx0H9HilF4ag7VzS9LW/XYPb5zkf+hJXoxFjInBI1rOsjf0fr6IiRAmcsI4Vv7OEgfZ9S5OgkrujN2qyh4qgMgYZq2yyk+IG7l4+sjtY2PfhwKSSAe+jBCntz5sE3/eDdProrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P0RvEpJ/fHr16oa1D3+UioShUrRjAbnhp20oLiPIvmU=;
 b=uDOpPWcfpHq6eLF5JRTtj+c0W4F6pOdzHTMYgzuOM+ugaYarXlLK5mYUHmsZ3l/UoQmfGB64/lLLoM8igmkdMTxKoK5hgRe3z13jtXy98JxAW/ERI3AWW2uW5oNg2c1iAKEfaQN2ZRMHSMgUyoMINFEF+O3F3b3xnjyhmAc8IliOefDOmubWIeA7MvFMs4aDVlZD53fFqyWonyQmKd5bGeXSiMyqaFsMcWHamb9MpSnFS9mkgfUWKCUMmkMraX3iOJmql4oSg00mCAaHNl6I/OMa0zUIyPCXw0Jja0mVd3u/i7Gu3CO59NjoLR2VYdV9YqH3WuJlhlnetGD0bSk8iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SN7PR11MB7092.namprd11.prod.outlook.com (2603:10b6:806:29b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.14; Thu, 19 Dec
 2024 15:13:28 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%4]) with mapi id 15.20.8272.013; Thu, 19 Dec 2024
 15:13:28 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Ville
 Syrjala" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 1/2] drm/i915/display: After joiner compute pfit_dst
Thread-Topic: [PATCH 1/2] drm/i915/display: After joiner compute pfit_dst
Thread-Index: AQHbTKKl84d6Mr7ID0mlhFrRHWMxiLLiwuIAgAr0owA=
Date: Thu, 19 Dec 2024 15:13:28 +0000
Message-ID: <IA1PR11MB6467A4AB0B4E5EDD853B7DF0E3062@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20241212143329.938202-1-nemesa.garg@intel.com>
 <20241212143329.938202-2-nemesa.garg@intel.com>
 <CH0PR11MB54449EFDBE5020FCC1FBA970E53F2@CH0PR11MB5444.namprd11.prod.outlook.com>
In-Reply-To: <CH0PR11MB54449EFDBE5020FCC1FBA970E53F2@CH0PR11MB5444.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SN7PR11MB7092:EE_
x-ms-office365-filtering-correlation-id: 00d89d5d-01b7-45a7-53ec-08dd203fb11a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?K1hvY0NxRzVJbEFwQXV5SS9sMjZEL3BheUk2dGlaYlRmdTluQ1ZwSytRQVF0?=
 =?utf-8?B?SkdJOEplOWFqamlFTFNWR2JveEpNSy94RWtvNGpDWS9PYnBDTlhNODZLWXIw?=
 =?utf-8?B?ZGR2cU1QbHp6RWlPcVhEemRjbUtRK2ZTZitXdnU1UHRsd0hGU2lkeldmWkdU?=
 =?utf-8?B?bVdocUwraUtjbWYvM2R5QTc3VnVMbzY2NFI3eVJwb2xGeG54V3dDNGJYYWdv?=
 =?utf-8?B?S1ZkN0M1b1VreVh0WFRQRUFKdFNPN3Q1NzVwbGJRZW45NE42UXErL1hrMHNW?=
 =?utf-8?B?ckhUcWZGeE0yWjZTQzVnUURCUXlQbHdXRWc1T05qOUF4OGxRcld3dEVQcjZY?=
 =?utf-8?B?RW5TYnVNbjF3dTJ0cVhRNjNVSjFjUGpyUGQ0Y2xYL1p0SmlyOFZzSTNjRkNY?=
 =?utf-8?B?N09PTFJRMk5HU3oxVlVxM1lvOUJpRjZyV1FvZWFzYS82V3p4OUY1Q3hLR2Vl?=
 =?utf-8?B?MkhWV3I3UjdmUTZ4UFJxMjVxRk1RTDRFMlZaaVFFYk5kQ0RrcXNMdWthZU5o?=
 =?utf-8?B?UlFWNUxzMDBpT0xjR2VtZUZTakdvQkoyVHgzemJUZzRWdDU2TnNwRWtueHh0?=
 =?utf-8?B?anAwRGJQdFZFTzNvUExFZjlJWVREZ3JGYi9tNnJyMTRBMUpGblY4dmJld1R3?=
 =?utf-8?B?dmEzZm9PU1Q0L0M0TkYxNVZFOUVvREZXRFNvSGRMdGpXTmlWTGQvdkppajIw?=
 =?utf-8?B?cGd3eUJhcThGR2U3RWhzQVR6cW82bVd6eHBwWjNlT09jbm1OZk5Sb0ZKc2xP?=
 =?utf-8?B?ZzhwYjJLK0VCYnUrVmtFWWRzZjR1UVNhbnFoalNBQ1ZDakFRZWNaYXd6UlVW?=
 =?utf-8?B?WDRPdGZYY0I5eTkxT28yZ3NtNldKc2tOOW5qMlM2WXd1RjVCYTZrUGo4Nmx3?=
 =?utf-8?B?Tm81VHlhSmJaSDl2UVBseVlLV1c1L3N6YmdhYWh6NlprTlRBS0pXWkt1MXRs?=
 =?utf-8?B?eUplcXdXYnUzbXVhSVc5am9PUUZVQmdDajZQa3ZyWFhyNFVOT04yOWp0NThu?=
 =?utf-8?B?RVBjNkJNTElOaHltZjZqK2lSMlNuam1laitqajlJbEg0MFBGQ0dzTk9LcXVa?=
 =?utf-8?B?MlVqSnFyM25jUVk2dnRJK2JjdmQ3dWZFQlV4b0d4aTBoVU8wR29rWHJpR3Jh?=
 =?utf-8?B?K0cyMjJCOXExZHFDTURTVmlabURiaWhpby85N3QvVU1PUlhEa0pPc2ZxYWZU?=
 =?utf-8?B?ZEdyY25GbFRQKzBBQnY1V1VTbk02SkwyR2plcFA0ZHJ5Zlo5MWpGUUNWMjZL?=
 =?utf-8?B?RnVmK2x4NG9qQXZBMW01Qi9QVXhyRWVUUDRnTFdreDBoSHBmWTFYSThFall4?=
 =?utf-8?B?NHB6MlZLaWtObjA5bks3eExDVFRPOXJBSkt4MlNUQzQrVUYxdjVBc2Qxa0RE?=
 =?utf-8?B?MGpOKzZLdkp1NHNsMTFkMG81SlpIS2Q2MkFXN3RxVWdHRXM0L1pJbUU3dENZ?=
 =?utf-8?B?WUFUSExzTzJqVkE0aW5relVJSUpwUWNNUm5taHU0blpYaVF6UnBFblVmY2NT?=
 =?utf-8?B?OENVMlVZb05QdDJURURLWHJxSlVPcldGUm16UkNKSWRBVzc4ZFNSUVpZMUph?=
 =?utf-8?B?MU1YZyt5ckxJNkdYV2lvK21qeGNhR1l2ZWwyQlZ6ejBGMjUzeHJmdkVaRFpO?=
 =?utf-8?B?RHVjUzE5MTVNSDJISXFBbXZFNk5Ub0lYRWVlWEZScUwzK0lNV2tkbkd1MDVV?=
 =?utf-8?B?YW1ZcjkrMmZrbmhEVjBlMU5IbVFMaTA5WVd5WS83d09sTHUrdnRrYS92elgx?=
 =?utf-8?B?dGdUTVNraUZaNUtLTHRvTVNiUE9SWUdSSGVFR09BVkZhRGRuQ1lybWxBZktz?=
 =?utf-8?B?ZlJrVEtyS3IvWEZORGQ3QmdFSDQ4dmFEaHJiYkRSbllaaVRuaWdEMUpXRnpF?=
 =?utf-8?B?SGhscjN1aHF6MHVoSkd5OHo2b3RSaUdidEFOMFpiRDh1cDJlM0NzWWJTajdq?=
 =?utf-8?Q?1aQDk53fbQnCDt/FsiVo2K8s/EgwPycq?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Smt3Sjk0aFZtdGtKdEFrbWowYmIyQ25FaXRDRmZTblRGRXY5Rnk3Skx0UVhZ?=
 =?utf-8?B?LzllV3cwTzhVS1pRZ0JSUVk0SEVDcXdUUXk1ZUdjM2Y5MkhmTlcrRmdaclUr?=
 =?utf-8?B?YWRLSDJQWW11TXQ0S3B2ZytsM3RTNEVPVXZvemlEMkdseGEzcGlmZmlMcXRE?=
 =?utf-8?B?KzF6Q3hhYndOZFRyd2pnSFFYdlliNFZpZlBnLzJTdFFFTndCdmZ3c1NrcVlz?=
 =?utf-8?B?anc4RVhEellnallpQjNzTXptMGFDUlBFVlg5dFpHMlo0M09mMFZ0NXRNN0c4?=
 =?utf-8?B?VVZaTDJSZ1F2WUk3WXR2cGU2VGFUOXVFeVBpNmF0akFkekhKajIwTnBBcTFN?=
 =?utf-8?B?ZlIxQnRwZUdJejBmUEl0aFRZL0dWNlNzcHJxdmpUQzJ6RWtVQmZWT1grYzBD?=
 =?utf-8?B?SXBHZkdRNndxeXFiOXB4VFlqVFA3TWJHUE9pNGpHbkozaGFJUUx1c0N3WGFC?=
 =?utf-8?B?bnp5b1c4WSt3bHhIbFQ0bHlrQ1Z1MDNFdHlXZmpxWVNEVUZ2WElJTFQvVnpr?=
 =?utf-8?B?alRnSWFFdGNPNVJjTWoyWUhWazRsN0lzdkM2dGV1NXU1dmxpa0pualc3bUdx?=
 =?utf-8?B?NjRVd2lNbnZRdkp2b1R2SlA1dWRDMUdsQTdWbU1aRHJKdWwvc01BOW1pQjJ3?=
 =?utf-8?B?eDB3aTRUK1dsK0Rwc2tadGsyNUVXUnk5aENiTE9Nb1diQTRFbGptRnY4L0du?=
 =?utf-8?B?NFpzT0JBajFKaGpJUnpMSWhYYzY2RThKWkxROVZVRXY1S253ZFN6MmlYR2xN?=
 =?utf-8?B?SXQ5d3JHdE1rVksyaCtMWktkYTN1MHFFN0NISVZLcmx2ay9EZ2dsNCtLOExD?=
 =?utf-8?B?V2FML0s1d2loUHhObFJlTVZmbncwSFR2T25QdXcrVm5ERVlveUNBR01pUFhI?=
 =?utf-8?B?WHdKWkl5V0VFSTJ1dHZHaEVKRFFva3FDZnN6STZMeHJkbXY3Y2o5NGgvN2NT?=
 =?utf-8?B?ZUpXM2xSTlBLMXlnN1RtWWlrOGVkd1B2Q2Z4YnhMbmt5OHBUa0NrMkhldkRP?=
 =?utf-8?B?bHA1M1N0UUxEMk9zVnI5bFNkUHZ6dVBSb0NJQ3ZMWFFpNVl4YkdtVVdSWndj?=
 =?utf-8?B?aDE1M3RmMmhlTXNxVy9FZDVSd3lVZnFWYmJaNUdqdWZQRzZ2OWZicjBZQ1gw?=
 =?utf-8?B?ejJ6L3JWTllMNFlkTnE3QnNBNkVrSDFXbU9ORWRwQ051NG56alpxRFR6UjMz?=
 =?utf-8?B?L21md2hPT0xPeG93Vmp3dHFRNmY2VlVIRDMvV3Vtcmt6ek9GL2NUUjJPbUpB?=
 =?utf-8?B?Slk0ZUZCZW94R3ZTRnl4a0NxUXNzM3ZUSEh4YTFBemlDNVlqVmVaUEVDbTdl?=
 =?utf-8?B?K1pFT0UzV1oyZUw4QTJoRktYamhycm81eSsxODk1WVc1N3NtOURBUDFmQzdv?=
 =?utf-8?B?SXNqeFFESzZUamsraTlFRlMyN0FMWjd3blNxNjFONXJTWGpQK3lsOGZsZ0Vw?=
 =?utf-8?B?a0s5V0lvNk1UK1c2b2ZMdzZtZ0xoQ0RUOFdsQXEwRTIwRU9acnBmdFFTRURo?=
 =?utf-8?B?dWt4R2RhWXo5T2lMKzU4aDlld2lFajdockJHampRblRyZTFraWkzbmw1YnhX?=
 =?utf-8?B?Y25hZ0VqQXVrYXl1R2pVT0R1Sm5WaTNVQWRGZXIvdzh6RlpOYmVMRW9tcDZu?=
 =?utf-8?B?ZU0wMk5SMExLSGRNek52bHJmRjFkYkQ5NFpPbEZpY3N0S0p5NHhiclRuMVlM?=
 =?utf-8?B?ZkU0S3FENENGSE5zSTRLbVVHdzVURFVpU2tFcytOT3FJWTVSdGVPV044M1pn?=
 =?utf-8?B?eE1NT3FIWDZnNGNwejRmWVEva1EzQkx6RGpvYWkvc1BGWkE5T1VzYTBIZm5v?=
 =?utf-8?B?WFhzYW8rcm1pYlN2bm5Ed0ZWV3krVHMzUDR3SWdKYTVRMi9zdzVIZ2I4Q1hs?=
 =?utf-8?B?eHZhUEJnSzU2ZlZGNm13V3VvNjRrWUNIRm9Ua3Y4ZlBNM2FVSVdyclpxbFJR?=
 =?utf-8?B?UE54QlRvazIzaURrY3pralF1dVhRSFY1VHhobGl2alJxTFpPZDhlNzNNWFlR?=
 =?utf-8?B?d3pYUlQ2UDZiR2dBaitoZTNqQlVCbEJWd2E3a1BzeHZxM2RCSHVuQzJ1QjIx?=
 =?utf-8?B?WFBWRFdRSXF6T0F1QktQemF5azdGcWxIM3RNdHhvTlg3MWRzZGxtaDZ3VElO?=
 =?utf-8?Q?/cKU73DJ23baF07nFbyulUAQM?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00d89d5d-01b7-45a7-53ec-08dd203fb11a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2024 15:13:28.2445 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4ee9+MPvn0NSx+UTuhO2g/BltbMlnB+3r8FDmWTSaedPpY6Vzvu14h2kXdsLxFvCK4iV/9+87AsxpYos0dNvrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7092
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQ2F2aXR0LCBKb25hdGhh
biA8am9uYXRoYW4uY2F2aXR0QGludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIERlY2VtYmVy
IDEyLCAyMDI0IDk6MjQgUE0NCj4gVG86IEdhcmcsIE5lbWVzYSA8bmVtZXNhLmdhcmdAaW50ZWwu
Y29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gaW50ZWwteGVAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBHYXJnLCBOZW1lc2EgPG5lbWVzYS5nYXJnQGludGVsLmNv
bT47IENhdml0dCwgSm9uYXRoYW4NCj4gPGpvbmF0aGFuLmNhdml0dEBpbnRlbC5jb20+DQo+IFN1
YmplY3Q6IFJFOiBbUEFUQ0ggMS8yXSBkcm0vaTkxNS9kaXNwbGF5OiBBZnRlciBqb2luZXIgY29t
cHV0ZSBwZml0X2RzdA0KPiANCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTog
SW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJl
aGFsZiBPZg0KPiBOZW1lc2EgR2FyZw0KPiBTZW50OiBUaHVyc2RheSwgRGVjZW1iZXIgMTIsIDIw
MjQgNjozMyBBTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwt
eGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBHYXJnLCBOZW1lc2EgPG5lbWVzYS5nYXJn
QGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIDEvMl0gZHJtL2k5MTUvZGlzcGxheTogQWZ0
ZXIgam9pbmVyIGNvbXB1dGUgcGZpdF9kc3QNCj4gPg0KPiA+IEluIHBhbmVsIGZpdHRlci9waXBl
IHNjYWxlciBzY2VuYXJpbyB0aGUgcGNoX3BmaXQgY29uZmlndXJhdGlvbg0KPiA+IGN1cnJlbnRs
eSB0YWtlcyBwbGFjZSBiZWZvcmUgYWNjb3VudGluZyBmb3IgcGlwZV9zcmMgd2lkdGggZm9yIGpv
aW5lci4NCj4gPiBUaGlzIGNhdXNlcyBpc3N1ZSB3aGVuIHBjaF9wZml0IGFuZCBqb2luZXIgZ2V0
IGVuYWJsZWQgdG9nZXRoZXIuU28NCj4gPiBvbmNlIHBpcGUgc3JjIGlzIGNvbXB1dGVkIGFkanVz
dCB0aGUgcGZpdF9kc3QuDQo+ID4gSXQgY2FuIGJlIGRvbmUgYnkgY29tcHV0aW5nIHBlciBwaXBl
IG91dHB1dCBhcmVhIGZpcnN0IGFuZCB0aGVuIGFuZA0KPiA+IHRoZW4gZmluZCB0aGUgaW50ZXJz
ZWN0aW9uIG9mIGFib3ZlIGFyZWEgd2l0aCBwZml0X2RzdCBhbmQgdGhlbiBhZGp1c3QNCj4gPiB0
aGUgY29vcmRpbmF0ZXMuDQo+IA0KPiBNYXliZSByZXdvcmQgdGhlIGNvbW1pdCBtZXNzYWdlIGFz
IHN1Y2g6DQo+IA0KPiAiIiINCj4gSW4gdGhlIHBhbmVsIGZpdHRlci9waXBlIHNjYWxlciBzY2Vu
YXJpbywgdGhlIHBjaF9wZml0IGNvbmZpZ3VyYXRpb24gY3VycmVudGx5DQo+IHRha2VzIHBsYWNl
IGJlZm9yZSBhY2NvdW50aW5nIGZvciBwaXBlX3NyYyB3aWR0aCBmb3Igam9pbmVyLiAgVGhpcyBj
YXVzZXMgaXNzdWVzDQo+IHdoZW4gcGNoX3BmaXQgYW5kIGpvaW5lciBnZXQgZW5hYmxlZCB0b2dl
dGhlci4gIFNvLCBvbmNlIHBpcGVfc3JjIGlzDQo+IGNvbXB1dGVkLCBhZGp1c3QgdGhlIHBmaXRf
ZHN0Lg0KPiBUaGlzIGNhbiBiZSBkb25lIGJ5IGZpcnN0IGNvbXB1dGluZyBwZXIgcGlwZSBvdXRw
dXQgYXJlYSwgdGhlbiBmaW5kaW5nIHRoZQ0KPiBpbnRlcnNlY3Rpb24gb2YgYWJvdmUgYXJlYSB3
aXRoIHBmaXRfZHN0IGJlZm9yZSBmaW5hbGx5IGFkanVzdGluZyB0aGUNCj4gY29vcmRpbmF0ZXMu
DQo+ICIiIg0KPiANCj4gVGhlIGFib3ZlIGlzIGp1c3QgYSBzdWdnZXN0ZWQgZnVsbCByZXZpc2lv
bi4gIFRoZSBmb2xsb3dpbmcgaXMgYWxsIHRoYXQncyBzdHJpY3RseQ0KPiBuZWNlc3NhcnkgdG8g
Zml4Og0KPiBzL3RvZ2V0aGVyLlNvL3RvZ2V0aGVyLiBTby8NCj4gcy9hcmVhIGZpcnN0IGFuZCB0
aGVuIGFuZCB0aGVuL2FyZWEgZmlyc3QgYW5kIHRoZW4vDQo+IA0KPiA+DQo+ID4gU2lnbmVkLW9m
Zi1ieTogTmVtZXNhIEdhcmcgPG5lbWVzYS5nYXJnQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA0MQ0KPiA+ICsr
KysrKysrKysrKysrKysrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0MSBpbnNlcnRpb25zKCsp
DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jDQo+ID4gaW5kZXggMjEzMTlmNzUzYTM0Li43YmUyZWExMWI4YjAgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IEBA
IC0yNTYzLDYgKzI1NjMsMzYgQEAgc3RhdGljIGludCBpbnRlbF9jcnRjX2NvbXB1dGVfcGlwZV9z
cmMoc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gIAlyZXR1cm4g
MDsNCj4gPiAgfQ0KPiA+DQo+ID4gKy8qDQo+ID4gKyAqIFRoZSB4LWNvb3JkaW5hdGUgZm9yIFBy
aW1hcnkgc2hvdWxkIGJlIGNhbGN1bGF0ZWQgaW4gc3VjaCBhIHdheQ0KPiA+ICsgKiB0aGF0IGl0
IHJlbWFpbnMgY29uc2lzdGVudCB3aGV0aGVyIHRoZSBwaXBlcyBhcmUgam9pbmVkIG9yIG5vdC4N
Cj4gPiArICogVGhpcyBtZWFucyB3ZSBuZWVkIHRvIGNvbnNpZGVyIHRoZSBmdWxsIHdpZHRoIG9m
IHRoZSBkaXNwbGF5IGV2ZW4NCj4gPiArICogd2hlbiB0aGUgcGlwZXMgYXJlIGpvaW5lZC4gVGhl
IHgtY29vcmRpbmF0ZSBmb3Igc2Vjb25kYXJpZXMgaXMgMA0KPiA+ICsgKiBiZWNhdXNlIGl0IHN0
YXJ0cyBhdCB0aGUgbGVmdG1vc3QgcG9pbnQgb2YgaXRzIG93biBkaXNwbGF5IGFyZWEsDQo+ID4g
KyAqIGVuc3VyaW5nIHRoYXQgdGhlIGZyYW1lYnVmZmVyIGlzIGNlbnRlcmVkIHdpdGhpbiBQaXBl
IELDouKCrOKEonMNCj4gPiArcG9ydGlvbg0KPiANCj4gUGlwZSBCw6LigqzihKJzIHBvcnRpb24g
b2YgdGhlIG92ZXJhbGwgZGlzcGxheT8gIFRoaXMgaXMgcHJvYmFibHkganVzdCBhIGNvcnJ1cHRp
b24NCj4gaW4gdGhlIGVtYWlsIGR1ZSB0byBteSBtYWlsIHZpZXdlciBvZiBjaG9pY2UsIGJ1dCBp
ZiBpdCdzIG5vdCwgdGhpcyBuZWVkcyB0byBiZQ0KPiBmaXhlZCBiZWZvcmUgcHVzaGluZy4NCj4g
DQo+ID4gKyAqIG9mIHRoZSBvdmVyYWxsIGRpc3BsYXkuDQo+ID4gKyAqLw0KPiA+ICtzdGF0aWMg
aW50IGludGVsX2NydGNfY29tcHV0ZV9wZml0KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlLA0KPiA+ICsJCQkJICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpIHsN
Cj4gPiArCXN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlID0gJmNydGNfc3RhdGUtPmh3LnBp
cGVfbW9kZTsNCj4gPiArCXN0cnVjdCBkcm1fcmVjdCBhcmVhOw0KPiA+ICsNCj4gPiArCWlmICgh
Y3J0Y19zdGF0ZS0+cGNoX3BmaXQuZW5hYmxlZCkNCj4gPiArCQlyZXR1cm4gMDsNCj4gPiArDQo+
ID4gKwlkcm1fcmVjdF9pbml0KCZhcmVhLCAwLCAwLA0KPiA+ICsJCSAgICAgIG1vZGUtPmNydGNf
aGRpc3BsYXksDQo+ID4gKwkJICAgICAgbW9kZS0+Y3J0Y192ZGlzcGxheSk7DQo+ID4gKw0KPiA+
ICsJaWYgKCFkcm1fcmVjdF9pbnRlcnNlY3QoJmNydGNfc3RhdGUtPnBjaF9wZml0LmRzdCwgJmFy
ZWEpKQ0KPiA+ICsJCXJldHVybiAtRUlOVkFMOw0KPiA+ICsNCj4gPiArCWRybV9yZWN0X3RyYW5z
bGF0ZSgmY3J0Y19zdGF0ZS0+cGNoX3BmaXQuZHN0LCAtYXJlYS54MSwgLWFyZWEueTEpOw0KPiA+
ICsNCj4gPiArCXJldHVybiAwOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICBzdGF0aWMgaW50IGludGVs
X2NydGNfY29tcHV0ZV9waXBlX21vZGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0
Y19zdGF0ZSkgIHsNCj4gPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0
YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOw0KPiA+IEBAIC0yNjQ1LDYgKzI2NzUsMTAgQEAgc3Rh
dGljIGludCBpbnRlbF9jcnRjX2NvbXB1dGVfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlLA0KPiA+ICAJaWYgKHJldCkNCj4gPiAgCQlyZXR1cm4gcmV0Ow0KPiA+DQo+
ID4gKwlyZXQgPSBpbnRlbF9jcnRjX2NvbXB1dGVfcGZpdChzdGF0ZSwgY3J0Y19zdGF0ZSk7DQo+
ID4gKwlpZiAocmV0KQ0KPiA+ICsJCXJldHVybiByZXQ7DQo+ID4gKw0KPiA+ICAJaW50ZWxfY3J0
Y19jb21wdXRlX3BpeGVsX3JhdGUoY3J0Y19zdGF0ZSk7DQo+ID4NCj4gPiAgCWlmIChjcnRjX3N0
YXRlLT5oYXNfcGNoX2VuY29kZXIpDQo+ID4gQEAgLTQ4NjUsNiArNDg5OSwxMyBAQCBjb3B5X2pv
aW5lcl9jcnRjX3N0YXRlX21vZGVzZXQoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsDQo+ID4gIAkJZHJtX2RwX3R1bm5lbF9yZWZfZ2V0KHByaW1hcnlfY3J0Y19zdGF0ZS0NCj4g
PmRwX3R1bm5lbF9yZWYudHVubmVsLA0KPiA+ICAJCQkJICAgICAgJnNlY29uZGFyeV9jcnRjX3N0
YXRlLT5kcF90dW5uZWxfcmVmKTsNCj4gPg0KPiA+ICsJaWYgKHNlY29uZGFyeV9jcnRjX3N0YXRl
LT5wY2hfcGZpdC5lbmFibGVkKSB7DQo+ID4gKwkJc3RydWN0IGRybV9yZWN0ICpkc3QgPSAmc2Vj
b25kYXJ5X2NydGNfc3RhdGUtPnBjaF9wZml0LmRzdDsNCj4gPiArCQlpbnQgeSA9IGRzdC0+eTE7
DQo+ID4gKw0KPiA+ICsJCWRybV9yZWN0X3RyYW5zbGF0ZV90byhkc3QsIDAsIHkpOw0KPiA+ICsJ
fQ0KPiA+ICsNCj4gDQo+IEFzaWRlIGZyb20gdGhlIGFib3ZlIG1pbm9yIGdyYW1tYXRpY2FsIGlz
c3VlczoNCj4gUmV2aWV3ZWQtYnk6IEpvbmF0aGFuIENhdml0dCA8am9uYXRoYW4uY2F2aXR0QGlu
dGVsLmNvbT4gLUpvbmF0aGFuIENhdml0dA0KPiANClRoYW5rcyBmb3IgcmV2aWV3LiBJJ2xsIGVk
aXQgdGhlIGNvbW1pdCBtZXNzYWdlLg0KDQpSZWdhcmRzLA0KTmVtZXNhDQo+ID4gIAljb3B5X2pv
aW5lcl9jcnRjX3N0YXRlX25vbW9kZXNldChzdGF0ZSwgc2Vjb25kYXJ5X2NydGMpOw0KPiA+DQo+
ID4gIAlzZWNvbmRhcnlfY3J0Y19zdGF0ZS0+dWFwaS5tb2RlX2NoYW5nZWQgPQ0KPiA+IHByaW1h
cnlfY3J0Y19zdGF0ZS0+dWFwaS5tb2RlX2NoYW5nZWQ7DQo+ID4gLS0NCj4gPiAyLjI1LjENCj4g
Pg0KPiA+DQo=
