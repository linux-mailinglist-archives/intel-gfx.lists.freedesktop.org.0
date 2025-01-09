Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EE2A07464
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 12:16:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82D6410ED49;
	Thu,  9 Jan 2025 11:16:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dtkup7qt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 420DA10ED49
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2025 11:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736421368; x=1767957368;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:mime-version;
 bh=hIsbXbytzwkjiN3pUjajwrMsACcwfjRUSPxclE78XBs=;
 b=Dtkup7qtwOrlZ5NM5r3Ai4lLtIol0M0KmYm5qcKF+bkmQpfiG24xSFwN
 jel9ISzkolSZVPsKv3cu5pV0tLX6sL1BmTRc8Ydt7RSd4KZ0bYFJLNgmm
 pVe7O/7qpwjBBeZsi12PVhO3OrLO83d3uhESnyejyWGBWhO6Sf/6NGyy7
 d35HNtDdBhP4F/vsF6yxcsljXSGyvaMAs50i0VTry+llor3coGMgKEUR/
 mCwSqF3cIHQa6R5kNdthIqeI6i4jRimcSgfIwBXypxRTV4LfeSYGtrexy
 9Tq4W7FNfbkmD1T8ZkKasz5XJomepoAO5OdlGBgZ/AiNWLOsQI/+n0/zK A==;
X-CSE-ConnectionGUID: p9aZUH4QS1mPsdY3JrGiRQ==
X-CSE-MsgGUID: DZRIzg/sR26228dCO84CYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="54222017"
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208,217";a="54222017"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 03:16:07 -0800
X-CSE-ConnectionGUID: OAZ+ZBkXQGG9VVgfNaABaQ==
X-CSE-MsgGUID: R0pj60njSbGc7F24mwEQPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
 d="scan'208,217";a="104256006"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2025 03:16:07 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 9 Jan 2025 03:16:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 9 Jan 2025 03:16:06 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 9 Jan 2025 03:16:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HF1yJcHAIyyBhUBX/+2M4NGqsPoGzNZ9tktkgHFOCsyUm89L+uGrZ2za3lSt63vJlqJUB+hZgeB0rdb8817zF1a8DGZEAiyLqQD1A7E34OhT3itnGpWVKNROv39fDVeaznXpVCO77dZqAEvobSNc6W4YGCWddeBHH1gWaN9NH8z+u/byayuuSDRYlwL7TwzeMHax0i1CJSJ24cmdQ0xdyorAcGz1sZtKP1UKV7wAtskj3/30sKedKtrqaz0j0DuFm8JrGFjRRplpSWp8jXQ4fhhuraFH6Mtbg4AKpZdHml8i1d51lA484gsNRo9fXBQiRWVH7FiUBCDnZJtlFrgjgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kAqgRzKLAjSH49qhWjBORJTj9dxnB/s2aInaXVwKFH8=;
 b=Mp8qCIuXDwLIKPeLJHe5G1sw0M3iTH5T130jZN2AAOk0QvDDJ6Rp9AmMoCJpe4UhE9OALOoFeSySKm1woRSaS2SLhfrW1CbtbKKRN/ZyceZKv60v6IVOzBE7q+2dQlfaASx6u0bZo2DuS15qAO1auWXVLjEZ/vOr/bOO1eYXzfHfbB52jo9WRDruT/F54t+UK2HCf5RtzZ62C5wAAKs5QctejqJEcyvoYgOzDQ9qBJbpxi/Ed3aN37p0Vg5noHdZ2W7JXkMCEulprVwrEebXlwZlsIBgpHDVfdh2OCt2fq0Qs3UH1xxKiuUTINj35oYjpffvQ4tkOMprWhk1k/jQCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by IA0PR11MB7749.namprd11.prod.outlook.com (2603:10b6:208:442::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Thu, 9 Jan
 2025 11:16:04 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%5]) with mapi id 15.20.8314.015; Thu, 9 Jan 2025
 11:16:03 +0000
Content-Type: multipart/alternative;
 boundary="------------o0xujy7nBlykz2XhiQsRf6lm"
Message-ID: <66cfa40b-cc9b-432f-9a86-4eaa42f72fc8@intel.com>
Date: Thu, 9 Jan 2025 16:45:57 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/selftests: Correct frequency handling in RPS
 power measurement
From: "Nilawar, Badal" <badal.nilawar@intel.com>
To: <sk.anirban@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <riana.tauro@intel.com>, <anshuman.gupta@intel.com>,
 <karthik.poosa@intel.com>
References: <20250109093010.3879245-1-sk.anirban@intel.com>
 <f3c92a31-37d1-423e-a578-b8d91f17a48d@intel.com>
Content-Language: en-US
In-Reply-To: <f3c92a31-37d1-423e-a578-b8d91f17a48d@intel.com>
X-ClientProxiedBy: PN3PR01CA0188.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::20) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|IA0PR11MB7749:EE_
X-MS-Office365-Filtering-Correlation-Id: 13a0a7f1-5ad8-4367-1fb5-08dd309f0162
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YXh2SE8vOHJ0MGJiR0FJSmhKTmMvaUQ1b0lVVmZ2azBmVU9OdTBnVHNyNCto?=
 =?utf-8?B?NFFFNzBqRVFLOWxES0U3V1diZ3FzbmJVeUZjL0FZcUVvL3ZTcUVDRFpRNWQv?=
 =?utf-8?B?NXRVNHltRHYwcTJtOHZad1RFbUFuL1F3aE1HN0tYR1pEdFpFL3gxZ0FYVDhW?=
 =?utf-8?B?T1Vya0JWd044VDcxVUNuV0x5dENxZHYyR3NoanVtQ2t0TFQ5aXQ1SzRuQVZ6?=
 =?utf-8?B?NzJWWkdRRFg5TktXT3Y0R09GdlN2eER1UVhBSkVjNjF0N0ZRRytiaDk1K200?=
 =?utf-8?B?OXlnNDk1TFhtbUd3WFpZaElVVysvWExlMFI4UXhzaWR5TjNzODFybFU5WHZL?=
 =?utf-8?B?b0RLaFczOTg5eDJEa3B0V3psb2FibUN3VzY4cXJpcExJT243UW9TNUhFalV2?=
 =?utf-8?B?bGhIT3NxWFRvaDk0cFRaTTAzbmh6N3hsdlFjcVlIeXF3TXo5b2xLV1NFR0lk?=
 =?utf-8?B?T1hNNGZBQ3lnUjR3NnBMMmZWMzR0TWplSnVjVmgwYjhSc3lQZDBRby9Va1Zu?=
 =?utf-8?B?WGZQR0NvaUkvdGY2SldjMmtpNXBJb0JtZHlyMXNGU1FjR0FiczlIdzIzd2tv?=
 =?utf-8?B?Rm1rR1hqMmZ0Q0xwa2NLK1cxUTgzZE12b0tpZksyVDZCQjJwZjhNK3FCVVNu?=
 =?utf-8?B?TURWdXVESDVMNnlCaWxGYnlVNzVqcDJqVnkzR2Znd2FuMDYzb0xnZkNVc0ti?=
 =?utf-8?B?QkE4QUlpVlZZTmhmTVNubXlMZHVNMSs2Mm9zanNtL21VU3RBbFFCS2ZXaWpl?=
 =?utf-8?B?azBpMDB6N2pmaHFqVHRtTkRIak5WRldNRUtRcXVKamhySW9ZRVhUVHR3TE1y?=
 =?utf-8?B?UHZPN1FKa0g1N2hIa0VlWENRSWk3Qk14eDhUMStXa3BtcnhJejFSRUlJQm14?=
 =?utf-8?B?azZjVStnc1ZDa200cFNlQUN5aWQrUkk0aWFhM1MrRURMNmxrd1JjT0hxNGIv?=
 =?utf-8?B?ZVpsOER1MnFqV2xCU3g2VDlwNWxFZHU4UVpiKzR5ektqaURvUHZIY3k5N2JO?=
 =?utf-8?B?TW5hYlJYZjBrNjA0ZEloMGsyV1MrTThYM3pDR05tajR1NjJWM2RsWWRrdGM1?=
 =?utf-8?B?dW1uM2ZaWTM5TjNWcWMrazFpM3lBdnEyQXpsTnZWNng1LzlJZW5IVk9sS0pW?=
 =?utf-8?B?MSthYTRtMlIwdFIwODgwRjlGSGdCci9Cajg5R0MxaEFVZU1RbjAyOEtUS2hi?=
 =?utf-8?B?dGxTOE0raXB6Ykh4UUVuN1UrU3FydU5KSU1TUjU4aFVNRU1nS2tzZERWMitX?=
 =?utf-8?B?QW1hbFdPWW0wQkgvbTVHREc5c1IyY2xpdG9peUtqM2MybXlYbWpkVndhcjlS?=
 =?utf-8?B?VFdWbzduaDBkd1pMSXFSbUZPWDJSdDNTa2Raa0dNRXhuS2paSmJ0UENOMXlk?=
 =?utf-8?B?VmxIM3Y1eHpSUytCRnNCMVVYMldKQ2RwV3QyTURxT0tQMGVTWE9td3JaRU53?=
 =?utf-8?B?c1EzZ3YvMW1HVmVLd3ZHaXBMUDUrTm5sdytPazczK21RelkxdElUSDZ6d2pN?=
 =?utf-8?B?ZWtKSTNTbm1mNnVMbFI5bU9kMmY4MzRMazQrN3dValV2L2pOUXlZUHNqcm1S?=
 =?utf-8?B?aUIwdU11WDBHRjdTTTVwZ05tYkZJeU13QThuNjNsVzFLQnd2aWVCNldoQXh5?=
 =?utf-8?B?eFhRL2xHelQ3M1E1L1hZbzNqSlNJTitBTHFMWmFac0lxOXNocTFPK3ZtMHUv?=
 =?utf-8?B?VmJwSEI5VGNFdTVVaGtZeEVaVDYzV2VrWWZtT2gwL0ZFVThKdFhkNERpeDhJ?=
 =?utf-8?B?RFhnL0JJeTNZZ2M4ajNhdWtkRmp0cVM2MVpCdkt6VGRiUEpTNE1uYlpDTjc0?=
 =?utf-8?B?dkZQaHdGTG1LVjNQUFZkeWsrWHVXSEJPMUE0OUlmTVg5R3FYYXVERHNZOHc3?=
 =?utf-8?Q?8g62dR/1euMdu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Sm1seWhMV1Rod1FQZFVtL2dYQk5kN1ZXUEl1eUZRamVIQ2pnazE5bWhzZWJW?=
 =?utf-8?B?bzVDYXI5U3BVei9yaXJ0aU1YZDRnT2g4MVBkSEZBaDk0YlVhSFQ4dFNOdkJV?=
 =?utf-8?B?a01vaTR6ZHlGdXZqVHVqYmFuVkxLZ2xRZmRPTTZ3UHA0Tm5JQUsvWlJqb2pL?=
 =?utf-8?B?WTdKNTlCcDdHWmJJSEsyR3JlaVczWGtERS9zT3lWSmNzM2ZjaTdHUEMwTGxy?=
 =?utf-8?B?VXk3R1lNY0pCK2JiT3FDcG9kS1RMZzFxWEhTOWo0d3lUZmc2cGRHUHNvcTRP?=
 =?utf-8?B?RTd4SGM0bVltT1hTeVJyZzdxdmRFSUpqaENtT0dNZWdlcGFVSmxiZEx3OG1N?=
 =?utf-8?B?dmlObWlCdnB0cEo3Tjc4TE9iNm04MGt3OU51dHZkRmIwRWR2SjV6aG9MdWo3?=
 =?utf-8?B?Z0F6d2NoQWttZmVVclBJaTNRQTNtYW1QVGZaMm5URkZLUDh6SnRsODdaY1Ju?=
 =?utf-8?B?Tmdrd09zRmdjUVFRQUVPOVhLaWFBWWdockZPSVhzZVE5Qm10UGhvcyt3VnJZ?=
 =?utf-8?B?aFRrMlgyM3k3aHR3VzY2SlZLRlFkanpsT29JTnFMY0tLSUpSRlFXdmRJYW0x?=
 =?utf-8?B?UkducmNuaFB0Ni9GVUNFMk5uSjNScnNXdnZuQVpEU3BjWFBDcFFWbmFiYUsv?=
 =?utf-8?B?NUo3aTdqYnlnc1EzYmFjemdqTnVUd3NZWk11K05saEFqdDhUNmlEVWNyL1dP?=
 =?utf-8?B?NTlTUHJKbVdOa1c0bTFad2k3S2diQ0xsd1grTjhvTFg4aGhxMHRKQVdGMC9H?=
 =?utf-8?B?Vks2WVF3Y2lRZlhuOTd6WkcxU3NodDVtaDV4Zm9VTnA2a1VKRjhsZ0lCbjJi?=
 =?utf-8?B?dHpDQTJMSmRUak5NSHlKTDNIR1B5N3pyRHdIV00xTUpoUVVjUURuV3ppbnFV?=
 =?utf-8?B?Zm1qSjJSRFNhck9FSGZXRFNiaVI2dU1FUVFzYWw4b0JseExLLy90Vm5BTE9l?=
 =?utf-8?B?MGVTcm5BOXc4ZHNsdUFOWWVRQXJOV2RnWDB6cVpxakZHeURjRXZ0cHBvWUdm?=
 =?utf-8?B?RWVqYmVDZ2NIMjN4WC9JdlA5ZzFaTE1vRWVVL05DclpQTVByMzk2b2YyajVa?=
 =?utf-8?B?V2xWTmpPa2hNWXp4QVZJNGNLSll3OFJkVmxjOGZHSzRaQzMwWXRrVE9JbnlU?=
 =?utf-8?B?UGkxYWFWUEl2OVBQMWZ0aTRMbTh1YWdDOG9zdFdmcDcxRGNpem40c1gxTlVw?=
 =?utf-8?B?TjgxMTEvc3YwOGNUUEZhQ0ppcVk0cTVMSjh6V1ozazRMUHhUY0xaQ1pEZVRG?=
 =?utf-8?B?Y0sxM0hBbkVKd1AySm1rK2xRUW5URUk0N1gxVXBsNE1yY3Y5d2JzRWFQSndy?=
 =?utf-8?B?TjI1Z0d3dkw4UHdXelBIWUZBbE5JM2k2UHBMV1FKWVVKZ05xNkRvNUlHYlZj?=
 =?utf-8?B?Z1NvSHJianpjUWdtdGxBMk4rbW9VK0dzMW9KUXI0ZjlCRjVOd0h1VmFLYjZE?=
 =?utf-8?B?dTdKTTdTelNFRUxWWkhHV2JnVlpTVWNCM0NNV2NPQ2p1T1g3d3ZHY1BHNjhD?=
 =?utf-8?B?TDNZVEpCNXdrU3NrY0taSlFObExLVWduTFBmR3hLMFdwcXV5NldRN3pVcGov?=
 =?utf-8?B?WmFHem9SdUNHbm5FL1VwaSswOFVWcW5LcU1DUUdqaGtUVFlRQ0pxR24xbzcy?=
 =?utf-8?B?YnM0b2VzeVZxUHplTUN0NGFDajlDSUxHbjc2TkE3SWhvWGZpaXY5Zlp4QkZM?=
 =?utf-8?B?YVZLcUpnVzl1aVN4TFg4eTdraDVVU1ppYitHNEtDZ2FkZ1VBMWxzNHRvcTJU?=
 =?utf-8?B?V1puVHozMStRYzB2bTRqN0dwVVpsclhHcndyNjFZVkxwVmxoRmVQTUFKSlFV?=
 =?utf-8?B?dlVrOXRpdDl3ZzNuSnpIZ1BJNjFIaDY1ckQ3OXJwQmhNa29zQ2ROZFh3S0hx?=
 =?utf-8?B?VDB0Tk9jTEpKU3FPTEF3UTVtaDZKYjhZM2VhUmh1NVNoWFR6RHBQNksvcjc1?=
 =?utf-8?B?bWtRMVV4UFppbFBrM2J4M0lwRjIvZTQzd1VwUUo3QUhkMU14VG5qVHV3M2xI?=
 =?utf-8?B?SjV3WURBRTMrVmR4NUpYaUtTM2pPVUhFbVlrQmQxWWplSlUxSEdzbFBOcC9X?=
 =?utf-8?B?OWJjZzM5ZnErRDV5ODlCU1VzZWtVV3RoazRxdUpRQ1h2NnNzSnRqU0xEdmxv?=
 =?utf-8?B?NmY4TVUxdW5naG5zY3hpMDZLbjBkOVlGem1vR2FYMUhnWG5nZ3ZpczV4ZmEv?=
 =?utf-8?B?TUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 13a0a7f1-5ad8-4367-1fb5-08dd309f0162
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2025 11:16:03.8547 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S+JPVDaX0/2EFx4z4tGt9o3uRrsXYdGiFufHt5VzZTU8bCcOTPl7NAKyfb3yQJ6L2LnTztc8UJAfArK/V5XvOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7749
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

--------------o0xujy7nBlykz2XhiQsRf6lm
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 09-01-2025 15:50, Nilawar, Badal wrote:
>
>
> On 09-01-2025 15:00, sk.anirban@intel.com wrote:
>> From: Sk Anirban<sk.anirban@intel.com>
>>
>> Fix the frequency calculation by ensuring it is adjusted
>> only once during power measurement. Update live_rps_power test
>> to use the correct frequency values for logging and comparison.
>>
>> v2:
>>    - Improved frequency logging (Riana)
>>
>> Signed-off-by: Sk Anirban<sk.anirban@intel.com>
>> Reviewed-by: Riana Tauro<riana.tauro@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/selftest_rps.c | 11 ++++++-----
>>   1 file changed, 6 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
>> index c207a4fb03bf..e515d7eb628a 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
>> @@ -1126,6 +1126,7 @@ static u64 measure_power_at(struct intel_rps *rps, int *freq)
>>   {
>>   	*freq = rps_set_check(rps, *freq);
>>   	msleep(100);
>> +	*freq = intel_gpu_freq(rps, *freq);
> I am seeingrps_set_check will wait till act freq become desired freq, in case of 
> timeout act freq could be different. I think it would be good to check 
> freq returned by rps_set_check is expected freq if not then read freq 
> again after msleep.

Please ignore above comments, I got your code. You are applying freq 
multiplier before passing to measure_power. While this approach works 
fine, I recommend fixing measure_power() by using read_cagf() instead of 
intel_rps_read_actual_frequency().
Add Fixes: ac4e8560248f ("drm/i915/selftests: Add helper function 
measure_power") in commit message.

Regards,
Badal

> Regards, Badal
>
>>   	return measure_power(rps, freq);
>>   }
>>   
>> @@ -1202,13 +1203,13 @@ int live_rps_power(void *arg)
>>   
>>   		pr_info("%s: min:%llumW @ %uMHz, max:%llumW @ %uMHz\n",
>>   			engine->name,
>> -			min.power, intel_gpu_freq(rps, min.freq),
>> -			max.power, intel_gpu_freq(rps, max.freq));
>> +			min.power, min.freq,
>> +			max.power, max.freq);
>>   
>>   		if (10 * min.freq >= 9 * max.freq) {
>> -			pr_notice("Could not control frequency, ran at [%d:%uMHz, %d:%uMhz]\n",
>> -				  min.freq, intel_gpu_freq(rps, min.freq),
>> -				  max.freq, intel_gpu_freq(rps, max.freq));
>> +			pr_notice("Could not control frequency, ran at [%uMHz, %uMhz]\n",
>> +				  min.freq,
>> +				  max.freq);
>>   			continue;
>>   		}
>>   
--------------o0xujy7nBlykz2XhiQsRf6lm
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 09-01-2025 15:50, Nilawar, Badal
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:f3c92a31-37d1-423e-a578-b8d91f17a48d@intel.com">
      
      <p><br>
      </p>
      <div class="moz-cite-prefix">On 09-01-2025 15:00, <a class="moz-txt-link-abbreviated moz-txt-link-freetext" href="mailto:sk.anirban@intel.com" moz-do-not-send="true">sk.anirban@intel.com</a>
        wrote:<br>
      </div>
      <blockquote type="cite" cite="mid:20250109093010.3879245-1-sk.anirban@intel.com">
        <pre wrap="" class="moz-quote-pre">From: Sk Anirban <a class="moz-txt-link-rfc2396E" href="mailto:sk.anirban@intel.com" moz-do-not-send="true">&lt;sk.anirban@intel.com&gt;</a>

Fix the frequency calculation by ensuring it is adjusted
only once during power measurement. Update live_rps_power test
to use the correct frequency values for logging and comparison.

v2:
  - Improved frequency logging (Riana)

Signed-off-by: Sk Anirban <a class="moz-txt-link-rfc2396E" href="mailto:sk.anirban@intel.com" moz-do-not-send="true">&lt;sk.anirban@intel.com&gt;</a>
Reviewed-by: Riana Tauro <a class="moz-txt-link-rfc2396E" href="mailto:riana.tauro@intel.com" moz-do-not-send="true">&lt;riana.tauro@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index c207a4fb03bf..e515d7eb628a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -1126,6 +1126,7 @@ static u64 measure_power_at(struct intel_rps *rps, int *freq)
 {
 	*freq = rps_set_check(rps, *freq);
 	msleep(100);
+	*freq = intel_gpu_freq(rps, *freq);</pre>
      </blockquote>
      <pre>I am seeing <span style="white-space: pre-wrap">rps_set_check will wait till act freq become desired freq, in case of timeout act freq could be different.
</span><span style="white-space: pre-wrap">I think it would be good to check freq returned by r</span><span style="white-space: pre-wrap">ps_set_check is expected freq if not then read freq again after msleep.</span></pre>
    </blockquote>
    <p>Please ignore above comments, I got your code. You are applying
      freq multiplier before passing to measure_power. While this
      approach works fine, I recommend fixing measure_power() by using
      read_cagf() instead of intel_rps_read_actual_frequency().<br>
      Add Fixes: ac4e8560248f (&quot;drm/i915/selftests: Add helper function
      measure_power&quot;) in commit message.<br>
    </p>
    <p>Regards,<br>
      Badal<br>
    </p>
    <blockquote type="cite" cite="mid:f3c92a31-37d1-423e-a578-b8d91f17a48d@intel.com">
      <pre><span style="white-space: pre-wrap">

Regards,
Badal</span>

</pre>
      <blockquote type="cite" cite="mid:20250109093010.3879245-1-sk.anirban@intel.com">
        <pre wrap="" class="moz-quote-pre"> 	return measure_power(rps, freq);
 }
 
@@ -1202,13 +1203,13 @@ int live_rps_power(void *arg)
 
 		pr_info(&quot;%s: min:%llumW @ %uMHz, max:%llumW @ %uMHz\n&quot;,
 			engine-&gt;name,
-			min.power, intel_gpu_freq(rps, min.freq),
-			max.power, intel_gpu_freq(rps, max.freq));
+			min.power, min.freq,
+			max.power, max.freq);
 
 		if (10 * min.freq &gt;= 9 * max.freq) {
-			pr_notice(&quot;Could not control frequency, ran at [%d:%uMHz, %d:%uMhz]\n&quot;,
-				  min.freq, intel_gpu_freq(rps, min.freq),
-				  max.freq, intel_gpu_freq(rps, max.freq));
+			pr_notice(&quot;Could not control frequency, ran at [%uMHz, %uMhz]\n&quot;,
+				  min.freq,
+				  max.freq);
 			continue;
 		}
 
</pre>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------o0xujy7nBlykz2XhiQsRf6lm--
