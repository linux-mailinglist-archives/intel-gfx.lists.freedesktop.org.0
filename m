Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4C8A4F91D
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 09:47:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 247EC10E70B;
	Wed,  5 Mar 2025 08:47:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="em6MTKbJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A07A10E206;
 Wed,  5 Mar 2025 08:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741164434; x=1772700434;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k2FoqaTtdn7H1NTZ+dmRVOCllwuLHgzYnIIJ8hAWe+I=;
 b=em6MTKbJNmW3y/h+BOXGy8J7LJKr4TbtXLlTScVChbuZGiyLfzdMOsCV
 D+O9eA5M5YwcNDl/IhTDsW6tueZTb5rlXqIsfWQIVCeu6YRDs0gcQbiUa
 PK/1UZ+6TG4LcP3iQT+/N8GuH4KkqLoKa37DOLjTvcMiFEDW5nLiA2XQ3
 cc56wc7Hvfnrnju9PJZl8ZD9QDn30aHeiUuZ2agy2wZn3hzDfUQA2JHmw
 0dEPEFTfS9ICRNxyvo/k1+bvZ6fxVofwKlhirY1QIwuo6w1hdyae74BYk
 8FNA1Z7U3nG++xdK6crgWJnJVTbhS84pOHEmFZuPoyAbm+2+yU71Zeour A==;
X-CSE-ConnectionGUID: 9g7s054pRDif/++RLDnF7g==
X-CSE-MsgGUID: m3cD0CA5QMmjb0t80Q0rLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42241360"
X-IronPort-AV: E=Sophos;i="6.14,222,1736841600"; d="scan'208";a="42241360"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 00:47:11 -0800
X-CSE-ConnectionGUID: UITQnhi5RqGJyr5HzPDSCA==
X-CSE-MsgGUID: RBYQMLB3SBSERGVYCi7xlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,222,1736841600"; d="scan'208";a="123727664"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 00:47:10 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 5 Mar 2025 00:47:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 00:47:09 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 00:47:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zx6e1o0YUIpXQFKhvxbh2OU25Rz2uaPZG9A/4oSqVyz1F8NntnwGAMgTuTc+1LlCnhNhPFfYDNKJgFGoepFMTvWb+NvFds8lOL6k7PF8Y4GUxuFC3tktMuP/tsTmEDYDSRzyChBDqwql2nRS5i5IzhQy8CRBgABaQqRMto1KX9d0HLe8KpFUG5gQvZYknprxviA6bCbal02jRT2OktjX6+xRy22VrTOuPy7dhTxS31kr6ddS6m8LZkABehlpZuyqy0UyB50aVTfKE0Qp6V/8mboyVqyNAVC+ULdkEafh5RLULKQ3YeOhL6c40cNv5o20ySY0C/xpw0w0P+Co1Ge4Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=spLELCYLj1HhyPDWudfj4E+OSXtcuuf8q1wWUVoVBMI=;
 b=ye76Zcxxyc3OVpSgfLQY3IHG9n+4uBnFzfETpRjnmp8mGxJCLy7VzuSX3n5SRTwnji0ANn9hzHKlWKPeQZ4ppkWcNZoJH2BZ8frZlj/hp8DzuseioEoKZU3JnzcFZ0AwsECjo75uk3YbfPCBwMo0jF9CjYv03mZFK/gBZAbunt50+IPU3iwUqUUdGpGhafuCgkrSF0/slR0z6NRCMi+GLDGzz5BgahwIOQ7w5TJ8FRSEHFOCVkjE6oZqBQASVRG/e5DKyPk4AJBwP3YB6bPvZkSbTws09zxOayrHDlt4JBLxb5EcxIDtcFF6JAs8YYoa0V3US5+Ajovn2YwtcDWR0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB7047.namprd11.prod.outlook.com (2603:10b6:510:215::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Wed, 5 Mar
 2025 08:46:51 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.025; Wed, 5 Mar 2025
 08:46:51 +0000
Message-ID: <f85c0746-0923-4ae5-b0d3-d750590b42b1@intel.com>
Date: Wed, 5 Mar 2025 14:16:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 16/22] drm/i915/vrr: Use fixed timings for platforms that
 support VRR
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
 <20250304081948.3177034-17-ankit.k.nautiyal@intel.com>
 <Z8dMNIG2H9FuG9Qi@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z8dMNIG2H9FuG9Qi@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0117.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::35) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB7047:EE_
X-MS-Office365-Filtering-Correlation-Id: 76209704-7ac2-4eaa-4a75-08dd5bc24572
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MHB1dC92cUVGZ1U5UkNVamk5NVkxSFM3Y3lma1h4YUxyWWIrWEJ3bzA1Rm5a?=
 =?utf-8?B?NjZSUUpNWVUyN2xwTlhoeUtpWDArVFg5aGROU1c5dlBwQ0dXT0RpQ05JVHBD?=
 =?utf-8?B?SWl0SlVvUmxOZEhTT1hMTUtBVVVXUnUvTHBjUktKK3pUT0gwVG5XcGUrempq?=
 =?utf-8?B?cU5aSTIxRFhuSTc5NTAyUWlmZ1BucUZ5YWJnM0RyOHdzVzdIYXE3WXNxTUw2?=
 =?utf-8?B?RUhQNUVsYXcrc056MDNFZGNEWExqOGQ3dlh4ME9Sd3lKSG9xRDh3NmRDMjh2?=
 =?utf-8?B?SHJNZGY3V0Q0dzBJOXdrT28wcjdWTEpPVExqYzYveFFPSk5oY1FRRzd3T0Yy?=
 =?utf-8?B?VUJUMWRkcnZTekVXZEgxVXFGNTRIQWpHYldtZ3QwaGhqYUd3Z1NOZmEyR3VH?=
 =?utf-8?B?WlEwQXBSUjcyS3lKRkg5bmNnRTc3WTluU3V2bW1HVDNnOXRQTjBiY2ZOTnBR?=
 =?utf-8?B?cGhoNnBHOEZEME1mbWp3SkVpYXR2alZaQ1FPQlFsU0ViMlpOMm9IaWR0cWE2?=
 =?utf-8?B?T21NbHJaaEFBK3J0RUYwenJFVlB4bUc5d3RiMDJYZHMyeFZOb3haU1BScGtG?=
 =?utf-8?B?VEl0ZHRmS3k3OFZEMC9zU0hHL3RFSzBSMXdSZUJyWUY5aERuc091VVpPUEZE?=
 =?utf-8?B?cG5uZ3F5WUtyRWhPR3dxTVQvTDNpbTFWMDRtR3RwNGZiWG15cXRReUg1b281?=
 =?utf-8?B?czc2c0xOOGM3aUtEbVRnaXpTSE1yNS9hdWl2c0s4NU1pTmkrUXR2N2hlaGVL?=
 =?utf-8?B?NDNLMWhZNXRHNjROakNHYzJKalFDRC9wR0ZTVmJVZXpodlVNWXloQlJaOHJv?=
 =?utf-8?B?b0trQmhvSnNMajZrcjhmcllVL0lTT2hBRXk4NUdOK0ZyRFFrSFp1d2lnSGJV?=
 =?utf-8?B?cE5wRjBaZVRCTEluL1MvTzJDaWUrNkFoTHRQRVBUUTVoTm8yc0NnYWUyVEVu?=
 =?utf-8?B?YnFGUE5QUUFWOGFjeDNUWTdkOEJPTXZRcGV5ZGZSQVRKV0dmTy9sZnhFbm1C?=
 =?utf-8?B?TGhpcWd3dnozUmNuNnQ2cnBnVTdPMFZGYXZQZzBncXRjSmJhdkpEeEdIMUZU?=
 =?utf-8?B?dmovd2xXK0JvZklkYUpnZDVPWmVYd1h6OWo2Z2pDekZNaXNYejJ0bkZxL0RO?=
 =?utf-8?B?T1ZYeG9JSGJEZ2dycjVvTk14UEdqT0dXMFlJYko4RDJ3cGUwR0FFNzMwRHdq?=
 =?utf-8?B?YzlESFArZ2E0aytJRmZCbFJsM1hNM2tjM01XWnZIenB2K205N1QzcU10ZjZ4?=
 =?utf-8?B?R0RMczFEWTFSYkdBeENCZXdpcjBoZlhIRXlDWDNQMG5VclNsS1lkenQvQUQz?=
 =?utf-8?B?c2JvYXhwSHBVMXMzb2l1SHZlS3praGM5OWN1V3BWdXkxWmVZN3RCWmZHWE9L?=
 =?utf-8?B?cTIrTml5WEdTSVZVNVBDU1k3eERISk42QjlSNXFMK2sxS0Vzd2h2OEtka0hi?=
 =?utf-8?B?S0V3aXRSWVBpSlNRby82QU0ramIwOVhzcTFLWTVSdGxjcDVZTWJMV1JNcDRV?=
 =?utf-8?B?TUJMbFd4NGhvSFFsNDRUejI1d2lQOWI5QlZxaEdmZjJKeWptblJ6V204YVcz?=
 =?utf-8?B?NmpCWDVtSGJWbGljQUFWMmtNVDJzclRvdSsyOXRyWUxhaE9jeWMzWlJacmxn?=
 =?utf-8?B?VE9FRE1jMm1GUlROWU0yNXRRY2xNOUFaYm1ZY29ueFl5K1AzU0pUbjVUZnlx?=
 =?utf-8?B?dXNvK3llUUNHS0ZtaHBrekNselZObmRLU2dDRlJINFE4UUtrOUlkN0tOeEp0?=
 =?utf-8?B?QmhPaGZSVHEzbmdUTVpWcVhyU2RrSmVuVU56dFFVRjZmUkhpTHkwVU9Ua3Nk?=
 =?utf-8?B?MEw4SGgyNkNURzllMlliREl2LzBESGpvVElKaDJwbS9EeDhWRDYxcmcvYU9I?=
 =?utf-8?Q?Cr2NJQFki20kk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?elQ4KzFxeFFHWGEvU3AyZFZ0VTFadHI2TkNtcFdod1AveHhPRmJKQWR0eStU?=
 =?utf-8?B?bmpIMGNGSW1GbXRxZDAzWlN1Wm9kc0RiS1ZTamFkemJmcUw0WFJCeS9rZjJy?=
 =?utf-8?B?S1ZjNXVndUU3dUdMdFdzT2hmYUYxcWo2dXVaNUtOVnk5STcxdG5XQlRENjky?=
 =?utf-8?B?ay93QXJxMUZ1ZGlUd0NpUmUwb0Z3YjVjd3FsTGYrdlg5KzFJczNUL3VJY2Q3?=
 =?utf-8?B?WklQcG1TV3d0ckZ5MVJJWk5USmdBazBMMXMwTUg2Yzc0SThxK25OS3Z1YmZt?=
 =?utf-8?B?MDZ6QTA1Y01YN0hpOWdhdzVJWjZBZUZOOHJjYW56cHBUOW83bnY2alFjT3Bz?=
 =?utf-8?B?L3RvTk55Y28rVERLL1dTazY0NmRyTGZFZDFLMTNoempFdTlXY3laZUhnN3Bi?=
 =?utf-8?B?V2REa2VUakxwWHZIZGk4UTc0V2dpcVI2N0poL2VrSlZwYVRXYjZSdFltbjR3?=
 =?utf-8?B?dmQ5cmhCN1E4ZVRRSVhKZ1JhTTNFbGIwa2cybWdSbzhuL2h2cVVoMk1keEVF?=
 =?utf-8?B?cVJhTkU3bmkyQVZ6Mzlha04wNTUyY0tXUHFiL2lNVjBJdENBandDdkQ3cW5h?=
 =?utf-8?B?OW44dEgzdUxzbTBFZjJhUURMYzBXd0MvS1hVZ1lzQ2w3RWJhWW9ZbTR3QTNF?=
 =?utf-8?B?RE5nek1SM3ZrMEJ0dnRETnd4SEFCY1EvWGJORlc3QkNEc1drYzZUaE9GNHMv?=
 =?utf-8?B?NkRPdWw3M0NmUlRiZFZrczNOVzY5K1VNS1FmSTI0Y29QeTJkZHdBT2lPUEhi?=
 =?utf-8?B?ZllwUllHd3NYNmlWWFJjRnV1K3czRzN2clpHQmM3M1E0YXhPWERBS1QydVRp?=
 =?utf-8?B?eFBrVHoxKzRnVlV2NlJNZ0JDdWdrT2Q4R3VQeS9qcDJmSXJBV2xCbkJMaTRU?=
 =?utf-8?B?RTljYU9hQlpVSmNsbnVoeHl0VE1JUS9BN0JDQUFJNHQ0SUVrNWtpKzBZZlBW?=
 =?utf-8?B?WWRyN1M4aEVDdlZDQ2FJYTBYRzJUSDJRbEFnUTh4L2tQRjJnNDg0M2t0UWNC?=
 =?utf-8?B?WW5hNnNOZjVwT0VZbWdDMGFlaEFFMlRNaXFSaFB5V2gzblpCWlRFK2xoYkRu?=
 =?utf-8?B?aGNTREdFR2lZQVZTdFRNTzQxRS9Wbys3KzBrN2IyaGkvdElMenYzeFBrV25S?=
 =?utf-8?B?Qm1xaGl0MzBrM0xyK21yM3o2bkc4UWZGbVlEOExyVHZLZnlRR3hvMTlQcUdj?=
 =?utf-8?B?RjloS3g3dThnRElhNWxCNkZuMUswNUN5NC9heDVoVVE4SWJkdHJUcXk0N0sz?=
 =?utf-8?B?UXdvN2VUVEh3Z2g0NWlkNHFtRkhVTVpRbU9pSGM0cTNsWHc2anBVSVpyRDJZ?=
 =?utf-8?B?WVVPRVlXVnY3d0oyeHVuUVA2Qk5DeTFJL1BpQ3Y4SElzN3MycVpDbFg4TGdv?=
 =?utf-8?B?TlBlcHJiT05yNnNHNy8xQ2VyV1k5bUVudVdQUE8yVy9WaTVobTVUbmhQMi9r?=
 =?utf-8?B?dnF4VGFCRnd1Y2J6WnhEbnRxYmJ2TXBCRUpHelB3TWpYN2tZb3pHOGl1eklK?=
 =?utf-8?B?YnhMRkNGZ2huWXdJMUJ2WWI0eCtYKzBvNk9EeDd0bDF1UDNnRmNVN0pnaWh3?=
 =?utf-8?B?dENPWEY2VjZXdFNsM0pLTVZuNWlGRE05Z0RUZ1Uva3hwb1hUSVlnS2ljZi9s?=
 =?utf-8?B?bDRHSWR6cHhDaVBpbzRvdFRYWVFpTWV1TUFVV1pLZkxTTlNiZmYzUktWUHEy?=
 =?utf-8?B?OVRNZCsyd1E3clRzSTh6OG94THZNS1oyRjlac0VwZHJhZm1vMFVPUHN2Zk9X?=
 =?utf-8?B?bUR5VkEwdmViTjdIZTRtMk1WakZoU0p6S24wTHFhYU1RZmkxcmxpQlhYMlF3?=
 =?utf-8?B?Y0F1RHlzSTR0NktrcFpYS3NYOU8rUzJiQVgvYTNBSzlMNnNHSXlHcXNpLzkw?=
 =?utf-8?B?VzhMd0ZLYWJDc2gxL0FjYmVjVFBqWkdKM0JUbXB4cy8rUnhsVXBBWVU0UGh5?=
 =?utf-8?B?YXYvc0VwN3BOMEFoSnNGT2JyaTRsMmZiV0lkdDB4MkRCTDVUZjR3Z0Q5Z1Vs?=
 =?utf-8?B?V0FsU2lyOXdydkpsQW5qWW4yWndadDI3UEFYTUpsWDFZM1lXQnk0R3hZayt4?=
 =?utf-8?B?Tnh2bHJUc2lXTUxIcytmNXJOUzNXTmRJSy9aRlBQVVN6RmpsKzFOV2pibk94?=
 =?utf-8?B?R2FZaDJPMWJPNDdSby9zRkNPNllIQnBteXoyNjh4SWFFc3BRWFFaZFNQVTk1?=
 =?utf-8?B?Vnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76209704-7ac2-4eaa-4a75-08dd5bc24572
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 08:46:50.9094 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EwJwYRsZmZi3jR8r+2eB27jRwHdGJcJNWJKdL72HIcNCZF7hcLLq4cCZb4/6x7B6XyVeH/AQN4lbNsmE9Zkus+dx7MwWQDS4kD9ZugHawQ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7047
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


On 3/5/2025 12:23 AM, Ville Syrjälä wrote:
> On Tue, Mar 04, 2025 at 01:49:42PM +0530, Ankit Nautiyal wrote:
>> For fixed refresh rate use fixed timings for all platforms that support
>> VRR. For this add checks to avoid computing and reading VRR for
>> platforms that do not support VRR.
>>
>> v2: Avoid touching check for VRR_CTL_FLIP_LINE_EN. (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 11 ++++++++---
>>   1 file changed, 8 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 97040ab9ed86..11f23affd13a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -347,6 +347,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>>   	int vmin, vmax;
>>   
>> +	if (!HAS_VRR(display))
>> +		return;
>> +
>>   	/*
>>   	 * FIXME all joined pipes share the same transcoder.
>>   	 * Need to account for that during VRR toggle/push/etc.
>> @@ -370,8 +373,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   		vmax = vmin;
>>   	}
>>   
>> -	if (vmin >= vmax)
>> -		return;
>> +	vmin = intel_vrr_compute_vmin(crtc_state);
> Didn't we already do that?


(facepalm) Yes, indeed, this is already set in an earlier patch. It 
should be removed. Thanks for catching this.


>
>>   
>>   	crtc_state->vrr.vmin = vmin;
>>   	crtc_state->vrr.vmax = vmax;
>> @@ -385,7 +387,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   	 */
>>   	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
>>   
>> -	if (crtc_state->uapi.vrr_enabled)
>> +	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
>>   		intel_vrr_compute_vrr_timings(crtc_state);
>>   	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>>   		intel_vrr_compute_cmrr_timings(crtc_state);
>> @@ -659,6 +661,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>   	u32 trans_vrr_ctl, trans_vrr_vsync;
>>   
>> +	if (!HAS_VRR(display))
>> +		return;
>> +
> The caller already checks that, so should not be needed here.

Will remove this check from here.


Regards,

Ankit

>
>>   	trans_vrr_ctl = intel_de_read(display,
>>   				      TRANS_VRR_CTL(display, cpu_transcoder));
>>   
>> -- 
>> 2.45.2
