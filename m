Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B37AB6B8F
	for <lists+intel-gfx@lfdr.de>; Wed, 14 May 2025 14:40:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DE4D10E111;
	Wed, 14 May 2025 12:40:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TMLT5CeU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A1C510E111;
 Wed, 14 May 2025 12:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747226426; x=1778762426;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YleqlUzGQJ0jt5bU1E7c00UZncMIQYHdjBhzcpUeA7M=;
 b=TMLT5CeUMKm+rg8SQiku7ijMbfWW7BQvNknprA4u2vJtrq0L5x1xcwlF
 iY6yXl0Hbh0EWN/1wD0nmaHZfduJjL/5NpMQlGQm9JSQG92oELFXhvl/J
 FlnvM+EpaAOQskQk4EHQF56KizkInE6vOYvArsWeXCX5CUM60Y7VRlIDq
 lITVu0GWrf0ean9uyCRSGsrMAjKORKcG04dhY8hm9aUv17nHsp5W3S8ht
 BEttYz8tRQcJMffr2sxB7AssxuHTL3zctxsiM3BX91tAlP1zoIlvvOFPP
 ivrbdoIy84/cUi6RQAN0O2jFFcAV5VjTxaZok/LK2AlEj5C/awqtD2jbz A==;
X-CSE-ConnectionGUID: Ua5Xc4EcTt+CpX956NfQJQ==
X-CSE-MsgGUID: 6FHzXbiDQF+eDEBelLhGew==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="59348922"
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="59348922"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 05:40:25 -0700
X-CSE-ConnectionGUID: A1tkWX3oRuGVgHzr1U7C4g==
X-CSE-MsgGUID: LD11jB4YSpWrKOrYNUyxmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="137906467"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 05:40:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 14 May 2025 05:40:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 14 May 2025 05:40:24 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 14 May 2025 05:40:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bbiQJoI8qFQM8RrXGE/PoZ6Ny+5WDF1DkopQUz7It19mSsELDtEvb+hETQ0tMsbsKeE1g1+RyPQ48w8CCGp/W3ciUPS0L8Badazs+Vn+4iDzpSQmkjYo9BCgGxJcZOek4rKADSjHuwCSI6eIN4MMU7FdxS21Txu6NfVJ8ziso3pVfqFyuotOSOSlGvJxpZVgBHEUJrOe5komN2NEhWL90LUMr3UPisT89U7vTQ9vUjqWs6BPO9XfQr1IQ6R/GwJ/TBG4ibBdT8hblfROf3QEYlbePjK6vT9/ozt/sR4tehk0d0iu2KLoF1ve36RWDU5dNjBmJPAn3nQu6UG8yTCDlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YleqlUzGQJ0jt5bU1E7c00UZncMIQYHdjBhzcpUeA7M=;
 b=c59Lmb0afarq4jaOOpcPbQxqVxDC6b2Rm/AIjI3It6q90HAhTw6w7C4CDkphxlE0parPsfOJdPeaON5C3Fwa0QgH6q0solBIssOJ0CGpL7rNs8xB48An1RpO3pp/SKoEMtNebzAlJwMk2GSWW5ftzkdxlgEBdmgelMSZzW+3oMYb99JfsM/r/XwqL1um090Mya6nIJVjSAbrt2a77c6GzhMtUWFeq2CzJZ7LCCPMsllEIM2DvGVTQUZcB0J1OGAxMlUgD12Wax0M8+vD+6h2oRn+oa1ygToJQGSAu4GkPJCdc34/TyAmZz8g0+Ejb7akZyR/0A+UCFVZp5g0iYIgMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH7PR11MB6331.namprd11.prod.outlook.com (2603:10b6:510:1fd::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.28; Wed, 14 May
 2025 12:40:02 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%4]) with mapi id 15.20.8722.027; Wed, 14 May 2025
 12:40:02 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>
Subject: RE: [REGRESSION] on linux-next (next-20250507)
Thread-Topic: [REGRESSION] on linux-next (next-20250507)
Thread-Index: AdvDAU6ABHQKVT6yT8GkQoUFdyaDfwANwTAAAGU35/A=
Date: Wed, 14 May 2025 12:40:02 +0000
Message-ID: <SJ1PR11MB61292A304C9FA6BF92B568A3B991A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB61292CE72D7BE06B8810021CB997A@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <20250512122102.GF5657@nvidia.com>
In-Reply-To: <20250512122102.GF5657@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|PH7PR11MB6331:EE_
x-ms-office365-filtering-correlation-id: ec4b42bd-4905-49c2-7de4-08dd92e4722a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?aVNvUHdtTlhycjVTWmp2ZENtTVV2SGpJU3V2V1NobGY0SzVlQ3JuOGQ3eWEy?=
 =?utf-8?B?Sm9tZ0dVdURoUW12VExwNlo4NHFwZWt0ZFNrZ1RrYVMzaXNESm4wemVaOGFk?=
 =?utf-8?B?aUtWSm9QZmlYR29BNEtEZC8rcGdCWURLaHlPYk5qZ25URFN6cUttN2lKOFNx?=
 =?utf-8?B?b2FhSTNiM3JFdFRzZmxUWVZUT1V0NHZ4Z05vTXUyVlRRbzZ2ajdXTHRrb1A1?=
 =?utf-8?B?azhuZEhwNEtSYjRES2Q4NGZ2eDNvVEZwYStiblJpM3BzL04vaU5EWldEMlNE?=
 =?utf-8?B?WkpLUGU5bGEzVitZSVF5M2dUbTArMkthUm1YajFsdFRXYTcrTDRQQzNGNnY3?=
 =?utf-8?B?Nnl1T2FZdnV1WVBheEpyMVNlWmowa0lUSDYyZDcxb0xMNWFjR2tDQ0pyMXZY?=
 =?utf-8?B?ckNMMjQxQWpzSFhSTWM1dm5pTXdiUG5qMkFJRWNpSjZHQ3VRc2hNVXFVUkdx?=
 =?utf-8?B?N1pNNEluRzZVL3ZDNDVjeG9lRzB5bFFhcGRubm9HT0RiU242d0hWM3dMckt6?=
 =?utf-8?B?RVp5SS83YkxhTzNaV0UrQzNMcjl0WjVET1pPSUZSUHRibDM3T1ZEbld3SFdT?=
 =?utf-8?B?QUw0TXpxSW5VZVJSS1huVC9QTTRJWFEraENFNlVRQ0YwYzR2eThjbWQ4a2Vr?=
 =?utf-8?B?SVE0bE56bFpMR0diUFpRNjZ1WlZaRVpMdjRhVTJBTkJFRUVKT2RYTnpacmpa?=
 =?utf-8?B?UUxDRk0rMW85R1hMRFRQNWp2UDBYRjhneEtrZmkxdGJZbzA4WFpyWTZIWHNR?=
 =?utf-8?B?dDRLY3VKZmV6M3hRUVUwQUJscWlXOElhZyt1M3NISHhTWEhscEhmYk1oWm1t?=
 =?utf-8?B?RW9ZeEgrUDRnUDJMM3lpSERIQkJEeVhJd3lVZnZ1ZERGYlB6bjJoZ3BpYUFp?=
 =?utf-8?B?OWZQb0NCYTdYcFRJaXFuQTA4MG8xczVxNGFGS25sS2hxcDRuMmQ0R2JscEtP?=
 =?utf-8?B?TTRXUkl2cjltRFd1eVM4c3dMSTI2U0JtZEFMdUphRnJkMHVqMkY2R0VBUTdh?=
 =?utf-8?B?TU1rWEZnMkNMemlSc1FGOG5wZnFxMTNJY2RSQUJ2S2JMOE9xcjlMRU9ZRDlO?=
 =?utf-8?B?a2xDQS9pWG9xNEFGeDNmYTlPYzRtZU9ET1Q4RkpUV0lTWU5ERlVZMjhvclJB?=
 =?utf-8?B?MktQQURFMlRHREtMVGhpeE1kUWYxTE11R2Ixb21KOFRtZE5BMmRjK2d6YnMw?=
 =?utf-8?B?YmgrZ1Nkc3Frc2I5Qm9GMElmZFFKQVdKWnA5SEdhZWxXNEVrRFp3RTRjTUN0?=
 =?utf-8?B?R1Zub1dLNDR6TFZaMVNCbXdnVW44YTV5NksvV2hMdE1rcGp6RmNuNGRtMHNk?=
 =?utf-8?B?bWh2TWpjN045Y1J0eU83UFVLM0phTEhFMXhyLzJreS9HdnN6dCtYOTlFT1lj?=
 =?utf-8?B?aStGR0x6NTl6Y0pZRWREMU8zRkh3K2RPVXg1WEVpendKZmVyV0RsWEF2eDlt?=
 =?utf-8?B?ZkpSTWZtRGhPeEJlck1CVFIxVmkrWWRwd04vZ1A2c0NjS1U0LzlYUzMrRlpE?=
 =?utf-8?B?c2xqNzVSaTdNbjl1dnhCT0tqOGxyTVZCbEFPVFduVkZxa0NzL1VvVThPcXRh?=
 =?utf-8?B?L2ZIdHp6TWVkSGhDMFJhK0lYMDlHL3lxNXRKVzlpS21KTFZHT1RlSmZBTnpX?=
 =?utf-8?B?dlg2RG5VR29hR3lJNC8ya0RONzE1Z1Fsa3hrTENpOCtFektQSTU2d1Fud250?=
 =?utf-8?B?bGxOTDBLK3lVVzl1a09MN3ZVT200WDFzKzBUK21wdk5OSUVsNS9XZXJSa3Vq?=
 =?utf-8?B?RlZWSUxabTNERUtLWVF3M0tlMmM4cUxLRnQ2RDBZVkdsQVJzWEZKdW5NTWJD?=
 =?utf-8?B?OFkvYkVJMklRL2xMa2t6RUFsbUNUamxONzBvQlZBdDJjSTBUUytSTkdKZGNv?=
 =?utf-8?B?OGF2c2ZsZG9LdUZBVEdjTEZXSms3K1pWMVdha2xsWnlHN1J1UDdCMStXWVhh?=
 =?utf-8?B?V1NKQUZaRlFVWklMYXJhN1owTW9lOFZWQWwxeEF5ZXg3dTk1TlVyODlwTmF3?=
 =?utf-8?Q?wEnLYq6cIBSmj6zT4z3esuoRVlozdg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cm1rd1BYbjR4OFRNM0t1SWRLRng2TjlNWGlRUFVXNVRQRFpJNWVkZ0ZENzBi?=
 =?utf-8?B?d20rdnZJSjhneGQ2L2hjTXZ6TVVmeHZwY09Ob2xSanNVUVlWSG5sMll5Y3dU?=
 =?utf-8?B?RHJXUElSNHdtNlNaY05xQUh3eCsxVldYRTRtRGlrdHZnYkxiRk80Q1NkMkFG?=
 =?utf-8?B?czFKc2djVXNMZDNWVXU4VEptWkU5YVo5THE5cU5WdGIrWndyb0RoNEZRUmNa?=
 =?utf-8?B?QXJibWJjSGZueXg0dlFKdE12OHN3ZmxnbXBRZjYxWVc1UURDR0JCN2tvbnlR?=
 =?utf-8?B?TURpNlFMeHJFakt4MFdQMnMySk9jZGswcUF3a3NnRS8wMEtBcDNydUtVNzN3?=
 =?utf-8?B?TjBLdU10dGFrS2RmTVFZb1dUVnZIWDNyM0FaTmN4RUJ0YXRhMkVtU3oyUzRp?=
 =?utf-8?B?Z0ZwV2RFajJXR2tHaTk4QVFvVWI4R2xDM0hvVlNPR1IveWZZU2xmM05BQWV0?=
 =?utf-8?B?MjhKdjFlRHVPTDV1SzRaaURXVHhRYWN6WHpUS2h5aVN5Vmd5QzNwYk1wOXUv?=
 =?utf-8?B?U2xRRW5XcTRDd3Bldjg5dDJYcVRqZkpIQnhzMjlUMmx0azZzeXNjT3lrYXBW?=
 =?utf-8?B?a0Z2Wjk5LzVmVnQ0TTM1QlF4dWFkbkxUbTN3ejNyZjY4WDlPYitKNlhTWTFy?=
 =?utf-8?B?eTREaDJOU3hPQSs4bGVFWXBHMmxQbGJKdkVSYlpWdlFvcW5POWIxaytyZjkr?=
 =?utf-8?B?SUVLa29OaGpxMytyOFk5NmloNzJXR0ZLL0FyZlVtd0VVU2xWNUhqTTIwZlRh?=
 =?utf-8?B?dWFFamJ2Q3Zyc1hEaEszaE05Mk1iUlVDY2NERk83KzI4Q3owZEtnK2QvdVMw?=
 =?utf-8?B?VU43RDU0V2E5bnlaOENWcmh6RTQ0TzNMeTc4MlEyaDJFVmR4aU40QThaUkE1?=
 =?utf-8?B?RnByZnlER3RYOExpMEZkb2hjUTV0VnduQWdFQUlqd2VZRGdMZmwwNjF6Zzhq?=
 =?utf-8?B?aUJDclY4c0drSTdUMTIrS01MRGp5RG15S3h2aC9MTlU4R3NJQzVrcFlna1Vn?=
 =?utf-8?B?c3J4cmRLLzFIUGMxQlRjWU5rcW1MMnhCdlRrQmxmMTZVNndWenY3KzZiMUxE?=
 =?utf-8?B?ZnJyaE9BYUplVVd6bEFBZDMrNnFUSm40SmxqZ3M0VVY1ZHpSakVieHkxZXRz?=
 =?utf-8?B?emlHOEh0VzZnS3lqbHVoc21tS1NoWm5IbDFUNXE0ZkZJK29oRVRTUERVSndy?=
 =?utf-8?B?YVBhSzhEM24xWm9nZTdTc2F2M1pOVjRWdFROdEkwbSt1cElta1ppUmRIUW0w?=
 =?utf-8?B?dUt5Z1lyc2VCZjdlbXRpL3NZSXJyWHhrUXUzaWcxL3J2MERhdVhiWXRUdmpS?=
 =?utf-8?B?UDhLdHlaaVpGMW94OWN2N1RCdFF6a3lSU1krM2NzazZsckpRNjNzMnZrUVZH?=
 =?utf-8?B?UkZIN28ySWVHeXhKUmR0Rkp4NEQycnZvTkY0U3kyTWdHMENmZEJTVDB1VXo5?=
 =?utf-8?B?YzM3Nk9kVDlIdTk2SUVtWVlGY2c3azRNc1JPZThiL29BOTJnRHlwUlRNKy95?=
 =?utf-8?B?dUJhZXMyOVhkWG1aS1pEc2E1QXM3TnRxUnR1SU1aQzNWeVVVdG1IZmFTaUhl?=
 =?utf-8?B?NDRIT0gyV1FYMEdVY0VDNVgrcDFNZ1JZMmxtRU4yVU5iM2g2ZnpnejVnQkQz?=
 =?utf-8?B?akV4Y2tTR2tOS3VXeWZuSlNhbkc2cmVQcy8xNUN3YU04TnJ1YWFwY1ZSZ3hR?=
 =?utf-8?B?TjVGNDI2aUd1SVdJbnk3U1ZncVk1WjZIQ1k1R3ZkaVY0UExyS0tTNUErdm9m?=
 =?utf-8?B?LzlWd1dMazNnYkk2ZUhRWlFEZFBMK0JXNTNaak83c0E1N1lzTFZXVUJiWEZJ?=
 =?utf-8?B?WlBJaElYY1dLczNqcUcwbUVMamF1WEx6Q1RJeWdkbS96WUIrUE5jeWtHaEd0?=
 =?utf-8?B?VU9PVCs5dDYwQlBrYTBnbjdTTStnRG9oVHhYOHYxdFRmY1kvVUVZUVo5amo1?=
 =?utf-8?B?Z2hGT3BuelE0ZldDWVY2Z0lxN25KblZsVCtDV0JNNlp1QXJ1azBKcTBvU1JN?=
 =?utf-8?B?Z0d3blBVcnZzc2QzVmFnbDJPSFpmckhVUTg0cUpZRi90emJrREJGK1VTUEtT?=
 =?utf-8?B?OVBLc2FrWVJPSU9yaFcxOEpFOFZFVU94cGtQMnJtZ01RaWxnWE45WCtjOVFP?=
 =?utf-8?B?TStBZGZWVUJTQXlzdEprQmNZRjRsdnc0aUtGT3g5VW1QbUl5R1JnZldFVEZE?=
 =?utf-8?B?MXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec4b42bd-4905-49c2-7de4-08dd92e4722a
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2025 12:40:02.1740 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O97e8gdXp1ftTuWrffQ4Y+Ahgb0QxTkiEYYBxrcatidOegX4BObD2IQjgBFFAYynNh4ssU/jSSnDuOJn+ZVTOs00Y50zuChIm4tAJ9CqJ+0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6331
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFzb24gR3VudGhvcnBl
IDxqZ2dAbnZpZGlhLmNvbT4NCj4gU2VudDogTW9uZGF5LCBNYXkgMTIsIDIwMjUgNTo1MSBQTQ0K
PiBUbzogQm9yYWgsIENoYWl0YW55YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVs
LmNvbT4NCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZzsgU2FhcmluZW4sDQo+IEphbmkgPGphbmkuc2FhcmluZW5AaW50
ZWwuY29tPjsgTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBLdXJtaSwNCj4g
U3VyZXNoIEt1bWFyIDxzdXJlc2gua3VtYXIua3VybWlAaW50ZWwuY29tPjsgRGUgTWFyY2hpLCBM
dWNhcw0KPiA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPjsgaW9tbXVAbGlzdHMubGludXguZGV2
DQo+IFN1YmplY3Q6IFJlOiBbUkVHUkVTU0lPTl0gb24gbGludXgtbmV4dCAobmV4dC0yMDI1MDUw
NykNCj4gDQo+IE9uIE1vbiwgTWF5IDEyLCAyMDI1IGF0IDA2OjAwOjM5QU0gKzAwMDAsIEJvcmFo
LCBDaGFpdGFueWEgS3VtYXINCj4gd3JvdGU6DQo+IA0KPiA+IGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGANCj4gPiBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYA0KPiA+IGNvbW1pdCAxM2Y0M2Q3Y2Yz
ZTA1NzAwMDRhMGQ5NjBiYzFiZTIzZGI4MjdjMmZmDQo+ID4gQXV0aG9yOiBKYXNvbiBHdW50aG9y
cGUgbWFpbHRvOmpnZ0BudmlkaWEuY29tDQo+ID4gRGF0ZTrCoMKgIFR1ZSBBcHIgOCAxMzo1Mzo1
NiAyMDI1IC0wMzAwDQo+ID4NCj4gPiDCoMKgwqAgaW9tbXUvcGFnZXM6IEZvcm1hbGl6ZSB0aGUg
ZnJlZWxpc3QgQVBJDQo+ID4gYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYA0KPiA+IGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgDQo+ID4NCj4gPiBXZSBjb3VsZCBub3QgcmV2ZXJ0IHRoZSBwYXRjaCBi
ZWNhdXNlIG9mIG1lcmdlIGNvbmZsaWN0cyBidXQgcmVzZXR0aW5nIHRvIHRoZQ0KPiBwYXJlbnQg
b2YgdGhlIGNvbW1pdCBzZWVtcyB0byBmaXggdGhlIGlzc3VlLg0KPiA+DQo+ID4gQ291bGQgeW91
IHBsZWFzZSBjaGVjayB3aHkgdGhlIHBhdGNoIGNhdXNlcyB0aGlzIHJlZ3Jlc3Npb24gYW5kIHBy
b3ZpZGUgYQ0KPiBmaXggaWYgbmVjZXNzYXJ5Pw0KPiANCj4gQ291bGQgdGhpcyBiZSB0aGUgc29s
dXRpb24/DQoNCkFwb2xvZ2llcyBmb3IgdGhlIGRlbGF5LCB0aGlzIGNoYW5nZSBzZWVtcyB0byBz
b2x2ZSB0aGUgaXNzdWUuIENhbiB3ZSBleHBlY3QgYSBwYXRjaCBzb29uPw0KDQpSZWdhcmRzDQoN
CkNoYWl0YW55YQ0KDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9kbWEtaW9tbXUu
YyBiL2RyaXZlcnMvaW9tbXUvZG1hLWlvbW11LmMNCj4gaW5kZXggMGFmMWFiMzYyODNjYmEuLjdk
MmI1MWE4OTBjNzVhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2lvbW11L2RtYS1pb21tdS5jDQo+
ICsrKyBiL2RyaXZlcnMvaW9tbXUvZG1hLWlvbW11LmMNCj4gQEAgLTE1NCw2ICsxNTQsOCBAQCBz
dGF0aWMgdm9pZCBmcV9yaW5nX2ZyZWVfbG9ja2VkKHN0cnVjdA0KPiBpb21tdV9kbWFfY29va2ll
ICpjb29raWUsIHN0cnVjdCBpb3ZhX2ZxDQo+ICAJCQkgICAgICAgZnEtPmVudHJpZXNbaWR4XS5p
b3ZhX3BmbiwNCj4gIAkJCSAgICAgICBmcS0+ZW50cmllc1tpZHhdLnBhZ2VzKTsNCj4gDQo+ICsJ
CWZxLT5lbnRyaWVzW2lkeF0uZnJlZWxpc3QgPQ0KPiArCQkJSU9NTVVfUEFHRVNfTElTVF9JTklU
KGZxLT5lbnRyaWVzW2lkeF0uZnJlZWxpc3QpOw0KPiAgCQlmcS0+aGVhZCA9IChmcS0+aGVhZCAr
IDEpICYgZnEtPm1vZF9tYXNrOw0KPiAgCX0NCj4gIH0NCj4gDQo+IEphc29uDQo=
