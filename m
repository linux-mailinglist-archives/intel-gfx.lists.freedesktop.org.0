Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MP0GF3dJGGpSiggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 15:56:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE465F32CE
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 15:56:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F19B10F202;
	Thu, 28 May 2026 13:56:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zvf8rPMK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96DFD10F202
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2026 13:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779976563; x=1811512563;
 h=content-transfer-encoding:date:message-id:from:to:cc:
 subject:references:in-reply-to:mime-version;
 bh=Ry7gD34QiViFyqtMRoGks0ES4q+S5G0CisxQqwDmNl4=;
 b=Zvf8rPMKyB72Ss1s3I4Vw3BIAqRlLUAALCd5srj1sTAGpzcA+CBgMQR+
 iuZwzmDI6caK0hPU0RoV6h4hwc9tj3qeQVO+0uanL9qNySvek1/cy1FFF
 Bt2gVO5MhawDu9lwjyQHPHt/22OTnLWIKi3/jCRPAgQ0McJdMk5BygZYP
 KWRZ/AMg2EGCbKuODFVI7o//g4ioNULSE/GHh/cgzjDoBaPEX2HEBhcMN
 DNmV9RXtF27Gwjb5dpL5SIOSA03jm8i3Tr6DdiTKVoIlgIhnil55pKg4C
 Og77547vtwhfOrcKTGCVCpjT2u763xoSyuu8m8K8NIJkeZl2L45OVQCJB g==;
X-CSE-ConnectionGUID: HDSRr6naQXqSGvN2CvXHEQ==
X-CSE-MsgGUID: nN53+Xo8SlqUS5ptKfz0Eg==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="68350830"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="68350830"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 06:56:02 -0700
X-CSE-ConnectionGUID: W2VdfflqSMGp7HIPCntfYg==
X-CSE-MsgGUID: 6rpQeKK3S36YADKSyp6voA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="242714743"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 06:56:02 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 06:56:01 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 28 May 2026 06:56:01 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.19) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 06:56:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o/gdn52MJUdwYFL+3tyPAwyUjncn01n0tfkZ0/ZOlM63HZaxxV90gtDXA8JuBVaUJYgt1Es+g6nYM0++7RKjKbZjafqADrADPe7E3beE76BtqslVq10JyjkAPdALZcNPQp0uohKWcoKzAb4REVac/4AWZc7w7cG8kSX82wuVq/+7ltzUob7RA30MpgLLolU+girUo/OchwfaqBCxng1XFplGj7DyD0vdhxOYgFz+ikvM31mSJOJ38QKJmJVrPzzXRkdXcmymOuukHzUjIODNfGcI4I56J/f62vIAZNttqMyHxno0XedAtxB+pvcuT6SA5HiZj0vsWiHH5dn/3i8qcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h39qu7mfQrFQz5J0dxG4wcrG6who7p9evp9/pJ0UaXE=;
 b=xRm0zNEzaDBRm9mO/kO2obx9BfX5ovjS84wQzhDhNEME/L4yrWYYpzKekf5A8ev05aIE4TOJYYSBVJ8iDWYKF7y+YtvLuhuceLDaOxtG702SI0MquOPtNKCP5N0vZyXqhRHBOiLsyHCgAj8O+ZM11WGOoZmwlAavtJECLEbIhZN9sKyj9TLNGlmKMQzu2etBWS+bWGMZtL4hY2dXa8YWXK+yYnmy6v1+Wy95L6JXMTxiROLozlrb+Aa4xWDYJnkhA8OxRpyls/m0/HOQmaedlIwA+mK8+/b2jlwvK6onG5F1Qpl3jSoLSVwzAcv3WpQhhPCk2kJoE5YU2xHLSoCmwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by PH0PR11MB4837.namprd11.prod.outlook.com (2603:10b6:510:41::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Thu, 28 May
 2026 13:55:57 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.21.0048.016; Thu, 28 May 2026
 13:55:57 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 28 May 2026 15:55:53 +0200
Message-ID: <DIUD102LPZ8R.166MO2E63L1MG@intel.com>
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>
Subject: Re: [RFC 1/2] drm/i915/shmem: Prevent overflows on small segments
X-Mailer: aerc 0.21.0
References: <20260527140804.2866189-1-krzysztof.karas@intel.com>
 <20260527140804.2866189-2-krzysztof.karas@intel.com>
In-Reply-To: <20260527140804.2866189-2-krzysztof.karas@intel.com>
X-ClientProxiedBy: DUZPR01CA0294.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b7::13) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|PH0PR11MB4837:EE_
X-MS-Office365-Filtering-Correlation-Id: 7cdce63c-042d-4791-7f91-08debcc0d7d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|11063799006|5023799004|4143699003|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 5gd2AxogKlVMuG9H8bNy2E7AKi5sOoP2SitdrdKnWKyC+PxHeH9kAqFXwng8ETbYVZPARpPvPxOWk8zHVYAwZnYNzXdoTugRogNlQ2l0CqhKqwOWYUgX9l94BBeeqWUIyfLUEUioWGScqiPR0NhTmjeSAzDqud2N5M5HdcrJ0cAE1B506ZdDZX4lXZdn1Q9z+8pLkw6lpWflrBIzXNKnmU9yebwhxrAg76a+FlQepkXjrOPb8lYc2rIj8mFiHQ22RQ16O0/kDSjMJN4chMFQzOCq/kJsFDW2t9ushgTd+qiUUAeyQ5hhOBG4SPtst1A237Qa/MQhQ5NPXllJopjnm6/TP/D10bkDZ8dAQczhkErs8ZvWGCPaPjpjLrV8UNcrA4IAvizszLEy2T2tVWumfndFxpCUqT6K2wDcKjnvQPAb0OGcV0YhY5LmKJi48wlaFmuSyx5xSbEyUlWxK7S7fvlDZ2kwYx4ROJifn9oEVZme9GhBrmNr+GRky/cStVDTUs2MDZ9+ufDZ0cQAl0Re70ox0ejc84oxbXiC9+1lpmPcRSyqemL3Hcjd85498Uwnky6PUjt0Iyb0bpUBi5L0yJJEkhWumxGv+fADtkg83f8bov+ozwmDE6vIKqseHSw1JlOgqTZ4RkyNRjjLAg6ZFQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(11063799006)(5023799004)(4143699003)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YWNoSHNrVVNuS2Q1bHNLRUNvT0FEYXRraU5xc0pQNGtlNllaOE5tbmc2OTQv?=
 =?utf-8?B?d3ZlbW94QlJNZFhMVE9ZWU1jeDZMdStJbUFLbTV5OFVQenlvTEFlWGEwSUxV?=
 =?utf-8?B?dERCL0RrL2p3dEh5bnorRSs2R3NTN0ZjTXVwNnZYaDQyNnpEblBBOHp5ZHlx?=
 =?utf-8?B?YkN5dkhaeWRIazdQWVFDNCtFbHBpRzFXZG9DY0Fsb0xVOGRuRjhkUWY2a01s?=
 =?utf-8?B?Q1QwNTJhblIzaVd2OFZvY3FUM1RVT0lMTUZISnQ5TVVWaHVaY3A3eWIzUDcx?=
 =?utf-8?B?N3ozQmM3cEx6Z0IwUERnSnVnWjFKQkxaakk1QXE0bVlNOUNYRnI1VEdmS2NZ?=
 =?utf-8?B?SXBIdXFHSGY2NXEvR1hMMnNuNGRqRWpZTDNoNWlsM1U1SnNwaTg3SzhkZGtE?=
 =?utf-8?B?Y1hhRXF0bG1DYXpiN3FGOTJrcTRsdzl0STNKSlpGT0FZaEN6ejF2TTVRZXBq?=
 =?utf-8?B?dUpjWVVHUklQSXJ6aVRVTTFmaEw5R1dNSXJmQjRzUTBFTGZobUljcDhUMkpJ?=
 =?utf-8?B?aUpYZ2tYYmQrTmhVOWVXMitNLzBpWmRTSDMzRTNUQmhFNEVINzBORll5WjZa?=
 =?utf-8?B?MTdqRldGcUJsekJ4Slp0R2NySTRkdHJXU1Nrdlord2ZLeitXSnRnTmpVbG5G?=
 =?utf-8?B?YndJUzZqSlBMVFhYZTF3UnhOZ0tJMHhYbjBhdmdwOGVXdDgyTFVWWUhHeFAz?=
 =?utf-8?B?WlZ4M1JJN3BvRkV0VnB6aEVsZ3VPU3l2UHd4c01KWmhsZDRSK09nc3FHQW9a?=
 =?utf-8?B?QWJwY0F5NFF6Qlp4NzE0VjNZciswNWIvck55VFJoQ0VBdTRnaC84M3JJSW9J?=
 =?utf-8?B?d3hvRXAxYk5WYnQxVGJaMFlJSkNVU2ZCdVJ0K0VJb2plbk5CTGVVYmp5Wmdw?=
 =?utf-8?B?SEhIK2ZOZkw2TElpRkNnNGo4RjVKWFEvTlk3TXlxRXM3bW1XZFJTN2t5VzFX?=
 =?utf-8?B?cGRQMXdYZDNtWUJYOXdydmdKN1poKzNhZi82TnF1em9DN3F0VXhhTVB5R2sx?=
 =?utf-8?B?L05oVkRjWDdiUWdaa2Q0WkVkN2laZ0s3VEYyVXVMNGxJdlZvNTFlaVAvY1Bv?=
 =?utf-8?B?bnVqNHFELzdBZHZuS2tTK2VPdmRsRzcrZTZwVjRFamJlTC9XbmZmTEUvL0ZM?=
 =?utf-8?B?czF0RDRVcVQvUEV6RHlNaWR1UU9iNFZrVkRtQkxSb1lBc2tkQkwzVEhUa1JB?=
 =?utf-8?B?ZFVkNHZ1RWljTTQ2RXhSUnAyTFhhOVFwa0xUWGdNU0ppcnJiVmRGS2Y1dDZ2?=
 =?utf-8?B?SnA5RWlzNjNwY1dwdW1sV3BHNXNVQ3JoaFBGTEVLeXlCMUdXVmNGNGdEQ2Ji?=
 =?utf-8?B?VnVVcVJDWVVLMDJIZUIzV2llZWhlSDFKcWZvUmNpNHFmMU1lYTlrR0JvMnVS?=
 =?utf-8?B?V2RrK3NzdGtvcSthNGgxNzVJbEE2ajNmaXc1WmplSnl4MlpPbTFJdWdlZVVV?=
 =?utf-8?B?Uk4wYWRYSnhKcXgveFhWNWVmNTdKcUZHdFZOSGhrbTQ3aFBkZjViN2NlSVVQ?=
 =?utf-8?B?bGtZcldOUXc3eS9NcjZnZ0d4MHVLb25JK0ZVbTVIUUZnelNlQndBK3BrZHl4?=
 =?utf-8?B?bEVrQWgyUGNENUlYWWdBb1d0L28yblRNT3lTMzZ4WDBwQW9VVmJPUmRZcCs5?=
 =?utf-8?B?KzkwVXdoTnpvUDRCNHpsVkR3STdtYzRtNlJOYlkwU1VCMmVMRWMrczdoYmQy?=
 =?utf-8?B?NlJNSmpZekJuWnJidlNJcmlmOTJWWEdyeVdjbjlGQUdma1VoNnF4L2JvL1hM?=
 =?utf-8?B?MUcraXBkME1STGNFMnplZkw2cVRLbmNRbHRsNFJDMnd1UEZaenAwR1ZjNVRl?=
 =?utf-8?B?Ui9JTEdOTGFoa0Q3UThMMmdtbWhKUTJ4UlBUaDdVN25KNzIwNEttZ25uTmor?=
 =?utf-8?B?OVRUVFVvazB2OS90eUNpcGliT1dSbUR3a2RWL05LY3h3M081RHhSSzNoMyta?=
 =?utf-8?B?dEpOTzhyWXkxbmxrYjk5VWRhSVlITCs1elpZVzgyRnZ1bDZLMDIySTZuNC8x?=
 =?utf-8?B?VUxpTkhWSUJkVUdkOEVQcFhZZjgySklMVmkzTUZEMk80aDhMN1BMNkxZQmIz?=
 =?utf-8?B?b1llcVpmWmMwUm9MNnU0bzNGanY3UmRxM2VMY05pUmxBN0NsakpUL2cvTjBX?=
 =?utf-8?B?TExFcnpmb1JsZW5mK3RDVjg2Umtwc3NsczkyeW5BL29IcWFPWlVYc0FtZW5u?=
 =?utf-8?B?YUJQRHNNYWovYzMybUkxMU5TQWVrNDZTRHUzcDQrMk1JOG5BWWhHQ1UzeGRE?=
 =?utf-8?B?dWpieVJuY2VtaVY2ZWozMU1pNkU4Q25tZWJ0cUZ5TWJjZm4yaS83cEo3QkJ1?=
 =?utf-8?B?UVhscmk5ckY2S3hnQWdNSXFoRWpuQlIvdklHVTRyeFE3RzRaUjhsNXpQOGV4?=
 =?utf-8?Q?UycyJ6DYXBfQQWEE=3D?=
X-Exchange-RoutingPolicyChecked: OmZbRkP8nGGyP6PpenD6dC1ECcvtpaFOABXSM5jYQi5fgDW7sCtM061fj5+Rv1BKj3FTucMY3uxPnQ+Amc61C3BhOnLymxyJuKrHWJCX22BQJhnJZ+ctTN7XW2inmu6vs5rWcJaK+TkYKalVhfPgFmbyl0VxUxKYIm1w/rXnJ4bnmVRjhroSphZS5q3hOYDKxldNvS6j4IQzk0hULkDFGzO/G2LJIbjNJcPLMn1cVIbNp+qmZvaewirNOeyuf6XIKKTVTNHMbBETIQbXJ5ZMPqJTVcijALoe/4r/CEb4Hwu+y112MbhsbTOoaAqQFa9jDjG3i377xVP+ZD4SfVbQzw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cdce63c-042d-4791-7f91-08debcc0d7d1
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 13:55:57.6037 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +v60qpWlmb4uySOqT4ugc9Eyf6n+ZzcWGlrc7TPEUp2TXYwAtU2fIpV93tszxQBaLqCg5guGtJjikYSQ6+mw3SVx23PIssdSvKZ3rYmQdyU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4837
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.karas@intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:janusz.krzysztofik@linux.intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim,gitlab.freedesktop.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BCE465F32CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

On Wed May 27, 2026 at 4:08 PM CEST, Krzysztof Karas wrote:
> With addition of commit 029ae067431a
> ("drm/i915: Fix potential overflow of shmem scatterlist length")
> max_segment size was included in calculating a number of pages
> for the scatterlist. This meant that segment sizes considerably
> smaller than number of pages in a folio [1], were not enough to
> jump to the next folio. In result, sg_set_folio() was called
> multiple times with nr_pages smaller than folio size, using
> many scatterlists, all pointing to the beginning pages of the
> folio and never fully covering its range of pages and corrupting
> mappings.
>
> [1] See shmem_get_pages(), where segment size is set to
> PAGE_SIZE.
>
> Suggested-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Fixes: 029ae067431a ("drm/i915: Fix potential overflow of shmem scatterli=
st length")
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15816
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/=
i915/gem/i915_gem_shmem.c
> index 06543ae60706..ac9b263c341a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -156,7 +156,7 @@ int shmem_sg_alloc_table(struct drm_i915_private *i91=
5, struct sg_table *st,
>  		nr_pages =3D min_array(((unsigned long[]) {
>  					folio_nr_pages(folio),
>  					page_count - i,
> -					max_segment / PAGE_SIZE,
> +					i915_sg_segment_size(i915->drm.dev) / PAGE_SIZE,
I don't think we can use i915_sg_segment_size() here, please correct me
if I'm wrong.

When DMA mapping fails, shmem_get_pages() sets max_segment =3D PAGE_SIZE
and retries. If we replace max_segment with i915_sg_segment_size() in the
min_array, nothing really changes between the first and second attempt,
we end up computing the same nr_pages as before and building the same
sg table that just failed to map.

It also breaks the sg->length check on line 163. After the first folio,
sg->length equals i915_sg_segment_size(). With max_segment=3DPAGE_SIZE the
check sg->length >=3D max_segment is always true, never and the PAGE_SIZE
retry has no effect.

--=20
Best regards,
Sebastian

