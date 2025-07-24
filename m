Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93883B108DB
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jul 2025 13:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27FDA10E04D;
	Thu, 24 Jul 2025 11:15:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BYzGXCPb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB6B510E04D;
 Thu, 24 Jul 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753355754; x=1784891754;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=B6VsxVdkv/EUDvucQ8NgPZLEA3wJ2aVcPS7Y3dkCeEE=;
 b=BYzGXCPbFQ8AAV/NBsBtBnODYsFtLkQU8sXRqVjFKPXjqAPZpPM4Fhxs
 bLl+C0ttYlkR0m4dPtWY6zb3tSHVFiw2VuArCPK50Fzsr81tmXtRjewcV
 qPcs16j7EiUX5elz5vEhPSMQuO34jOyKLKgOubwQ0xLuT8HBKKfeo5PLf
 NkxdxlBPYxWCGGEii4w6hGv1iu4gVEtZ/FPAKGSczZFVfmrXwVOwj8+C6
 OPVZovkaltVyZdBlHLrtSTHizoxfPBIuN67BEDYdu3Wivnl8z7d0e7c4p
 3ezmiQBKwHIKNple+ZzJb7qZmb5GBXFJEV4uw1WaHBFpdPZJBSBz7knYH w==;
X-CSE-ConnectionGUID: /YJAhgq4QEaz+E8ivlDahg==
X-CSE-MsgGUID: OM5uZDzVQnSmdzecGysbTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="55514917"
X-IronPort-AV: E=Sophos;i="6.16,336,1744095600"; d="scan'208";a="55514917"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 04:15:45 -0700
X-CSE-ConnectionGUID: JpCN/28ATwqw3QlAemBXBg==
X-CSE-MsgGUID: ncimujH/RySoYR6K0YyFMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,336,1744095600"; d="scan'208";a="160161861"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 04:15:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 04:15:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 24 Jul 2025 04:15:44 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.75) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 04:15:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uN9PngvmyRQ6rcO42QJFXLS8mbbSL2oTVOJuBxXdtfUXL/xM73Kiqgk2h7Zn8vAZFjNlfo87/ttzWpZyv2B49Hij1kXg6Bijohl6h0TrzWzfMi4KC0Bf2mIrlozzjqRMpW/l9NLywuL/ABJfw6MV+PNBOQux5Xfl9ZmQHCK4tGa8bksHm3G93pRNAyBiCFJyaoNbab1HmpyltYjprKAxNmGQPYUz4LPoFYrxYnvxjadjVs1vQd82M7Rscg6ZhsGUr9JUASkF4hzbuwjiWtsrCLfhICUyloPbBK+nxqupgbFdhzxglxbUTVTMK1nwhu2znv+yec1e+JnShUkRNx690w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NBKjh7JAk+/1RP7cc9oDjt7SJLgZ/At65F9+mydJMF8=;
 b=n6hGjhStuupji9Uj3RvEnQjhqmm76rcYtnj3C7OZje38wJCe21u6vmp/+UnqweOcvRPOqYOxij+/hfTPm4GCXUEsEAJZM+pBvIdqUq2idNbo9PqQ9OEl9kQWFKo83elaipZTffdf1l+k8LblT8+NwD4jYBwDzqlZb6bfwAUPcpxzylSRjmk5PhIvIG3bH2EZtGFysfJVTwQLowclJA7Gl7Ets8gTSHibFNcSw52WlqCnhfdxH/1wGrgCnmFDUrebWOx95U8+K6xtZ1IeEufhbR0o9AY7DHt/iQ/XH4H2DrM9FSiBUCwHLlFG91AA0zmoZ+cQI9j6yl3SuFWFh6ifKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV3PR11MB8529.namprd11.prod.outlook.com (2603:10b6:408:1b3::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.21; Thu, 24 Jul
 2025 11:15:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8964.021; Thu, 24 Jul 2025
 11:15:00 +0000
Message-ID: <3744faa2-b11e-46da-9bcd-499486755d31@intel.com>
Date: Thu, 24 Jul 2025 16:44:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/edp: eDP Data Overrride
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20250722055624.2251656-1-suraj.kandpal@intel.com>
 <20250722055624.2251656-3-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250722055624.2251656-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0015.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:179::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV3PR11MB8529:EE_
X-MS-Office365-Filtering-Correlation-Id: bc35bebe-3da0-4006-2383-08ddcaa35413
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z0ZZYXM4cmZGMXFkdjNsTjZKOC9xOEVDRmNTU2dna2xVVmE2STNvY0djcmwr?=
 =?utf-8?B?NlpaQmlmdTMzaTQvcitXUi95TUcwUEVCRUoyNHM1UGhHNDBRRTg5UEhtbkF1?=
 =?utf-8?B?U2l5MzJUakVYWTd5Vzg4UHRSMnhrYlFNQ0JwOVYwK1p2eHRsSzFWRWtPZHdB?=
 =?utf-8?B?RDFCZTdBNVF4Nk9LMlJYZEJiWGRmbjl0MUg5RFNpcmZQbmxmaFNCSHM1RlZj?=
 =?utf-8?B?RzcwZ3VLbkhQQnlzZlNwOGJmSTRHeGorT3lLcjhUaTI2eDBSeFIrUzE2N0R0?=
 =?utf-8?B?QndYNEo5VkEraWxSKzI4ZTV4K3V0cDZKbEQzWTBtWmJYakZnOXQ1NmREUnpa?=
 =?utf-8?B?cFo5K3VybkVlL0FkVHVQZk1wYy9GUXJlbE9CREEyRGJYd0FCbEhOQ25ISVBi?=
 =?utf-8?B?Zk1TOG9YY3NOT2ZqZE5jMlZVQ1pFYlFpN29WM3JjTFl2UEJLaVQ0OHBFVEF6?=
 =?utf-8?B?c00xWmdBcjBqdkNyTEtNSnFnUi9DaFBtcEhnMXdKMkdSa2poanhBbVNJVzBT?=
 =?utf-8?B?TXlGazdUU2ZQdWR4SmN1TUw0NVJrWHJTMHcvU3FjRkdGWEdKSm1WR3BBbFFz?=
 =?utf-8?B?VTIrckQzQmNVSEtPT280WWZhR3VOSkxqb2Y0bzVJclJRSVVqYUtrbmVuMlJt?=
 =?utf-8?B?QkxseEVNelRYQTM0ZEo1S0k3bkpWRnZXbStycmgzQ1V0UytQekNteTFtWCsw?=
 =?utf-8?B?MlhSSXEvWWZHYkxNb2NBbzFhYnBTRmdQM0dLeTdjdDJQd3J5V294ZVQ3Y3Js?=
 =?utf-8?B?OWcwQWU2Qno5RnkxTWpPcnpIT29CeWhtNnM2eWU0WHlCcVJmb3hER3RJUUlY?=
 =?utf-8?B?WlFYVXZ2b1E1RGRaSUd1QjhncUd4UjI1YzhVdXRZSmVWclhmbkZrRzRLSjEz?=
 =?utf-8?B?VndOc0Eva2c5cTFUem8yaWo1MVN2TTR3amJYQ0lGMXhQamNlaDNRRjhpZXNm?=
 =?utf-8?B?ZVpZenNaTXJmMEpjR05sRG9yYzZPNUNtMTVZdm1vSlk3ZjJraThSd1dnMGNq?=
 =?utf-8?B?cEl0QXdjQnJYRElKc1Zva3R2WnFVVkc1Q1F4TXVrY2wvMlR5RTFrY1o4Wm9O?=
 =?utf-8?B?M0ZseHloM3BvajFxYVpLelB5NjFGaytUK3dCcHFLSUZwOXJvSGc5U2RYRnpB?=
 =?utf-8?B?Szg0NStydmtwMlNMUUxVcVptL3lSaXpIZ0JGQWFaemRZNWhzN09DVW1rZTRI?=
 =?utf-8?B?cGlQaldXdVJ6WUxsUjdZYUdSQjhNMXVObXNkTkJqdUdrakpNYUJ2eHpNVlo1?=
 =?utf-8?B?VW8yY0ZUSkdxOUZXbERNUVNhUTd5cWhzNUE5UzJkRVA1UHZmVmpNRXRBem9C?=
 =?utf-8?B?VmxPRlNMRXBsZ1k2M2dtYXV4R3Q5ZU82ZTBzZzlUWFp0Tmt5TDJ4S040cDFY?=
 =?utf-8?B?N2syWkNwdDhoN3IwY3NwQlcyMmlFVldySFIrem0xTFphTmdLNVNxNFR2Y0ZX?=
 =?utf-8?B?UWdTYm91Qk5SYTVFdDBTUVFORlM0elJYMnNrQ2dSVk1kWjQxcHU3UG9sZkpl?=
 =?utf-8?B?Tk5ObWNlVThweHJZVy9menU5enQvelo5RytKTS9mQmFTOGJiVmwvakxQYjh1?=
 =?utf-8?B?bnB1Q3JBYVg5Zms0b2xTRHp3N1F4K1dUQzJyZ3hwRWRreHYwRmdDTlZJYWl4?=
 =?utf-8?B?dm1SSWVhYzRtbVVFQmltQU1ob2xLZVcxbmRPWXpsdUZrSkxIN1AvV05kMStG?=
 =?utf-8?B?dnpsU0VFd216MmQvT09reitTekFwNU5UQUIrbDROZEhJMmFKVWFsM0ZRd2Ev?=
 =?utf-8?B?d0JRK0xhdkRLMGNvb2xqQjBRbFJVbVc1MlBUMzRVdkpodWUvbWNmSzNUVUVz?=
 =?utf-8?B?ZzlDc1lackJtd2xBLytoQ2twZVBSQnpVczJsWVcyUDVJS2xpYzB3Z0xzem1m?=
 =?utf-8?B?aEY2ckd6YW96dDhtVCswaDNUK0U0WWRXWStjRTB3NFJTQ1E9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkF5aGdaSXpmQXVhZXBVUGNJNW9JSXl1NGZ2bmJ6OTlCTEhXUXRyeTBOaUdS?=
 =?utf-8?B?VnNUTVFDc2tlU21PRlJob2orYUFUbEprdC9LZytVd3JncHg3TkxMRUY5VnZz?=
 =?utf-8?B?d0pKZUpva01pbUV2STdITjVDdXZmNjRQRGhLeWx3N3ZxWHpva1lzMjMwTVYw?=
 =?utf-8?B?TjJyamtKNTNYdnJZd0pEL3VtcVRhN25KS0p4YUwwOXEvQkY2NmFaaXpvalZL?=
 =?utf-8?B?ZlFFcFdsRUUwVXlrcldGbTRoeHZuQ1VpYVFBV2JQSWl0T0d2d2tGdlc1OER4?=
 =?utf-8?B?NzZ5d3RLeEJ1N3BIdWtPVk9ydGZ0aGprV25pREVNVjdsc2xtMWxtdTZUVVB5?=
 =?utf-8?B?SERQd2RiL016VU1GUmM1TnNab09INTFMd2R2Q3hLWm1VbzM2TDl5aWtLdngv?=
 =?utf-8?B?TklFMmVDYTd3VUJuZzlqdS9TM1RBWG9xVUt6akQ0L1FOKzhHK1dFWlVJSFNI?=
 =?utf-8?B?OFVoNjlVSCt5Und0cnQ2em5UZHYzTG9aUHZSTTFJRjBOTzdaMExGZnMrK0pM?=
 =?utf-8?B?U2djY1p1QmEveDl5VkRRZmp5Qk5OakE2M1B0MjNEdlZBd0U1eE1zZ1k2YkZo?=
 =?utf-8?B?MnRIUVBRWEE5TGVqVDdZUmYwRHhkMStSRmhNMTV6b1NJUmpjNDk4cGhZU2hn?=
 =?utf-8?B?dkN3Q2tKT3pYZWROOGFoaFlZNTFQeHRTcEZaR1JGS1RON0h4VHpGMHVqekZY?=
 =?utf-8?B?OUdOMWxCOE1meFpvcFgyRGJGdEZveGRXbjFlVm9rRlloek1CRG1SZmI4TFlo?=
 =?utf-8?B?dko1b2c4bTgvODlRN3RpMVU1TjN1VVpxbXJ2THM4dzJ2a2l1RHR1TXlxUEl4?=
 =?utf-8?B?NzJDMmYyY3ZUMXlQRXFLem9MWmdncmhrRVJlZnFqRCtMcVN0Z2hqU3NGQ1Rv?=
 =?utf-8?B?SXhNZlJnenZ4clRBb3ROR1lIN3lDNFo3czNxTGR4Nmg4eDl2a08xa3dtTmZz?=
 =?utf-8?B?MG5qMEN1VHlHWDJVRS8wTXBEOWZneXlsUWN1ZDE0eUtwRnpQZ3NGVzVpWDla?=
 =?utf-8?B?QUp2NUxHeExhbXAxTVZ0bFhrdHE0L0NwbjFVQWVyeG8wM0oxczBqU0hreExO?=
 =?utf-8?B?aHpOa0N0TUdlQW8rdVEybUJtWWYrSGpnYXRxQkc2Sm5tcGpvSFNncENOcmds?=
 =?utf-8?B?VGxXMWFUMkN3eVA2Ym5hZGZJdmdWdHY4YXZnaEJ0NFYxZ09QRElOejlJWm00?=
 =?utf-8?B?WlI0cnlnOVZVbXFPYklnemhSazRhOEZ3RGNGOGZDVDVZaVJYa2hIR1NsbmVL?=
 =?utf-8?B?ZHpVSVh5VVNHRi9IdVFFbnROT285a3hsMWE5YjhtbUNabFpHaWNYYW9hbTF1?=
 =?utf-8?B?S0J0QS94dExHcHNHZ0RKanNNQllkZmsrL0t3MTdxZGRSR0FacFI1MTduT2dJ?=
 =?utf-8?B?RCsyZVkrWUo1U2x0cWowbFBVVEFsYWJpVWp2QVVZdGwySHJEZkxPT0ZPcm9u?=
 =?utf-8?B?MTBTOElRaDI5NEFaYWI1Y2Erc25Da0JGbmpRcTBBLytWaVlKSkVHa2VLZXo0?=
 =?utf-8?B?YU9xQWJZYmVsemRwaTVZNlB2Rldjc3dNSWpyaUlEUDJZaTZiYWxhRDJXREg1?=
 =?utf-8?B?b3pWVGs5UVZJNkxYQ2dPWDY5eVh3V2phYldwZ3pvcXhLRXJWVkJ0bUw0VHpU?=
 =?utf-8?B?aE02UkZjZ3IzTGFwK2FHZDlTOGNZTVBRU2EveXVMRkxSTjFrdndBUWhDbGcy?=
 =?utf-8?B?MzhDZHpmb3dlOEUzdUN6NGhwUDlQaEdvMFp2MVpKL0tXTEhCMzU2b2JNb3Zx?=
 =?utf-8?B?R0JJcDVMRU5iNGFCOGRRUnZ1ZFN1cTB1by9adkFHQXFRV1FmSC9IU1ZkNzY3?=
 =?utf-8?B?WTRnck15czA3cXBWVDJjMWFzaVNTaWJZWkZkWXhTdlg0dGp2Lzl4UXJoazZz?=
 =?utf-8?B?MlRmQzN3M090ZC9JUXVSd0xVN1pFbEozVTQyeUs4Y0hjdEYzK1lJbU1ieXNq?=
 =?utf-8?B?MnFxUHV5OG9LRUR1d1VyWmhxcGhYbDRLQTI4djNDMFBoc2wrcGI2aDhSUldo?=
 =?utf-8?B?ZTRqenQ1MzJlSTI2MFFkZ2VXcUIzMU5TZHVUVElrbXBCYjd0QTR4bDkwZ1lG?=
 =?utf-8?B?VzlPajJjaDY2Y3hDSE9reGpyZlQ4SWpvdmZuMGo2MndFbXJYdFlORGhOeU1y?=
 =?utf-8?B?dXVKUzlEVXdlb3ZJaFZOdFRTK2diNkVUQjBuUGEwNFhVY2ZnU0wrb1Jwa1BZ?=
 =?utf-8?B?MGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc35bebe-3da0-4006-2383-08ddcaa35413
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2025 11:14:59.9177 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iLDgA/RO1kXbMm4DMi/0Qad0tuHEyW0GyRajNVIFmVIWWEyZ4Ndw0ArhIPO+sw1UmfyrxMLe2oKWk4OX9pRFVAkWmxBT7fFM8olvoY/AFnw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8529
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


On 7/22/2025 11:26 AM, Suraj Kandpal wrote:
> We need override certain link rates in favour of the next available
> higher link rate. The Link rates that need to be overridden are
> indicated by a mask in VBT. To make sure these modes are skipped we
> don't add them in them in the sink rates array.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_bios.c | 56 +++++++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_bios.h |  2 +
>   drivers/gpu/drm/i915/display/intel_dp.c   | 11 +++--
>   3 files changed, 66 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 8337ebe0f2c8..e68f71c0575a 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2480,6 +2480,53 @@ static int parse_bdb_216_dp_max_link_rate(const int vbt_max_link_rate)
>   	}
>   }
>   
> +static bool parse_bdb_263_edp_data_override(const u32 edp_data_override_mask, int rate)
> +{
> +	u32 val;
> +
> +	switch (rate) {
> +	default:

This way we are removing 200000 rate if there is no match.

Better to have default at the end with val = 0;


Regards,

Ankit

> +	case 2000000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_20;
> +		break;
> +	case 1350000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_13_5;
> +		break;
> +	case 1000000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_10;
> +		break;
> +	case 810000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_8_1;
> +		break;
> +	case 675000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_6_75;
> +		break;
> +	case 540000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_5_4;
> +		break;
> +	case 432000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_4_32;
> +		break;
> +	case 324000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_3_24;
> +		break;
> +	case 270000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_2_7;
> +		break;
> +	case 243000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_2_43;
> +		break;
> +	case 216000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_2_16;
> +		break;
> +	case 162000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_1_62;
> +		break;
> +	}
> +
> +	return edp_data_override_mask & val;
> +}
> +
>   int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata)
>   {
>   	if (!devdata || devdata->display->vbt.version < 216)
> @@ -2499,6 +2546,15 @@ int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
>   	return devdata->child.dp_max_lane_count + 1;
>   }
>   
> +bool
> +intel_bios_edp_data_override(const struct intel_bios_encoder_data *devdata, int rate)
> +{
> +	if (!devdata || devdata->display->vbt.version < 263)
> +		return false;
> +
> +	return parse_bdb_263_edp_data_override(devdata->child.edp_data_override, rate);
> +}
> +
>   static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
>   				 enum port port)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> index 6cd7a011b8c4..b554fff96082 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -274,5 +274,7 @@ void intel_bios_for_each_encoder(struct intel_display *display,
>   					      const struct intel_bios_encoder_data *devdata));
>   
>   void intel_bios_debugfs_register(struct intel_display *display);
> +bool
> +intel_bios_edp_data_override(const struct intel_bios_encoder_data *devdata, int rate);
>   
>   #endif /* _INTEL_BIOS_H_ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6d4e0fa0c054..0a227822b46a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4275,12 +4275,13 @@ static void
>   intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>   {
>   	struct intel_display *display = to_intel_display(intel_dp);
> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>   
>   	intel_dp->num_sink_rates = 0;
>   
>   	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
>   		__le16 sink_rates[DP_MAX_SUPPORTED_RATES];
> -		int i;
> +		int i, j = 0;
>   
>   		drm_dp_dpcd_read(&intel_dp->aux, DP_SUPPORTED_LINK_RATES,
>   				 sink_rates, sizeof(sink_rates));
> @@ -4308,9 +4309,13 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>   			    intel_has_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2))
>   				break;
>   
> -			intel_dp->sink_rates[i] = rate;
> +			if (intel_bios_edp_data_override(encoder->devdata, rate))
> +				continue;
> +
> +			intel_dp->sink_rates[j] = rate;
> +			j++;
>   		}
> -		intel_dp->num_sink_rates = i;
> +		intel_dp->num_sink_rates = j;
>   	}
>   
>   	/*
