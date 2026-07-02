Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LIJPNM4ARmryHgsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 08:10:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AF26F3B25
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 08:10:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VB6Bgb5E;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B59A10E445;
	Thu,  2 Jul 2026 06:10:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBEA610E445;
 Thu,  2 Jul 2026 06:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782972619; x=1814508619;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+qm8a8QMNKiyBoHmRgQLApIUeIwQ3w2ROXVFkLlS5pU=;
 b=VB6Bgb5E+qCPsDVGmEsNBgISpAtfYCW1JRq0D0ON5QxPUAIRpIJ/xxYf
 te9LLJyWlKWM7ia/ckBkJiTN+uYxVrslntwl+yOdSHt5GmFi43g7RVgFI
 jo/e+UZ1wrQOAJfODdTng3giV+PfF6FVrani0qis27kEyDOcUCCi7BrBc
 rQKRNIFiTS57qXad/om+yuCsGbuH+FPgQElwSBfiU2/kvs/hg805EOMX3
 Klz8HbvAF5SZpTEjQK1zm8cls9ywDvpZ44FaE9+Q6EEdVWD2XlLIT0/fW
 loUXSZ7ePN3bJ8glHoT8dWbZC6fm3QZz2tHasqEVmLrLh/4tW478ztGH+ Q==;
X-CSE-ConnectionGUID: 4mBjbtDqSoSFSXIhLQMcOA==
X-CSE-MsgGUID: CJVw448USBmHp9X4nnS9Dg==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94312666"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="94312666"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 23:10:18 -0700
X-CSE-ConnectionGUID: SsOMxCfNQ4ixvYmZ4U52cA==
X-CSE-MsgGUID: NzWplsBoRxSVcinzlNEdqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="275973461"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 23:10:18 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 23:10:17 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 23:10:17 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.28) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 23:10:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HxkNyyzJCXcodKBT4rsBzBbLmj5eqD/iczIBVYQbItjqnM5AsTtUQfchnGKOcLq6LDAk6EtsQB5IJVoSo5gbU6b2g/6rnqMnsRCQQNSSzr+1kmp0QVBaamxwsiwfEqTa0xO46sa9hta+J/0o9VNiPtZbZFFEBPFX3HFDQ3N/jGQ042LNB7hOUcxI5rjiNbql0B6BdHVa0gJmUud67GS90ng19GIZHbYxBHEn9RyXXi77sJHRrw4oa6U19XD8u+W76b/nh8zCNmq8045bj6prBgcCnZwMekDETD5yQfjBqYFul6Fco4IqCt0XNmV5XFWQLGmtq3n/x6hhJCdNphYj5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KVZ6CVTX2tQa8vQ5O87EG8uvHOohUP1NKznxOf2JI9c=;
 b=ytjmbnsZg//VEfFutrIIFqrvS6sL63O3yk61NmhripkvHPS+kU08KM5qsynVZc77OlFDZMNNmNZgAcxQ0gAK96+Mua14Sl064mmbb0rDv+i4YQcGqexrd++FH2fKF48aloBnF86wcLJUk6h28a6CxxVSmLeIGSqxwwK+qdYAks8K0wA/JsgGoFdgvdfQXpjjcwd/OLCh/uuX579is6m5IggIx/IV9Dd2snXb8E3vUeMhZf2iuc9lqG5GKWK3gkztMpBPlRHf3BAS3JKGvqqXX5gmewa5cH9Y2pEp6tKLXqoaOYU3l6o0i+9qaMU1F21MrQJJhhXflZZsKkCz7BZFRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by DSVPR11MB9556.namprd11.prod.outlook.com (2603:10b6:8:389::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Thu, 2 Jul 2026
 06:10:15 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0181.008; Thu, 2 Jul 2026
 06:10:15 +0000
Date: Thu, 2 Jul 2026 06:10:05 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
CC: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <iommu@lists.linux.dev>, Andi Shyti <andi.shyti@linux.intel.com>, "Robin
 Murphy" <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>, "Janusz
 Krzysztofik" <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH v2 0/3] drivers: Improve memory management for large
 object allocations when i915/shmem is used with iommu
Message-ID: <xhoeogry25m35lfilcx7ch3gm7oj2gu7cf2dqlvbcynq5tpkdm@mtfby2qhqdil>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260701104437.236979-1-krzysztof.karas@intel.com>
 <akUzCar-MMOMGtGB@zenone.zhora.eu>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <akUzCar-MMOMGtGB@zenone.zhora.eu>
X-ClientProxiedBy: DUZPR01CA0337.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b8::10) To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|DSVPR11MB9556:EE_
X-MS-Office365-Filtering-Correlation-Id: 668346b0-7e61-4e3e-02e0-08ded8009558
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|11063799006|56012099006|4143699003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: seE2tFvLRyASr0NpUfoRAahp3oPsbISUdSe2VsE5IhRLjdNgm8msazVbXfmkeqz6c/HEHlE2+tYj6XSjQG0sQczZZY5SIFiKxhV4PwCau7st1TzwFTU37zkwgCaCkZqvF/Ycg0UsPsRR2R+qUCCufXyJ1pc1TDior3hWZXjSdz4Fx7tThx8lt+l3yghJPuy1ku5jROwgAoWJgiUvxmsQb6I1tIY8uUdARmzS168sJgssn8p+rphr46P36aBL8K+jP8z+gVPaogiH9mJRje/19NfWpn8uoMmSpe4idrfSU7Zecqs6Jh9Cp+zdOsJ1rVpsmFijRqJ8XK4rQMDsNW3jMS5YK67LAC7p6xrDDfqIt5uK983MyLQLTiAGCHvRktmnT1nyV5Rd4UPUhrvI+UTBCS+UA+FuR7oMzABb0Syb8Ie6skIRGXne5zN83fzifHXvNV9jW3TFjRHvQ+xhBq7ATlw21R3tRqbVwlbmprimIwp/HssRampv44UzFA8aaccEf9G+flfJTvoaxobaaQp9/jWJbV0hiJpfyeBGynaOvu/e+TcOZEhRiS5zGB2S0XFNjbzF/3rRcakZzQv3xCtYIfLHcUGeHj1L8i18j5fjje9FEfLj0XE1YyDe9yMlEjPQ9Pn212T2klDOLXQ0cxxpMa52pxkwfPZlx86oEueSaUY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(11063799006)(56012099006)(4143699003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WksxL1pQcEdqM0dReGh3T3A1QjhkZU5ZS2ExWUVYRHZEb2FjVWRIY1pqUTlQ?=
 =?utf-8?B?T0diOUt0MEFHbWV4ZXN2R1pmV0l3NnB3bS9yMTdiQjd3L28xUlQ5a1lvNWEy?=
 =?utf-8?B?VE45RUthM3o5cEo3dkovMEVuOStXSjBXZllhOWpIRUovcFJZTW9KWi9ER0E5?=
 =?utf-8?B?bk5pcFE2SVRvYTM2ckZpU1AzRlB2bDYwZEZBUmxaVDc3ZWhLcGwrUEc2T1lC?=
 =?utf-8?B?NWhreTAyMnc2ek95cE5ZNWtyRU9wdlVTcnJqck9hNmN0cDhvcE9ZVXE0bDBZ?=
 =?utf-8?B?OUFrYUl2RFBHWVR6eEl3Z2hFSXgrNDhWTXkrdDlkYm1jS1hSdFQrRStPMTVl?=
 =?utf-8?B?dmxEZ1pnMDlQRlFBb0pEQytzOUQwN0VuTERyWnMrQ1pMOG5KMjRQbXFscVhq?=
 =?utf-8?B?NlRVZ0JjcVlvNFhJTzhVRjREQURQSGNUQWFHQWlleHBnN202ZlRGYTBQYUZa?=
 =?utf-8?B?MG9nY0t4SmZ3NUpaUXNucndlRnE1eTlYL3pFWDZwN1lWaEcxbFJYWE80ZHJS?=
 =?utf-8?B?QTRYS1R5RjdTYnVOdksrYWZnYTYxOWZxV0pTc3VxSytIeXBOZEMrUU9pVzYv?=
 =?utf-8?B?WmNVdEFHdHBHTVRQTllDM2NkTXQyVzRxdnMwRzd5d3o1L0h0Q2Z3OENwc3A4?=
 =?utf-8?B?RmR5U05HYWoyQ0lHVzRqQytSQ3duUXFicjRrNUpyTDNlaTViUFdodlkzOFFM?=
 =?utf-8?B?WEhYdUN4V3pjYkpkbVA0SlYrOXQ0L0dDbTBYNEVDdlFYbFdlUHk3QUVIaFo3?=
 =?utf-8?B?MzZXZ1M5Rm55Wmt4dGFsQjdPMzZ0VjhSSlllM1NOSVZCQXFndmNQR251SmQx?=
 =?utf-8?B?c2tWNkczd1RibEZrOEZtVk1NcFlaOWVHMWtHM0U1Y2pFdytlYTlNTDdZQ2tE?=
 =?utf-8?B?SkJTWGdlUSt2dENjVW9XMUJBeHhsYS9RMDdseUVBaldJWm5sckVSWWt5L1pB?=
 =?utf-8?B?YWpoODQ1dko1Qk5oQnZYSk11SDhwbDl1cmpxNXVkZXM2MzJCZDBBTEc3R1RQ?=
 =?utf-8?B?azFMREZIc3hSM2VtSEMxY3haS3ArTStPcVpKak9ZcERRLzREWHVVMER0VDcy?=
 =?utf-8?B?NGNEdlFNNVA0ZGVEa3JmVW5uaENZRjhBNHdQSDVhNnlIMDRpeStiUUFkdFRk?=
 =?utf-8?B?RmtKVHpWcVkvYmZzbUJNTFI3Ri9UL3VkdCt5dmloK2NQRTdIYnNEQUhQc1FN?=
 =?utf-8?B?RVZCMFNOajRJT2Y5Y1dGaVRnU2RLdEhWa3FKZnFBZTdNOWJVdWphSjI0M0w3?=
 =?utf-8?B?ek5FaDNGNmJVY0xrTG1ET0FJTy83M1ZGeWN4SjlXVFhUeTdhSnMyYzJtWkRj?=
 =?utf-8?B?RCt2WVZOYmZkb0dQS0VWTDRSTTZUbUVIVkRSbDRIdEdEdjFmaWVuVGUxR2Vn?=
 =?utf-8?B?RU5mclRYbm9VWFJuNjAxYVRNRzNPdXJmWTg1S3o3b2dIMHR3WmE2NUtkYUwz?=
 =?utf-8?B?ek1Rck9UWWcxYmVCWjJscms1RUkwMzdkcDkrUGtWeG95TEFOdG9yNkUySW5Y?=
 =?utf-8?B?Y3Q0b1Z1L2lvNVMwbUdrVTJydDlOREVnQ1JBYmdPQjZTZW5YbWFZVjAzVmhY?=
 =?utf-8?B?TDc1dk10Vm5ubWdEdEZZTDBDSXQ1bSttMVNFUlpCUGtRNHdYVyt2NjI0R1Az?=
 =?utf-8?B?UlJxc1p4MExURlYyRmlUN2thNmVFbG5SanArTnJ0Y0JkdG1rK3lIQ0VmS054?=
 =?utf-8?B?LzhNeloxZGc3K05jODQ3OGZITzhJV3ZScWQvNnpZbnV5WXhyeXF1UWhKb0xu?=
 =?utf-8?B?VUdkb0xNZElOVC9BNTRteHlJV3NFaUtJSTh4UmRsSzNvRHRjY0NCVElaMkJN?=
 =?utf-8?B?eWU1RXlhc3VhYWZuVi9FR3NzSnhBQ3VwTUVGRVpXWlZOVW5Fa3F3YkdwWDI2?=
 =?utf-8?B?aWw3cGUwbU90NEUyWmlDQUI0eVU1c2svZnVuSnRNOHBnMmxqUFJYVWlDU0RM?=
 =?utf-8?B?T0daZ0VwNy8rWnNIZGs0T2p3RXpuNitNV2F3NkdNRkY5VWd3eVdEOUFSTFpY?=
 =?utf-8?B?VXdUbFM5cHBVWGY3V1A1aFJCUlcwV2hTNS9zWDhES0c3eFZ1Nnp5TjcydHRz?=
 =?utf-8?B?VmQzdnFGOGFENlE5M3Z1YWg0NzI0YnhjNXptV2p6bFF0OUYxUnNZcVlVV3JW?=
 =?utf-8?B?WFFndU1QU2lobVZ0TWJhZk8xeDBEcXlCV1l5WnFhM3Vwejh1U0hqelNxSXVl?=
 =?utf-8?B?clI5enprb2lEMlpCa1FDRkcvMGdGQXF5ekQ3QWt1WkdtNWNRdUJoWjd5N0pz?=
 =?utf-8?B?MEVETG4rdFRKUW1LK294OGJJZ1lXRHNORVYrVzlVK2g1Qm9FMFVaeTdXQ0lK?=
 =?utf-8?B?VE1kanJhRXQrbkk4K09mRnBCT0IwVXFneTQwcXEwVzZXZzdDYm56eU1WUytn?=
 =?utf-8?Q?kWLV4p6mNdpCDxCk=3D?=
X-Exchange-RoutingPolicyChecked: WgCp3QzoWH9W5KfwUAQ4Ygt3BlpNpGognZFvX4vnk2OuiMtiUBVmQOS670dc/shVrH9qrTwYvIA6TP6koOPtw0sBP6orw1HCDneexbzTeqbm2z+iLtsQLarN7bMJaVQ0tV4Td24MJbJnU85mnLkPj0LijccdMfDJS0PvJ9OtzwnejGip35EjpG2NP3qZarPj+qG7HQIF9SYkc7LwVftD3Idzpapce+BTOWvDHBuzGeNjdysxmumq9b46LIyR5vZinK+x4LcOhrE3olPjk7WEt4nD1yv3TlSLYuzhpxhUV+uDk2RYlkSkJHPjEKxD/AKR9/4pZMkjMsO+B6zff/UCDA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 668346b0-7e61-4e3e-02e0-08ded8009558
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2026 06:10:15.2814 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gzmm61Ym6FhPSTWwhG1br2UdGuLAY6jj+GfzgdY4bOGVTMRT5/Q85iTZZKAN3CFj3DKu+0mKCGJPY0DATnTQl4ty0yL2PHOlBGeTkig03JE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSVPR11MB9556
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,lists.freedesktop.org:from_smtp];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 00AF26F3B25

Hi Andi,

thanks for reviewing.

On 2026-07-01 at 17:36:54 +0200, Andi Shyti wrote:
> Hi Krzysztof,
> 
> > Krzysztof Karas (3):
> >   drm/i915/gem: split shared memory allocation table logic
> >   drm/i915/shmem: Count mapped pages in a folio
> 
> Please move the refactoring after the fix. We don't want to
> create a dependency between a fix and a code refactoring, as
> that makes it harder for maintainers to backport the fix.
Sure.

> 
> Thanks,
> Andi
> 
> >   drivers/iommu: Catch scatterlist length overflows
> > 
> >  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 191 +++++++++++++---------
> >  drivers/iommu/dma-iommu.c                 |  14 +-
> >  2 files changed, 129 insertions(+), 76 deletions(-)
> > 
> > -- 
> > 2.34.1
> > 

-- 
Best Regards,
Krzysztof
