Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8020199682C
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 13:15:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E45510E295;
	Wed,  9 Oct 2024 11:15:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G5tiJNo3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3498010E295;
 Wed,  9 Oct 2024 11:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728472523; x=1760008523;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fNEf4/bOlhxBvT04rm6pxzTFPXb/Pagix2aNFQ0R/Gk=;
 b=G5tiJNo36jb1YvszYlIAat7oEdgmtdGprhuIVnw9laM7Ns+WPhqJ067k
 R2l9m57izIB1Q2o7KcmXPjuFk4gilmaltlSgEAas6IfyQrJIcHVGCSiHy
 ThUblKfXosz5+qHndjm8ZgYnQDlay+m5/JqaU5yZvqgSWXNJuNif6etUC
 yKvffW0C5OJHK13Z+B4Onb36N2eWJwx5JNDQxYR6aFAde7fBcRMm3Jhh1
 cZFR5IdQd+Dhkw8DquIUHhcEmwDv2uWYJSDOm2y3JVnCjFtNfiMQG4cBU
 D62/kyX9+N/yAzzBr9v9jt3ghqZjN/5z6cfe57yDEbW8cnL/nRXqDW4/Q w==;
X-CSE-ConnectionGUID: NZCst/5JQ7OsUGXfA6MwcQ==
X-CSE-MsgGUID: /yJVH471ROir+MFCPp0rwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27644647"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27644647"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 04:15:23 -0700
X-CSE-ConnectionGUID: KGFfnOx4Q+CLDrj+mXI8AQ==
X-CSE-MsgGUID: 10J70DJlRGetj3SGCPse1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="80201018"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 04:15:23 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 04:15:22 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 04:15:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 04:15:22 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 04:15:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PFD93UVa1Dar3ygmFtsU+ONirc99D5frZKKRpAW8cVB2DXPC1WktTB3ljSWRrT3afXl+7odDT1RDQWN2QKxSrqfcVocLzl/2OyeamlKUsAM0HV2JBL3kfarzkwpiNJSIi7PQ5u3AgRDPg7bRoS8THiS4NQRGTaXlfaA9hgjGW9NGNVHl9MNU0f0JMpA1oqvTk+A27tdn+1WruU+pcTuhBZB6uQCMFH7GWtihv+cKoi7/jhrqZtFyyh9JLXM3FRwFSZNjjnQQGoI/AyWft4ASxYWZA4Ln4WHEbZ2EHZv9sMFkcge7TxN7uMGsG1ZfDDyCWsJ22KIXjXnMjiP9KIsItw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AfF6ArkhaXojT9MZw6kCdtoChBxnyI+j5tZzRjy05gs=;
 b=lbGAvf37y8m7wASbde0z3KbRmEkBNDC0P0aM6zxMbOeYY0qoOtcF9GVLyZ8Iryv1foFHtv4wTToX33hwdufzm7yQUIF+zDa/b/PP32Mdzt4HySau77z2888Zpj8+8fG6Htjo6pj0CRJDcTpvhwItTP+e1dhsl6EyPa7D2QiHPero3erAectJA9kDKRrtwNHsHIcAuehT6SBlbgBHDi+u3QRtqsGWyHEpUp1YNFXmBaRl+qeCqMldZX1P0z4a0Qx7/enTsrqqJncyz3Hh8/K4nbXfn8Doz9SgM4aBi84PrmICS3PFqL4uDe9JGz5BhioEidLaBY7AxE3X0GzGn5LKlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB6940.namprd11.prod.outlook.com (2603:10b6:930:58::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Wed, 9 Oct
 2024 11:15:19 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8048.013; Wed, 9 Oct 2024
 11:15:19 +0000
Message-ID: <7b1cbe2d-bdd7-4ac7-812a-e5f31bba8dea@intel.com>
Date: Wed, 9 Oct 2024 16:45:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp_mst: Fix dsc mst bw overhead calculation
To: <imre.deak@intel.com>, Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
References: <20241009054050.1796088-1-suraj.kandpal@intel.com>
 <ZwZj-1Y3EKjy2iXP@ideak-desk.fi.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZwZj-1Y3EKjy2iXP@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0037.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB6940:EE_
X-MS-Office365-Filtering-Correlation-Id: dbee9772-aa9e-4224-beee-08dce853a8ed
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UTVvVU50NUd0alI5S1dPeVcrMGdhN09SdVAzeVRGMFBnSldPcWRqYUVJNHBh?=
 =?utf-8?B?OGJQajdWVEl4eGd1cEFKaklKYWVQQjJxRGdaYzRqbnM2TlN6dnNzanBJTFk1?=
 =?utf-8?B?UGN4czBiRWlvMmQyQkh3MFNhWVB0OU9Ub0NPVEF4WGtjbjlWanBKYm1xbXdY?=
 =?utf-8?B?YzRmdG5HWHVzSUdsM1Bob2xwdE5DT01TYVl6cXlvZktiMlFDKzlKWFFlRlJB?=
 =?utf-8?B?cDkrazBmVHFiM2RZbkUwcWkyMFA4NENtMFl5VU5FNmJXTHBNekhqOTI3cW92?=
 =?utf-8?B?VlZDeUhzcDgzbWwxekM2VXFLS3VIVkl6dHVKbVdveUd6YWtXUzdxVys2a2lE?=
 =?utf-8?B?V3N0YmZMV2hKdjJVR3R0aCtTWlpLODFTSVBNTmtqK2V6VGI3bEgzSXVITHhj?=
 =?utf-8?B?dnhHUEZBelE3RHZ1R3NzTENOQ2E2dWN6eERQZjRkMjk4am9BTDVKTXZiZzVj?=
 =?utf-8?B?dGJBWUVOeHdKaSt1b2pEbjNRUnJsSExydjFLdWx0RzFCNWs2dG1GNVdSa1dY?=
 =?utf-8?B?c1hpdGJocm56cWsvOGVDSkVnNUxIZGgvaUttN3hZRHJIVXBmOHVEMWNldFJr?=
 =?utf-8?B?SDFRTlVhZEFCbGMwSmVQZWp6aDI3aTJKc1Z2RXJkRG1RUXdQWElOeEVoTWxz?=
 =?utf-8?B?WkVyQWNBVnJuaUxPbTcvVTFKZXJ2SzVRaE5OSmdkcEFJc21uQ2pyNnozOHM5?=
 =?utf-8?B?dXM1dWJzaXNrT3FuanBEdWkwdURsTUpYWnMwTUZwRERFZ2JyQitMbGIrbXV2?=
 =?utf-8?B?Z0lKdkRONEdLN2YxZ0k4RjR1N0ExQ3gvY2VnVVJrdDgyTUlpbzFYTzZYTFRB?=
 =?utf-8?B?ZWtEVjV2dnFJYXBKc0I2d0dwMTlvSmVnRmpOUWNKUTNKODUrb1ZManA0SnJI?=
 =?utf-8?B?OWR5dGRiSGFQczRxb1lqMXh5cklUcTZVdzRrL2gyTXNPUEpXZVd3dlN4bnp5?=
 =?utf-8?B?aGJOTkhyU2JwVG1GMUYvS21YRGtqL24rRUJUS0NJUFZYWmMwN3B5Mzc1endq?=
 =?utf-8?B?N0ZyQ2FiU0UvU1VCRk9Dbk9aTHRqKzZZZHZubUlJTS9CaHVmbEtnVEZmdHdl?=
 =?utf-8?B?NzArZ3pSc21Zb0VNdVZMaFl1QXNacFhqMmRnY2lrSHovNmRhbDVIcUVJOGVB?=
 =?utf-8?B?dDdSYkx6QjB4cnFUN285ZmhNdXY1WENvcmJLZ3lnMWp6QXhqNkE5MVpyYVho?=
 =?utf-8?B?NFpFUnNWNExFSHVlbWFXMFB2UGt4UFhUalFib3REcDcrMFU1RFJpUXFVWEJ6?=
 =?utf-8?B?ajRtQUc2K3hFNWxHNVlrRmdwTHgvZUU2bHJ0YkFiTVR1dVplRGRld0dFRXNw?=
 =?utf-8?B?andSWTFBeWt1Y3NCR3NXV2Z6ZWRQM3N4bDVnQTduRUpnVC9Ccm1pK0lnQ3VH?=
 =?utf-8?B?UEVlOXFHVk8xNVVDcE9nZkhyRXJiUmQ5VTB1Nms1UVl6MXBWU0Vad3hCVTZG?=
 =?utf-8?B?cysramhiby9NSksyVFJJV0JFVlhVYmxxWE40ZkcvSUJSeFVQemZGc3dnaE1C?=
 =?utf-8?B?TVAvOWVYYXhQL2lqSTlLUUtSSnZxd1lOMllGY2hWU0t3MC9NV2pheFI2enM0?=
 =?utf-8?B?cGNSR0NIVDRkaGtXcGlVcmd2ZVBEYXlCNjJ1REVxakw0em1FcTBySzA2WGNJ?=
 =?utf-8?B?NWxCZG9hdHRBQkpuR0V3b0hoem4rMXF4SFdiVUFmeVd1cEd1WFpWaThUL0s3?=
 =?utf-8?B?ZFh2OFR1aG1kVS9vRS83VHI5ZW1iZTRXK1dZODhBK3o5N0dYdWpkSVRBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkRIc2dDYlN3NXM0K2ppUmdjVGNVZ2s4WXcxN2hWbnUzbmR2QmxGTkU3TEZq?=
 =?utf-8?B?WlZwNnFBQk1PTTQzaWFxWUM5Vmo2dkM2RUJDZTZ5WGt0TDFrcUo3Zi9RRDc3?=
 =?utf-8?B?WEwzUWtDZFNwVU42T0NNNzNJOS9nb0w1ZUw0aERJajV2NXBNcEJiQytNWDBE?=
 =?utf-8?B?WDZiS05wU293SHNIMCs4ditZLzFWVnp4eWx4SU5VcDJxZ1UwbTFaZCtJRkxQ?=
 =?utf-8?B?aDk1amhLWTRDL0RLbmNkeEZiTEp2aG5NYlMrZ09xWkc1ZGRlZDdBMFpFSmph?=
 =?utf-8?B?RDBRcWVvNmRxeTQzVGtMK2gzQ3k5dlcvNGh6blJYSzQrNlVIb1N4Sm1aTVQz?=
 =?utf-8?B?S3ExejRSODFaRDExZndSQ0I0TlVvZzQ4WXNJSE9LOWtGUEZKdUNkU2NyVDBD?=
 =?utf-8?B?a1VQazU4SFQ2TENncEJ2V0Z5RnpnWVd1VitlRU1OTHJrNFhkSWVLUVhpVnF3?=
 =?utf-8?B?ZmR4VlBJc2VvN1lKT3F0T2dIY3BFdkNSaTBQQlBISFU5bk85ZEtIOXg2eXdi?=
 =?utf-8?B?dUZxVnpMUkF4eUUxWG1lNEZnUm0ySVM4bStmbE05WWZtZk9YTndsTkJJbmhY?=
 =?utf-8?B?RHdIS3NtUE9JbEpKZjB1eHNsRjBaZVgyU1JCMHZ0QlVyaGlUM01IZWp2QStF?=
 =?utf-8?B?cFl3SE5NN1BuT2s3S3dMZmd3RzNiWXYyRjgzWHkxVDJ6SGdCZmdhek01MDRJ?=
 =?utf-8?B?b1ZpbVh2SjdXSnB6c0t4TExIS0E0LzNmQzVZQUZIcGhDd0NrQi90Q2pKYUVC?=
 =?utf-8?B?emVyMmxWbWpucFhDSkREMitzL2FZcWZRVTFnVVRmUzRPVjViaXhTNzhXYTBl?=
 =?utf-8?B?dG55NmZxcmJJckl6dUpjMHhYKzdjaEdLYnJyWERic0FkY3BFbGNGS3pJZTlr?=
 =?utf-8?B?T1JZZlNUdk5SYk02OTBkRDh1S0RZeStHNWxkWHJLemdUWGpDeDJFRGJpcW9u?=
 =?utf-8?B?dTg0UkN2Uzg1SlFIQVNIWFF3dy8rM0RCbzIyUGZuNVdxWit4VGhaenh4NitM?=
 =?utf-8?B?TVFqdUV6VWt4YTlQT1hWQ296N0loNWRzMG05bTdudVlJTlVJNTlTYmp4Ykps?=
 =?utf-8?B?cTgvOGVlUmdYS0hGMlNRQVBINU43UjBPa2NxUHVvSjM5UFgvb1Q3QVlDdTlx?=
 =?utf-8?B?YlJUL1VucjlpMERFMURaQWpGQWNDOE0vRTZYOE1ZOEZVT2RjUmw2UHc1dUN1?=
 =?utf-8?B?a2ZYZEV6Z1hNSERmUFRBbEl0R2d0alBMREREdkFRbjVHOUpoRGx4V01MRjlm?=
 =?utf-8?B?Z1d2T1ViNDZBOHVLZjdKelA4ckR4Vnh4bzBYNWFyWHRjaDVRRHZKU2dKdVRV?=
 =?utf-8?B?Ukp6RkJQYklUMk1nbU5RRER4ckRCdU5Yc2FjckNoMDVXQjZiR29VU2tyeWs2?=
 =?utf-8?B?cVc3aTBhTkpmbmFlK0RvWFJUc25wa1F1WHZQNC9JTnA5UUZua0VXUmowalVo?=
 =?utf-8?B?Z1l5Wm9TUjZZTmJOb2pQUVFwcmlxZW9PUVp1bVoyRExSUzVsemJPRittTjlD?=
 =?utf-8?B?TVJrbVRoa2hVazdPZFpsbSsrUVczeGJ2RTk5S2w1VFFaaGx2YU80TlgzeEdF?=
 =?utf-8?B?K2EwdVhvNyt0Q00zMTJSOG1PLzVyQ0hHYlo0VXRkMlppYzdtKzB6SWh1SXEx?=
 =?utf-8?B?bFMxRE9oU0hLcUZnTkJydmI0MHkxdFczZmxkRjJRQmxEN3VnQ2Fmei9pQSt0?=
 =?utf-8?B?UzkzeGdzRFJVNjFVUjdDOVJVYkZ2ZWdpVTV1WFJ1RXdBbkFINWdRbHFIVmtz?=
 =?utf-8?B?L2lYMXBhak9DZDFwMHlRT3ZtTWNibEZDTzNhbXdWcEUzUVRLL3M3UlpGaDlT?=
 =?utf-8?B?WjVvOVRITXVGU3BCTVJpRlBsTlMxL0NnYmZFY3VDQWVjT2VYUHdiayt1SjVy?=
 =?utf-8?B?Sml3Z3FjbkM5Vkl2cVFBY3Q3MFQzSXhxckk1NXkrei9hMTlFWW5wNkU1Ujhw?=
 =?utf-8?B?VXNMS1Y0VWpDYXZNdTBRd2N5M2hIQUNOcGtmTEM2SDB6dTd0R2tkMHlodEdk?=
 =?utf-8?B?bTVmN2RaRnFwZHl5L0luSEZTM2pVbmpSNWZ5ZEFNOUFkS2Fkb3IydjIwbGFM?=
 =?utf-8?B?SlBmbWhhK1dMTDN1YWxEa3p5QVRJNzdHTG9WRnFlOUxXdzU3UDFDSkVaRUkr?=
 =?utf-8?B?Ykw1dDRHcWdkS0ttTGJpSnlQdzVjTTJqYkY1aG0zV2dKVS9nY1NxOTYvbVlo?=
 =?utf-8?B?REE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dbee9772-aa9e-4224-beee-08dce853a8ed
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2024 11:15:19.7007 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sIyYoa9xE1EV3dBO/WIVVhg8sxQNtHBHckMztfHzzAR4TigkyMOGB7S55rk39pzcxPQUeXs+4LwztE6bOZEOC8Y3cnWIcW8/pbZ46UeE5yo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6940
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


On 10/9/2024 4:37 PM, Imre Deak wrote:
> On Wed, Oct 09, 2024 at 11:10:50AM +0530, Suraj Kandpal wrote:
>> Fix the DSC flag assignment based on the dsc_slice_count returned
>> to avoid divide by zero error.
>>
>> Fixes: 4e0837a8d00a ("drm/i915/dp_mst: Account for FEC and DSC overhead during BW allocation")
>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 7 ++++++-
>>   1 file changed, 6 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index 4765bda154c1..bacd294d6bb6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -105,11 +105,16 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
>>   	if (dsc) {
>>   		int num_joined_pipes = intel_crtc_num_joined_pipes(crtc_state);
>>   
>> -		flags |= DRM_DP_BW_OVERHEAD_DSC;
>>   		dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
>>   							       adjusted_mode->clock,
>>   							       adjusted_mode->hdisplay,
>>   							       num_joined_pipes);
>> +		/*
>> +		 * Try with dsc only if dsc_slice_count has a sane value i.e value is no
>> +		 * 0
>> +		 */
>> +		if (dsc_slice_count)
>> +			flags |= DRM_DP_BW_OVERHEAD_DSC;
> This would enable DSC, but with the wrong BW alloced. We'd need instead:
> https://lore.kernel.org/all/20241009110135.1216498-1-imre.deak@intel.com

Right, I meant something like that, Imre beat me to it :)


>
>>   	}
>>   
>>   	overhead = drm_dp_bw_overhead(crtc_state->lane_count,
>> -- 
>> 2.43.2
>>
