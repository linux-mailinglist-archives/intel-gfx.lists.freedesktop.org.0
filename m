Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMIdH2QDc2nurgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 06:13:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC51170619
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 06:13:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82ED610E18B;
	Fri, 23 Jan 2026 05:13:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="guiry3VO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B028C10E18B;
 Fri, 23 Jan 2026 05:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769145184; x=1800681184;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mU4G8m3eQj9icgUEOubT9VQJqj/Ia/SyivweIbQUCP4=;
 b=guiry3VO3Y6IwJyzKGuTUMTtKVeNe5El9L8JO8vx35pyhIaXTX0VNtnM
 Ou4837n4V7xOT2DFJLXBnuvbpCaWVGHcTGpaSU4BDN0GqWfTHyCswB02a
 qxRaQN7Ef5IYa54k7VjKVnbj6W803VOeHFW1HmqOEYHLNfdoKWHEwbkQf
 Z8UsAb/d786g5D6CSx6O+f4M7wVIwmFp/oJDiPbg1JYNq3zy7OJ9L67c1
 4JOy46CGGPzkC2QVrkoqeMqQVBgA9kEGoQZ7OWJczC4l08jILt2kQmJD+
 dlCYokPdB/rH2jTN8QZM9e1JrOYWL+SmkmO6itpQgT7vRwqQ+JtfXS0Ud Q==;
X-CSE-ConnectionGUID: r1ZMd8VnTL2VPF7SHouVwQ==
X-CSE-MsgGUID: 3Vl/K3eORa+4ixFSU/ECPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="70562159"
X-IronPort-AV: E=Sophos;i="6.21,247,1763452800"; d="scan'208";a="70562159"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 21:13:03 -0800
X-CSE-ConnectionGUID: VF2gcTFoRqWOAmbdfWXlYQ==
X-CSE-MsgGUID: kcLnBk/GQfqogjsRDn0/7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,247,1763452800"; d="scan'208";a="211441088"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 21:13:04 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 21:13:02 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 22 Jan 2026 21:13:02 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 21:13:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aiciNnGN3mJZ+zrJquxpPCKPWYWFCN6zH4M5EgTNFxbTuS8GMaxlxcD40JmHES3Xmy/m2Omp9JhI4lKX4oiPgYuYoXtpy1TkjuoVn2pdP4uryijqS4H6gNmvRcjIkQgLmfdL5raXPYdCU+2HAbYhfQCngej4StRlAQtqaaCVk5EBm2uFhJ249Fhu+/cjawvack2IpJDUKfUcVTKh5lI3pdHYyEjfOUMVIo9v+EgCpWaF3jzV/lLJ9CQKpi4VPOUwaBVhWNrgN677bqGnxCCFlbyyhncDpzmEB9GB2p4cprTx3UL4VL75mWJBDqwD7SSl20LzKIK5s+G24uAVfw+Bdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c87NeZ8leA7Tmc0jw/Ym2192RKRqBYfdD2VtO0eyCmY=;
 b=ZuNHhuMN2FcrXl3wJV7GEziB0tnh9+AtekaxCIlSyr/jHxsmimurpbBOvCscuFOtLLMP7yNXSybJn//fdr+SpqYCX3VL58jGvgXN9snDEKN1ONvBZ7gZUwmz38oybLe1lkYbn4qZAbk9Erw2sE6U0SCsz1dZ067FEWVMXZs1Bx86d6xWGQJAtqJT8pvLYYyI0nTHutGJUU6qXX9nty142ungmIgbf+/fZATt+fUNjls5wK+aMHX0luAKjdv/FeV07gh8Wk9V36EcYIXUJJ3zuWMliXV/9kCzaV03FYYxnXCONReL/romiI8gcytbNF+gmahOU9Fh2gcFaj01zSc/Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB4808.namprd11.prod.outlook.com (2603:10b6:510:39::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Fri, 23 Jan
 2026 05:12:51 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 05:12:51 +0000
Message-ID: <904618e8-d4e5-4775-bc42-69cf7a7d2c34@intel.com>
Date: Fri, 23 Jan 2026 10:42:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 6/8] drm/i915/psr: Wait for idle only after possible
 send push
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20251223105120.21505-1-jouni.hogander@intel.com>
 <20251223105120.21505-7-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251223105120.21505-7-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0207.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b0::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB4808:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c80ba76-1b8b-4ec8-93f6-08de5a3e0e8c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dVlic0FFSXQ1RnJBNmFoSVRSY0NzUkJZNmNIYWkvYmN6bnN2UDhDdDVWS3BG?=
 =?utf-8?B?MGdSYkVYT2kzaTdTdjMrbHNweUc4QVh4S0ovNEs1RTIxYUhXbXArUFIxKzln?=
 =?utf-8?B?akRZSVJtQ3grc3lVakdsbmZZK1Q2czdkRldqTkI3YTNaVjZqUHB1VTF3Q3Ez?=
 =?utf-8?B?ZzU5MmdzWGloS3RSVmpPcDhJcDRtNVpHak5qa1IxQW0rWE44ZnQ0MnVrVVBx?=
 =?utf-8?B?MDVTTVR4ZmkwMzRYSnlUNHg2bExnZlVrUE55bXgzZG1vQzk1dWUxWUVPeU9X?=
 =?utf-8?B?bkcyNVZaL3ZNSlVmZVdzamtRdHdLRE13Z1V5L21FTklOWU1icmlRNU1KTEtF?=
 =?utf-8?B?U1N3N0hielV5OElJK3ZBOU9OWm56L1JBMWtYcDlBZUdMUVIvVUZZQ01QblVV?=
 =?utf-8?B?WSsyT0V5QzFDTjQ0U1U0WmE1bVI3d3AwbUdkRmZGQjBWTXJKTHVoUEtRVmR1?=
 =?utf-8?B?cklORHY1UHhNUElzeWZxa0N3UmV2Tlg4UnF2UFdsUWRoQ3lsNllzWitMT0gw?=
 =?utf-8?B?dzF5TjlSUFJIQ1NsSTZUemxjdmcxNE9wSlgvTnR6WU9Ya3lwWTBtbS9CUjVF?=
 =?utf-8?B?SG1LV1ZWQWhacGNyYjVoSHhQaSsxNDNKOUNjVnZmUUZkTkdLVzFpSldjNVdF?=
 =?utf-8?B?dzZqMEFnb3h4VzI1M3loWEFjRzh1RjBwMHZJV2xxT29qUE1HcjJsRVZ3elJ1?=
 =?utf-8?B?U3VDQ3ZPTWtXWmNwTDFQSXVieWM5cEwxQmtITWZWb3JDam5YYkVkd01LRU1t?=
 =?utf-8?B?aDNNcXc1bnRSeWJnRVcyazViQUViMnZOVzE1dk9LOWhhMXBmT0x1SGFXNFk2?=
 =?utf-8?B?aUJVSzdwNWFmUmNiVytmcHdrNXlydmhuTENUSUJ0OFRMMkQzVGVZb0ViZnBy?=
 =?utf-8?B?anUvY1diUHBETS9pNTMwVEZyaUhIVEp4TUwwMjVHZUkrbjRPbzVkdDA0QWhD?=
 =?utf-8?B?Zi9iWFREK3pPZ25VUWU1dEUvWGV5eUxOK2MrSEN5TjczSXlQaG9FOU1ybkpF?=
 =?utf-8?B?MXlYQXdQWUE5aDBvdS8ybmV5cGJwN0ZhMGZqVFl3UG9mbnVzb0JwcXYzNkhU?=
 =?utf-8?B?R2VxZXc2UTNjbWVzYm1TMUpLZUJQUkZMVC9Wc3R6M0pTNHZYK3BCUk9WWTQv?=
 =?utf-8?B?RE13NXhzQkpGZ3RNMTd1aVRJeXRpdE8xSWVjT1FCNzZvMDhjOEdjTVNmVHVN?=
 =?utf-8?B?SWh5MHQ3UlBnMjlLa25KbS9QOTJ1Rm9QYUh3eitRTzRncTNObkkzL3ZJOTB4?=
 =?utf-8?B?aWxhV1dwSjA3SW92NXNFcE5xSndRTWNIM1QxYVU4RWxQSmZPNWtnN2psQUxw?=
 =?utf-8?B?dFJSMzIySTI4dHA4dzZVRW90U1F0cE9SWE5xc2IwN1lSZ3REUTJrRXdLMmp4?=
 =?utf-8?B?YWk4STE2T2ptS0U5a09vY2ZhVVBOdFJUbC9mUm1FRzZWK2JsWE85MXJWMGYy?=
 =?utf-8?B?czkvbGU3V3ZoZjJnb3pNOVpwdk1UZWtXNldzd1JzaXpVVlRiV0EzQzB1ejlz?=
 =?utf-8?B?RmlKTk9aWUxkWTBpZmM3SkhzakliOE16L1hhQkRkZC82V05tV1BDSDgySG1U?=
 =?utf-8?B?NEZXM0RVYVc3enY4aFJkUDJlaE5HN1kxVElDamVGR2xqbVRBUDEvaUZWNk84?=
 =?utf-8?B?MndMS1ZpYlczZ1NjQ242MUVaWHIvYzhCWHFtT2VGNGtvOTlGL3FDZkcrOTcx?=
 =?utf-8?B?L1BoS0d3YW4vTzdBTFpkSWFtT05MVnFEL1NDUmdlUks3N3lOWGFwOUNHNS9C?=
 =?utf-8?B?Zkhqa3pFWjdKQTByQXBnWndTOWpTT3FzSWFpbzNqS0M0WWlNVm5SSzVYdmEx?=
 =?utf-8?B?SkZMNWZCaDlhd2ZlUzd1eWlJcE4rdUpCa3RvNS94VHdndVVoRjdZYlZDbStI?=
 =?utf-8?B?VFZBaU4vQU1VYi95UU5Ic1VpSXJMM3hzTUNxd2hSbUxjZTJnNXR4QktZelJH?=
 =?utf-8?B?TEFLMVlXd0JQQllxOEE2QnhLRzZsL2RwbTNjVFc5NGRxUlVTK2pGSjlaR21u?=
 =?utf-8?B?Vm0xbk5kQUtCZ3hlQnowSUt6b3ZWeHhUSGdBOGptcC9KcEt4OWZqR1BQWHBK?=
 =?utf-8?B?UUJ3SFF5MVZleVhqZCtNZnJDZTFiQWdTNUJBemxZU2t2RGJQWXRiSVBaUURC?=
 =?utf-8?Q?DRtU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TDJSaENwN29qdlZaaC9lNXpjYXBDZTJnTDZzTmpwRnNsalM1eWlNOFZ2SzJr?=
 =?utf-8?B?Qm44UmNUWSt6V1UxN3J3K3dML3hPS0t2bzQxVTRiRkx5SWVEb3VyZ1lLaFFT?=
 =?utf-8?B?akZBTEZJRTFLMnU4ZytnU0ZQMXJzaG8xWnVzNWNuamYyc1J3UngvaVRsSmNT?=
 =?utf-8?B?N1ZqNlR4dGduZEdIMkQ3eENjNHR1U25VWk4vUmp4b1V2MHhjZDhzT2h0M0FI?=
 =?utf-8?B?SDlBMW1pQzdLWGNvQ2hJZ01Vb3oyMER3amVKYTRkNnR2bXZNSm5ldVdjQnBw?=
 =?utf-8?B?QnVDVUlUT2l2NUcxdFBrMTA0Znl5djVmdEVFMEt2b0RPUFZlRE1XWTNxQWhY?=
 =?utf-8?B?Q0NOTmtxOUdJMmZZUGgwazZXMXlmSUNWYjVGZjdUTVJFcEtYWkM5RmF0VmVl?=
 =?utf-8?B?bkpKUU1xWnQ1WWVyV1ppQityNW9jV09FWklCZWRMUWNrTGlPY25wVmk3RG9w?=
 =?utf-8?B?eTFnU0o5RXcwTjE0SUZVSWtmMUhaRXdUVWxFcU44eTBzVlBQelRDVXRJQkN4?=
 =?utf-8?B?MlNmbi9sV2tSRXByRHlDZ0tJRmRjWGRFd2czYlZ3SnZTQW5WN3o4N2F0dnU0?=
 =?utf-8?B?L1hXd25QdFVSc3F0NnBVUjRDK05XQTI3VFRJbWt1QVFXMWREdDJWaW1lZ0My?=
 =?utf-8?B?RTJDUkxZbW1VeVdHSXRKUUMrSE9pc052VlRaUDN6Vmd3NVQzUk1aRnB3UTFy?=
 =?utf-8?B?R2Npd1g3RldyeDZhWVBDWngxL0orQUtFckluSDlFUDZZc1Nnck1qY1JVUVZa?=
 =?utf-8?B?OVVOUk5BTnUxQmxnVzh1QUdiSEJRQk0wMUx5bFowQW1lNmVBaCsveHBQVDQ4?=
 =?utf-8?B?aDJXNmdNTHIySHlnTUdJWVlqbGFKTGVScURHYzZacEJ4b2wzVkE0SlJRWEFa?=
 =?utf-8?B?NHZkdC9IRnh3Q0Y0WkxWSlBwWDkzcWZaNkJ0TlZveUtKUGhXVCtIaUZDKzBt?=
 =?utf-8?B?UUpZZDNycm03Nkg3QWt6d3RueitFUXhvKzc3cWExSFBrMlB3UkF3ODBGN1pr?=
 =?utf-8?B?aHlUTjZGaEcwbXFNOTdscjRTQVhqSmFCVHNXM0JMSUx5cTN4Q3FvMWk3b1ZD?=
 =?utf-8?B?VklzeVZLZ3c5azVudjlnS0JITTE1YTBHTHBlb2swWC9NZnB3eEdUcG5INzVx?=
 =?utf-8?B?ZUIybERKbWUySVhoa2hxallKQ3k5Q1F5b3FKeTZEWTBmQ0VFQ0VIVWFvNEMv?=
 =?utf-8?B?MWVZeUhTbVIwdEU4NzFVRk5rMlZoWDFkMVE0dFQrYkZ6S2NxVTF0eWMxU3h4?=
 =?utf-8?B?WlI1Um52a2tPL1A4MUZuWlNBVTd1UHdqamQ3N1hpbUtCa1Rad204UHpNTXFu?=
 =?utf-8?B?N2xSTGEwalFkekVFU01WblpSY3BQT1pUODl3WWZkVVRaWnlrUHcxbEdPNkhX?=
 =?utf-8?B?TXRhMWlZbG5CT3J6TEs0TWNvUHM5Uy9jMk1YaUhYcmlHYUFVMUQycXVpRFlU?=
 =?utf-8?B?R1FDQVUxaHBFc3Z3RlBYZ2U1ekt1UkxFWWxiSFhZVWptN1lwemorRkhtMzVY?=
 =?utf-8?B?b3djUU5QNGdLY3RwSkMrTUZoektMcHA2cEs5KzhhY2Ivdi9yaCtoSTF0a3Uy?=
 =?utf-8?B?TWZyeGJqSEwwR3BDczcwdGNHekxBMnNTRHBscUxQNVMrYkZLRDRvZHo2a1k2?=
 =?utf-8?B?V0NoVVE4ZitYWXFBazVUbndiaGZ4SXhNZnY4bnNCdlRVU2d2SHEwRVBjdzV3?=
 =?utf-8?B?ZU82cUFNUnEvcUcxdHBBMjNZUVdUaGpsbUxaeDViNERZZGxackZLQTVYcUU4?=
 =?utf-8?B?NDlTRGFINFJLaE9vVFJrT2tKd2llRkVleDNnekFPVVdaeHZMUGlnWExaWURK?=
 =?utf-8?B?cm9yM1RyREQzRXc0Sm4zeXRlOHUwUGk2NXNSU3BBRWlyaW9kTWc0ZkZWTTRU?=
 =?utf-8?B?UzNVM0dnc0xXVTlvYTFHejM1N3hudmRvWVJtRmxLQXlIRmNQemF1MzR5blgy?=
 =?utf-8?B?a1QyYk9INk9NS1JvaHlmT0tZM3VuTi9KTWtobm5CU3B1VEE4bnNQSU5qZGpu?=
 =?utf-8?B?Nzk2TnJZK2ZKWWYxSVNxSkJmWTJuT3VZTnF3WjFjV2c3Q2N3bXdoWDZDNHdz?=
 =?utf-8?B?RlJHZWIySE1FN1RGZHNKbG9yYXdUdko4c3JIMEY1WTJ3RGNYUUFtRGFnNWZF?=
 =?utf-8?B?RVNwZkt1OFZUNlZwMkJ3S09FOEM5NlBtTnVpT3lYeUxMK0lmbmE2MUQzODBi?=
 =?utf-8?B?YlB6QUd5MVh3bXFFV3ptYitHbE1EZ1l3QzExR3FjRDNUNzlUaXJtN2pIYnJQ?=
 =?utf-8?B?emJacWtiZEIxZUV6Vnk3MGYrUHd6aGFSbjJCcHdZcU44QkpZd2F5UEVNMFB1?=
 =?utf-8?B?RkJWdEdOVjhSY2NGSXhaSE9uMVJLNmpTOUVkRmxKUVNiVFI2NW5FeWpDZU9U?=
 =?utf-8?Q?uNpF2/1L/nEIYaFY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c80ba76-1b8b-4ec8-93f6-08de5a3e0e8c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 05:12:51.5424 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WQ46akQlO/XY5+ZPZZ+357IOTbWVJ2EdBMJjFCdpPbzh7E2hatwgvhlUbp+OBOdFVdMu6IagUdSbHoUB/dQIO+/ksIZszvtpFbQqZ6gdB9Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4808
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: AC51170619
X-Rspamd-Action: no action


On 12/23/2025 4:21 PM, Jouni Högander wrote:
> We are planning to move using trans push mechanism to trigger the Frame
> Change event. in that case we can't wait PSR to idle before send push
> happens. Due to this move wait for idle to be done after possible send push
> is done.
>
> This should be ok for Frame Change event triggered by register write as
> well. Wait for idle is needed only for corner case where PSR is
> transitioning into DEEP_SLEEP when Frame Change event is triggered. It just
> has to be before wait for vblank. Otherwise we may have vblank before PSR
> enters DEEP_SLEEP and still using old frame buffers for first frame after
> wake up.
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 13 ++++++++++---
>   1 file changed, 10 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c7ca4f53b8b8..1aca4802b7d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7333,9 +7333,6 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   		intel_psr_trigger_frame_change_event(new_crtc_state->dsb_commit,
>   						     state, crtc);
>   
> -		intel_psr_wait_for_idle_dsb(new_crtc_state->dsb_commit,
> -					    new_crtc_state);
> -
>   		if (new_crtc_state->use_dsb)
>   			intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
>   
> @@ -7375,6 +7372,16 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   
>   		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
>   
> +		/*
> +		 * Wait for idle is needed for corner case where PSR HW
> +		 * is transitioning into DEEP_SLEEP/SRDENT_OFF when
> +		 * new Frame Change event comes in. It is ok to do it
> +		 * here for both Frame Change mecanisms (trans push
> +		 * and register write).
> +		 */
> +		intel_psr_wait_for_idle_dsb(new_crtc_state->dsb_commit,
> +					    new_crtc_state);
> +

If I understand correctly:

For Fixed RR case:
Suppose we are in PSR:
Skip_wait_en is set.
The portion around the Send Push will be like:


-dsb_wait_vblank will no longer wait for the undelayed vblank (we are in 
PSR and skip_wait_en is set)
-we send push -> to trigger frame change event for PSR HW.

-After this PSR HW is supposed to receive the event and may be in 
transition period so we wait for idle dsb.(which internally makes sure 
that we are out of PSR)

-We are not sure whether we are in active or in vblank region at this 
point of time so we want to use dsb_wait_vblank. The skip_wait_en will 
now not come in picture since we have made sure that we are not in PSR 
in previous step.

Then other steps will be similar to what we have been doing.

Is my understanding correct?

What happens when Panel Replay is in picture, given we can have PR 
enable with Variable Refresh Rate timings.


Regards,

Ankit

>   		/*
>   		 * In case PSR uses trans push as a "frame change" event and
>   		 * VRR is not in use we need to wait vblank. Othervise we may
