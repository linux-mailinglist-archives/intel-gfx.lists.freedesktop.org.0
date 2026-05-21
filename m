Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHUaLuLCDmrXBwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 10:31:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B155A10F3
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 10:31:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BB2710E47B;
	Thu, 21 May 2026 08:31:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pje+9fU9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8126010E47B;
 Thu, 21 May 2026 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779352288; x=1810888288;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rtWC0pF/H47yMTglPChjHHtFq2bbsmBnuvPHbBRQvYs=;
 b=Pje+9fU9ynVgGTMRyoxmkjPNhijPfvQ5jEZG/hnvv7KVQnlEGgF9k/WX
 W+l4BUWs1Xlo2gCjs2MlY7fthzVypqVvOgwmls826ZgsZ5EdHS/cpYJGX
 +MVHmnObhiODgVkRbZ+voeccNQC6CYYCPztWSacR26yaaF+sBksTgXxqV
 0GA9D/ABvb2gGkwctazTsBuW9kreu0HkiO5hdXdDgUyOeghewwN3t78b2
 J09nNNQcQPGG4Abyuavsig9BZbvJ1c+e5vz4pRgS0PUjHV+Lv9IoUSq6e
 e/S708GiDY7m7L6clCmC8zkQk1hahihEfOMxdG2HE6I0Cj5PCGmqr3riL w==;
X-CSE-ConnectionGUID: zfr5yqMASK+HG7H82K3ViQ==
X-CSE-MsgGUID: Z/BQmZ/ZR9CuOgzEKv9XXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="80444579"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="80444579"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 01:31:26 -0700
X-CSE-ConnectionGUID: dMZFe6OdS9WWkB+EyMXqpQ==
X-CSE-MsgGUID: /QBHZEGURHG3LO9LUjBWgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="237445030"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 01:31:25 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 01:31:24 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 01:31:24 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.61) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 01:31:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Aagt1ly5lnjPPjugWAocuxcu87CqyFLOrviQMny2LdS9T/wvD76cay8J1VAqQlmSOTNnaUV+qvgo6ZDXWtMouhjOqEiX9Oid2lceeyX2nRI82AZ3awZ0Rxtmw+OGiBQKAjDOXswHlJ/F+5k/gteRW8+FnzC6EzATvsKbIglCPAnTIdCFp45B1l83JnB+ZGT6KZynvIkmQ7ndIQrUUbUuKE7s5IE7SCrLO1srBC+FMhtO+mq1MkOHUVCHc/lPvt/pLB3iGFCgg64Z/A7/vCNABGszbCJmcjJfAN94/bv1LHpSN4nB45lKc0WU9rNUJ7zWZwi4SkqTU3gtLppaAqQ+sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TorkwSgrzH/fJJRgomkj04Qty19gCGQ1Ya6RFCuOnH8=;
 b=C+Gcv9J5McdNPjjz+QQysruc4PX78gbXVGff2e2KKnool3FVMbqXgiZeAV72hu7Dg1ch7/gTu82tMSHsZGjX5D20+3JyxLZ9XpfA/EyCg4VW/NNtYACIhdrQCs5KFI1IVcEfozRhYU3BIesIme9suXkpyni9CWVV0k1yW0cF7VEBuBNQJvDT6fU2HMAZ3kiKdJ0UpBAscLORWbySJEgrVDGN04yiajinqkSAIk4MGLVYDXJww8Jp1iCvWeP6h4thVZGjQnA9RrjswrQLy9Q1fyrdQGQ38UbmKhDzdZXQMZrgB2zYs+jpEUz3v/NgZf8hl4YhJcJf0/wNREB5m1z1Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by DS0PR11MB6541.namprd11.prod.outlook.com (2603:10b6:8:d3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Thu, 21 May
 2026 08:31:16 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0025.022; Thu, 21 May 2026
 08:31:16 +0000
Message-ID: <79f55f66-805f-473c-b7f6-f3e9b1fead37@intel.com>
Date: Thu, 21 May 2026 14:01:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 02/16] drm/i915/cmtg: Set CMTG clock select
To: Animesh Manna <animesh.manna@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <uma.shankar@intel.com>, <ville.syrjala@linux.intel.com>,
 <jani.nikula@intel.com>
References: <20260513163857.1541888-1-animesh.manna@intel.com>
 <20260513163857.1541888-3-animesh.manna@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260513163857.1541888-3-animesh.manna@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0218.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1f3::13) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|DS0PR11MB6541:EE_
X-MS-Office365-Filtering-Correlation-Id: cd8c3a82-eda1-4767-bcfc-08deb71352b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|22082099003|18002099003|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: VTZJdNf+fRukNXWc5pIUSMH/Selm3WbHFCtqenfaTmYfG+KePCB8LmTq17OCTEfvSbFvNEwJVVhHDgUPef+x2dpb2nZ7hXQ/9qXGxPJFWpqRplLl7QtSU2bClSiYvYPfc8fNVBne24nEOGKDrxQQreKpQ/Apu4bFoKaDphxrZwBlKJdItTPwtpvTwJbO9d2bzSrrIGPORpjFRPvnkOoXGeetpoFk8aIbrsHWzLC2dXbC6VVLg+hJwHVDsvfPWc0C6q20RNXejFxdroKPU95HXMKP5ikDUniNJAqyuT1+WR2IwJfsm58RuKPXEda7BmfhAXQSR5J9T9aTJ/5R8INlzyq7BdfKGfSLw2EE6ruPgPKWl+mBQ4qiQ4FWs28JS380o1xsi+rzW+Je03r4Fyti72BAQrw4YsfMCzo4DFFyL/HzQOd1Eba1LbXgvjVJCRAHvrdmZipPiUZ5KyNlxbrTCChnQ+eMAILIgOzb1/Y1NAZzeuXLfaW7vz5WmytPFcaMaYug5bR1MXEdFc8/QPB2U1C/oIyP5ZvBF+i+KdP9KoN2AdttOSOJd9svOe1aDkqkW2UAA0VSSgS3XxYfUEhbj9PiPtm4FAdKxs2bRJdulj/Ax0SBiP6ZkaHwVJKwYZJREYPsPcZTiWKv9pSrj88liW+s5mNjrm7C8evrhIOb7DxWsFEfGsO1fGyM/D7BPzVj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(22082099003)(18002099003)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Syt1UUwxdGxTbk9PaW93VjV6WFNWUmZzVUgzeWN5a3N3c0dyWkV1ZWdhSDFQ?=
 =?utf-8?B?a2JXUzVNNG5nT0FUTWFyOGVxRG1DLzlxajVQdDZDRzRwQk9ReGFNVEhtVUph?=
 =?utf-8?B?b3ZjQzZOUzBBemJMMGNaU1VFZi9tM0dyMGNYVS9ZdTZVb1BvTXB2Znh2b3JB?=
 =?utf-8?B?d1RnU2FydG1NZ2tMT2pmS3o5alNzdDhTTzdzWnJjU3JHcElKeHBGMlBtdjNQ?=
 =?utf-8?B?aDJLNzk4UnZXbGwrWDA4d3VPb3B6U2hXbmhPbG41NFpaZGFWRnpjd1pSRjAx?=
 =?utf-8?B?ZGFNZGs3YkJsT0ZZK00vV0ZCR3ZmZis4b2d3QVBPUXZ2bXZYanFiN3l4STFv?=
 =?utf-8?B?TnRyZ0pPQ3cwVld0emJnM0Z5eUNpUWZYbDBMcWVOR2RQeEFoeGV4S2hneHJN?=
 =?utf-8?B?U2dGMDdXUVpnR0pYNUk2SVhMTXRIT3NJY1hnRFZHbldDRjhLVVVjSng5b05F?=
 =?utf-8?B?eVFrMWczODFiY0pYaVd1OSs5WjlhYjJ4M0ZEM2JGcFlCVDZVck52alFkcWJr?=
 =?utf-8?B?T2lNR3FCMDB5REdrakxSR3RkbEZ6QzVDQ3Z2SmZtQ04zVW1uRHBEWDRROHlp?=
 =?utf-8?B?ZkNtckU0WUNJbGZGMFN2ckVxTzJzanI2dy9SVDZHZC90Q2x1cGtmLzBDTFE2?=
 =?utf-8?B?TnpSUzlxMG1uWDgzbVJVemVtTTFsUXdkK2dzN0xYZXg0UG9SRGc3d2JyMFdJ?=
 =?utf-8?B?RWZJYUdPbTFVbTVQM01CS1V6OGl2V08wL0hWNzM5MnJRMjRVK2xqc20renBp?=
 =?utf-8?B?TXc2alVYdjgwSnU2emdkK1I2Qitvdk5aZGRkMTE1SUlORm5ScW1rWHYwZnE1?=
 =?utf-8?B?TWN3dDJyQmE5RmdrQnlVbTlwOXo0R3g2UmNFUjl3Mk1wQ0oxTVd0dnJUdnJR?=
 =?utf-8?B?RStMbjEvRldiNnBrYVRvemlVOUprbHpQR053MnZtbTlGSU1XeEhMYzRVRy9T?=
 =?utf-8?B?dWNWM2FVd01sVFlEaEttREJ3U1VyZThDdFIwWGc0MTVvL05jK24vaUN5V0s0?=
 =?utf-8?B?bFZDVjA0b09LMXlndnRXelh2SmpGc2JDcS83OHBvdzlVVjRmV1dvNSsrVHZx?=
 =?utf-8?B?WVN0UDNXRVMxM3ZyTzFIQkwydm1WRWtXQnBZSDZzKzJIbndpRHI5dWY2RTlC?=
 =?utf-8?B?Y1dZMjYvQUlKV0YxWmtjUkQzbE9zQ0Vxb0JKWUJnc1M0eTdDeTFsVC85UTF3?=
 =?utf-8?B?OTlKTWdUbkc3LzNKVkp6K0w3cklUaENJUUFPZ25MaktKZndiWThDZVdMaWZG?=
 =?utf-8?B?SENlYmVlbkMzZmZtdHE3Z3ZEYWN1NytEM2VOMVA4aEFENVJBc05RRFdlUTZW?=
 =?utf-8?B?OCs5Zm50MFkwVTI0clNjblZFaGFlQk5aZllxd2NXRGxjalk0Y1l0QVdZWDN6?=
 =?utf-8?B?ZXFNYUhDTldMQVZieUtRY2I5RnAvem9qTVByNS9GZVhGUDUyNmtjUUV6M2Jq?=
 =?utf-8?B?OHVWM0Vpa3RYV1BxcWt5MVYxcERkK1IxaytBL3dHeWh1cGlWSERNSU9OMnk1?=
 =?utf-8?B?dmFwVzN2OTJnTDJrWHZ4ZFRwUEJ5L2hEcFFjRU9XSUxtTWxZWnBXY0JQaWhz?=
 =?utf-8?B?NEZZNkVTZEFNNVlBVjF1c1VnaDRlRStYU1ROL2xBbVFPT3RWZDVmM1NqNjlL?=
 =?utf-8?B?aWdwUjM2dDVwSHViREpxLzNUb0w4STgvUUhDR2xndWtjZ2NyRHR5V2Uzdnl1?=
 =?utf-8?B?V214Y0xJZldpQUI5dDFsTEJVbmVZWnVETVhGRWNkNGxqVWJWdkx4QkJxUkFV?=
 =?utf-8?B?d3U1STVVenV4UWRiNkRES1NCS3dFRlNaY3NrTVVYRm5oTi9yT0dyODlVVkNE?=
 =?utf-8?B?Qkt3Y1RzMlJkMEppeXBBMGtzRG1mL253dzdDdm9iVXNTMEZUSmlYcEJsK3Fs?=
 =?utf-8?B?UnBocXBZY0JMbm9DNElGUnp0MUJUU0VBTkd0UW1aOEpmekhZZXZFY3ZYSnRC?=
 =?utf-8?B?N1RkbUVOaDQ3NGFlUE1McjJPY1kybk5pSGJmQnUyckh0VFBLUlhUNXY3Mmc3?=
 =?utf-8?B?YUdyUm9SeXh1ZVVjU0R0eFV3Q0N3UDNsQzZKRmVtenZxa1lDMlQ4cXE4VEhh?=
 =?utf-8?B?UVE3TDk2NExrMEluTHJrQTJnQlV5Y2ZHRGlkbXEzby9YNG1GU21sQ3JzMmNq?=
 =?utf-8?B?bjA2YW0xTDFEYWhOLzRUTkk0NXFuTkI2NzlscXgzRzFsR2xFU1k2UUR6Tllw?=
 =?utf-8?B?NHpQTlNHN3RkcUlGZ2NuWFM3ODF6SlpYcVBqc2FjS1U0czFnWDJoNHBkQkFX?=
 =?utf-8?B?czRsRkpraHRyTWwzdEVybGczSW4xVHU5V1o0NkthcGM1QjJZbndmWitvM3NH?=
 =?utf-8?B?ZDIxZk1TTWFyNzd1ek5KTVN2ZEF5V2NEbmdqNDJnSzZjZ0ZBZy9VNjhOSjl0?=
 =?utf-8?Q?la+T44yM1V/xoT3vRPsy0HRMdFCdnay97KGaF?=
X-Exchange-RoutingPolicyChecked: bqRYC05/TA2x2DPy4hwMzXat0XwFwyter6AnfAlZGBBpBYVGGzZBD+HEmqQu1u30vzIBQy32EStyppWie8j+RX+C5CutLUuyyvYfw/AlMjp/Ckn25k9mDRWVVmN0M/R60JnxRmWQRfC63brZHNTBU2Pw/2N4FGQMAep/VQI5C0IWDPQP2tfpcfoTRnPETILjFEoctSEAvSuxXrklYzUEEJHMfejrFL884IrKSS8YeFCF7+mK6HDRDXJdBnvRTc/ZATyV2q4aR/49vE6/giIeRhTpdhnc9dxR3YIMRZxADpabALtMU13KzX67ESQODAZkK6AkhjTpvZi+RbxDpEJsRA==
X-MS-Exchange-CrossTenant-Network-Message-Id: cd8c3a82-eda1-4767-bcfc-08deb71352b7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2026 08:31:15.7249 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rDWZD9iyGThYHOk07JzMI4YBRztjog8Qs9P4PVILat2loskC+rnNO0wHSks3Cy7PapcG8EP5O71KZ2Excpwu+Z+zvsdfuLp3bEFPGhATmTDgMqbbEdKMEftof/54ENWM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6541
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 19B155A10F3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 13-05-2026 22:08, Animesh Manna wrote:
> Program the CMTG Clock Select register based on the transcoder used.
>
> v2:
> - Correct mask for PHY B. [Jani]
> - Use REG_FIELD_PREP() for enable value. [Dibin]
> - Extend cmtg clock select for xe3plpd. [Dibin]
>
> v3:
> - CMTG support removed for old platform.
>
> v4:
> - Optimize further with else-if. [Uma]
> - Correct CMTG_CLK_SEL_B_MASK. [Uma]
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cmtg.c     | 22 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
>   .../gpu/drm/i915/display/intel_cmtg_regs.h    |  2 ++
>   drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  5 +++++
>   4 files changed, 30 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index dc039bea452c..cfe59c604506 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -198,3 +198,25 @@ bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state)
>   
>   	return false;
>   }
> +
> +void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 clk_sel_clr = 0;
> +	u32 clk_sel_set = 0;
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	if (cpu_transcoder == TRANSCODER_A) {
> +		clk_sel_clr = CMTG_CLK_SEL_A_MASK;
> +		clk_sel_set = CMTG_CLK_SELECT_PHYA_ENABLE;
> +	} else if (cpu_transcoder == TRANSCODER_B) {
> +		clk_sel_clr = CMTG_CLK_SEL_B_MASK;
> +		clk_sel_set = CMTG_CLK_SELECT_PHYB_ENABLE;
> +	}
> +
> +	if (clk_sel_set)
> +		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
> +}

This comment applies to the entire CMTG programming series, but adding it here since this is the first
TRANSCODER/PHY programming step.

There are IGT cases where TRANSCODER_B is not mapped to PORT_B, so the current|else if|
flow can fail because PHY B may not be enabled.

Please check whether the programming sequence here is correct and
what TRANSCODER/PORT/PHY combinations are supported for CMTG.

> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index ed540581738f..87092ce6d67b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -11,6 +11,7 @@
>   struct intel_display;
>   struct intel_crtc_state;
>   
> +void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
>   void intel_cmtg_sanitize(struct intel_display *display);
>   bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index 945a35578284..4a80b88d88fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -10,8 +10,10 @@
>   
>   #define CMTG_CLK_SEL			_MMIO(0x46160)
>   #define CMTG_CLK_SEL_A_MASK		REG_GENMASK(31, 29)
> +#define CMTG_CLK_SELECT_PHYA_ENABLE	REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0x4)
>   #define CMTG_CLK_SEL_A_DISABLED		REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0)
>   #define CMTG_CLK_SEL_B_MASK		REG_GENMASK(15, 13)
> +#define CMTG_CLK_SELECT_PHYB_ENABLE	REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0x6)
>   #define CMTG_CLK_SEL_B_DISABLED		REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0)
>   
>   #define TRANS_CMTG_CTL_A		_MMIO(0x6fa88)
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index d832e44ef62a..6a7481578e61 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -9,6 +9,7 @@
>   #include <drm/drm_print.h>
>   
>   #include "intel_alpm.h"
> +#include "intel_cmtg.h"
>   #include "intel_cx0_phy.h"
>   #include "intel_cx0_phy_regs.h"
>   #include "intel_display_regs.h"
> @@ -3418,10 +3419,14 @@ void intel_mtl_pll_enable(struct intel_encoder *encoder,
>   void intel_mtl_pll_enable_clock(struct intel_encoder *encoder,
>   				const struct intel_crtc_state *crtc_state)
>   {
> +	struct intel_display *display = to_intel_display(encoder);
>   	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>   
>   	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>   		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
> +
> +	if (HAS_LT_PHY(display))
> +		intel_cmtg_set_clk_select(crtc_state);
>   }
>   
>   /*
