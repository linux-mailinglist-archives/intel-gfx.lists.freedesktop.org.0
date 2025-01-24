Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BD1A1B215
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 09:58:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7363D10E91E;
	Fri, 24 Jan 2025 08:58:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lw72zoYs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61A7A10E91E
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2025 08:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737709132; x=1769245132;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=TASWwywRYQA4jf3kEW9ieYdfCZEdixOOxqdPbXB50G4=;
 b=Lw72zoYs434hYOQrOQHzZSjjrK1bOt5Vs0qrkg23Yzo0brbIDCmWvtdH
 0IhPteecHrd0S8MyIzKEyFEHmKFvM/gpj7srHHCfFsJOOGvgBO77bJtvI
 vhYitOTmbaPXtkeV91p/E+hPH3FuSpRD1cVNbo6h3YhHEJ3BQoYURUl9m
 qF8jW38Xm4rxWBjFfv3asFX1Sg0j01ZIfS/pK+KaHULibfflWyf8PWfxu
 57aPX70u/VKU7p/b3xvni1Q2TmsVnd/MseQIZsC523uaMxsLOVL+67cN7
 +IpCFHyj9eJrNurSHTyeMIUWEI2UVGq7QKxyNPz1QaJ62NsdaNbC0fg4h A==;
X-CSE-ConnectionGUID: SaAk1drFQI6BFgAcqOhBPg==
X-CSE-MsgGUID: 1QlBxVGMQxWCnNSBWenG5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="37491482"
X-IronPort-AV: E=Sophos;i="6.13,230,1732608000"; d="scan'208";a="37491482"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 00:58:52 -0800
X-CSE-ConnectionGUID: NgyFODHXQFCtlxml8WD2kQ==
X-CSE-MsgGUID: QTohvdm6SFy3SR90cVpqKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111752891"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2025 00:58:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 24 Jan 2025 00:58:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 24 Jan 2025 00:58:51 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 24 Jan 2025 00:58:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EjHS9Xw3/twbxh0QBq+9FAJ0jhrmOU0r4ek7BsZ1F7QPcO/A3XJSJiB+xyV4YZ+AGSj+TqNVct4f9Arci/YfVMBYojyqDsDxQs92R2t+Bqazju0TixhXB5ADbUUttPqklf4nDb7IOC3nMemkKn9wPJqnvqsp7TrKod+oI3F1+EVItR2YGx5+gHH01M/BWEs+f0xrpJi/hXB2D4Us9J6XyMIZBR9rRJvNR5gSLEnTc8Q/Q3m2HeZj1COItB/EInu+oLxr0cyli/gDn0JtP1EsXjbwhohV6L2Y1GUwNUWpVM7t+XjXQbbMdr8iVexfzJVsMG5indnVWCreBjthabg9TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6di+TUpOOfkf1KynKNZpwBJgsNptCPQUzwIdnbQ6le4=;
 b=aO8u6+hnsmKda6S3x8FNhUobL1GvongCAEHgwFL8OD+47htyG1B5NtW3dcug1AluA+R+/xcysIRX9IqVCBJmYAYXwIYwo5w6VQXAfAIpNqV0JDT2jfidUdmIa6xHBzyxQtHgehY8TBGnzCMagMUYjpBzptnOQ7mT6wrcvyrt/B7+TOCoep7rQrGYJa4bGNgzpgqZn2OaclzJ88yp/Ds01qlI9yTaNor46MAqEv0TkItKkw6fyXS+ZA4kuFuqy0RwsPhFf8zDRbwu/0lcRuipJdFEMMSP+60tOSq3wxpAtnyy9ZphNEO2xUG31T6FPnplGRTgxTbtBRzB3AUw2t7ooA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA2PR11MB4793.namprd11.prod.outlook.com (2603:10b6:806:fa::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Fri, 24 Jan
 2025 08:58:47 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%4]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 08:58:47 +0000
Date: Fri, 24 Jan 2025 08:58:39 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <chris.p.wilson@intel.com>,
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH v2] Revert "drm/i915/gt: Log reason for setting
 TAINT_WARN at reset"
Message-ID: <tibxuwlgqalwda4nhchszo2d3kuwkebotmberghb4tr2nomds2@x24ef472azpf>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <pynwwza2xyvicokflxc6lduwwrzwoihihaan54ago3m2xzzagu@qva2ue4tydie>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <pynwwza2xyvicokflxc6lduwwrzwoihihaan54ago3m2xzzagu@qva2ue4tydie>
X-ClientProxiedBy: DU7PR01CA0003.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50f::17) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA2PR11MB4793:EE_
X-MS-Office365-Filtering-Correlation-Id: d3d02728-04d0-4aac-eac0-08dd3c554ff9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Ni9iZVYwMGx1VjZVMkI2cTJlbjJpa2NaVnJOOTNIbjg2VEo0VUxPSGdtY1M4?=
 =?utf-8?B?QVEwOCs2Y0NHT1dXSHlOVnUxaElMamFReVROcFU0Wi92MklKR05xc2lDV1B6?=
 =?utf-8?B?RG5SVEtJYWVpaUFUV0xqT2tGUkFlbzFVY2F4VlRsS3pOai9OeVgrUkFqTk55?=
 =?utf-8?B?QlpuRVpvcEdVYVQrTWVYY3JEVFJBNEVuMmk4QkpVM1pRNTJEeVRmK00yeHpo?=
 =?utf-8?B?aG43dW1EWjdJTmQ4MXBGN1M3blFMSXdPUDJVMmxQYTVxVHB2OFViM1RYWGcy?=
 =?utf-8?B?aTE3Q0JUYmIxVzF1ZlB2U3U3eE1xbHhtTHJ2dXhOSHJVWExOZ3UrWER4czVs?=
 =?utf-8?B?VnIwdTBQVjY4RFk2YlVCTnRuY3FzMlZhWG5OWWhWQldIK0NsN2RjRk5jazBu?=
 =?utf-8?B?c05tQ0xCM1FhMXJFZlVrNWNCU3dIUWp1Rk4zb3pMaXAzZ2NqZ1JGYm1ES0lM?=
 =?utf-8?B?WjkyckhqM3puS1hXMlErdWJYUXNJakoyWlU1eEt2UlgveHJZUEV0QU5wa3BC?=
 =?utf-8?B?dmIrUVF4YnZJUGV0YjFxMHk2QWh4NjdUUnpGRFoyNElpQ09PamowT2hzd2ps?=
 =?utf-8?B?VWo5dFBUN1VqbEhyY2JTSU9PRkM5UEVvMjlSQnV4cUZCbEI5bmJrZ2xWbEpT?=
 =?utf-8?B?TDBKV2tYVjBUV3NPODJQQWl2bG5qMW9EYnplMWJnMEVsZ2hQWHBhMks0RE1s?=
 =?utf-8?B?WC8yMjRYYUZsYWhDMTJma2QrOWRaR0M0K2IzNkQraU9YY0ozMi9UTWpRMURw?=
 =?utf-8?B?MmdDU2ZLWkllakpFdC9lT2F2cERxb29YUTR4YUw0RzFoMFNwcEx6R3AxOWRM?=
 =?utf-8?B?NTlWQ3loWmhrQzQyMkIxTXFoek8rZHg2T3F2MzQ0MnJCdkNldEl3Y1ZjVnp2?=
 =?utf-8?B?eHRJVFlWVzNBTzZsVjVzc2F2NHhZcS9wSzVNUjJqalhoSjdmS29pU1FMUGtB?=
 =?utf-8?B?WTJVOWFvSzE2SFRlb3JxdjNRMC92UEViRFdmdUh0Q1piY08yWmlqSStVNWFt?=
 =?utf-8?B?a2RUZmhKV2xMRjM5VmFoQm5nL1RwVEs3VGpKYjdlVjhpaVVSdjVWVzNPSlVQ?=
 =?utf-8?B?bEhZTnBwemVFSW5kakgxZmhUSjFCL0xqVjRPenBiRkRIUjh1djE1eW8zWTZM?=
 =?utf-8?B?T1hHZFRqUHg5MVg5S2pIQjB6eUUrT1hzTDI4cWFBMlFLMGgrSXNGUzFyUmxS?=
 =?utf-8?B?c3pWYWd6bzI3SlZFMTVLN2NOb3gyemp5a3RlN2hYR1B3N3N1T0gvQ283L25n?=
 =?utf-8?B?RXA1Z3VuZkRtVjNtYllzT2VSc3pBVzRycDlCeDRsdFY3TVB4b0NKbWxQWHVt?=
 =?utf-8?B?ekJSalFiSkxCM0U3SkZYQ2JCakJvRHRabzlGNXkwQm1ScVlJeE9ZRFVqODZX?=
 =?utf-8?B?bnNPOUtJeUtFblJZWnYwZHFWVkl6RmRrN0IzNlp0U0VTVnBSMWlJSlhjYUJS?=
 =?utf-8?B?REZBcUU2aU05a3RwUG15RnVIOG1KM3VCV3loOXdFZGh0aVRRMFVpLzM4OHI0?=
 =?utf-8?B?TExwcDV6Q3RZQXhSeE1ndW9nbGw0ejhuWTdDNGlBUmFZdC95WStBdjRsSGRB?=
 =?utf-8?B?Vk9BWHFDamlncXdkQW16ejdpSVFtR2tneGJidGlvZ0paV1AwZnVlcVNuS1I1?=
 =?utf-8?B?ZXFJVXBiaHg2a01Idi9CM05BL0RzK2tMZm01cTZaa0xPZi93QkVkK1dNOWFT?=
 =?utf-8?B?djFSclovWnVjMnJlV05HQkl1RzBYZlYwRStlUUhwWmNlT2RwWEdNTld2VXpU?=
 =?utf-8?B?aVNFYjE4UHAzQzUzWkpjU2l0MFE4WHUxNE1oTVN5R2VIZ1h4Y2thVWtIb2c0?=
 =?utf-8?B?cEdqL3JhUnRZWkZoanJDbDc4bk9IcUFrNGFuVVA2RXE0V2U3ZGxnV1FoYXU4?=
 =?utf-8?Q?yDa1raOREw6XO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QlhWS1lXQW9QZFZXR0FMR2YxS1NmcnNMLy9UWmF5SHVyV0tvT3dIYmUyZ2E0?=
 =?utf-8?B?ekFHdmRtOEJSelZGdjR0d3UrTHJtSlBlUTBnQVoyWVZjcjZyeWVJRUw1MU1p?=
 =?utf-8?B?eitDbllBd2hRZXBqS0lsT0VoRnFlcXBISlpHOXFKQkd1MS9VT2g4czFYRkpy?=
 =?utf-8?B?WE1MNDdwNUxMSVBUSnppS2taRjNnS2UwbDNnVnlUVTdJbkFwanRuS3JvOU9I?=
 =?utf-8?B?U29tSmhUMUdlOGZlOE5PVGNkcXFTci9WTHJQeFdZMFhIcCtRVFpINXVYRmd1?=
 =?utf-8?B?M09SUlhZUkNGaks0KzUyMkdGRE13M2xsWnFLMnNQWlpqdXB0WTgyVnIwejlq?=
 =?utf-8?B?T3ZNdW5MM0c1NXRNZmgvOVJ3dkVmZURLZEI1V3hzSDZvalE5RGtNbkdoc0N2?=
 =?utf-8?B?czZmb3RUQ0wxbWdhTEg4RWRuK3FOb3A1TVhZTmp1RGFqRUd0SWZ1NE1MRUJ4?=
 =?utf-8?B?aythWmtsREpQQWhwdGlMSEtLY2xPR2lQeFhtTVZlR1ArYVdObVdHNWVTVldN?=
 =?utf-8?B?S3Jrc3NMcnVMOHlKMEd0TzI0ZkMrVGVMMnN6ejdZUi96RTJmUVRxU0lnU0Jt?=
 =?utf-8?B?QWZ6YzU3TFh2TVJ2WVU5VElYZzAvbjJtTExYdFJHTk54emtBMzFSTnlpRTll?=
 =?utf-8?B?V3ZvcWVMNDFFcElSL3JaYldlRkhuYjhjd1M0Lzk2OVRmZVhkWFYxQUd2d1h2?=
 =?utf-8?B?UElnNkw0ZVNvODN6OTVmek5aUDN2b25XMSswWm0yaEpHVFpoRTJWMzlzNWpG?=
 =?utf-8?B?enpsdWJSaWU1QlpBcjdBSGNSY3Y4Z2pqZkJ1VHBxT1dQQ3FxcXJDdnpmVEQ2?=
 =?utf-8?B?b1o3S3BES1ZlbFBaOGZxa2FlYVpEK0xrZ1hod0pqKzg1ZzVRTlNXelBnanhw?=
 =?utf-8?B?OXJ3UjFSTWw3WGg3b25FU1MrdThnTnVEa2ZjR3Z3K3JpelFuaGIzcm5Reng2?=
 =?utf-8?B?Z2FJN1BGQ1dnQnZOc2ZvY2MyQUlmYSsrbDlQVEwyMkxuVnZRc2dwdjllSXlm?=
 =?utf-8?B?dUMzdDMvdTA0TEFWWk1pOExEUXhCMDNNaGVvcERxVjk1b3d0aHJud2VFUGtH?=
 =?utf-8?B?ZmFsKzNxdTY4VmFINFkwdml1a0kyeDZGNFZtTTZ3Q0Z4ZWcvKzhWSmNkSFUz?=
 =?utf-8?B?S3pCMzJFaVVaL1I5ek9Cb1orUThtWHM2ZjBMMytvZWJlbG9DU0NKMHRjOEtP?=
 =?utf-8?B?aFRmMTh0SkVJQnFyVDFXTWZoZTd6a2NxSGl3a1RjcHV5bCtDY1pUc1dFNitZ?=
 =?utf-8?B?dktzaW04ZHJrNDRTSDZTQmRhZExmTEtvamZqejZBNjFUa3FiNE5MTXE3OEhH?=
 =?utf-8?B?SHloVkNMQ01KeDBEOXhkNmxWQWtwQXF6MlVNeG96bXZuSmIwUDIySFZPNEdo?=
 =?utf-8?B?c3k1OE5hbklvaU9Sd2ZIRmVHYzdYQjBmcU10SE5TbnVYdXBHOVNrczl0UEd3?=
 =?utf-8?B?WlhqVGZvTjcyWkNKWG1pNGV2dzMvaFp0aXBCVjBnQlFwTWsxQUo2aWtlMjJk?=
 =?utf-8?B?bnUzaVU1dXNhZkExWXBwRllCVUVta2lyM0Zvdjl0akxpRHRlV1I4UUhsUFRC?=
 =?utf-8?B?RkNUNjAwRFM3TDVnTU9RclR2UzBxMUxOV0x2WTNJSGRtUDJQUHMyOTllUldT?=
 =?utf-8?B?V0xOeGlOSFJmWStVelM5SXl2d0M2Wk9Zem0xMEFYOGh4YXpwRnFwTURBNUgy?=
 =?utf-8?B?ckh6WjQvMHdYbzZ5SFZ3djBQTTk0L0JwKy9GTXorSUsycHY2d2xrVk1xa3Nq?=
 =?utf-8?B?NWg4Vm94WWJtdDFxeU42emw0akY4YXhjWHFWRmw5TlpUQ2VVcWZvemxLN3Qr?=
 =?utf-8?B?MlA5bXgvWWhYUWMzQXZpa0UvNkF4ZzF5RS93dFczMjc2TnFESG1TN2RvWUVI?=
 =?utf-8?B?Sk1uVTVETjU5YTBHampkZVhlWWRnOU5HcXNhcE1TdFR5dHpuTzExY0plUk9x?=
 =?utf-8?B?d2RwV0hXeGVOZnQxaGE4RXlKbmFGMWl2ZEJBbU00bHFvZUdSb29PZHdWU04z?=
 =?utf-8?B?cnQ3OHdIczJvR00xalRvbnpsenovZHg1bEtDaVM2WngrRDlOV2d5b1JXN2Z1?=
 =?utf-8?B?WHNiR3dpckdVeHJEUWJDTEh5VWg5ZUF1Tld3Z3l5TjdadFVoWUhLVkZldUdC?=
 =?utf-8?B?dnZyaVNnUFVLME9EbkVJdGg2NjdweTRJOE9OVlNBMmJKWE82OHBEMHFNMWVk?=
 =?utf-8?B?eWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3d02728-04d0-4aac-eac0-08dd3c554ff9
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2025 08:58:47.0967 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vVRrOrx7TAOk+hQ5jmzIKu+Q410I4HAsDxkrceruIJ6Sen7ibneLiUkTVtIktDy6u/Av+OgbimKoFJLHXqyDAk0FW+WR5myDf1qKTlK5RQ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4793
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

Hi Sebastian,

> This reverts commit 835443da6f50d9516b58bba5a4fdf9e563d961c7.
> 
> - turns out that logging with gt_err() causes CI to pick up an error
>   even in intentional error injects,
> - the unintentional (real) errors are already reported correctly by CI,
> - a gt wedge is already being logged without this patch, so we should
>   revert the new message instead of, for example, relaxing the loglevel.
> 
> V2: rephrase commit message
> 
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_reset.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index aae5a081cb53..c2fe3fc78e76 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1113,7 +1113,6 @@ static bool __intel_gt_unset_wedged(struct intel_gt *gt)
>  		 * Warn CI about the unrecoverable wedged condition.
>  		 * Time for a reboot.
>  		 */
> -		gt_err(gt, "Unrecoverable wedged condition\n");
>  		add_taint_for_CI(gt->i915, TAINT_WARN);
>  		return false;
>  	}
> @@ -1265,10 +1264,8 @@ void intel_gt_reset(struct intel_gt *gt,
>  	}
>  
>  	ret = resume(gt);
> -	if (ret) {
> -		gt_err(gt, "Failed to resume (%d)\n", ret);
> +	if (ret)
>  		goto taint;
> -	}
>  
>  finish:
>  	reset_finish(gt, awake);
> @@ -1611,7 +1608,6 @@ void intel_gt_set_wedged_on_init(struct intel_gt *gt)
>  	set_bit(I915_WEDGED_ON_INIT, &gt->reset.flags);
>  
>  	/* Wedged on init is non-recoverable */
> -	gt_err(gt, "Non-recoverable wedged on init\n");
>  	add_taint_for_CI(gt->i915, TAINT_WARN);
>  }
> 
Looks good to me:
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

Krzysztof
> 
