Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F41AD703D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:24:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECE7A10E829;
	Thu, 12 Jun 2025 12:24:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="czSxsNk7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3060110E45F;
 Thu, 12 Jun 2025 12:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749731086; x=1781267086;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=At0K5T1k0GA/XSbSOPAc6Hslo252fEUh0uu1+aoWCog=;
 b=czSxsNk7zCgkUYd/p9zF4pAeE+gKlUy3LLedROf9z45Ii6S4FZFrIimn
 XKA2+LFeZQggLiIpMubxRiLkQl78yqwdOxIEeuTOH9uN8myZGha949ekb
 oWn4yCboLP1gvL+STpfoB1rIS6KzYmkKTWx51/BrngWEwSKcBrSzegcPz
 29pQCijHMITtyicNVPJYcSYfgUAxk0Tynzx5K6J1akdOcuYBqn+OeNoiS
 bmHfrSsAWO48nZbFIy5tSUUU4/QvIjyD0YuhU8d3+ofByf6LkbrYACy7g
 dAGZ7aONA+oxsAifdd8OnP6A4bgmbQO02snQgcxtWXm42AseiPdYWLgS/ w==;
X-CSE-ConnectionGUID: fCnhYbOcR52nE67YVFbIYQ==
X-CSE-MsgGUID: zHhpbhWgTEOrjJdFYpJ9KQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="62557352"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="62557352"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:24:46 -0700
X-CSE-ConnectionGUID: HvP8Mdo/SiSHCU458U2LLA==
X-CSE-MsgGUID: 2hcn90FwRLadywiLjbC0OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152650594"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:24:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 05:24:45 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 12 Jun 2025 05:24:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.69)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 05:24:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jr32tXGBpYyd28jp/hXL0gaRQSDpmWjYBuZsmaipu92dOFxWMIldhrVliaXt2xYxe00Ad9EtuAahtfMvqNVJ83IXjPKoWVMIiuOtzymQfCpsuo6yRDGGH2Wqvgif2ED1aOmC1L7ff83JEVpjGK5eF7PAp1v/ZZArI+n5IfQeFCzS/l7JdknlyyV2NEVfd/Mqt+CVTgPJGQyNdKv82pjWrQ9vmpENVKqyXieOlZIEwkxpRG0LRyNHwMqi6nLq0i+5eRrO+mMmqbgEbySuZ15ndjg/2fUwlIPIwYLN7NPSFYCWDmhRFkBOQHkFwI/l60bYLAf1U5CWZYupL/F121iTVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=svQjp28bfRPZb6D0a8isL7Bly+Z2wGD/lHSHfl99QrA=;
 b=S1V7vfqlxivt7l1B5A6yNvBMPBanqvFDdIWCcwA+Zj7dv1eaFM51X0vuvXbk4f8jFptejIKPZVphi8vo7xM+fT14SreT7v+/I7+X4g6bd0pFxxAz3MFjINNc0m4LUEYNHOgNVh0zlrz1snA3a6ONKOTaPTPgwxECJ6bbQ280MVKX6rAslIhFUI15/MCAJPMxM9Wkchyay2Bav0lIWadQs5xyM5bWnb/2kR0u+gwksRs3SPDWcxR0EBYKta5NGJknSWXczCbTslEeEY2fS2k2ZKAZq1pxyB4IcuaSun5sQ/Cpn0c+zBAc/rGC9QgoCLdftDEu+3mN9FW93yhr2kxI/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ2PR11MB8567.namprd11.prod.outlook.com (2603:10b6:a03:568::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.29; Thu, 12 Jun
 2025 12:24:25 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8813.024; Thu, 12 Jun 2025
 12:24:25 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <88e5eff2556e6363e51cbe4d2143fa0817d3c00d.1749728173.git.jani.nikula@intel.com>
References: <cover.1749728173.git.jani.nikula@intel.com>
 <88e5eff2556e6363e51cbe4d2143fa0817d3c00d.1749728173.git.jani.nikula@intel.com>
Subject: Re: [RESEND 5/5] drm/i915/plane: rename
 intel_atomic_add_affected_planes() to intel_plane_add_affected()
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>
Date: Thu, 12 Jun 2025 09:24:20 -0300
Message-ID: <174973106098.14553.2545694677380127860@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0332.namprd03.prod.outlook.com
 (2603:10b6:303:dc::7) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ2PR11MB8567:EE_
X-MS-Office365-Filtering-Correlation-Id: 7374a560-7b43-4e2d-dd82-08dda9ac11c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|366016|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M2RkZTlqRTg2T1RXcTNxaU5wYWdpcmFjVmtvRjRRMDcrVzdKVTJaT2NNMXNx?=
 =?utf-8?B?V1hpMHpNUmVTa3lwdWlLRjM4ZllrSGU2WFUrZUZiOGNtM3RTZWJXTHhONTVX?=
 =?utf-8?B?WTZ5V3Z0amp0ekNDbGNaOHVpUjlSd1hEMUVIdk50bkRacHhmOFkveDh6UGpM?=
 =?utf-8?B?c1hRcE8wY0VKak5zNXF4MXBjcTFqMVRUNFNZU1ZMRlNzTys5Y1JMK0oxbzJ5?=
 =?utf-8?B?N3haMUtubGZ5bmNmQ24xZXVaUHc1VVlyakVMMWpNcXFVbWdqaUUrRndhUGpU?=
 =?utf-8?B?SDJ6R0o1Q1BXUzVQQUNMT3VLOEl4RUp1WVRoQ1NlRHNuSEpHWGhlZmxLbUQ0?=
 =?utf-8?B?WE9ZMzZYRDZHdkVvYlZXKzZXS3RITzNsMms4VlRhQnVtK0FENzVqVEJRV0da?=
 =?utf-8?B?KzAvcVNLelNlK09kNC9VWHVVUi92NXJKNTY0QzdkaU96QU5xQVNSQk95Y3dU?=
 =?utf-8?B?K1dqT0VYeEhpTW9XR1NIeC9CSFFic0I0bUN5QkNPR3BRSisvWG5SV0N0SjBp?=
 =?utf-8?B?dGtGTFF0WVBYVXNKZ3U3TlZzbE1tRncraXZrSk81em5EZTlrZFAyd3MyYnZw?=
 =?utf-8?B?Q09WTStxY3NaS1VRd2xYVU9DRFBnYW5VeU9PMkVKUWdHQ0VrQlRIai85V3hE?=
 =?utf-8?B?MEdRanVZbGpoZWc2WE5GWG1NSXBvSUJiVDI5TGw5b2NZR2I3TWpYTmFZb2py?=
 =?utf-8?B?T0luS3dBaG9PNEhabFdiTk5jbGVZVjg3Z1k2elhiYy9na29ocEJvTjZHTERV?=
 =?utf-8?B?RTEva0U4SnlGS1VqL2Q4RmMwMDRuL3BnUUFkQnhESXI0YkZlTUdNdWYzN3lE?=
 =?utf-8?B?UWdtUWJjbmJZZHRncGxvMmlTUUtoelplVDJIRUJvWWVtbGc5bGRSeVNTVFVC?=
 =?utf-8?B?S3M0ampzZ1FJUHZwdFhhME12VlF6aWtmSEpnVDZvYlVjZXZtMXJxMk5KOGd1?=
 =?utf-8?B?QjYwZzRYTEFqbXhad0ZlT2crNDQwdXh1NytNZDBKdHRlZk5ER3lSZ0hRZDFQ?=
 =?utf-8?B?Mkt2clpibDJMMFIyMHRXakpLWEc1QXl3YmNGNUliOFdBT0VITjJIOHo2SlIv?=
 =?utf-8?B?UjRQK2U1VnVDTnJhcEQwb0ppTjZhb2JlRHZndE1SNnBWMzhYNllZSm52Lzdt?=
 =?utf-8?B?YmxLVXBydUkvbFQvbGlTSnBaUkpWamIvd1RVeUdoOW1paTJBaHRhcGhMbk4y?=
 =?utf-8?B?UjBuK0dCVTJ1YWNNNUl5MGhVR3dSb3BCVlgwYUxRWkNaRUN4aEpFYjZrYUlY?=
 =?utf-8?B?TVFsZnpmTk9GUEtUTVdnZk84Qmg4VkN3OGZOY1ZsclRCc0Y1Z1BENXJaWlFq?=
 =?utf-8?B?K2UyaU8zeHM1akswbDNwNExrTW0xVFZZQVFXWXBTd3hoY1ViWXVJZlNKamRP?=
 =?utf-8?B?b3BuUy84cmhMSGJPc2dBYm9tU1VOa3YrckJGZGgweGxuQkR2d1l0STRIZzV2?=
 =?utf-8?B?czM2eXlLUnBENDZVeG8wMEs0UUdFakFWbnNTdHNadnVzcThQU05NaHUxWDZ6?=
 =?utf-8?B?bjlaK0lrbmpZTGF4aVBDS29GRkVNdlVTdkk4K2gxNERqc1Z4NTBRdCtuQTg4?=
 =?utf-8?B?REl2anNpQzJWMVI3K25vVzN3ZmNIS3lCMHFFZFN3WWJKV3RUbm4veHNaQTV0?=
 =?utf-8?B?aWFlTDU5T0M3Z091b25PQ3FxRlhlOVBqclU5ZzQ1SjBrS3IyOXFqZ2ZvZkh2?=
 =?utf-8?B?K1dLNmlHYUc5Y2tvM0l4Y3FKUzlNQ2RJblBKSHRSRXIyWTN5T2pkanR2WmJW?=
 =?utf-8?B?UENxSkNyRlF6bkpNVWlFcEpDUTBWc09xb0g5bnFYclhqWSswVmdRbGl5cytz?=
 =?utf-8?B?UjBOd0JmMjN6WlJLbVJvWThFWmVjbWtmSlBzdlZGdFJCTmpBOGFmZ0Qzb2Jv?=
 =?utf-8?B?QWVZeDYzMDV0K1FhNTZzNXZ4SUcvclp1VGpRcXRqK21VMmlhSkFQa2hzdHB1?=
 =?utf-8?B?NkJvcGdCVk9reFErK3pNR1JlR2JWTkU3TDRra3N5REhGYTRzTTNkek9qUDFN?=
 =?utf-8?B?MjhpVHAxNE53PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MEhHNnlKeUZyMHl0d29rVjVjbmNORUdudk9Dd0dUQXpPTFpvM1NXdDkzUzNk?=
 =?utf-8?B?Wk9uQXR0SzNBcFNsc3hhNUJ1c28rSGVJUEJBMmJ5ZG8ySEpDTGo4QVVML2xt?=
 =?utf-8?B?VXJzZXN5ZVlOSjlHajVnS1hBc1BsN24rQlVHcGNUQzBkcXA3OE1QQTd1S2hT?=
 =?utf-8?B?Rm9mSmJqQkx4MHI4a01Qc1ZJZm4yZDZtMlFSNEJITGtLSFE5UVJjQzBqWkpt?=
 =?utf-8?B?VElkVXkrR1pvWnJpUXBJa3ZBNlBVaTVMMG5rMHNGT1JUT2tIZlNvY3JPQ3Bo?=
 =?utf-8?B?QVhmMGNCTU5QRmNyZVUrV3ZwREpYczV2cjBhbDFrbjNUNmlxc3g0dW9seGt6?=
 =?utf-8?B?ZVZUREt1UmxhUkxrTXppYjRLbER1TjlqN0xTVE1JUG84UHdicGV2M2JWeUk3?=
 =?utf-8?B?d2twSGR1SzREQ0JheTJSMzRVSUJYRjJkUU5mNURFQmxLV0hIYVJ5K2pPMEY0?=
 =?utf-8?B?UFZYVWlLUkQwdnI1Ui93MFlYcW16dUFIOUFTMC9XOWNzSzFteVN2Mnl5R21X?=
 =?utf-8?B?cGVGWGRvamhUL2RmZ0QyTXZQSE9SVFpxUlRZN25kVGp5UGZDb0ZqR3I3MVU3?=
 =?utf-8?B?K2ttd3BxOUFBNlRDYmJlaTBZR3VFZ1VCS0tXNXFXamJuVzR0VlYwaUMxRjJm?=
 =?utf-8?B?dXRaNXBjUC92V2JkMVRMNFpBbVduenRxT3hsUDJlMXlRN2xGNVUrcURSVjRa?=
 =?utf-8?B?NTZvSC93eTFjMVNKOG5KTS9SSktSd3RDVngwZDVpZWgvN0REVXk5Smwyb29C?=
 =?utf-8?B?TUFMa09kZ2tnYXJZT0tiNFoyQ2RQT3FrWlFlQ2VucnlpK0VhWmpUTXg0SkNz?=
 =?utf-8?B?RmxTdGxvMmRZTG1LZzQzaDNnenh4cU9iUVlNdHAvZmFCUmV1R1g5NlpDOEtW?=
 =?utf-8?B?R3hENGFnM0F1Y2tWRnVxSjNVMDFPclJRYXhVWUxnL0lWSEd4QkRMOWZ0Ymdj?=
 =?utf-8?B?ODc2cTE1bklyelF5UmJITEs2cUNFVmFsZURhb3VpUHpOSG1ReURVQm1tZ1pu?=
 =?utf-8?B?M3ZzbWJOUG1EUHAzd0lJVFNxNnFMeHRSMmdJUSt5czZRc3dxV1JyREkxLzhE?=
 =?utf-8?B?OUg5VWZscHVKakNtbE5hbWwrTTRlTkFGQ0p4bnQ4VjM4WjBwSmtRMW5yc2Jj?=
 =?utf-8?B?NTQvcFllc29PbjRZY09nVjF5Wk1HdW44UGlVSGY2Z1pvcnU5ZGIzREtuTHdG?=
 =?utf-8?B?b0lhSnZCblVST1p1RVkraE50Z2pPblRpQ05xeFBWVUlkaVMwckxxcWd4Q1Jq?=
 =?utf-8?B?cENML3hKY0dKb1FoemdMOGRkWWJINEV1SnFUanRtbXp3MFVVRS9Tc2RvbFB1?=
 =?utf-8?B?YXgwQTB3YWtZaEt1NTY4K1VPTUxqc1kySGJZc0VBRnBYL1NxZmhHRnlWTnBq?=
 =?utf-8?B?M253UUVmSUNObFhySE1jM2xDVGJJeEU4UTByT2RGYmxvVGc2SjhLZllkcERR?=
 =?utf-8?B?UlB3cnhiYzhMdCt2RjlQbHk2OUhqMDdjcFJDQW1oM1NRY3NkakVVQzc5UkxL?=
 =?utf-8?B?WXhybkpPUWtmMlVhd0ZSOVduekRBSVVCVEo1RXdoa0JGT3V1bnIraHJYV3RB?=
 =?utf-8?B?T3UwUHJrSDNNYUhqeHhZd3pod1NyZk8ydG1Ybk9qcWQwTytOdThrYUpjRkl1?=
 =?utf-8?B?MVdpdEsySUlWM1lPMVZ2MDZrRmNSM3lVUkVIdmNlOUcyZFA5aUlLU0FvNWNs?=
 =?utf-8?B?ZkRvK3ZkTkpRQXUrREYrQVN5Z0Y5OGswT25PQ2E2V1d0YTVaQXNTeFgxZmoz?=
 =?utf-8?B?dTcrVkNETmh6c0ZXckVOYktReUEzSkR1SGhwT0dQekg0WHVJRXYwWFlVM3hW?=
 =?utf-8?B?ZHhDek01MDFIYlltL0pTdnBkaUxBNGFUYlNzem1BZGMvU3VTeU1jMW0rTm1m?=
 =?utf-8?B?TmRCdWEwemlqSzdJMVlGZU04RUZoN2xxOW9nQlc3WDUzeFVqK2VhZUJ0SUg0?=
 =?utf-8?B?YWxCRHdtQWV2WXFLOXJ5dTBHbDZkTXVWbVRLZHl3QVpZd2dWRnAzK1FVU25C?=
 =?utf-8?B?N3VVdkZyVkE2TloxdXM2TXB2RUtna3BYM1lwWVpKNlI0MWx1WTBMV2w4NjVt?=
 =?utf-8?B?Rk9iZWRSaXdNcDM4SWh4VWNJUC95RnNKZ29IcUhOeGl0eXdNNlBkSjhEb085?=
 =?utf-8?B?YnA0aVg0T2pEcVJkQWt3RjEySldpOVl6Zy9qbk1QL2hPbkovZVBNb3ZCUW9O?=
 =?utf-8?B?VFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7374a560-7b43-4e2d-dd82-08dda9ac11c3
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2025 12:24:25.5875 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K+WxB25r6apD0RPnQKwLCR3TDzn5170wFIL/NMxd5pgkyFIdPlxk/+eDOy8w/gv2vyVZYYi2f33fIOc5gQvPNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8567
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

Quoting Jani Nikula (2025-06-12 08:37:11-03:00)
>Rename to follow filename based naming.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
> drivers/gpu/drm/i915/display/intel_plane.c   | 4 ++--
> drivers/gpu/drm/i915/display/intel_plane.h   | 4 ++--
> 3 files changed, 6 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index bd81ff9e3854..978c524546c6 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -5479,7 +5479,7 @@ static int intel_modeset_pipe(struct intel_atomic_st=
ate *state,
>         if (ret)
>                 return ret;
>=20
>-        ret =3D intel_atomic_add_affected_planes(state, crtc);
>+        ret =3D intel_plane_add_affected(state, crtc);
>         if (ret)
>                 return ret;
>=20
>@@ -6195,7 +6195,7 @@ static int intel_joiner_add_affected_crtcs(struct in=
tel_atomic_state *state)
>                 if (ret)
>                         return ret;
>=20
>-                ret =3D intel_atomic_add_affected_planes(state, crtc);
>+                ret =3D intel_plane_add_affected(state, crtc);
>                 if (ret)
>                         return ret;
>         }
>diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/=
i915/display/intel_plane.c
>index 2ac7a4e655f5..11aeb7435b05 100644
>--- a/drivers/gpu/drm/i915/display/intel_plane.c
>+++ b/drivers/gpu/drm/i915/display/intel_plane.c
>@@ -1433,8 +1433,8 @@ static int intel_crtc_add_planes_to_state(struct int=
el_atomic_state *state,
>         return 0;
> }
>=20
>-int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
>-                                     struct intel_crtc *crtc)
>+int intel_plane_add_affected(struct intel_atomic_state *state,
>+                             struct intel_crtc *crtc)
> {
>         const struct intel_crtc_state *old_crtc_state =3D
>                 intel_atomic_get_old_crtc_state(state, crtc);
>diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/=
i915/display/intel_plane.h
>index 5cb995b2940f..4ef012c08fa4 100644
>--- a/drivers/gpu/drm/i915/display/intel_plane.h
>+++ b/drivers/gpu/drm/i915/display/intel_plane.h
>@@ -83,8 +83,8 @@ void intel_plane_helper_add(struct intel_plane *plane);
> bool intel_plane_needs_physical(struct intel_plane *plane);
> void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_pl=
ane_state,
>                                          struct intel_plane_state *new_pl=
ane_state);
>-int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
>-                                     struct intel_crtc *crtc);
>+int intel_plane_add_affected(struct intel_atomic_state *state,
>+                             struct intel_crtc *crtc);
> int intel_plane_atomic_check(struct intel_atomic_state *state);
>=20
> u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state);
>--=20
>2.39.5
>
