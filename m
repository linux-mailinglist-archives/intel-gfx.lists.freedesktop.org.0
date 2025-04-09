Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D7FA81F01
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 10:01:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34EFF10E7FC;
	Wed,  9 Apr 2025 08:01:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I02xUM69";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40A2710E7FB;
 Wed,  9 Apr 2025 08:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744185666; x=1775721666;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QdiiOPQXUjLwp7AhSnYQo0/4qm2s8T1aHMi7TAauMok=;
 b=I02xUM69usNo7hzPRiSuWTaoXvqfEAQ4/sEE7NLMqxIKAkqeb3hi7VWe
 3gsbRgjlZxmDxBaJ6qP9jtQ35KxdATCYrTdrFLlJkKqTkBjZyIhY4GMUN
 lunMP08qW38bdyDiQWfFbQIm11fInu7tc0T81bIfe42gv1cQLajBEnJyF
 oUx5B2L0RuWidYCjgsXtC8TZp2oEOrCV3Ez1x0dfjqAaZdMvddN8KDIS0
 pq3zAe0NfPS8/cM0jeoTMQyXHaj8smBMlV/gD824bIQ1VIUoXUk7eWz0Z
 Cyp9Ty6ui/t0XV/HUqMOu71CnX9fpT/hhgGpI9aGySLKUn4pYFRFrLpMj w==;
X-CSE-ConnectionGUID: AVfGAS4iTvCt8nN16QPOCw==
X-CSE-MsgGUID: rqtIrodNRzOrAppJIEOGnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="44892159"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="44892159"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 01:01:05 -0700
X-CSE-ConnectionGUID: CRk5VH7cQJucxtlu6kP/UA==
X-CSE-MsgGUID: 6OkL4RypSOSqH+fmZKYSag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133493082"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 01:01:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 9 Apr 2025 01:01:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 9 Apr 2025 01:01:05 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 9 Apr 2025 01:01:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aou2T4aj8u69qzvuqcZV/oBh5IDGET6p/CeMWYEmvgY9v7TWeMAJf5+v9YDefeRkffKfdMu0+lGJ1Q3F3GAg80dt3Cbx8FbPhwWpEjKpiManoO+2VazoAETORAmTdqRQJSXqQ1OFbRkggNdiR+AsWbvMCobNQbOgNykcI1suM/+F/81a27Q3cTk+b/979K87LaM4LEvFpg6OIFzmhC2mjk+db+rwxIsJllCoLoUfXwKH3ZDTMEfkgUsHoIRpeZ85/kzZmgc6gWYl1XtcnfJ+kSlNlE4yH1rVmiQIC0Egvnv7Z9i6TWva3WHRqeREsfmRAmcWU+ZE6zEupmPlUMv4Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fkdXiZ/WgtjTXvYoRRJ7WDeViP5jPYlyXjFdtAVNN0w=;
 b=PhD/CJ1CYfSPC3RIERT+BW2ibKhgUUJChfWuERceOr7pQgR21NzgQQwzIfDZy5Jzsp+GbOKQCpbiL5D2qlA00lrtkm4tSZ0eQWZVVVrDWH1ztgSNyBFy4g3KL50rRgReYp3NYmbSp68AO3R9m7ApaRW2X3+ltRJaRxv1k9hqXBqeO1m4j7vDWWepIZ+WJA3wBYAm1ZH5KnCxb4fe6FeuoF9zhJ3/R0tb9n3nI47O9nn+/8x+2fFLSqE/LqAP1TO0qbKuV9+8Ob+1WhAZUXSdt9BiCCKn6YPgPO2CJ1ZBZhB13aMUqQjVXziT9UsqE4V7E+kjp9xetLWlpuJB2DPgpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4599.namprd11.prod.outlook.com (2603:10b6:208:26d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.22; Wed, 9 Apr
 2025 08:01:00 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8632.017; Wed, 9 Apr 2025
 08:01:00 +0000
Message-ID: <08dfcf42-b58a-48b1-a602-de2a6f783d18@intel.com>
Date: Wed, 9 Apr 2025 13:30:55 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/vrr: Stop writing VRR_CTL_IGN_MAX_SHIFT for
 MTL onwards
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250409054909.968531-1-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250409054909.968531-1-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0086.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4599:EE_
X-MS-Office365-Filtering-Correlation-Id: 629e0595-d9ef-43ae-19b7-08dd773caac0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Ukc4b0ZWZlVLOXhSeFQ2MEdLRWIwWk50M29nemVIdlp6cE9uUEtWRUJGYklG?=
 =?utf-8?B?bXVUYzNIaGZjbWRsN3NuWkpGY3l4U2NDdnFkcE1WOGxyaFoxZ1N5ZUJLUkJT?=
 =?utf-8?B?YTJRWmtCWWZLakxPZ01INEJlaVVCZVRLTURyVkVVTTUybVhtMWdQbkQ4RUNa?=
 =?utf-8?B?b0pzTDBHemJaWmh2S0dmNHBoc0RYU1JHVjE1S2d2dGdwbitoZlBzYXdOa2Qx?=
 =?utf-8?B?VW0rRFdNVDFsNUV0c0ZPWVhkeUVWWmE0bFk0S0ZnSkwvdDRMMnJYMlBqVHFS?=
 =?utf-8?B?SXhSSkQ2Qkk1eWNwSFdNSzFrb0hXa2V6UmI5MjhwdGdWbzJBOWdZM3lGMFFo?=
 =?utf-8?B?OUxBNk1vSmNZb0MwYmlrZDVqbitUdHAxang2Z2ZocXExZUpCc0VYWXJkcE1J?=
 =?utf-8?B?RVQvUjV3ekQzeEw3dy93bE9KUVZxcnk1MDJtTS9hbWRlUWEvck9EMVY0L3Ru?=
 =?utf-8?B?bCtrL2JkUG05TWNWcXRRbXVQdlhBVnBoM0lZRmh6eWw3LzBicTh4T1Y3RFJN?=
 =?utf-8?B?VXpubk5KOVFlNFJmN1NrRnZEUjVPRElENm02SndSZ3lUZDdad245TVRCR2Uw?=
 =?utf-8?B?cVVsSm0vQk82cmNOcXJ1cDIxMnZZNHI0b0lEZ1BPYUhNb1IyN0tYbWhubjFa?=
 =?utf-8?B?YTREc3ZXSTE3S0hMR3crelZySW1EZGh0b1lnV0VyTjMybTNucDR0VzNmVFl0?=
 =?utf-8?B?N3NlbkZPbFRRZ0NndkJ2UUljaEc5a1YyUUVNbnp0MnhvK3Y2NmpSbkJLalc0?=
 =?utf-8?B?M09ETU5OdTQvTUN5eTJ2THA2N0EvMW4vZzM1Wi9POVA5dmc3Rlh3bTNsNHIx?=
 =?utf-8?B?dzJJVUZ2TVZKeE9BNzBGMHp4ZWt0ckFjN0xIWUcvZ2tXbFR4SXUzbEhkSkth?=
 =?utf-8?B?Y3lOTThDbWdpcFhqd1RNT3Z3V0g4YzRaSVBuVUt2NG9RZ1ZUVVIvVHJnd1J5?=
 =?utf-8?B?dHRUTWVEQTErMm9kNGtPdWNWRkpKaEJKb1NuY0tyZVVEV1BNN3MxOTB5bG5G?=
 =?utf-8?B?UVRDQXNTa2tYdTB0Z245OW1DOVR4TDhSQXcwSlRRTUZMd1BlUXY5WXlwNU50?=
 =?utf-8?B?K1htODJhOGZuSmtYTm9yeHJGRHBDZ3JFcEhQRzBuS2hhK2VlQithOWhHMDhy?=
 =?utf-8?B?aTZHQ2NDaEIyaFduci9MV01VRHYrU2FVNTEyaHRyaTYwRkRET0JnL1BMcUVJ?=
 =?utf-8?B?cnZNYkMyb0hiMlRTTnA2NHhIc3hhS2R2T2JWZ0hMTnRrSEZCcFphYlB5RlNL?=
 =?utf-8?B?cG1vL3hkQU1hUUNXNDFCVFI4N1NJZnFRTkk3T1NmcEY5YzlOOXpJNFFxSDU0?=
 =?utf-8?B?UVZFWFFtZW80QVNnSmQ4ZnI1RTF4eStOZlVKM2xMVndIcG5jNG9ONjZrSVFh?=
 =?utf-8?B?WGh4NGROMi9UYlcwaHBoUEQ2RTVwV2ZxSmVEeGJLaVJ1c3JGTUswVTB3by9Y?=
 =?utf-8?B?aFRNM094VjRKN2kwZFBpZjN2TkxiUzUvUVFBeVFjUVUyeGhCVHl2bHhVUzR3?=
 =?utf-8?B?bFZlbVQzbTlaRkhVRE5tRjR6Q21rcmNiL1NMUnVRL2paeU1rZW4wS3pkK2xa?=
 =?utf-8?B?dmYvMERwNFovWlpQallxWDhlb0tZSXF0TG94ZFBZQ0xIOGJmelNmZk9hSVE1?=
 =?utf-8?B?RUlvREFoTmdkM2s5b0FFQkN6STdzYm44WnlWY3htbVQvUThnemQ2STFJQTU1?=
 =?utf-8?B?RWlUQkhSKzFneXByMzRLb25oa3I1dmJueFJLYVB0TmhaVHNlNjJqSXFTbHFr?=
 =?utf-8?B?TkNiOVFYYmxVdTFwbm8yenVZZ1YyaDQwU0gzWThsWm1FeDBicmlxOGlIZEk0?=
 =?utf-8?B?NHU3OUtHNG00OU8rb0E5cGNHNkxHdWxFaHBZQ1M5cytpVytRc3o1NUYxYzl6?=
 =?utf-8?B?ZDBqb2VSNGlRUFJxVW5YOWlRbVkxUmxabk1oUXkyTGlxZm0wdkU4ZDNyc1FX?=
 =?utf-8?Q?HgqXtU+e6KI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MUlnL2k3MDVwckU1VE9FQVJMQ3FOMEEwaXhuNXV5KzNOSTRPOE1HSUdKNTM4?=
 =?utf-8?B?SWltZmFFZFNmaHFQbHFpV2syMXIyQklWT3puS2V5OUhWRmxZQ0RnNUhiaXNE?=
 =?utf-8?B?V3hKeVlmRWJEWU5aeC9DSHVDQkVzR0lQSzJxeTFNWDdsTEsyem56bE1taTBo?=
 =?utf-8?B?K0ZwMEhkMkM3cVNEZU1KbTM5WUJRV2hFNndEN01Wc1AzMHhjQjlob0JlL2Yr?=
 =?utf-8?B?YTVuWGVjQVg0ZDh5MzVPeWJHMVBlNGZZd1Z6V3U5YXgzSmorWWY2WnE4NmtG?=
 =?utf-8?B?eGRJZ0hzNC9QanZFYW96Z2FJYm4yZEpIVG9obzd0K1pZd09iK3RBdit0Nm85?=
 =?utf-8?B?UnFOMktLSnNYV1Y1TVZkV3NpNTVFeC81RHoxN2Exbm5XK1NWRzhlOXB3T3F6?=
 =?utf-8?B?ZDB0MkhETUxvLzkybHdiUnNJL3lmOE9SNkxST2p6OVAzRFRoZmxJOFVQZHRp?=
 =?utf-8?B?MW9HdEZYcURjTnZFb1IyOHg2cnBYUVlFeFVmTGNtN210QWZtbGpKd1V1MVlC?=
 =?utf-8?B?VUk3aHFCcE5iZ3VDS3ZOcXJMMFlrRDNDS0ZwVTN0U1FyL2JYby96SGwrQ3Vt?=
 =?utf-8?B?RVNIWmRWYjZFK0kzRVFUMEtTV0xqZEJZbFQ3eUMzdWZIV2dCOTZwK2JRZGlT?=
 =?utf-8?B?dkk4SS9XMjVCNTlrRHVlNkFTNGtBN3RtaTIxNjgwK05mclNTcmlXK3liMndN?=
 =?utf-8?B?bzdvZ1c5NTROTGtZRWptbUZ3bDQvZElyRmlFMVBmZUgwVUVhSk9maVlqN0RM?=
 =?utf-8?B?YTY5VzUzZnRkdmo4cGFQa3hJb3djUmJaalNVTFdFSHYweWFCaFhWeFp0NytZ?=
 =?utf-8?B?WFJGeHBkcFkyWkJIU3hUTnhjbW9qVkNpQ1ZFWEJOUEVGVFh5RytGYWJjc0pJ?=
 =?utf-8?B?T1J5YVU1czkza3MxNHo0ZWFLK3R6bHV6UGNiTEFQZkhDYVQvdmtjeVZSVkxk?=
 =?utf-8?B?c3NFNzZCMjN0OENYZFIvTjJueGowRmMyRGNwOFJFZWVFN2s2UVdwM0NJOWlG?=
 =?utf-8?B?UnpwL04yaXlwdERWcG1hZlZHNjloNU1WM3g4WjlyLytreXY0VjFMbzl4YWlL?=
 =?utf-8?B?YUFMd2Y1eXQydTBjK1BESTZWRzJIOXd5ZGc4Z1B5aW9iSW9uVTRnYjlxS1FP?=
 =?utf-8?B?WCtCVXFxb2pGSmdMRHR0eUJtTFk2akkrNUtJWENia3hrRVBvM2lzc2lZVGU3?=
 =?utf-8?B?bFVYWk9yaUhWWnR2YmpZQ0JYWTV1Q3VmWnAwMm03QVEzWFVGcUdiNnJNY2p5?=
 =?utf-8?B?cXFQYTJvMTR0aE1zOXM3aitQLzNLOXE1dUM1WkxiN0N3UEIweGdRTS85UVl3?=
 =?utf-8?B?b1ZrUnRMNzV4K2Y4SERqYkI1eWdrWkRCOC9FMHpaQng2WjViVTdmZjB4Q0Ji?=
 =?utf-8?B?RXk2bG9zelZFelRYK0ZtZ0NYNDc2amdKd29IWXUxcStMYzlpekhwWjdaejIy?=
 =?utf-8?B?bWlpS3RuQ3N6a095dERnNDU3a0xCMEFPR1h5NmRoR1dqWm1UczQyOUFMVHJQ?=
 =?utf-8?B?YjNzWUIvMjREMys3UzhJb0JWbmVmMDIxOHN1V0dCWkdIR2tsOUVKYVB0L1dj?=
 =?utf-8?B?TVlVRTV3RzdBeUkzZSttb21qYUovd3BSVFN1MVZXbU0rZks0UXlNYVdJanZs?=
 =?utf-8?B?NkZRMDFQVmU0ekZHUGhlTzAwNFJSaHBiMXlxL0JOUjhxUWhON1IyN1pSanRB?=
 =?utf-8?B?QjI1aGhSQ2JReWhSV3dadVpyVlFyam93MXNFUFpKaFdoa20vSXdPS25URlNt?=
 =?utf-8?B?NGwzWkRjS1hPU3ZQNkhpS2wyQlBoQVo3Vy9HRkVEaVpCSFFGUmRnYXJuNk9Y?=
 =?utf-8?B?T1ZWbWVSa0RQaXBjSUdLMExVaW1EbkoxWlMya3hCTlZHSTVEcXJDcFdBK0t1?=
 =?utf-8?B?azhhZGlUQk5ObWUvNVdzVnVxZXdhWTMzY29ZV2V4SUFCeWQrOCswcFRaOXVL?=
 =?utf-8?B?WmozcThNbXFJblc2NjZsK0NoVUdxemtLcm5wUXNkTXo0cS9JSWVrQy9HSnN4?=
 =?utf-8?B?T0tJcW8zbFZnWWZWZmxNekRlNU9rOUNCV2JGQ3Nla1h5R2VzdVpFMlBReHZv?=
 =?utf-8?B?cHB4NlhoeDAwaUxvQUdIZ3VzZHJHcnJtOFk4Y01wY2kxdmhHMWd4Z09rbEdJ?=
 =?utf-8?B?V2JMZy8wbFdPU3dSVnFPTDJCdThoa1Y4VzNEU0ZBaVRaRHNnMlQxNXZpOFBL?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 629e0595-d9ef-43ae-19b7-08dd773caac0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2025 08:01:00.6219 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jItYpCG/MJqbv3wD3PTh63eUWoCa3Su1pjsGemuSvwpMPiQIEqEU7job4IPPRRANrJ1ML6wvQMQy9jq/WOEBu7F858MkEV4T3hwVhBcUI8M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4599
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


On 4/9/2025 11:19 AM, Jouni Högander wrote:
> According to Bspec VRR_CTL_IGN_MAX_SHIFT doesn't exist for MTL and
> onwards. On LunarLake and onwards Bit 30 is "Mask Block PkgC" instead. Stop
> writing the bit for MeteorLake and onwards
>
> v2: "Ignore Max Shift" bit doesn't exist on MeteorLake either
>
> Bspec: 68925

Perhaps you can add 50508 or 71956 for MTL.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 633a66f6b73b..c6565baf815a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -444,7 +444,10 @@ static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   
> -	if (DISPLAY_VER(display) >= 13)
> +	if (DISPLAY_VER(display) >= 14)
> +		return VRR_CTL_FLIP_LINE_EN |
> +			XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state->vrr.guardband);
> +	else if (DISPLAY_VER(display) >= 13)
>   		return VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
>   			XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state->vrr.guardband);
>   	else
