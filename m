Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99679CFDB03
	for <lists+intel-gfx@lfdr.de>; Wed, 07 Jan 2026 13:33:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FECD10E5A8;
	Wed,  7 Jan 2026 12:33:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FKSxKBby";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E320E10E5A8;
 Wed,  7 Jan 2026 12:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767789216; x=1799325216;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=In3w/YBGoOYzcOCzE/NbZAGDJsx13hU1t0xnihMKMtE=;
 b=FKSxKBbyXJJo98YEDGf8YrQRRKThhtihRqcQuogFVKgYeLRyskFniAv4
 /XD1hJMfJAsVH724FKPi69RbgdAm+lvwNNDOecSZusyHR4EGZvmo2/T8A
 bzzdVST1pGfCM8AN9MEFJtb2gDUY3VcY/CRJXA7gFNeOhPpFgkVjbvFnn
 DyLiV9tUKyie4wprPiOmM9rV0QYPMZ4f9pFVak/IAgyG9nXuHisMTY9bC
 FeHANm0lgjF9u9ymRSDe0fX48ERLXFIkrrS39TS5RFyxxpsGkPfVAFU6L
 zLs5w2NPwZXDw+C9Aly4g7x8QkgWdEbbqtT5ANFbGgRXiNDGk+d5TBMaT A==;
X-CSE-ConnectionGUID: zM9TtgO9RYm3ImvWxF0KUw==
X-CSE-MsgGUID: YsQrd99JRuSgybDCzW4JcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="73009922"
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="73009922"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 04:33:35 -0800
X-CSE-ConnectionGUID: azjMZ9ASSJuIVZRMx9aiKw==
X-CSE-MsgGUID: tPdcVqDZRaGMfvKAX/1qKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="202825559"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 04:33:35 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 04:33:35 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 7 Jan 2026 04:33:35 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.62) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 04:33:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F7W+CpIWprXTjm3gjTR5JYtyq03ZCzYFDMLn7zK4pTQoveBMg/z478JbBR858IrVzT+I8nsr3AzNugXBJHYkL5pWSBo8IcY48NjX9PqQ0Ox4WbVjgWcFQj+RQ1FCXuLVRtL7yAqOGl6Q6e8u1nuEKYQRlr+QHHe4j09or0tyJqe+RC//O4oPB2KdNjJv0ssWw+w1TL9BpEpG5LhraMIXUfUJhV8lrTb23aay2y5uRZH0uWxsfjob/y5cAa1CrdmCegRgfCUsQceXjmy13M4SO6ps1b7Lvl2eQ2DyczGUifOUNz6flRaHnAVLJ2krNs6JnPcn6Zvo2IZx1p0UB28zIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9G1Gm1Ce+uXx18LgIqJF63ixGaqagpKHjYJUU1TqO4M=;
 b=TXaztExw9PDIPxdJRNfEMxEsVsmT3bXeGlxtLfVDDDOFit3Yoju6V6/ORxYExsy+hvn7/jMU6TXJyuglbdwmVmLhk71XLMVVfRI7jcnbd47J/mKrXqwQQtjIIMW1pRvd8zuJ9H0QPLqC/xFhuWJ6uoPD1KKUM7AUQwDAHkwyPE7fXtdXga4DvPpwbnUW4faFDrWc9Kf7OLdApyr2+ci/icWCs9RZS7O9/Z3RiQnSethmEa5kovllpCq+LRoiyfpl2tXeXiBzHVYYeILCpf8ajqywAgJ9mxnp77U+8Fi/jwq+ECrg3Cd5mTas9V22k1iPR4Nynyn9bV8kaXYySPE6nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB7699.namprd11.prod.outlook.com (2603:10b6:806:338::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Wed, 7 Jan
 2026 12:33:33 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%3]) with mapi id 15.20.9499.002; Wed, 7 Jan 2026
 12:33:33 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <88c3310e63e1a0dfbb8e683e3a5481fb156e815f.camel@intel.com>
References: <20260105104858.283686-1-vinod.govindapillai@intel.com>
 <176763507911.9480.16301562560632046947@intel.com>
 <88c3310e63e1a0dfbb8e683e3a5481fb156e815f.camel@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: update the wa_22014263786
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Date: Wed, 7 Jan 2026 09:33:28 -0300
Message-ID: <176778920804.2940.13609830221430306248@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BY3PR05CA0048.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::23) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB7699:EE_
X-MS-Office365-Filtering-Correlation-Id: 848bb9ad-410c-4863-a8fe-08de4de8f85e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eUJQZ3JoUWxnWUl2cmtvb04ycHY4ZmE5MzluYkcwTTZlSXFETy9ERU9UQlZw?=
 =?utf-8?B?TEYyYW5vWmFxcUM2U2kzTXFTRFJ1c1NJQTZnM0dwa1BpL1hrRThzSTl4a2pJ?=
 =?utf-8?B?T1ZPWWxodFViQzNyZWRHRWZFWlA2UGN6OHJQeDhkYWQvOWpIdUpJdi9GdXpK?=
 =?utf-8?B?cjF2SklBRmprb0VLbm1TY0ttZ1VMYm5UWVc4YndyYTJRc2xGbUZHVC9XaGh5?=
 =?utf-8?B?TVRCUTNKY1N2bmVVQnp1NW5NSXlJaWhmbWgrZW1CanF1YWtKV2lUYm42YURU?=
 =?utf-8?B?Wm92RlpKODZzR3M4cTE3ZUgvaFdiRXZIbmR5UzBlTWJQMUUxVzVPeC9xMmFN?=
 =?utf-8?B?TGhKd2NVcTBPTG1BS1VnNHV1WS9ESGFNUWM4TFcycjB2VnV0bWlQNmRId3dh?=
 =?utf-8?B?Z0JJOHE2SUJaWnBDTE9PcUx0TG9hSk02WXNpcUloQ1dkTEZ1WTRtL0ZyRmNK?=
 =?utf-8?B?MXkwYU5zRTlqNVdudm9reHl0dUJmREdmU3VpbUx4aWM0a2dyTEREaHE0clgz?=
 =?utf-8?B?NkJ5TkdXNkg0MVpLMnA2b0UrdEltb3NIMkxWOVByTmFTZU9Wb0pzdjAycE5j?=
 =?utf-8?B?alNVUkY1U0JIbHFyeVQ1WkF5MWIwZnFKOVNXL2w0anRtYUtrNEpjek1ubENC?=
 =?utf-8?B?blNpcllORGVvM1M4cDI3cWp0c01mVWx1UFdISkFIeFlZR1E2NUVrdHVBSllB?=
 =?utf-8?B?QkFPcXhhWkxhUlVaQ2FJa1A3ais2Y3hLaUZ4Q0pLT0x2RXMxSlZnaDVFSk11?=
 =?utf-8?B?R0NQQkoyaU44SWx3MTFBRjdtQ0x3SkU4OFgwYzlQMkdIYmxFdTdlMlhqdzA0?=
 =?utf-8?B?RVVyRE5rc0pMZzlIT1lGWHNvQ1lBbGRCd0dWeDdWQzRMOFdEY2YyY0RQclUy?=
 =?utf-8?B?MVBpKzFSeXFLdjZTQ0R5b2FmM0dTNXUxY2gyb0NUcEd0UjNqUEtobGRmY0VF?=
 =?utf-8?B?L3lvVmhXVmRSWVkycWhVTm5EWXArSmRCZjE1ZW1EbUtjcElCL0NsYkNpay85?=
 =?utf-8?B?bytaNE0xQ1hPMGorZTBQa1dqb3ZQTThERkhrNEFXenpNSE1sa0JvNDJEZVM4?=
 =?utf-8?B?MmVoV3VIU2RNYlRHcHJVak10b1ZzSkwxMVBPQmpCbjV3UDIvRHRuQjN5WTVQ?=
 =?utf-8?B?ZkVJR1RONHpWN0V0VlkzeXp6V0dDTCtlaFliRjhsWGJsd1pCRm5KYkgxUitB?=
 =?utf-8?B?N0hVVzF0eXkyZ3M4M0Z4R1EydTF2MC9XVVhKQVVDZDV2M1NUT1NzQm1oRVRz?=
 =?utf-8?B?czlydVJCbFNldFF1T0diMzhHd01KeTR6YUVlbHhsR3ZTR1U3Rjl1Q0FwOFR3?=
 =?utf-8?B?c01pb3JwU04yWnZoMzhjUTFDZzJabnV1U3NVeENYQk1XZDBKTVdqczAyVEJK?=
 =?utf-8?B?YWhKNVovaFlPQVE5Ylc2dmpsVVY2MDdwN1E4MkhBNXYxTXZuSDJUNXk0MTJV?=
 =?utf-8?B?Q3orelNIWXNXYWJQSjErQ0VmcVBpQW9qU3V0RFJCSnAxVm8vaTdNTnQ0V29i?=
 =?utf-8?B?SGNpVVMxMlQxTE04SzFoUW1CdjE3QVFLaWNFazNub3FDTHRXTWlEYzlDWjdI?=
 =?utf-8?B?ajlTYVM2M2ZTSWVET2Z5RGM1UWNPUUYydnZQM2VuQkRMbDNwdUpuOWdFMXg0?=
 =?utf-8?B?dUoyeEUzNlZYV0xkanNUWkF4b3BKdWtiakxwQ3VxYVB4Qm9kN0lrbFdyWkNV?=
 =?utf-8?B?Mm9xcDRpd3hvck5XK2xnalJ1QmhJT0RCd3BOczhWazlaNzNsMTdMeGtaaGN3?=
 =?utf-8?B?MDdjdWI1YVNFeDV4czFZTTlKS05yd3RCRmZXRTNXUHRKSGpvSUJiZ0JWM0J3?=
 =?utf-8?B?YldqRTYyNmY5b3g5L1I1aE4xd0RNTEpRRlRGKy9wN2ZuNDhuOXAvQ0lGUk9K?=
 =?utf-8?B?eDhaMVZRaElDVW9wMzhWamVuNVlMaVVTTFBkNTJ2eEZCMURQWDJSanlnSWFi?=
 =?utf-8?Q?K8uZ/Y6NS/yMkC0ScOZZo3ZUdND7HKVR?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TUtkQ3NPTEkzeVJ6L2RkN1N0RTllQW91T29lVHhrVHZndnBaVi9Ccy9DSlVP?=
 =?utf-8?B?ekhPaFo5NW1zZU5PQWtyRko5Ukw4WndsT2lhcVMrZTJuQjlDNHdMWXVkRHBv?=
 =?utf-8?B?cmpHaExHOHBDWWEweUExY1U2cE1KSjZZNTdlMUlUdTV3WVNkZ1lFWVpXQi9U?=
 =?utf-8?B?QmZhNVRjRmNjUG5GbjdiajU5VXordFBvYW9FNWdVWTJ0ZEJHWjhkR1RZTmlU?=
 =?utf-8?B?MDlEZ3pnaEZud1U2VE1zM2FYMmNHMi9jdTVBd0pxRFRPQ3JsMkR0bkxyeXgr?=
 =?utf-8?B?Slo2emVlVk1FUkx5QTd3Y1RnZ2FMZkhLMDF1NGtCa3YxNmRnZ1padC9VbDRB?=
 =?utf-8?B?U1dVVVVqQjY0SW0rVkVGbGl1Smlma0hhUWIvL0dQWWpvL3B4RGk2MklubE1x?=
 =?utf-8?B?dTh2bjRuWFNwNnV2anFMdk81NWhnOHVzNVpoZ1JJWTcvcTQrMWl5TDhzNGJN?=
 =?utf-8?B?dUJ6akJrc2xzYlRTdUozUlUybTdrYXJWTmFsS2xsa0Q4eDI0TVlIMkcxR0t4?=
 =?utf-8?B?a0J2Um1jdlVlNExXOUc1cTlsSFRoOHltcDB2ZkdvanhRMUxyWTI1M1ZrbEhB?=
 =?utf-8?B?Y1JqUlZGVEFtVklLZkV6WkFZQVVScS82NGdFMlVEdTh1VjlIRHdmdTErK0lm?=
 =?utf-8?B?azlKWjFBZXdyUEFBWE9seXhKNXFiczVWd08rN29FWGl5YUJKTGM2NGhOQTEx?=
 =?utf-8?B?TUdRcGZzelNYRU5qdWFxendBSmp5K3kvQzQ3RXQxdGFhb0VaOTBiSGpjRlRt?=
 =?utf-8?B?eXNnTHdxTXlkWlBNRTgzYXNwZ3NacmNZNStsVUI0SGtaMWF2eWQrd2U1Z1Qz?=
 =?utf-8?B?VG9qd2NGdjN4RUN5WWo2K2NhUmRQWDQvQnd0VzFUQmhodDJMaGFiYURuV282?=
 =?utf-8?B?a3JIRkhERzJYaTRJSWZBd2dCWkQrcHhqZHpIMUxSYTJGWThHOFpUT0o1MWh1?=
 =?utf-8?B?eS9EOXZxNFN6elNpOVlYejY0VWduQzB3a3BlQkxrVUlKYzZkVlc0UGhma003?=
 =?utf-8?B?SU5WdW0zR3RQMnNIMk5wVFZBYWtSaE1XOE9CTklVLysraXoxU1laRm9ZeVFn?=
 =?utf-8?B?azR5TStpTE9Uc3JXaEpNZ3kxc2RRWDN5ZFhkdTg2L1Z4bGFEZnZDb3pnSlNY?=
 =?utf-8?B?K3J6Sm5tcXpwdU1tMWZrVjNONG5WbW9QNFE1VDFPUytmZnhGMmMrVXhuMkVl?=
 =?utf-8?B?THo0cmk1SC9PMzZudWx5amFaZ2VqRDhVVmJUSHVBMlZQUnYxRzVmbndwNnV6?=
 =?utf-8?B?L1hmSlhwdHo5Nm5JTjdKalJ2TzFzVlV5RGlGWldRK3pSM1MvdzFzWjZMWCt2?=
 =?utf-8?B?Y1dVOXVQdEt0elkvdkwzYW1ES0dhTkxuV1hjakZocjhYL0REZkJVNWdtelZO?=
 =?utf-8?B?RzJWMTVTbDUzNGgxTHUxL0JoSVltMmxENDA5amZQQXFtcTRvOUV0dVBJVjg4?=
 =?utf-8?B?U201UE00N1BrM29vVy9QWnFGWVdRbmxMenhmNDdYejNnYS9WMGxKdkZ5RVlL?=
 =?utf-8?B?N21jNVFwR3EydEs4cmhDWHFiNHRtNVcraXVhdWhXaEdoSlQvYkt0Tlk3RDh0?=
 =?utf-8?B?WXgrVGY1TlYrMXkwZFE3ZnlLbmwzZ2NlOXpVRGkyNnBDKzF0a3lZTmxOUlFQ?=
 =?utf-8?B?L2xOSjBqRjRtTUU3akFsekpqTlYvMHBQaVpQVnBVMzkvdjJuTk5rcjhsNVA1?=
 =?utf-8?B?anZ1aXZxb2ZjSXdQbU5kUkMwNmlMem92Yjc5a0M5UUp2cHZ4WFNvTDRuQnBW?=
 =?utf-8?B?TlZMZkVJWVlPQXl2d2wvekYzUVJwOS9SaG5NYTJlM1BrVHVoY3ZaM211bC93?=
 =?utf-8?B?a3ZxV2I5bi9oQkZOWURQYkwxWElDc2c1Ulc0WEhTRzB5eHVIa2lFSTg5YnJV?=
 =?utf-8?B?cDBTU3hwRHBZUTREdi95NVVNUE92dFFlVSt6SmxHK1V6QXNZbW5GL2lZbGky?=
 =?utf-8?B?N0xHd2lvdmhkeW5sdWVuWWhPMENsVGJwRk9WL1JtTkxVL2ZLcUZjcEo5clZT?=
 =?utf-8?B?bGlYTW53c2k1a3BDaXdJQjJtZHJ1Qk0wSnJQZGNKbE1UOXhhdXNVZnNHQkZE?=
 =?utf-8?B?MXROV0poZlRxbHM2SDcydzlUU1J2N0pob0FaL0RHcHptNTEwQmhnOFpuQXlm?=
 =?utf-8?B?dGdvWXVOcnpPNmVVV1hRSzBvdWhVQlhlZVdYbCs5aUZwRVpIdU9wSm1ZL2xr?=
 =?utf-8?B?YmJaRit2SGlCR052K0FDSUM3U2phMEI2dUQ3NGNRaGxxYVNWTGM0c2ZkZU9S?=
 =?utf-8?B?YWtKQmlyeXM5VWtDY3plR3o4REFLTnZlOGJVMHZvbklwT3N5aTl1dkY3djVJ?=
 =?utf-8?B?UkRKV00yZ3Q5Z3pFdWpYRXkzZytvR0U0c25YVzkwVVhQVk1zQm1sQT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 848bb9ad-410c-4863-a8fe-08de4de8f85e
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2026 12:33:33.2108 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mrFqHQFDKzaDAvlRqLWHLgqq0OY9sdfXU397HyZAxP6YzZQ/axz3N6kHUInHlcKpWRAkLXkcWYaOD9CBEwft3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7699
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

Quoting Govindapillai, Vinod (2026-01-07 09:10:12-03:00)
>On Mon, 2026-01-05 at 14:44 -0300, Gustavo Sousa wrote:
>> Quoting Vinod Govindapillai (2026-01-05 07:48:58-03:00)
>> > For DG2, wa_22014263786 is applicable only if the number of active
>> > planes is greater than 1 in pipe A and pipe B. Cursor planes and
>> > any planes on pipe C or pipe D are not considered for this. As for
>> > DG2 this wa condition is based on the number of active planes, the
>> > check is moved to the fbc post plane update calls. The force slb
>> > invalidation chicken bit is set/unset based on the condition. For
>> > the other platforms where this wa is valid, the wa applied before
>> > enabling the FBC Unconditionally as before.
>> >=20
>> > v2: wrong version send as the initial patchset
>> > =C2=A0=C2=A0 for DG2, active planes check should be done all pipes not=
 just
>> > =C2=A0=C2=A0 the FBC pipe=C2=A0 (Matt)
>> >=20
>> > Bspec: 54077, 72197
>> > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> > ---
>> > drivers/gpu/drm/i915/display/intel_fbc.c | 62
>> > ++++++++++++++++++++++--
>> > 1 file changed, 59 insertions(+), 3 deletions(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
>> > b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > index 155b308ed66f..b01f9622510e 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > @@ -915,6 +915,15 @@ static void intel_fbc_program_cfb(struct
>> > intel_fbc *fbc)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fbc->funcs->program_cfb(fbc=
);
>> > }
>> >=20
>> > +static void fbc_slb_invalidation_wa(struct intel_fbc *fbc,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bool for=
ce_invalidation)
>> > +{
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u32 set =3D force_invalida=
tion ?
>> > DPFC_CHICKEN_FORCE_SLB_INVALIDATION : 0;
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u32 clear =3D force_invali=
dation ? 0 :
>> > DPFC_CHICKEN_FORCE_SLB_INVALIDATION;
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_de_rmw(fbc->display,=
 ILK_DPFC_CHICKEN(fbc->id),
>> > clear, set);
>> > +}
>> > +
>> > static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
>> > {
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_display *displ=
ay =3D fbc->display;
>> > @@ -946,10 +955,13 @@ static void
>> > intel_fbc_program_workarounds(struct intel_fbc *fbc)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * Wa_22014263786
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * Fixes: Screen flick=
er with FBC and Package C state
>> > enabled
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * Workaround: Forced =
SLB invalidation before start of new
>> > frame.
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 For DG2, wa is appli=
ed only if the number
>> > of planes in
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PIPE A and PIPE B is=
 > 1. This wa criteria
>> > is assessed
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 seprately on every p=
ost plane update call
>> > to check if
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 the number of active=
 planes condition is
>> > met.
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
>> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (intel_display_wa(displ=
ay, 22014263786))
>> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
>> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 0,
>> > DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (intel_display_wa(displ=
ay, 22014263786) && !display-
>> > >platform.dg2)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 fbc_slb_invalidation_wa(fbc, true);
>> >=20
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* wa_18038517565 Disable D=
PFC clock gating before FBC
>> > enable */
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (display->platform.dg2 |=
| DISPLAY_VER(display) >=3D 14)
>> > @@ -1887,13 +1899,57 @@ static void __intel_fbc_post_update(struct
>> > intel_fbc *fbc)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_fbc_activate(fbc);
>> > }
>> >=20
>> > +static void
>> > +dg2_fbc_update_slb_invalidation(const struct intel_atomic_state
>> > *state)
>> > +{
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_display *disp=
lay =3D to_intel_display(state);
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int i, num_active_planes =
=3D 0;
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_crtc_state *c=
rtc_state;
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_crtc *crtc;
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum intel_fbc_id fbc_id;
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for_each_new_intel_crtc_in=
_state(state, crtc, crtc_state,
>> > i) {
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 u8 active_planes;
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if (crtc->pipe !=3D PIPE_A && crtc->pipe !=3D PIPE_B)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 conti=
nue;
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 active_planes =3D crtc_state->active_planes &
>> > ~BIT(PLANE_CURSOR);
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 num_active_planes +=3D hweight8(active_planes);
>>=20
>> I don't think this really counts the total number of active non-
>> cursor
>> planes in pipes A and B.=C2=A0 What if this display commit is for only o=
ne
>> of
>> those pipes and the other one is already enabled with a non-zero
>> non-cursor plane?
>
>hmm.. yeah! thanks for pointing that out.=C2=A0
>
>May be for_each_intel_crtc_in_pipe_mask() could be used. But then it
>doesnt make sense to have this in the fbc post plane update as it gets
>called each crtc in the state. May be a new call is needed from
>atomic_commit_tail() just for this! Need to check! =20

We might need some global atomic state handling for this...

>
>>=20
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for_each_fbc_id(display, f=
bc_id) {
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 struct intel_fbc *fbc =3D display-
>> > >fbc.instances[fbc_id];
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 mutex_lock(&fbc->lock);
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if (fbc->state.plane)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fbc_s=
lb_invalidation_wa(fbc,
>> > num_active_planes > 1);
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 mutex_unlock(&fbc->lock);
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> > +}
>> > +
>> > void intel_fbc_post_update(struct intel_atomic_state *state,
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 struct intel_crtc *crtc)
>> > {
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_display *disp=
lay =3D to_intel_display(state);
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct intel_plane_st=
ate __maybe_unused *plane_state;
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_plane *plane;
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int i;
>> >=20
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /*
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * Wa_22014263786
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * Fixes: Screen flic=
ker with FBC and Package C state
>> > enabled
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * Workaround: Forced=
 SLB invalidation before start of new
>> > frame.
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 For DG2, wa is appli=
ed only if the number
>> > of planes in
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PIPE A and PIPE B is=
 > 1. This wa criteria
>> > is assessed
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 seprately on every p=
ost plane update call
>> > to check if
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 the number of active=
 planes condition is
>> > met.
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (display->platform.dg2)
>>=20
>> I think this should be
>>=20
>> =C2=A0=C2=A0=C2=A0 if (intel_display_wa(display, 22014263786) && display=
-
>> >platform.dg2)
>>=20
>> , for consistency.
>
>Not sure if that add any value!

Well, the logic guarded by the if condition is for a workaround, so I
think it would be better to check if the workaround is valid.

Yes, today intel_display_wa(display, 22014263786) will be true if
display->platform.dg2 is also true, but IMO only using
display->platform.dg2 by itself has the following issues:

* It is not explicit in the code that the condition is for a workaround
  (although a comment can help).
* In the future, if, for some yet unknown reason,
  intel_display_wa(display, 22014263786) would return false for DG2, we
  would still end up applying logic specific to the workaround, which
  would be undesired.  (A hypothetical example would be if we add some
  debugfs support for enabling/disabling display workarounds and the
  user decides to disable it.)

--
Gustavo Sousa

>
>>=20
>> Also, we probably should drop one of the comments to avoid two
>> duplicated descriptions of the workaround; maybe drop this one.
>
>Just wanted to have that wa_id mentioned here! May be I can get rid if
>the description of the wa, but keep just the wa:id!
>
>Thanks
>Vinod
>>=20
>> --
>> Gustavo Sousa
>>=20
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 dg2_fbc_update_slb_invalidation(state);
>> > +
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for_each_new_intel_plane_in=
_state(state, plane,
>> > plane_state, i) {
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 struct intel_fbc *fbc =3D plane->fbc;
>> >=20
>> > --=20
>> > 2.43.0
>> >=20
>
