Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F531C1134B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 20:42:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2892C10E559;
	Mon, 27 Oct 2025 19:42:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kk5/ZUpy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D07310E09C;
 Mon, 27 Oct 2025 19:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761594127; x=1793130127;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=N9dYN5Ynyz9SrQrC5e54Kps0z1ViiZnnMu907UMiWkE=;
 b=Kk5/ZUpyICoAAgS1giAvLDt1GQQgXktdVd6Hhtv5fDI23a11pKlpyw1O
 FcVN0OXMZX1NBLdmjx0hDewNjpfDvbJf8jdy2ySKsk91hmwx9K7jZN0uh
 V6z1j1sZeUDckiuPc/4SRqCuWNLyvnvXbSRLjARDFN6bcrevN4rH2ZK2d
 WgErLGuDbIAoy7UogsJAJEsiORdYA1oYuYvJOszhY0CSXpnwvH+2BfnJ8
 R3giNelIuddON9CloBJ53wq7uhxF7/QY8Crxv1cfmzIG1w2zwiR0OqzJV
 tXdsEGv+ux5Y5ftbPEqqwEhTjJHu9UMQGfnoXJf3h+Z7nxh50x/zcGO8f Q==;
X-CSE-ConnectionGUID: xYKbFOQZSfesAST1KJbxaw==
X-CSE-MsgGUID: H4TVtZ+WQwiaoCTN7Vr1LQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62891370"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="62891370"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 12:42:06 -0700
X-CSE-ConnectionGUID: UMXAzbpZQ4yj3l+nRKau+A==
X-CSE-MsgGUID: iVcsa8cVQmy8rSq0kwtKvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="189442526"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 12:42:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 12:42:05 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 27 Oct 2025 12:42:05 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.40) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 12:42:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mLqBykR8UB1vs8at8L3nsEbANMRLg9jkYtLwkAJupKnzOdKFPx16tOjV9+u8FIL6Yst0hF6bNJP4UQtfGBXWgNtX3OfxBTFpIInpN+yTd3dL1C+jjVl30o8+7ChVUdchj/mqtpPfDDDbUr+9EZ5kn4lkjoJldQSI27Askrh/sTJGUs89C1c44dFkyhlDmyYWk9JP6WT/nmWvym1E6E5nQt1/g7g+tiX4/8/HU5Vsfa+AMZBbvTzKkYtkLCBVGE2kyfW5AwZw/FHoKQeuq6QycjNWlYy4jmE81stMZDqe6tNulIK86MQ6mNiR43/lN70hDnfdk7dC40GYTtsP4mOBqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MB/WcqkY6tefryC+3uXeNySkzjSl1c5NMvQ19qbz0E8=;
 b=R3LHpediDVhPnvUEso2aIUTkb27iKJrtozLHhK3ajDBArBrjrHFGHnTnEA62OXAKvwLBU7yU/DiAO8kK+YHWFgYrIopnKjoQksq8g9F8gFdOVJBohVJyFfdVKpv6jJa8x7ACCHn+Hp9trATe/cCEGZgskj+uNad/JA/b386kPn+FFITxGYSM0rRWl7stuxC8rcksKQpb2vE12/Fjrbc8nI4dNbfi0eY/l9iomUZQTdZkDNSTgo87rJFhV6NbBdpIrVNDbOjf3EQyHD4tDiLhpxHqDq8klzLP0pbFE1pDtPedU0lIjYKVc760zS7BDbzwBoQm8qeXHYsPujXzEAumFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 by IA1PR11MB6220.namprd11.prod.outlook.com (2603:10b6:208:3e8::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.17; Mon, 27 Oct
 2025 19:42:02 +0000
Received: from SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88]) by SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88%4]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 19:42:01 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251022175805.GI1207432@mdroper-desk1.amr.corp.intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-7-10eae6d655b8@intel.com>
 <aPjN6jrrJsMcD0h-@intel.com>
 <20251022175805.GI1207432@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH v2 07/32] drm/i915/xe3p_lpd: Support UINT16 formats
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Matt Roper
 <matthew.d.roper@intel.com>
Date: Mon, 27 Oct 2025 16:41:56 -0300
Message-ID: <176159411681.3407.12516123412101251383@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR07CA0039.namprd07.prod.outlook.com
 (2603:10b6:a03:60::16) To SA1PR11MB8280.namprd11.prod.outlook.com
 (2603:10b6:806:25d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8280:EE_|IA1PR11MB6220:EE_
X-MS-Office365-Filtering-Correlation-Id: efdce4e8-bbc3-4a2d-bfc5-08de1590e5fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OVNjYzJrQWRLbmRydWMweHlJMnJNV05oS0l3ZWNpM2lHUytaUGlsNkZtVVVI?=
 =?utf-8?B?dTRNOXg4dWdhQmlTdm1RUEg1OGlPcFU0UW5pUEJEU3Z3NUFhdkVGZFo4YWRN?=
 =?utf-8?B?aDg4N2NpSHRpeW9FQUZSWW9TejlPSlhad0Y3U0Q4VUxWb3lwaEo0dTJnUXpw?=
 =?utf-8?B?aUZXeGhFTll4TlhHRTkzUFp3ZjRtOGpRT3lPL1hhbE94WFNOTmQ3a1htd2ln?=
 =?utf-8?B?TUhTVG02K1hwalB3YnM2WmozeGtLcGdtSEFrWWhSV1lBYUhDalBUQUZacVpX?=
 =?utf-8?B?bHozbW5lVk5sMWxtR1IvSHB6WjdmaVpIaUpRc1lmSlpyZmo4eDJzcG0zN2NR?=
 =?utf-8?B?ZnViNWpMdjBhZm0zcU04OG5jNTBKbEdWU1M3MjRxRGxXbmdPREFWVERtUjRp?=
 =?utf-8?B?dFd0bElVNURWclIrWEpPU3FHZGtwaVJ5L0JrKy9VU2ZDN2swRnZmcHpiOTQ3?=
 =?utf-8?B?UlNEazJ2RStjQ09HUGJJVFVUL1hmL0hsZHJXczFPOU90Vkc0d1Z3ekcrR2dj?=
 =?utf-8?B?SmZBU3FxYWEwd0g1TytkdGFmbGtqZWxZR0VwbGEwUWY2NzdJNUxNRWV0ajFy?=
 =?utf-8?B?VGNSMGRiYXE1V1IrWFVET1lKOFkrV3gvQzhIWDRKbm4rMk16TkRZUnV2S1hh?=
 =?utf-8?B?ZHFNZGxZRlBVaWJWMkVjQnZrTWlqWWZXa3kyWG5ZTlRWM2RRVDhYVGsxYVVI?=
 =?utf-8?B?Z05xNHd1RWZuV20vbW1VbTBLMEJPOFAzUDlpZ3VUc0F4cUpRZjhnR05oL0Vj?=
 =?utf-8?B?dG1FZVpPRi82THNtQjhTOStxL1pwQnhYbTdKcWxST2puSWUzMmFDODZWZnIy?=
 =?utf-8?B?YThYMjZEN0hTWDB6a21od0ZnSEZ4Q1lkbzNGbkNyMnExQ1NxQnJ5Z0dhR2ls?=
 =?utf-8?B?azBwaFhCNDkvdXJIS2xIRDZ2SVEwTStxMmlUNVN1Tnlvalo0MUFkeHF6d2Fz?=
 =?utf-8?B?WlBTUE5VMlRqMllJKzVxYUYvclM3TG5BQjZsaE92cHpFNFE1eGwwT1RJMnZL?=
 =?utf-8?B?M3ZnV0pwT3Zwa3V6Z255VFlEeE1ZRVlCbytSU2FQQjYxaUxnbEFyUExJUVFz?=
 =?utf-8?B?aEIvb0hoUmdjc2JaTjZpOS96bmlwN0tGTEZkNEpmR1Nsd0t3QzVkb3AwcWtP?=
 =?utf-8?B?UTl3K2hiTXE2QmZGUWlUR1hOVzJZSWcxOUFXSXByWUdwL01xUWZpdVYvd1py?=
 =?utf-8?B?U3J4WkJ1dkJ1eEVZaFRFeldUOVVNdmN3U0pQdlorM2k0SDNXQWdCZFE3NXVh?=
 =?utf-8?B?MDB5bTFTZTV4eC9RNmJZSlNrZjE4MTVlbTNYSit5aW5pY3ptM1plNEQ2TDhz?=
 =?utf-8?B?WUVjdUVXc2RXeVowWDN6WVJMWVR1US9jNSs3Q3c3RHpWNW5vdkU2NzhRbTZD?=
 =?utf-8?B?Znk2S1FXRzllYUFFTGFKSzlDQWR0Yk9XSnJyUUYyazdDcGhESjNzc3BQTlFh?=
 =?utf-8?B?eWRQR3BSM0lSZU1CZ3BlK2ZUalVXbHR2L1FDNWFRVm9UM2J0TjUxWVZKZWRy?=
 =?utf-8?B?QlpmcmpWWkFPbktOMnZYd2tlSW8vLy9SRG9aUmV2U3VpVW5aa2k0M0c0bXRs?=
 =?utf-8?B?Yjc0M3FhTEthc29jYlVINmt2bjByYUliVFdoSDRZMGFZTTg0elg2SjVDTWVa?=
 =?utf-8?B?WlhpcEVPbC9BNEovZ2tNTWhDWVM0ODBIYnZndzhUVU9YcDhNcHhZTkVPR1RS?=
 =?utf-8?B?Ym9vOVRkSi9SS3pTSkRvMVRqN1lER083cGc0ZEN3ZzVPOE5HeHVIK242dGpN?=
 =?utf-8?B?ejA1NDNhYmE1ME5YQlpDeTFOeHJBVU5XYlZyZ0lWdU5JM2hZOWZrUktGbGVs?=
 =?utf-8?B?UkI4bHFOQlhET3orRFU5WHpzNWlldGFHQmNpT2FiRm04T0gvNEs3OWNVUVpN?=
 =?utf-8?B?Q2c0UFJYOURwNXp5bDlzY2hDSFZKd1Q2WEZIbjlubE0vYUE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zkxzb09uVEYzanFTRm50RXdsNzl1bEFReXNFT3Q5MEx4aW9TellPb1FKbEQ0?=
 =?utf-8?B?SGk4L042amxFc3ZSWHpzK1c1WmtNNmRuMU5zL2RqbFhMRTBXdFNZMnExSm1P?=
 =?utf-8?B?cVJ5QTNqbnlmM0RiTGZ3TlhUOHVLVjk2ZThTaE1RUVU5T3l3V0l4aXJVNzRR?=
 =?utf-8?B?Yzd6alBqWGZYOHdnUm1lK0pSK2ROK1hpYmVSa3Y2MXpKN21VcTNyQnRqTmFH?=
 =?utf-8?B?LzFDR3YzbDhDZ2lxUVdld2RXVmJtNTNHNEN1VTVPaUd0RkZNa0ZXYmZ0ZnhP?=
 =?utf-8?B?ZzdrRVEvVmVMMnQvT3djQmFRUHU1RW8vOGd2N1FPSFNRK2Q0TXJFcVZxUDlQ?=
 =?utf-8?B?RThwVHdmR2JBTHc3UDkwOXZZMm0zNTRFVnZRckE2S3ZpYjVmcWcxWEgrVHhY?=
 =?utf-8?B?ZlpINTdHQUd6L2l2VXRqOUw2YzYwRlE5c0hRRFdMb3RPVlBqZlFub2I2OW9N?=
 =?utf-8?B?VmxLdVZTU3Bmd2JyYkVXaEJQckU1d0ExclI5aXphK0MrOHh6eEdHZVZGdW5N?=
 =?utf-8?B?c0hZVFcwR1RFUzF3SlRiRldJVTlvV2RyckNWVGJkT0NFdFlVRzl5Zjlic1NE?=
 =?utf-8?B?VlNCWkE4cjJXZlJJM21nNDFCMWxzS2NmOHpjbnRzSkFTejB4KzMzV1BGUi9D?=
 =?utf-8?B?RTF2YkZpck5OaXhVMDNsblhjRE8wd1BRTjk2bDRWa2VtNmZTb1dEOEFBc3lH?=
 =?utf-8?B?SkRFNGR4NDJWejJhakJQNFY5Wll3bmIzRlY0ejhyOVAySmxvbmNaTGg4YXNs?=
 =?utf-8?B?ZlRiUE11U1B2MEhpMzhLV1ZCY1ZLaGdJNjhSWFVMbDdnNmwrUFJvWXplc1Vp?=
 =?utf-8?B?TEVJcjQxaDdsblhrWDc5cDZJLytsUlFSVytxc0NyUnM1SVVSVWNZZk9abStV?=
 =?utf-8?B?RUwzS3NmbFFuUlhISTVyaURtTlY2S2w1OWtqck8zWHRSeWk3YUJGRk45V2Vt?=
 =?utf-8?B?SDFtanZma3hIaVNhTm52L0dSN01NcTY0Z1p0N3dQclZCVjBiTnlBQ3M0b2hY?=
 =?utf-8?B?NE9mbTVwVjkyaXcrQlpXQnJRQTVDRGpXNHpCY1ZBKyt0WmxjUWdKNWZhZzhG?=
 =?utf-8?B?c3VXSld5eExlNXo1T0NyQmNuU29qeEJtVU5TVk5RSm9nOFZqVVpSUnAxcWhU?=
 =?utf-8?B?UloyeVRkL3JLbzRxWVZNMHc0MDYxN2crWUhvelFPTkZmTnRXckxoVnUrOW5W?=
 =?utf-8?B?Qk5kaGU1dkxZZk5LRlkydFpiMGFhdEdFZVk5M0pUdEk2dUdIWXVGK3ZPNG04?=
 =?utf-8?B?S2x1ZjNkRDZiNUFFVmhKWXo0RlZJZnpsajd4cWdxc0w3MUN5VVhEc3J4QS9p?=
 =?utf-8?B?RUJteG1aQkFqRG5kSmZvVzZ0b0IvNVIzbFZnRDVNZlNyTndOYzM4UmszbmNX?=
 =?utf-8?B?eWtldkt0R0dZWWpHcTY2VXpzUVhYTnVMMXg0YmV3R1RCMmE4MS9GYTg3SWR3?=
 =?utf-8?B?d1NheGNPTlRvWmNWbVhWYUhLR3ZCT1A1cVpDYkhVOTNacHR4MTBRdklwckQ3?=
 =?utf-8?B?cjZSUGNkUVRSSDRsblVjU3Z4SEJIZnpaSHpzVjFYSU01NFJ2M0VUZmw0TzJn?=
 =?utf-8?B?MnFzeTdSU3lvSkVXbkRlUzNvRHZRMkNlRlhFK0JueDFXUzAzQ2dGeCtGV2pw?=
 =?utf-8?B?VFFQeXROQ3hrS1B6QTRaV2szeDVkb0tIMFFUT3FUcmh3WW53VkZnMkM2SVho?=
 =?utf-8?B?OWtSRGFYdkp4UFplV2pHcTZLb1F5b21PeitlTXcramVWbUNPek1OQUI5ZFhT?=
 =?utf-8?B?RmFXbW9WOVp3bU1HbXoycG1Yb096UDVLYVk3L1R5ZVNNNnRBMnoxYmtxcDNH?=
 =?utf-8?B?OCtDY0lhTWZMQzFkWmw0UnU4bVNjVW5kUE1FZk9rOHMwVWNVdkpIb0ZtY1Rh?=
 =?utf-8?B?Rm56aGpLQ1VVYThwdC94UGFlZlBDUlV1VjNyQU9XQnB1dW1VZFhLVFNjNWJx?=
 =?utf-8?B?azNrd3hzcm9Nc1Y5TEVraXJyR3pQYm9iVk5UYVQwWHhQbHlRc2VITWI2d3k1?=
 =?utf-8?B?L2hvcW41QWNxY2tIR2dYdzNPcEVmUEpkZXhIdXVSN1I0YUJtSFM0TURjN0Rk?=
 =?utf-8?B?RFZjVzdXRWdKdU1YeWlOVDFvTUFBYXJYRFNETjVTUngxUkoxUE5peEg3RjAy?=
 =?utf-8?B?bVd6UXVWSHJ2S0JNUTRoQWNFSi9hQlk1MkI2YUQxU0FuUTFQQkYwV1pvaERm?=
 =?utf-8?B?Z1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: efdce4e8-bbc3-4a2d-bfc5-08de1590e5fa
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2025 19:42:01.7140 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K+l9p9KNV9ZNdvH2ZOxyiNx6nHVzDEnGBaMWgvfKQkgL+ngC/tLKmh9lC2eT/7jW5MrLReb9XJvOV62xQZeitw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6220
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

Quoting Matt Roper (2025-10-22 14:58:05-03:00)
>On Wed, Oct 22, 2025 at 03:28:26PM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Tue, Oct 21, 2025 at 09:28:32PM -0300, Gustavo Sousa wrote:
>> > From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>> >=20
>> > Starting from display Xe3p_LPD, UINT16 formats are also supported. Add
>> > its corresponding PLANE_CTL bit and add the format in the necessary
>> > functions.
>>=20
>> Those have been supported by the hardware for a lot longer
>> than that.

Yeah, Bspec shows that the support for UINT16 formats was already there
before Xe3p_LPD.

>
>Agreed.  General support was added back in ICL (bspec 7656), although it
>appears that it was unofficial and not productized or fully
>hardware-validated.  It appears that support has remained unofficial
>even up through these current platforms.  So I'm not sure we really want
>to enable this if we don't have a specific use case asking for it; it
>will _probably_ work, but there may be corner cases that have problems
>because it wasn't intended for real use.

Yeah. I think I'll just drop the UINT16-related patches from this
series.

Thanks!

--
Gustavo Sousa

>
>The only thing that seems to have changed is that UINT16 formats got
>added to the list of formats that FBC can handle as part of the same
>change that added the FP16 formats to that list.
>
>
>Matt
>
>>=20
>> I have an old branch that adds them here:
>> https://github.com/vsyrjala/linux.git uint16
>> but I never landed that.
>>=20
>> >=20
>> > v2:
>> >   - Add reference to Bspec 68911. (Matt Atwood)
>> >=20
>> > Bspec: 68904, 69853, 68911
>> > Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>> > Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
>> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/skl_universal_plane.c | 96 +++++++++++++=
++-------
>> >  .../drm/i915/display/skl_universal_plane_regs.h    |  1 +
>> >  2 files changed, 68 insertions(+), 29 deletions(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/driv=
ers/gpu/drm/i915/display/skl_universal_plane.c
>> > index 0319174adf95..530adff81b99 100644
>> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> > @@ -136,36 +136,47 @@ static const u32 icl_sdr_uv_plane_formats[] =3D =
{
>> >          DRM_FORMAT_XVYU2101010,
>> >  };
>> > =20
>> > +#define ICL_HDR_PLANE_FORMATS                \
>> > +        DRM_FORMAT_C8,                        \
>> > +        DRM_FORMAT_RGB565,                \
>> > +        DRM_FORMAT_XRGB8888,                \
>> > +        DRM_FORMAT_XBGR8888,                \
>> > +        DRM_FORMAT_ARGB8888,                \
>> > +        DRM_FORMAT_ABGR8888,                \
>> > +        DRM_FORMAT_XRGB2101010,                \
>> > +        DRM_FORMAT_XBGR2101010,                \
>> > +        DRM_FORMAT_ARGB2101010,                \
>> > +        DRM_FORMAT_ABGR2101010,                \
>> > +        DRM_FORMAT_XRGB16161616F,        \
>> > +        DRM_FORMAT_XBGR16161616F,        \
>> > +        DRM_FORMAT_ARGB16161616F,        \
>> > +        DRM_FORMAT_ABGR16161616F,        \
>> > +        DRM_FORMAT_YUYV,                \
>> > +        DRM_FORMAT_YVYU,                \
>> > +        DRM_FORMAT_UYVY,                \
>> > +        DRM_FORMAT_VYUY,                \
>> > +        DRM_FORMAT_NV12,                \
>> > +        DRM_FORMAT_P010,                \
>> > +        DRM_FORMAT_P012,                \
>> > +        DRM_FORMAT_P016,                \
>> > +        DRM_FORMAT_Y210,                \
>> > +        DRM_FORMAT_Y212,                \
>> > +        DRM_FORMAT_Y216,                \
>> > +        DRM_FORMAT_XYUV8888,                \
>> > +        DRM_FORMAT_XVYU2101010,                \
>> > +        DRM_FORMAT_XVYU12_16161616,        \
>> > +        DRM_FORMAT_XVYU16161616
>> > +
>> >  static const u32 icl_hdr_plane_formats[] =3D {
>> > -        DRM_FORMAT_C8,
>> > -        DRM_FORMAT_RGB565,
>> > -        DRM_FORMAT_XRGB8888,
>> > -        DRM_FORMAT_XBGR8888,
>> > -        DRM_FORMAT_ARGB8888,
>> > -        DRM_FORMAT_ABGR8888,
>> > -        DRM_FORMAT_XRGB2101010,
>> > -        DRM_FORMAT_XBGR2101010,
>> > -        DRM_FORMAT_ARGB2101010,
>> > -        DRM_FORMAT_ABGR2101010,
>> > -        DRM_FORMAT_XRGB16161616F,
>> > -        DRM_FORMAT_XBGR16161616F,
>> > -        DRM_FORMAT_ARGB16161616F,
>> > -        DRM_FORMAT_ABGR16161616F,
>> > -        DRM_FORMAT_YUYV,
>> > -        DRM_FORMAT_YVYU,
>> > -        DRM_FORMAT_UYVY,
>> > -        DRM_FORMAT_VYUY,
>> > -        DRM_FORMAT_NV12,
>> > -        DRM_FORMAT_P010,
>> > -        DRM_FORMAT_P012,
>> > -        DRM_FORMAT_P016,
>> > -        DRM_FORMAT_Y210,
>> > -        DRM_FORMAT_Y212,
>> > -        DRM_FORMAT_Y216,
>> > -        DRM_FORMAT_XYUV8888,
>> > -        DRM_FORMAT_XVYU2101010,
>> > -        DRM_FORMAT_XVYU12_16161616,
>> > -        DRM_FORMAT_XVYU16161616,
>> > +        ICL_HDR_PLANE_FORMATS,
>> > +};
>> > +
>> > +static const u32 xe3p_lpd_hdr_plane_formats[] =3D {
>> > +        ICL_HDR_PLANE_FORMATS,
>> > +        DRM_FORMAT_XRGB16161616,
>> > +        DRM_FORMAT_XBGR16161616,
>> > +        DRM_FORMAT_ARGB16161616,
>> > +        DRM_FORMAT_ABGR16161616,
>> >  };
>> > =20
>> >  int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
>> > @@ -220,6 +231,18 @@ int skl_format_to_fourcc(int format, bool rgb_ord=
er, bool alpha)
>> >                          else
>> >                                  return DRM_FORMAT_XRGB2101010;
>> >                  }
>> > +        case PLANE_CTL_FORMAT_XRGB_16161616:
>> > +                if (rgb_order) {
>> > +                        if (alpha)
>> > +                                return DRM_FORMAT_ABGR16161616;
>> > +                        else
>> > +                                return DRM_FORMAT_XBGR16161616;
>> > +                } else {
>> > +                        if (alpha)
>> > +                                return DRM_FORMAT_ARGB16161616;
>> > +                        else
>> > +                                return DRM_FORMAT_XRGB16161616;
>> > +                }
>> >          case PLANE_CTL_FORMAT_XRGB_16161616F:
>> >                  if (rgb_order) {
>> >                          if (alpha)
>> > @@ -960,6 +983,12 @@ static u32 skl_plane_ctl_format(u32 pixel_format)
>> >          case DRM_FORMAT_XRGB2101010:
>> >          case DRM_FORMAT_ARGB2101010:
>> >                  return PLANE_CTL_FORMAT_XRGB_2101010;
>> > +        case DRM_FORMAT_XBGR16161616:
>> > +        case DRM_FORMAT_ABGR16161616:
>> > +                return PLANE_CTL_FORMAT_XRGB_16161616 | PLANE_CTL_ORD=
ER_RGBX;
>> > +        case DRM_FORMAT_XRGB16161616:
>> > +        case DRM_FORMAT_ARGB16161616:
>> > +                return PLANE_CTL_FORMAT_XRGB_16161616;
>> >          case DRM_FORMAT_XBGR16161616F:
>> >          case DRM_FORMAT_ABGR16161616F:
>> >                  return PLANE_CTL_FORMAT_XRGB_16161616F | PLANE_CTL_OR=
DER_RGBX;
>> > @@ -2479,6 +2508,11 @@ static const u32 *icl_get_plane_formats(struct =
intel_display *display,
>> >                                          int *num_formats)
>> >  {
>> >          if (icl_is_hdr_plane(display, plane_id)) {
>> > +                if (DISPLAY_VER(display) >=3D 35) {
>> > +                        *num_formats =3D ARRAY_SIZE(xe3p_lpd_hdr_plan=
e_formats);
>> > +                        return xe3p_lpd_hdr_plane_formats;
>> > +                }
>> > +
>> >                  *num_formats =3D ARRAY_SIZE(icl_hdr_plane_formats);
>> >                  return icl_hdr_plane_formats;
>> >          } else if (icl_is_nv12_y_plane(display, plane_id)) {
>> > @@ -2637,6 +2671,10 @@ static bool tgl_plane_format_mod_supported(stru=
ct drm_plane *_plane,
>> >          case DRM_FORMAT_RGB565:
>> >          case DRM_FORMAT_XVYU2101010:
>> >          case DRM_FORMAT_C8:
>> > +        case DRM_FORMAT_XBGR16161616:
>> > +        case DRM_FORMAT_ABGR16161616:
>> > +        case DRM_FORMAT_XRGB16161616:
>> > +        case DRM_FORMAT_ARGB16161616:
>> >          case DRM_FORMAT_Y210:
>> >          case DRM_FORMAT_Y212:
>> >          case DRM_FORMAT_Y216:
>> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b=
/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
>> > index 479bb3f7f92b..84cf565bd653 100644
>> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
>> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
>> > @@ -64,6 +64,7 @@
>> >  #define   PLANE_CTL_FORMAT_Y410                        REG_FIELD_PREP=
(PLANE_CTL_FORMAT_MASK_ICL, 7)
>> >  #define   PLANE_CTL_FORMAT_Y412                        REG_FIELD_PREP=
(PLANE_CTL_FORMAT_MASK_ICL, 9)
>> >  #define   PLANE_CTL_FORMAT_Y416                        REG_FIELD_PREP=
(PLANE_CTL_FORMAT_MASK_ICL, 11)
>> > +#define   PLANE_CTL_FORMAT_XRGB_16161616        REG_FIELD_PREP(PLANE_=
CTL_FORMAT_MASK_ICL, 18)
>> >  #define   PLANE_CTL_PIPE_CSC_ENABLE                REG_BIT(23) /* Pre=
-GLK */
>> >  #define   PLANE_CTL_KEY_ENABLE_MASK                REG_GENMASK(22, 21=
)
>> >  #define   PLANE_CTL_KEY_ENABLE_SOURCE                REG_FIELD_PREP(P=
LANE_CTL_KEY_ENABLE_MASK, 1)
>> >=20
>> > --=20
>> > 2.51.0
>>=20
>> --=20
>> Ville Syrj=C3=A4l=C3=A4
>> Intel
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
