Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E206B2247C
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 12:23:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3BBF10E5D9;
	Tue, 12 Aug 2025 10:23:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O0l8zj00";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78BDA10E5D9;
 Tue, 12 Aug 2025 10:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754994206; x=1786530206;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=8F/ickTAmrUwfVi/6FzeT0gNMyvNIGl2UW0UD8R9ISQ=;
 b=O0l8zj00jyluYGBiKYIqeBSWeOzdjf+JE1JImoeods4j25pLLFbxdmAB
 LVPKz6L8zoDUMrSUFf1HH0c1ZUA+1y0j/0WBWZA2nKbxnDbiiy2mYhS7T
 8o7IEftvQA6uf1CbleR9fU0NA92R2+/4Uqp7YVDN1Yd6JkrK7Do/vqFKr
 bOgDwxTbQMYably5gEdwiO2WkfOFooU33ZM46I4OsCkOqaNsrokyp+3Oj
 caJ+Wov5ZZx9UNZnXpRaS9G1A2o9IluSR7RpMdwI7xn61gved4sEGgsz/
 KDC+O5ae/WhNPL9iUXkMsCj0MEfsUxNGYYQhmNjd8p2Wq2Ag8dHPg9Fo6 w==;
X-CSE-ConnectionGUID: Qxx96ahqQwe7glpQIMjdRQ==
X-CSE-MsgGUID: 3ZNppAXJQLSOdB0uQsSYtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="74846003"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208,217";a="74846003"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 03:23:26 -0700
X-CSE-ConnectionGUID: gowtvbE+T/uGH77ph0q0pw==
X-CSE-MsgGUID: 7n7EEXDHSUuOQUjWeaCSYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; 
 d="scan'208,217";a="165347269"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 03:23:26 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 03:23:25 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 12 Aug 2025 03:23:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.43)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 03:23:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D6ICyFr/18Ba/CjOgUIViBe13l5owmlPP1kaaCn4FbH1oRGEHdyyPWSNp+utohiHcxb4dgZzrRT9mKhBKGNm8VBOhon6SosRMAuIOwuzArq6u0+bW6+Ez26W0op+M+v1N+Ov0kKE/GZ/Rj/AKJ/xE83BFf+1Y0E2WXg6BONsgbDL1a6Cs/M7tYuS8m830zDwI/69lpnPfGdv3fCmZ/bnnCGhlQ7HgrhMYvys2x0Hoq1sRaTx7Srh8e2bw/G0TUr1yrXvjSnMOcLyblsqQVi2AoWdJMGem3QFpJRSayTKRE678kIeGP1CtETtv6OdLwYP/rEW1x+DJ4+sDYgErPxqrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JErmluHVO244XWSVAt/nvH0yfWZS+gf/IyOhUhefeuA=;
 b=GWk8+SSGRJF3YNxUpoC3o0vKW0b3FDe0UPJGCO2zOxyLset/p4WuAYYdv1epkakCtjKi8fzIXCZQSOR2Xve49kVA1U2cFDPedCyPSZdNNfmmc0ExdXd2OT+HXRhSPPtvRaiQTvQ9Nrl2vs6+y+URQI3dNPr/LNJx2v2oLg5ySNsk/Ymz1EjRselRnbc3JVcuM9i35LiijdDKxPOatFKiFjuUfm3a7V/zRcRdaYGcXEUChkUFEMR3w6QQGyjJ8iKba2R9Dc2PUZiu67qrYmtBbBsGlmlrNjeQ6xf1qAfiEwOpvFz7SCwj357ktA0tbTwqCKEOlIas3SO3hTzMg31rqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by SA2PR11MB4923.namprd11.prod.outlook.com (2603:10b6:806:fa::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.22; Tue, 12 Aug
 2025 10:23:23 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a%7]) with mapi id 15.20.9031.012; Tue, 12 Aug 2025
 10:23:22 +0000
Content-Type: multipart/alternative;
 boundary="------------zvWhHxvSOqQkoxcMZAQ4duti"
Message-ID: <477e53d9-7c3e-44a5-93a8-8f8bfba81ca6@intel.com>
Date: Tue, 12 Aug 2025 15:53:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/connector: make intel_connector_init() static
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <cover.1753787803.git.jani.nikula@intel.com>
 <46443c16f9cbff039cd3c830871289ab17110905.1753787803.git.jani.nikula@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <46443c16f9cbff039cd3c830871289ab17110905.1753787803.git.jani.nikula@intel.com>
X-ClientProxiedBy: MA0PR01CA0090.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::19) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|SA2PR11MB4923:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a6cba68-d4cb-43f1-0534-08ddd98a43e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VnRUSE9CVW1QVDhmNFpORG91MVdoMUI5Q3ZBaDhhQ1JUQ0N0ZGcrSkMyR3Ba?=
 =?utf-8?B?ekxCZXNVZGRvMStJYzkvc2JTMisvcXZxOUpMcThYZis1TFgzY2ZUalE1R2Zu?=
 =?utf-8?B?QjNYOUhMaW5XMTcwTDJuTzNkazFTZE5teUJiclkvU3Y2VytaMDJRVFZ0MjZ4?=
 =?utf-8?B?SHFnbllYMXphWXNoeXp2czlKVnZiWXhLV1orSkJpNVpoMkE3Wk0wTERJaFFv?=
 =?utf-8?B?b09DMlQzVW5RcVRkMmdHSGRtcmFQN1BvM3VpbEJHV0daUStTbjI3UVUxc1cy?=
 =?utf-8?B?WmgvMm1XR3NsTnpxSjdDdE1yb3d2aU81YU41WkMvUWNyTGYyOGY3cjZGUmpw?=
 =?utf-8?B?R1VjVlhFL2dFQXdYZzNqOU8xb1BiS3BnZlk1ZkJtT2d4c3ZvaEovY29MWVB5?=
 =?utf-8?B?Ryt2bnMyQ0xsVVEzZTQxeFdCdjV5SnpqNjBVLzI4OUhIaTBPUG9jaXpoRVRO?=
 =?utf-8?B?VUp6azNHaXg5WmszQjlWVXFyazd1ZmFCTUp5dytKT0xScTJiSkgvbDFFQjFE?=
 =?utf-8?B?aGcxL0Ewa29raXBoNVhjOXVNaGRORC9WaGRCak1hVjlqL1J3NkJ2ME1sRGRG?=
 =?utf-8?B?WlNFekxTOElSSWVmeTBkWUdDZGJPWFJjaW9abStJVEthMnlwQlhhNXF5dmtr?=
 =?utf-8?B?ZFV0Szg0dXI0OGN1VGFWSFd0YTJmQTV3STRiRDVYWEU3RnUxKzhnelpUREhs?=
 =?utf-8?B?clNndXB6L0JCemFmTEY5Z0lvMVpLa3NLdkhhcm42TmFPS3duNVg0VjR5MDNy?=
 =?utf-8?B?UjJCZzNBNWxJT0xrbDN5V3p0WjN5clRIUlZTa1BEWGZXenIvL2FiQmRTODRi?=
 =?utf-8?B?VFdnUGVKaUcxRzFIWWl4V015ZHpIWWNpamQza1VkbndvWFYyR29uVkR1ZkUv?=
 =?utf-8?B?SnBNeXd4MXlhNnhSTithMXdRQzRyeWc2T0NvaUVVWnBrMFBZeVJpYUNadGlu?=
 =?utf-8?B?ZTlXVWRhZ29TdXpIOXVOckk1K0lESTZNWWhRWnZ5YVp4V3NHdlFoQS80Z0Fm?=
 =?utf-8?B?QnIvUlZLS2dTNGZJQWpnNy9kV3FBeW1ldWpMMEIzZ0xnQnpRUXltWmZhSis3?=
 =?utf-8?B?VW1qeEpBZ2pjRS85amNndjUvVTJ3Yi9yaUJIWjExdFpDTXFodjY2WFpRdmZp?=
 =?utf-8?B?dU9zZnVobFpaUGNVNWwvei9SdjlFTDdKYk0raFhFU0t4anpPVHY5NnVpcE1I?=
 =?utf-8?B?dXJoNk1mdlh3RDQ3ZXp0b1dWaHRaV2l0OVR0WDdtc3doR2Z6NG1CWUlPY0pW?=
 =?utf-8?B?SHlyTnBZWjRmb1ZiMFlNQWUxeFlkYkhrMzNYNnlIYkczajBKYmZldzRLYU9s?=
 =?utf-8?B?OGV4Rm5NNFhMQVNmRU9saHVSSW1aNEtrbHV6YWpib2VaVEk2cENwaFZYR3pk?=
 =?utf-8?B?SGRXMVp4QTVIY2haRzZXdDVNaHA4a285cXliME1JNWpIQVpWelhUNVFmQ0kw?=
 =?utf-8?B?b1dFendFSGptL0N4Nks5cUxEQVBCUjlxQm1LYTlLSmhRajhRZEdVckF3cHpX?=
 =?utf-8?B?K2Qvb1Q2Q0pNSElFcTJISG9SUHJGNEsxcVh1QzlNOGUyREk1ZXpFcHAxMitx?=
 =?utf-8?B?ak1WaWJkUEh2a2JrL3J4c3RKcWxRWjhzREoxN2FjTTZmQ2VFZnJ4cTZmelRy?=
 =?utf-8?B?MWRJcmhWb2NnNk82bm40TWM0SUZtMUIrelpKYXFpUWdWRjl5TklwYmJ5eEJn?=
 =?utf-8?B?ZVk4SmJBTkJqMExzV3A1TUVZYkdnMFl1cEtVYlVYZUswVEU2ak80SGZPbXAw?=
 =?utf-8?B?bnQvRWlQNHJOWjI3ZUI5WHZRRUN5SHRJNFV1blJ4Q3lEa2Z4ZU1lbzk2VWdN?=
 =?utf-8?B?N0pGVTNESU5xM3FyNjlTUDV0OEVMdlp0bDRtNmY3Mll6NlhMTUhzWkRDU2U0?=
 =?utf-8?B?cm1ZOTd1NUh1RGZDUWtwcVB0WVM1WTArMmNjNjcvRVBIYmc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkMwWHV0b1NCTHU2djNFS0VRSEEvTHM5NDVLMmZ3L3Q1QjY2blNCRElYV0lx?=
 =?utf-8?B?R1FrcXF5a0xPQW00SFFQKzBhc09KVi8xempzUjIzc1puVjZ2S3lzR3JLTity?=
 =?utf-8?B?WmhWRjdxTjZtU3Z4RXZ2dERLWWxSTi9JUWI5M0dnRktIT3NwalhHaWRuKzQ2?=
 =?utf-8?B?OEllanh2MHVZMVlCN1Y2dkRNTW1zVFREdHM2aTAyaVFibmRncTJxRTBvVGgv?=
 =?utf-8?B?WDlNcXpaTENtTE5OSVdlS1M0L3hMQnE5cE45Uzl1RmJmUE9XeVRkTjlkUVdE?=
 =?utf-8?B?WFlpSHNON1hQcHFjT01vU1dLSjVMbncwZ3FEd3ozWHRPS2IvWVVGSGxvaHps?=
 =?utf-8?B?cG1rMjNJRlVXZnd2Qnh3TmxKelA5QzhuWUtoQXVJdjY4QUF5Qjl2T1JXYzYr?=
 =?utf-8?B?V2Q0K1g5eWZaclNBY1hIb3BtalNwVzkyRUVxeWFoOXhWcFA2WllGdHg0Mlp3?=
 =?utf-8?B?QjdPVkJFcm9xaHppYlhpV0hHQzlCZmpIN2p4SWowUHdvYmZkblpjSjNzZFBn?=
 =?utf-8?B?K1hubmlBWDJ1dE15a0NyRFJwT0tIMDhyQjZaWncxMWpZRjhidUt4bUk0Wkow?=
 =?utf-8?B?bngrUzJCeXVUS2ZNTUIvTmNlMURacTRSWFJWMnpaa1Fsek9id0tFMU8vK2Y2?=
 =?utf-8?B?VmlZbnFjaVR0YzJyLzBzang3RFhYUm9UTW9CUEVlZG92U21RV3l5TjFFaGRw?=
 =?utf-8?B?YmtGMW5uQU1EbVlpYW9mTDRTcDJXMDdUTVJVSkYvV2l1TW9ndCtxNUxvMDRh?=
 =?utf-8?B?SFIyUTh6Y3IrVDY5U2wzSWFiS2pndkZKb0p1d1kxa1FqV0JSWE9Pazk0QkQz?=
 =?utf-8?B?ZkZkN1hxWmV2dFlCaWFKWklQZUova05HclRmZno0ZUVXOHkrdCtKem80VDNP?=
 =?utf-8?B?NEYyYURTR2FKakNvN0NCbTh4QXoxV2Zic3NiWVQrdERodmsrOHdQS2F5OWhm?=
 =?utf-8?B?Tk4xY0l2djRVZDB0bzZrSEhhNm1tUk5VdlUvMnRIY2NObFV3MHZ5Y1p6eWZE?=
 =?utf-8?B?a1VUTG93Y04xRFc4S2NremVrdEdNc0dqZWlQMGdsVGFJWHJNaURQYXhxMXVL?=
 =?utf-8?B?ZVlKaHdreEFVUDJ3RDdXeFpSRlFmenF5YTBlcXlnZGJUZHdHYjZNK2huMGlq?=
 =?utf-8?B?OHFXbnB4UmdwWmFBa3Q0b2RmVFUrTlA1WkdMdTJUZVUrYmN0dHJ3MHA4eXlI?=
 =?utf-8?B?UDM2RXJNVVAzakY4OHRpdmt2TDBndUpUQUNjVUpHTXg4QzZQVkhhRFZVaDlm?=
 =?utf-8?B?T2V5YzAyWXF6eDlRTkoyT0s0dkxpODlSSDVZT0hGQkhwSWlhOTY2S2w1aFNR?=
 =?utf-8?B?TjVlUkVlTjk5Zk92WjNEclRJSmdwbUl5ZzQyMTBxZG9CeERwNGNZOWYrN3hS?=
 =?utf-8?B?QW8wQjZmSGFvRjF2YncybDRhTnRvQ3RVbmN6TWRMb3hERC93UU1ZWWthOStm?=
 =?utf-8?B?TWRrbTRpTFQybjVXaW1nbnhLMHkvVGx4TzZPOFA0cGtXNlVySml0VmRYbWJL?=
 =?utf-8?B?STZyT2J2QXIxSEM0SE04UTMxUlpvYW1BdVM0L05zL25NM0h2Z1NiVG9JY1JZ?=
 =?utf-8?B?VDJWYkhyVnVjSlphRVFCMmVlUzBYeUVxU1g1dFU3bmZkeEtYRytPKzRrRkVl?=
 =?utf-8?B?dEVkVk9iWmN2WHRyaWNwREhxdi9NcEdCVVZqZEFXNlpwVDI4Qm93YUFFS0hy?=
 =?utf-8?B?anI5THhwMW9Ba3FIcStWR2owWVA5aTRGMDQxNjM1WXlxS1hCMkdnZzB3S2tt?=
 =?utf-8?B?UmdteHVVSTFNZCtwcmdQTUZuZWNJSkxEWjZHMVh3VEphRXhWd3M1OGdvTGN3?=
 =?utf-8?B?bVVaa25GRVhIc1Fxb0dxZFZ6eHRLc2ZQOW5PYlg0Mk1lM1N0ZU5Nd3RCSW9n?=
 =?utf-8?B?ZkU2bDBSMW5mNitpaEQxYkU1WmNjRWYrYkRlY1JFdFcrWmNUYnhTbndSYVcv?=
 =?utf-8?B?cUp1UnJEazVuQWNGQWJxMmJ6enMvb0Q5TDF2eEtOWnU0RzBybU5XZUtIQ0M5?=
 =?utf-8?B?VnJGWmwrdEJRdFp3M3psQWNibU9Hc2NwYXY2K1hFdXZ2UFVwSHhFb0o4RmtX?=
 =?utf-8?B?TG1LMmtVY2ZVZXlYanMxL3ZOYkU5OGEzNHJYcXJVMXhhOWlDQnRDRHJkenI2?=
 =?utf-8?B?Vkx4L1FxMjRDM0c5Y0c1U1RMUjRCNWhYMXBmVEVPck0xVVkrczd1Ni96TXFu?=
 =?utf-8?Q?ewH464tHWIaVV6W2bV6f7BCpDV6JX6fTzUOCE+2Srr/y?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a6cba68-d4cb-43f1-0534-08ddd98a43e3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2025 10:23:22.8477 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 21VQ7twWzlXlz9NCg7igDsltr2qABbbW0d+vFa7tp3Ly5sshX8L04jeyGR21ZYZ2AESVmrYVaG2MD84JKAQy92pOkHLb/DI7QkYLciCwjGaWVRl5/oYT3Ob8J93GSjyV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4923
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

--------------zvWhHxvSOqQkoxcMZAQ4duti
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 29-07-2025 16:47, Jani Nikula wrote:
> intel_connector_init() is only used in intel_connector.c. Make it
> static.
>
> Signed-off-by: Jani Nikula<jani.nikula@intel.com>

Looks good to me.
Reviewed-by: Dibin Moolakadan Subrahmanian<dibin.moolakadan.subrahmanian@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_connector.c | 2 +-
>   drivers/gpu/drm/i915/display/intel_connector.h | 1 -
>   2 files changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
> index 42c923f416b3..6a55854db5b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_connector.c
> +++ b/drivers/gpu/drm/i915/display/intel_connector.c
> @@ -77,7 +77,7 @@ void intel_connector_cancel_modeset_retry_work(struct intel_connector *connector
>   		drm_connector_put(&connector->base);
>   }
>   
> -int intel_connector_init(struct intel_connector *connector)
> +static int intel_connector_init(struct intel_connector *connector)
>   {
>   	struct intel_digital_connector_state *conn_state;
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_connector.h b/drivers/gpu/drm/i915/display/intel_connector.h
> index aafb25a814fa..0aa86626e646 100644
> --- a/drivers/gpu/drm/i915/display/intel_connector.h
> +++ b/drivers/gpu/drm/i915/display/intel_connector.h
> @@ -14,7 +14,6 @@ struct i2c_adapter;
>   struct intel_connector;
>   struct intel_encoder;
>   
> -int intel_connector_init(struct intel_connector *connector);
>   struct intel_connector *intel_connector_alloc(void);
>   void intel_connector_free(struct intel_connector *connector);
>   void intel_connector_destroy(struct drm_connector *connector);
--------------zvWhHxvSOqQkoxcMZAQ4duti
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 29-07-2025 16:47, Jani Nikula wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:46443c16f9cbff039cd3c830871289ab17110905.1753787803.git.jani.nikula@intel.com">
      <pre wrap="" class="moz-quote-pre">intel_connector_init() is only used in intel_connector.c. Make it
static.

Signed-off-by: Jani Nikula <a class="moz-txt-link-rfc2396E" href="mailto:jani.nikula@intel.com">&lt;jani.nikula@intel.com&gt;</a></pre>
    </blockquote>
    <pre>Looks good to me.
Reviewed-by: Dibin Moolakadan Subrahmanian <a class="moz-txt-link-rfc2396E" href="mailto:dibin.moolakadan.subrahmanian@intel.com">&lt;dibin.moolakadan.subrahmanian@intel.com&gt;</a></pre>
    <blockquote type="cite" cite="mid:46443c16f9cbff039cd3c830871289ab17110905.1753787803.git.jani.nikula@intel.com">
      <pre wrap="" class="moz-quote-pre">
---
 drivers/gpu/drm/i915/display/intel_connector.c | 2 +-
 drivers/gpu/drm/i915/display/intel_connector.h | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 42c923f416b3..6a55854db5b6 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -77,7 +77,7 @@ void intel_connector_cancel_modeset_retry_work(struct intel_connector *connector
 		drm_connector_put(&amp;connector-&gt;base);
 }
 
-int intel_connector_init(struct intel_connector *connector)
+static int intel_connector_init(struct intel_connector *connector)
 {
 	struct intel_digital_connector_state *conn_state;
 
diff --git a/drivers/gpu/drm/i915/display/intel_connector.h b/drivers/gpu/drm/i915/display/intel_connector.h
index aafb25a814fa..0aa86626e646 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.h
+++ b/drivers/gpu/drm/i915/display/intel_connector.h
@@ -14,7 +14,6 @@ struct i2c_adapter;
 struct intel_connector;
 struct intel_encoder;
 
-int intel_connector_init(struct intel_connector *connector);
 struct intel_connector *intel_connector_alloc(void);
 void intel_connector_free(struct intel_connector *connector);
 void intel_connector_destroy(struct drm_connector *connector);
</pre>
    </blockquote>
  </body>
</html>

--------------zvWhHxvSOqQkoxcMZAQ4duti--
