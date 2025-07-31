Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E24AFB17197
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 14:55:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FF7210E472;
	Thu, 31 Jul 2025 12:55:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YOv+c+zQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E40BD10E46F;
 Thu, 31 Jul 2025 12:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753966514; x=1785502514;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=u0GrFBL08omMtuLvt0hhZJM/A/c/nvamEun/9bhIf64=;
 b=YOv+c+zQoip+xKeEHzZuRck/2tivpcqlaqrx5qJ4Ajxk1F39e6G4LDIB
 mDxbjOkN73pitqsjHVKXLXZu40/xSr2wrBf3KH5Bsz3v2MoJn4bYij7Pk
 SN9ryCxFCjyfkQ9xbukaQZXRurzqwNg4XcVuq+GsFranHTOLnEejMX0vF
 OSanOKgAD9vuSWv2TBrThJf6pLhJoBIjcggMCzgYoAwGVZnVB2jLsZrL1
 LUkF2W8u2xEFdcVFZ7GBL4zsF5/PX7NWm7T17AtcUr9fNBcAplna0LWuA
 CCbYcLL6ZVw9T9gqceh9grZBvfTsr8uH1vNcmQQyQ0DCVEaEjC7DXy9wz g==;
X-CSE-ConnectionGUID: ozJNasBMT1Gd39thFeguLg==
X-CSE-MsgGUID: jRKOYibzRkSSgN4gjyGhfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="56367366"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="56367366"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 05:55:05 -0700
X-CSE-ConnectionGUID: vTcGE7v7Qha5r2eIcgVTsA==
X-CSE-MsgGUID: QOGcFOpzSHqR5eiIvHFDqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="163702785"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 05:55:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 05:55:05 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 05:55:05 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.61) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 05:55:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ik1KBEcDOy1e4Uak5/Xzf7LM0fReOi9F24dbs4JewM+d7s5gBdaWg/UlSpzzPAjNm1GcIVLGV8WWKPJBf/tjoxylHdJSU9emZJ+v8WTdQHnETs0Mm/bEUZKotQZXwGxRSm7vFFC37I8CdgVpWuVtZD2hCLGJFK3QtelivSbdIjCxkjAjkAkYLz04XPCis8JzjfIwzl1SiVFsu4rruCc2Wi/5fdB1fVB+1j8frZ9G4YxjYPtNGbZlRxWQVWCcZPlhZYR0Ihk7U3/uvqzfICosIt1SHHHC7aq6mZO+obf7ora8yxydGWaGsezOqQ/lW7iwJl++KN00TZq2Ths0n0iDyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oyfbjUvj7vnRYB8j/E7N6zhRspAFbWEDxcHCWGU7+pk=;
 b=oPxjy7emRI40KzOs6/ohGpuKBapyoE109Mth1qmRbHkHy5oE8geapoHYFSmo8a0eXquH1KLovg1qPIH/iaLJBqN56OMUOQ/5jEpYeLh57CcKr9kVOOROBPbDxVToqlvAkYm8FOhsgpmnh1gk+otcCcSqLoKjbS8xhFuC+DHQPbIj9rfy7ZJ3RGNNOHuRdzVVf/0J0LrUfUBrJg314T/SMcoGw2RKOgjwXjC6fpq74JrWGR8qNTyv3dnQhXUxeiUJuqQZutnBZA0pw6IbGKgftFsQAcCPQ1slwi1Nu6XG5tNnbCI/AP38D+f30nSpTNvKMuzRyA+7ROQBWbk+6dqTBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB6326.namprd11.prod.outlook.com (2603:10b6:8:ce::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.21; Thu, 31 Jul
 2025 12:55:02 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8964.023; Thu, 31 Jul 2025
 12:55:01 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <c5d3044114b4464799a2fded18cda7946d95c4f6.1753956266.git.jani.nikula@intel.com>
References: <cover.1753956266.git.jani.nikula@intel.com>
 <c5d3044114b4464799a2fded18cda7946d95c4f6.1753956266.git.jani.nikula@intel.com>
Subject: Re: [PATCH v2 1/7] drm/i915/hdmi: use intel_de_wait_for_set() instead
 of wait_for()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 31 Jul 2025 09:54:57 -0300
Message-ID: <175396649795.2011.8105970648940544474@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4P223CA0001.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::6) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB6326:EE_
X-MS-Office365-Filtering-Correlation-Id: 5702f41e-eaba-4aae-27b2-08ddd0317699
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UVJyQWlxNTdvazdSTFY2M2Uwc2dIM3FhbzN0ZU1ZYUR5ZWFMYVpRK0VTcDVy?=
 =?utf-8?B?SE5nMG9KUE02YjVkek5XWGhYUkdZclRjdzJQS1pIdWJoZXFoRkZ2TU5nbDBq?=
 =?utf-8?B?d2FpVTJHazc4TmNVQkdFYlgyS0V3VkpwSjV0RDYvRHZhdWl5WHhmaXZva2Y5?=
 =?utf-8?B?VGxRQ29mOEc4dWlJYWJiYXZZQm9JaEhCVUlBa1VOdlM0QkZyL2FlcG4xeFpa?=
 =?utf-8?B?Yy9VNTBRMmRyRVZTWU1SWVdKVk13Y2svQnBMeEtyOExUTzg2cnZtUnYzNHFM?=
 =?utf-8?B?c1BlRkFyWjV4a09HUWRRZ2xkOFVrdDdlc1JSNW9ST1pyWGNIZ25MUEZydEc3?=
 =?utf-8?B?RDA0enJqSHN5RzRrU21nYUtud3JJQm1QL1Nodk5MSGF6YjgyZytJcXQ4dWQ2?=
 =?utf-8?B?c0s5ZnlUMmRHSE9CSXp1WTc5UVZoSTM1WE9OaE50eEFtMmhDbUdaZkJrOEE1?=
 =?utf-8?B?UVUxcFpkQzR2L29VUFY0YW4xanRGcjRhWGNxR1g1ekdBVVNwU0hEbW1OenVS?=
 =?utf-8?B?VTEwUGs0alQzVk9vK01ldmZWTWJ3WHFXditoaHpaV3NRR2tMRGhlZGZOSWc5?=
 =?utf-8?B?MmU4RHo1U2gwZE16SDRkZkl4ejdKWml4RFJ6ZjJmaG9iWGtoSzdCQ0xkWWdI?=
 =?utf-8?B?QzZMS0YwNnEzV0l2NmFOend1SmttVEdVa0htbFdkb1grVGtQUncrSW5LSlJm?=
 =?utf-8?B?U0FrQUJTbE9haThDMWpVZDluemg5K2IwcWJQOG9ON1pXNDkySmREd0swNm1h?=
 =?utf-8?B?U1BhRWY5SnpmZDhFVmJUVnc5TGNZZWtEKzBMN1d5eElORmlqdWVZQ3hMSUpL?=
 =?utf-8?B?Sm5JN3FQQm5tY3F4anpFbzdtS0Y0eC9WRCt6ZGdrUURGaGh3aFhNcWUvTWJn?=
 =?utf-8?B?cmpSUjVGTTJMWUpaTlRkck1rZERkbjVTcnhKdnpBZGlzTUNreUhjakhrSjA3?=
 =?utf-8?B?cElLWDhsWVI3NDh5OVp2T3laaGFuNWUrSTl6Ym94ZFhPS09ZZGl1ZEs2ZlpI?=
 =?utf-8?B?YTN3TjNzNEh5ODdMMm9nWkpLQVZZcG9IbERjUlRsc3lqN0NRRk02NG02TmRv?=
 =?utf-8?B?WHIreUtRdUd5dDhkemZvOEJ1am9QdDd3TTZKMGtURHVSbWlic3c3aHdUdWJK?=
 =?utf-8?B?K01OVy90eHFMT0Q5aUUyOVhBbmZtNE9tMFRqNTI0ZW9BQnk5NG04VWtXVzJS?=
 =?utf-8?B?a1BiVjk0ZW5wQzR0bXE5SUk1SWF1WkUzQ0YvUkQxYTAyVjlXa2ZJdlRDVGw3?=
 =?utf-8?B?eGdSZU8rMzNPWkQyQTFrT0kzTEVnMkcrclMwOGpHWnYxMDcwN25QYmkxdXZj?=
 =?utf-8?B?elhLWDZqNkNkVDRzUFlGMVkvZWFxK21OWEo4UEl1Z3oyWHdRRi95d2p2M0tv?=
 =?utf-8?B?U24vNE16TmdDVkZheVpOeXVYQ01OQ210VDY4aWY1Q2lKeG1yLzFnd0krd2pw?=
 =?utf-8?B?V0l2VDZVYmRENVU3Wm1aaFN5a1djNkhkYXNvSDBhUG5Ja3dqWXcyMEEvMCtM?=
 =?utf-8?B?SjZlOFgyTkJmdi9yWmpLSXREVnAwWmxxZ01mSXB6WWVFaWszVS9KSkhSYVQ4?=
 =?utf-8?B?dmdzVDdIMy9XeXl5Um1MSy9VM0J3dlJ5MHZuUXFlT2RSQllkWWdzR1BjZkJ6?=
 =?utf-8?B?TWxsZ0xZeG5uS2EvVDQrYklPb0FCR1NoSWxycnkzZnloeGFKdnhGZmV2Nnd3?=
 =?utf-8?B?S040MEpTSUo5bUFzYlQrMzIvQmw2SnBVSlJNUmNiWmoxUzVDMkhTaDV1YlBI?=
 =?utf-8?B?VnZ3N3Vha1hGbUdTZ2Z4WjdGSDNWVmU2QVRDNjlpWWVPQ2hrTXllRi9MTVA2?=
 =?utf-8?B?SWhZcHhYdk0yYm8wcFk5UTc1L2R6NGNER2NGZGxxRkpaUnp4Z0ZtZXZsTXB6?=
 =?utf-8?B?VWMrdFEwOTV1ZXNIUFVWVHVEWU53eXhWTFdudG9oTG5YZ1JtUmFTU09EVVBv?=
 =?utf-8?Q?vpW1jwd8ZgU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TzhYUllGeW5adlFOcXNHRVJzYTZqYVhwVTg3cHZhVUcxc2NYM3d1d28rSWly?=
 =?utf-8?B?MjR6NTRVSkIzRGFMQXlXdlJFWlpwdlRuSE9ZWDYrY3AvS0tmSUlkc25xa1VS?=
 =?utf-8?B?cHprWVNhMXBPaW1rVGIyc0xCQXBJSEZ1Smt1K09jWXB6Vllza3R6dzdTUDIw?=
 =?utf-8?B?YnBtbzR0UWxGUWJvWkEwLy9Kd3VEQzFDSzlib2d2T09rL2V4R2IxTEw0QTQv?=
 =?utf-8?B?UFNFZXA4Wi9NNXhQS1pMK3ZLaUlURlRRTklZRXg3VWFiVlk2ZnU3NDlZRnVU?=
 =?utf-8?B?MGM1RUl2K0JHTjZEaGVVZ3FCdmRlV0dSQUxHYmdBTmprczQwVlJReUxwTDVS?=
 =?utf-8?B?RGhqTlBTekVlbllZU3FSVy9mZHI0Q0FWbTFzTXc0NE0vaFp5cWFzZy93dDlL?=
 =?utf-8?B?ZDdqSjFCaWtOYWszd1VxRlZpVlJOVEtIQ21Nak1ZbldmaldCb0trTHEvMjZM?=
 =?utf-8?B?NnhNN1Q4YVJKanB2S2tpUERjS1BwL1hKay9rdnRiN09CUmFlZ05vTldCRzhj?=
 =?utf-8?B?dXM0NzFraFg2QVhnOFFkQXBQejlreDNQUGlTMTR0eEdzZng5TUJCbW43NEdD?=
 =?utf-8?B?TWNjZE9MT1BuUjhBTWJDOUdBR1JpbEo3Z3RCZHJGQ25XSnZCTWxYRnpYMlgw?=
 =?utf-8?B?eklNNC9CUWtNZTdKbHhiVWl4d1dHYWloNXF4TXdJMnh6RzlxeEx3Tlc4S1hY?=
 =?utf-8?B?bmVVOGUrcmZWaXF1L2JuYUhmNUQvTjZpSG4wN0QrZ2dhcVVraWVnK0Q0YUFw?=
 =?utf-8?B?S2J1alZuRzk2TU90U08xSlZOa1RvVnZ6RE5VV0YrV2JEdkExc3A2bEJBR1B5?=
 =?utf-8?B?TEM0RHQwcDBnUEliWlNic0tIck5zMjlkcEVqTGZRWVpOVkFMVGEvNG0vSlJ1?=
 =?utf-8?B?WTZpTFlsVGoyY3FsZ1NZT3Z0eHhPYi94NG5CaTZMQVJSQU12SWVDekpDUW9W?=
 =?utf-8?B?dDJhVjFsSDFwcDg4NDhBa0lRc2xLOS93ckY1dnBzOEl3VU9NWDl4VVBrSHFm?=
 =?utf-8?B?VUVNQXBrTzh3Qk9oQ002RXJvRllKbGNybm52cmNrVGowdmhpVUxYWEljNTZJ?=
 =?utf-8?B?RGNlM09LUVNrUmRVcU9mL05LcmZueGJPN2pvak8yY3ZEUXlkV2FrSUJPK3VE?=
 =?utf-8?B?UnZOY1Jwc1JPNC93RTg5NkRJSW5FQWpNclZRVVBOL0JsOVg5ZHJSdUhtenAr?=
 =?utf-8?B?djlVTHhOQXNBako4T1pMSnBNVXh1Z3JPbzVpQzIycXlIWVVybUNVZmFvSzJu?=
 =?utf-8?B?dzBmcVgxOUxQMCtYRWpCWCtrVlc5MGZYOGtGSHpzSDFFUkR1TnNJTUo5Y1F1?=
 =?utf-8?B?cEpTeTQ5RTJFWHY2aUxRa0ErdzRQSEZ2OWw4bXRZVVV6RzlQc3FlZm9rVUVS?=
 =?utf-8?B?Z2xneStPeERMYjErcDJpVzhTNGJucERIbkRBMCtYOVR5bEtxNWovVjBtQnQv?=
 =?utf-8?B?VzRLZnhXSkk1TUpnNjNtNkk0RTk2ck45ZklkcEFaU0p3em9GclEyL3drVjVK?=
 =?utf-8?B?bjVucEcyd1dCaXkvbitybFBMd1lpZXNjaVEzWnRYNTFRTHNVSWp3QmZKSXRW?=
 =?utf-8?B?blZUQWJQV0xBWFV5YlcvVUcxSWR5Zm5qQzJ5QitiZWZTblRJOXBlTk9XVmdL?=
 =?utf-8?B?Z3RyendWbmw0UW5QM293dVNkMEM5UndHeWROOWJEdDhHbit2QkVGMC9YaGpT?=
 =?utf-8?B?cmliTU1OUXZRdnlxUGJXS3RXNlloRFJYL1ZQWUtJdlZJOVVhSlZIa1dIRWw1?=
 =?utf-8?B?TG1jWXFZc1JGNUVBMTAwNm8rNDhkR1pnSTRXM2k2T1BYUjkrb21yUEZFV2tV?=
 =?utf-8?B?UWFBUXlpTDFjaTdHMDh6WlhnNm1nRUlORS9JS2lYQkhmSmlGL1Zob2svYnlF?=
 =?utf-8?B?aXcwV1c5NDhFRkd1eWJ0bTVSVGw0N3FDNm1rd3pGOXg1cGVRK3F4UGtleVJx?=
 =?utf-8?B?YUNqR1N4YWlJRXA3OHMweTV0bGpHTmVIOFNiYmRRU1hxdTFUZkZ0aVdNMlph?=
 =?utf-8?B?TEdXbERKd3VvLzVicUhuTkhxSVF2c25HVytlSnlrMTVacndCRktsRlVKS3ln?=
 =?utf-8?B?aDFOYzRhUGRvZEVaTHFBSDRJMVZuL1FJZmNMWmJrTUh3aSs1allqUDFpZ3Va?=
 =?utf-8?B?d0U5cEM0YTlJRjBGYzh1V2hxOCsvc1pjelg2cWRYUzNKZEw3WEMxNTl6L2FJ?=
 =?utf-8?B?elE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5702f41e-eaba-4aae-27b2-08ddd0317699
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2025 12:55:01.9377 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9hCutysJ7PSMZov5cccXUlPLp78wR+QWTWeEwkHVFb9E2CrwWm7WnB1Gz62FUzaFY3FFKm0OyI3H7Tw4iBDTKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6326
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

Quoting Jani Nikula (2025-07-31 07:05:08-03:00)
>Prefer the register read specific wait function over i915 wait_for().
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_hdmi.c | 6 +++---
> 1 file changed, 3 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i=
915/display/intel_hdmi.c
>index 03045d188817..cbee628eb26b 100644
>--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>@@ -1582,9 +1582,9 @@ bool intel_hdmi_hdcp_check_link_once(struct intel_di=
gital_port *dig_port,
>         intel_de_write(display, HDCP_RPRIME(display, cpu_transcoder, port=
), ri.reg);
>=20
>         /* Wait for Ri prime match */
>-        if (wait_for((intel_de_read(display, HDCP_STATUS(display, cpu_tra=
nscoder, port)) &
>-                      (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) =3D=3D
>-                     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
>+        ret =3D intel_de_wait_for_set(display, HDCP_STATUS(display, cpu_t=
ranscoder, port),
>+                                    HDCP_STATUS_RI_MATCH | HDCP_STATUS_EN=
C, 1);
>+        if (ret) {
>                 drm_dbg_kms(display->drm, "Ri' mismatch detected (%x)\n",
>                             intel_de_read(display, HDCP_STATUS(display, c=
pu_transcoder,
>                                                                port)));
>--=20
>2.39.5
>
