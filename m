Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FA1A7A12A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 12:40:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 216F910E081;
	Thu,  3 Apr 2025 10:40:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jdwCEcME";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AE3310E081;
 Thu,  3 Apr 2025 10:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743676836; x=1775212836;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JpSAtxEhwwD52I7ybgrvEvdi7Oc6LHsRlOvVyrARBtk=;
 b=jdwCEcMEd3QjRYSVN6Rude48zVpw18WjVsVUxJV+6argqIIyQGLfKdhQ
 OXwHqtAyOfrE2VLbnnq7ccmMM6khjpZ3ZWn/jKbtlx72fPrCkZ4k1eGmi
 WSb1vJmx0jmHSusgA2o22EP8lpxd4igHDZhlk+Xf7JMjs1ksKsNO2VDKu
 v9rt63LiqBl4s/cuvHYRhF/tTJ7LA/N6hg6V1W/OvhSJNJ1YV9qKTQRNh
 kX2xJQX7By+yTEin81Wpkxn+ajXdlL7NvfYjNm2yESn+uU9Pox0K5C7bs
 BBMtSficgYjtDhJavT8t95vXLO0Y3mRZ0WPfHMB041ZAG9iE04qLAqQy6 g==;
X-CSE-ConnectionGUID: g3Ab7yARRC+ZFOqtkPbTtw==
X-CSE-MsgGUID: GFdZvEMPRUqVCBIViuZRBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="56450001"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="56450001"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 03:40:24 -0700
X-CSE-ConnectionGUID: 7FHV+4eSQD+haiI7IKwYmg==
X-CSE-MsgGUID: UQx1qdVRSEiQbAAYdVSF0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="164205595"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 03:40:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 3 Apr 2025 03:40:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 3 Apr 2025 03:40:23 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 3 Apr 2025 03:40:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SrYYF18gwQfzEpVLQtPWnuMLHtsrJJ1/7vEwD0SnaJLq0Yvp5n8g/ztwehS3Mbx+d3jrAr/R27a/ZHPjmaOFdRT8C5rPstx9ahrUhWum3UIXTGMLKu2SfdKVSxeoXDMyiX+FLwG34pT7Gmuo92Kd+tM/MyXI1tgncrl/ohG+SPs9oyjd2//lBg8ngP4ElRpJv7dfe2bK9YZ+dyyMaCQ4afMv2UMQ4AYDm7V3xbiXtiAZLosG2Iq0A68lZVRAj+dKZF4eXUUIXA9tHIFn9NlAEeoVZRMspjO1UJDpm0JqKB8C4QoApHYrwgV0EU7U5ZcIDEb2L6/+bfO70J/3hJd5Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4bE+HxLWb8xFktCc1W5sHYhx9OrVO9saS5PHl4/Ykiw=;
 b=xFlX2ueDFOYfpzguA78+DGvCdi+6fB3YgW9TEbFHViLCpkN2kTReHO3ZZk1jgf9cMRK+Y8IOlQCV3QI2/cjIKfPkY0vNpoq2235gHY+31pJEF42goliH18UT6hAnVZv08J4XRV+iH+tmC7SQHWJsG1oHZMRwGgSCuvCXfZsJ/NNtH4WTyCVE7hq18OLjCv/1b936+5XnwBE9+JZpCYLQ7s7Ec0bxM17eFxyUfyCTSRE0d1jTxWWV3LnlIrUELX1vwPJJOjNhbZClXLUTD90XokCZHzdI43i/SAn9z1XnXHDIFX+cigF2ia09HxHl46JKBJcJRUF8qsxp4lfu0UTA2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 IA1PR11MB8829.namprd11.prod.outlook.com (2603:10b6:208:59b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Thu, 3 Apr
 2025 10:39:39 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::d3ba:63fc:10be:dfca]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::d3ba:63fc:10be:dfca%6]) with mapi id 15.20.8583.041; Thu, 3 Apr 2025
 10:39:39 +0000
Message-ID: <5894cf23-7110-4dfd-bbb8-a758f167b468@intel.com>
Date: Thu, 3 Apr 2025 16:09:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t 2/2] tests/xe_pmu: Add frequency test
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
CC: Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
References: <20250402013912.2981094-1-vinay.belgaumkar@intel.com>
 <20250402013912.2981094-3-vinay.belgaumkar@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20250402013912.2981094-3-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0109.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::8) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|IA1PR11MB8829:EE_
X-MS-Office365-Filtering-Correlation-Id: c5b981b6-3d72-48f1-cbaf-08dd729bd5b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bXRzbjA3OGVHMHFxc1JQLzMrMjJCL2VYMDBPelFNMUZMajNZQUtLUlVBQkYr?=
 =?utf-8?B?aU55YjI5SzVqVzQ3aTBjRGJpOEJ5dDEyNFdKZjE0V0kwbytZMHgzMUNXUnFK?=
 =?utf-8?B?dkd2d3NFTW1WYWxqWGFhZjhiZXJBTWFqaUVGUmFtblFZU29ITi9GekNBaGZk?=
 =?utf-8?B?bURmbEpCWENaNlljZUdBTkd3aG1KSGZudDQ2UEZ1bDVWcHJFR29oR1lHdG5p?=
 =?utf-8?B?VFBod2o2UzRjREE1bXNBb3VNOTdsWTVTN3NlUWFyOU0rOGlUSFJpOVlVZjBq?=
 =?utf-8?B?OVRHSHhtY1NzNmhBRjhDMXN0UjF1OGhOQjFKQUtNYVFZbXRJenJsY0RKTWVh?=
 =?utf-8?B?YlZUN21aaEZYMlhDY3BPT3U4VkNaS0RYYUcxTlhoeGVoYm81czNpYlRKTnF5?=
 =?utf-8?B?aWd5ZTRsSTZVMk9jUmp1Vmc0VUptckIvWkFsb0J6Vm9GRW1YOGdIajhOZ0pE?=
 =?utf-8?B?TjZ0eXJCYU03ZEd4YzF1NDJzTFV1eGVLSmpKSGtBcDd4MHJPT3FOWXROcjFx?=
 =?utf-8?B?TlU1WFBtZkxxU2FweUkzdndyNzlLdGJ0cW5hbXJOSk56ejg3SE40OGZQVmJS?=
 =?utf-8?B?enlMNVd0eksvNjJlTEkvTGIrenVOaGFZUkpnODFXVlF2NGZBNHZtblp5SEVz?=
 =?utf-8?B?NlJmbHZ3UEZITGxCSTJNNzZlK1ZkU0t0MTFvRXZ4dVpUTnBHWHIrRCtvYlhO?=
 =?utf-8?B?UUdNb21xWEN1N1JYNU5vNWxHdGNPK2xYTmJYYzZQdkJ0RVRrWVRTZm9BSHQw?=
 =?utf-8?B?N0g5ajNZOUl5dXJwamhWQ3VhZWFwUGFQUVQ0NEV2TzFySDlHMnBkVC94d3RP?=
 =?utf-8?B?bmxzeG5aK0J4SUh2cGI3RzNqVW1ydUFWMzBrUENxazh1ZUkzYzZEazhLVW5K?=
 =?utf-8?B?K3BWcEpJUU0yV3VaRHRJWDBaNTNNZWpmZDFTUENJeE1VUkFEK3ZFR0lNZHVC?=
 =?utf-8?B?QjVpeHhZTjRzM1VqUnNpY0hEVjBmRlFDT1pZUC9lVE5uNGgvU3d5M01Wc2tN?=
 =?utf-8?B?YlB0Y3FTVUM3eWxhWDUrbE5RdDBDYXdoWGJMb2lPWlpNTG5iLzR1QUZXcm54?=
 =?utf-8?B?NDk3MklmUlZIV0hpRW5qU1JOeThZdC9KTSsvZkZDZFlmckRDbkVZeGJTR2Rl?=
 =?utf-8?B?bGlydWNxUXlwdDZZS2xSdkQ0WDNJYjZ5RmM5YkpxakdSc1I3Y01kemlFczhZ?=
 =?utf-8?B?NFROQjl1bXF5eXNFY1hVYmlSNXc2M0daNGI4cFBwZWF0TFloWktkL216dDhE?=
 =?utf-8?B?L1R5SS8xaWV6R0h6WVVQR3hZZzNleC9McjlMK0ltby9lRG9iTE5HTElzUjZ2?=
 =?utf-8?B?czNaaC9KT0tlMDlQV1BnNHNEdWNTcy9TbXI2YzIyL2FFRGNFRXFRdXRPaUhH?=
 =?utf-8?B?bzdCb2NWN1hjRHorRGJOclBTc2hJNzJmcnVvRUZxSWdPQlhONTVPM0V6dUVu?=
 =?utf-8?B?ZE9XeTVDaFoxQVpuNXBOalFwZnlCdkFqL1NxVk5SeUlVRkRHQWpMRHJxeXNR?=
 =?utf-8?B?L09DS3Z1WHVQTmNxL0xHRS9mZTE2TFl6emdIVE1ZU3laZzB1OEdnRndtQkpH?=
 =?utf-8?B?c3laaDA2SnliM3JOYzBOTWxtNkYyNlBlTXdCSE5aM3RjdDdyWndiVDNIWUtO?=
 =?utf-8?B?VnQ0OXlqZDhMbko5NklPc1dpOWI4RDIzSmpwTlpNc0ZZVEgwYUpRcS9vWFQ2?=
 =?utf-8?B?eEg3Vk1VTS9rN2c0QmV3ZmVMb1NTeGNlOE9aL214SU5oQmlhdCtIVytUTGM5?=
 =?utf-8?B?RzJKOUhuQmtkOWY3UnIwZjY5WmNmQzBiNmJDdXorZVU3Vm5MbTU5OTB3ajJC?=
 =?utf-8?B?bkRjbWJteVl6R0NCalNGS3N1ZU1VRmJXcnhhVzNwei83cHQxdDdHaWxPNi8z?=
 =?utf-8?Q?slwcgxi60bY2Y?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cVFLRHJ1V3g4ajJOMXJPbEh5UklUeEtldjN0TzQ5SmRhaFRlSjQ5dGNseDZn?=
 =?utf-8?B?bU5XK3hqYTRadzlDYy9mRVA4VVU4ekZiM3MrN2hLNHcvTHJiRlBOaGF2dWNB?=
 =?utf-8?B?MXdZMFVGQ2c3V0ZFY1lYaExlekQ3bFpjT1RNYk95V2lGazZLQk5LczV6SlZO?=
 =?utf-8?B?WHZaRFZEN0JOODBDTFRwVkt0N010WW9sdFY2MkkweXNTMkwzZXRiRUY3Rkxi?=
 =?utf-8?B?cDdEbWNsVVhBcmNnNzZzZXhQMFJVR1BsbFAweENYajNLemtZbHRNeWJvYUxy?=
 =?utf-8?B?TWpySHRMT0FwNEJwTFovNFJRSHZWTVV1b3cwb1lLeTRyRWlYODdXbyt1azda?=
 =?utf-8?B?eXA5b1cwN3hNL0JBaXAzYXAxSXZ5U21qQ3YyVGdzQzNBRnJ5MnhXQklScmtQ?=
 =?utf-8?B?LzRrT0NLai9CT0JITlhiODV1VUd5bGZiWU4rYXg0dlNEcHV6T2d0LzZtVVZN?=
 =?utf-8?B?QWwxWlR3QVVFVkFBYnJpd2dvYTU4a3dGWXFUd1d0ZlFqTU9oaThvQVlvRkww?=
 =?utf-8?B?RGRDMUljT21CRlUySzR3bTNLclJORWRpM1ZiYUpMV29YNFh3SUxsbzVHc0dR?=
 =?utf-8?B?VmVsMkQzQU9ocUlMbmdvOExFMDJtRFV2SUEvUXFEaGpqZjhWZUtVbVBMWTlD?=
 =?utf-8?B?MUhxNGs0eTJmK0NPSkZ2bWw3RkRnTXBpeTNhMTBnM1Q2WEx1QnlwTlg3dndu?=
 =?utf-8?B?TzZnUVhpb3ZPVGM3akw1endDeHdCamVnQTlHdzlnQW1lNlRVN3pPQjg5RGxM?=
 =?utf-8?B?Wnp4TzRtZkdPckxoUXQ2WHljaGJTZGFQVGNWMENYZGFVMzMraUpGTlEvanpL?=
 =?utf-8?B?dnFqc1Y0UFkyS01wMGl0UThCSEtnVlVxaERXL2dESUpRNDZnOG13cThQZ1lN?=
 =?utf-8?B?SlhnclNabzF0ZTB2Znd1QnQzU1JhU3RSajAwNjZyYzJlendDSHFZODIrSnhR?=
 =?utf-8?B?L1ZBNUFwdTg4NGFxSUMzOXJUcmM4VzFKNk9lbHdqVXRqc1MvUk85bnpRVW5V?=
 =?utf-8?B?SCsrSnhEWW1zclNMUTN4QkQycGZNOXZ6NEJMaGQ5Unl0TEZadTA1RXM4TzFx?=
 =?utf-8?B?Z05oUnpjOS9jV3hzeU5LSGhFRWRrMmwvWkNTRlhubE9OUGh5QTQxbHlEZ3Va?=
 =?utf-8?B?VlpyUC8zVk5OM1U2TTBKQWkwYXFYbHJOQktmNnArRnRtQjNqdjQ1NDZoYVFC?=
 =?utf-8?B?eG9nczFISzB5UTAzWXlKRER4enhDVVUwZmkxUTJaY3NRQUMvTG9RUmQ5Y3RQ?=
 =?utf-8?B?Q1VyY0pmV0xocVRKdnRZMnhuN2twSTNMWHA0YTNTQ0ZVaXNIbGZsam1WdEht?=
 =?utf-8?B?T2dWeVQxeVJ0YlFrWkN0ejFXYnNHUE1vQVdUd2Q3RGx4MzdqSnBTSlFnUi9k?=
 =?utf-8?B?akFUeTBKU3ErMzIya0VsRmtKbmlzdFd3bFQxOTFGK3RxUHNPQ25wd3VZUVVt?=
 =?utf-8?B?RXZsTjhuQUNvUCtqUnoyVHhNTEt2MlZVRktIbnFaU3Q3QzZOb0p2QXk1RjRL?=
 =?utf-8?B?ajViWDNTd2FiL05VeTdUY29SNUpkeXg5dm95cmt2VytxYTFWd0plWUVXMkl3?=
 =?utf-8?B?T0FRc1BjSWFKVVp2R05FaGNTL01qWU5nUHFBODlDRFlKZ0Rhd2pNNVN3OC90?=
 =?utf-8?B?ckdZU1hIc2xTaUxlN3QvdG5VeTJScm5iWi90WnNNcGE5bXhvblhkNEZQYzAv?=
 =?utf-8?B?SzRndjRuaEhPWlFGYUVJaTJ1bktTOVF6TDkweDRpQ1Raa3JyTXp6YzIyN1VS?=
 =?utf-8?B?MU5VaXgzY1paTitZNXNYbnR5QWlaS2ROZ3EwY0l4V3NraDlNak9BdVFpS0pL?=
 =?utf-8?B?bU4zKy9kdWZhdXpQTDdjTTFBZHVkMHcyRk1yL0k4TVJ1MXpWcWhLU1lsbDAv?=
 =?utf-8?B?VUw5Zk1uanA1SXMvV1ZPcEZjWU9PUFBzN3Z5UStuVkVPVGVkajlMSkZJSWM3?=
 =?utf-8?B?eHh0TXR4cUhJRGN3Vys1TXJHQ3BiTDVuUU0vbTZMMGN3aVRqR3ozMmEvNFlO?=
 =?utf-8?B?U3JXZFd0NWptSnBCYVl0TXZ3ZVIzS1hLTCsvZlM1WG5XWFpaZC9qcnNtZ0ts?=
 =?utf-8?B?aytmS3BuVkFrQzB1UkF5ZEx6UkpaYVZQZnhZb0hUMkx2TmQ1VHQxNzVkZVBr?=
 =?utf-8?Q?pbTRQ17dzWWF1n4m1GBiH5bSz?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c5b981b6-3d72-48f1-cbaf-08dd729bd5b1
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2025 10:39:39.0756 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A7pp4I+rmEEuGbvB39YSVJPva2H3jY0/Jg6Sc/N+CWpExJxfttyYAeqYqc/HXXB1iHaOTytkfYHx0V6PTapOUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8829
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

Hi Vinay

VF igt patches were merged so this will need a rebase

On 4/2/2025 7:09 AM, Vinay Belgaumkar wrote:
> Add a basic test that uses PMU to read GT actual and requested
> frequencies while running a workload.
> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>   tests/intel/xe_pmu.c | 93 ++++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 93 insertions(+)
> 
> diff --git a/tests/intel/xe_pmu.c b/tests/intel/xe_pmu.c
> index 66edf24ad..43085b4d0 100644
> --- a/tests/intel/xe_pmu.c
> +++ b/tests/intel/xe_pmu.c
> @@ -226,6 +226,95 @@ static void test_gt_c6_idle(int xe, unsigned int gt)
>   	close(pmu_fd);
>   }
>   
> +/**
> + * SUBTEST: gt-frequency
> + * Description: Validate we can collect accurate frequency PMU stats
> + *		while running a workload.
> + */
> +static void test_gt_frequency(int fd, struct drm_xe_engine_class_instance *eci)
> +{
> +	struct xe_cork *cork = NULL;
> +	uint64_t end[2], start[2];
> +	unsigned long config_rq_freq, config_act_freq;
> +	double min[2], max[2];
> +	uint32_t gt = eci->gt_id;
> +	uint32_t orig_min = xe_gt_get_freq(fd, eci->gt_id, "min");
> +	uint32_t orig_max = xe_gt_get_freq(fd, eci->gt_id, "max");
> +	uint32_t vm;
> +	int pmu_fd[2];
> +
> +	config_rq_freq = get_event_config(fd, gt, NULL, "gt-requested-frequency");
> +	pmu_fd[0] = open_group(fd, config_rq_freq, -1);
> +
> +	config_act_freq = get_event_config(fd, gt, NULL, "gt-actual-frequency");
> +	pmu_fd[1] = open_group(fd, config_act_freq, pmu_fd[0]);
> +
> +	vm = xe_vm_create(fd, 0, 0);
> +
> +	cork = xe_cork_create_opts(fd, eci, vm, 1, 1);
> +	xe_cork_sync_start(fd, cork);
> +
> +	/*
> +	 * Set GPU to min frequency and read PMU counters.
> +	 */
> +	igt_assert(xe_gt_set_freq(fd, gt, "max", orig_min) > 0);
> +	igt_assert(xe_gt_get_freq(fd, gt, "max") == orig_min);
> +
> +	pmu_read_multi(pmu_fd[0], 2, start);
> +	usleep(SLEEP_DURATION * USEC_PER_SEC);
> +	pmu_read_multi(pmu_fd[0], 2, end);
> +
> +	min[0] = (end[0] - start[0]);
> +	min[1] = (end[1] - start[1]);
> +
> +	/*
> +	 * Set GPU to max frequency and read PMU counters.
> +	 */
> +	igt_assert(xe_gt_set_freq(fd, gt, "max", orig_max) > 0);
> +	igt_assert(xe_gt_get_freq(fd, gt, "max") == orig_max);
> +	igt_assert(xe_gt_set_freq(fd, gt, "min", orig_max) > 0);
> +	igt_assert(xe_gt_get_freq(fd, gt, "min") == orig_max);
Should a exit handler be added to restore frequencies in case of assert 
failure?> +
> +	pmu_read_multi(pmu_fd[0], 2, start);
> +	usleep(SLEEP_DURATION * USEC_PER_SEC);
> +	pmu_read_multi(pmu_fd[0], 2, end);
> +
> +	max[0] = (end[0] - start[0]);
> +	max[1] = (end[1] - start[1]);
> +
> +	if (!cork->ended)This can be removed. The engine activity had a trailing idle case which
ended the cork before. The lib already has this check> +	 
xe_cork_sync_end(fd, cork);
> +
> +	/*
> +	 * Restore min/max.
> +	 */
> +	igt_assert(xe_gt_set_freq(fd, gt, "min", orig_min) > 0);
> +	igt_assert(xe_gt_get_freq(fd, gt, "min") == orig_min);
> +
> +	igt_info("Minimum frequency: requested %.1f, actual %.1f\n",
> +		 min[0], min[1]);
> +	igt_info("Maximum frequency: requested %.1f, actual %.1f\n",
> +		 max[0], max[1]);
> +
> +	close(pmu_fd[0]);
> +	close(pmu_fd[1]);
> +
> +	if (cork)
> +		xe_cork_destroy(fd, cork);
> +
> +	xe_vm_destroy(fd, vm);
> +
> +	close(pmu_fd[0]);
> +	close(pmu_fd[1]);
> +
> +	assert_within_epsilon(min[0], orig_min, tolerance);
> +	/*
> +	 * On thermally throttled devices we cannot be sure maximum frequency
> +	 * can be reached so use larger tolerance downwards.
> +	 */
> +	assert_within_epsilon_up_down(max[0], orig_max, tolerance, 0.15f);
> +}
> +
>   igt_main
>   {
>   	int fd, gt;
> @@ -254,6 +343,10 @@ igt_main
>   	test_each_engine("engine-activity-load", fd, eci)
>   		engine_activity(fd, eci, TEST_LOAD);
>   
> +	igt_describe("Validate PMU GT freq measured is within the tolerance");Can't we have this per-gt instead of engine?

Thanks
Riana> +	test_each_engine("gt-frequency", fd, eci)
> +		test_gt_frequency(fd, eci);
> +
>   	igt_fixture {
>   		close(fd);
>   	}

