Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FDFA610A7
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 13:10:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C62410E9DC;
	Fri, 14 Mar 2025 12:10:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kp7GQ3pd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0BA010E9DC
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 12:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741954246; x=1773490246;
 h=content-transfer-encoding:date:message-id:from:to:cc:
 subject:references:in-reply-to:mime-version;
 bh=IL2Dblp3vH8bynSsIu/KQGHmiMzb5iQMCGRNKVS3AuY=;
 b=Kp7GQ3pdOWQ/uzAiweAavZ4O+WUZB/ldou1zdEJdjRs6XBvpbE8fHNSR
 bqe4eWH7eI62Hi3/1jnZEhWcdaWplZmq+lbRD3phRioYg/q8y6rjkJ++j
 D7Bt1uG6/jIC4o29nJ1sFzI9mfYa04klOsQBiwQkqmJDe9/7wZIXfAXPU
 q7TVd1Y5bmm19S1gts1Bc7944DOCLGqJfprfmJD/LKNEKHUkdQ8f5UFq4
 r7BL8S5zEamURLD+PFoHdhOwTMikuqRdxqONRW0Sc9r9lcSI0VHtA4GRz
 OtD/HkTZ13kfoYYCo11uj9MULWJKZAi1BzXhPajhv/N5N19AxvKoZW8lr g==;
X-CSE-ConnectionGUID: vjj0VmWGRmCqnsBDE341sQ==
X-CSE-MsgGUID: DyG00jBVQOavCsoEnL32Hw==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="43233059"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="43233059"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 05:10:45 -0700
X-CSE-ConnectionGUID: w2G7mnz2TGSzefl6WOwr1g==
X-CSE-MsgGUID: 3FObi8VdTTaymFC2azUjJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="144443998"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 05:10:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 14 Mar 2025 05:10:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Mar 2025 05:10:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 05:10:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=md8PhTk8EQaz1DnqaMSqVUagOMJq+3Fw7lV9Oq528WNTuOx1n2r+kuQqIn+A9nR2xHcostYO5gibR1H3vHpdpWdtv6sp7/CCt3JXhvnYy6odCJqQHl7WfepfxVz5ahEERnmexuVhlk/DL6AKb+3vJW1KbE/wA0BTouSedwe69ef7MRBxog2GhT7Umcl73a74prhSIFUyupe1DFttYyl1AK5S+SRRT8E7Qhw6N8bM3L5Kr4f8QJ9VQCQiC4IFL10NauAKU7ki7p23ezyJtHtbVdDNuQL7PVfum8GNadYebKm1cF81kicRjDhl/iLh9TBh/bCX+TJ/D5250c/6HwZpiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IL2Dblp3vH8bynSsIu/KQGHmiMzb5iQMCGRNKVS3AuY=;
 b=pXwM8zbBVgM20dTKeNfQFcwirqmpk7sRWA4o5lAwxPqGLsVmOA1COGuJrVBrsdxXIPSt4pUx/eXqsZinwOCUwNo8IG82Axo85jmLlCXCt3E3M0VjyWwJNe6DGKe2T12tcXM2dKV6xQiDBTlwd/vpDjec5tKOXk89CAkdTxlzhDTFA8YkUGj3mLlpW7Ty8qhDlMuOaOd5utVP8Is3RvFL4m+E5SSF+0UFbozbkMR3FOP9s5C5OZH3w2Td/nagvPh7/k0chjtGTqFMvgRDISCbdiNDPzFBWhE3lMm0TfcFduvhwpCxWEtPQ6KuL2FqGsPjTcOFI3kHl9g4ix+RsoUXAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by DS0PR11MB8762.namprd11.prod.outlook.com (2603:10b6:8:1a9::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.28; Fri, 14 Mar
 2025 12:10:42 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%4]) with mapi id 15.20.8534.027; Fri, 14 Mar 2025
 12:10:42 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 14 Mar 2025 12:10:38 +0000
Message-ID: <D8FZ8PSKU208.14BXOVT94JCAM@intel.com>
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, intel-gfx
 <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@kernel.org>
Subject: Re: [PATCH 0/4] Trivial style fixes
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <20250314021225.11813-1-andi.shyti@linux.intel.com>
In-Reply-To: <20250314021225.11813-1-andi.shyti@linux.intel.com>
X-ClientProxiedBy: ZR2P278CA0077.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:65::6) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|DS0PR11MB8762:EE_
X-MS-Office365-Filtering-Correlation-Id: 823d89e4-7869-41ae-1636-08dd62f13e02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MzUwVTViRXFXQUR0U2hWdXFRNlhMMXVTRmtqSFA0UHM5MzdaR0o5dDdObjdH?=
 =?utf-8?B?WG41a1p4NUhPNVVVamlvU0QyakM2SDh6TlJhWEJLYnRhNmFlSGVONnhBM3dn?=
 =?utf-8?B?Unk2eGFtdDErRDBUUlFiYlIrcXRJdEhJNm1aZzRpTXN4d280TDVDcWZCZDhn?=
 =?utf-8?B?ZGVkSFVJQW5kdmY1andXa3ZYS01wdjZWRzFWSkxMcHFkYmE0NGJrU2FERloy?=
 =?utf-8?B?OVhOSGJZdm5wWDdCdml4R1VzcWFkdC9KNDJud1JEVkhNcllORjVkeXAza3BL?=
 =?utf-8?B?QTZZdmxYSWFHQXFNVTNpSzhpWVdWa3VOQU0vYzNVU21pVU1tMTZqZ1I5WEJM?=
 =?utf-8?B?U045MlRuQkpqd0J5bkdGMGM3MTV3bm10WmhWazZ1Z2pJYXh2RzVsQm1DbC9N?=
 =?utf-8?B?VElsNHB1SmswdTZJNXhHN3d3RnhsTlVhN2JOM0xYbGNJVHB4THRBUVMzMHIy?=
 =?utf-8?B?clZZVlhEM3JHeWl4K2UxeDYyNDZuTkFQZkF2N2pzYUNxdVhZRjVXWUJtdExF?=
 =?utf-8?B?YUhnTTYzWWJhZ094TVpFZ2hYTjRsVFkzRjhKOUxxQ0kvRUl4RFZlQkNiVndx?=
 =?utf-8?B?QUk3dnNZT2U3Yzhtd00zdG9TS2ljdU9vTjBOeWUrQUVYVmVaRnVBNDVvalFY?=
 =?utf-8?B?dXRLUWRYSytUQnZDamRpZmJGRldmeXRxdUJxNFdsUUNFbVFSdHJ4SzlvUkJM?=
 =?utf-8?B?OGJVRGlrNWlDOGt2ZHdiMEFoV3lFdkFYajYrOGlXbVVIdDBWRnB4eWM0TUZo?=
 =?utf-8?B?akNZcUZ6U1N0U3JwSkFQd1QxVHB1RzJWM0dSbC9vRXdkdlh0Unk3NFJIL0xK?=
 =?utf-8?B?WHNOeWFycHN5bXJIZmxONkNLeVZOQnc0MHIwZTdNRmtZbWRNck1RNytPUlk2?=
 =?utf-8?B?aWFGWDBONC9obGpKeHFYcG92L3ZTaDVBZm5zU3U3Vm5WV0R4SHBNT1ZtTEIz?=
 =?utf-8?B?VlhYNG0wTEhpY0o0QzVBNklZQ1ErdHZOMktnczNlQUJHS2ZVUElVUS82V1Nx?=
 =?utf-8?B?K0Viai9wcmZyeXh1bWphclJhYzJUOXJHN0JMTGt5YUJiVkEwNTczTnFQNjhl?=
 =?utf-8?B?OEFobzd1Vi9MODUvNjY3ZC9kVkdDNzA2ME5wUWx5MU9tVmRyT2pOZHZtYk5p?=
 =?utf-8?B?Uy9ZOFZia0FHZHJWdTRJL3l4Zk4vRWo2NXNRd1BFcWNNL09VV0N6MGpEeWc1?=
 =?utf-8?B?Q1dMNndTTHZQQUZyb3BKYzQzdVhuVERyNG1xMzBNV2FuNUFhRXpGM1JZNUNU?=
 =?utf-8?B?a3MwM0p4dDRUT3duU1ZOajJPQlVPUks1WGx5NFRrNDNwaUllT25ad0EzZFNn?=
 =?utf-8?B?NS9EMTFseU5HRnNBVXNndFNnTHpoLzBZbW5BZXJDMDJGV2s2SlR2dC9Lb1lL?=
 =?utf-8?B?ZGErcjJCYWJyZTBLbGNsdUc4ZGFaVTdKOE9zazVLSUtZaDJPazhQck5vUDUr?=
 =?utf-8?B?RHJGeEwwOEZrWk9mZ0ZvMFFCZ0NXN3JHc1JUMXA2TEdDUEV0OEl0cDZ5WjRV?=
 =?utf-8?B?ZURaaEFDMXo2YzJNbzhzTERuNTJlM2pJbGJoaE1JZVc5ZDBCNzhkY0EyZXR5?=
 =?utf-8?B?M1Q1Zmgva0EremR4eGptbnE5bmFjUDlOemJNQmF3N2RxY1poZEZESllMaWR0?=
 =?utf-8?B?ZDN3ZFZZSWJzcXpYaEs0VFd3NkF5akdHRDJ6THllNFZCZVZzUEtuOXdsbU80?=
 =?utf-8?B?b0Q4NDlIZkI0NmJ5VGJnZ1BESHdGUWR2T1luWE8wR25QOTB3dTM0TEw4RWM3?=
 =?utf-8?B?VG1mUmRpTEFwTldrVXNkZXB5WW1DaHJvLzRNa2QwcWFvQ2lKdEJTRnRac09v?=
 =?utf-8?B?TDUrS05xNVpmakwxcm5LNm9QVFROTEk3YUZjR2U5dVRRWHdJK2dZRCtPVk52?=
 =?utf-8?Q?TOUD/ExUnjvcj?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmVWNEx4UUtDZ1dnVTczRTcxUDhiRDFtY2h6a2tkTFB1NlEybWlrcEhEWGxs?=
 =?utf-8?B?RGQxUFRFM3RLeWdSZk1Ga0ZzQmppeGJvV2pYSGx0WDJTYzhZbFYzWk13eGt1?=
 =?utf-8?B?WnZWKzBNeHZxaXEwV3RPclozWkd1UzNlQ1ZRM0xMQTExaTI2SHhLdjRxa05V?=
 =?utf-8?B?aHBhMFp3N3c4Y1pzdnlaQnJuWUEwZllMRkpQSVpHRjIvWDAwNElGQ2ErWkdB?=
 =?utf-8?B?TW0xNStaYjZzVHgvUTVBSlRMWCs3QUlBc2FDYjdkOGk1TXQ5TFQ1RUZIUWds?=
 =?utf-8?B?bjNFUDVjcnpZcHd2cFl6MUkvVXRaZ0hSYjdaT3o2TUN2eFZzdTJtaFZ2MkI1?=
 =?utf-8?B?WVBpNXFsOHFhN2Y4bXNNaFlyS2tmeEYyL0Q3VStxaVBzdWtQdmxHSVpUbmhZ?=
 =?utf-8?B?MW1OMVZxQnNuVVlPeHlnSDZtdDBrc2JVSXFuK0RGTFhqRmJraEdMenV2eC9w?=
 =?utf-8?B?ZjAxUjZqZlBWN29XODFOUlFvT2JtaFBTbzh4MXJ1eFgyNnNUbytzRXpXL1dx?=
 =?utf-8?B?NmludDZkRFBvU2g3dzcrU3Z5b1FkY1JVWTFhRmxjMFp3UzZsY215SDZpQWg4?=
 =?utf-8?B?NUpSNCtOQzg1WHJBMnphYThZdEpBWVJRUE43K05xaVNxdEJuc1lNVEVxZm51?=
 =?utf-8?B?cDNaSnlhcUVKbjNkenZnbm5YL2F5TlREQWh5UC9iWXk2SFoveE1lWEhwY0Rl?=
 =?utf-8?B?c29qR01zaHRBdFlWaURFTUsvSWs5OGJ3TFpnR2pFWkVuUjdlMVd1SUU5czBH?=
 =?utf-8?B?QWorUzMyenhvdHU5RjRQNnVuSGUxQWpZK1JEajgrUDBtQzV1TUhJOExkTGpM?=
 =?utf-8?B?dnhYbldRSlduTStzVVVBU2YzQkZUN2YxeDNBMy8vNks3TlJJN3V5SXZUTW05?=
 =?utf-8?B?Q1dzWnFxdGpDdnpNU25VNkZwWWdWSGd0eFpNKzVROEhHTXdSMlRYQ1Nua0pS?=
 =?utf-8?B?UXdmSzUyTXBJL1hXYmNzd0pYUGtHR3ZETnZwd2dxN2FHNFdjOGhabVRTN205?=
 =?utf-8?B?TE1OZUpSQ2JCV2h6QnlaNFZDQlhOeFMrS3lmWEVoTUNuM096c1RzSHJCYy91?=
 =?utf-8?B?dHJXcnVEMnp5UEFoSWVvRjAzN2FTa2FQc0lPM05UTlZ4VnNvZW9oK05qak5o?=
 =?utf-8?B?L1l2Z3dlSHRKcnNCRC9ZQ1lrbG9iNUJEN2tHcDFBeFJ3dFlnMys1dXVIM1A3?=
 =?utf-8?B?N0VhTVNHTHRjbFFGSFUwMXZYQ0FZM1Y0OXpGN2xHQmVEc2Z0Y1o2TGhkYXRO?=
 =?utf-8?B?S0JKdFlKUU1hWDBtTW5hRmdkVFRySGt4WWRlZ21NOVdvdnovTG93NnZxNGlD?=
 =?utf-8?B?SFJyd2JVTDlqL0dXd2ZRMjRzOW9NZUtuT3pRRm1OSSttdWNGbG52SG9WTGVH?=
 =?utf-8?B?ZkJtUU5Ga3c1alljNnFQMFgvRmRBNkpRU0dwSzc2TkdUTVFld1NaMzArQ2Vk?=
 =?utf-8?B?OFNnUmNETkZmZXNoMktsaHIxTENWS0oxbDl3cmpWK1NaK3FnZzBxeEZWdnVI?=
 =?utf-8?B?Nm5VbXR4djNuUWJ2eVNkZS9JSWNaL2tlQ3lBalNTRHZTbTgzOFc2V2psRUsw?=
 =?utf-8?B?YmtxdzlIeGRSbjlyU2c3MloyMFN2NllYbzJZc2pFek5QWDhYbXZkYXpPRW12?=
 =?utf-8?B?N0EyT3pwZG4xZU9yMlNsdnpka3dSUmhEV1JtSzJBRWRSQ3Y0R0ZxU0NHMFhQ?=
 =?utf-8?B?TDhuVjZ2ZFBIZnpiMk9PRUlzWGM0RitmejNlY1NSdW9EcUdWQVBNNDlHdVVH?=
 =?utf-8?B?WENUUWFQUTVHT0V5ZlA4d2Y5RGNFQ3V0VHJaeWpzNjhjQkJSSTFwZHBKKzhx?=
 =?utf-8?B?MDhQbTZJZi9WUDZrTi96UExSK3I4Rkk2S3ZsbnVHbnBJT1dmaWR4YjF2UEJ5?=
 =?utf-8?B?cnFjL0l1VCsvOXkxemoxK2VRdHlNb1RHZW9WTm5zS2dRbTJSOTNZWm5QYnBN?=
 =?utf-8?B?alRJNHg0alY4VHd2cGxQTVN6Q3llSzhPT3B5ZUI3VTFZM3ZXam5pL2pDaU1s?=
 =?utf-8?B?cFA5bVJrVFFocFJSRVRXSldhWUZCN3gybElsaml1MG8vTjBRK3VVSE1kSXEr?=
 =?utf-8?B?NGpsNUVSMzc4a292UVh4UU5oMUpDTHBGZkFrQUhPNmg4cEp0dVk2aTQxWFBZ?=
 =?utf-8?B?NzhuMlRobW1yRDFOaTFteVF5SU5keEJHWG82ZXFPU0lPb0toUkFpcmpJYit0?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 823d89e4-7869-41ae-1636-08dd62f13e02
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2025 12:10:42.4921 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nvzDM99zwpLK3f7yyB8VBiV9vinGdHarDqwqY/QJv7EPebW2Byjyy7Co4czlw7RvJXiwE2NsbX4r+O1MXk+RAsttJcJ9rMV2zcOKormHu88=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8762
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

Hi Andi

On Fri Mar 14, 2025 at 2:12 AM UTC, Andi Shyti wrote:
> Hi
>
> Browsing through my endless list of branches I found a few with
> random cleanups that I fix while rading the code. They tend to be
s/rading/reading

The whole series looks good in my opinion.

Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

--=20
Best regards,
Sebastian

