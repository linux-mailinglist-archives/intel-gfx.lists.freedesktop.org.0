Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WfwbBYpeS2oBQQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 09:51:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F70070DC80
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 09:51:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=Z58YTEGJ;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4FEB10E230;
	Mon,  6 Jul 2026 07:51:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23A69897FD;
 Mon,  6 Jul 2026 07:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783324293; x=1814860293;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=b9cmwxzNUYOcYYqnqybE9yAjPAMsxG4009VELPj0kpM=;
 b=Z58YTEGJ2y4nTEcylPBE4uicc/a84qD6VykwCJmD9diLiuGeCFEplxw1
 GuEavgfZKjxnIpTcUmBeXv+9K0GCd2ZCGOxf9i4B6oJgfIP4RINmAsXSM
 +pxbtoJ7D1QCbrTubkwwfp+UNgeWuQsgcV66OzIVURBkzARsJUHsKQgvZ
 8N1coXuhKWrw5VFCxSiGNNKpHsYCamvpJrnsXvT6QKWmm1Mqx3Ad7e/pS
 Ct0zIeG+5SzsuW4UlnC6KVyZkmabK77kHeetORmrrVBbePqRKgNeyvm8D
 b5JsTpXHb6nUzc42OMu8vJYiB47JC21iKGTO7ba7xDbkdB8lUDisVYaI2 w==;
X-CSE-ConnectionGUID: gnU3SmLQSt+3TtPUKdXftA==
X-CSE-MsgGUID: TwWJSU5gT6GI9fId4aV0Xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="101498087"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="101498087"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 00:51:33 -0700
X-CSE-ConnectionGUID: 0uTRdloaQDOFhyp6vh6mzw==
X-CSE-MsgGUID: CXy2F6+5SUea05bAfhO4cQ==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 00:51:33 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 00:51:32 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 00:51:32 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.56) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 00:51:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yRqtq+SxgjW/TLsLRSap30zWBcw4s797XTqDbAT3QCW65r/JxlHDsEFNqZKx3Ycu/WGPUKBRH3+YcHwALW353pxRFehYUZ9+W1gB2PfQlNahBZxbQokbYf/zVgq82cWfQlyblWUL5CUShO6sa2QKp0wbpCeERDA6K/ubpXPQUzoYBwvITw65JR0pu3ojenQUMuoxkCtK1Ck0rQvHsqvAVKimiDsUS/eQ8YRA3eeuvNLWrTZ5+pyv5VgzoRbILH//Shbhge5ZtexxDN6XD8Pjkvn/cAsTcBAHnvyYMlkxfrkAex/IVH8Fq1KXEUHOFyhds1gazF/10U5dPEmtJtdzIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RidKEMD3N8j46FA0XZWlUkR1/xrGia41f66/S1b/IyM=;
 b=GL98dwBSQ8nfbweqTV8rk6AfOQdoAKSOxI3e61BQjGeUbHJC3a1B0LpLGJEdB9u9CZAnfCCzzvm9dGDyWdF6TD4QcAplOseHlq0PoSYgtodTdFonI3zm5ufKNXM9Xf9vUSS0K2Q5xPT2nAGYnWmxmUv0N21Gu1WAM7Q/sp2uvN5Sc7IxC9faydfGBKxdfEflrNyoWBo5lGjFF2R3mDo4VuXpqIDUsGj8IDokCskdUYw+wffN0e4ylUx5WUZ3f2+LXVV+/WXWTmsBG8W+zwoGH3vBs4PeYWeNYk7yItT3cI6xGVBOomC+NdlGjis0YyF/7jXcFuyse5zo/beMf6PUGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SA3PR11MB7536.namprd11.prod.outlook.com (2603:10b6:806:320::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 07:51:20 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 07:51:20 +0000
Date: Mon, 6 Jul 2026 10:51:15 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 34/34] drm/i915/kunit: DP link: add fallback tests
Message-ID: <aktec2XYS2POPduM@ideak-desk.lan>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-35-imre.deak@intel.com>
 <d1a4f146-384e-bc6b-f13e-b5bb66cae6bb@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d1a4f146-384e-bc6b-f13e-b5bb66cae6bb@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF000239BE.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1bc) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SA3PR11MB7536:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a503b10-f91b-4673-b0d0-08dedb335dfa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|3023799007|18002099003|22082099003|56012099006|11063799006|4143699003|6133799003;
X-Microsoft-Antispam-Message-Info: zEK+zq4Bt1GQrK78Iw/jiPd7xv6pOERMJjH40lnwY/sYk15+vPOIYyk2+/kv7kLqbQ4QyqlFBq2p6ahd10JDzzeOoNNb+Rfd1eCQwhWVIoEjYsIFV75ATLG+OehcBdDuTRg9evXPHGf3+ieL9tYvb5xwKJ/lTbSBN6T1tRPJjjxE36wq9afOsZgtIUvl+BCoE+PDcX+2ZHd+heBMB11gCJcI/oV3KazB4gIrStroV9a1HnIUo0GtHfhtI1lwZWrRtd+fLOswwTULUkYOahUi/CxqRN3sIvIYpEEYhp/19ldynAgWJz0IoOISxQpim6tjcxRqOLOyv0jlcX9+c//SSniWtjX4W5Uc1rHRUwk+47GS4eVUnWHF+LpDH8N9shMqHBgXkkJNMuxrt3X0VU9Bq7jVUBbgW1AgycmTM44INAB78pFUWh0+rJd3/FoZ1SurYVykZ2SrtAQV0iNfR4huU6n9G+FJWPB6HMPdQQEjNou/8hcU0lyVLjcGf2LFoqqlv8d9ZY913XPOwJEAKnJz4jMiVaUEop2/UpwuPd22V21zmnbtwSH4htoZLtHsX1y+uwUMkySzRkGCnOEqP7TVo/9wtRxqhpfGIkRGcpsFqJrMKOdawEALJzZa9Ic+yJYFaKA+9WgAS//vBoNzgS4e4P97E0s68EPxsUye4qMnHrE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(3023799007)(18002099003)(22082099003)(56012099006)(11063799006)(4143699003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RHR6d0EvTEN5bDhmdVBSb25NUTkwV01UNG4wYXdzR0tENzQ4VXdYakxuSVlC?=
 =?utf-8?B?U1ZHNHZ2Ri9CV2p1NUFDRjAyR1lFUkFpNFFWSFB0U2pjYXRCTTZ5Ny9kWjE3?=
 =?utf-8?B?cVJQTnduY3RIa1FaSUVQVkYwTFBPRGd4VWRjT2I2eHFucXhrS3Y1YUNYQ1Y4?=
 =?utf-8?B?WGxIeWxkbjhtTmtuWW5DVG9xTXR1SkhJZlpBWnV0Uy9Ddy9CZlplY0szdmFr?=
 =?utf-8?B?Tk0yUy83dXljQXk5RGR1V3VWRy9pNit3azdadStIdC92QlRnR0lqZWdzZm9K?=
 =?utf-8?B?cXFXbVBuWDlqMnB5QlNLazFKNmVwbmY1SDRjUmRMbUZQQ1BBRkhPVkhtbnZt?=
 =?utf-8?B?dm8vMkFDT3N1TnpIcFJyd0ZhUWNTd2JxNnpEL0g1RGNHMWhRZzRzbHRyUEhr?=
 =?utf-8?B?ZkVuSHlOTW5nREpOSGxpZ3d5dEpUeXU2ZythUWFHT3Q2MktqL09CdDNkRFAr?=
 =?utf-8?B?UVJwOVZyREkyYURZTW1LWkZPdkM1MjF6aUQyNTBWVVdkNytIZ2pqaUtGc2Zq?=
 =?utf-8?B?eklLYXF5S3FPSlByWGlBdXlLL2RaejlGbVVzdVFxVzY1b1VqVUtrdXRkNVR2?=
 =?utf-8?B?WWNCT3RXUjJROXlVdTR6d2lVTTkra3Bsc0pOcWZqTjBXaXlZdVdHaVROQWRR?=
 =?utf-8?B?MjRhNndJb2ZueVNZTyt1dXREUGVQdmwwZzVHZnFMVEV0ZFFRS2ZqdFZjZU1U?=
 =?utf-8?B?RktvZm5UZFZZS243K0NIVml6SmtsYk5NV2xRVzI4VlBpczJaOUFHMWdZaldT?=
 =?utf-8?B?NEFBQ1d0MnBYVDVIYVVxVG5jMTBrbHd4emljUDhLeEVSbmxneTkrUWI2RG5n?=
 =?utf-8?B?Z1BZeU4zOGdlZVh0WDdRaURBang4MkhwWjRJdnl6OW5zYUxaT1R2VEhoRjR3?=
 =?utf-8?B?eWZBRGdoS2ZSd1pQQmIxM2FoVCtwaXRCTGpjL2JjVituY2M1bWh3WDkvRDVi?=
 =?utf-8?B?YWh3aXpKVFZQcDRNKzYxQncyU2U1NG1FWGZaQ05TUVZrQVZib2tvWGxjZkVv?=
 =?utf-8?B?RXRnNzh3MjZXQjNDWVZtQmlSeWFUUHpyWFh6OHpjbW9jV0VieWtteGdIREt3?=
 =?utf-8?B?alJMQW5nSnJmSjQrN0FtR2NxMDZILzBxWXdkNmgybmJwZWRRMk1TY1kxZ1Vn?=
 =?utf-8?B?d2l5UXVZcUdTWjhUTGZFd21lb2xUcmJYQytkcGFrSFE0SE0xZFQ5V3V5QXhY?=
 =?utf-8?B?OFlab296c29hNVFVenlqZXg3cUpnRHMzb1FZZ0xxTTFRNU1qanRvbTBQTG5M?=
 =?utf-8?B?WjZtRlNobGhIendiYmhvSWsxc005T2lBdVVyK0JzNmFVa2c2c0MwRStlVzF3?=
 =?utf-8?B?OUhaT2FhSE4zdE9JQ3k0d1B5aklKY09OUFBjWldtdWRabElaYlJSbStpZExE?=
 =?utf-8?B?SFdMdjNRSXRZVzRLamxDNXpQa0t1aXM3RDh2TW96WGlOVGE3K3JOM0V4WU9W?=
 =?utf-8?B?Sk5ZMmF5R2EvNHVmV2tVd2s0SjUzei9teURxR1dpUFV4K3hpS05rRlBlOXZn?=
 =?utf-8?B?Z2ZNbEhiYStIcTdUZy83NG5iTkZNdk05eFlmd00rUUQ1aFNhOTl2aE5PZFNu?=
 =?utf-8?B?c0tSZTRsdWZYenVuN2lTd3V6MmVGMklEWU5MdkVKK21zNFkyNno5Z2h3WEpJ?=
 =?utf-8?B?MXNIWTFMU1FGYmVkN3NJaGltOGsyVnR1NFhzZXlnRDVQVnNtOVZGZnpPQ3Rm?=
 =?utf-8?B?R1JSSS8wWnd2MmtoL3dGdHZGTzIzT05tckpGNkx6alIwQTFxa0EwU0ZKeEt2?=
 =?utf-8?B?cDYybnVUbnloNkZ3QW5IQmUrd3JEbFhXQWQ0MDJuV2ZyN2hoZW9OSm5wRUVV?=
 =?utf-8?B?TGxVZGFhM1UyOEpJUUJzSjk3ZDVyaGh0SFRjWlozbGpTbW5VUnZidGlXNEpF?=
 =?utf-8?B?TDcvc2hsUm8vaSszRjE4dG9DZGErMmF1N2RsSld0RDVucXJZL0hYd0NWc1Zp?=
 =?utf-8?B?eFNKcXJMUWxpblEvdzh5OGxDUlo2eWcwemhTT3BrMlRmQUhDQlBpeVJCVGUw?=
 =?utf-8?B?L3Voc0ZaL05LeDNpOXpwc2dScXJ1Smo2RC90aE0rdFpQQzFBOGt3WWgwbm41?=
 =?utf-8?B?MWxoR1BEdTJjcXVDOU5rTWFGbUVOSDEwenZmMjA1aEVyRGR5a0pWOElYNjZP?=
 =?utf-8?B?SStvNXFabFptb2dTWHhCYlgyT1RzZ0RsOWJUYUVoczN6SitocHFOelhIVG1G?=
 =?utf-8?B?bHpuQ2NYTnlza2p5UFlNUUVmYTVlT0RrUEtIWXU1UEwzZ3ZBbzc1ZjUwcS9y?=
 =?utf-8?B?WFJ6cloyanNBRHEvVEt3Zm1reGpXMnhNUUMyeUpQaVVYN0h5UERSYVJHU01z?=
 =?utf-8?B?RXhkQ0ZZYk1QZG5uMWxocFdGUk9yOFVVSUpqN2RwZGkwb1FiVXlsZz09?=
X-Exchange-RoutingPolicyChecked: hKVNhUzIEhyKghgp4ECoYjhrRak2bupmp1fJU65KV0f37bZs+/e55jlZscIBUIguaSGjRLn/ygo52NSNBDPIHGQ7pwwd077mlAcVfRrt+XGs96sErSJdfZObGsIIkZzlGawISRzYLW17JhpYZxVxSwrbk/dBV5V7g5NKjDAPSmV0dvGCn+ZGKilWdt2YgVvpyNO+fzfi+9BTUuPARfdPi/FvbzfceFW1mRbqSCxn9W8fg4E5XaHJcxpZ9MPWRyZngsgYAuFUCwqDViffMXluUmHzFbAvuurrkcxQ20H8+iXvPf9RmERF32Gn2ZZdv31GShiuLFoLQ0UMZADKFy1TwQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a503b10-f91b-4673-b0d0-08dedb335dfa
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 07:51:20.1742 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YqlLMfo12N15a/eAK8IhC6XlwGwlKkVKiEAUwSlAnZPtHpr5sW39zj61tvHzCIPmx1ENjyTg+lZrgChVqVzlhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7536
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F70070DC80

On Sat, Jul 04, 2026 at 12:51:29PM +0200, Michał Grzelak wrote:
> On Wed, 1 Jul 2026, Imre Deak wrote:
> > Add KUnit tests for DP link fallback selection across eDP, SST, and MST.
> > Verify that the fallback logic properly selects the maximum allowed
> > configuration, iterates through allowed configurations, and disables
> > failed configs as expected.
> > 
> > These tests include UHBR vs. non-UHBR conditions, MST vs. SST mode,
> > and validate that subsequent fallback selections respect the updated
> > allowed configuration mask.
> > 
> > v2:
> > - Rebase on changes using a filter object instead of a mask of
> >  configuration indices.
> > - Rebase on changes using an iteration object.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> > .../i915/display/tests/intel_dp_link_test.c   | 318 ++++++++++++++++++
> > 1 file changed, 318 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> > index 43283245ad037..14d749962b0ed 100644
> > --- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> > +++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> > @@ -1001,6 +1001,319 @@ static void intel_dp_link_caps_test_update_params_expand_disable_random(struct k
> > 		test_update_params_expand_random(test, true);
> > }
> > 
> > +/*
> > + * TEST: Fallback sequence
> > + * -----------------------
> 
> Same comment as in PATCH 32/34.
> 
> > + * Verify the eDP fallback logic to set the maximum supported configuration
> > + * as a preference.
> > + *
> > + * For DP SST and MST verify fallback selection from the connector's
> > + * maximum configuration and iteration of the resulting allowed
> > + * configurations.
> > + */
> > +static void intel_dp_link_test_fallback_for_edp(struct kunit *test)
> > +{
> > +	struct test_ctx *ctx = test->priv;
> > +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> > +	struct test_config_table expected_table =
> > +		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
> > +					  LINK_TEST_MAX_LANE_COUNT);
> > +	struct intel_digital_port *dig_port = &ctx->dev.dig_port;
> > +	const struct intel_dp_link_training_test_ops *lt_ops =
> > +		ctx->link_training_ops;
> > +	const struct intel_dp_link_caps_test_ops *lc_ops =
> > +		ctx->link_caps_ops;
> > +	struct intel_dp_link_config min_config = {
> > +		.rate = expected_table.rates.entries[0],
> > +		.lane_count = 1,
> > +	};
> > +	struct intel_dp_link_config max_config = {
> > +		.rate = expected_table.rates.entries[expected_table.rates.size - 1],
> > +		.lane_count = LINK_TEST_MAX_LANE_COUNT,
> > +	};
> > +	struct intel_dp_link_caps_order order;
> > +	struct intel_dp_link_config iter_config;
> > +	struct intel_dp_link_caps_iter iter;
> > +	int fallback_err;
> > +
> > +	dig_port->base.type = INTEL_OUTPUT_EDP;
> > +	ctx->dev.dig_port.dp.use_max_params = false;
> > +
> > +	update_link_caps_and_verify(&expected_table, link_caps, true);
> > +
> > +	order = lc_ops->connector_compute_order(&ctx->dev.connector);
> > +
> > +	lc_ops->iter_start(&iter, link_caps, order, INTEL_DP_LINK_CAPS_FILTER_ALL);
> > +	for_each_dp_link_config(&iter, &iter_config)
> > +		break;
> > +	lc_ops->iter_end(&iter);
> > +
> > +	KUNIT_EXPECT_FALSE(test, ctx->dev.dig_port.dp.use_max_params);
> > +	KUNIT_EXPECT_TRUE(test, link_configs_match(&iter_config, &min_config));
> > +
> > +	ctx->dev.crtc_state.output_types = BIT(dig_port->base.type);
> > +	ctx->dev.crtc_state.port_clock = min_config.rate;
> > +	ctx->dev.crtc_state.lane_count = min_config.lane_count;
> > +
> > +	fallback_err = lt_ops->get_fallback_values(&ctx->dev.dig_port.dp, &ctx->dev.crtc_state);
> > +	KUNIT_EXPECT_EQ(test, fallback_err, 0);
> > +
> > +	/* The fallback should've changed the order. */
> > +	order = lc_ops->connector_compute_order(&ctx->dev.connector);
> > +
> > +	lc_ops->iter_start(&iter, link_caps, order, INTEL_DP_LINK_CAPS_FILTER_ALL);
> > +	for_each_dp_link_config(&iter, &iter_config)
> > +		break;
> > +	lc_ops->iter_end(&iter);
> > +
> > +	KUNIT_EXPECT_TRUE(test, ctx->dev.dig_port.dp.use_max_params);
> > +	KUNIT_EXPECT_TRUE(test, link_configs_match(&iter_config, &max_config));
> > +}
> > +
> > +static bool test_fallback_from_target(struct test_config_table *expected_table,
> > +				      enum intel_output_type output_type, int max_rate,
> > +				      const struct intel_dp_link_config *expected_target_config,
> > +				      const struct intel_dp_link_config *expected_fallback_config)
> > +{
> > +	struct kunit *test = expected_table->test;
> > +	struct test_ctx *ctx = test->priv;
> > +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> > +	struct intel_dp_link_config iter_config;
> > +	const struct intel_dp_link_training_test_ops *lt_ops =
> > +		ctx->link_training_ops;
> > +	const struct intel_dp_link_caps_test_ops *lc_ops =
> > +		ctx->link_caps_ops;
> > +	/* Modify default order direction for max config lookup. */
> > +	struct intel_dp_link_caps_order fallback_order =
> > +		lc_ops->connector_fallback_order(ctx->dev.connector.mst.dp);
> > +	struct intel_dp_link_caps_iter iter;
> > +	int expected_fallback_err = 0;
> > +	int fallback_err;
> > +
> > +	/* Get the max connector config, optionally filtered to the max_rate limit. */
> > +	lc_ops->iter_start(&iter, link_caps, fallback_order, INTEL_DP_LINK_CAPS_FILTER_ALL);
> > +	for_each_dp_link_config(&iter, &iter_config)
> > +		if (max_rate == 0 || iter_config.rate <= max_rate)
> > +			break;
> > +	lc_ops->iter_end(&iter);
> > +
> > +	KUNIT_EXPECT_TRUE(test, link_configs_match(&iter_config,
> > +						   expected_target_config));
> > +	KUNIT_EXPECT_FALSE(test, link_configs_match(&iter_config,
> > +						    &INTEL_DP_LINK_CONFIG_NULL));
> > +
> > +	ctx->dev.crtc_state.output_types = BIT(output_type);
> > +	ctx->dev.crtc_state.port_clock = expected_target_config->rate;
> > +	ctx->dev.crtc_state.lane_count = expected_target_config->lane_count;
> > +
> > +	if (link_configs_match(expected_fallback_config, &INTEL_DP_LINK_CONFIG_NULL))
> > +		expected_fallback_err = -1;
> > +
> > +	fallback_err = lt_ops->get_fallback_values(&ctx->dev.dig_port.dp, &ctx->dev.crtc_state);
> > +	KUNIT_EXPECT_EQ(test, fallback_err, expected_fallback_err);
> > +
> > +	if (!fallback_err) {
> > +		/*
> > +		 * NOTE: This test does not verify any implied fallback
> > +		 * target selection.
> > +		 *
> > +		 * The current driver behavior may still select a fallback
> > +		 * configuration indirectly via max_limits, but that is an
> > +		 * implementation artifact rather than part of the intended
> > +		 * fallback API behavior, and is therefore not verified here.
> > +		 *
> > +		 * Instead, the effect of the fallback logic is verified by
> > +		 * checking that the failed target configuration is disabled.
> > +		 * Selecting the next target configuration from the remaining
> > +		 * allowed configurations belongs to the modeset link target
> > +		 * selection logic.
> > +		 */
> > +		add_config(test, &expected_table->disabled_configs,
> > +			   expected_target_config);
> > +	}
> > +
> > +	verify_link_caps(expected_table, link_caps);
> > +
> > +	return !fallback_err;
> > +}
> > +
> > +static const struct link_config_set *
> > +get_target_configs_for_output_type(struct kunit *test,
> > +				   enum intel_output_type output_type)
> > +{
> > +	switch (output_type) {
> > +	case INTEL_OUTPUT_DDI:
> > +	case INTEL_OUTPUT_DP:
> > +	case INTEL_OUTPUT_EDP:
> > +		return &standard_dp_link_configs[INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE];
> > +	case INTEL_OUTPUT_DP_MST:
> > +		return &standard_dp_link_configs[INTEL_DP_LINK_CAPS_ORDER_KEY_BW];
> > +	default:
> > +		KUNIT_FAIL_AND_ABORT(test, "Missing output type: %d", output_type);
> > +
> > +	}
> > +}
> > +
> > +static const struct link_config_set *
> > +get_fallback_configs_for_output_type(struct kunit *test,
> > +				     enum intel_output_type output_type)
> > +{
> > +	switch (output_type) {
> > +	case INTEL_OUTPUT_DDI:
> > +	case INTEL_OUTPUT_DP:
> > +	case INTEL_OUTPUT_EDP:
> > +		return &standard_dp_link_configs[INTEL_DP_LINK_CAPS_ORDER_KEY_LANE_RATE];
> > +	case INTEL_OUTPUT_DP_MST:
> > +		return &standard_dp_link_configs[INTEL_DP_LINK_CAPS_ORDER_KEY_BW];
> > +	default:
> > +		KUNIT_FAIL_AND_ABORT(test, "Missing output type: %d", output_type);
> > +
> > +	}
> > +}
> > +
> > +static bool output_type_allows_uhbr_fallback(enum intel_output_type output_type)
> > +{
> > +	return output_type == INTEL_OUTPUT_DP_MST;
> > +}
> > +
> > +static void assert_config_is_supported(const struct test_config_table *expected_table,
> > +				       const struct intel_dp_link_config *config)
> > +{
> > +	struct kunit *test = expected_table->test;
> > +
> > +	KUNIT_ASSERT_TRUE(test, has_rate(&expected_table->rates, config->rate));
> > +	KUNIT_ASSERT_LE(test, config->lane_count, expected_table->max_lane_count);
> > +}
> > +
> > +static bool get_fallback_config(const struct test_config_table *expected_table,
> > +				enum intel_output_type output_type,
> > +				const struct intel_dp_link_config *target_config,
> > +				struct intel_dp_link_config *fallback_config)
> > +{
> > +	struct kunit *test = expected_table->test;
> > +	const struct link_config_set *config_set =
> > +		get_fallback_configs_for_output_type(test, output_type);
> > +	int i;
> > +
> > +	i = lookup_config(config_set, target_config);
> > +	KUNIT_ASSERT_GE(test, i, 0);
> > +
> > +	for (i--; i >= 0; i--) {
> 
> For me it would read easier with being slightly more explicit, eg.:
> 
> KUNIT_ASSERT_GE(test, i, 0);
> if (i == 0)
> 	return false;
> 
> i--;
> 
> for (; i >= 0; i--) {

Not sure, to me the for () line alone says it clearly not to run the
loop if i was 0.

> 
> But that's a matter of opinion I guess. Anyways:
> 
> Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
> 
> BR,
> Michał
> 
> > +		const struct intel_dp_link_config *config =
> > +			&config_set->entries[i];
> > +
> > +		if (output_type_allows_uhbr_fallback(output_type) ||
> > +		    (drm_dp_is_uhbr_rate(target_config->rate) ==
> > +		     drm_dp_is_uhbr_rate(config->rate))) {
> > +			assert_config_is_supported(expected_table, config);
> > +			*fallback_config = *config;
> > +
> > +			return true;
> > +		}
> > +	}
> > +
> > +	return false;
> > +}
> > +
> > +static bool get_target_config(const struct test_config_table *expected_table,
> > +			      enum intel_output_type output_type,
> > +			      int max_rate,
> > +			      struct intel_dp_link_config *target)
> > +{
> > +	struct kunit *test = expected_table->test;
> > +	const struct link_config_set *config_set =
> > +		get_target_configs_for_output_type(test, output_type);
> > +	int i;
> > +
> > +	for (i = config_set->size - 1; i >= 0; i--) {
> > +		const struct intel_dp_link_config *config =
> > +			&config_set->entries[i];
> > +
> > +		if (config->rate <= max_rate) {
> > +			assert_config_is_supported(expected_table, config);
> > +			*target = *config;
> > +
> > +			return true;
> > +		}
> > +	}
> > +
> > +	return false;
> > +}
> > +
> > +static void test_fallback_seq(struct kunit *test,
> > +			      enum intel_output_type output_type,
> > +			      bool uhbr)
> > +{
> > +	struct test_ctx *ctx = test->priv;
> > +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> > +	struct test_config_table expected_table =
> > +		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
> > +					  LINK_TEST_MAX_LANE_COUNT);
> > +	struct intel_digital_port *dig_port = &ctx->dev.dig_port;
> > +	struct intel_dp_link_config fallback_config = {};
> > +	struct intel_dp_link_config target_config;
> > +	int fallback_count = 0;
> > +	bool target_found;
> > +	int max_rate;
> > +
> > +	if (uhbr)
> > +		max_rate = expected_table.rates.entries[expected_table.rates.size - 1];
> > +	else
> > +		max_rate = 810000;
> > +
> > +	dig_port->base.type = output_type;
> > +	ctx->dev.dig_port.dp.use_max_params = false;
> > +
> > +	update_link_caps_and_verify(&expected_table, link_caps, true);
> > +
> > +	/* Get the initial target config. */
> > +	target_found = get_target_config(&expected_table, output_type,
> > +					 max_rate, &target_config);
> > +	KUNIT_ASSERT_TRUE(test, target_found);
> > +
> > +	for (;;) {
> > +		/* Also test the case where no fallback is available. */
> > +		if (!get_fallback_config(&expected_table, output_type,
> > +					 &target_config, &fallback_config))
> > +			fallback_config = INTEL_DP_LINK_CONFIG_NULL;
> > +
> > +		if (!test_fallback_from_target(&expected_table, output_type, max_rate,
> > +					       &target_config, &fallback_config))
> > +			break;
> > +
> > +		/*
> > +		 * The fallback changed the max rate allowed for the next
> > +		 * target.
> > +		 */
> > +		max_rate = fallback_config.rate;
> > +
> > +		/* Simply select the fallback config as the next target. */
> > +		target_config = fallback_config;
> > +
> > +		fallback_count++;
> > +		KUNIT_ASSERT_LT(test, fallback_count, LINK_TEST_MAX_CONFIGS);
> > +	}
> > +}
> > +
> > +static void intel_dp_link_test_fallback_for_sst_max_non_uhbr(struct kunit *test)
> > +{
> > +	test_fallback_seq(test, INTEL_OUTPUT_DP, false);
> > +}
> > +
> > +static void intel_dp_link_test_fallback_for_sst_max_uhbr(struct kunit *test)
> > +{
> > +	test_fallback_seq(test, INTEL_OUTPUT_DP, true);
> > +}
> > +
> > +static void intel_dp_link_test_fallback_for_mst(struct kunit *test)
> > +{
> > +	struct test_ctx *ctx = test->priv;
> > +
> > +	ctx->dev.connector.mst.dp = &ctx->dev.dig_port.dp;
> > +
> > +	test_fallback_seq(test, INTEL_OUTPUT_DP_MST, true);
> > +}
> > +
> > static struct kunit_case intel_dp_link_test_cases[] = {
> > 	KUNIT_CASE(intel_dp_link_caps_test_baseline),
> > 
> > @@ -1019,6 +1332,11 @@ static struct kunit_case intel_dp_link_test_cases[] = {
> > 	KUNIT_CASE(intel_dp_link_caps_test_update_params_expand_random),
> > 	KUNIT_CASE(intel_dp_link_caps_test_update_params_expand_disable_random),
> > 
> > +	KUNIT_CASE(intel_dp_link_test_fallback_for_edp),
> > +	KUNIT_CASE(intel_dp_link_test_fallback_for_sst_max_non_uhbr),
> > +	KUNIT_CASE(intel_dp_link_test_fallback_for_sst_max_uhbr),
> > +	KUNIT_CASE(intel_dp_link_test_fallback_for_mst),
> > +
> > 	{}
> > };
> > 
> > -- 
> > 2.49.1
> > 
> > 

