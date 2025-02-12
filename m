Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF99A324CE
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 12:27:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F05410E85F;
	Wed, 12 Feb 2025 11:27:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f3lhYMTy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC1EF10E85F;
 Wed, 12 Feb 2025 11:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739359621; x=1770895621;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5GUjgRkqoLgNgcTv7p1ir7Ce+hwjer5hIXtSCTXRDB8=;
 b=f3lhYMTy7ABr6Y1XmDv3pVNJn7yfPC5vIZtYReHEJB816jgYiXArXgEU
 bfZtwBvWQprYLuBEqlYf74XxYvUlz47gzwUcM8uuRb6mQPIj+AGBfvhyP
 XmLrr3GNFd5ZmKyeEh9v6DcuYCDCjAErVLUy1Nn+V+DEADGhQ2WzuvbXj
 WJBZZHIMcFWLab1YytbI2HoYuOyDdPHzgjq+0rpWyTqVpN6T8BUg9if2a
 x+ilfMIqW+1/77FAhbehpU8F31NAUx3QkVAW5lMJD2RjdSwsNM+Zal0eb
 y2k8mHj4yxGK/eRxINjtFLccYQuzXmiXJI5tS0zXN/rQmC1Tp8nF9yBGZ w==;
X-CSE-ConnectionGUID: HqaQI+E0QIim7BuMsdlSPA==
X-CSE-MsgGUID: ha/9BiTOS+GNTp4fTecsUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="43774296"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="43774296"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 03:27:01 -0800
X-CSE-ConnectionGUID: 2qsA2HyFRReJg5ZIe5X6iQ==
X-CSE-MsgGUID: 8OzDLmKSS1CWcRA2qJlPrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117972822"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2025 03:27:01 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Feb 2025 03:27:00 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Feb 2025 03:27:00 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 03:26:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pgH6RC1ZNf9caTAfeP0P3snG1OrDaWlpdgYdFciElmpqcXk5Qlk10g7BXkv8NNd8lc1tghzaa7YS4c/rp1yZBqulPiNXlkSUj9pa9sfcvF8mKE028nCU6jWmzrrpEgNhBz5t7d4C24x9/Sx54RjNJV3+cJaw832xJJcbB/5JpmLfXuzaQCXr8fo1auKv387HKVznSj2+5mD2f1iqTnBfRayrbdQlXvj3/8g1Rl3NuyVkMir/rUHEhUbP2OdG2oqiamsVyJFvbel6ixrH2ASDplnT2vvLRv0VrBCPxglyfqpB4ojYs/bBpE4q1rguwDNrjIgC/GqQxF5EBCmeive/aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5GUjgRkqoLgNgcTv7p1ir7Ce+hwjer5hIXtSCTXRDB8=;
 b=sdQlaIiTlU7y3gjfSfXpiDck2ZwyMx8y069YtApiq4RO+W2VCkSc2Sd7lF8GWe7jp6486gcZpP2pGji+6dr2ktZ5a3id6r/fN1VeN/d/QjIK+APn0mRZbEgWhDa5gbcdQ6ZLR1PQ5bedeJV1KorzQHlE1aGpnpTPVcTPYGVPpaPAQnh5PqDDOwrKxC3I9HrvXepSozF2Z9RABJfU1oagj79HJRnSPSHZ5ArmIeQobcz/n347tcOWNkgRuJy3wFxFcTtvvKND3fQvbK7lqayiB4YbmYf3eXVX/5u8W2TikU4z8JqTBFfn4T+A8KgpPITZKZjtQ19bit98SEbbuOP1xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by LV8PR11MB8583.namprd11.prod.outlook.com (2603:10b6:408:1ec::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Wed, 12 Feb
 2025 11:26:55 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8422.015; Wed, 12 Feb 2025
 11:26:55 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 17/17] drm/i915/ddi: Unify the platform specific functions
 enabling a port
Thread-Topic: [PATCH 17/17] drm/i915/ddi: Unify the platform specific
 functions enabling a port
Thread-Index: AQHbcomHCQII8JgXXUKopbHSob/9KLNDnNlg
Date: Wed, 12 Feb 2025 11:26:55 +0000
Message-ID: <MW4PR11MB7054D6A36E93DD491FEC45CCEFFC2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-18-imre.deak@intel.com>
In-Reply-To: <20250129200221.2508101-18-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|LV8PR11MB8583:EE_
x-ms-office365-filtering-correlation-id: e9059c9e-321d-4b8c-fa96-08dd4b5827d5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?YVpMbisxVnVGTWdUNTV6bmJjUEtJU3M5SURsNzU2U09sSmFSNzkzajA5M0Zi?=
 =?utf-8?B?eUxTM0pENnRXK3JUNVptR1RJZHl2SjNaMVNnYzZYWkhKaU0xOWdPTmF4aUoz?=
 =?utf-8?B?ZlRUMUpzY20yWEhBM3RrL2xvOG5PYXFOZitTUSszeWgrdFA5bEpZR3pXWHJD?=
 =?utf-8?B?VDZPNUY1cFVUbnFxZ0RLMG5ZTXhsdkZBZTY2dWxTZGR1TWVQTklVUnBGK1Vj?=
 =?utf-8?B?a2ZyUDBVMVdLZElrREFGaEFQQ3d4S1h0SUJyYlFlOWt0M3ZaSWtrKzNPYWF0?=
 =?utf-8?B?aXNZc1BudW5TYWVRTlFsL1ZKc3g0Yy90OHFQYlY5WnVHbmRyNTRrQm9QZDJn?=
 =?utf-8?B?bUJsZHNwUjI4WFFEbkxOOHFabStqYllnS3gxWmFEbWlzZTQ1M2oxb1pGYXJm?=
 =?utf-8?B?dGZVUi82NjZhOEtvRVd6NEovL3NrajhCQ2lHaEF6VWlNcGpUUm1MdTE1VjVM?=
 =?utf-8?B?MEh4RmNZL2FacjJEbmEvbFY4TWt0VHdPWWphUWxxemJFYzFuZWRiQTQ3MjZP?=
 =?utf-8?B?dCtVK0tMQ2pnRm1Fdmg1QjdRK3pobXlCcVBQZmpVeWVhd0lKN0ViZHZnamla?=
 =?utf-8?B?YnNIK0IwUHlSZm9zOXpSY0F3Y3dhQVBHck9YeFJaTFc4b3QveWR1SS9kb0lJ?=
 =?utf-8?B?bEFsQVJDRjlIT1FiZ2FlSllEeC9TZmtKUDk1cjF3RWt5bkRuWVgwRm16cEw1?=
 =?utf-8?B?UWkxdkloKzZVZ1dhU0lEa0JvRmZsWllVZUlicWhXNk5JZFgxelUzcWZDb0FF?=
 =?utf-8?B?bUxPSWhNQzExeGRmcHRZOERuWmN0QW5hSExUamdSUE1EKzdxdVgvTzJHTjVO?=
 =?utf-8?B?WnlYclhmdEJFVkdIUW1PVUdCZUZDWHpDVzRwaUJqeFo4cmV4anVlS2VxSXhW?=
 =?utf-8?B?WnE4MWhKekFmNEZlVlBZZHgyNE9JOGhRSVA4OFBWSnhSbm52QXdhQlNZanBW?=
 =?utf-8?B?WW9vc2R5WWpPd3RqMy9pa2U4eFZzK0Uxc3hDNmpGeVAwaGJvQWthaW51Q2Vv?=
 =?utf-8?B?WFZYdnFNdjZ4ZFZaNzBtL0REUmxTcm9zRVhNYlZjWExyeFBESStIUXpVY3pB?=
 =?utf-8?B?VW1WdG5rWnZHb3c4YkloNUEyNXBUSzVSN0lGM0w2UmNPWFhWNkRlVzhuWXkz?=
 =?utf-8?B?UUxOTUNKQnFoMTJLTVRPRUQ3TjNJamRzcmFaMDJSVEkyUVlVYkVpak13QmVV?=
 =?utf-8?B?d1Q2MWR5YkZHU3JnTGI0bjVmYXFvb09Ddml4amIyQ2xqWms3SjM4NlRBRTJp?=
 =?utf-8?B?QnFvWWI1dVRMSTBSNEg2VDkzMjNDQ3h0UGVPbXAyVnp1SU4zSlkrUkxlZkJJ?=
 =?utf-8?B?VjFkQ1ZHRXZtZGVGWk9oWGwzRmRvajRmZm42eitwUm05R0E3QnlkS3ZFeVkv?=
 =?utf-8?B?WStvL0Q3aXNqdHRRYUVnSWU0VGo4Z0wvZDgyYVBkSkZ5eDVkcHZaRStvS0Jo?=
 =?utf-8?B?UXd3ajZoTWRYWFgvZ0p5RXhvdUhXMkk0NEFORW9MS244Rlk3Y3AwVFkzL3ll?=
 =?utf-8?B?aXM2dXBJUXFiZk1vLzh0RUxJQm1vOXhLNEFHMnJ6U1V2RVpEWFlmZ1hvYm5v?=
 =?utf-8?B?K2ljRFg0NFhhYk94RUdxbHdmU1AxeVJHNlFhcGU2WDF6Z2gyZE5PWGw0WUpa?=
 =?utf-8?B?dmJxUGFndi82ZW9EQVlkZjBlZ2lMRFRCNVZXeTdhS3MzeFk3cVdWdFNET2dk?=
 =?utf-8?B?dVVjRGQ1QXA3N1hycTM4ZVY4dXFOYjMyMlpZUU02NFpnREpJR3gwMWpiZnNW?=
 =?utf-8?B?TThFdjNSSTNGVGFPVHBndTRveTNLWHlFY3JaL3B3QTUybzJmelE3aWwrZFE4?=
 =?utf-8?B?ei9LK2h4Z2RYUHlOZnRmc1UrM3lpNDk5NnpYdTkxREwzU2NJNEpScVc0VnRQ?=
 =?utf-8?B?VlhUbHJ0aERFR2JXOFc1WU9CM3g0cVV2OWtjNHU1N0tScGF0VjVib1JYbStR?=
 =?utf-8?Q?aNxDIZ0+CY1luABAFdVaEzlzIWTjEm+p?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VjBrVWViUm05b1F2b3dRM2FhdzhHb3hPYlhVT01FRUpOaTNybDBkVThNcWpJ?=
 =?utf-8?B?Y2FMMExzd0pMY2R5SkVORUROK1FVdGQ3bnFIeUJIdWxTRlVqbU1pc1BuZmxk?=
 =?utf-8?B?Z1p2aFJCZGlpbUZTQkVnclM2V29NdGR4akNnVkozZ0Q4Rkd2b3JVczFGVUJz?=
 =?utf-8?B?N1NZREFNekVQRDBKck5UU3hZaW1LR3FIRVZqQjhranM1dzc3SXNQVUJ1N1Rw?=
 =?utf-8?B?U1BROXA4TUVoQWdkUDFxY2Y0eTRaK3A0WlBTSEw0Rm1qUVJvdGdHUHU0UC9v?=
 =?utf-8?B?NEtIU1RWcTdvYVdtdDdBM21KdXlpSEVlbGxUeDlUdUR6Z0dJMWhYNW9hTFAv?=
 =?utf-8?B?bDI1TC91ODhRWjUzUThpeGZwZ2VRRnpmTVd1RW9hMDJia3ZITGlRTW9DSmFq?=
 =?utf-8?B?UldTQ0NDSENwMDVxQXlkdlYwMkYwK2x5bkk5RmI2d0JabFppTkE0VGtaZ0Yy?=
 =?utf-8?B?SHhSNkdvQk5wRlJmQ3lyOHNObDhJQ0VUQlUwR0JrRFpXSU5UYmd0L0s1NlU0?=
 =?utf-8?B?dzlCTGQydCsvZHd6RC96VXBmWnlVeWo1ZkZOWFNvMlFKVWJCS2JWaG03REN6?=
 =?utf-8?B?S3ZPQ09XQmxLSDBqYUJWdjNCdzZCa1QzcndVNzZrSUg3SCt3UmRnUkRFZzZj?=
 =?utf-8?B?ZnZUU1dWd0hza0pRcUdsRStZMjdBcjd6dUlKaEpqVWp0cEpVd2dvdzBDVmNC?=
 =?utf-8?B?WExPUkp3aW96TDBTU040TVpQRnJBU3Ixczg4U1B2d0VMcDdkTmdGSXR1ZUtL?=
 =?utf-8?B?eHE2dmJROXBQM3VlbnY5dUVrSVFTWWIvRWtCS2ZHSHl2VmExa0M3TGFHQWRF?=
 =?utf-8?B?a203TlM5T2I4aFE5bkQwckFQWlcybWh4OEphdHB6UStMZlYwNGpBVEYvNFBH?=
 =?utf-8?B?b2hJSjYwcHdqMkVnZHRORnlqTUMvY2h1SDMrSW1McGF1RGM1cFZQd0diY2RF?=
 =?utf-8?B?SzZrSCtMNDl0TW5ac1U1cklVOVQ0eG15MHIwMyt1MGw1NnZtTDFRNUJ0N3dD?=
 =?utf-8?B?RzZjYVoyWXU4SmVVNWJ1ZVMrZU9EZGR2RmEybU12OEJURUN2VUFMMFhpN2Z1?=
 =?utf-8?B?NGdQRGR4Ny9LaWJodG9NaGVUbzNTWGVpSTJ2Vy96YUVoNXF4aTF6UDcwV1BM?=
 =?utf-8?B?SnJOTEpoOWd5TEJZcnp3SE9mN1BtSVNFeDYvRnlLSnQxUW0vOS9FVHY4L2VJ?=
 =?utf-8?B?ek5vME9PVWlaR2s1b3h4L3hlLzE2Tm9sVlhpZEpEMjFUcmliMW9kZnhqc0ZF?=
 =?utf-8?B?WGcrN1FQQk8xZFpRcitYV1JRWDB0cDB3dk5aWk9nRFRQL0xaNG81c1F5R3Zq?=
 =?utf-8?B?a1VpQ0tsMDVYbG53ZktxdUUxeGVuQlBjNFpEdGxkV29Obm1nY05jNnlqeGFu?=
 =?utf-8?B?VnNaNEFJMnNDanlsRUtzM25OSDRPaGNNZlBwa0VLNTVhb2JqdWkwY3VTOFk0?=
 =?utf-8?B?Nkt0YThRcWFtb1g4RkduaWZHVnRLZHlibGhIWXZSdjRQNjlIdWpXZlorTVJs?=
 =?utf-8?B?bEpoZ0NpWHBDbC9aUkhSdG9pbWhXSUlMLzQ3Snh1ZmwvcXkrTTZMSDdFQ09R?=
 =?utf-8?B?WmhpZ041QkpBTDE4T1ZiTlZ6R3R5OTdMcSt1eUZpb3lSb2hQU0JnM0gxSmRl?=
 =?utf-8?B?L0Mwc1BVbHo0eGErSmJVK2VmeHFwRHB0OTdXNDA2ZCtvTUxKOU5rRU9KSzB6?=
 =?utf-8?B?dlZkYnpRNHFFTzBVVGlESDBnNG9mMDZFdUtXMkd0a3lDMjhKNEhVaE9XZllT?=
 =?utf-8?B?TTBOMGYrekpqcVIwWjE0QjR6ei9jS0FsWkQvajNjcVBHUWtETWMyMHc4aVd5?=
 =?utf-8?B?R1UzVzhKYy8va3hCZ1dWb2NPRDM0L3c2M0kxN1FDd1Q5eVlYOVkxZEtyMTAr?=
 =?utf-8?B?YndNVlk3Ym5wK2N1RmFtSDJBVjc2TEVnQ2xidm1kTGFSQkM4R0E0YVJjQXln?=
 =?utf-8?B?ditkYTdYWkZSQzRxemVJZm8wYUFwZXFSWTRIRCtNQzZiV3BVTVFhbWRHSTBq?=
 =?utf-8?B?Ui9SS3RQMTFhWUhadGhUMDY0R243SVR3SUIxTi81THk4c3BBdDBwQXNOZk4y?=
 =?utf-8?B?ODI4T3hQY2x4cmFvR1dlVzEyT0RoSzlvRGduYUNQVjVDOTl1V1Q0TDVBZVky?=
 =?utf-8?Q?Q2nM+gQ/+CsSufatLtECRnkKx?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9059c9e-321d-4b8c-fa96-08dd4b5827d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2025 11:26:55.3438 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MLGZFucnr7fLSJEX+jrcSePPpjMKZEjk1Ruk3H9DM99VWr6Z6HbiJq4M3olQH7b53XYoUmDDvaVgZh/eKMXuMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8583
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogV2VkbmVzZGF5LCAyOSBKYW51YXJ5IDIwMjUgMjIuMDINCj4gVG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBT
dWJqZWN0OiBbUEFUQ0ggMTcvMTddIGRybS9pOTE1L2RkaTogVW5pZnkgdGhlIHBsYXRmb3JtIHNw
ZWNpZmljIGZ1bmN0aW9ucw0KPiBlbmFibGluZyBhIHBvcnQNCj4gDQo+IFRoZSBmdW5jdGlvbnMg
ZW5hYmxpbmcgYSBwb3J0IChhcyBwYXJ0IG9mIGxpbmsgdHJhaW5pbmcpIGZvciBNVEwrIGFuZCBl
YXJsaWVyDQo+IHBsYXRmb3JtcyBvbmx5IGRpZmZlciBieSBleHRyYSBzdGVwcyBvbiBNVEwrOg0K
PiAtIGVuYWJsZSB0aGUgRDJEIGxpbmsNCj4gLSBzZXQgdGhlIGxpbmsgcGFyYW1ldGVycw0KPiAt
IGNvbmZpZ3VyZSB0aGUgUE9SVF9CVUZfQ1RMMSByZWdpc3Rlcg0KPiANCj4gYW5kIGFuIGV4dHJh
IHN0ZXAgb24gZWFybGllciBwbGF0Zm9ybXM6DQo+IC0gYXBwbHkgYW4gQURMUCBUeXBlQyB3b3Jr
YXJvdW5kDQo+IA0KPiBBbGwgdGhlIGV4dHJhIHN0ZXBzIGFyZSBhbHJlYWR5L2NhbiBiZSBza2lw
cGVkIG9uIHVucmVsYXRlZCBwbGF0Zm9ybXMuDQo+IENvbWJpbmUgdGhlIHR3byBmdW5jdGlvbnMg
YWNjb3VudGluZyBmb3IgdGhlIGFib3ZlIGRpZmZlcmVuY2VzLCByZW1vdmluZyB0aGUNCj4gZHVw
bGljYXRpb24uDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGlu
dGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5j
b20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8
IDUyICsrKystLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0
aW9ucygrKSwgNDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggYTJkODJhNGM0YWE3Ny4uZThiZWE0OWEyN2RiYyAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IEBAIC0y
NzIxLDcgKzI3MjEsNyBAQCBzdGF0aWMgdm9pZCBtdGxfZGRpX3ByZV9lbmFibGVfZHAoc3RydWN0
DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJICogc3RyZWFtIG9yIG11bHRpLXN0
cmVhbSBtYXN0ZXIgdHJhbnNjb2RlciIgY2FuIGp1c3QgYmUgcGVyZm9ybWVkDQo+ICAJICogdW5j
b25kaXRpb25hbGx5IGhlcmUuDQo+ICAJICoNCj4gLQkgKiBtdGxfZGRpX3ByZXBhcmVfbGlua19y
ZXRyYWluKCkgdGhhdCBpcyBjYWxsZWQgYnkNCj4gKwkgKiBpbnRlbF9kZGlfcHJlcGFyZV9saW5r
X3JldHJhaW4oKSB0aGF0IGlzIGNhbGxlZCBieQ0KPiAgCSAqIGludGVsX2RwX3N0YXJ0X2xpbmtf
dHJhaW4oKSB3aWxsIGV4ZWN1dGUgc3RlcHM6IDYuZCwgNi5mLCA2LmcsIDYuaCwNCj4gIAkgKiA2
LmkgYW5kIDYuag0KPiAgCSAqDQo+IEBAIC0zNzEzLDggKzM3MTMsOCBAQCBzdGF0aWMgdm9pZCBh
ZGxwX3RidF90b19kcF9hbHRfc3dpdGNoX3dhKHN0cnVjdA0KPiBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyKQ0KPiAgCQlpbnRlbF9ka2xfcGh5X3JtdyhpOTE1LCBES0xfUENTX0RXNSh0Y19wb3J0LCBs
biksDQo+IERLTF9QQ1NfRFc1X0NPUkVfU09GVFJFU0VULCAwKTsgIH0NCj4gDQo+IC1zdGF0aWMg
dm9pZCBtdGxfZGRpX3ByZXBhcmVfbGlua19yZXRyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHAsDQo+IC0JCQkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0
ZSkNCj4gK3N0YXRpYyB2b2lkIGludGVsX2RkaV9wcmVwYXJlX2xpbmtfcmV0cmFpbihzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwLA0KPiArCQkJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZQ0KPiAqY3J0Y19zdGF0ZSkNCj4gIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+ICAJc3RydWN0IGludGVsX2Rp
Z2l0YWxfcG9ydCAqZGlnX3BvcnQgPSBkcF90b19kaWdfcG9ydChpbnRlbF9kcCk7IEBAIC0NCj4g
MzcyOSw3ICszNzI5LDYgQEAgc3RhdGljIHZvaWQgbXRsX2RkaV9wcmVwYXJlX2xpbmtfcmV0cmFp
bihzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiANCj4gIAlkcm1fV0FSTl9PTihkaXNw
bGF5LT5kcm0sIGRwX3RwX2N0bCAmIERQX1RQX0NUTF9FTkFCTEUpOw0KPiANCj4gLQkvKiA2LmQg
Q29uZmlndXJlIGFuZCBlbmFibGUgRFBfVFBfQ1RMIHdpdGggbGluayB0cmFpbmluZyBwYXR0ZXJu
IDENCj4gc2VsZWN0ZWQgKi8NCj4gIAlkcF90cF9jdGwgPSBEUF9UUF9DVExfRU5BQkxFIHwgRFBf
VFBfQ1RMX0xJTktfVFJBSU5fUEFUMTsNCj4gIAlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRj
X3N0YXRlLCBJTlRFTF9PVVRQVVRfRFBfTVNUKSB8fA0KPiAgCSAgICBpbnRlbF9kcF9pc191aGJy
KGNydGNfc3RhdGUpKSB7DQo+IEBAIC0zNzQyLDE2ICszNzQxLDE1IEBAIHN0YXRpYyB2b2lkIG10
bF9kZGlfcHJlcGFyZV9saW5rX3JldHJhaW4oc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwN
Cj4gIAlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBkcF90cF9jdGxfcmVnKGVuY29kZXIsIGNydGNf
c3RhdGUpLCBkcF90cF9jdGwpOw0KPiAgCWludGVsX2RlX3Bvc3RpbmdfcmVhZChkaXNwbGF5LCBk
cF90cF9jdGxfcmVnKGVuY29kZXIsIGNydGNfc3RhdGUpKTsNCj4gDQo+IC0JLyogNi5mIEVuYWJs
ZSBEMkQgTGluayAqLw0KPiArCWFkbHBfdGJ0X3RvX2RwX2FsdF9zd2l0Y2hfd2EoZW5jb2Rlcik7
DQo+ICsNCj4gIAltdGxfZGRpX2VuYWJsZV9kMmQoZW5jb2Rlcik7DQo+IA0KPiAtCS8qIDYuZyBD
b25maWd1cmUgdm9sdGFnZSBzd2luZyBhbmQgcmVsYXRlZCBJTyBzZXR0aW5ncyAqLw0KPiAtCWVu
Y29kZXItPnNldF9zaWduYWxfbGV2ZWxzKGVuY29kZXIsIGNydGNfc3RhdGUpOw0KPiArCWlmIChE
SVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxNCkNCj4gKwkJZW5jb2Rlci0+c2V0X3NpZ25hbF9sZXZl
bHMoZW5jb2RlciwgY3J0Y19zdGF0ZSk7DQo+IA0KPiAtCS8qIDYuaCBDb25maWd1cmUgUE9SVF9C
VUZfQ1RMMSAqLw0KPiAgCW10bF9wb3J0X2J1Zl9jdGxfcHJvZ3JhbShlbmNvZGVyLCBjcnRjX3N0
YXRlKTsNCj4gDQo+IC0JLyogNi5pIENvbmZpZ3VyZSBhbmQgZW5hYmxlIERESV9DVExfREUgdG8g
c3RhcnQgc2VuZGluZyB2YWxpZCBkYXRhIHRvDQo+IHBvcnQgc2xpY2UgKi8NCj4gIAlpZiAoRElT
UExBWV9WRVIoZGlzcGxheSkgPj0gMjApDQo+ICAJCWludGVsX2RwLT5EUCB8PSBYRTJMUERfRERJ
X0JVRl9EMkRfTElOS19FTkFCTEU7DQo+IA0KPiBAQCAtMzc1OSwzNiArMzc1Nyw2IEBAIHN0YXRp
YyB2b2lkIG10bF9kZGlfcHJlcGFyZV9saW5rX3JldHJhaW4oc3RydWN0DQo+IGludGVsX2RwICpp
bnRlbF9kcCwNCj4gIAlpbnRlbF9kcC0+RFAgfD0gRERJX0JVRl9DVExfRU5BQkxFOw0KPiAgfQ0K
PiANCj4gLXN0YXRpYyB2b2lkIGludGVsX2RkaV9wcmVwYXJlX2xpbmtfcmV0cmFpbihzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwLA0KPiAtCQkJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZQ0KPiAqY3J0Y19zdGF0ZSkNCj4gLXsNCj4gLQlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0
ICpkaWdfcG9ydCA9IGRwX3RvX2RpZ19wb3J0KGludGVsX2RwKTsNCj4gLQlzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciA9ICZkaWdfcG9ydC0+YmFzZTsNCj4gLQlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsNCj4gLQl1MzIg
ZHBfdHBfY3RsOw0KPiAtDQo+IC0JZHBfdHBfY3RsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwg
ZHBfdHBfY3RsX3JlZyhlbmNvZGVyLCBjcnRjX3N0YXRlKSk7DQo+IC0NCj4gLQlkcm1fV0FSTl9P
TigmZGV2X3ByaXYtPmRybSwgZHBfdHBfY3RsICYgRFBfVFBfQ1RMX0VOQUJMRSk7DQo+IC0NCj4g
LQlkcF90cF9jdGwgPSBEUF9UUF9DVExfRU5BQkxFIHwgRFBfVFBfQ1RMX0xJTktfVFJBSU5fUEFU
MTsNCj4gLQlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRf
RFBfTVNUKSB8fA0KPiAtCSAgICBpbnRlbF9kcF9pc191aGJyKGNydGNfc3RhdGUpKSB7DQo+IC0J
CWRwX3RwX2N0bCB8PSBEUF9UUF9DVExfTU9ERV9NU1Q7DQo+IC0JfSBlbHNlIHsNCj4gLQkJZHBf
dHBfY3RsIHw9IERQX1RQX0NUTF9NT0RFX1NTVDsNCj4gLQkJaWYgKGNydGNfc3RhdGUtPmVuaGFu
Y2VkX2ZyYW1pbmcpDQo+IC0JCQlkcF90cF9jdGwgfD0gRFBfVFBfQ1RMX0VOSEFOQ0VEX0ZSQU1F
X0VOQUJMRTsNCj4gLQl9DQo+IC0JaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIGRwX3RwX2N0bF9y
ZWcoZW5jb2RlciwgY3J0Y19zdGF0ZSksIGRwX3RwX2N0bCk7DQo+IC0JaW50ZWxfZGVfcG9zdGlu
Z19yZWFkKGRldl9wcml2LCBkcF90cF9jdGxfcmVnKGVuY29kZXIsIGNydGNfc3RhdGUpKTsNCj4g
LQ0KPiAtCWFkbHBfdGJ0X3RvX2RwX2FsdF9zd2l0Y2hfd2EoZW5jb2Rlcik7DQo+IC0NCj4gLQlp
bnRlbF9lbmFibGVfZGRpX2J1ZihlbmNvZGVyLCBpbnRlbF9kcC0+RFApOw0KPiAtCWludGVsX2Rw
LT5EUCB8PSBERElfQlVGX0NUTF9FTkFCTEU7DQo+IC19DQo+IC0NCj4gIHN0YXRpYyB2b2lkIGlu
dGVsX2RkaV9zZXRfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCQkJ
CSAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICAJCQkJ
ICAgICB1OCBkcF90cmFpbl9wYXQpDQo+IEBAIC00NjEyLDcgKzQ1ODAsNiBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGRybV9lbmNvZGVyX2Z1bmNzIGludGVsX2RkaV9mdW5jcw0KPiA9IHsNCj4gDQo+
ICBzdGF0aWMgaW50IGludGVsX2RkaV9pbml0X2RwX2Nvbm5lY3RvcihzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCkgIHsNCj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOw0KPiAgCXN0cnVjdCBpbnRlbF9j
b25uZWN0b3IgKmNvbm5lY3RvcjsNCj4gIAllbnVtIHBvcnQgcG9ydCA9IGRpZ19wb3J0LT5iYXNl
LnBvcnQ7DQo+IA0KPiBAQCAtNDYyMSwxMCArNDU4OCw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfZGRp
X2luaXRfZHBfY29ubmVjdG9yKHN0cnVjdA0KPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0
KQ0KPiAgCQlyZXR1cm4gLUVOT01FTTsNCj4gDQo+ICAJZGlnX3BvcnQtPmRwLm91dHB1dF9yZWcg
PSBERElfQlVGX0NUTChwb3J0KTsNCj4gLQlpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTQpDQo+
IC0JCWRpZ19wb3J0LT5kcC5wcmVwYXJlX2xpbmtfcmV0cmFpbiA9DQo+IG10bF9kZGlfcHJlcGFy
ZV9saW5rX3JldHJhaW47DQo+IC0JZWxzZQ0KPiAtCQlkaWdfcG9ydC0+ZHAucHJlcGFyZV9saW5r
X3JldHJhaW4gPQ0KPiBpbnRlbF9kZGlfcHJlcGFyZV9saW5rX3JldHJhaW47DQo+ICsJZGlnX3Bv
cnQtPmRwLnByZXBhcmVfbGlua19yZXRyYWluID0gaW50ZWxfZGRpX3ByZXBhcmVfbGlua19yZXRy
YWluOw0KPiAgCWRpZ19wb3J0LT5kcC5zZXRfbGlua190cmFpbiA9IGludGVsX2RkaV9zZXRfbGlu
a190cmFpbjsNCj4gIAlkaWdfcG9ydC0+ZHAuc2V0X2lkbGVfbGlua190cmFpbiA9IGludGVsX2Rk
aV9zZXRfaWRsZV9saW5rX3RyYWluOw0KPiANCj4gLS0NCj4gMi40NC4yDQoNCg==
