Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4562DA569DC
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 15:02:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CDE210EBB3;
	Fri,  7 Mar 2025 14:02:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MytUMT84";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C66210EBB3;
 Fri,  7 Mar 2025 14:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741356128; x=1772892128;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=aeR4K354nmC+IZwEcvbxHZA15y4CW3TOyH0e7qJN0Q8=;
 b=MytUMT84BZhpuaUc8txXj81d14i7Te4BhdxBX2tOPOT0pjq7JGiUcnd6
 JOZF8Chb41zh3Zwu8g2Sm64jc1DnSsbqg4KHTYITiEPwOTaa0LUIlw1N2
 yHvMArsDrzTFNs8A4ve2axFIzYfzOsOX0PeQw8WQmwuhmFJ5CMQhl+s8R
 5IbBIpEDc7DXaMCRRW15flrRqxJbRG5ZL3sFcmQHOoWHSEoo9wiDuS4qu
 3GdAPZ1VZQsk9E/+thGm06xkTrogz86TW7pDJeqz+C/c9Z4kCgUTBrGdE
 DXgEOrNNpCst6H31vJhbITx+mPnK5LklAFVTG10zDgYenfj/xYGgAQJkY Q==;
X-CSE-ConnectionGUID: Xm6YzqWtQ06o3E2X0LkPeg==
X-CSE-MsgGUID: OqLYBDLxQP2x77VuGqAreg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="46328790"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="46328790"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 06:02:03 -0800
X-CSE-ConnectionGUID: 8iHjMYYhQO6asSywb1S01Q==
X-CSE-MsgGUID: jSFCz/QIQuehxYIyXlwhAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="119831795"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 06:02:03 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 7 Mar 2025 06:02:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 7 Mar 2025 06:02:02 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Mar 2025 06:02:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RAD185b541Vc2MoUStPdRBNoYbaBVD1iymZQuSi05gCRnEuLnEqW7TEsafdNPgmoGUjZtYe5t73BohL+6vgKIlavIwH9Y1LdH4H5fGiFi4D2YL8KHAcoe/vqnxQPLr5/2fZs3gdiy0TW9KzySnx2IANSGf1llZFiV+VkZYyEXVhjexEGjbFpLxS+SDi5tvQWvH3prR5KSS01f8p/z7nB7hdB5B9NgA5M9XQvzfWCGwO/XrcBTyIdhEobPRcexSMQgvQKq8YNEC0Ji2TZTj3iDCqhjpeAYKSKIW4sMkV1Uya1/qm9HERRmgcKfZvbNJeDfUBPY3FNbQz73XK1JAyoVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aeR4K354nmC+IZwEcvbxHZA15y4CW3TOyH0e7qJN0Q8=;
 b=EGUeCAzWZoKPQKchTf1qizAt7GnvnhLcoAdvep+n4bKi/qyzOL3W6nartCD01SV/JCO0Busg8kHfPcHnm7od/NnzLV0GI53qvbA9wTeWaK1QefkNL1YXzTbhfOUA1AQrbp2hhYWzv7O1qcWhw4jscuwAus5S5uFXmxFYeJUll7rCmlcj4kPPTq5CZe+1XzoVDsGL+YGa5idRnQJb5FO9WVlJMaGybJIyQsz5vNK2xJryoK6c5WQniuLCqmvAy+65y9oKtvu1ecFO+41lK8TC2eavA9qsNYzq334h4SWj0pn14/hA5caxV9tlOU61uc49CYwzJ6ccrUCdjLWNrYr0ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA0PR11MB4717.namprd11.prod.outlook.com (2603:10b6:806:9f::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8511.23; Fri, 7 Mar 2025 14:01:46 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8511.019; Fri, 7 Mar 2025
 14:01:46 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v5 6/8] drm/i915/lobf: Check for sink error and disable
 LOBF
Thread-Topic: [PATCH v5 6/8] drm/i915/lobf: Check for sink error and disable
 LOBF
Thread-Index: AQHbjBpaerpORdJCAkSYEuYdIbao5rNnurUA
Date: Fri, 7 Mar 2025 14:01:45 +0000
Message-ID: <64a094b049a992a2f157a60b5c027fcae1668019.camel@intel.com>
References: <20250303083522.845224-1-animesh.manna@intel.com>
 <20250303083522.845224-7-animesh.manna@intel.com>
In-Reply-To: <20250303083522.845224-7-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA0PR11MB4717:EE_
x-ms-office365-filtering-correlation-id: 74c5a641-6c45-4894-898d-08dd5d8098f8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ZUwvbUQwUlViTTBBNk5uQWwvZHJhMVNzUmVrWWg1dVF4dmJqWVpoRXdrclds?=
 =?utf-8?B?R09taVRoSFlCNktaWTNJczFNZkNxS2ZBMGNCenRpd096WkRtdVpBNGJjeHpp?=
 =?utf-8?B?Vit2d1BoSy85ZlJUSFN2YnF5MkUvYk1nWkJEcHF1RG1UZHU5WjRLYWRNdzN0?=
 =?utf-8?B?K1VnSFdJenBwK214bXdZNUNpUk5mTzZJMXg3a3ZLU1RydXcyZmcyTml4RkhK?=
 =?utf-8?B?SXlVSWFGT3c1NCt6MHB6VGg3YWJWcXRxZ1BzMUl4OFRCY3VhQTBIUUFDSzZl?=
 =?utf-8?B?M0IrK2xiRTFIdGs3R1V6Ty82OFVxbzNpR2N6YU9mbDBCeDc1ZER3ZXQrUmF0?=
 =?utf-8?B?MEJMbG9rNGg4V2JNWkQzN1hIMjBPNU03OVRYYVhmTEhTNEtmWjkyNlAyR1pG?=
 =?utf-8?B?Z3JadlVabFQ2TkE3Z2RzUDRDZ1oxTXNQWTRwcGltd2k1QlBoeHR4OXhEdUZa?=
 =?utf-8?B?Vldsdi92dlFsNzBidERVcUJCelRKZHZPcjFtYnNDYnBFVjRQVjBRTUZ3ZjQv?=
 =?utf-8?B?eTdMWHVDVUdTVVg2WUJET2ozWjhIYm1Yc21DVDRpa0ZGTC9rYlpNc0hHb2NP?=
 =?utf-8?B?TkJZREZpZmpUQUNkekc2Y20wcmNnZUZLRDUzTndJc0cyUFJEZTVCRXVoSWoy?=
 =?utf-8?B?T2hSWVRkRFFJRVVNUW1KbXdIbWZUN21FbWJkbUdWTW5sRXRNcHppVUlqL0VR?=
 =?utf-8?B?MDA3a0p6SzVhOE9EcFB0eVI0WmdHZFA3MUk3ZFJkeWR6clc0cHRNd2NzUito?=
 =?utf-8?B?S05KREVocjY5VkVZdSthK3dMUDJWLyt2cjZlVlErOGc3UjRRc0thVGVuSGJI?=
 =?utf-8?B?US9oOFdHMlZwbHoxNFRUUUVtckRtbXZuSmFqdVA1T2VENC9OS1h4SWtWK1Fi?=
 =?utf-8?B?MEZjVVNPdVltK0hReFFNQjZwZFdhdUhtampXWWRqejVEZUhINkRvZEdRSFcx?=
 =?utf-8?B?MVJwbXlSN2xKaktBWFFMRit2QkhKSVpldDhEVXNSVytMcDRCL1VUWmtaY1J0?=
 =?utf-8?B?Q1lFWHdiZVN6bGthNC9YdmlzZThnTUhDSnE2dnNjU1I3dnhhRUVxMUpzaGE1?=
 =?utf-8?B?eUlXRWErRnh5RmtlenFOR2l1QjZMUS9ldU4rM2lrK1M4OHhBa3I1eFJFTW9X?=
 =?utf-8?B?eFFiZFZGamtnek1ldUlIZU8vQUtzMEdzeUdHeWZ2UkJPb1JCc1JxSHoxMGlD?=
 =?utf-8?B?M2NuMVpXVForV29paU82UTFaMzNNZzUwZVZNcCtPOGlPOE9YSHd5dVlWWWdl?=
 =?utf-8?B?Zm4wbS9OWDIzYWw1V0dFbDJQRUowazlFU2h6Wmc2aEJBR1Q5UG1pSU9najVB?=
 =?utf-8?B?aDlIbVRuZEJ1a09MbCt6NktYWUNROUhCcnBKRTdHRzl0bHNpRHU0WnZNaFpk?=
 =?utf-8?B?aHNRM3FOOG5ESFNqTm4zUXZpMjZkZUNTVUNqRWRnUGVvbUY2WGpNV0lDTzFn?=
 =?utf-8?B?UnZWbysrT0pFV0RjVTVyUkZ0T0lVUGpjNzg1UFdtakZKRmNSblpvWU1sS1Bi?=
 =?utf-8?B?OVBvU3dSQnZxdm5QcDkwU3NiY29XOUZEekh0b2lybTJ6eEhQZm5mWm16akxW?=
 =?utf-8?B?SmZpR2JDZ0NFZTVLMkZHQTFaM1o1RzZvSWlBemZERVZPWGc4eWJoKzJGaHM0?=
 =?utf-8?B?NHYyODFFMjRLQjZNUlFZODhtS1V5NVpoR0NlZFFuNm9oN2w5b3ozTlBLa2Zi?=
 =?utf-8?B?bWF6aWhFZ2JneXhQZ0Q1T1NZUjFSSWJ4QWt3cHl2Tis5aDMxZjNrSU9KeVNM?=
 =?utf-8?B?YnFyL0xhRDlTNnBNUTEyY2lyb285MVpzNXNxbGZoeGVFblBISEtyazMwOGZR?=
 =?utf-8?B?alh0RmRMYnR1NmMzaEpveSs0YUV2dy9Kc1MvQ25uVUN4Wml1WFJwdXdDY29O?=
 =?utf-8?B?SnAvOGNQeVVJZW1xVFd2K1d4bzB6OEc4UTI0NTdmRE9tUmxPWVNrWTVJUUJK?=
 =?utf-8?Q?NvM7n4qH9iu6YPEN/16zjVvR1wFs6T6p?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TGxrelZ1dElWL2ZkT3g2aWFhTVlubGQ5cHN1NjFyWTBNQzdsMjBFb1RRb0l4?=
 =?utf-8?B?RVhFaXF3Z2RkZk8wRVVSYXFFNXE1RzYzeFc2NjE4UXNDd3dqcmM3Mjh3SFV4?=
 =?utf-8?B?VzZ0M1BFZnB3L1BYKzd3cXk1ZXZ1Rm50Y08zVnVBVEVSajZsRlh0T1lnRDVS?=
 =?utf-8?B?K3pjWERWeFQ2RzFIZ0lIZWw2N20yeUpHeEVsZDVYckNRKzNNYklVVHVBSkVz?=
 =?utf-8?B?allMTldUVTVkU3lXSzdqR3hsRDlRVmxtdUJ3Y3pPV2I1enhla05OUVI2QzJD?=
 =?utf-8?B?K0JHN3daOGdaS0JVbGYrZ0NCNFdiOStZVmxsQTJDWnlZaERBS0pCQlU5Z1lh?=
 =?utf-8?B?dEJJZE54VVlYZ1JxdHZEMFBnQVhic0V1SytXd09XRmhVdVM0VjZmQit5Q1RE?=
 =?utf-8?B?aDUwL1E0aFQreGo3emdMYVZ3V2pmY3p4S3YyUkFOc1NORk1jV2xDZkoxc0Vw?=
 =?utf-8?B?ODFFRmFkNmlTcndvdWkwemp1SUFTN3BuZmlJcFlPYWNoSTR0U3Y1YlVxbGxL?=
 =?utf-8?B?TmY3cHkzTGtLVUhOanhYWU5iVis2VDFKMVhYREJ6NnBmSTJROUwzcE9aa254?=
 =?utf-8?B?cnhuTmY2ZGRLQk16QlhMVE5ETWlSaUhGYUtZYVhONjZIN3BVMUVteWphRVFs?=
 =?utf-8?B?a0tPWTl6K1BjRkg4Qm5RcWpKSlZKNmEyaGlid3dCNG94cjY1QkVWcW9WTkNY?=
 =?utf-8?B?d2I3ajR2WTF3M3FVQ1dndUZMWXp3SjJIeW5lRElITGVaV3U1aDRYOWw1SkxM?=
 =?utf-8?B?WHc1WUgrcWNGS0pqaUVVOVZsYUtlSDM2cWh1TVhKZjMxaW9sQ3c4d3BtVW5m?=
 =?utf-8?B?bEtyY3VSQXpIVnN3azRFTlNqaFo3akN6cDhwdnpXam5vS1U1K2tWM3FjYzdT?=
 =?utf-8?B?ekVvQ1dDOExCVnF6RUcvNmlxNmZpM2RtTGJCNnQvNkIxSFMvN001OTIrdDhM?=
 =?utf-8?B?RHJKNUcwMmgrbkFjcXB1czlFbTBHbXMzTU50aHF2VzdRaE03ZzFlL0pwYkVY?=
 =?utf-8?B?QmpOOElmeWVkcGtwNjhhaTJGeS9TV1NHSWdjTCs0cXNDWU1lRDErdUhlNzhR?=
 =?utf-8?B?RDJTODdsaFVJRFlwVmN5Z2k1blZ6RFNZaCs2RmU4REMwakN4eG91UG9LRTg0?=
 =?utf-8?B?U2cvVGVuRDZiVVlSeUZDbFcwb0lxRHVxME5uRlYxYndVaDRhUWZjcXM3Mlk2?=
 =?utf-8?B?TkwzQ2JhcFY0K0UwY2E1eUFITjA0bnJLUWpPWWVqL0Uwdm9OTVBWcDVUL09S?=
 =?utf-8?B?ZS8rNG1Oa0N6OWRHekl5MkFSZlM4NEpqNVhpOFpGQ0VZRGV5RkVNUFBVVjM3?=
 =?utf-8?B?ZHNEamtib0JhbzlvV0tnRUJmc1hLb0I2aWVST0w1OUM3Ty9mT3FabEZDMXRG?=
 =?utf-8?B?dWxGUjhSeGpUNmszaHg3WU5jcVBFYUF3V3RVMFNmYVNKRDF0UUh4QWlMM0hr?=
 =?utf-8?B?ZDM4NWw1ZFdPcVRJWCtyL2Rpcis2aXpMMnovcUNiemVaU2I4VUNHRlpBb3NH?=
 =?utf-8?B?TTJOb0RMMm5sL3F1Y25XQW1EVGl1NlIyVFBQRWV3RmxmbGFyZ21JaEQ3cTlL?=
 =?utf-8?B?VXd1VTJCdDBPUFc0RHNEMkxuTE1FSytlWmhYbHQwalpKYlhyZGtlaHFRNXJw?=
 =?utf-8?B?NWh5ZFFZRTVkcjd2YjNDaHVybXFWTWc5NlVzbGM2c1ROYWRxZlJaRExINjlZ?=
 =?utf-8?B?YnlpMEVPekswSSs2NHg2czRlMThHb3psZDlsN2k1N3ZTKzRaRCt1d1dFa1VC?=
 =?utf-8?B?YVpOQk1ZSVYzdk43UGV1aUN4NnJJemxHYnowcTVlRGRpZmdnK2ZxOEdyL3da?=
 =?utf-8?B?R3ZuZWRSZGdrZ1krK21wWU1mSUtXbFVFY2NYWkRLUGhkc1MrTzlmVmYvb29K?=
 =?utf-8?B?a2dwaldWU25yTU5TeGh0RTMrYXVhcEJwc1oySGJqQ1U4MmtrcTI3aVVpcUEz?=
 =?utf-8?B?Yk9pRHpWLzNOcFIwZ1F0aVY2eEFnbkdoTUgwN3lxV3Yrd2VGalFLUENKUHBK?=
 =?utf-8?B?RmJGUkRmdjIxeEJwRndZVW5tS3Bld2pGU1BwaVlrelpCSDdaWi91dFNvT2or?=
 =?utf-8?B?UmdBbWNIVC9sSTRrQ2RPZy9zaVQ3RG8zTS9GOTFPN2VYdmRLV2FGMVVYamdU?=
 =?utf-8?B?WVlqYXljUEt3L0RHcUEyZk1DUE1jL1IxZlp0NGV2U3NqaHJWaGFEb29aTFpl?=
 =?utf-8?B?NzhFWmdTN3E2RjFvdlNmYU83Tk1Eb1pkbS9BUGRFbWVWT2JiSWJJc2JoM3NW?=
 =?utf-8?B?QmJKdnZkSWtUQUZBR1NVa2FGTExnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E7509825D88547499B8B6ACD87A29592@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74c5a641-6c45-4894-898d-08dd5d8098f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2025 14:01:45.9538 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7E3dyy85C+I3iN0HrlUUColEaydBDqC3Y8rQYxUCczlZS0VF7FeGfSa1+Tv/JjTOSNR9KPztFcpVNjBdL2En+6V+ODebkprd4w4QR3eR2iI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4717
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

T24gTW9uLCAyMDI1LTAzLTAzIGF0IDE0OjA1ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBEaXNhYmxlIExPQkYvQUxQTSBmb3IgYW55IGVycm9uZW91cyBjb25kaXRpb24gZnJvbSBzaW5r
IHNpZGUuDQo+IA0KPiB2MTogSW5pdGlhbCB2ZXJzaW9uLg0KPiB2MjogQWRkIGNlbnRyYWxpemVk
IGFscG0gZXJyb3IgaGFuZGxpbmcuIFtKb3VuaV0NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFuaW1l
c2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYyB8IDI1DQo+ICsrKysrKysrKysrKysrKysr
KysrKysrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmggfMKg
IDEgKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqAgfMKg
IDMgKysrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgIHwg
MTUgKystLS0tLS0tLS0tLS0NCj4gwqA0IGZpbGVzIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKyks
IDEzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hbHBtLmMNCj4gaW5kZXggMjQ1MzY0ZDAzMWMxLi5jM2QxM2Q5M2M3NzkgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IEBAIC01MTIsMyAr
NTEyLDI4IEBAIHZvaWQgaW50ZWxfYWxwbV9kaXNhYmxlKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50
ZWxfZHApDQo+IMKgCQnCoMKgwqDCoCBQT1JUX0FMUE1fQ1RMKGNwdV90cmFuc2NvZGVyKSwNCj4g
wqAJCcKgwqDCoMKgIFBPUlRfQUxQTV9DVExfQUxQTV9BVVhfTEVTU19FTkFCTEUsIDApOw0KPiDC
oH0NCj4gKw0KPiArYm9vbCBpbnRlbF9hbHBtX2dldF9lcnJvcihzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50
ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ICsJc3RydWN0IGRybV9kcF9hdXggKmF1eCA9ICZpbnRl
bF9kcC0+YXV4Ow0KPiArCXU4IHZhbDsNCj4gKwlpbnQgcjsNCj4gKw0KPiArCXIgPSBkcm1fZHBf
ZHBjZF9yZWFkYihhdXgsIERQX1JFQ0VJVkVSX0FMUE1fU1RBVFVTLCAmdmFsKTsNCj4gKwlpZiAo
ciAhPSAxKSB7DQo+ICsJCWRybV9lcnIoZGlzcGxheS0+ZHJtLCAiRXJyb3IgcmVhZGluZyBBTFBN
DQo+IHN0YXR1c1xuIik7DQo+ICsJCXJldHVybiB0cnVlOw0KPiArCX0NCj4gKw0KPiArCWlmICh2
YWwgJiBEUF9BTFBNX0xPQ0tfVElNRU9VVF9FUlJPUikgew0KPiArCQlkcm1fZGJnX2ttcyhkaXNw
bGF5LT5kcm0sDQo+ICsJCQnCoMKgwqAgIkFMUE0gbG9jayB0aW1lb3V0IGVycm9yLCBkaXNhYmxp
bmcNCj4gQUxQTVxuIik7DQoNCkkgdGhpbmsgeW91IHNob3VsZCByZW1vdmUgIiwgZGlzYWJsaW5n
IEFMUE0iIGZyb20gaGVyZS4gWW91IGNvdWxkIGFkZA0KaXQgaW50byBpbnRlbF9hbHBtX2Rpc2Fi
bGUuIEFsc28gaGF2aW5nIGRybV9kYmcgYWJvdXQgZW5hYmxpbmcgTE9CRiBpbg0KbG5sX2FscG1f
Y29uZmlndXJlIHdvdWxkIG1ha2Ugc2Vuc2UuDQoNCj4gKw0KPiArCQkvKiBDbGVhcmluZyBlcnJv
ciAqLw0KPiArCQlkcm1fZHBfZHBjZF93cml0ZWIoYXV4LCBEUF9SRUNFSVZFUl9BTFBNX1NUQVRV
UywNCj4gdmFsKTsNCj4gKwkJcmV0dXJuIHRydWU7DQo+ICsJfQ0KPiArDQo+ICsJcmV0dXJuIGZh
bHNlOw0KPiArfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hbHBtLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0u
aA0KPiBpbmRleCBjNmVmZDI1YzIwNjIuLjIyNDY5ZmQ0Y2JhNSAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4gQEAgLTMwLDQgKzMwLDUgQEAgdm9p
ZCBpbnRlbF9hbHBtX2xvYmZfZGVidWdmc19hZGQoc3RydWN0DQo+IGludGVsX2Nvbm5lY3RvciAq
Y29ubmVjdG9yKTsNCj4gwqBib29sIGludGVsX2FscG1fYXV4X3dha2Vfc3VwcG9ydGVkKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiDCoGJvb2wgaW50ZWxfYWxwbV9hdXhfbGVzc193YWtl
X3N1cHBvcnRlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gwqB2b2lkIGludGVsX2Fs
cG1fZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gK2Jvb2wgaW50ZWxfYWxw
bV9nZXRfZXJyb3Ioc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+IMKgI2VuZGlmDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggNGQwMTY2ZjE3
MzU3Li4zYWEzYzRhYjk3ZDEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMNCj4gQEAgLTUzNTksNiArNTM1OSw5IEBAIGludGVsX2RwX3Nob3J0X3B1bHNlKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+IMKgDQo+IMKgCWludGVsX3Bzcl9zaG9ydF9wdWxz
ZShpbnRlbF9kcCk7DQo+IMKgDQo+ICsJaWYgKGludGVsX2FscG1fZ2V0X2Vycm9yKGludGVsX2Rw
KSkNCj4gKwkJaW50ZWxfYWxwbV9kaXNhYmxlKGludGVsX2RwKTsNCj4gKw0KPiDCoAlpZiAoaW50
ZWxfZHBfdGVzdF9zaG9ydF9wdWxzZShpbnRlbF9kcCkpDQo+IMKgCQlyZXByb2JlX25lZWRlZCA9
IHRydWU7DQo+IMKgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiBpbmRleCAxZDIwMmYyZWIzNTYuLmZkZTk0NjNkNWVjOSAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0zNDA2LDI4ICszNDA2LDE3IEBA
IHN0YXRpYyBpbnQNCj4gcHNyX2dldF9zdGF0dXNfYW5kX2Vycm9yX3N0YXR1cyhzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwLA0KPiDCoHN0YXRpYyB2b2lkIHBzcl9hbHBtX2NoZWNrKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHApDQo+IMKgew0KPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiAtCXN0cnVjdCBkcm1fZHBfYXV4
ICphdXggPSAmaW50ZWxfZHAtPmF1eDsNCj4gwqAJc3RydWN0IGludGVsX3BzciAqcHNyID0gJmlu
dGVsX2RwLT5wc3I7DQo+IC0JdTggdmFsOw0KPiAtCWludCByOw0KPiDCoA0KPiDCoAlpZiAoIXBz
ci0+c2VsX3VwZGF0ZV9lbmFibGVkKQ0KPiDCoAkJcmV0dXJuOw0KPiDCoA0KPiAtCXIgPSBkcm1f
ZHBfZHBjZF9yZWFkYihhdXgsIERQX1JFQ0VJVkVSX0FMUE1fU1RBVFVTLCAmdmFsKTsNCj4gLQlp
ZiAociAhPSAxKSB7DQo+IC0JCWRybV9lcnIoZGlzcGxheS0+ZHJtLCAiRXJyb3IgcmVhZGluZyBB
TFBNDQo+IHN0YXR1c1xuIik7DQo+IC0JCXJldHVybjsNCj4gLQl9DQo+IC0NCj4gLQlpZiAodmFs
ICYgRFBfQUxQTV9MT0NLX1RJTUVPVVRfRVJST1IpIHsNCj4gKwlpZiAoaW50ZWxfYWxwbV9nZXRf
ZXJyb3IoaW50ZWxfZHApKSB7DQo+IMKgCQlpbnRlbF9wc3JfZGlzYWJsZV9sb2NrZWQoaW50ZWxf
ZHApOw0KPiDCoAkJcHNyLT5zaW5rX25vdF9yZWxpYWJsZSA9IHRydWU7DQo+ICsJCWludGVsX2Fs
cG1fZGlzYWJsZShpbnRlbF9kcCk7DQo+IMKgCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+
IMKgCQkJwqDCoMKgICJBTFBNIGxvY2sgdGltZW91dCBlcnJvciwgZGlzYWJsaW5nDQo+IFBTUlxu
Iik7DQoNCllvdSBjYW4gcmVtb3ZlIHRoaXMgcHJpbnRvdXQgb3IgY2hhbmdlIGl0IGFzICJBTFBN
IGVycm9yLCBkaXNhYmxpbmcNClBTUiIuIEFMUE0gbG9jayB0aW1lb3V0IGlzIGFscmVhZHkgZHVt
cGVkIG91dCBieSBpbnRlbF9hbHBtX2dldF9lcnJvcg0KYW5kIGludGVsX3Bzcl9kaXNhYmxlX2xv
Y2tlZCBkdW1wcyBEaXNhYmxpbmcgUFNSLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQogDQo+
IC0NCj4gLQkJLyogQ2xlYXJpbmcgZXJyb3IgKi8NCj4gLQkJZHJtX2RwX2RwY2Rfd3JpdGViKGF1
eCwgRFBfUkVDRUlWRVJfQUxQTV9TVEFUVVMsDQo+IHZhbCk7DQo+IMKgCX0NCj4gwqB9DQo+IMKg
DQoNCg==
