Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Ea0BMjiemn5/AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 05:32:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0590AABAE2
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 05:32:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFAAC10E1F4;
	Thu, 29 Jan 2026 04:32:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kC3rArKw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF14510E1F4;
 Thu, 29 Jan 2026 04:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769661122; x=1801197122;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KYyfUJOuPj0rFfZceLbG6poIH0mveVIuh4rutz2Vjgw=;
 b=kC3rArKw+g05s4Ud1F+0QnV/Y8oEqMGHhIbQAoTjVodz1UblcFFv/Dnq
 5C6wyZPNpE9RrppVe6iYDX2w/KeZhxTAhy2mNkLYBajv5CEhdVNtzgdfH
 7innQeX9VEPGts8eISI1Cei59kSK2tiW0W89ITvGxF6p+36h9KhduQuzx
 e/BvVolA1wslnCWR2pLUiFRIUd7yMpDS/teLqMCOX7akSWnf/LrsH4qto
 F8SfjjZBf84E4Y1oi4e4IKs4DaLUQhzIrY/Xy94baZ0EAre/bj2n9zjkG
 Z5B7XOBkbjZfcYhDxx1UO2uJ5gUefpgRhyQh/fJ0ugpT5L8oxRoLlhLHT g==;
X-CSE-ConnectionGUID: KHnCJFaOQma8MDa0WkpwAQ==
X-CSE-MsgGUID: 24pXI2P6RQ2Zxz68IgkrOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="58468502"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="58468502"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 20:32:02 -0800
X-CSE-ConnectionGUID: FWvoNgg8RFadzTRTIP19eA==
X-CSE-MsgGUID: iEyBhKRbTPSvp6kL/SCoOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="246065656"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 20:32:02 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 20:32:01 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 20:32:01 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.42) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 20:32:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BC9h0lNfp2bCPuEJWfaxy2AYdtRDIRcoWeJ+1V3+d9uvGaF0Mdt/080ApTtx0yTNLCXVhwf4JxhIB4RvOQksXq12K5mPguWewr3F9fhTNDueQX/Jw6gaylxXH/vM3z2Oqy+OqiB7yrF601Ix/m26G/XVZdZl0lsAKp5MddGct0JUjJk/GhwoqOx+RutGb8ngE1x3YKoJv4I3PsTR6padWQGhCjhUdolmC4PXUoyL6yHrT1iJHSoL/t09htbr9fUH4E1CYfBRe3iF1HAX0jwFqTguo9zCCTmJqHfHCiuzXXV1ofF6FB5PaF6Q8MIwSVnTJotmSFqaoYf+CWBm2mfcpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G+hQXUgZEJhfCjsrWcb7qsQQ7VKItTZnyjQ0qNYjJt4=;
 b=LlIasjcp+bU2m/E5ojb1HVWXc7QwquV/gCXduqDac0ddE91kYx/n3LA1xOwl0NLrYA7oA+UIqC9GQM45KtiBOfmH1IZ04SH7D9YSWIbUfMTnmLNSJksODSDYqSN+7ACg9yoRpE/xEjY3pgr+xM1eQDKGJzv3nawG4y0NURguFQAt2LqZiJmiodApb1znhw6dsYt2iV/kj/zi3nK11oni7ZtqUMLvosBdx/RX+Khat209Xpg810aJLvUxBf3SQKODFwZj+3vCQ7xOntVspVIYaT5seuFTqBA7qY3KLOdkYpRYH9/NpIeIOA+rAjW8yWznTTv5FOA6e//aPLDAiDGLQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Thu, 29 Jan
 2026 04:31:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 04:31:59 +0000
Message-ID: <8132cd5e-9592-418b-b065-4146ba2e80da@intel.com>
Date: Thu, 29 Jan 2026 10:01:52 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] drm/i915/gvt: drop dependency on intel_display_types.h
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <cover.1769612208.git.jani.nikula@intel.com>
 <2fa5677f5ff3dbeaa75a7984d74fb9855a4ba3d2.1769612208.git.jani.nikula@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <2fa5677f5ff3dbeaa75a7984d74fb9855a4ba3d2.1769612208.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0171.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1cf::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB8282:EE_
X-MS-Office365-Filtering-Correlation-Id: 52611c70-9bc2-4c63-5292-08de5eef572d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TzNuVlRZb1dIZFZpZFU3aGhqRkdjSVBsTTdHcmdPWkc1SlEyc3lYbm5rbzEw?=
 =?utf-8?B?RkYvTS9QZ1ZXWUY2dEs2b0tOWXB0dzlKRjRGY1JNSkE2a2lpSnhuakxwVjlN?=
 =?utf-8?B?MnhZRFh5MGNpQWM0RUY2OTFFeTB0SjZaR1g5SEc0RkdzbFd3R3ZBTzhFMUNQ?=
 =?utf-8?B?ZnM4RlZlYUk0cGxpNjQrZXRxMkhoY3VadjF4NzNTYmVmY0lJVGthWDJVUGUr?=
 =?utf-8?B?eHJHMEJzdEJvOC9NVDV3QmFaLzZLRDhtS3V3WmRDNE9YUXQ2Q1ZqVzhVSGV5?=
 =?utf-8?B?UUVVZ053OHJ5eGYxWElDUXZ6SHgyaXY1NkpkbUZzWFFGVFlWQXRvQTNNa0Jj?=
 =?utf-8?B?L3JBNXljSjAwVTRNT2pUcjhkajJIdEUrcWRDNzJ4b0U1S3lwME56ME4wbjd0?=
 =?utf-8?B?TnJQSzIxZkNTVlZZeWNEcUNGbEhDYStNWTV6QktmYkVQMlprOE1oT2J6c1FB?=
 =?utf-8?B?S3FIaTNQZnp4dGY0aUtoOGp1YVB0RUV6ZDNHK2hqRnE5bG5URFgxbFd0bTM1?=
 =?utf-8?B?TWpJcElnckkrTGhpSzhVRnJEUXZqcHQzSmg5RnZhWHhpK1M2c3NKVGYxaXNt?=
 =?utf-8?B?OGkwUlYwSWtWVG1tK2VqZG9LVXFCZnFkNGVZWFp6bVdscGZqM0VCL1BiZit0?=
 =?utf-8?B?bU1YYXNYL3cxQ3BxQlNLOWdRdE1hZjR4WGVETlFkaGtSNkV6c080d1dndmJq?=
 =?utf-8?B?OGM0TGc4eSs5WUgvQ0JPYVc0OHp1T0M4MVlNbHN1VTJ4bVdGQVJJMDR0NGNV?=
 =?utf-8?B?STlGb3J6R0F6K3VWVmtpODhIVVYyNCs5VXpIUzhtaURBUnBiSzQyS2szQXox?=
 =?utf-8?B?V1JzRmY4QlpOTndJY3FXcVZqaXd0SEdGYzBwTHF6aklCbFFXYlZZVG9JRVFq?=
 =?utf-8?B?QVIwZDNqdEtCSlA3UEN5dDBEdUpmRmgwYzN0Ui8rOHNrRlVyZXpkdU5XVjNF?=
 =?utf-8?B?LzRxZWp6cjFadmtXdzF2ck5VTUYxazlHbFJvMGV3a0FURDh6NVhFY3J1MG5G?=
 =?utf-8?B?YjJ4Y3BDUUM1aVdIZVJDeTFDQUhHQXZlYUJXWDRVYVhHTmZIYnk0OTdUU1Y3?=
 =?utf-8?B?L3oxdU95cWhMRit2UjZzaG41UmJDbWhmR3VjaXBjTFFqeVRDZXpNZEN5cmVW?=
 =?utf-8?B?U0lDdHMwUVNZYURTTXVIOVgxNEEra0RjeEtCeVc2bmJTNndDYU5vK3llTnRT?=
 =?utf-8?B?NGZORUR3ZE9VL2U3dlJzVjFjSExzb0d5dllZVmY1NEcyejE2dWlhYnFodzY1?=
 =?utf-8?B?UW45ekZ3U01yaDlRdVVtajlKRVhPY21kaW00dnphK2pNWE93RnNsOWFlSi9m?=
 =?utf-8?B?R25MY2tKS1Vpd2N5SHJBSEdGYlVZcURuTTRRWjN2dWxDRC9rUUw1T1ZjY3V6?=
 =?utf-8?B?MC85UzNiM3BYK3FaVkFrb2NXT1Z3VHRVNHVBYis4cVQ3WnBoRVdQaXBGS3cx?=
 =?utf-8?B?WnpuUk1URXBERmh6aFRzVCtMZEI1amJCZTgwTW5QYjRQVUpTcGJoV2dNL29X?=
 =?utf-8?B?T1pXMUtnaXNDKzNzMm5kTmQ0NGFtQWNiQVRKbFhJTWpYV0FRL1dKR0Y5UExF?=
 =?utf-8?B?eHhpQ01NaFQ4eTlGejN1cTAzc3RDeWVSaGRyVXJSSmFtS2xQNzQxbXFLM3E2?=
 =?utf-8?B?MDlZcnJyQ1Y0KzNaR0sraXhCVVcvUmVIRFhWUHpRcDduN2d3ckt5WU1aTU1X?=
 =?utf-8?B?akZUV2lrSnVmdUtNWUczeFdXZ2hBWVZab1dQYkVyVjZRZVZrd3greXZGeDBG?=
 =?utf-8?B?VEs2akNyTWpneHZJUThLZEJMS0JRQ3FTWHVHa2lzODU4L1lpLzN5WFBaZGd4?=
 =?utf-8?B?SlZhRVFWMjZOaVF5WUd2OVJPQW9BaUdSdEhTQnBaMW9idEJuQ3BRaHVhNEVu?=
 =?utf-8?B?bkV6M1BvMFZLU2ZtZXN4V2szK0hUOC9hS3BJd216ZHRPRUg1c2JBMGU3Tjcz?=
 =?utf-8?B?WE5GZSt6SFN4R3dJaDRJRUlJbEYrNkgyVGprTERTbE43ZFRGb29aMHFQNUJw?=
 =?utf-8?B?UXdUbGxrQ0U1cmxGMk1oQlBqQk13OXVOc0dmQ3hDYnV4R2MySzFta0V6ZFVE?=
 =?utf-8?B?V0ZWVG1oWnp0NWR3THFnNjN4UEY2NEFNck9wVHMzODRSUUtGTDNLQW5lNmVj?=
 =?utf-8?Q?achk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VGNQWlc1S3plUG9EWmZ3QlNmWU5HR29JSXRGQWhkZHpJemt6MGtqWDZWKzZl?=
 =?utf-8?B?c0tZT3U2Ym5sY3lHSEJ5RWlHSGgvVUlRQ1ErOU5ZeVRYTDEyL2IxaVg4QlM0?=
 =?utf-8?B?ZUpNaTJ2TEFhQ1FTU0c3bGZydENPUHZlVndRbXFEblFhMmhNZVZkeXIraHA1?=
 =?utf-8?B?UG1OYkF2SkVERk1vZzl0d0hMVWJSaE15aFJVRGJiRmUxaDV4SXRUWmVwdlV2?=
 =?utf-8?B?Z3l0UHhTK1dCek5Kdy80T0RFYXZNb1pHdTBRV3dRTlZ6RnllSXZEOUVnaXpx?=
 =?utf-8?B?MkhHT1JuMlA5YVVQN1UvQkNqN0I1Z2U0RnBYN1ZiTWU4Mkdqb3lnRFMwMmFQ?=
 =?utf-8?B?ckhUUXFvSjlmT2NGS3NwNFpSb2x4UHpUNDhCSFhUVEU1WjhuaUEvalBpSkIx?=
 =?utf-8?B?MU5ka3kyWmJZeUN4djRQU3ZNSDZMSHduWmVPNUZuSzUvcXAyWnN5NEV2cGlM?=
 =?utf-8?B?L2xoYXhZNkF1N25sSEE2T3BEZlJqLzFHUjBOeWRldFVNU2xsOVd2d0xGeCtE?=
 =?utf-8?B?QXBFVnBwOEVySFFlcklVQzRhVmlOeVJOSmlENUs3c1oyd3NRa0ErcTVjY0VO?=
 =?utf-8?B?S1hiOUVnRlJXMjI3TmRGRFJNaDFkLzJhTUlXQ2VsblJuUHI1Qng3NnI3K3d0?=
 =?utf-8?B?NkNjc2NKQ1hkMlFOS2V2RjVlT2p0a1hDa0VPNlRRazc5ZGk3YWdhZDFoU2xj?=
 =?utf-8?B?MXZRL3VMa0Q3M1oyMGJtWCtHUjJzYmR2Y0FHUW4zU1N3dFZINTA5cFErOVZ2?=
 =?utf-8?B?Qks2S1BVY2JnQ0dnM3dwUnhUUUtselo0NXQ2NHBCMEpmaXB3UnA5dEZTdURv?=
 =?utf-8?B?SzNJL0ZJamJZQmk5OVh6YlIwU29KQTkzTXF1K3g3KzNxNVVPTkErb0RsV052?=
 =?utf-8?B?dE9nVmhEQUVEUkZrTngrTEltYnk0ZHVubnVkU2NlT01Wd3FxWElvRUNpWTBI?=
 =?utf-8?B?N3M4dnE5eWkxYzhOcG9aMS9DWnVSSGI1S2JVaVBLdG9hUG13eEhRSStFcEtX?=
 =?utf-8?B?RzRCSEtGS0FqLzZJNlQ0TzQ1RUVJcUJBT1VQanNxbi9ZK2thWXNHVitsUkVG?=
 =?utf-8?B?bXBubnFKQnZ5a2Fmd2dnOFFmaDQ0OEVZS1dqNU9vN0E5MEdCQ3FWRXpiTlFQ?=
 =?utf-8?B?dEsreElaVER3RDhkbVhnRzdhNFd4VGpUVWFVdTduWUtGaVZPTk83NGhkbHEv?=
 =?utf-8?B?dHk2OFVNMzQxTGRFekN4ekdCczAwdmtCRkoyVVFycGVhRVo1TUtwUThOYkRj?=
 =?utf-8?B?RFFWN0M0MWlhc0pmM09tZFI5THh1YUViYmQ5bGRNUGI1NTNPVjRrSE1tRGpO?=
 =?utf-8?B?V1NIZEYyMk1jS1U4ZG94NWNndmdlTzZVdXZpVjRldmRmSGh5WWovYm1Rek5E?=
 =?utf-8?B?dDAyd3M3MWJYUlNxb0xoa0VFS0k5ZXJxOW9TdmJ4SjdONjJ5cCtHNkdzWldy?=
 =?utf-8?B?TUlLREVnZFR4YTVPY01zV0hIbVUyZFNtWWdhUWdhZ01SWkpmTDZ2dmkvbDA3?=
 =?utf-8?B?Z2lUajBhQUZPNGlpWnZYVng3cWQ2eElRaWV3QU4xWEhHdGFyQytGTDRadFFU?=
 =?utf-8?B?TE9RSXRVdHRMcFNBQjhVZTRZZHJXWWRibmpCU2xpc0ZnUlNoZkJTV1ZoOVg4?=
 =?utf-8?B?aC9LaGFmc2IzZEJpRmN1WkZFOWQ1Z1hkeTFCeGVqRXhUdmhPQ0ZDaGg0N1Ro?=
 =?utf-8?B?b21VQUFmdUxUUld1R1JaUGtHMmx1VGsyUEEvWWxDYkgybHhPUXlvay8xMHRm?=
 =?utf-8?B?dStzZDhDTFF0V3lFM0RidTRGMGVPbGUvQk1nRTEyZGN5WUN4UG9laUdBVE1W?=
 =?utf-8?B?eWs1OWR6NHFCSk0rQmsrQlh1RzlDL3pxSlo4N1p4UWF6aFRMVlo2WGtRRjVC?=
 =?utf-8?B?OElhUFRyMzM0RnJsbXduVGRXKzUzNUFwUFkzL3pycWw5c3lLTjg3T0cydjJN?=
 =?utf-8?B?VDZSQ1FDb2lmdUlrVXFhK29wVmpubjg2MnNLSVVFeEZzZ2kvbE4vUXpyT1NL?=
 =?utf-8?B?SUpXNnJwTnE0OUlPUlhMUVdkOVhUNkt4N0tUWWJ0SFRJSWhRR1V6R2hpWEFU?=
 =?utf-8?B?SlFmVUgxRjJUOGNRU3NSRi9DUFRrYkFZcVU0aE0yK3JCSWV5SFR1OERNb080?=
 =?utf-8?B?WmZ4YXdFdk52QzBSa3NrWG9iZ1AxTy9PMzNrNE5KdGdPVTBIUGk0K1RkRHUw?=
 =?utf-8?B?VXFicGdmY3VNZEpXbVhqRDhoeW5qRVZyS1N1VGQwVm5RbXkzdys5WllZbUNL?=
 =?utf-8?B?WVg1WmlTTUZUU3BTTUNXdFpDMzdCc0pIblpJeVFLR08wYk93d0YxY1Z4Slp1?=
 =?utf-8?B?R0g2U0Vvc0JOaEZ1dXlQRGprR2NzYW9zV0NSeFFZbDhoR0tJdDlibysxaGRI?=
 =?utf-8?Q?bhgalZ1girCRlfbU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 52611c70-9bc2-4c63-5292-08de5eef572d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 04:31:58.9584 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K1nOavDVey6L32OosihhjFXeQ53+lA5gFbkTsAbALr5i7rGUOgKH9BYaG+XTXiEo6RJ/ktzjtb/LroKLeRnB3VY6XxinhJyJfWqfwDgzG5A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8282
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0590AABAE2
X-Rspamd-Action: no action


On 1/28/2026 8:29 PM, Jani Nikula wrote:
> Avoid even accidental use of display details by dropping the include of
> intel_display_types.h. We'll still have to include intel_dpll_mgt.h for


s/intel_dpll_mgt.h/intel_dpll_mgr.h

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> the DPLL IDs, but at least the surface is smaller.
>
> Add duplicate defines of pipe_name() and port_name() to avoid depending
> on display. They're trivial enough to be acceptable.
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/gvt/handlers.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index 383b04160559..6f860c320afc 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -46,10 +46,10 @@
>   #include "display/intel_crt_regs.h"
>   #include "display/intel_cursor_regs.h"
>   #include "display/intel_display_regs.h"
> -#include "display/intel_display_types.h"
>   #include "display/intel_dmc_regs.h"
>   #include "display/intel_dp_aux_regs.h"
>   #include "display/intel_dpio_phy.h"
> +#include "display/intel_dpll_mgr.h"
>   #include "display/intel_fbc.h"
>   #include "display/intel_fdi_regs.h"
>   #include "display/intel_pps_regs.h"
> @@ -79,6 +79,9 @@
>   #define PCH_PP_OFF_DELAYS _MMIO(0xc720c)
>   #define PCH_PP_DIVISOR _MMIO(0xc7210)
>   
> +#define pipe_name(p) ((p) + 'A')
> +#define port_name(p) ((p) + 'A')
> +
>   unsigned long intel_gvt_get_device_type(struct intel_gvt *gvt)
>   {
>   	struct drm_i915_private *i915 = gvt->gt->i915;
