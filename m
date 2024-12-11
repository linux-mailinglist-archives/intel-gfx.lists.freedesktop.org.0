Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E259ECF09
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 15:53:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB67510EB71;
	Wed, 11 Dec 2024 14:53:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XAruuXCD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DF1E10EB71
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 14:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733928781; x=1765464781;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=xaGhaebCIJpexM91lZQ+ckhCYvovlTJ2OdA8MsQBPo8=;
 b=XAruuXCDJxSDwKSx1wIFBUO33ivkBV1d1be2vSg8T2arYSODnqZUddzt
 kJhACroueEQFvst39v+dMAdJAnzofdHJYRFQ6TB0zRQoxoFlp5bpzvLe5
 QB5K+MROo3O4NGUoq+5vVPQMQe1YuSO4DUgB0NrQpP5B1cqltxdd95Kta
 insRh27hF5NypChdRqu9YqP7IV7VzbFJPvqOl+m298Jqsn2EG/UtdtYBQ
 i0slBhWFLbN+VVPs2RQxVQXMnDrKA+ZveJrBVfs4HvSzrwwAwAOLVIPxG
 yIJrjcs8OxNmKvDBjInHSVs8eorY7h55ltdc/BVL682VoCG/c5sQSBQ9f Q==;
X-CSE-ConnectionGUID: ujFGVwfhRKa1GJE1a0iECQ==
X-CSE-MsgGUID: r9fqOSroR0+gtQw8CtSy/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="45719539"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="45719539"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 06:53:00 -0800
X-CSE-ConnectionGUID: C2tUcDZ8TEOgbxfSTm3m2A==
X-CSE-MsgGUID: w+B1q4h4Ts+wzHA2nW3Wrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133214310"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2024 06:53:01 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Dec 2024 06:52:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Dec 2024 06:52:59 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Dec 2024 06:52:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RCzzPU+t/VCRvUidtAYKqt1F9iZOx30Vz3njM189SxP8jZZWnbsxhuFyrUCJ5hlcY+Fs6W29dykj0XeAYBpc9i71YjESUaY9BginM4jVGYKcwJdO9X+9KU/eNBRaZXfnwJZnRdPStd0W2Rc3vfTzHF7c+0wQXooX8HLeWDdb9D9ALVBtXqgmxGW0hOdG4lHXXNc68c7gdNGlVML5Qjaiy29Tu6Zk1d66XU8uKa5pnIP/Q70PU0Y4IFWXxSmUyjOs4FLfDE1SS50K5AtFifFeEDpiAObTrsgfdhzmIbscH5Rv0k5xUMa8Opjx2IJWramiTDSb1jk3BK/remTpoUeuQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O9lOIqPi8svFrrSm5J13XfVU3LumBu1dwvGlVsbabdQ=;
 b=QFKvDYcgRUyrxOxNmK3wgPmZ38HVu5R5l8Dskrq9XGWIw7HnS3YJMdDZaYdoIqJe8CBufDkf/HIwTWuSEfSpPrPuGMsdsRCs8jDUgKDN/X/efeeMxiv+F7EulWxOtIlAXLr7pa5yPiHitUDNudKzYwZuc4eWj75vRwBOk6wguC2QtxY2ZxsfgASlhb3QC5Mc25cLeaE/gYRMHDskG3bc00c1raejBbNBVILQm+6WwpznkUXP3MM+s+pwreY+He4z0YJBFN5Da+z65FNVvX6aZfFhgsA3tY032TILYi5i0Dnm4/lWVjXdHK5vucsxawZ7d9LtSxfFAzUPltLmoZxVnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by LV3PR11MB8531.namprd11.prod.outlook.com (2603:10b6:408:1b6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.14; Wed, 11 Dec
 2024 14:52:30 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%7]) with mapi id 15.20.8230.016; Wed, 11 Dec 2024
 14:52:30 +0000
Date: Wed, 11 Dec 2024 14:52:20 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>, Michal Wajdeczko
 <michal.wajdeczko@intel.com>, Andi Shyti <andi.shyti@linux.intel.com>, "Imre
 Deak" <imre.deak@intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: [PATCH v2] drm/display: use ERR_PTR on DP tunnel manager creation fail
Message-ID: <x46u4zhhpnxgohyguhqsc4d73sbjwipebxp5uiwkopejsy6dpz@v3eysonfbmk2>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: VI1PR09CA0175.eurprd09.prod.outlook.com
 (2603:10a6:800:120::29) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|LV3PR11MB8531:EE_
X-MS-Office365-Filtering-Correlation-Id: 4493d880-3c9f-44f9-1a48-08dd19f36faf
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eW0rcUpudVdrMWxOU2pBWFQ2M0JmYlFXdzg1TGErNEJKUmh0SGhmaG5Ydmcy?=
 =?utf-8?B?RUhJWVcxVjVHRU80ZWxoOUk2SERZQTNENGFEYVhIdVovU252eWlTVlR6c0RD?=
 =?utf-8?B?VTJjRllXMEgzSmxQMTBCR3I4QkZCdmlVWVJXTmgvVFRwV0xCdnpFeTRqeEJS?=
 =?utf-8?B?bUxNY2pLeHY5dWVya1drWkZ1RWo0MkRDQkFrZ2tiR0FGaVNuSVlMZTFLVVdM?=
 =?utf-8?B?NXpVZEtxZ2xRL2NNWWE4L3Z6VjFDQjBwcmc2SmNaaGNvMkxRWEYzT2R6c2to?=
 =?utf-8?B?V1d0NWF2bktyVTNQc1Zpak9IMlo5K3QyRlZjMFBDK2FPWUEzVU1SSVMvL0gv?=
 =?utf-8?B?OHBxd1JUaUlvUTJXZkhqZXJCbXJZUStDRy9TdW90SW1iZXJPeU5ESmRUdElR?=
 =?utf-8?B?ejZPTC9nZk5QS2VneHdvcGVpY01BYzhrNjNjek1USWRtY0RFNjNQVGVxcUFD?=
 =?utf-8?B?Qzh1VzhvZzZMWEwwVEZmclFzeVowVktHRDViVFBBN2xtY3pPOXFBcVdpK09o?=
 =?utf-8?B?MzZvV0RxV0JPU0NuamFuOTZjMk85S0w2a3k5Z1J1bGJNVWFEVzRNWWp2aTdH?=
 =?utf-8?B?RFFpOTBJb3F3UDFXaXo5UEVHMXJlN3VqMm80SVQxaDc4M1JQaVc4eUR1b2d2?=
 =?utf-8?B?L3dPU3VycHpLM2kvUG5WQ3I2UFF1aWZLK0FWTG9qeGhaSzZsejRucHlQSVI4?=
 =?utf-8?B?aWZHU2NoSlpnOThJeHVFSys0T0YxeFk0OHJDUjR6R2w3VGk3TUNLN3VwU0hC?=
 =?utf-8?B?Z3BtbWFjNUpuZ1Nvbms0NU9KMUJ6aGNVejU5TkFueDZCOFp2cFovckNGV0tt?=
 =?utf-8?B?eHU4MTZiOWhUVURXTUhjUXpvbCs4bmVBZWt0MU1pRXFzQW1aMVNpZDBjQlk4?=
 =?utf-8?B?VWhaTXA0NVdKVCtDWnIwM0FvN0NBWmI4ajh0WURIUHJjK01vZnFoS3ovZmJI?=
 =?utf-8?B?eUVEU2hKWkRpc0dJL2ZqSCtUUVUybmxPcW5Qd2d3NHA3N0JaTytsckZqT21i?=
 =?utf-8?B?b1hXS3J2NFk5Smw2bW5YVWt4T2lrMDlwZlFyTGJXZS9kTWhqTFYzaDkvaWZC?=
 =?utf-8?B?bGsvNThhbkZXb2I5STNoVU5HZEwzZmhmN3pEVmh5VHM4cHpkVS9hRjNwV2Ro?=
 =?utf-8?B?TUd3czgyWCt4VzFrcWoxYlVQWnJGQmZrTG1FVTdoSjhLclB1ZUpuR3MzTzFu?=
 =?utf-8?B?SnhBRW55WFp4VTZ3VWZwTTJBRlNVRTlxVzJPZXZUcnJXd0w0bXJIUktRTEpa?=
 =?utf-8?B?UXlJK2lZUDNBQ0YvMm1tS3F3Z2g4UkV1am52dmFLNTZKOGYxcHBlUmFYR1ZF?=
 =?utf-8?B?dng2bnJDdkRUZW5qNEI3cDlJUXgxUCtxeWQ4bzM3WThVTTBpNHRqakNMVjN5?=
 =?utf-8?B?TXV2RnNNYjc4Q3M0QVhLUnJEcjZJcUpiWHNpNXEwRkxkQUtqV3NuY3JDMVh3?=
 =?utf-8?B?bEZLbEJCMWJiREhnNUpLQmg3eUNpRDNNSkxQN0RhT0l0ZlNsbzFYVVVjdXc5?=
 =?utf-8?B?eUdjQ25odk4xZ21zdi9SYXlUejgrTjEzbzRXR3d2dHY2dEJ2d1N5Zkk1Sldl?=
 =?utf-8?B?VzN0elBXTHE5Vm1zTm5uZ1pydHFwdzd5SUNSeVl1ZFlycmN0cjBGWi9GVkdS?=
 =?utf-8?B?MzF0akhLL1VMTTJsbi9DK1hPVU93QjM0bmZZTXZsRm1WeXhIV0t6ODRVaDFN?=
 =?utf-8?B?OWpDWmVvQnlpSjVzM3BML01kcytvbERaZFMrazF3NktWSGNJZGZ2b0txY2pG?=
 =?utf-8?B?UUk0cjdDWUdvVmdvTW96azBPby9BNWVDWGdYTnV6bWNZSXl5cEZ3RXZrYUdn?=
 =?utf-8?B?Lzg1Z1FaMkpCNmZiN0RTZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWdUN3NJd05ocEVESjUveU9YSHQ1T28yeHVNY2JhbVZ0Rk5sL0dhODgwMTVO?=
 =?utf-8?B?Y0JvakRqTnV6MWJuaGdEM0xnVVhtME9MT2l5TGlMOVZic3hYY3d0RHd5QzU1?=
 =?utf-8?B?cHd4YXh5d1FETkN4R205YlY1bk55c3lONEppTG1vaGRpNzljdS81WDU4WkdN?=
 =?utf-8?B?ck5qNitJSGNUN2R2R2VZUGJZRG9iQytQQmZ6K1Q0OStRWUFOa2xETHh4R2Yv?=
 =?utf-8?B?Wm5aMWhrY2YzMGwrZUpnUXhiY2NJUDNocUl1T0xBM0hJNkIwN2J3UXk3WGVi?=
 =?utf-8?B?WHpvaTZnL3RjNUNjakhta2MycXBYQkkxUk9HdDdnbkhySWZkWmoxNkFFb1NV?=
 =?utf-8?B?aGdQdVdQdmEvRUFpVVlqZW1rWFlGZHJPbnpPU0NtVXRlOGlQNlM5Z1JQajRC?=
 =?utf-8?B?ZFhqcGJhQTdzelRQVStqUUIxZlNyZVlSZWZ5bHpGWkN5Y0pzeUxUdEpyL3Vm?=
 =?utf-8?B?WW1jNmVRRWFwRnoyV3ExVWZ3OGVlVm5CWUw1U3dtWGNhY09lVFF4TFhpWk5v?=
 =?utf-8?B?TmJCWUQ3RXZNQ2Fycy9UT3J5YkFPK2VrNWZmZktKeEJMTEZHeWJ6ZVAvaGVI?=
 =?utf-8?B?dXRLbWRRREttTHViT21DazFWTmhsMndoWmtESFlZZHAzQUpCTTBFeUFiL2k5?=
 =?utf-8?B?cGE2RjhBSG04SkliKzc0WGRFTXZJWk5aNGFnN0FjME1pQVlYd2pQQVo1NWx4?=
 =?utf-8?B?QWhwMDBoWUlhQjRlbEE2OEtTWWV6eUxYYmtHTnZONXkrSys5RWM2YllkRGtB?=
 =?utf-8?B?eXE3SHFSN1BUa0x5MER3anYrcmU4MGxPcWY1WmtBUFlsMm1LaW1jbkNWaXRH?=
 =?utf-8?B?SkFBUTFNL2pBcmtON3ljb0grZENJdDdyL0xkZk9WLzN4UTdSQTY4blhiN2JE?=
 =?utf-8?B?endlaC9FVGo3bjQ1NGxrUE9NYmtlVEtQL0FMZnJYTkF4dGdsOFpOUjlEM0g5?=
 =?utf-8?B?NzdmTFBCRkNNbkNVa3QvY3ZheVF2RHJDdWV6OC9EWUViWUFzQW9UOEJBTC9s?=
 =?utf-8?B?cDNaWDRsR3dkczRRaHZsdFpBY0J2ZE1YdHE1T0lXYndROHpSNEVZNlMvM2lx?=
 =?utf-8?B?WkxhTFNEVTBLME90OGxmM0JqeTZVM3N3UjcxL2tETUwwaHVQelphcTZxZVNp?=
 =?utf-8?B?S2g2d0hYN3I0VGNDYnB2TXl2YzZjWWR1eGo1aUovdUdlTm1YSHZsd2dLeGgx?=
 =?utf-8?B?MzBUazZLZS9BVE9YVW9VRUFBL0E4VU51NUhCZW5wdnBKOHJMNXd0MW9oU2hy?=
 =?utf-8?B?WHVEbXFVbC9UT2FtN0h5enBsbEpNOE9PR2N3QktxanFSQ3hWaTFTOVY0V1Na?=
 =?utf-8?B?K3lKbjVOdFY1bXB0Mm4xR0dtRC9OWkMvMUFwUFY2K2hNWVkrYUdQNC9Rcjha?=
 =?utf-8?B?Rk9VaWUvcXJxWUtITVVEYmpRV1kvK0ViTFY2OTJmUlU2S2lzUUxMVDdCSSsw?=
 =?utf-8?B?MVFDbVMrblU3Q016eW5PaURQQ3U5ZXFNY2xpNjhWWm1ONHJ1SjZ4NXFDM2xm?=
 =?utf-8?B?cnlqU0EyUVoxaTN5a3pZdWREci9rTjYzU1M3TE9PaEhxUGtxVFJMN1Z6YkFm?=
 =?utf-8?B?cG5ZK3ZNQS9HTldJWDl1OUtOMlViRllXMHloS042b3BrY2Q2bkpjRmVEUTlF?=
 =?utf-8?B?QjE0YVhpTEZKM2VYRmUzM09yWEE4YnpLRkVsM0dTUVptNEJQV1ZSeW9aTjZV?=
 =?utf-8?B?c21PWXJhRnNBV3JpdjZjTjcrNjVzaGF0clRVSUhNMkt1K25HZG9PTjJoNXJt?=
 =?utf-8?B?TzR1dmFkcitreUZCaGsweVFzWjRkcS93dEVEdk9YOWVGUlpPWGNNQTlLUWNq?=
 =?utf-8?B?c0FJdE5RcnNmOVNCY0VsS1hYTzJFckhOblJEbGFvQ01wU1YyMEg3clRkWkYy?=
 =?utf-8?B?TkxxaFZpZkhuakFjVjhGbmtLYjJ1YkZrMWJib0tGd29GNUpnSllpTXZ5WlFL?=
 =?utf-8?B?VWE2dTdXcWlmb25FcTBoNXhKUlpZR1FFeG5UQ2pmZ2tvRDV1a0wwcnUyWERm?=
 =?utf-8?B?YllaVWZIU0VLYy9uWG9ydzdRSlBNS1hlQWJHOEtJMDNGS2FlSXo0UHhDZWZq?=
 =?utf-8?B?WU5pa3Y2LzNqRzdEMFl6cURNa0c3MXh3ZGV2Y2c5OWZsVTd5VUE4WXFlenJh?=
 =?utf-8?B?Z3NrT2o5bGJidmxZaTIxNENBZVBURHRESjl6M0UxeW9RSjZBbUZ1SFRKQ0ts?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4493d880-3c9f-44f9-1a48-08dd19f36faf
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2024 14:52:30.2023 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zJBNRXXVtUzqV8XlcgI13EUH7qQ36nmoTB0tlIAJ5x8pntnnUMVz0WbhjWXVLYoKJ8hzNYlq9GT/FfWjqgsE77drwh/vX+6ox18AZMZroU8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8531
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

Instead of returning a generic NULL on error from drm_dp_tunnel_mgr_create(),
use error pointers with informative codes. This will also trigger IS_ERR() in
current caller (intel_dp_tunnerl_mgr_init()) instead of bypassing it via NULL
pointer.

v2: use error codes inside drm_dp_tunnel_mgr_create() instead of handling
 on caller's side (Michal, Imre)

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/display/drm_dp_tunnel.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_tunnel.c b/drivers/gpu/drm/display/drm_dp_tunnel.c
index 48b2df120086..90fe07a89260 100644
--- a/drivers/gpu/drm/display/drm_dp_tunnel.c
+++ b/drivers/gpu/drm/display/drm_dp_tunnel.c
@@ -1896,8 +1896,8 @@ static void destroy_mgr(struct drm_dp_tunnel_mgr *mgr)
  *
  * Creates a DP tunnel manager for @dev.
  *
- * Returns a pointer to the tunnel manager if created successfully or NULL in
- * case of an error.
+ * Returns a pointer to the tunnel manager if created successfully or error
+ * pointer in case of failure.
  */
 struct drm_dp_tunnel_mgr *
 drm_dp_tunnel_mgr_create(struct drm_device *dev, int max_group_count)
@@ -1907,7 +1907,7 @@ drm_dp_tunnel_mgr_create(struct drm_device *dev, int max_group_count)
 
 	mgr = kzalloc(sizeof(*mgr), GFP_KERNEL);
 	if (!mgr)
-		return NULL;
+		return ERR_PTR(-ENOMEM);
 
 	mgr->dev = dev;
 	init_waitqueue_head(&mgr->bw_req_queue);
@@ -1916,7 +1916,7 @@ drm_dp_tunnel_mgr_create(struct drm_device *dev, int max_group_count)
 	if (!mgr->groups) {
 		kfree(mgr);
 
-		return NULL;
+		return ERR_PTR(-ENOMEM);
 	}
 
 #ifdef CONFIG_DRM_DISPLAY_DP_TUNNEL_STATE_DEBUG
@@ -1927,7 +1927,7 @@ drm_dp_tunnel_mgr_create(struct drm_device *dev, int max_group_count)
 		if (!init_group(mgr, &mgr->groups[i])) {
 			destroy_mgr(mgr);
 
-			return NULL;
+			return ERR_PTR(-ENOMEM);
 		}
 
 		mgr->group_count++;
-- 
2.34.1

