Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB41CC3E125
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 02:02:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 153B310EA19;
	Fri,  7 Nov 2025 01:02:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eCLr2O1U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A7E210E04D;
 Fri,  7 Nov 2025 01:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762477336; x=1794013336;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=yjBO4tF3i5+lSsOO/orge6mdVG39V7mkXad7qe8VFrY=;
 b=eCLr2O1UxWKCMN+jVExoKZX0IwSXXrpZwh5MGzhfbi35bFPvpHSPn3VB
 9wZOKCn+S/YDqLDVjA8VDTQCDbKyvh7QETGMziMSxCxX/l7rwJ1tGY6c8
 zTDDlS4ZqaermDRQPCYBKfepUdEiM5tz3MnInQlufwv+1YvhvOJVIRP6N
 OlvvJ5z3G9GQHQE/jS/3IhkFGrA9Kfym5CeYloTKGLtLTXaIGNmKsSNIR
 tCDszLOsnwEJh+pJk9rnKAbZL9DTcyNEsYkiZ9R6ggVwSj8mvVLOTsR1M
 DUcMfK4/61PZSJpB4wA2N6u5okfyhE0bxsTdOHV7Quj0SO9tpDo8C+E8h Q==;
X-CSE-ConnectionGUID: kyJl2dtNRH2WWR0aUvhXZQ==
X-CSE-MsgGUID: j8Dm3q7XSzKdMOm0yzzoWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="63639013"
X-IronPort-AV: E=Sophos;i="6.19,285,1754982000"; d="scan'208";a="63639013"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 17:02:15 -0800
X-CSE-ConnectionGUID: 7W6pVrr4S0inpeFqsDnbXg==
X-CSE-MsgGUID: sztdLvWpTHeWbPojZflTSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,285,1754982000"; d="scan'208";a="192174760"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 17:02:14 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 17:02:14 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 17:02:14 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.21) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 17:02:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IBrxqg4r+tgIT84n6izamYbHpNa8Fs8pWiimScoHHH3+EceBPt7keNQ9JV3LI9wPlf++U5qVzUmyB1dF458sgFMiPmyZnqC9kkr30+wZpNJC1zS3nME8ZHmEAKW6eQpTFILUquyIli5wzVqf2kNIHMOI1p4a8IQEcIHzVEA0NxIDlSAE2aZi8Kc1nkFSbmRCOPmIR5JN6Eeyk+knGofOuB2bLWfBlxlsn9+dQv1u/K7e18IbipsBr3SWVKFv9eart21wfwg06qybdqkZk2301rXQTAWsRw3fTxY5UYbGm0uZY2tiKGU7HxG3bJgpkGJj087fVqT9U3JZz+erscc9qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tyzUcSC1UKrE04LWbwL8doe1fuX0HM6t7GWe5tUnRa4=;
 b=E3uNlAjhkjqoSXrMLmsxtG2kHpZVpe2OEPEL7tkRyDny7g/el+OPgEGMHkuB9nrO0WJWIJm1cB0VY1mMLgM0iiQaACrd36iVvE1qn2AUvugkPs1YK+c7M6NOs3YDnC3Hc7Y9H49Qe5/8Ne8mNNQ7qUBtqTiisqGIAe6FVnBghgWJ1rBNF/HsQ4/SnW68e258DpZUn2MyUFnhyIeiMLqmFP2S1YpG/uPoStIQl7bB5BrRM1wdPKFJncH9GVlVsvMJKUaHtBK0op+l4qIITxZ7oBk6juXWWu3aszeTmxSJmoQEQwwHcttAcICk9zZ1pVBrEm/EPvIFAcILFAHS70JwMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CO1PR11MB5025.namprd11.prod.outlook.com (2603:10b6:303:9e::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Fri, 7 Nov
 2025 01:02:11 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9298.007; Fri, 7 Nov 2025
 01:02:11 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
Subject: Re: [PATCH v3 00/29] drm/i915/display: Add initial support for
 Xe3p_LPD
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Chaitanya Kumar Borah
 <chaitanya.kumar.borah@intel.com>, Suraj Kandpal <suraj.kandpal@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Ville =?utf-8?b?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Thu, 6 Nov 2025 22:02:06 -0300
Message-ID: <176247732639.3117.8640718315433977590@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR05CA0104.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::45) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CO1PR11MB5025:EE_
X-MS-Office365-Filtering-Correlation-Id: e9b142da-d8fe-4ecb-e282-08de1d994826
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aWNvbWpUdTRSaHFQQ21Xd1ZTcksrRE9DeUpyNUlTNFhUZm1LQWx0dkJSQUhS?=
 =?utf-8?B?UlQxY2RoUEdYeU1JSGNSVkJjcVIyb05oOWI3UXVDRjJSVWlzekh4dEhvYVpK?=
 =?utf-8?B?Y2hKZDZ6NU1qT01TNnhmNHNPSm43ZVNQdERCdWlTSmpwSzBDNlBndHg2WWtz?=
 =?utf-8?B?NThkV21rajBDZEQycGJTZ2FGaHZTSW1ubElkM2hBOGdaZTRDREVONVlEbDdY?=
 =?utf-8?B?RXhjWWVZcWViWmxwVWxqNXJmVXdDeUxHQmRuSjBlOFJqTUlaVWVoTWRnS3Ar?=
 =?utf-8?B?bVRiN3dRWGlPU2J4NHZ4Tit3VS9LTGUzalcxZW0rdmpLaUlZQ2tteDdteTJs?=
 =?utf-8?B?S3Z0aE9aU21rRlB3SVlRUk9JU1pMbDRzYjIzMVlsVVRrWU1XWkoxM2RaMlBo?=
 =?utf-8?B?TkhjdGw1MjdUeGxqcVVOSnZiV3NUQi81VlBKM0llQ0NpdUtmQ1lzZVpwWE8v?=
 =?utf-8?B?VUZUdllrT1g4MWRpZ2J3cmFOeGZEUGhUbkFGRkt5OStuT3N4RWJiTkpodHk4?=
 =?utf-8?B?VWxSVlc3blh4a1RUc3JsRGFkaDZzTFBBK2FiM1Y0dFJnc2VhTlVUUThiTkJx?=
 =?utf-8?B?VzY1Rnd6NCtNeUpOZDBoZjc5blV0NzBkY0x2ZjBidkJkN2YrbURTOGRUaE4r?=
 =?utf-8?B?ZjFkWkxRU0tIWDN5dHdURGMxQTBVYSszU0RTc0MwUGQxUkVYVWtRSGlEcXNJ?=
 =?utf-8?B?RTJMZ00wa2IyOTROcU5Ma1FQblpPMXplUTF3ZjVYd2pZQVJBZStxMzVIb3gx?=
 =?utf-8?B?TjAwbkJkSk5Oc1FzVTlzRFQvamVoV3VDVUxxTURPWkM3dE1oTHpnVGk0RnJt?=
 =?utf-8?B?bURGMzRUQnNVcURWNVBKWEEyNWtoelF6L2tjV2d1MFJ5NGlzRjcwQkJSMGZU?=
 =?utf-8?B?WG92bXhNR1d2YWM1MVdtS0QwMlgrTnI4bmdRZXJaNElQeW03d1cveFJtZFZh?=
 =?utf-8?B?TGJRbEg0QXUxZzF6RzI1bGVJSFBYMHI0d3NqaWxUaEZhSk50UzZYODNnZUlr?=
 =?utf-8?B?eE13VkQwTERlM3VCaDliRENjVVdxMFdEZWU1Zk82b2JVa1ZlVkdQTjlzM1JM?=
 =?utf-8?B?R09qN2lBZndTYjVpbUVDaE9haU4xTWRMeFVwUnNhUzBYalBFN0p4YzJEVDBo?=
 =?utf-8?B?ajdmRFJaR2huK0haTFltS0NGYllzMTRiblhIK1I4ZFprR29jNUJmdkc3cWtX?=
 =?utf-8?B?S0NJb1Q3RVZRanpxRWkyOXdkTmI5WlZvVUJCeDZUWlFWZlpXY1NYMXE0TVRV?=
 =?utf-8?B?Z1ZITXhZd3o4R0RTMUFtTlU1S0ZDc3dqOUI3a3M4Zk5iMVF3a2pCL1Zwblky?=
 =?utf-8?B?MmJHTXpYeDhuRzRVT1c2bGlXRTk5T0ZGUEswRGxTVTZEcTZPQnZmZGdCVnpY?=
 =?utf-8?B?WG1DeUJCTnNrVVNQRHppejhNeStOUG5MYjFSemUrMjdTeDRLTVJoQUhacWU4?=
 =?utf-8?B?YlVXODJrSlkrRjV6a1lvZjZRSmRySTFCSEZDYWJQT3ZIRWJQQkVpRktMU21C?=
 =?utf-8?B?VTQ1UFNOZmVLUkpFdHFhMExWdnVDYXhJWDVnNStwNXJKUVF6QlBiYjlCNk9j?=
 =?utf-8?B?SHhCUGVtQWJCK1BJeWJJM0cwN1pIak41aGxRT0FIUElxZTlSSExtck5LTjBD?=
 =?utf-8?B?R3VCN0czcG9OMS9DTzZxUnBqck1TVnNxQU9EZzU5NHN2WldVcE4wYnVjbmdT?=
 =?utf-8?B?K1ozdkVpbThndWRNTng2bm5lRVAyTHlSMEM5c0dqUkJLVGJPQVUwRWVKR016?=
 =?utf-8?B?dlpBbG1jdGhub09VdGtEQVN1bXFvRkU5c0xSUVZyYUcrMDNEQzlHbk8zZDEy?=
 =?utf-8?B?RXZWalhUY2Iwb3M4b1pKazJ6NFJDMlhXVkVGbzd6aytlTXo2cE1OM3F6MWR0?=
 =?utf-8?B?ems1MGVRZk5kT1dmQk5ueU14Z1BpZ2krWkoyQTlVRnQ5dGpsM2lXaGJyZ2pR?=
 =?utf-8?B?ZFhVUmVhcEUwOFRUWlQ3T2hMNWFyWCtDRWRiUWFObWlSSm4ySGF1WEFqOHVY?=
 =?utf-8?B?bXlram8yQzd3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zy81YTNyQS8zdm44cHVwdlNtdG16TWZQMklGSnlIanY0ODZRbmNzeUR6cmxC?=
 =?utf-8?B?SDVMVkpYUnlDQUEzTktZb3BRUG40YkFjTU9DM0NhRmJyVmhXbjRKMk5JTTN4?=
 =?utf-8?B?WkRaWGhJQy9qUEpES3hUOUdxZEs1b1ZTd25DOHhpMjJ0Q1l2VjlUS3R6UTFl?=
 =?utf-8?B?M2o4eG85TTQxSFE5VW8xbW1WSUN2OHlGbmtmWGJGWnU5dTNlUDdlYmpjdkJa?=
 =?utf-8?B?WGV6bUlOclNmS1ZSL0hvVU8vZ3ZWS05QNTJGUkRoMzFBMW1wd0dDVGg0bTJD?=
 =?utf-8?B?VTJuMk91TGVFNTJSRk92eCtoWHd4L1l1YXI2akt5N0I2TjZFMFdRTHNoWGhu?=
 =?utf-8?B?QXVYdDROTll6YndsdWJFZEtwSkliYyszSXJwd0YzbllzRmpCQUdJZ1dpd2tF?=
 =?utf-8?B?ZWt4WXhJNDFESmhxdktyQ2QydFBKS3o2bTRNeFZIZjBsZW5zTWJUbXlHVEho?=
 =?utf-8?B?L0VyaThnNkJhUmRmbE1vRlBpaTh4R2Z5TkVadHBFaXNxeTZPdGV5M2xMbXda?=
 =?utf-8?B?cXpRZnJETER1RGpneXZlb3FuRGdQelFvQXc4cE9GUkQvVGw5RUdISVlGRGpy?=
 =?utf-8?B?dnp4RkRKa1RwV1FEYUd3RnJoeXpPNmhsRjgxMFpsbXFMa0xWVmpIdVQ4RXJz?=
 =?utf-8?B?MWRvVVo0WWpuaUN0L25iMEN3YWNOc25BblFJc0xsYWcxbXZmOTFaZ1VMaGF5?=
 =?utf-8?B?dWJocXRRYWRldjNzaGR4VWpaTlMxY2FRVzVLb1N0ZUNieXdqZzhUMGp6c2lY?=
 =?utf-8?B?TjdhQklESWRqckJOeXBodGlvUEpFU2RpQmdQSCt6MmdVYjZQZk9mcTZJaGdo?=
 =?utf-8?B?aTNhNTM5YlpJU2ZQK25JOCsxNHNIVkxGUEdrYlBlZXJaaWF1ck9CMzVQSFls?=
 =?utf-8?B?aGZBdGlBSUQ1VzQvS252dnZSVUdGVVZNcDUxUlJtZmV2YWVZYTdUdko3dVkz?=
 =?utf-8?B?WUM3ZjluTUhUUkZ6eUFPVTA0cGd2eVpwUlM4ZU9nbWo5WE9uQjR5WUVFRGpJ?=
 =?utf-8?B?dkdTcVlTNXhMcnEvNVpmQ2RSeEwvSXI1czcyQmIzamVSZnF4anl5U0Z3c2xw?=
 =?utf-8?B?dW54QzNzSmJ6WlBPV0lNd3FkeUpZa1FtaEN4LzV0SVhMUFd3bEppbDdGV0k5?=
 =?utf-8?B?a21jaFZVZ1Zhci81OUxxSUQzYk05TTV6ZG1SWC9uQVk0SGVlVFlxbkcrLzVl?=
 =?utf-8?B?QTFTSXU3aXlUemd1aDFrVWpoNVdCYzJzeTZUN2VkOVpJMWtXS3c5Y05VNjNh?=
 =?utf-8?B?QlFHTi9FZEovZnB3dHhHVGNOb3UrekNXRWtCZG1wNEh5SUJ1OG5pZnNlbmNC?=
 =?utf-8?B?YWU4RURjRTZEalNrOTdwcUhOZEx3M1pJcmlEcEdQeU1XUitvWmcvY28zU3Vo?=
 =?utf-8?B?UUwzSzdOOUJSbnNDdTZQSlRxTktkYjZpUDR3eXkvSVpIWlM1RVBHRXljODdm?=
 =?utf-8?B?SXZpR1drQ1JrZmkvaDBCVUJyU1FDR25MYW5xT0hUVFJFWlBFaStacTZjWkVh?=
 =?utf-8?B?OENXNDc2RklNL3EzZVF3V1J0K1JyV0JiajVwZ3A4ZkY1R2ttYloxQVNSSlRW?=
 =?utf-8?B?dXE0OVVUdzRHV3VYOERQSm5DaFVGaWYzZ05mN0FsaVlUbjZudUhPT2hKOTFB?=
 =?utf-8?B?ektHQXQxZDFlc3JGRlJZQU1UNSsrS3BIdHJUcGo4cFplL3RCN1ljcHhuOFU0?=
 =?utf-8?B?ZGpJMVREc0NIWGVGOXMvdFV1TGxXOUJwWGIzZGNCK2FuWG1JZ3o5ZzJuT0pu?=
 =?utf-8?B?TE1aenc2U3p4RytCMVBJSS9NR2dyS1kyaWFqRHFlbjZsbVViRjdteW4ray9J?=
 =?utf-8?B?dWhUaXMvZDljbFljZFJHQnZBdnNYU2d1ZCtSblhvSHlHd0JJdHhWVlladEFE?=
 =?utf-8?B?b3ZrYzRDdHJ6OXpEYlJjTEk4TGNPWnRSYU96MTI3V2lsN1psTElQQmdBMGRX?=
 =?utf-8?B?L1JCaHR4ZVdHamEva2ZFSDExTGpaZmdvYnVKNFJTOXRPQnpScS81YXlqYjRO?=
 =?utf-8?B?Yml0KzBFY2hHYmtRRE14bnd3WWppTlp4cUNLekl6UFI1L3lNTEZVUHlmUjht?=
 =?utf-8?B?S1dHTGpTZTJ2MXFja0pZMGVGaFdaeURSNXVZT2FWM3pxVHpMZjBjRGhSVllp?=
 =?utf-8?B?OFJ5NWxvOGJOTys0RFRHNzB3NEdvd2tYZy9IZ29NNFNMU29zUkRkck95NktO?=
 =?utf-8?B?Tnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9b142da-d8fe-4ecb-e282-08de1d994826
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2025 01:02:11.5719 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oLG2VWTzoV/a81SxArR/GIW+opjkZuNBbV5Q6Nf6KI5S3su+pWIA7MSZhUpqFVMWvJG8D/zItE2Ibay39vfi0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5025
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

Quoting Gustavo Sousa (2025-11-03 14:17:51-03:00)
>This series adds initial support for Xe3p_LPD, Intel's display
>architecture with IP version 35.
>
>This series contains basic enabling patches and does not provide
>complete support for the display IP yet. More involved features, like
>the new PHY implementation and ALPM are implemented as separate patch
>series.
>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>---
>Changes in v3:
>- Reshuffled patches so that most of the ones already containing a r-b
>  are placed at the start.
>- Dropped "drm/i915/xe3p_lpd: Wait for AUX channel power status", as a
>  similar patch was already applied from a patch series dedicated to LT
>  PHY
>  (https://lore.kernel.org/all/20251101032513.4171255-25-suraj.kandpal@int=
el.com/).
>- Dropped patches related to UINT16 plane formats, as they were
>  incomplete and were not specific to Xe3p_LPD.
>- Dropped FBC related patches, as Vinod is handling them as a separated
>  series
>  (https://lore.kernel.org/intel-gfx/20251027134001.325064-1-vinod.govinda=
pillai@intel.com/)
>- Dropped "drm/i915/xe3p_lpd: PSR SU minimum lines is 4", since that
>  change is not valid according to Bspec.
>- Incorporated review feedback on the other patches. Please check the
>  changelog in the individual patches for details.
>- Link to v2: https://lore.kernel.org/r/20251021-xe3p_lpd-basic-enabling-v=
2-0-10eae6d655b8@intel.com
>
>Changes in v2:
>- Incorporated review feedback. Please check the changelog in the
>  patches for details.
>- Link to v1: https://lore.kernel.org/r/20251015-xe3p_lpd-basic-enabling-v=
1-0-d2d1e26520aa@intel.com
>
>---
>Ankit Nautiyal (1):
>      drm/i915/xe3p_lpd: Drop support for interlace mode
>
>Gustavo Sousa (16):
>      drm/i915/display: Use braces for if-ladder in intel_bw_init_hw()
>      drm/i915/xe3p_lpd: Add CDCLK table
>      drm/i915/xe3p_lpd: Load DMC firmware
>      drm/i915/xe3p_lpd: Extend Wa_16025573575
>      drm/i915/xe3p_lpd: Reload DMC MMIO for pipes C and D
>      drm/i915/dram: Add field ecc_impacting_de_bw
>      drm/i915/xe3p_lpd: Log FBC-related debug info for PIPE underrun
>      drm/i915/wm: Do not make latency values monotonic on Xe3 onward
>      drm/i915/xe3p_lpd: Always apply WaWmMemoryReadLatency
>      drm/i915/vbt: Add fields dedicated_external and dyn_port_over_tc
>      drm/i915/power: Use intel_encoder_is_tc()
>      drm/i915/display: Handle dedicated external ports in intel_encoder_i=
s_tc()
>      drm/i915/xe3p_lpd: Extend Type-C flow for static DDI allocation
>      drm/i915/display: Use platform check in HAS_LT_PHY()
>      drm/i915/display: Move HAS_LT_PHY() to intel_display_device.h
>      drm/i915/display: Use HAS_LT_PHY() for LT PHY AUX power
>
>Juha-pekka Heikkila (1):
>      drm/i915/xe3p_lpd: Don't allow odd ypan or ysize with semiplanar for=
mat
>
>Luca Coelho (1):
>      drm/i915/wm: don't use method1 in Xe3p_LPD onwards
>
>Matt Atwood (1):
>      drm/i915/xe3p_lpd: Update bandwidth parameters
>
>Matt Roper (1):
>      drm/i915/xe3p_lpd: Drop north display reset option programming
>
>Ravi Kumar Vodapalli (1):
>      drm/i915/xe3p_lpd: Adapt to updates on MBUS_CTL/DBUF_CTL registers
>
>Sai Teja Pottumuttu (6):
>      drm/i915/xe3p_lpd: Add Xe3p_LPD display IP features
>      drm/i915/xe3p_lpd: Expand bifield masks dbuf blocks fields
>      drm/i915/xe3p_lpd: Horizontal flip support for linear surfaces
>      drm/i915/xe3p_lpd: Remove gamma,csc bottom color checks
>      drm/i915/xe3p_lpd: Underrun debuggability and error codes/hints
>      drm/i915/nvls: Add NVL-S display support
>
>Vinod Govindapillai (1):
>      drm/i915/xe3p_lpd: Enable system caching for FBC
>

I pushed the following patches after verifying CI results via [1]:

  - drm/i915/xe3p_lpd: Add Xe3p_LPD display IP features
  - drm/i915/xe3p_lpd: Drop north display reset option programming
  - drm/i915/display: Use braces for if-ladder in intel_bw_init_hw()
  - drm/i915/xe3p_lpd: Update bandwidth parameters
  - drm/i915/xe3p_lpd: Expand bifield masks dbuf blocks fields
  - drm/i915/xe3p_lpd: Horizontal flip support for linear surfaces
  - drm/i915/xe3p_lpd: Remove gamma,csc bottom color checks
  - drm/i915/xe3p_lpd: Add CDCLK table
  - drm/i915/xe3p_lpd: Load DMC firmware
  - drm/i915/xe3p_lpd: Drop support for interlace mode
  - drm/i915/xe3p_lpd: Extend Wa_16025573575
  - drm/i915/xe3p_lpd: Don't allow odd ypan or ysize with semiplanar format
  - drm/i915/xe3p_lpd: Reload DMC MMIO for pipes C and D
  - drm/i915/wm: don't use method1 in Xe3p_LPD onwards
  - drm/i915/dram: Add field ecc_impacting_de_bw
  - drm/i915/xe3p_lpd: Always apply WaWmMemoryReadLatency
  - drm/i915/xe3p_lpd: Adapt to updates on MBUS_CTL/DBUF_CTL registers

The v4 of this series will skip those.

[1] https://lore.kernel.org/all/20251105140651.71713-19-gustavo.sousa@intel=
.com/

--
Gustavo Sousa
