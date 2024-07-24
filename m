Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 236EC93AC78
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 08:10:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76E9110E011;
	Wed, 24 Jul 2024 06:10:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JtWlduyG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92C3A10E011
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 06:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721801416; x=1753337416;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FT8L6oUuXgKYQMOP5oD42ExXrPSxs9A3zhhnLst0YwA=;
 b=JtWlduyG/mgPK8Ui75Q6qkdwXUBypidPhbWyUYMq7O1q7nuAYbWu2Axg
 DfThZktbAuQONdI16v0PnDrTb0vSt+RnKFVywXUdtRP80VQBwGfTorwMR
 95g7zXJ1MfR+BPlCC52wsxju5Wn+lAs2ks4rBhtHZIIcKIp3lUYI96b/4
 6KKMqOeNr9EqAL3DeUghIkLgS6f7ZqPMnHxvqz74QrLbnSb4a0L+ghDIs
 sOMfNF5YnDDPufRW2E8QMY39NgU0+dqrU6RSo2CMQDIstKrr0AUJGsGtI
 J65+cIYTfL0LUFE9gfro57JP/TcKrV2Ek0HI6ryWNh5YTljpbrLSz5TlI w==;
X-CSE-ConnectionGUID: 81GpwMuMSOCaqoEmRPi7Yg==
X-CSE-MsgGUID: HsWNajqOSHmec1OPPa7PDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11142"; a="19421142"
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="19421142"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 23:10:15 -0700
X-CSE-ConnectionGUID: n2nGxdleRkazu8NnOyAFcQ==
X-CSE-MsgGUID: y7PXoxQGSqGiXslEk3UR4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="56779850"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 23:10:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 23:10:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 23:10:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 23:10:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oOH0yiXjWTVP+LJR5UZ3x+rezZB2hzyJ4McvUMPRSgkgfkF3+bBV0fU7vDuakJ27wUKZP2Yk15TJTo/PjsToXE4vdS/Ov7fn4OFJRyMusZhpVxfh32J17jQKelHSPf1cBeVoIzRKEsOVVjBVYWPskpZ9RacOusCtRj8Wd1YGktTgys3O768eEbBmvgxqpMHJ6yhszAZGxywJqIE6XpTsuCL//hX2vgl890tzIXAQU5H9ws2ZYMf89VY7AatqQswFAsrBcQHpASBs6EiYIiZGnAOFM7vssUcxB2Z3Q3MoFES6CBK5wD4cnXezRyPlZETyITwPqgtziTFbHj3HLGBzRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kqEMlybGnOlQB4pexlDZ7Mb8ixVjsDR6ckqRkSWtU1E=;
 b=eUNCY+Epp4nQY+eJKTKU7V3qebt971qFh9VKY/hgsdpCb0MqPqHk6B2yFaQBdnyB43YvwjHM+1rk6TSxZ1V5MRTZ8ndAsEzGgyetpqPViTREwAMrpF+3ZTUCWlDd6NobV6SoQxv+b685ro1a9Xud22wzI6yBbU8R7+Ug1WQSCXb16AZzTsGvOAyfj8MNcM+I0gGgNl0oQ9ncfrWOsAgMtJiPZUqptr2JsZwyZWwGUWW53FJ1e7Duv0TDX3hv1x6mwIFwuAsNIZyCZb7XnKvSdSFsT7dDbqDF8NPl1PJw8N21h2P6aCcWHTu09hk/Ghe1eMD6DDK3OSNBkYZOC72LPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB4874.namprd11.prod.outlook.com (2603:10b6:806:f9::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.14; Wed, 24 Jul
 2024 06:10:11 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7784.017; Wed, 24 Jul 2024
 06:10:11 +0000
Message-ID: <5e9a2674-8582-4fd9-9495-440322d457fc@intel.com>
Date: Wed, 24 Jul 2024 11:40:03 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp: Clear VSC SDP during post ddi disable routine
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240723042802.3618046-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240723042802.3618046-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0096.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB4874:EE_
X-MS-Office365-Filtering-Correlation-Id: db036d54-3c94-40b5-9f74-08dcaba746bb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?alBVK0NYZjVrdkNqV05LN2d4bndPT1p4R05KNzFCVFJzZ3pZU1BpWGk0bEtK?=
 =?utf-8?B?aEM5ZW9XS2pibE9aVkdVR3BDanhqZ0RIWW9GbWRZeW5WNWxHRlM1M0FqbGZo?=
 =?utf-8?B?QjFpUWV3eFN2WVFLaEFMa1lDQ0JFK0dsNUN6aG80am1tZlljUUJWdnpXeWt0?=
 =?utf-8?B?dDFvVDU2RW52Mk9RQ2FEaEZ1WE45TTVha05pWmhzV1BlNHhvTVdiZ3BLaCtB?=
 =?utf-8?B?N0U0YkNwRmQyQm9SazA2ZHk4QUZSZmhIRjVEWVRHVk1NQXA5dFFQMzNXOTQ0?=
 =?utf-8?B?b3Nzai9MTXRNSWJaU0lmdEJXUkwwaVNITEdWekJIdEhucG5mUVFQakdVaHB0?=
 =?utf-8?B?cURQTjFqcTJoQjBwY0VvUitZQ2lCTHJQdXU3VTlKSTBacXh1UkJQeEpDMmwy?=
 =?utf-8?B?R1RzQVhUbTcwMmNFSVIxVWdTd3d6YUc4UWdPK1M1S2FQN2c5M1k5cDRwcGhx?=
 =?utf-8?B?ZjRYcnlqd05UWlJlYzVzZkcwUlBnU1hMU0Y1eFBJc1ZTME5Da2h1Z200aWpQ?=
 =?utf-8?B?UWtzSGYrSC9qcUVhTUNJV00rY1NUZThSbWNoUG9tKzBscUNCYU83N2YyWkxP?=
 =?utf-8?B?c044aUFZeENyY0xjY3M3YnRTR0R0TkpXRkRCVnlyY3FkQUpqd2VmZnNhZ1Q5?=
 =?utf-8?B?eHh4UVMxVG1OSm5oZUdHT1ZGS2htcFJpcGxBa1NzRS9xeWJJTklKY2xRMXlW?=
 =?utf-8?B?NnBvaTJnVXdvRXBmcG5sQzRBQU1YS0llcmFxT2pCWjZsdXdjalc1TGJkcmtM?=
 =?utf-8?B?aGVORHZQYXlzUzlSWXhFaVorbWtyekNnZWhhYXZlQktvd2lqVXpBcEdteWVa?=
 =?utf-8?B?cGk1T0FrU2VVeHNQL3RSSlZlK1hET3N4d1ZXT3pMQVdub2U2eWhCbWRneTBr?=
 =?utf-8?B?azFtVis2QUlIYmQwU0U2WGhza2RsQmtiRWJTQ24rNWRZQkEvaFJGMkFXWkxs?=
 =?utf-8?B?STE3Y09hdmFnVC9KTHVZdXRZMVdUS2RnUzBrR25NY2lQS3NoaVRoMDRCL1VT?=
 =?utf-8?B?S0IvSmwrazFROUxsdm1XQkNSdlFwMmU0dXBnbSt5RVdxMFh6SDgxZkRBZ3RE?=
 =?utf-8?B?Qy83M0owWkQxSzd5QVNsd1FENjJqNEdaTmxpQXI1c3lDSis3eFZMU28ybnRC?=
 =?utf-8?B?RGtUYmM4Vys2ajh3bC9WYjN1STdON2U1Nzg3TzhpS3puZnhhQVBZVFdROUdC?=
 =?utf-8?B?bUh6RFhDSndEaStwMXpvdU1wbE1lSmFpcTljZm40WnI2QW1aZTlRbnI2TEQz?=
 =?utf-8?B?VEQrcUdvZDU2VVJiMDAzNGtrdzVLUXo3T01Dck9PYzlFSzFwaDhTaWVaVXFz?=
 =?utf-8?B?TTJjMEJrK29nRmhSdFlGVDArVE5RT2duYkYzWmRudkFBQ0phRHdUTHNEUkU5?=
 =?utf-8?B?d2VYV1pIWnZSdWJMbXpHR2U1V09LdjBhMm5JS0VVeVNraE91Y0M0WXZSaVZF?=
 =?utf-8?B?WjJzMTVmNXo1VnVld2drWm90TzlvcUp4M3JyWWExbUc1M24vTjUrNWp6WGpa?=
 =?utf-8?B?SjVaemZBVi9aeDcxZWlYOXgwZGtzaHdsZGF4VWZybXRCMXJnOUR0bFZrcXpV?=
 =?utf-8?B?K0lhajBhZzJaVWl4Q1ZIZTErVHlGellOaEd6N3dReU5mRFhlMXpkdm1sSG81?=
 =?utf-8?B?YWp4cjZjdyt1MFZ6RDRtVlJyMExZOS9wenFKQS9XaVJieGJQTUlxeFlIbW1a?=
 =?utf-8?B?Y3NjQ3hpOXJzS2w0U2U5c0ZjNGZ1ME5NbE1mZGcxTG9pZ3pqeDNFYnVGa2ZI?=
 =?utf-8?B?S2NvVStzcjVielhRNGZjWFArQmRFRVIwbk1palRaeTBmd0pSNlcwV0JQQW1p?=
 =?utf-8?B?Q1JSUEg2SkcxejhnajU0Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZStrWUNJU1RhMTF5c2pMeE5la2dHVERpNlpCTFovek93cGxSdXlTaDV6Nzkr?=
 =?utf-8?B?bU5MWmw3VEdqeGFCeTNGRytGdjkzZEFxSVpva3VWOTNNZkRLUlJkaTVTdTda?=
 =?utf-8?B?MzFaY2dEOUI4R0xQaFFqYVRuOE16bVA5NFZxanZwdnh1VDNCUXA2NTN5YzFn?=
 =?utf-8?B?MHg0TkhRcklaalNxMElUcVAxL2d1TEVLaUQzd3BTb3NBU2g3ZWFSUGFaVmpk?=
 =?utf-8?B?YW1nQzhhay8rZ2hQYU03YTBjcG1CczUvU1A2SVBJRWlwSzltcGU5d0FtK3ZX?=
 =?utf-8?B?WVJLblFNaXZZc1hESUFJNk04cm43VDJubWtNaEtLT0p2RjJlRmdFTHVJaGJp?=
 =?utf-8?B?b1lBbzlFZ0dVVVp3MVpwenZnbUo1NnpBeDlJSG9EWnZDSHdueUg4eTJPNWFZ?=
 =?utf-8?B?TEc1MFhYWE92VzVrS1U2YVk2M1VsNHVqeWZqTmhOaUkvRnBRUis0WFVoekli?=
 =?utf-8?B?NTEySjIvSm93aEhwWmh3NFdybnRUdmN3S09vOThpV0dEWDJ5ajlqTlcxTnhs?=
 =?utf-8?B?OFZHakthUUhzb2hxOUYwL3hOVjRudzV1Rkp1NG5FR0MrSEdvN3J1OWp5YjBS?=
 =?utf-8?B?TTNGNmtjdDlCUWo0M2hkR1JvMld5S1daRVQ0Zk5rM2M0K0dZOFlDT3BZYVhz?=
 =?utf-8?B?VWhXWnE3cmRjd0lUZ1lpVzRrclViWjN2QWxEMSt1d3JpV3BQL0JqNVU5Tnpy?=
 =?utf-8?B?dDNPY3BVRWJURWRHYU9oMGViWTJCckdWcEFCaUU3UUF0NVVydmVIcnEzMkF3?=
 =?utf-8?B?YUdHL2l6SzI3M1JvWmxFWENvSHV5Z2dDTU0wQWZjWXFxSWRQQ1h6OGJJWFNQ?=
 =?utf-8?B?MXQ2QnBndklNT2RKdnJRNG9oMk0xT1FxMWdiMTJkcEpIMnRPYkM4SGRra2hV?=
 =?utf-8?B?aU5mQ05UY2ZEZXMwWXZiVFJtalFsSnFxYnBFMDN2am1Gb1BxMVNpOGcwQ2Zy?=
 =?utf-8?B?LzI2eGg0RlVlWS9Bc3hVMzhGekVBSTRjNlU4NkpnZ1MwaVRaNENNdlVWRC9n?=
 =?utf-8?B?WDRlNW9aanNycjRXNEtFWXdDRFRPN01kcEdOQ1pzTmh2NnpDZGloaDlsNEVJ?=
 =?utf-8?B?WDFMV0NOK1N2UXhQM1NqRHNvOHRpWXhDa2VtNTF4djlnYjJSZUc2VDE1MXJU?=
 =?utf-8?B?OCsyUTB6Q2NlYWV2UUJ0ZjRlemhTaDdZUzNNMmdRSVFYbGtlS0ExcWZvMkhX?=
 =?utf-8?B?TmQrZ2tQRURPaWUranBnRndYQVNLaTlBNlp1Q0IrVjU0UkEyV0dtM0hOQVRW?=
 =?utf-8?B?bFhPT0trd2syNGtmMkNNSmNNbGNpblVCNVorOHJ5SVYwbno5Z3V4Ny9oMzhB?=
 =?utf-8?B?cDJBS0YzYlZNaU5HY3pLQlFKSEptVjI1VDZWV05ESHRDOHdxMEFNRFNGV04w?=
 =?utf-8?B?Um1zSXNaNW1uSE1jNXkybkM0WHlveFVqdjJCOGJveVZndGRLMVo3cVB0NmF6?=
 =?utf-8?B?Vjh2ZFd3Q1hSZ2JuOUIzV0JvckhNV0d1cUdmcWlKRmwxUnZycHB5U1RnV0Rp?=
 =?utf-8?B?TE90aWYzYVNlUWVFWkF3UVdGb3dBbGtNcHUzWkhyb3dHbTBTbVFMYzJLbXhY?=
 =?utf-8?B?NHFicy9UMXBDSFpMMldhSUZSTGFHZUdLaXNPZ3NXRHRhRWIza1EwaGxQaFlq?=
 =?utf-8?B?d2VtcXUvb21ad0R4L1FETjFtVnMrS3hPR1E0dnZpQmRRZDRLcDNvcFVBRGZv?=
 =?utf-8?B?eWpDbWdmbGU2SjRWMGNJNGhJNkZ1MndaODl1azJLMS9ENkJJU2w4MkN0a1Za?=
 =?utf-8?B?c2ZpUnpabHMrdTVibDF4dzJETlpDR0k4RXFxYVBEM3lzdjVhQTlma3pCRVpp?=
 =?utf-8?B?TjMvWlF3aTBYOE9MYXNIREwwRU1WRWE4ZDlzVkdHV21wN2YvZGI4VHI1U0FF?=
 =?utf-8?B?Z3hZczJIQU5PelRkMUlITjh4M0VCRlhlVVRXRDRoN093V3EwWGJqc21Zckxu?=
 =?utf-8?B?OUhyUnVSMmlKK3lPWlhmUVZ4eDRWS3d4c1NYM2FKM0tJckViby9xYjFGZ0tR?=
 =?utf-8?B?dk5MMjU3bjloaHpSYmY2VmdUY2k2RVFLM21NR04xSGhBVDIrc3paZHh4NU9E?=
 =?utf-8?B?cHpuMTJhalU4NjJPNXIrRUswVlpjYnFKL3Z6dFFIcmZXZzFURFNyZDNsU2RX?=
 =?utf-8?B?VStiVDB5emUzL3JxbytQSWg3ejJRSWFLaEVyM3U5QWQvS2gxcXVYWEl3bUx3?=
 =?utf-8?B?b3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: db036d54-3c94-40b5-9f74-08dcaba746bb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2024 06:10:11.7842 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kST4r+rx6sDYado1D/FJLveVir/ZnxQ6K16ruIQynZKxa+77xDuQF2N689p1fMl63t96V9wCxHkYd7/ph94wd/HhCPDxN9vmrAycrD7Y67Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4874
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


On 7/23/2024 9:58 AM, Suraj Kandpal wrote:
> Clear VSC SDP if intel_dp_set_infoframes is called from post ddi disable
> routine i.e with the variable of enable as false. This is to avoid
> an infoframes.enable mismatch issue which is caused when pipe is
> connected to eDp which has psr then connected to DPMST. In this case
> eDp's post ddi disable routine does not clear infoframes.enable VSC
> for the given pipe and DPMST does not recompute VSC SDP and write
> infoframes.enable which causes a mismatch.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

LGTM

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1e43e32e0519..8b60d7f34ab8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4370,7 +4370,7 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
>   		val &= ~VDIP_ENABLE_PPS;
>   
>   	/* When PSR is enabled, this routine doesn't disable VSC DIP */
> -	if (!crtc_state->has_psr)
> +	if (!enable || !crtc_state->has_psr)
>   		val &= ~VIDEO_DIP_ENABLE_VSC_HSW;
>   
>   	intel_de_write(dev_priv, reg, val);
