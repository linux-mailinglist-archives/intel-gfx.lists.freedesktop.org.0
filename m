Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id pDVVBXn8E2qDIQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 09:38:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 695D15C7334
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 09:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D77810E07F;
	Mon, 25 May 2026 07:38:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aDLuTFxB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BDEC10E07F;
 Mon, 25 May 2026 07:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779694710; x=1811230710;
 h=content-transfer-encoding:date:message-id:to:cc:subject:
 from:references:in-reply-to:mime-version;
 bh=WzJHND1xaac8IMf0psGRFgsdx9uEHKVqFyXroKRPvCI=;
 b=aDLuTFxBP82ngnwIgg9NbXlslrvWV8AbyqJcLIVR1DifkfQk9ubhrsju
 mmls7kfIa/aoAIP5JY9e6mhqdPdxkSdUioW/6ZHZ4BinUmxY3rHLwp5lx
 iahhXuzRUgL3C7/cpBy9ZjucStTuSnmBdRjWCIKr6Onop5wpqQOKpUqGD
 KItWxlDg+ElEDt3FbMOz12h2jCMb/zfnIqCj2XZ0736BEdL6CGnp/930C
 m0q6rSpNJfMieXzhlDctI2H0PuDFdOsNbXQIr4LdTWM4mZw6VAGfyF7QI
 WQU9MQLI4K3AjjolqKm399zfmaLeJlkI8uUaqzb699NxTrFNKNE/uMjii A==;
X-CSE-ConnectionGUID: l8wlSHcOQMqNsQRub8Ip3w==
X-CSE-MsgGUID: mWMlxrMaRKCNEKAYszO3XA==
X-IronPort-AV: E=McAfee;i="6800,10657,11796"; a="103193736"
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="103193736"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 00:38:29 -0700
X-CSE-ConnectionGUID: DlwJGFAMSEigGGdFJngjqg==
X-CSE-MsgGUID: 1epkdFNXQbiILjzUdRCLyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="246501350"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 00:38:29 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 00:38:28 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 25 May 2026 00:38:28 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.26) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 00:38:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PokAECBULrUg9Ffn315/jrnAFRDHQt/ZRRmS3KUNlKTogt6D26sS3o/nBWf0Db/HKP08+ldxrD+p5MmvF4bZk9QMulFybV4wqLihrVEeT4Sj199rQiqJEKegrLDqHR/Dji8YvBFxhexa3cVCpSry7+h9tpqCQKiyL3rv0GPQ1tCn/4wjM0dTTa3IkC4z3gEspi61blFCJi2WcGNLEBK1EKNGyOrd+VaBQ1RGBNzRv4WhyZjBOyo9uwGs0AGFJMa4C1yr2h7xOXEiPcRnxeHJP2jjGiByr2DPyr8SIWKWnQOUc8lht7UeqOXMsjjiEoa1WKBClA/8LWyeEvdPWOP+7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ybHN+yU7p/c1t2Lc7JBnZwjracgnsv5QWWECqkWMgt0=;
 b=m3eSveGIJh3VvU3yawM3g1otlNbv1SIUTAJ8klyifZoOpA5Q6+s8G1P10hyz5jjCH8NhkASgfOvWrBDWR4AhJV9nMWQjX+RmxZAEaGEKng6h2X3e3MkTz0VzTZd1hoC8AkzujesP/8HO/aBrp67x87dAeBWmY5JQVmWrnFOA/eHqpi5zU3SYU+sZiXZn6iDOVXEgBlV1XJKApDaJBWjNttGH92wVPiJ1uTonii3sAh1p4ehNg29TGiPJgpBexk4EIfg/1kvbvrbMv5a307qYZ5mQ2q36+yaETdjv8pC5Yduxk1kezZxgi3e+kUfctY8k4Cwbyz3J5/aDjft5Q2Cj1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SA7PR11MB9596.namprd11.prod.outlook.com (2603:10b6:806:4d0::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.19; Mon, 25 May
 2026 07:38:23 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.21.0048.016; Mon, 25 May 2026
 07:38:22 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 25 May 2026 09:38:17 +0200
Message-ID: <DIRL490A8XSL.30G5NSPVQW3U0@intel.com>
To: Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <dri-devel@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@linux.intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH] drm/i915: Remove drm_dev_unregister() from the error
 path during i915_driver_register()
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
X-Mailer: aerc 0.21.0
References: <20260522154356.47588-2-krzysztof.niemiec@intel.com>
In-Reply-To: <20260522154356.47588-2-krzysztof.niemiec@intel.com>
X-ClientProxiedBy: DUZPR01CA0056.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:469::7) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SA7PR11MB9596:EE_
X-MS-Office365-Filtering-Correlation-Id: 81ce044e-0e6a-4e76-6333-08deba309912
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003|11063799006;
X-Microsoft-Antispam-Message-Info: j239jv5D4GdFnBtUx2G4N76l011arWx/9spdqMqYP9RnH+Ibzy41TQVe4KBw2WiPYXy1KpGPncPb+z8rOOoGqilTgEwpDVSW5UtGxIQix8YodVbSPpb7YIl5IdawF1YIgY8cjAVxi3gQpw1TdKaFgFcszrAfLJPIeiWHu7LeX12oQBoUAatm4/QNPOcAqXx/fHvhUIOI1pR8Wn8Wl1ugTkrOWTVx4Llw14LqeojZiY7nYZ+ns7wkyPqh2o/+cs5J0DMDHMPJmPe6RvV9CjMS8SZfvBZpxq1q3OkDd/f9LbQQ39dK7masbSABtALMJzl40ls/XGiDJibr/axM/spXoDjvi+xNfY5c3/sF8EALKUxZKoqAfNdq0cj1RVSrRwMOIk2fQf7u5her8j+q2OMhh8HKL2ROGAr/2fb8pI1XjHpNDRzjQS5nwxLG/1uH1FDDSGvW+XViKSZgg4AAHcbHMn0KyL09IA3mscOqtKya6HAJ/RXCpar4T1W34E+NqzX0RxNAZAJWq51ozjCt7sGQ5y4nAk5lpmhOPEsVyTBlFOU5d/XsySAkoJTHTHa8Cc2sMWjpsIARiureCAum3VU079SjodW3LCTn7nivw8TCY3TuW2RD7kOLUzpn2FEH8pxNPvEls40xyxv718BJ9kzIUUVeGTUdYgP6yjkvMhxV3eH7EgSYYmVIZ4BxWkiyilvj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWlwdTFZK3Rua1UrMmJCWURMMmJDUmQ5UUxIdHhORlNhTlV1eWVWSmxmWm9E?=
 =?utf-8?B?NVo0S0poWGVtNDQvbHdJcXdwVWlYQ2RtMnd5ckMxYzlPU0E1R014dUZZY2dK?=
 =?utf-8?B?WExFVmI2NlpkWWxZL3ZlcFRIM0lZeTltUFZVUFVvSDRLUmswS2xsbzZKVkJE?=
 =?utf-8?B?VVlySWJvT3hPdWNlQnlSMDZDTE1jWUdpcGsrQ2VjZEZvM0cwbDgwTVdoYWFS?=
 =?utf-8?B?Z1llUCtWU0pqak16YS9oUE1zZzZZZmt5dFpBNTVjY3dCWjUxZGNoSytML2Yr?=
 =?utf-8?B?RjdIbmpDY08zWTVQNGVJUFE3M1dBalllcVJEV2pIYkgzaWdxRXE5eGdjNUZu?=
 =?utf-8?B?Y25jTUMzQVczd1hQTWtLdzg4UU5pVkkrcFMwT1NTLzJUZ1Aybm5acTZJQlFj?=
 =?utf-8?B?WDlQNjZsL2R3TkJrbENIeUZZV09VWTFyQWw5ZXdCVFFST1cwU0J0ZjRTdFZ0?=
 =?utf-8?B?N0ZFRFFpVzdpdEkzektLcTd1NTJrcTVvc1RrdXh0VEpkNmZlSG1kM0JHazZw?=
 =?utf-8?B?U3pyajdLSGJoalVyTVRIREM3MEhlejIvdmdPclBtY0tBRWRaV0I0YkNLc2VZ?=
 =?utf-8?B?ck9ZV3czNk1xOFFORlA3Mm9uMEkwSDczZjluLzBQMSsrdHZOUEJCeEFQbExV?=
 =?utf-8?B?MVRUL2k1WmYxM1F4bEpIenVVMmsyR0pFcThJWFZFdWw5RWZqdVpzd292cVEz?=
 =?utf-8?B?dXVjZnNlUzdZbWxDa202L1hnM0JweFBuM3V1L2QyM0FHNzlFVFhzVmJKdEpK?=
 =?utf-8?B?Q29GSmRFT3g2a2k3M1pWcVluMS9xdWNVYXVoYVN1NEo3UDQ0Wkd2cE0xS0hT?=
 =?utf-8?B?REpUMmZzVTkva3A5TTg0elFiTS9RNnR6Vm1kMnZmU0hOYy9vOEFMRW54YTlC?=
 =?utf-8?B?NXNFTmxFQUNJczhTNjZpQy8xWHZTTTEvRFJ1WGd5Sy8vbVovSGUxeTNudHdJ?=
 =?utf-8?B?c1g5YnIwbExJZytVSXhrTVl5djZUN1luVU1iOEY1bXJZejMwU0J0UWU0ZFhR?=
 =?utf-8?B?dnE0QzJJa0lWZ1ZZSzBZNzRRaHBLd1l0UytCTldSQ3VIc2dzcVpoV2pkSnVr?=
 =?utf-8?B?NGpPRnViRnhTelNLa0ZMczRnTGVMYlFLQ2lkSnFscFVYREp5Wm9RZHNMZWp0?=
 =?utf-8?B?NkZ1YUIwTzhTWjA5ekRqNXA3Mi9CQk1DNUxTSDdURnZ2RlV2UENBMHl3eG9Y?=
 =?utf-8?B?YkFWUWVRZm9CK0xZUEh6bVRuaTVocjhVeC9Hb0NneXpYRFRlZk1RNjVHbGVr?=
 =?utf-8?B?ZmwrM3NrajdyZFQ3UjU0TGRET2c3cUcyUkxoV2JFL3FjNExGZDBwVnRSYytX?=
 =?utf-8?B?bzNUSUJCMnlOV05CSERBeDJrSG01d0g1d2VDSXJoRHFpSjJ4T2dnOFUxMThh?=
 =?utf-8?B?Z0FjZWFSaHpVblo0OTM1TGY4OFkvZEtOU1drRG5KVk5lalV0aDRNbWFsemlK?=
 =?utf-8?B?Zy9HUis1OSszNU9EempYS1NtZ1QxRStTeUVoSDM0WmNGNFRsSm9xallQdGlO?=
 =?utf-8?B?eC9LcjRtZjdIcmF5K3ZyWmZzc0ZEbG1yZUUvK3U1V3c2dE9oQ1pUaG42YXpa?=
 =?utf-8?B?QnlJSmJDcUxwazkxWkVrUDBPTW41cE8rOG51aE94NTJuaVFBQzNPTlJkeHlN?=
 =?utf-8?B?d1hHRXBFVExYQmV4Z0gvclJPbEUvSkJyRVZTQWw0UUl5Y1oyOTc3Tm9BQXNG?=
 =?utf-8?B?WFNjT1IxM3Y4NWMxNTN6L0psZEQ3L0Q1VFZpeW1YYnBlN1VTTFlPOFVMTXZt?=
 =?utf-8?B?Njg4WVFQL29ya2tWeU9hS3NTYUw1L3FtT2dZekMwaGJ2bDBPZURwS25ybWhv?=
 =?utf-8?B?dW1pNzlsUC9rMHFiR0NvbVRYQnNVRDlUV3RLaW1FZWxLTVdRMW1qclM2SU1Y?=
 =?utf-8?B?Z05IbDNFbW51aG9zZ3BqSitGcFRXcm1wdEEvWVltUnIxellUdFVIQWpKVitR?=
 =?utf-8?B?eVBManNPZVVwdmoxd1RJSnlXemxnTGc1d3YzeDZ5L2thM2cwYjd6RVMyMlYr?=
 =?utf-8?B?cm50SThxZFBTcTlnWW4xMHdpdVErcDJlUmgwdnB2dVhSY3FOWSs1alBsT2xZ?=
 =?utf-8?B?M0dVS0dBRTQxMnFWNkhoK2hOeDJobE1TeEorNFBFZW8wT3ZSUm1JR28vWFNM?=
 =?utf-8?B?REFCMGY2NU5uOS9wMkhUcW8zWUttbnk3WTlDYXBpajBjbStTNkd4SDg2ZFV4?=
 =?utf-8?B?MVhTRTcwTTc2bmFoWkRJSkx3Tk8vRjJnNVJyS21Rdi9oSHdCdC9qMkI0R0Rq?=
 =?utf-8?B?OE9XQ3dUcjd4cjdGU0VLK1MrWFVsVVdSaGxBZWovS1hldW5keUgyNGdDeXRU?=
 =?utf-8?B?ZUdnQWVtdHlyT2M2Q3VRZ0RQQTBpWm4zd281K205MGVPa0ZvVkNhUTBoSURZ?=
 =?utf-8?Q?9as45P78/54aiakU=3D?=
X-Exchange-RoutingPolicyChecked: M3VVX+nDinEUXKsLjVXDkHMNwZS8b1Nwfo4S2gkzcMCm5nNroleoRBUUBS9taGB7R7wr5GXBJmwTEAK08lC3UlOJ4RaCCnv/Q2WccvKYLuWzQ2w/jpD+0LOkMutahk25dmcvExFJGHVmhUW/gMyDA2rUxauDCmMXxXo20wfAgNmFgjQiojFvf/Cx8W9RhCaBEdgEHjuI7wFp1uw8W1+IUf8doxAcuicAMym8uQeOsy0hzr9u4rKSxnvPzk8YPJb2FRTPbYinG1mplxK+ezsehFlgN7tZy3b492+EaFxK//MQArOZaDWo13gkORToVWt9IFZyNcPN/xA9CDah3HwgwA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 81ce044e-0e6a-4e76-6333-08deba309912
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2026 07:38:22.7450 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dZ7UNs0/FlHh75jwyhMVQ1XaH34LNrU3adD7HW7rYM4TNAlaLI/uG/ZQAGe9il8DnUcSAY9fHOsxCje9gDWKGyksXvPLIzz8ZJsPdvjXyk4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA7PR11MB9596
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 695D15C7334
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

On Fri May 22, 2026 at 5:43 PM CEST, Krzysztof Niemiec wrote:
> During driver probe, in i915_driver_register(), if drm_dev_register()
> fails, the code enters into an error path. In it, a call to
> drm_dev_unregister() is made as part of cleanup in case drm_dev_register(=
)
> returns an error. However, this is unnecessary, as in case of an error
> drm_dev_register() undoes its own setup in its own error path.
>
> Calling drm_dev_unregister() after a failed drm_dev_register() also
> generates a superfluous WARN_ON() from drm_client_sysrq_unregister().
> drm_client_sysrq_register() is only called in drm_dev_register() if
> there was no error in the latter. drm_dev_unregister() calls
> drm_client_sysrq_unregister() as it expects to be called after a successf=
ul
> drm_dev_register(), in which case the _sysrq_register() counterpart is
> called. However, if the call to drm_dev_register() failed,
> _sysrq_register() is never called; calling drm_dev_unregister() will
> cause _sysrq_unregister() to be called (unconditionally) with no
> corresponding _sysrq_register() call before it, which is caught in the
> aforementioned WARN_ON().
>
> Remove the redundant call to drm_dev_unregister() in case
> drm_dev_register() returns an error.
>
> Signed-off-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index c10cab38935a..10e16002050a 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -638,7 +638,6 @@ static int i915_driver_register(struct drm_i915_priva=
te *dev_priv)
>  	if (ret) {
>  		i915_probe_error(dev_priv,
>  				 "Failed to register driver for userspace access!\n");
> -		drm_dev_unregister(&dev_priv->drm);
Overall, the patch looks reasonable to me, but I need to doublecheck
it. It is definitely missing a Fixes tag. I believe it should be: Fixes:
223038731489

>  		i915_pmu_unregister(dev_priv);
>  		i915_gem_driver_unregister(dev_priv);
>  		return ret;




--=20
Best regards,
Sebastian

