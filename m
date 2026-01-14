Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B2AD202D9
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 17:23:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B17310E61E;
	Wed, 14 Jan 2026 16:23:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YbF4iNyA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89EA910E61A;
 Wed, 14 Jan 2026 16:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768407781; x=1799943781;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=s4gXp8N0U6t/4TDDEjwdvEX2H0dDnKJ488enDeERqVw=;
 b=YbF4iNyAVTYQ461PSjXDPqTPtL58r13ReB8mrgFbQITo+n3syhMHcIYS
 TzzT+S9FoPmc9jqj5LyA1vGL70WYF5lJFg7FJ/qesCYUH2ses8tzIykj2
 sXTxT198mkOEKpL5ooMNpuuTS0+2EWE6++bJUPF8vurwxZvg6arN2+wwV
 P1czyQ3y9TUwd3F+IXpDYCHywXrsJ2bght8tXvqsFjzjsW1HdsiXjZwfC
 m3wwTtbDNK+2xHOAzxUkFY2GIc6otCoaV7avGlIZEsRhAhQFYFQu9yZZx
 F1QUXM63zuJpYwliIcepkDIysEmCOv74e/qPd61jzpdNP3KgEZ9QQVME7 g==;
X-CSE-ConnectionGUID: d4ZAG6bfRbyPhsKa8S+rDg==
X-CSE-MsgGUID: PO1U+6SPT/a7uT/x9urWHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="80007378"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="80007378"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:01 -0800
X-CSE-ConnectionGUID: 6UUjXOthTu62fKkv1COMlQ==
X-CSE-MsgGUID: JCY+gmx8S+GFyRY0JCs+kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="235443519"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:22:59 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:22:58 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 08:22:58 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.67) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:22:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D0x3jlllciZXLzmbbslxNcMPvbLxfYR4ELg1mw3nmlj+IVOpqsfxM0bw0lH2YyZL+mTQ9xbtZzBI5GiUtKQHbRH50S+P0zSzDMITP2aXuzg4WFT1drlWSGNmHDTi9sC8ZCEjHrQ90CHSVowDMR1cumQzrJNKBKCrqdRG82DHYKChCI+riJYNWuciY3l+hEqGYv1XLllKQozOivn3bMOraQP9QlvU6HxeCAZPFUKRdf3+76d6jsmTU1EizmG5AkwmP3zzUz8wDngQqWkHoruW2SPkgLlZNXPIcSRmwEBb+WOdPlN6+0809yxVtbt3ym7ydFUF5KxDFX+6Zy0Yb3iv8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w32R5N7v8+9mZFIX5bmyqSEXPY784oWZ7ax0vwvQgJ8=;
 b=oMFF+PMkat2/rPtjIRKNGRn23sqYe4VHk59ipHdC143xBTpFDqtcWKIL854uo3I11tf81XUJYqTyvf7z8srDfBkzK7yagtiAnKnwG0z6xDRR6mltS/QQ0S/l7NB4uqsK8VtCEP1uSjQlhxhmh82iXw5I9lK7+e6b3sxlwO1ns74UJVy8eBK9BLA/JbxJmlyVIisZthwwgoWc77K6Q4KVeoMk66clQMDzpAr8WU/fCHqw0BwtQ/JTrAI8qPORGy+cbrxkY5iRkmVhIYRjQUtKHxMav2byCMW/+36qXzsgozppMOJnvN4gcnBPsDYd+FdPLAe1QeAzcq5EUVIxjs+ZSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8017.namprd11.prod.outlook.com (2603:10b6:8:115::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.9; Wed, 14 Jan
 2026 16:22:56 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 16:22:55 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 02/15] drm/i915/dsc: Track the DSC stream count in the DSC
 slice config state
Date: Wed, 14 Jan 2026 18:22:19 +0200
Message-ID: <20260114162232.92731-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260114162232.92731-1-imre.deak@intel.com>
References: <20260114162232.92731-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0381.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18f::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8017:EE_
X-MS-Office365-Filtering-Correlation-Id: bf2e0ce3-f4f1-479d-cba3-08de53892ca7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T3VGVEI1cHpHd24xcUcyQnNOY3BobklqWXYwem80bVNtaG52MFlkTUJkSFpZ?=
 =?utf-8?B?eGRNZHFnOE1aRnFCODl4OXd1QzA4S3dqZ0ZKSXUwR3FWQjBvMUlacUNMUlNP?=
 =?utf-8?B?cWNhYkhTbGlCeFhQNTZScjZGaSs4YnNKT1dLQzdibUFrNDlUZnF0dUVqZ0NL?=
 =?utf-8?B?elVoamtWYkFCeGpkbU5vWkF2T2Q5OU9tb0tQbFNML0JUQTZXR2trKy91a0Fq?=
 =?utf-8?B?QXduUGVSaVRlZTN2WEszN2RKVWI4RmpVTUpHU09TMlRNYlo2OVpqNkFZeExh?=
 =?utf-8?B?UXA5V1h3WDNVMnBsNUNrZXhmQ04xdHFlNEtTMHdFaVBWM0RjdGd6RmpYem80?=
 =?utf-8?B?S2JDMjFhUG4wWUdvQmVsTWZ0dWtUVEtKeTZ0bmZKRFUrVW5USHU1S2ZPY1NI?=
 =?utf-8?B?MXdSeXdqVFo2cUJZMmhQRlc2b3ZYOVZ4d04zY3hQZDZXYjRqN0R1MVlUOERn?=
 =?utf-8?B?T3JSYzkzR25tTW1sRU1FamNkMGZoRVQ1QWdBVnhLdmluS3dBNitSWlM1b0pF?=
 =?utf-8?B?NlN2N21kSm9kbXh5N0RERUlGSkRxb2ROOVRnaE41dzJWbEM3UTJlU1A1K3Ax?=
 =?utf-8?B?NnFncVNMRVhrMDI0a256M0xTaWk1dk1nNkphcmk1WU13YmUxN2krNVhhcWZD?=
 =?utf-8?B?MzFHbjdLN1NjOGdHZjMwRmVnQnB4bTZPVU8vRDFHYmdwQWJGQ0cvYWNRSEJS?=
 =?utf-8?B?MGRONHFqZTJJWlBVSFR3Z0xUekJZQmRQdW9iQW5ZUXA1Y2xPT2VDODNHTGhZ?=
 =?utf-8?B?eTBPbmpoV0JjQzdDTXFFdHRKcWpCTVNQc0Jwd1MvRm9jbC9wTnIvK1Z5QjBu?=
 =?utf-8?B?bFQzZGNqT1g5dUlRSFRXM3FWZGNWL1R6ZklOQW53eWE4MVhHcjNueVptblJy?=
 =?utf-8?B?UmxlR3NITnNBL0Q5ckNKVEdVZUd2UEVvWXVRRGdWMFlTNnkxRVN4c1h6ZEdP?=
 =?utf-8?B?SnFxUXJ4bWhOaFRHYkpYdUFWWmtBNlo4ck12T0xESDVYS1hHdElaS1kwUERF?=
 =?utf-8?B?ZjlVbjg3cVdoWW0vZjdrZEIwK010bUsvK1kzNTVPb0Q1OXB1dEF4ODRLYkZh?=
 =?utf-8?B?akVFKy9QTG13d0YzQXlScmJQNHRFRmtkMmdZT2x6RkpUVHdYK3l2SUJLL3BM?=
 =?utf-8?B?QTJuZHNkT2NUd0gxUnFBVUdLcC9Yd3UyRm5aRnNIRkNZU3hVSnVpV0hYT2ww?=
 =?utf-8?B?a3k1WFVjTUxDZjhPMTBVb1JYMllHZk5YUmNEdmRGMzBsaGZGaW1JM01hQkwz?=
 =?utf-8?B?RTVqWTBjb0djUXUvanBsZGtLWUZnNGgwQ2hGbHY5VTNWOEVqbTdHbytqU2VQ?=
 =?utf-8?B?Y29udEtIbkdQRUlJc013NWRxUXk3LzV1U1NJbDJacUxlRGd6d0p6dC9odUlw?=
 =?utf-8?B?OU5Eanc2MnJmUHRmRXQ5S2RlV2xPQUN6L3BSOHhHajZ4Y1dPSmF4WkwwaG5T?=
 =?utf-8?B?aGlEWGJkRTlBcGlnN0sxai8wOWR2cmZvczZMRkdoR3hEQUNCRUJGUDdNYUZK?=
 =?utf-8?B?Z1JDWGIzMXFFcmR1ZjZ2L0VHNkxxZUpqbEZzdDZ0a1c2YmpOdmNMbzBtcmJY?=
 =?utf-8?B?djlPL3RvL3RVbys3YVVJMllRTndtSU12YlVCSzBENldGWEt6YzZ3NStjY2xF?=
 =?utf-8?B?b1NJdUtEMERmdDkxQXBoUkZOREZOVnVDUHk1dU1nZkFISUtLOVA0Z0RqcWEx?=
 =?utf-8?B?TkpCc3BHbEE5UGJoMnBkZUZ0c2xZTHlsZ0l3dlQyNTNDS210T3BZU2JCRHNN?=
 =?utf-8?B?b2phenloR01mcVBoYWZNMEg4c1FScHZHb0tUZFdsZVlEVWN5WmJTQUpsdGNq?=
 =?utf-8?B?am93ZzE5ckI5YWw3RUNRWUNQOEdtVkxaWTNnUGU0VFcva3ZtYWhMTzhpbmpL?=
 =?utf-8?B?YlNqM3FUWnRxZklVNzJmRTdCNFBBZ1dDVVZyOStxaG5qMzdlbTI4K1AxZzNB?=
 =?utf-8?B?UEtKWkFYRE9UU2JPTHJUUU90blh1NExvR0dQMTMzSFBaN0IwaE1sQ0UvNU5v?=
 =?utf-8?B?VU9TMnY5Q1cvbWp5SERDbUJYZmd5dUlaSzRRQ0Fna1FVaHJnTzY1RU1wWVVy?=
 =?utf-8?B?bVRKNExGUXg2NWVDVGNBV2JTY3lKNGVYb0JuZGxHUERMM0g2RWQvMEE2aURi?=
 =?utf-8?Q?0+c0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZTEzZEhEVS9YMENlYWpQSGFFNjB1NlRJUS9RbzV6T2tQQmNEL0Jwd1Z2TzVV?=
 =?utf-8?B?cWJFck5PVnJFZ3A5MFNiZnJVREpPUGx3NEVlRVArclh6dktRSk1MeElqMGNy?=
 =?utf-8?B?S1NGakhUTU1nTEhxc0JUa29zeEJQTjZHUGRkSG42R1FrR1RpQkVrbFhsRFBC?=
 =?utf-8?B?WUN4eDNtT2RJMno0Wkx2VkFuZFdRZk9iOU5OTjVUQlhiMDJsL2FCN1FHOXV5?=
 =?utf-8?B?RDd6SE5YUUNib05Ja0daL0w3dnh2blRpOUgzM3k3M2xwb2FBZWUzOUUvTi94?=
 =?utf-8?B?QnFpWndMV0VqOG95dXNtMW4wTFFISi9GcTZYL29xUjVBUzVSVU9Ua1RwUEor?=
 =?utf-8?B?VkM5dW5iU2NZSTdoamxWUnZ5MjFQVStLQ3cwNHI3RWlEMkhPMlRwODVGNzVm?=
 =?utf-8?B?d1lnTkloblNYYkNWREZubTlNbXVFK2w0WXJpNFFPMVZLbGpQSnNlUFJnSHFm?=
 =?utf-8?B?LzFnelh3cEV4NlprYktjNFVvcTU0bEF2QXFTSzVxYXhwR2lmRnhERWtyanlI?=
 =?utf-8?B?OE5xQzA3MWVRZlhYNmVxNFIxRXhCdzhUWEs5dFdING9Jbzhoa2Z0bXVqR3dD?=
 =?utf-8?B?NThPRnlPT3NOVmJxdlFtM3ovR1NsNnpTZ3ZXZEhnM3NQUkVQN21hU2FtZ0Ir?=
 =?utf-8?B?OVZrMTh2dHY2RlhWYVJuTktBZCtCRUVDbURRcnVLbHdWTTN4VTlYbVFWak5L?=
 =?utf-8?B?R3h4ZDFGUThkbmI3SUcvVnBnVHRDV3NUNWxFMU5XZFUwaHFvN0hGY1JDQ0lh?=
 =?utf-8?B?NnlqS2VBOXhHY3hKY1o4RlIvcHlIV09meHppVTJac2h4R2hWS0c0bHlCWVJ4?=
 =?utf-8?B?bkZQUldVTno0NFQ4N0U0V28vVFJZTEFKNVJwTXZhdDFaamJpcm5MU3grWmxN?=
 =?utf-8?B?eHdSZnlZS1I4d3BXeUFORlh3dVByNSsrR2cycmx2aWtPTHJmbnd4ZE1HRUgr?=
 =?utf-8?B?VjBJUnRqZUdPbjkzVXRkaDEzTVE0WTg0eTRyYnl5Vyt4R0t1bTlmcFgxNkhP?=
 =?utf-8?B?TmFkRnlwZkpsS0RYRW00cS8vK3hvMkl2ekQ2MkxaVDF3UW1DUDN1QXJNVUNM?=
 =?utf-8?B?UWpLbE1yYXBWUVZ2cEpjMWtOSnhibzRNYjNaTXFwN0lKSHBwS05WZjVxenRJ?=
 =?utf-8?B?eEV1UXlSQ0lpVW13cWMwdFh5U0VvOVo2MllmQkwvZmh2Y2JsTXdCeDVxd1c5?=
 =?utf-8?B?SU5aWCtVNS9GaGdlNVA0YmlWUHJNbGdXMGVVQyt4TDhTWTAyOUpSaGZ1NHRH?=
 =?utf-8?B?MnlHY0RoT3JPOVBDUXdoUnlSS2hIdFhNeWw0a1d0VCszR1NmUU11NkxuWWJX?=
 =?utf-8?B?VTlKUXozQ0JSQWMzVDlPZk9PUmJtMlgxK0hRdXZ4cHhlVERZQ28wWVk4dTNJ?=
 =?utf-8?B?MHllUXV4aXZkdVVVckZpcXRwaHg4TjhrWkpKT01sb1hac3V5UFFGTDU1WTNT?=
 =?utf-8?B?T2g0SkVSOXl6TDhTcU9Na1VBelEyQ0MybmhUdStHMTZwT3BKSTZrMnc5MURR?=
 =?utf-8?B?OFhhT2lMU3RrRXA4MDM5K3ZaV21BQnFiSThrRlBZblBmU0QvYnZ2UER0Z01u?=
 =?utf-8?B?RWJFVCszMkhTZkZnSWZNQlJuZ3NId1YzSmhoMkZaVUdlTjUwcXExSVNoZ2I2?=
 =?utf-8?B?MGg2SFRPTGFYVUZCcy9zUk0yVFREa3g5eGJ6WTlrVTdwVm83c1h0OWsvaHZJ?=
 =?utf-8?B?Y3dpTkRjNXZteDVHNG1nZk9LWEs0NVovUk81MmRzQ0xLOVRwZzFodGpsMHJj?=
 =?utf-8?B?VjRnWDhkcHdSYTBySXU1UnEvN3R3KzcxOFFLMHVFd0Z6bUZrTTd0RXJibU5z?=
 =?utf-8?B?bkxlRmtKMDdBM1hLejJ4cHhOS3BLa3BBWlQ1WERlRmZRMWdRanlzSXdoWDZB?=
 =?utf-8?B?WHpqeDZjeHlpYytiY3lFVWQxQytpSWx1ekErZEN1ZlRwUDNMNWlZdlJxaGd6?=
 =?utf-8?B?RDE1eDVWY0E5Z0NuL1YwazVETXJraEE3cGE1ZHNmYkNUWk52OWZnbkg4dHJD?=
 =?utf-8?B?UnIxd3NwSXY1SllEV0VsSjI3UGRrT1BJK3ZGL2NINmliQUhOUjJwd1poZlpC?=
 =?utf-8?B?ZW9FQXAvekpoU2FCcURmQm1vYmpmaGQxUFhsNlc5Si85SG5PTDNPMERmaits?=
 =?utf-8?B?b2llY0dUVDVPL3Voa05xaks5R0JMWFQ0ZGhhdDh1Vjg4ejV1Q3dKejlYWEtK?=
 =?utf-8?B?dTBMa20zOVRrSXFYMXNHUXY5bHJJcEVXUXZyd1B2TjU3ZEdDbXVtOTRTUU4r?=
 =?utf-8?B?UFQ5c3IxVEZ6ZUxnU2FkZ2VkWUQ0M1VmYTFTTzR3dW9ia2dxRTJHdWZqMThj?=
 =?utf-8?B?TGkxTGFuTUJIbVhrVlVNV2FGRXlBTU50WkttN1B2SVhHUUpFUzAwMkR0c0FL?=
 =?utf-8?Q?ihu3fpNI11jogQhIAXARokWq31fvuUshLhm9xK6de96PB?=
X-MS-Exchange-AntiSpam-MessageData-1: Hl2GoyENO3ADpA==
X-MS-Exchange-CrossTenant-Network-Message-Id: bf2e0ce3-f4f1-479d-cba3-08de53892ca7
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 16:22:55.9403 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xi8y3cCo4JZeZc+qRUmZyppPpewy9vurS3HlWkpJWqhF0nSImDPZU101RNOD3lnLtd+keu8Gu1/B1yokciw+/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8017
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

Move the tracking for the DSC stream count from
intel_crtc_state::dsc.num_streams to
intel_crtc_state::dsc.slice_config.streams_per_pipe.

While at it add a TODO comment to read out the full DSC configuration
from HW including the pipes-per-line and slices-per-stream values.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c             |  4 ++--
 drivers/gpu/drm/i915/display/intel_display.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 -
 drivers/gpu/drm/i915/display/intel_dp.c            |  6 +++---
 drivers/gpu/drm/i915/display/intel_vdsc.c          | 11 ++++++-----
 5 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index dac781f546617..5b64e8d6e8382 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1626,9 +1626,9 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
 
 	/* FIXME: split only when necessary */
 	if (crtc_state->dsc.slice_count > 1)
-		crtc_state->dsc.num_streams = 2;
+		crtc_state->dsc.slice_config.streams_per_pipe = 2;
 	else
-		crtc_state->dsc.num_streams = 1;
+		crtc_state->dsc.slice_config.streams_per_pipe = 1;
 
 	/* FIXME: initialize from VBT */
 	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 81b3a6692ca20..7491e00e38585 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5459,7 +5459,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
 
 	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
-	PIPE_CONF_CHECK_I(dsc.num_streams);
+	PIPE_CONF_CHECK_I(dsc.slice_config.streams_per_pipe);
 	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
 
 	PIPE_CONF_CHECK_BOOL(splitter.enable);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 4d5d23cd46f25..4f73a41f02984 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1333,7 +1333,6 @@ struct intel_crtc_state {
 		/* Only used for state computation, not read out from the HW. */
 		bool compression_enabled_on_link;
 		bool compression_enable;
-		int num_streams;
 		struct intel_dsc_slice_config {
 			int pipes_per_line;
 			int streams_per_pipe;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7e022c47e8ac2..396c25d15af5d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2418,11 +2418,11 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 */
 	if (pipe_config->joiner_pipes && num_joined_pipes == 4 &&
 	    pipe_config->dsc.slice_count == 12)
-		pipe_config->dsc.num_streams = 3;
+		pipe_config->dsc.slice_config.streams_per_pipe = 3;
 	else if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
-		pipe_config->dsc.num_streams = 2;
+		pipe_config->dsc.slice_config.streams_per_pipe = 2;
 	else
-		pipe_config->dsc.num_streams = 1;
+		pipe_config->dsc.slice_config.streams_per_pipe = 1;
 
 	ret = intel_dp_dsc_compute_params(connector, pipe_config);
 	if (ret < 0) {
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index f8e4b2aa6c176..4a3d505338cb9 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -421,7 +421,7 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 
 static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state)
 {
-	return crtc_state->dsc.num_streams;
+	return crtc_state->dsc.slice_config.streams_per_pipe;
 }
 
 int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
@@ -1023,12 +1023,13 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	if (!crtc_state->dsc.compression_enable)
 		goto out;
 
+	/* TODO: Read out slice_config.pipes_per_line/slices_per_stream as well */
 	if (dss_ctl1 & JOINER_ENABLE && dss_ctl2 & (VDSC2_ENABLE | SMALL_JOINER_CONFIG_3_ENGINES))
-		crtc_state->dsc.num_streams = 3;
+		crtc_state->dsc.slice_config.streams_per_pipe = 3;
 	else if (dss_ctl1 & JOINER_ENABLE && dss_ctl2 & VDSC1_ENABLE)
-		crtc_state->dsc.num_streams = 2;
+		crtc_state->dsc.slice_config.streams_per_pipe = 2;
 	else
-		crtc_state->dsc.num_streams = 1;
+		crtc_state->dsc.slice_config.streams_per_pipe = 1;
 
 	intel_dsc_get_pps_config(crtc_state);
 out:
@@ -1042,7 +1043,7 @@ static void intel_vdsc_dump_state(struct drm_printer *p, int indent,
 			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, num_streams: %d\n",
 			  FXP_Q4_ARGS(crtc_state->dsc.compressed_bpp_x16),
 			  crtc_state->dsc.slice_count,
-			  crtc_state->dsc.num_streams);
+			  crtc_state->dsc.slice_config.streams_per_pipe);
 }
 
 void intel_vdsc_state_dump(struct drm_printer *p, int indent,
-- 
2.49.1

