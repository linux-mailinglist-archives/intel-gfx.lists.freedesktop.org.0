Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A13ADED09
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 14:51:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3722A10E1F6;
	Wed, 18 Jun 2025 12:51:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WNV+EST4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF8ED10E81D
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jun 2025 12:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750251085; x=1781787085;
 h=date:from:to:message-id:mime-version;
 bh=SgAcZMv2y5NcQXvg4eCci3eWBLNl/zjx5Dbs6k/zvVU=;
 b=WNV+EST4FK/Wv/1+4kxsp1/PZBpFNER9ZUoXesoK7KdicUp1Lo5mC2zw
 RBdlgCRHBWmyk8/dv7/3/f6e6QFtDVfa9jbuqffPycCWgwON0k2CnKfgd
 SiTJVFmMgMekmvr+3ohf46ft8r4NhJj0+LddThBrD9UYkxUvgG63ODRJF
 JLZ+/Td7dsMVeWMI2Hu/yZt+AtfPN8A/q8ebilVDtXfKIBfVSWtYTPCHu
 718xOaXwQVlK5Ey6Gc0naL1+RzKccf2A+MbesF0VR0lOYfgQeon/4HZGB
 /4XKqy1qbpG0HnkiB64GC94qAHImenD8VMVnd7xyWUU8GQolGsL/3Rccz g==;
X-CSE-ConnectionGUID: VbvbHH8wQ+SFPTfu2jl4Nw==
X-CSE-MsgGUID: t9f3v9/GS9mw0FcnY45zzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52385430"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="52385430"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 05:51:24 -0700
X-CSE-ConnectionGUID: c55VE+8DR6CxRcPB+UiHfQ==
X-CSE-MsgGUID: rb/O4NO2SZmOnXcjnXI81g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="154229033"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 05:51:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 05:51:23 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 05:51:23 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.75)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 05:51:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ytjQlTIGK8jsB6xfOJ2iJ2D6bkWWaulhb7N3Ozri0HsTxoKOv7yZ7LkfR/DMRpWJXda6l0lVBG03aFOudm9sIBYss3Km/Y1TpZkxRVLZzDFZSXBq5EbPoHGMVhJw9EroAuUjeNIwAk9Z2cEQaOL1vTl9kP48AnWSr3odVLTwy9CzVoo8LJlINY4twd2bubXXlldnqNZRx9k5gSQvFrlO9sNoAg30cMXjSj1a2fIiUkdLUgtwrc77hCfWBoN5/MNkJLhhWBr8uHlo4yrSvupL+2jirTbFW+aBRW7TqRKNG/Rp+1CNSn1V3x8vTsLPo+wIiutn4B2MB8liBbF+jJRfNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SgAcZMv2y5NcQXvg4eCci3eWBLNl/zjx5Dbs6k/zvVU=;
 b=eBV1xGVGERdCdiyPrAOJwJvUAFAPARj8OnjQaeWYhQZ5ewDREgxNIdeWz1Rlu4amhTzdlyn6Q+FsMastyOo/vkcHPThiPbe2NohQfeAfu/TkBjPqasgePlw84j2hTQFTvsD+HQVqGbAQlANaT0mCFmjLjV4e+74TjQtyj10+Kn5ISFhDyVC+6jeZ05OmZ6cIbqy1rduplIhZSpRz5ZJA/L1inuUPRutUosqRjt18d5UMVGnPSXyAYK6Ildnd2YNxDXT4tk9OAIIQOpiDfA4Gx1Ay4U9OoeF2O+RqoVlad0l6yDq/TL5HcmzkKcI0EhZhqgmHsfCkKXi6An+7QADtzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA2PR11MB5049.namprd11.prod.outlook.com (2603:10b6:806:11b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Wed, 18 Jun
 2025 12:50:47 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8857.019; Wed, 18 Jun 2025
 12:50:47 +0000
Date: Wed, 18 Jun 2025 12:50:40 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <enmvs5xc2vjomnhaumdpt6ygv3berd7acuz2usz5hvprgey3x2@6bepnus3ve52>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: WA1P291CA0016.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::27) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA2PR11MB5049:EE_
X-MS-Office365-Filtering-Correlation-Id: 80425ddc-c380-4023-b971-08ddae66bf13
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TTlBTDM3OWN3WHdlQnFOZDgzMVBjWmVmUUwrTzJRK2lIdUNSWEhkblhoV2w5?=
 =?utf-8?B?cHJJUXVWeFg4TVl0MUdEMGVFdlpIM0owOC9xOE9aS1l6R0k3S1V4blNBaFNm?=
 =?utf-8?B?RjVpOFZlSjE2WHhGbWV1Q0hzZ2dtWmFlc3FNMUpRc2poTytxU3FtM2xjRlZz?=
 =?utf-8?B?ZVo0bnhtVVd3bitjRm9wTVVBSFJPVzRmNG1RL0JmaDFkbnJGRXVXQUZyOEpS?=
 =?utf-8?B?TFIyWm1ENHduNk9OOEVXMm1SbUJWbDVsV0J3bjQ4VFBjakNpREN5UXlVWEt3?=
 =?utf-8?B?ZmFkUUtGNlBTTDJ0bWkzaHdCWjdxNVpvRlB0bUVra3ZETnVrOU5sY1VrWnEz?=
 =?utf-8?B?UmJucDFjRnpCVTFkSFFldkFjWmdnSHVIR1lEMWdJTHBIM2FxMzVHTVdCbTkz?=
 =?utf-8?B?YWxEcEYxcm5SWGlva1ROR2pFcGJBdjBiRWMyUVZwR204MW1zRytZUXFpT2Fm?=
 =?utf-8?B?d3BKRE5HdUROTEhvNHhTdVlCUWIyTVM0YTdoL1RhTjVwQk5TK0NsRk9KTVNo?=
 =?utf-8?B?WEhlc2liR0dhMUMrNFJhUURHN201bTBoOWhqSWVIRlFQVFFlMWNKZm9YQmkv?=
 =?utf-8?B?TmtXVTRyNnZ6SkZ3c3lua01UeFVFckZBYmppZ05NcFJQRjhTM3p5ck1ydkMz?=
 =?utf-8?B?QWlON0tNQTdvSmFRSFpTcW1MV0pBZWVaMTRnajdPbWp5T2lSbmcxYkF2VnlC?=
 =?utf-8?B?bjN1NS9wNXdFbHljbkZZMCtTVXhMaWNsTEx5dzJINDVweWlRQmh6akFCT2Uv?=
 =?utf-8?B?SC8yMCsrMmo4WGlZcWdLS3VlSlFlYXlnZWgzcW1raklUM0JXQ0xPRmEvd3U4?=
 =?utf-8?B?ZGFwRkFyOGc4aEhIblFHbEszaEZZWU9pb2p0eXM5UnpGcnRPS3ZVVVJJbWxq?=
 =?utf-8?B?eGJEdHhIUmNFemg4c2J1bWNQTWdYN0VOLzh5Z3AvSXpQdjVwdVdLNXcvcGg5?=
 =?utf-8?B?R2x2L3p4VHloMFo5THpVS3JCWG80NzhCK0h3K2ZJTlpvYUlKSkpHV0xjYjY2?=
 =?utf-8?B?OTFCNUk1TGVGVThxN0R2ck9yNG5YK3pyVlBwaHIzU2tEQmloa2ttNmxlcDVu?=
 =?utf-8?B?T3kwRUJmZWNjMjQ1bFZCWUtnMGxBYnl6MkgrM0l6NU1uSVFUWUJad2xDUDlt?=
 =?utf-8?B?LzFBajZSWGRMd0ZZMnJ5czF4enlBZzlXeE1RZ3VNK3cydEp4S0JZeFIzZkdR?=
 =?utf-8?B?a1hDWmdxS2p4eVJ1em93blZrRUdzNWtKYS9kQkxaNm92NXFsSWFuakV6VnZP?=
 =?utf-8?B?UFdyWnhzWDhyNy9GeGhDVy80Mmlyc3FZV2srZXdVYzN4RmpqMWh3dW1PUU5l?=
 =?utf-8?B?RUJObkN6Y1FuT2drRStqWS9HTWJpcXdLMUxvZ0x4Nm9GY3RtNHBvTFJpNlNn?=
 =?utf-8?B?VTlzek52cGN2ZTB6cUxHMnJ3WTVKbkVQTHJyR2tWTi9ZYlpmOFJTMWpmdGJ6?=
 =?utf-8?B?WXcwUjZZalVKZVdjMnZXN3NScHdTYkZZcS9XK21jZ0gwbytvRHdGOWZMK01k?=
 =?utf-8?B?V3ZpR3E3Y1FXN3ZaazU1NE5NUmo0V2FUVVNtZ1VmQ3pwWGZMQlBsTWZHcytq?=
 =?utf-8?B?ZlN2UVcrMlIramFBaWpiNXZNeE5ja0xoTTZNbFVRd1Z2R2F4eU5FS1U5VmRF?=
 =?utf-8?B?Rmowd0dHY0RPbEdaNkY5UWZCa25TckpJanBGczJ4VUlkc21GWi9ZbnA3VWto?=
 =?utf-8?B?blgvZUFEOWg2dmFjZ291OGFUK2FyKzB2dTE1SWxaRWUyZ0k0ekk4OUhkVU1Z?=
 =?utf-8?B?bzRBUUVtSzdlMXQrZjlJWTAxNHlpR2hQRllPRncxSzQrQ0t6ZzViVHc4bTV5?=
 =?utf-8?B?dzY4bXFyYnFQZUp3QmFvMUcvTEd0YzhSSHZFc1U3UGdMUmtqMmVvT1ZVY09y?=
 =?utf-8?B?RWZ5REZNRk5DNTdmYjJOYjZvc0lZU29RbzdTbjhVODlwckE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RzBTZlNqaTREU2MzS3ZXV3RlRHllSkRldU9VTDdCeGFNaHlsVUw0Y3VUY090?=
 =?utf-8?B?cVlUTDFxenJtRDU5OE9lZlZRSGpBUE54L0RFZjhKNE9NVjNGNURkT0lUSW9R?=
 =?utf-8?B?Q3NLV2dvaXlzTzEwcjZtYzg1Qks3a2FpK3pDWHhBL0I3OCtudzMzcEpUZG8r?=
 =?utf-8?B?cG9wUUZ1S2RObS90NU1sQ2xQSlF0S3VWc2lHRFh6Z0hHbkpoSEF0YVNXeWsz?=
 =?utf-8?B?aGhEOVV4b3huWHRCd1h6SEVKaGlMNlo4b0dRUW0rcXdWOXgrckRsKzJhQXF4?=
 =?utf-8?B?eFBjcWFEc0dFaC9FTDhBV2JmSHpKSkFjY3F6K2s0TmV6WDRYQ2svckg3eDBx?=
 =?utf-8?B?RnZKWEtJTWlCVEgvRko1dDI3MUNGL0tPRW5FODV6ODgvWTlvbVBaSTBrRDNU?=
 =?utf-8?B?anNpUUw5TXBRWTEzZmdWSzZFdi9vZ2lMd1prZDVrYTFkQWRtWWVEWWtkL1FD?=
 =?utf-8?B?QWNzSHhLTytmaTBNQmpRdGp6aGMraFJHdVEzdGlGL3U4NlJzaUsrVjRhc1hZ?=
 =?utf-8?B?RHdFK0JLZlI4aUdHbHAwY3M0TytuY3lRWSs1RWlpeHBWSDArOUZTeWRSNCtB?=
 =?utf-8?B?Wkl2YTNvT2dvWXh0cFBFaFdnSk9NSkIzWnhjd25obXRtTE5ERUc2Ump0Wjk5?=
 =?utf-8?B?MWlCMlFTVDNWSWR5cDhrNEh3bnltUXdBUVAwZktMd0piZ0JPVHlJRW5rbmZR?=
 =?utf-8?B?L3B1QzJZWXBISWc1SjVDWTJKUTcyTnJZRGVaSThrOXBOMGVqcy9acU9XcUNR?=
 =?utf-8?B?Q09aL0E4eUI3UkNwU095MjJ3SDVyZmJYazRJRzVLNVVJbEh5dm84WVFIY2tG?=
 =?utf-8?B?Z1kvYktkUGFtUWpjbWFwRGRrb2tVYmhkNklrQXRLNmdZQlZRMmtqdmlCRWJq?=
 =?utf-8?B?QWN1b3N3dElmcjZHMUgzSmhqeVRtV2hHRUhsSm01Rjh5NXludEswNWdZdEtS?=
 =?utf-8?B?MUxQdmxGU0ZwWTRnRWJ6czc3THVYVGJIVFhSMldQNDdObnoxYzFBTnVaR2hZ?=
 =?utf-8?B?ajBHZ2FITUZtYmwzTWM5UGhIWWhyYzlzRW5LdHJtNmtBN01NTWxreTdoUEd6?=
 =?utf-8?B?eWlmanpGZ0pIVExNTTVTOXVCWkFweDUrUkwxOWlEcUJmcy9aQTAwNllDcTRu?=
 =?utf-8?B?c3hnUERzTHEyU3BFdTlLaitrVXpoM3hFMHVHRE1KQ2pJYmxmbEZ0K1Y1UllG?=
 =?utf-8?B?Vi91dXpxbjMrRmwzUStML080Z2JTdFNhQTJid3BTZUhyOXFoQThHdUZMOVFm?=
 =?utf-8?B?dW5kMHJNaWVlZTZyczRYbVpNcDZWOW56cWt1b0lJbTBFcVdCYjJzYjdXRXVh?=
 =?utf-8?B?Y21xOTYzb3Frd0VSbXNNUGdEQmRQWVFwUkNXQ1VEUFhxekJCVStDRTh5VTNW?=
 =?utf-8?B?bWlSTDhsN2h5YnFaUEEzclRieTFsQTdWbDJNaEtETkdBTnBYaVdlQmdNZ3do?=
 =?utf-8?B?cm1OaUpBRHVsRlNRTjN1cVozdzY3T21RbDErUWVXS1dvR1o0QVhVT0FES2NO?=
 =?utf-8?B?djUwZFJWNEd2Y3YwcEs4RFZRbUYxMmRUSHVMRDRuU3RCeUxBZzZNMEtjSjRV?=
 =?utf-8?B?TFpHRnFRcXN1bzMzRzVHZ3g0UlRmMlJBeWxOWFByWmUwRWwwNzcxa3E3RnJa?=
 =?utf-8?B?VGNPQ3RLQU1SbnZYLzgyenNRWmhvQ0JjRlBjeHlkNklFUU5GTG5hc2x1N0Z2?=
 =?utf-8?B?UHNVNjJsRWZobHBtRlZBSS9hajl2NzhTWE5hYkpQUFNtK3FXcnkwZ3J3ZG92?=
 =?utf-8?B?OGdwbk1XUDBGQ3pjbFc4VENKNGtEQ1NQYjk5TjhCL2FvU004WnErVitSYmdI?=
 =?utf-8?B?UEs5N2xQUjlROGJROWxUWFBLU2laMHpQSGt6YXlyczFWT3dqa3dCaXJZbFBG?=
 =?utf-8?B?VHRNN2hCR014OGN0ckRHR00wWHA2U1JEcmVvT21xclJldXFWT3RMVjIzZXQv?=
 =?utf-8?B?SVhtVlRxZTRmVGZBakVtbkdpckt5VzJwNzA5ZFdKM1hucXRpeUxETFhDbUZN?=
 =?utf-8?B?TDdLcnZwakttN3NBUmJzRWh3TTBaSDVvbVZvOWVPcjhCS1RLdjJhaGczbzZr?=
 =?utf-8?B?MFcrVnhZMkw2eTVSRENvbFpBSHlQdXA4SUdpQng5TSs0b2QrUnc4bUtyaDc2?=
 =?utf-8?B?cXpjd3RZOWMxZ05FZXJYZ0oyNFJRb0VCTzlnZWc3dEh0cVV4UVBhN1pJUHFu?=
 =?utf-8?B?TlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80425ddc-c380-4023-b971-08ddae66bf13
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2025 12:50:47.3046 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NqguK9IPWC70Q1b8WNxdVZHgvEQpNBxxal27za3YjtxWRvV7YhaTEIEJN+vNsBPHiSOfCwe9w+XZGd5B+JhLzuReSsuDMFEjw0qh/18hG08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5049
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

0000-cover-letter.patch
0001-drm-i915-Move-out-engine-related-macros-from-i915_dr.patch
0002-drm-i915-move-GEM_QUIRK_PIN_SWIZZLED_PAGES-to-i915_g.patch
