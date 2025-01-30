Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29ADDA229CE
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 09:47:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5C7310E2B4;
	Thu, 30 Jan 2025 08:47:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nvirFdmu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2010110E2B4;
 Thu, 30 Jan 2025 08:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738226829; x=1769762829;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=VA7XFPp6EN3rjL26FSEOoIy0vo8/IG4yap5ppjoPF+U=;
 b=nvirFdmu03LeCA3cctMyM8jO7Lz0bjuU4TIdBkkn6Un0Ro2s00Hh/Dqn
 Is1QyfYyQGs79feLtBare06QeWg0uLY+Bqp3lJ54t5R2CSzCmp3e0sigw
 VtFobjGXdO2lsQ6DF63gpNMUyZSbRfYleqtT7yBl5yIewPZ7uCJWmd3dI
 qIiH9gF7uJ7yHDyGgxeTfkZRghIBn3QtgL9PgMwEjGQ1CJSSs+lW/jbPR
 hEGDnp4H/HMXTSyuw3bqPy57gi8CLwZIyPbJQpVWqR6siL4pW8KJ1lffV
 sZE23lH2ocEtHnG4SK/TFzq9W5uQLrXukugDBkHlGt7VS3Q87iqLLzEFG w==;
X-CSE-ConnectionGUID: Oaa93H1bSBiHKNJ5zwYU1A==
X-CSE-MsgGUID: 2tfe4fp+T06WFXcBLphT/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="64125864"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="64125864"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 00:47:09 -0800
X-CSE-ConnectionGUID: lSqMtmvTRJKpexAozWPgRg==
X-CSE-MsgGUID: 28YMTpQgQRKsaHZquf3jOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113882103"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 00:47:08 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 00:47:08 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 00:47:08 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 00:47:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uLb8SI3Equ8qvBPgR8L75vmYY7B4lcVenvb2jjg/Nfgfi78tyMxblXCO+ZiuO83Tn/CnpZtx2iQHelRFBD6GHQiAwnUkED1XhwA/gUqe2vy+ReQ1d2cL5VWEKECTrtT5Ff8Mu+5iSgaLk/Zfuq5uO0AG230ZmkdyQI/t9d9ejluhBoU+TaqNs0e7fhO5B+U5YbquEGhAp5FR17H6f3IQVLMltKv+rI75YH1SdsK74CV+rYWKg0fq+DCM+9lDTEeS4V/R+RXQEIxo+BYKb6D7D9SZ1hjJec3eMD/LOSvs4M/1go+2nxOu0FJGZRVcfJiOm/weyrEJ1EQ8Tt74C0pK9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lX1vXJbygHN5BtffeRLlo+vilHIqLtmZL+T4AuYqMu8=;
 b=qUxLBdrwepWY4y7qtLgrwM7NPJXOu3lWgyLh2iIgriapfZmWrppyNYF3T88io8iUvc+QfG+SPPL2psktQg8Va/dBH+mALpnHNaB1MP0Im9+/1dfmeDqMi2Rct8Xk/QEDX/WOwXCCr7isJ9jlB3fbIKUfcghVl8Jl0uWb0Gfudkdi2YiJv9A93nR8OlvPz6OqthJWxVATwzzh3nK78IcnYkyO12r5kJ+Qo+4K+XxuFfw3rGIh1m8WHXBCWfTRRLd0nVwXbPlZFrn+4Wv8bIZhl65Y7lH9SJvdpVB0h6/p3TvwWOUZxvDuZSbxuVoSbC2+31pA/KLIcXVHGPzfxQ8/cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB6974.namprd11.prod.outlook.com (2603:10b6:510:225::16)
 by SA1PR11MB8253.namprd11.prod.outlook.com (2603:10b6:806:250::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Thu, 30 Jan
 2025 08:47:01 +0000
Received: from PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a]) by PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a%4]) with mapi id 15.20.8398.017; Thu, 30 Jan 2025
 08:47:00 +0000
Date: Thu, 30 Jan 2025 14:16:53 +0530
From: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 4/4] drm/i915/dmc_wl: Enable the debugfs only with
 enable_dmc_wl_debugfs=1
Message-ID: <Z5s8fZ6svNu0W0iM@bvivekan-mobl1>
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
 <20250117220747.87927-5-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250117220747.87927-5-gustavo.sousa@intel.com>
X-ClientProxiedBy: PN2PR01CA0018.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:25::23) To PH8PR11MB6974.namprd11.prod.outlook.com
 (2603:10b6:510:225::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6974:EE_|SA1PR11MB8253:EE_
X-MS-Office365-Filtering-Correlation-Id: 73a381f8-c505-4baf-d3d5-08dd410aa97a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?azc1aStremIvNFBURm5PTGhCUHdDVkNDeWQ0Nkx2SjlJczdNbGx6VTRieUdi?=
 =?utf-8?B?eU43enpqWUoxaUZMendBYVNvY2JGYkEwYjBZMWRSekdlL3hjb0ZHWGxYdlpM?=
 =?utf-8?B?UnZsMG9XaXhXTlRzSHFhWmI4aXhncWdFVUNBbUZBaXZkY0hmYXFsMlR1N0ZM?=
 =?utf-8?B?VHJHRmRzU2JHejNqY2dXNjJPeHpUc0ZCMlU3SFA4V3o5ajVQdkx3M1VIMDgy?=
 =?utf-8?B?dk1mL0piZndRYmtSZnFkODJva2hZWEZud0M4QXNkUm9RUmhKaEFBTjg1a3E1?=
 =?utf-8?B?eWlkNDFoM1g4Z25Oc1NXSiszZ0lhc28rUDdwdmJJazlnTWhKb0xwRExBczdD?=
 =?utf-8?B?SUFndVVNejcwcDRQcDlBTFZXSGtZaVJud25hK2wraWRBNG0xYlZKOHp1TjNy?=
 =?utf-8?B?WlgzWExkM0JHSjBBbEJGZVB0U2U3V0Y5VlhzcUJzYmFXUGZnbU9Rc1pHdUdU?=
 =?utf-8?B?RlJ6bndCNExLM0xDRzlMaUQ1VUo1b3dxd1NSOVpuSUtVRnBhMy83RWh5L0x6?=
 =?utf-8?B?c1J2NkorcFlQclBHSUV0MlZURG1CQS9ocklrN2JuMy94aVplZWRxaDl0ditX?=
 =?utf-8?B?VnZMT01NdmVNeVpqSTJLYzEza3ZrNmZralY1Vk1EdUVhb1hhUUFQKzdtVWtL?=
 =?utf-8?B?OXJRZTN5TW9JMnkvd1VRSDZobWQ3aDVnMWszTU9DWGFTc1VVT0pidDFhMm5k?=
 =?utf-8?B?VnB2eFMwYWxwQ1AxUVd0OWFrZ3BqT0hBdzgvUE1BSzJKR1BIYlpWbWRWNGlO?=
 =?utf-8?B?NENpeEZlUjhJRWJ4dEhXTmJ5MUl3L0RMUWtxbUJPeml0cE9IYzduMFZobUhr?=
 =?utf-8?B?RzFLM21OaEJ6dGw3QmhLTENhd3ZNUzRnSkVIN0hyaHhuRXpkSGpLVWFReTQ0?=
 =?utf-8?B?YTFiY0VTclNpR0RMRGtsMVk2UjMyczRkbWJTOVRybUk0RWZZUTFsUVE5aWQ3?=
 =?utf-8?B?emVDdG1TWWR5YW9XVEJtSG5kbC9UL3BGZkRzcXUwaW9FdVZ6NHdtU1FZcmdh?=
 =?utf-8?B?dFRlZXVDdldJYXdNYnlGUWFUS2gwc3ZZbXF3ZjlDWHpzNzg4TFdwakFWLzRy?=
 =?utf-8?B?eFBSS0FEUEpNK1JDTzFZcm9uYi9lb1pDZFZsVUdnb3M5VGxkR3NEQS9aWFNO?=
 =?utf-8?B?ekZCMVlyNGpwSXo2cVhDSFY2OVJCS1RraEI2NWNhMFdpeWh0VTlXT1lIcy84?=
 =?utf-8?B?dmpnNmN3ekd5U1FKdjFVUnR6K09wQVF6YUtGZnJwY1dFR1pTUGwxM2NtMmR6?=
 =?utf-8?B?Uld2SEo3K21lL2tOK09vZzJ0SUR6ZCtSTmdqVitoOTlBaVIxb2R1Z28vZFVm?=
 =?utf-8?B?bEkyLzNtWXJKTXh3ZFpwenNzQUM3SmxjbnljS3hnYWVSSkxZNnhQbkMxMHFu?=
 =?utf-8?B?L1JXcGlMZUVSOElqTTl5RVJ5aFJQN0g4cXlER0dMZ1ZiUzEzK3lyK21zekE5?=
 =?utf-8?B?dDdVbDBOT3ZUQ0RZTmpFMVp5dE10L3RpRlZQZU03c0YxeHRLRzNVVlJQR0tu?=
 =?utf-8?B?RTEvdUxJQVpBMWFvYTVhQ2hNUzMrbXR0azRLeDI2MXdrc1duV3ZmM3VFNytT?=
 =?utf-8?B?b204N0JQN0VEcXA5Q0toZFZ6UUFXeVkzM1lVSWpqVlppM1VIL2ExdXhHeFlN?=
 =?utf-8?B?VTVqdFRaNTdiMDU2RkYzSEFadnZTdmVkeXlub3YvRTJEbk94MVh0b2hCM3dH?=
 =?utf-8?B?MXBJOTI2NmlOY2xIaFdVcFdiTXQyck84ekpvRHVZQm1YSzdtNmRhbE9ieVQ4?=
 =?utf-8?B?WEwwSEkvUm42OTRaY0kwcSs3K3E3N3IvYTJnenJWam0vZUhvSnlEdVV1MXZn?=
 =?utf-8?B?Z1F6RzRrc29OOFRFaXNxeUlqOVNIemRlTU1hOVZZRmRHQUk2Rk9haVpTUURE?=
 =?utf-8?Q?3I+DIZpUj1WSQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6974.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NUcwQ0pUQ2NicDNpaXREUTMxYWVZNkFDcXFjWFJkTHVCRGhpUmcvSW95NzJh?=
 =?utf-8?B?aExNeW4ydW1sVVVIS0NjNXNNVWhpdy9qbUxkNnJCb21RUmNOdm81eE10RVdB?=
 =?utf-8?B?WG1OaFlSSjc4VFVwMlN4TkYyb3VsdG9yS2hQYysvS3JkVytzOXJtaWwydW8w?=
 =?utf-8?B?b1JZbmphanFuV1lEbWVuUFVlY0dTbnJsbEhKVnF0dTZYckVVQ3RCRzU2eFY4?=
 =?utf-8?B?SFVqZjY4eTA4SWYrS2RIbGZOR0lIemFzS28ycjRFR3I1V1YxUTI5aW9INmYv?=
 =?utf-8?B?ZXhValFmanhpWFhnaGhINEdwdFFqb1kvenFyNWQ1THdTcEtnQXhYdnhPdzlL?=
 =?utf-8?B?dHp2NStwdDB4QVpJdEIzekhlODVIMmVYSVBiaGF5L2xldTVOT2lucUZsVWZO?=
 =?utf-8?B?Rkp1aHd5Rmh1cmtYTHpwWjZ6ZmZyQWZCaWdFUExVQkgyajZCSXpTRWJNMmx4?=
 =?utf-8?B?RGtoNXlBSEg4aFZHYVRLRDRmbHlWb3VIclpGT1RaY29oTzlMU2lYdWxMenZR?=
 =?utf-8?B?VkRLbGRaVjYwUjV5cEVadkU0eUFPcVpUTFNaOUhZd3QvcXF4OWp6ODVKSlNn?=
 =?utf-8?B?dXZBWDNxS1pIY3l0Z0toTFlRRTlweHdlOWRNOStFVkpseHU0QzR2dW5RL3Fp?=
 =?utf-8?B?UWcwdWFYbWIzOThidXY3V2hBb2NxTWc3MlZCdTVpZDhJQ0FsaDh5WktRaTU4?=
 =?utf-8?B?OGw3U1Z2RDZJMG5xeFFQbkp3c2s2THRnRXpWaW4yNXZNQ2FBMlVFamgrZld6?=
 =?utf-8?B?ckxPK1pWL0lDamVpQnRxUW5uSWdKakhhSS82VERIK2t4Z1NUb1ZxQVZLS3Ey?=
 =?utf-8?B?QlptQUJwN3FzK3FlclZkT0FDdFhJS1pnWGpOMUhJaEJlNStnT3hrQXRRdG9a?=
 =?utf-8?B?R1lpNjFzbVJQL0VOdDlHMTJ5MlBGZVBHL0ZHSmdLVUREam1IMWxKTnkxbHRB?=
 =?utf-8?B?MExhM2RTb0NFbWF4MEh6UXNtSE9QRlpqRWR0Tld0cktPMklWVnpOQnl2ZG52?=
 =?utf-8?B?cm85bkRhaUlHa2l0Lzh3ODdMQlRJUlZGR1c3aW5VTHkzd1UwVE9oR2F3cWZ3?=
 =?utf-8?B?YThtbG16aG16Z3dMblpGNk02K05VUkRzQ3A1cUxvanl5RDVyMzlqSHphZXFU?=
 =?utf-8?B?dlh6WVRaU1JwZTRFdVp3NEozN2YrOVZVcmR6VUFNSWdPeDZPRVRMU3JHMFNZ?=
 =?utf-8?B?a0F1WXBPVnBrTElwQjhWL1RUa3JzZDVNY0kyd2lUOE1QK3pleGhuVFFSRThv?=
 =?utf-8?B?eGVpQ000Y1VQa1hxVjB0cEQ1cnI0emxPWUlvL2JBYiszVkZ1WStDbnBWQXVU?=
 =?utf-8?B?YUcwc3hXMmdhb2hja3pnRitUQUZYRXR6RjRTQVNxODlQS2FxSmRnYUFhTVNz?=
 =?utf-8?B?SCtXaERSV2ZMRjRzRkZGTnFyN25RODdRR1dvM2xQbVhuUENtanZ1YkVSaEdy?=
 =?utf-8?B?enhGdnlrWXRDZzM2MEFyVXJQMFlWY3huWEp2REJ4dXdZc3hiWXBIVW50d05Y?=
 =?utf-8?B?R2t4ZndoditId3pHeWVxS1dyVU9JeTVDMUduZG1sTXRwRXBXRVZ5UGp4N0N3?=
 =?utf-8?B?MWRzTUVOWTFDdHpGQTZrdEJSV2NvY0Y3ZDhLS2VnNVNPZStKak1RY1Nyc1pl?=
 =?utf-8?B?OGthVGtub2ZSWHpIZEF6SXVuMldwWHQ5aVhLWkdOekhSc0w5WTU0SVB2aGpH?=
 =?utf-8?B?Rnhpb0ZYSUFyNE1FbFFXUlM0QkYxNndCSEgweGdXclVpT0JpR282dk93NW9p?=
 =?utf-8?B?K2tEQ1puWCswL3VBblhrMU1hcnp0aDFlUS85WXRrWXlyMXJxNC9keHY5SER4?=
 =?utf-8?B?QmVkeEovNTVzTis2TDFMU2M1Ylhwa0RUQjhkOXNRZjhjVHVoenBYaysrb0xW?=
 =?utf-8?B?dmpLc1lJa3NJaTdZYXpqNTNhQ3VhMnhLS1NYRE5XeFdmZzB4N0pqWTFhNUdj?=
 =?utf-8?B?MzNtUkwxZDZETU5LbWRyNWxyd3N4ZS9vVUFYdE9XV3BmMWQ1c2ltWHJWazNB?=
 =?utf-8?B?Y1huS1RIK2JlV2RFUXh2NXFjTGx5aHNtKy8xTkRTR2ZrRHlTaUk1ZHJONEx5?=
 =?utf-8?B?cVJFTktiZVNCaFQ0Nzg4NlZyMldSNFpuRHNoMllVbVpLTFZrMWczdGhEV3FY?=
 =?utf-8?B?NFh5cFZRK3dsSnhwNzJpOVVpUlg2VWlhNHV0NkgrbTUzTEljWU1WNEV1dVQr?=
 =?utf-8?Q?zb0v5RmE4qkDRuFBIPJdAbM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 73a381f8-c505-4baf-d3d5-08dd410aa97a
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6974.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 08:47:00.6654 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q10GxRBl74R+Pu3wDXFee2Y1EFxG6RWBbKdKWKsS28B7vyQ3SLbXF/VjbZHOemnqxGWBwMPUyYMHPsTSO24fErM3HC0ecgNJpPX1LhGSy6s5bqNuaDeYpvcYphblrDq0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8253
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

On 17.01.2025 19:06, Gustavo Sousa wrote:
> We use a spinlock to protect DMC wakelock debugfs data, since it is also
> accessed by the core DMC wakelock logic. Taking the spinlock when the
> debugfs is not in use introduces a small but unnecessary penalty.
> 
> Since the debugfs functionality is only expected to be used for, uh,
> debugging sessions, let's protect it behind a module parameter
> enable_dmc_wl_debugfs. That way, we only take the lock if the feature
> was enabled in the first place.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>


Looks good to me.

Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Regards,
Bala

> ---
>  .../gpu/drm/i915/display/intel_display_params.c  |  5 +++++
>  .../gpu/drm/i915/display/intel_display_params.h  |  1 +
>  .../gpu/drm/i915/display/intel_dmc_wl_debugfs.c  | 16 +++++++++++++++-
>  3 files changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
> index c4f1ab43fc0c..bc36d1b0ef87 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -133,6 +133,11 @@ intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
>  	"(-1=use per-chip default, 0=disabled, 1=enabled, 2=match any register, 3=always locked) "
>  	"Default: -1");
>  
> +intel_display_param_named_unsafe(enable_dmc_wl_debugfs, bool, 0400,
> +	"Enable DMC wakelock debugfs"
> +	"(0=disabled, 1=enabled) "
> +	"Default: 0");
> +
>  __maybe_unused
>  static void _param_print_bool(struct drm_printer *p, const char *driver_name,
>  			      const char *name, bool val)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
> index 5317138e6044..cb7dc1bc6846 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -48,6 +48,7 @@ struct drm_printer;
>  	param(bool, psr_safest_params, false, 0400) \
>  	param(bool, enable_psr2_sel_fetch, true, 0400) \
>  	param(int, enable_dmc_wl, -1, 0400) \
> +	param(bool, enable_dmc_wl_debugfs, false, 0400) \
>  
>  #define MEMBER(T, member, ...) T member;
>  struct intel_display_params {
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
> index 1493d296ac98..f4e4c7a5a730 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
> @@ -37,6 +37,9 @@
>   * which exports a buffer of untracked register offsets and also allows extra
>   * register offsets to be tracked by the driver.
>   *
> + * The debugfs directory is only exported if the module parameter
> + * enable_dmc_wl_debugfs=1 is passed.
> + *
>   * Untracked offsets
>   * -----------------
>   *
> @@ -411,6 +414,9 @@ void intel_dmc_wl_debugfs_register(struct intel_display *display)
>  {
>  	struct dentry *dir;
>  
> +	if (!display->params.enable_dmc_wl_debugfs)
> +		return;
> +
>  	if (!HAS_DMC_WAKELOCK(display))
>  		return;
>  
> @@ -453,6 +459,9 @@ void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offse
>  	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
>  	unsigned long flags;
>  
> +	if (!display->params.enable_dmc_wl_debugfs)
> +		return;
> +
>  	spin_lock_irqsave(&dbg->lock, flags);
>  
>  	if (!dbg->untracked.size)
> @@ -479,9 +488,14 @@ void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offse
>  bool intel_dmc_wl_debugfs_offset_in_extra_ranges(struct intel_display *display, u32 offset)
>  {
>  	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> -	bool ret = false;
> +	bool ret;
>  	unsigned long flags;
>  
> +	if (!display->params.enable_dmc_wl_debugfs)
> +		return false;
> +
> +	ret = false;
> +
>  	spin_lock_irqsave(&dbg->lock, flags);
>  
>  	if (!dbg->extra_ranges)
> -- 
> 2.48.0
> 
