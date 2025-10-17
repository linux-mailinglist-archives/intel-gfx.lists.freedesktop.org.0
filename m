Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B9BBE6842
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 08:02:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1605F10EB11;
	Fri, 17 Oct 2025 06:02:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CheNmc4I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E11310EB10;
 Fri, 17 Oct 2025 06:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760680972; x=1792216972;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qEDjqRbvhMI5neqCUbJT7mKnuZY7fMtn0ShFe894FLo=;
 b=CheNmc4I2wPI8KDDUVp4t9mYjJppxdUht2FNQbaPQnmUN+46pKlgersH
 msUc+X12m7NwNFxQITkZVpwNAX1MoTG9juw/juVVr7JPcdM6gBUlWkd04
 HxRIVWq2qfMSUsxzVlhSvbl//mh28+mx9UIsghoimKuGzbEeoB25A5HWE
 6Lo1yIIKgmKUiBKpZm/OVMfa7lRZkl/uISGQdcwxY1LdvWryyLr4WBtDd
 C/Tp8iYCNmmsC2rNzyL6G7gErrhiICaBG3s1+dRXxo4Y/CcrIvWlpmlhQ
 wJaVShqUoAnbgLb9+cuoVtrcHG501D43zlwni8NFcLNGlMvSuBIzDGvGK w==;
X-CSE-ConnectionGUID: svPMCdGZSJujuPY3W5IPnw==
X-CSE-MsgGUID: cRpHZ5pqSG2JpWLq0cu0bQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="50453401"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="50453401"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 23:02:51 -0700
X-CSE-ConnectionGUID: w7gs06FUS4qOKm27ird/AA==
X-CSE-MsgGUID: njvEVIs0T+mTJ6JhVEROog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="187734969"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 23:02:52 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 23:02:51 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 23:02:51 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.50) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 23:02:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QXfB9CPDmBKJ4zaGnF+xC2tv+KL6Cz+eyHG++UJgovPokeEQV9Q0lW+c+KIQ51FBexFzuVtwQmvI5coEdmkHwbFoW2HMUelO92vZWbhVajNIoYr2Lm2Yz87EJjvfRLblONebc4zRZKulNJRLKxYVgng9GTPmMkBbWfBujP4c73uCZl+yADChGqVQ+xzm6aXNG+uwuxLP9Fm9CL02Ce3bytmPYoW1DHtIoE8EdfWqapwyYsjPLf/zHl636yn1TbPIEH8i+sFZw9cQG2e/Z9/rUkLW36puVr7few6aKr1iFWC23U169R1mSC4u7ypXsI2VOR/Fa8Y2wp/iRbdE8Qx+8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CZqza+Fm67H1fIv5X1POHSFP4pHORDh27GN0vF8MaDA=;
 b=W83zeqVspNq/O0mOneMDXEYMGb/PVlbmuklWNS0uFrLyXGo9C/tSzeSJtKREQvw2vx3JXxIgiG4K1Dwrkww2xpFvvsX+SwrKq8M6m2dCR7lWQl6BMC0aZ8N5rQ3OA5sME3L4w63iUj063vAA0huE8fETjPA3RUSKoYdoikBhOBbkTPNoaaorG9Cd/4T5lopwS9Uj7FW2iQLUVL6P6x+H3IWCr+sOwplGM79rId/e70kUBtA13UI65V55xZWMjlKuVIEEY8ce5i6VOalB7XRdEaILT8MY3wY6grIzX3Js4HCZIshU6mE5HidhO4BZKsfgA0E9Kp/1BH3sG2e/L0VcrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM3PPFF3F4DC26A.namprd11.prod.outlook.com (2603:10b6:f:fc00::f62)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.13; Fri, 17 Oct
 2025 06:02:47 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%7]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 06:02:47 +0000
Message-ID: <9785999f-2d23-4342-a6d7-cf853be33642@intel.com>
Date: Fri, 17 Oct 2025 11:32:38 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/32] drm/i915/xe3p_lpd: Remove gamma,csc bottom color
 checks
To: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, =?UTF-8?Q?Jouni_H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-13-d2d1e26520aa@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-13-d2d1e26520aa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0115.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d0::15) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|DM3PPFF3F4DC26A:EE_
X-MS-Office365-Filtering-Correlation-Id: 752ec4a5-91d3-40d7-22bf-08de0d42cb9b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NVBvSmQzclkwSXNObm9Ua1U1UWtrMmpoSEFmbmZCdElZS2M3Q3hoNlVsVmdh?=
 =?utf-8?B?cUpFRTVRS2o5QmFVNFEyMHpyVUpDSTdSeHR4MFVncUpsNDh4OXhKQW02MTds?=
 =?utf-8?B?Y2hvbWc2SURHZitLSzNEemJRQzdHdkRjbUhHQ1ZvY0p2QmIxMFpnUDdtcmVp?=
 =?utf-8?B?NGEzcVpSVjVuRklrL1ByTjJNV2VUb3VsYnRKRkZMVm9NejFTYmwvUVRrOTRZ?=
 =?utf-8?B?eWFvZVp5bjVUd0FIUjBod2E4cEttUW5BeW0xelRyemxQQ0NTMStYOVpXT1Fz?=
 =?utf-8?B?YXAreHVDNGUrWXVEbXN2OFRkaU5iSmJ3dDFMTFhBVXZ2QjV2QUVxSWNKZkor?=
 =?utf-8?B?TUdic1JxdWx0U3FJckVnUXpOa2xqSm80WGYvQTJNVUh1aDdJdnUxZEF3N0lM?=
 =?utf-8?B?MmZUNVlYeDMwWHEvT0VLZ0E4N0JrZld1Rm1NTFJDRlhBWWVOajkyQ3M0bytT?=
 =?utf-8?B?UmVXUmtIT0ZoRXIwSTl1d2wrWXJFMG41aU5pamVnUFpMYTRXZHo1ZEhTVWxB?=
 =?utf-8?B?S1NwYnRiSWgybHVWL0dVbU5GeWhHbExRL21zTER2YitrNWRTU2J4SWg0Z09v?=
 =?utf-8?B?Y2pCQXowSXJoeFp2eVZtNHFjNEk3Z1B0OGtSdlJWeUlkdjlNOW9IbERlUXdk?=
 =?utf-8?B?akZiUWhLdmRxKzFrTnIvbm10QVFxbzBVQmRxcWlycVk4UGtWSTFtcmFZbTNJ?=
 =?utf-8?B?eHJyTEdZcTRJdVlaUHNJb0ZnbE8rU1dKckNscWI1SFhyTXdua2RXb2k4NW1p?=
 =?utf-8?B?SCtweTdTellMU0krUG5zYk05cldvekZaTUZOWTJLN3Bab1QxWmN5QzBuSXVh?=
 =?utf-8?B?V1ZIRk0ya3JtbnkwTGJUejBRWTQxU2JHK2FnbVVhaHBDbUNISnlaQTk5ME8x?=
 =?utf-8?B?U04zZjdDT3IvNDJMditRQ2FORUtjcEN5YVpzTXZSN200ZVlTT2RuKzZiak1B?=
 =?utf-8?B?TnJXS3VRRlNHaERPMTJtTHFTU1dJTzJQZk8wQ3lyUDVzMTh4R0hjTVFqWElh?=
 =?utf-8?B?UFcyemxta2Z5SUc1cklaTldMR3krckd2OXhWZ29LV3g5QzJDRHZqUGtGaUU0?=
 =?utf-8?B?Z1VvZGNIbmhHOGVCY1FyM2NEVzg4cnAxSklPeDlCVDl3NC81b1JqekN1VTB2?=
 =?utf-8?B?R09rSlBJVDNjZkQ3dEl5bGtycnhDSGRpTlZkRW8xSDNvSUhrZGQxcFR5SE00?=
 =?utf-8?B?d0gwY0NJOWRLeUVPa1dMMzZDNFBYWTBHLzBWRmd3MUM2VS9PNlZCQXZXc296?=
 =?utf-8?B?b1Zpc0dwZUtmeGlpNGs0b3pUTm0xWlpsMlMrYzFpTmFRV0ZiMjRxdmRNMFdW?=
 =?utf-8?B?bFZFLytsWlNvY1hIaDgxWTFGbEJscHJoVE9yTjdleVlSd3NIRjZsTFVBZ2V0?=
 =?utf-8?B?ZWI3T2o3UjIvendHZm9sMkd2cVZIcE1sRHVVak8rM2MrZFZ5dUhZd1dXaXNa?=
 =?utf-8?B?WDQ1VlBFWEJFL1g3eU81c001NFlKZnNaMngvaWUybERNYnhYTG9rRzJOMVdI?=
 =?utf-8?B?VjBEZkl1SHd5aHlmdW8xTkJSWmNDVEl6SXBCYit6OWV6bnI3TGdVVFR4dURC?=
 =?utf-8?B?YklZbEsxWDVaYlZaZnBkUmdnVlNxVzUrdmNSQUdiSDV1dnByTDNISmxWd08z?=
 =?utf-8?B?M3ovVWtFcndteGQveXRta2hvbnJLYWlwbSszRitoaVVpZFo4UUtjWlJ3SEtN?=
 =?utf-8?B?V0xGNHNDOVliNTJYbmtOS3I4ZDY5aHU0anFoQlRYZ2t2K0V3N1BFbXNZTFdY?=
 =?utf-8?B?czdnWWc4d0xzUzZzSmxZL2VPNjdXNWV2OGFHbytXeHAyUm5NTEtQcldlOG9Y?=
 =?utf-8?B?aUdyRUduY0ozZ1NhR1VlVkhjcjQySmR3OENsRGhIMDBCaXhHaHhHR1pDdnB5?=
 =?utf-8?B?MjliS2FQbTdEeFhSbXI5eHBQWjVuK0F3VEhwMUVHY2hTZnQ2RXlKN0tjT3dj?=
 =?utf-8?Q?AyNupZWgDt2iF4v7RWS1cuxGV48K0l4O?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mm92eHJNVUtLUzkycHd0MS9xb1dHZWVkRUtYUUQ3Z2FQdGdtU3p3d21Ca05k?=
 =?utf-8?B?WmVMTHNNVUxub3BvNHBYMmNSc1M3SkwvN3U2YTNDTWUvVXlmZlVXNTFCU29a?=
 =?utf-8?B?VWsrZWxRRWhqRVRJRXZqT0ZwSXJEYU9CQlFqODZkUnBWbTdmL1VwOEFJMTdF?=
 =?utf-8?B?Uk5pRWhMSjYvS2pOWUczMGpxTlBTK2c2Z3dnV2FqbUhIQm15a29acU4zS3o4?=
 =?utf-8?B?dkRwRXlFOFNSU1RaTHZ5MXR3aFlxb25rTDN2ZGt6dG1QV2tyL0VLQ0RTdVRY?=
 =?utf-8?B?NFpxNTRLL0I3UWQxQUlSaFhTeGFRalpCZC9xY1V3MTNjU3l6eTZrY2ducE1l?=
 =?utf-8?B?V3F0UzVhL3EwbGhmbmVHS0pRQTR6VUVTUzNJMERpRkhGTWpscUlURm0yV24y?=
 =?utf-8?B?OUN6Vks4K2NnWXlYbUtURDlDNXk3UExaSzcwQ3IzUURJNy92TzUxUGpwYWVa?=
 =?utf-8?B?MjFMRkMyd0UzaXU1N2loL3F6NHpJV2g2bVV0TDJEU2UxaHNZdy9UN1VZTGZv?=
 =?utf-8?B?UjJPSUpydno2SUk4amN6b1VPeFBWOWxmTk9idHR3NzlpVnh1MC9YK2VnVEhU?=
 =?utf-8?B?TWNWam05aWh6R2JOK3FISDg4QlV0QUVYZ1pzZlRmRmdKUzNUYVFsM0N0NUpt?=
 =?utf-8?B?a090OElJQ3hna2pYSWZDaHJRbUxueTNEblR6bzIwdFVRNzFZNCt6bE5WNzVj?=
 =?utf-8?B?eFJ5SGN3MFl6WGVXVGFuaW94ZnNsSnpoMmhqV0FKMlBWbmxZQlp2VzJzV0RS?=
 =?utf-8?B?QWJlbWxvUUZJN1RKZGpaWEpCeUpLWS91SjIyd053K3FnVTM1SS8wT0dMd2Jy?=
 =?utf-8?B?VzcvVmsyNDJwTHNibFFsRXFSWXRWTVlqTjF3RGNtT0t5RjFVM1B0VnJIdGt0?=
 =?utf-8?B?L0hLcy81ZXYyWHBVRUdRbkNpKzl4NlBxR0habTNQb2thODJSNnpQNVBxN0lG?=
 =?utf-8?B?ZlRzRExBbnVYNldKdmpoNFAyYktlbFVBc2lPTFFidmFudUNTZzhuYWNJT3dh?=
 =?utf-8?B?LzVlbjdFcnZWN3NQYUZyYlFiUUNxQUNBb09hYUdwMjRjZ1VzSkVJUjAweWRR?=
 =?utf-8?B?ODMrU01CaFdBYndQdm1nMlY3RE94MThEb2o5RUR0aHZGN2U1SXNQSHZRSUNw?=
 =?utf-8?B?TStTV2lZNzhCVTEySFNpNnJZdURJcXpaMDZTaUo5MWJCRGJiVG1KbU9sU1o3?=
 =?utf-8?B?MHNFMVRxTGp2dkRIQmZnR2hLNy9uTWt2VWZlSmhab1RjbjB5c2pwS2E3cHdB?=
 =?utf-8?B?N29IOVcvZXpqdDRTNTdUeGJrNEhDMm9hT0luSWlWcHF5V0dlQWtjWCt6Z1lh?=
 =?utf-8?B?Q0F1RlFvbUpobDlvdkhnVVlTUmswejRLV3hmQUsxc2h3WlhQTzlTRmdWVS9O?=
 =?utf-8?B?SUpYZVlNR0JibVpRa21mem8zOEtscTE2Mi9acWMwamdDeGREOVRSUUNPU0xq?=
 =?utf-8?B?MVl1WFNvK3FlR1N2YnJ5bzBWa0dib3dGUEROQ1hpNjd5L1BFM21ZbzFtbnc4?=
 =?utf-8?B?M2dibENIL3dJdWVidEp1RDMvbUlBZnBwZG5Ed1Y0cExLK1VxYXFtZU9WTnIv?=
 =?utf-8?B?UUxLVjl1NHNkZU1DSnJBR1VBczNrczYyYkNVSFdkNHRXeTFqZUZBTzNNaGF1?=
 =?utf-8?B?MnJJV3N2ZjliOEUyRlFYbmxzWWcyQ1NKSGtERkxtRDVvaXpNRXpKZHRpZkc4?=
 =?utf-8?B?aDhhbUo2T0pEUzJobVNFbm5ESEcycTdsMGVscGxHWEFnM3lmeVp4MzRCaEJw?=
 =?utf-8?B?T1RIZysyMTFhMUhpQjBYMDNVa2NNUklxaHlheXpna29SZVR0Q1VPbTZINVVU?=
 =?utf-8?B?NWFhZUhDTTVBNmMvYUdPbHhvS2NacDhRMUl3UDFGdWxmekR0dVBsUFp2U3FR?=
 =?utf-8?B?SDgxNURXMnpqNkJWWjRteTE5RFBpL3dzNW51T2pMMHVldi9JVExkL1ZrYTRD?=
 =?utf-8?B?SzZqbWIyUDhTODYzSFVRRGhmSWFDNk01Vy9MRkNSZTFkTTRYRWZZNWc5bmZz?=
 =?utf-8?B?YlhtcFYveTRqZVpON3Y4b1lJYlpKMitBWVRiSDQ4VEVnczZ3TUYzUjVIU0FM?=
 =?utf-8?B?QUowV0NZb081S21UYXdVOFJIWFQ4ZXJWanZxZjdwQS8vN1FBZ3BPNnhhQy8w?=
 =?utf-8?B?aGQwZzVrQ211ZWhGNU5xOVJVUGMzeGNOL3o4UG9OUTBCbVp4ekl3WDZTZGg5?=
 =?utf-8?Q?rNTuL2l7NbyT6OjLwPTgv18=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 752ec4a5-91d3-40d7-22bf-08de0d42cb9b
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2025 06:02:47.1894 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K/iGBlFsIyqLh61khWVvdK8Gv6CDMI72mmo+I7yPsP1U0MZWumzb+vUImbDAq4i78kcbzWDBd25dvto8d7e2RjKp8TG4NfeLTN56lbB8PVM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFF3F4DC26A
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



On 10/15/2025 8:45 AM, Gustavo Sousa wrote:
> From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> 
> With Xe3p_LPD, the SKL_BOTTOM_COLOR_GAMMA_ENABLE and
> SKL_BOTTOM_COLOR_CSC_ENABLE bits are being removed. Thus, we need not
> set gamma_enable nor csc_enable in crtc_state.
> 
> Note that GAMMA_MODE.POST_CSC_GAMMA_ENABLE and CSC_MODE.ICL_CSC_ENABLE
> are the documented alternatives for the bottom color bits being removed.
> But as these suggested bits are being checked in state checker as part
> of gamma_mode, csc_mode fields and as gamma_enable/csc_enable are not
> being used anywhere else functionally post ICL, we need not set these
> fields in crtc_state.


LGTM
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> 
> Bspec: 69734
> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 13 +++++++------
>   1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 51db70d07fae..9102f3eb0bc4 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1090,18 +1090,19 @@ static void skl_get_config(struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	u32 tmp;
>   
>   	crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
>   	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
>   
> -	tmp = intel_de_read(display, SKL_BOTTOM_COLOR(crtc->pipe));
> +	if (DISPLAY_VER(display) < 35) {
> +		u32 tmp = intel_de_read(display, SKL_BOTTOM_COLOR(crtc->pipe));
>   
> -	if (tmp & SKL_BOTTOM_COLOR_GAMMA_ENABLE)
> -		crtc_state->gamma_enable = true;
> +		if (tmp & SKL_BOTTOM_COLOR_GAMMA_ENABLE)
> +			crtc_state->gamma_enable = true;
>   
> -	if (tmp & SKL_BOTTOM_COLOR_CSC_ENABLE)
> -		crtc_state->csc_enable = true;
> +		if (tmp & SKL_BOTTOM_COLOR_CSC_ENABLE)
> +			crtc_state->csc_enable = true;
> +	}
>   }
>   
>   static void skl_color_commit_arm(struct intel_dsb *dsb,
> 

