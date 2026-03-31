Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAL1HHF2y2k3HwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:23:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CCB36512D
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:23:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61A3010E88F;
	Tue, 31 Mar 2026 07:23:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S4kXC12K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C78C410E88E;
 Tue, 31 Mar 2026 07:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774941806; x=1806477806;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uAMcCrWLQ8JaOGsZK48bRD28Ls1xRgw8K2HQ4EXMKqs=;
 b=S4kXC12KQ0JLameyScet+gnvuwPxfRRz1DRZWRSwaF0A4T4Z823CY2ms
 iZDTOBSdD53yF9RfPYmLT7SwtgNTLHZcb+fHkNljOA3cjOAeNw+xITk7m
 CZtJTeIKESEr5gYQvn7//MZQcC7VV06QW/7auXB1pzB+fKGLq9r6KSXji
 RwRmmhjRUhoFBOTcZ8ZvH79ukeqjb3BqtDa4RQ4qwjhXqZWAcf6l0sqcC
 Denoy/R5pV8r+uaL8fnAyC17/nsWC+tfhebciCWjcp1MjbSTdkH5eMXYb
 eDW/nVrEaQBZzl5w3TMmkpTiajYisBLVY6cU2eAuw0GNc+1PVHGsA18Md Q==;
X-CSE-ConnectionGUID: /BedK+3QTzKUPvg+7Oydkw==
X-CSE-MsgGUID: 3BSFT73ETymQF0Ad4BJEig==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75962933"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="75962933"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:23:26 -0700
X-CSE-ConnectionGUID: +SSAYwnETNW/5RQdyX0hIQ==
X-CSE-MsgGUID: FPYx+orfTSSq9lY7ZyGHkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="230743120"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:23:25 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:23:25 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 00:23:24 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.32) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:23:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a+Le8ST8BsRF11Fr4YuWoSVF+e23YSiwbAqlBe2sfrMMr9nVuggEW5O9SOvVe7M5VWch3HsrEs8S0NaEQkTHKaBMY0sJY0Vyoxlt/7Zv8wk5U82QKglb9PCmXxTGJVbXID/v1XBkX9KNqrU9qj4SlATKgCHg0g4ItXgcrLvgZVWB9aE3/QjaLz0yKsNkunDKhmBnTKHkZqHS+P8/i5ki0u/XEiWeXqkwSbiJCjI1FflNBqsBnIwlkm4jVE5E5RYSyXbrVQU3nZuA8poFx/yzzibFXv9Gve9WAWImYGn4lfWCKmMLuJimh2BG0sfSSCvA9Uah7p2TYXGIeTKdb+22YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TjRP6yreBQklgcoay1Wgnoq1NepWoSRBLeKhmNUZQ88=;
 b=ADSyWfhqq3JkN68mN/z5Lksa7zDRIAU1sDTBYZ33XUUYquoL4+FpqcR8uLtu7y0e7k7Go7qv5RxNhZEpG0gogeRE/gX8raLmS7GozGuqLysDdQ/zo1665gOqJW9vQRGHyylzffy2ktcED4Iojlsh8gzMiDPzICU2HiWdCHqH6jgXdKBQjxwBHI9DWIpIKCbxrTQIiOx8MCc8Zx0sZCns9A+fK5FcnDC+BOV/f47B4eBaL865LDDEeJgZRthEdm68Mx0o5AOegXzLVHinwCO1jgXuuqN6RPBpGToxVUteVvH14pP/qO2SwZtOLOgRn1+bBoRj8+NI8op5VFCxbbljIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 07:23:22 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9769.015; Tue, 31 Mar 2026
 07:23:22 +0000
Message-ID: <944c632b-4f62-4988-bf87-92920455c2ef@intel.com>
Date: Tue, 31 Mar 2026 12:53:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 23/26] drm/i915/writeback: Initialize writeback encoder.
Content-Language: en-GB
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <sowmiya.s@intel.com>, <uma.shankar@intel.com>, <swati2.sharma@intel.com>, 
 <arun.r.murthy@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-24-suraj.kandpal@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260325110744.1096786-24-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0132.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d2::15) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|CY8PR11MB7242:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ebd929e-0e6c-431c-f759-08de8ef66345
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: uzAzkIutxFXk4lue0BxraeH2ISvJjSaeCgEz9u/HRVDF3ratiroHacvkSayZm6RbpTs2vghMlSPDCEc3Q6NFEGwejiKHyFkOYW4h2Nwcvc/lJudkVz2Hw+6pKVObl8gBwnbMajZ0zKp7yph3JVBMD7WH69MdETLjyYnd5msY3IHIJJXqgy0BdUzO+8psxnZTQuFXgj2ffF/gZm+kM/S5dBRnPnbfQnagS4focQtP+fLCysTKvbTtt1un0Y2TXkMp8gMQWfnAoAULgRpPXapk72EaRJqLZOJ01+Np0W+BE+iewF4c5tUCFbYIBJk5Jm71M2Zi2sqg9vNgVqYL2LZyxg4trKAHu/xMfVWkujES71Iq/kH5wcpPzlar/vJcsebbMjCLOhXw8/9uhe4+VUK6rUKTzBczQvoTkmNXUlj3ujhGWV2rak4VVEYH8XyrKGuFYaDGlP3szygdVYjgiUL8yAmaRYn8vFd2de9B45PpGnCiY7a4eyitTYbTvq0s7e9oZEaLlIDrgSWKF5Ioa192AR9/Q/SjxHqbwd9PJkMLFDOJOEr4ilnbxVB3L5nBtFQcKK00sT3kfj4IgFkUAgJeIhJonho6B+PRAVXDm2iep9P0Fv8+9Z5bFNlYC8Zaljc5msj8yYAZPgFbJsZGFJoK8X1yGMLPGa3jMALxcFfkylR01tma9rCRiHM7OJN0VZmKrAs0H82+tchn2Tiartvcs7oqGMb6/OZRjD5FsBpWxmM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXpUTjBxdExUQVEyREV3RDgwbVJxMEFKZG1GcWI5VGFyNHFxUFlzdHFSMFph?=
 =?utf-8?B?TU5vcXYyQktsYW1ab3djaExjQXdYNEpYQ1B0U09yellTVzZ0R2szZkdLdFZE?=
 =?utf-8?B?UFE1ZkNTZnZnalNMNUJ5V0lka3oxeUhPNmdxK3c4MmR0ckRmUHUrWWZiZ01H?=
 =?utf-8?B?TEJkUkUxaU01SXVPYkFhL003YVl3QlUyZG9FbnI3M21TYXpRQ2tlTmVHLzV1?=
 =?utf-8?B?RmdzUUlWNzVOYU56ejVwSVdxViswL1JBYnZaRXRvY2RKWGJJQW9JdFZWKzkr?=
 =?utf-8?B?b2x6dlp2cUtJNGNNc0tMQmxsZ3V1YXpFQzZDbGs5cVlQTGYrNDNMVlZsS0JW?=
 =?utf-8?B?Mmd3Z3RDbnFJcko0RC9QOTlhcHhCQjFXVTNEUFdua0hDYm5tYUZZWktRVmU4?=
 =?utf-8?B?T2JMWVliVGsybERsbHJYVm53OWUzMGtsUkx0WUZTV1lSVW1Ed1NweVJMTVcv?=
 =?utf-8?B?S1FSYVVTVVgzTmttdUgzSGlNZm1WZldWcjRzakVET3NCZDN3cVNsczhFdnBQ?=
 =?utf-8?B?TndSdWt1RmtScGhSYXprU1NOeiszdllJd21CclhESk5VNXVnK0NvNkhmalZT?=
 =?utf-8?B?LzdGblZiSmhveVlHRFVJLzBZbUVFOU5RQkt2QWlMaFhXU1NhOGd3N2tqVVNy?=
 =?utf-8?B?anFsM2NFbXVscFJmNjQ1eEw3c0NxWFg2UGZhWVIxbFF2aDF1ZS9udGthOEgv?=
 =?utf-8?B?TG1Nd2d2a2tyNGozRnBOVzBqMktzQUFEakNRdk16Q28xdkJza3VMaUNGRjhn?=
 =?utf-8?B?Y0dpYWw4RGNleUhnTUtpQVlKZG43emJYVkdUWGRnaXZWWG40YkJ5V2FYMmhl?=
 =?utf-8?B?SThqaDQ4QW5SS1NZSzdEdWhLcWhBVnpEaWxjRE5ZUUpPVHh1bzZCTzhzZitB?=
 =?utf-8?B?QUFSL1ZYZlhvd3dIVGp2V3hNaTNJMGJHMnR0N3luamVpSmg0SzZ0eTNWdFhZ?=
 =?utf-8?B?dkNsWGYzWk14ckp6TS91Ty9vRDJSUjRiRjZTcUoyMkZuL0h0aytxSm9nYXRM?=
 =?utf-8?B?T2JPWCtybFdPWXp0Um9TdWJuMWQ4K2FFSHZUaHNEL1ppVmRXZ2ZTc1BLa0pK?=
 =?utf-8?B?ZTkvNTg5SVdtRHh1TnRHbDdyOVc3WnZRT0k5b3NKZDg5RlZ5c3R0M1R2ZUpW?=
 =?utf-8?B?b3JvUnZaYjFDVGNNemFTSEQ3TERoVEJlUnNuc3JTUkpUekRDTTlVZXdkeEZL?=
 =?utf-8?B?REhKY2pKZDZJL1NmWWVBOFJ0VlBjbDRmN0pCQUFpUzgrSC9FMEJrMmpFK3NY?=
 =?utf-8?B?aHhYQy9xN0RqdVhxbmxjbUVzNE0rWmhQWnFpWkEyb0Z3ZjZLcHVpQkhWMUpV?=
 =?utf-8?B?YkRSWW9KdnBZRGw1TllmNlFIeU5rY080cFdUOE1sQnFrL1JvTlFaK3dNOVAr?=
 =?utf-8?B?RVpCUnlTcnpLbHcvaWt4eUdMcmpaM0wvSndyWWcrNXZIMWk2VTY2NkRvZzZ6?=
 =?utf-8?B?SytGeVFOWGdyekFhZS9kdlJhMUlGTkwzYkJUSlFQK2pxaktPWTlaVlNYRG9N?=
 =?utf-8?B?Z2RlSFFNM0NCMW13VzFoa05uZVVIY3hrb1lITFdlQ2lRRW1iTkhWUU1NNmk3?=
 =?utf-8?B?MXM5a1VhSS85RytWZ3hOUHZKMmV0NUtVNDFwY0ZxOTNoQzBJNHpJZXJBMERw?=
 =?utf-8?B?elBldlV5Sm9GRmNWbDZaWFpxclBycElmeXBxVkZZR0JwZUFUa2RjUlFLSnVy?=
 =?utf-8?B?Vy9jR0FiL3ZpTUpuL0ZHZVJwb0s2czZnZm95SjFiaWNvd3NFVm1xUTgveEFx?=
 =?utf-8?B?OGJqeFo0NzlzQ0hDTll3UVovVEJ5UEtKQjB0U1BEbGpub2JHckZrbkdGMVhN?=
 =?utf-8?B?bExxcmliMlZMS3lBOXoxdFdjM1NnV09pWlA1S2VRc3hsdDFvRmt3RTJaR0ta?=
 =?utf-8?B?aUVJb1h0OFlXcWtnT29uaXMwOG16bE5xZlpsRExUK1MrMEUzSmlkSlE1MmRz?=
 =?utf-8?B?VVZFTC9ZTWVTb2QxVmI2dWNMQmZxK1pzdW1Gd3YrVDlhRDcra0Y0UXNyQXhI?=
 =?utf-8?B?Mk0xdExsb3dvcDhwSlRudVRPakw4N2REQ0tBbkdLV1RsSlM2V2JJWEVKaytM?=
 =?utf-8?B?UGh1dS9RS3Bsc1hxcFVJbUhjQUp5T1NjZVQzR3AwZjVlVmNOMzhRVERBLzk2?=
 =?utf-8?B?VzhybStGakhRSnBUVGd6MUJ3M3pIdGRDRGNGSStRZVZpQm9kdVhjNSthMncy?=
 =?utf-8?B?Ui9xZEo3Z3Y4QUo3dVNzZFVYL2s0T1NVbFZkTWllZnFheVVWMExhYWtUREhU?=
 =?utf-8?B?TUw4Rnp5T1hNVkxWcStLRzlHc1ZNV2xxREF4aWlDTTROeUR5ZWNQRElQZHla?=
 =?utf-8?B?VEtnVlZWbVoyVXFiK2hOTitmOC8zNG41UUdIaXBGTjMvYUNZV3RkV1JGZU0r?=
 =?utf-8?Q?OAxdEew9xIrLp/Yj5GOwz0buW1w89+P030Rv4?=
X-Exchange-RoutingPolicyChecked: S3gjYcAF++htj3Cj2TkxrIxadb6Tjj1sUUPuHO9gCj/0PNf8pxFTqpPr9i9pnu5hPGlM9iSc9Kys8auzQ0U1dqvtqygFi+gKC+roRJaSWi98LWFnsLraRm5Jzxy4fl6wbiDv+K1F5Im7ipIxJy/b7lIQqf3DTk5P1TWoEdiachPwfGiARz2gicOwND60yjn4Y9j3b9wIv1I+KBFV24NqQPAUWj3a7r/Dws9iWZ4TwIZoMjfcvrcTABy/9OceaFp8l5aMHMe/yK6FbZzkOI7BagbkkIYAfpq8/EzH7Y3RlgWtx6uyIxPMOqOSAAMgk/d9NJZt6X3n5Aq1TUkpOnl0XA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ebd929e-0e6c-431c-f759-08de8ef66345
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 07:23:22.0656 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y1E5Kt+fGZCyh2F6+O2f0FJ1vwy7E7i4dGlKF3X36QCaNYeg7Lp4PYjUok4QW45T33OjVat4ciowHIBlNhsXN+eEm/LjlFbybtAhvp9UHLY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7242
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: D3CCB36512D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/25/2026 4:37 PM, Suraj Kandpal wrote:
> Call the init function to initialize the writeback encoder
> only for ADLP.
> 

This should be the last patch of the series.

My take on the gen limit is that we should enable it for all the 
generations that (reliably)support it in HW. That is the only way it 
gets enough
testing and the implementation stabilizes.

Also the series is now mature enough to come out of RFC stage. That 
means a proper implementation exposing both the writeback transcoders, 
with commit completion properly hooked up with WD_WRITE_COMPLETE_INT 
(among other things).

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 4cc3e0779e8a..b4cf7153b7c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8030,6 +8030,9 @@ void intel_setup_outputs(struct intel_display *display)
>   		intel_dvo_init(display);
>   	}
>   
> +	if (DISPLAY_VER(display) == 13)
> +		intel_writeback_init(display);
> +
>   	for_each_intel_encoder(display->drm, encoder) {
>   		encoder->base.possible_crtcs =
>   			intel_encoder_possible_crtcs(encoder);

