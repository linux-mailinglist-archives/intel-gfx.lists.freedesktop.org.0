Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F54B41C79
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 12:58:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EF2410E12F;
	Wed,  3 Sep 2025 10:58:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="itHK3haL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7729010E12F;
 Wed,  3 Sep 2025 10:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756897095; x=1788433095;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=aXABID/trFbCzQqTNRmB9IEY4q/OeNvSco5HCb4xedA=;
 b=itHK3haLE21FlzPGs8Ege8kpTbFXNPHBT/BoDEhc93uguY0JB0OVH5Hg
 XPJ0FyEFLx1oaJWd1+1euyUKOnRoaUlKP9NHyiKevZOS+347+os9gbsfk
 7YMTR2uyXJOTOpqFhVXb1X9Krc0HTycqA0iA46YrZltVz+Vx9ICoIdpuM
 9gMsoTcaJNBFWPqkVnozcXsJ8zR9i5+WdoO1jBWj3qxtPx2D6C6dWIyMq
 J9ee+l/Cb3NTIvYqRb1MWzNG2EtmLS5CY1SkMayemDPQxfvuSZgByfKWx
 jowxkQnX6AgxpgUDTY/c+XiXF63LUlmSzGR2DaYgu9H4MbBMq/cxC7Pnu w==;
X-CSE-ConnectionGUID: ZMEUiSJhSmSTF1OnAMt9XQ==
X-CSE-MsgGUID: DNUiYZMOSPSyD9JVBGdQ0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59274084"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59274084"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 03:58:15 -0700
X-CSE-ConnectionGUID: zs69qHe+RPOv7EP8j3grJA==
X-CSE-MsgGUID: VXGaAbhYQwCmKk1VR1oEdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,235,1751266800"; d="scan'208";a="171702494"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 03:58:15 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 03:58:14 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 03:58:14 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.51) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 03:58:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KZ8WJw57OtYtqxgWpDqUtaZE6vwzFcgfIL4EOkcIo1P+TgN+UJNtuHgO39gYlfRUOfENSrLdOglDavqaV3he/BXlezKjCkWeCbaWoR4E+9fPGe3+y1rsqhDIWst0dtu4gMdlJwAboUzpQTWYl85+dbhfS5t5yHRbSd87IF9owIcWB77Bhm9X6/jtfr7WjNfEb5J7KHC+B4fPdwewWE+RmruDKSpEHPlf5HWtMQLVvIBDN3AXmWr3e8PjmbLRUw16BKpC88TbZnqlt4M05Iw2jfJUz86PA7QhkFhu2VghIqW1hjnCEEA5WvVgJmUTZhHnIQ/MCnX7DbrMD7Fy/81yhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SC+S/I2W9glbgINdxEAnVc1J5gBADA3XI1lHRV4NVr4=;
 b=UX/GfQjSU7cuyx+CX5S6qHoh5eq85ewNpKQ2aOUKRGyiBxXNp4VAjbfrGAN0Ru/T+R0UpBJ3bpCu8lLSBx2EQDDFbE27JMrVlDCIpk8Hy7zBA4akf5lIpKQk9wKBCavOlF0Y9do+c8sR0cYyGsW+oZOGDjAr+gXkI46Njv0IZk50WcrbGYSx9iK1HjyJhRLblPfkXoE+X4V9Deop9OSJRXG7nTJd25bxV/RxZeBUFG5hqhD3hoGJLFImpLqiJO1j/rvMTkoS4LI6jq3jTfPTZ0GPQu90sZrWQMQh/EmJUsVkRZiUgQixTx4DmdvOt94uNpiWp1jCVa60q+rLI4WdcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7049.namprd11.prod.outlook.com (2603:10b6:510:20c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Wed, 3 Sep
 2025 10:58:07 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9052.013; Wed, 3 Sep 2025
 10:58:06 +0000
Message-ID: <25b36d6f-6e63-4804-8f1c-c5f857f9a8bd@intel.com>
Date: Wed, 3 Sep 2025 16:27:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/ddi: abstract figuring out encoder name
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20250903101050.3671305-1-jani.nikula@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250903101050.3671305-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0067.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7049:EE_
X-MS-Office365-Filtering-Correlation-Id: 5390530c-f93e-44fb-48d8-08ddead8c30e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cWkvRFBQWmtwMHFVc0hSMzYwTEJnTEFkMk5VYm1yS0c2U0hoZ3FZSHdWZE02?=
 =?utf-8?B?blkxaTFxMHBmMmd0SWRNWEJxUmFMVDM4K1U2Tk5CU0xaRHZQMGRGM3JyQ3JV?=
 =?utf-8?B?eHJKN2NqTTBJbnRqbkhqMVNFbkJwQWtBQjQrcGI0Y0diTzY3VTJsTEpaTG9m?=
 =?utf-8?B?ODlqN0ZxVmdlcXhYVUZuN2h0cGN5NElYMFQyczUzSFZXQzJHQVlaNGc4SnVy?=
 =?utf-8?B?bldKOXNDcWVYeWJlRjJwRmFmUHllR3puWC80a0s0Skw0d3hGMFI4Q0UxOXg5?=
 =?utf-8?B?RVR0U0RtNnIwanNxR3pnRElpRWwyZk9sd2tnWFcrSTR5UFhad01UNkdRQVc2?=
 =?utf-8?B?Z0V6RFp6Tkp0K1pPNkR2Y2NWdEZRN3d6MlZTZW1lY2pVajhGNFdQMzlQQjBt?=
 =?utf-8?B?dXA3K21KcmE3WlZvN1JPZTRuTFRZMXI0WFdHMG10YzU5V2hJTmJ5eHp0Wksr?=
 =?utf-8?B?S08vejYyUTI5emd5NUlFay9XSXlnZzNrWis1ZGZzUnlFT0RnMG1Ham44a2JB?=
 =?utf-8?B?RFJTQk1YTjBNY3dhUUJzSG84MFZSNDdCNWZnbWNTQWJFVnFMMVFacWNvUXJr?=
 =?utf-8?B?RVhyWTZ1NTR5eGlRbzFvNng1bWFGN0VBMXQ2SStOMmZicFZ2ZFkwRFJ5MVNs?=
 =?utf-8?B?TUNGb3g1L3BvaDhVNUlKZkcyVWRncWk2cUNjOGtQZXc5R2JYcXg4WktPeTIw?=
 =?utf-8?B?UGswUFRFd21rWmV3aWZabElzeFpuUTQ5bTJOelhUZmMxWWMwNTVLNGhqNlBy?=
 =?utf-8?B?Z3N1ZUJkUkZjcVRsb3dvMFRCbzVPVUJZWjRUOHBrRFF5ekFRVTlzZGplSnVl?=
 =?utf-8?B?aU1CYzJHWHAvZjRHSjhHNnFqY2NWYmkwRnhOVHFMKzMrc3RQbWU4STd4R0RL?=
 =?utf-8?B?bTF1K2FCcndFRWx0QWNxbEV1RUJ1ejVBbjM0UUVZZVNKQTRIcHdlK0ZrNUlT?=
 =?utf-8?B?eEoyb3B0c3dJM3lLNFBjMjljMjk5NWRxb3d5a2tyVVdueXM2SDJXQ3IvSUkx?=
 =?utf-8?B?Um8zNXRvQWNUem5yQTVaak9oY3o0YVlqbU5SZGlnUEt2TTBvclVWMExUMWhq?=
 =?utf-8?B?TnhsQ3dtYjJITWt2eDJqc3k0SFlMZjFYbzAyV2pTQVZKSmhPQm9QTDNVQXZz?=
 =?utf-8?B?ZFVGWHdVd0RwQ1hxQ3lYYjU1QVBoUWtGV1I0ODhUZllQVVZUWXk4N1VWRWFx?=
 =?utf-8?B?MW5hZlFwLzNkYzlQaXl6R1VsVVBaZjY2ODBDUTJSZm5vNmNERElaU1ZaTVlC?=
 =?utf-8?B?SWU4YnZNNTVJSHR5clkxaEZyZ3g4c1hyV1pRYUxPbyszT0pFUjJEaFRhWm9z?=
 =?utf-8?B?bFZjT3NFUUQxTVpaNnFnK2NaL05ZenVUQXIwcVlKTnFzano2NW9pbmM0WTBr?=
 =?utf-8?B?L2IrWmZzUU5qN05FbGdnK21jc2I1aHMzQThYd2xIMFRiSUhJL0I2OEV6VGpY?=
 =?utf-8?B?MjVadTVCQ3N1ZDR2aG5kR3RLbU9YemNWOUVEUXlmSDRYZUcveTR4RklUQTJv?=
 =?utf-8?B?U2dESGlPaUMyTmdLVjg4K1ZJQkQ2ODRmU1phYWZMU3RhZTNuTHduTUxaMElQ?=
 =?utf-8?B?RWJlcENKTENYbWpXSkZ0Wk9JejNpMXBMZFo2cXR2Y2RMMUNaclBRd3NTNHhL?=
 =?utf-8?B?bkhvS24yRUx6eDhVMkkwLytCa3VGTlAzbnlndG9HYWRsWGZ4QTdmV1NkQnl1?=
 =?utf-8?B?a2Vjc2wxamJlV2dNL2RYaDZNcHZiUEpTVW5Xb045NnlaZHJML2VwcmNBWTZx?=
 =?utf-8?B?VHF3c0JVYTZZaUlxblo1UDVoQ2s2QU1CUjV5a3dzaE4zMzFVR1pzYVhoYzVk?=
 =?utf-8?B?elpBZUozclZPVFpQeDZiem9SQ1lHRHVkWDZKbFBSSFdteFlsUGlBYU9mZ2tu?=
 =?utf-8?B?RitVb3YvYnM5RDgwVFlHM0hTaURwUjBvc3d1OUs1dStZcHFpRFZpRG1vS2ZR?=
 =?utf-8?Q?9xKD0lzhivY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eG9vS1pHbytPbXpyeHpXL1NEVHdnSTM0QlpKVW14UU1CcUNjbDIvRUg4OWVE?=
 =?utf-8?B?eGJHQm5Ea2VKbWM3MFRSRjkwR0RmKzNXaXI4RlZKL0JNQVlTb1ZNenV2K2dL?=
 =?utf-8?B?VXFEczhkcW5oOXNjRnVNRGRmUHU2eEdFaTdZcXJKOVZnL0dtRWloZ2xSRlJj?=
 =?utf-8?B?eW5LYkFXL1JUcjhxbzFmT0xXVHB1UVRGNWN2eVQ0Sk9TZjdwSFh0REtPRlFt?=
 =?utf-8?B?dFNLYjV1UjlEVkErMDEyMWQ2KzlQdWJNZ3dSTEdlUHQ2UjYzblRoMHVMc1RW?=
 =?utf-8?B?WkZ5NzF3OXhJZ3g3NEQvU3JHcUZLZjhkbEdGZnJzTEUxUlFzVHF1QnRnQWJZ?=
 =?utf-8?B?RVhlbFlDN2RzenRWVzZkeUlXNTNlZi9qMm9tcXBPM25QbUNuSWRMN3dhb3BD?=
 =?utf-8?B?cyttWGJFWGFQY2U0N2c2K0F2YlNEeSsxYi9aemEzNE5FVEJER05PTnJFaHhv?=
 =?utf-8?B?RVc3Tk5GU1RwY3VCUTdmckZVOEdIRXYzMmZmVFpKWFhMMGQvMm5RcjBES1RO?=
 =?utf-8?B?REtnSXlUanVrc1ZuL0tsTlliUEtpNHBrU0hUVm9XZzRuS0QyZWpaa3VITWR0?=
 =?utf-8?B?WGlJQ245QUNzZ2JtOHB4OHdaQ2dDRTQyazQ5Y0diWmNDa3E4ZXBOenRVcUNN?=
 =?utf-8?B?YVJzZjZ6ZSt2cXpaMHZ4Rk1DQXdQUVFuRHR2T2cvTzRRSkE0M0YyNThaYkw1?=
 =?utf-8?B?OFdyVXlHL3U1L1k2Y2Q1aVNJUmxvWUR0RzV4WUxUajJmcTJDaWFRR0xFSTQ2?=
 =?utf-8?B?c1pVcGFBUXJCa0ZDZkxVSk5LT0xMckg3Njl5MVlLbTlTSkdCY1hPQm5UM3ND?=
 =?utf-8?B?cTBCYUdadjBMajYzN2ZGTFgyN3lEU0FuSHNmTWg2UU5MbDkxUExOODFZVGcv?=
 =?utf-8?B?YlBJMzNWLzlvT1NLd2RFVDNUK2RRajFoZ3hzcXdWT2NtQkNNNGNjOTJzOFBa?=
 =?utf-8?B?Rk5yMUx0YVpBblRvdENGTXNjWWozNnpDc0F0dVB2bzNVaHhxckVKekEwNHYw?=
 =?utf-8?B?dzVLNmh5NjFxd04zYmRpRW1Sak43WE80ZUZjYkFNcHp4V1VkSzkrVmFxNXQv?=
 =?utf-8?B?dTNBRDhZSzVaeUxIcFJ1U1JaQ1UxaWcybWpIQzFXa0o2dFRKeGxIWDlVeGZK?=
 =?utf-8?B?Yk5SM2p4R1pRSFMvTXVnby9IY0Y4MlprRFVJbnFrZkt1R1ZVdWVIdHVkUDFJ?=
 =?utf-8?B?RElrWktUd1BnTk1UbUFvaTV5Vnhvdjg5WDIrZzREZVNiYjRTd09pY09KVWMw?=
 =?utf-8?B?elJDYUhCZUZOWUc5OEZ2T1RGYXZrckxlaWhnTVgwQ2tqUWo5MEk0ZnBJdnU4?=
 =?utf-8?B?M0ZMQWJRdEFpZlppVFpGeWhjVVVYU2Fsa1BwcFAxQmVUUWhFN2oxWi9GbERM?=
 =?utf-8?B?NkVxMXo1Z2s1REMramtVdlFtU3hseW9ONlJrSXk1ckd3YlRQYjY5NlVlV3N0?=
 =?utf-8?B?Q09sb3BwQkhRV2l6SWhmWlViamd3bXJjZkhqQ1k3NVFvUjB4aTRlK2ZKaG9z?=
 =?utf-8?B?MGZldzFpMUVrOEVhczlScExWNmpqdzBkUncrcDZEd3l2aUNCN051dUlpYm55?=
 =?utf-8?B?TXlWTGIycjN2ZHErMFhRNXQxUXZxcWJsZUtKTGQxeWk4cU1OWVhHUXZORmpx?=
 =?utf-8?B?N3lnYXk2amJaNmhsN0RHNVdOdEl1SGpQdEZnekVwUzdQS095OGRnK2JRY0l3?=
 =?utf-8?B?SndVVjVzdUkzNGE4VFBWcFVRMEtpZW1lREpqZkZ1ZzlJY3V2VHBvSklsOE5x?=
 =?utf-8?B?UmdtaGR6bWM1TXlzMkV0N3dZWkhBRmlibkgrL2N3UUwyYkRBbktaeU1lQ2xG?=
 =?utf-8?B?TTRNQU9rTjlxUnkxdEhyQ3NNNmpnWkRJZ2lkZitjaDJyRGtuUWJvRk1lRlZD?=
 =?utf-8?B?MEl6NG1RRTc1RU9EQTJLdUNGUUVlMHFzMTgvMnRXWEhhaENkWVptSmRObWFx?=
 =?utf-8?B?ajVCbVNhUWhUZGN2WmJVWk1hRjdFcEtnM3RuN2pqYmdDYXZNT091Y3NqejZN?=
 =?utf-8?B?SktKdDExWVdpNnNieis1dXFVTmxwbytXN1FQQVltREJsVHpjQW11dWNLc3BF?=
 =?utf-8?B?K1gxWUtXRDliMDZlVk82R2ZXdk9jazd5WjZSeFpyRVJnZmtiaXozUlo0eUNW?=
 =?utf-8?B?NHZSNjJ2bVlWcUNqRHJzTW5qVmJ0dHZvUjBXdEFNN0hsS3RJS0hLazNVb0pZ?=
 =?utf-8?B?Tnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5390530c-f93e-44fb-48d8-08ddead8c30e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2025 10:58:06.6208 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LjvTrsNDG8ss4VC4kreWt6VBlO56aO6N0HGaOHZ8iFJkt2aAXp9JpO4zmhp2DJENRLBApPj3/qWyT/LM4SS6ZtWvY0BGfsgQGhUKXTD5eeg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7049
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


On 9/3/2025 3:40 PM, Jani Nikula wrote:
> The encoder name deduction has become a bit cumbersome within
> intel_ddi_init(). Split it out to a separate function to declutter
> intel_ddi_init(), even if that means having to use a temp seq buffer for
> the name.
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_ddi.c | 69 +++++++++++++-----------
>   1 file changed, 38 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 4e4ea3a0ff83..68e049ad042b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -26,6 +26,7 @@
>    */
>   
>   #include <linux/iopoll.h>
> +#include <linux/seq_buf.h>
>   #include <linux/string_helpers.h>
>   
>   #include <drm/display/drm_dp_helper.h>
> @@ -5077,11 +5078,45 @@ static bool port_in_use(struct intel_display *display, enum port port)
>   	return false;
>   }
>   
> +static const char *intel_ddi_encoder_name(struct intel_display *display,
> +					  enum port port, enum phy phy,
> +					  struct seq_buf *s)
> +{
> +	if (DISPLAY_VER(display) >= 13 && port >= PORT_D_XELPD) {
> +		seq_buf_printf(s, "DDI %c/PHY %c",
> +			       port_name(port - PORT_D_XELPD + PORT_D),
> +			       phy_name(phy));
> +	} else if (DISPLAY_VER(display) >= 12) {
> +		enum tc_port tc_port = intel_port_to_tc(display, port);
> +
> +		seq_buf_printf(s, "DDI %s%c/PHY %s%c",
> +			       port >= PORT_TC1 ? "TC" : "",
> +			       port >= PORT_TC1 ? port_tc_name(port) : port_name(port),
> +			       tc_port != TC_PORT_NONE ? "TC" : "",
> +			       tc_port != TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
> +	} else if (DISPLAY_VER(display) >= 11) {
> +		enum tc_port tc_port = intel_port_to_tc(display, port);
> +
> +		seq_buf_printf(s, "DDI %c%s/PHY %s%c",
> +			       port_name(port),
> +			       port >= PORT_C ? " (TC)" : "",
> +			       tc_port != TC_PORT_NONE ? "TC" : "",
> +			       tc_port != TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
> +	} else {
> +		seq_buf_printf(s, "DDI %c/PHY %c", port_name(port),  phy_name(phy));
> +	}
> +
> +	drm_WARN_ON(display->drm, seq_buf_has_overflowed(s));
> +
> +	return seq_buf_str(s);
> +}
> +
>   void intel_ddi_init(struct intel_display *display,
>   		    const struct intel_bios_encoder_data *devdata)
>   {
>   	struct intel_digital_port *dig_port;
>   	struct intel_encoder *encoder;
> +	DECLARE_SEQ_BUF(encoder_name, 20);
>   	bool init_hdmi, init_dp;
>   	enum port port;
>   	enum phy phy;
> @@ -5166,37 +5201,9 @@ void intel_ddi_init(struct intel_display *display,
>   	encoder = &dig_port->base;
>   	encoder->devdata = devdata;
>   
> -	if (DISPLAY_VER(display) >= 13 && port >= PORT_D_XELPD) {
> -		drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
> -				 DRM_MODE_ENCODER_TMDS,
> -				 "DDI %c/PHY %c",
> -				 port_name(port - PORT_D_XELPD + PORT_D),
> -				 phy_name(phy));
> -	} else if (DISPLAY_VER(display) >= 12) {
> -		enum tc_port tc_port = intel_port_to_tc(display, port);
> -
> -		drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
> -				 DRM_MODE_ENCODER_TMDS,
> -				 "DDI %s%c/PHY %s%c",
> -				 port >= PORT_TC1 ? "TC" : "",
> -				 port >= PORT_TC1 ? port_tc_name(port) : port_name(port),
> -				 tc_port != TC_PORT_NONE ? "TC" : "",
> -				 tc_port != TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
> -	} else if (DISPLAY_VER(display) >= 11) {
> -		enum tc_port tc_port = intel_port_to_tc(display, port);
> -
> -		drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
> -				 DRM_MODE_ENCODER_TMDS,
> -				 "DDI %c%s/PHY %s%c",
> -				 port_name(port),
> -				 port >= PORT_C ? " (TC)" : "",
> -				 tc_port != TC_PORT_NONE ? "TC" : "",
> -				 tc_port != TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
> -	} else {
> -		drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
> -				 DRM_MODE_ENCODER_TMDS,
> -				 "DDI %c/PHY %c", port_name(port), phy_name(phy));
> -	}
> +	drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
> +			 DRM_MODE_ENCODER_TMDS, "%s",
> +			 intel_ddi_encoder_name(display, port, phy, &encoder_name));
>   
>   	intel_encoder_link_check_init(encoder, intel_ddi_link_check);
>   
