Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 997EFCC185D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 09:24:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0B8610E770;
	Tue, 16 Dec 2025 08:24:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zr+Ou8Mf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A96C910E770;
 Tue, 16 Dec 2025 08:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765873481; x=1797409481;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=mPLAx34nxiFdVIeSYMp3LkBKoj8N7oeVIcc9iBO2S3g=;
 b=Zr+Ou8MfgvHglZMGbuRxGjxBggmQd6lqkw+ATFZ2oDhsK2D5FWa2kxYj
 TRGSgcxeFeouCM1TDKIMkSbV/g/2wlA8OqFFjq6+WZQ09M/HWCHAaZDD3
 VP6yWmq9EqgK7qVCV0kL7r5B0nfmj9qDyqjGESJ5EyXYcqtEDU/y4ll2R
 FEPYj52SXgbUhMfFDDL2CoRqhV8LbHSHwm3TSc8utqFdwMlDOQnUicEMr
 NQjOCrkROT3GMr2sYBAo0Jt+3xKSvlbDEXxOmO6sZ15eG5/mrR31IpNuu
 pGda+hkqFVmvicAgxJp9b+m7Wi2NGVR5liwiDQP+uhKdQ5fS88UNd+CAQ g==;
X-CSE-ConnectionGUID: 9Wigb4nPRti/GeCz2d46YQ==
X-CSE-MsgGUID: AkgcUPkSTlecXbu2emE6+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="85198495"
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208,217";a="85198495"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 00:24:40 -0800
X-CSE-ConnectionGUID: veykPqYrRdaMIyfAkjftrw==
X-CSE-MsgGUID: xhPuBCXERp6CpIXnx5BWYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; 
 d="scan'208,217";a="197707614"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 00:24:39 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 00:24:39 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 16 Dec 2025 00:24:39 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.13) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 00:24:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TNBGfBsHP2KGQOZIjhgVBOByEZeAONyBcDoziZHTokh2Rb2TyxCbKmnR4P1FW9I2YF/dPsFRlghs+4txPg+hNn8+y/scbg2gny86hbEjdssdlTxE1lwcmoEDqtkcUPZbw9bhFb6+lv6tQE2PkdyCw8WfTR51BUIC6puRuTLfrVUb0BC39nvVJLMcBUrtrBP4WsM2FXgvC0279dXIyYXNd0ojNDEhJc2a3YrEcHhJYHOIX/vfmHMj3q9O/UaHtwhY/+nnjmpoEB7kbh6jAVFTN5QXmcK7CiGSiy4QwZ9QAn/xdjOdsnfdYMrH4kkAGbuNBHrRpjcXoJyuT126BfVcVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u54Z0OlEnI+fsZAbViTPe8FEws7uvFROK8wjy28fagY=;
 b=faltN14VqMGX/RiQMthlLB23jFjmwAe3l9f3+8mgthf0wb9Wn/0BJOvAPXViYjwWEYyOUFZjDUL6hVYBwqjPbbwBIi42Aa4NNbUw91vUKa3Zp1K2buUw1v/EpBzis1GCiORMdYBfLfhgMCKpXrU8Few5hDDkrA8IEECuPKaQYsrGQzoWTZsTxQ5xPw3h8vDQn+O6w8Pk1jzrA2txu+lxzpavtkQ/gN2bDmh5MIuIQ1JdN7+dhkRw6TCQ6vpzEv8H06St1J9B9CMfhXM3AO6RfBDEF+Tfwb3N0AfBJ6mxiJCkXodKcTlpM+Cxep7NUCPUbaoNdNf3occjluH2SJ/l4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by PH0PR11MB4773.namprd11.prod.outlook.com (2603:10b6:510:33::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Tue, 16 Dec
 2025 08:24:10 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a%7]) with mapi id 15.20.9412.011; Tue, 16 Dec 2025
 08:24:10 +0000
Content-Type: multipart/alternative;
 boundary="------------L4PNqNkl7SpXkeBb6NSuseYK"
Message-ID: <817d03db-522e-435f-994d-f7a25a4b8009@intel.com>
Date: Tue, 16 Dec 2025 13:54:02 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 9/9] drm/i915/display: Add DC3CO disable handling for psr2
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Deak, Imre" <imre.deak@intel.com>
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
 <20251209113332.2770263-10-dibin.moolakadan.subrahmanian@intel.com>
 <212474a0884c026477653ee664c637506defadeb.camel@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <212474a0884c026477653ee664c637506defadeb.camel@intel.com>
X-ClientProxiedBy: MA5P287CA0153.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d7::8) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|PH0PR11MB4773:EE_
X-MS-Office365-Filtering-Correlation-Id: e3ba67bb-725a-4315-7a56-08de3c7c7cae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cXFFbm52SXRIRGkrRGNodk5vTGYvblVJVTQxVFk4QjQveFRZd0J1SnBjMC8y?=
 =?utf-8?B?T1pjbVFtMXFDanhqNkVwVC9WVENSOVFDUTBoYUk2SFVNQm1MWm9hQXdhelNI?=
 =?utf-8?B?WlgxaXlIdnB0NFZDSkhEd1NndTUrNEp0V0t1T2hxUm9KNGpPcHluMXh0STBj?=
 =?utf-8?B?Z05YNkNRZjh0WkxLYld5ZkROTGg5T3dRZ1NwZW55M04xcHplQ3RFVGc2Szcr?=
 =?utf-8?B?SGhuK1htRnNhYlQzd2YxbDhFUzA3UlREbGxlSGVrdWJvaGNrSjlLQ0tFamxX?=
 =?utf-8?B?aFRmR24reWFacEg2SkU2cWdwTHNjK1lEdkJKUlNDZitUMWt1N2NJWmJKb09W?=
 =?utf-8?B?MnJtWHZGRk1aeHM4eTBlMm5WNlF3MjR0REV5MHdFSndqb1RneDFlVVVJSmtF?=
 =?utf-8?B?MG1SS2lkZnV5SGo5TjBTZWNYSzhDa0ViRDJxMzdzR2p5RU95RTFoamUxeUJn?=
 =?utf-8?B?ZGhwOGd4Z2hoY3RtNWVteWwwSFBmRkZFWVp0WHZOajNsMFRQdk9DRlQvY254?=
 =?utf-8?B?cXdNdHdFTlpWYWt5NDBaN3VLeVFJY3BxQ1N0VFNEWVJpK280MUdBUHhKNnMw?=
 =?utf-8?B?b3NRSG5tN3JBUTVoSHVydzZMU2NxbE5ONGVEcEg1ZUFaUFFFTVJ4YklMa2tZ?=
 =?utf-8?B?dWtQTEg2RDUvenFDTUV2UmtzVmpCQ2JHb3pyeVJPK1k2YjArbnAzclhDV3Ja?=
 =?utf-8?B?SWhic0M3TFE5bnRncnE0dGdMVVdKWnBUdnpURzZXWWc5ZGxtYlJwMVpLSTRl?=
 =?utf-8?B?cm10MlYzb3pNUmxOeG9yODhTbGFqdlF3NVlvZkxEbjF0TGFDZmh3NDhNZ1VK?=
 =?utf-8?B?MW1vWlp6V1NaUHpkMjJqUm1iUjM1eGRlcmY1UEF2ZlJsMFVKNDh6UVMzTjQ2?=
 =?utf-8?B?ZlBOUUdpZXo4akxYZi9HZGVnemtLOUU4S21nWHVUcUE4UmRpdGtyaXBZbms4?=
 =?utf-8?B?UlhacjVLbDFsYWVCRWw4NVllSzhPVS9OaUN3Q25tUit5amcrZ0hqQWg1OFZZ?=
 =?utf-8?B?eUJJbjNEaWZsWG9zbTIra05kVCtqZWlnS2tEWUY1cjlEcnlnUlRDV2tXcE8x?=
 =?utf-8?B?dVRMb3NMaXMyVDNveGhlQ0p5NDczcDlNK1JMN2xuU2JBTWIzMjZhQ1NWck4r?=
 =?utf-8?B?NE9GQzJpZG1UZlg4M2l1MGdRY29DbkcvbFk0N1dQWHVDcVhsbEtFT0FwNjBI?=
 =?utf-8?B?UUozajNScTRhdUtVT2RMdzN3dGEvU01yeTJycXpzMFlIc3JleXdnNnBiMjZw?=
 =?utf-8?B?Smg5NjlpQ3BTT0VlVHN5K0lFcGRydm5ubkkvbTNQRUZ6Z3RkU0wwKytBemJj?=
 =?utf-8?B?OFIvYW83S09SUThONDlYN1h2cTNoWFQ2K0Q1eUo5dGVHMnF2VitpV0dnci9j?=
 =?utf-8?B?TnNNT3RnVXhpK2FFRENFY0JBYitqNFN0ZXRVWDNPYmJ2YzRQNmF1Rm93MFpp?=
 =?utf-8?B?NWxlem1ET05zekVoTm9HanlORk1tRS8rWldpeXh4OW1Pck5yeEI3NElkQTlH?=
 =?utf-8?B?RU94cEIrdzJ2cDBTYnNSSHQ1bVl5UUFJUlVSSEdobm1CaG5ickhZYWIrdk1B?=
 =?utf-8?B?cmZ4ejRQTFJMeUxoanRMMmlhYWw4WUZBeEFxWlB1d2hwRnZtcy9wb1ltUmZx?=
 =?utf-8?B?c3VqdGFrK0k5OE9rbXZOYWU3N1RUTFZPc2g0eDVGSys1aWJtZkhJelFZbmVX?=
 =?utf-8?B?U25FTVhSMzJwNzNmOXBxckNtc2ZyYWNZaXlCclplRGZKSXZRZ1dKaDc4QSs4?=
 =?utf-8?B?c3ZVZXRjL0tVcC8zTi82Q2FMdk9OZ3JSSnYvUSt2SW1nZU9XZE9hdHdMdisr?=
 =?utf-8?B?bklOUyt2dWMzaHFzcTBrdEZOclhwRWFNK3VUYStleE9scEI4SWFtYS9rU1Fz?=
 =?utf-8?B?Y0UrNlhiVy9QOWJRazFIeWhxVEQ3MVdiV2tleitMbCtQbjZEUjVVTWJzSHBp?=
 =?utf-8?Q?l/I0AM9abrQYu6ahpwHcvafV/wz6JxZ8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VUpBNGE3M1pjbGJUNnd4OUFUOUJrMzhaMHVIYWoxNWZudHpvTDFVWHJMYksz?=
 =?utf-8?B?aVpYRlFraVVpMFlzQVpHeU5nR3VnOGMyOU9xTmhZeWpQSjZoWUdTTkNkdlUy?=
 =?utf-8?B?M0oza0syL2V1SHlyVmtOMnMzVjk5VXBtUmJhaW04Z2tXd2tlaHhzM2UwZ0NZ?=
 =?utf-8?B?bW96eHp4SFdlc0RSQmFrb3RDdGRPR2o0MjFHdEZhZ3B0RnNvZVVmdTdGWkVl?=
 =?utf-8?B?ZytkbWZmc3RYVVBaemtZMVczSCtTZUpoQ1RMTElLbjE0VFVwVEppZXFzS3NZ?=
 =?utf-8?B?Z2JDSTF0aDlEd0NsL082ZFpPYWZNODV0eXk2SG9ZNzlPY3FmVEoyb1Z2NWIw?=
 =?utf-8?B?TTdmdmJrcHBYRElCS2xtTVpEc3pja0JXUjY1aUFuME9hbzJVZndCemVXMzNj?=
 =?utf-8?B?T0NXR1ZMakhrKzZaMHM2aGdscEpPR0pmditlVmNWQlptSFdqZTBWUkZKYm1B?=
 =?utf-8?B?MXpvWlVSYkIrSTJwNEpqZW5UNi90ZHlWY1JVQU84MU5OanhHUWlKRHlHeTEw?=
 =?utf-8?B?SUZlSFV1UmV3Q1R5U3FCZXVQajV4SmhSV21DL3NmcUFSaExMQzdSaTVWVU96?=
 =?utf-8?B?RjgwWCszZXJTYWx3S3V5ejZxUXJjVmFFcjd5NXdVMFI1NWpjNHE2b2M1OXBi?=
 =?utf-8?B?TWoxOFc4cE5iR0ZJY1Z4Z1FlckM4MEpnV2xCUTZWeDBEYjBwNjkyeE5iazE2?=
 =?utf-8?B?dlNDQ2ZwR0s3OUtkWExMQzNicXRpT3JJVlFuYkhzVmgrL0l2L1J1c29QT1Ex?=
 =?utf-8?B?c0NodlU5NjNhdi9NeW9VZW5qRFNIVlNlaDk5MERwU29Db0FwTXZHTmpNbzkz?=
 =?utf-8?B?UkdZaE5LYWxmdkZXVHFleHY2eTA3RjkzRmhHcUZaaHRaYUlsbmVsUW9ueUxV?=
 =?utf-8?B?TjZsYjRpWnB0NWgycytWZkk4RDRIdGU5SnRnbitLNU1CZ3Z2VlMyUzFwSHVa?=
 =?utf-8?B?WWNaTW5oYkxQcGRhMlo0YXNkMmlzVHF3VDlZYmFCc0orcVN5dkV6MFpnVWZ3?=
 =?utf-8?B?SFYyRkI5bHVsWUtPVm9BVTg3WjV2YzZrbmxKVHlwMlhrL1U0OWJFMTVGQ01x?=
 =?utf-8?B?aWZoNVFuZ0pzaGJTVlVyKzU5cS9wWkRRU0ZvOXo5RlhZK3dDZ090VHorWEY2?=
 =?utf-8?B?T0FadW5PdnV0NzhxS0s5bFc3S3pjQlBXVy9ZVGYvVlVOZWE4d2Ixd0NjSmVl?=
 =?utf-8?B?YTFWcktyZXFOWXhrZy9Zb0NadWl2eVNHUkdqUjV4RnRxNDhUSUZxazFrWkxR?=
 =?utf-8?B?Njh3M3NYbCtxRnlVb1pCVWpMUmtmbVVRYzlrK2ZQLzFsMjVkRWlBeDJtZFoz?=
 =?utf-8?B?a093cE14RnQ0ZklOc3BabkFKWTU0TEIzQ2EvaklSREdDYVErZjdhdnZNa0J3?=
 =?utf-8?B?RTVPc253OXJKNmplM0tYbVQ1TVIzTmlqVzRZYUlocGRJZU9BQWhxL2lLREVi?=
 =?utf-8?B?TGRuOEwzVnkxWUFJdHdiNlFJd0JIb3c2TXZzVnJia1BidityVmh1S2JqN2Na?=
 =?utf-8?B?Y2RlUHZ4SWNIVzR1ZkZQT1dvWjBOWVdJc1Y5WklFWXZBL3l2WmtvTCsweFV6?=
 =?utf-8?B?NnplSHljUXAvakFVak0vSktlaElCUkQ3SG5Sajd6Sm9wOEw0Q1ZhZ3ZCQkdM?=
 =?utf-8?B?eVQ3U0x4ay81M2tJekxkYVZLQm8vdGs4Tm01NDRSSzd2U21XSEhneTJja2Fy?=
 =?utf-8?B?S2M3Q0JnaThoWUVTOXVWMEd2WWhJMnZXV0VIeXpuUWVxVDhnUmRFdTZ0NTFo?=
 =?utf-8?B?TzI3RUZWRXR5d0oxTUZkbjAzQXB4VFFvREhlZUNWWTBlR0hHNlczbU90MzdS?=
 =?utf-8?B?elN3NE1oY2MweFNSTkFtb1o0bTZkSUxkenpHVyszdzEvNnV0M2ZVZUh6TkdJ?=
 =?utf-8?B?TmZaeE5ySEdPbVkxKytsU1Q4aGpzcWZvbFMyVEdYVFllZmF6ZDc5VW5nSU4x?=
 =?utf-8?B?SFZqREUyRVF3NGhBQ0pYVklyWEUwRnpwU2p6bGZlMzdCc3UwN0xOUTA1ZkFn?=
 =?utf-8?B?QkxFSXBiL3Fsc1ZMUGdtUTd6T1VybnRLMER2bG93bEhPZS9xeGxRZVRRVUlw?=
 =?utf-8?B?MmgrNXFDaTZ3amxXWHZhWEkyRUdxNnYvSnp2YzZVSHExYXFZMWRucnF2WWow?=
 =?utf-8?B?QjBVNVNvak8yQnpYT0VlbDIxM25jWjl1OVg3SFRrVkc0VktneGU3TVFjOXN6?=
 =?utf-8?Q?WzVVvSu43mUbkM2VXRegh6SryDxuEJHdn5/yRWF8RRKW?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e3ba67bb-725a-4315-7a56-08de3c7c7cae
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2025 08:24:10.2392 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qsKEGmA0W4+u0kdSfgj1seE5S7aFjosX8zs8WwqN2V/aRlFGfFAgCyKodmHV+Eh1hHsoGJJn5nuDeehrD//S51IBINUoLj3FGTswZ0mAOGranSaWIArb7q03XZQdxcH7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4773
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

--------------L4PNqNkl7SpXkeBb6NSuseYK
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit


On 12-12-2025 12:41, Hogander, Jouni wrote:
> On Tue, 2025-12-09 at 17:03 +0530, Dibin Moolakadan Subrahmanian wrote:
>> dc6 should be enabled instead of dc3co after  6 idle frames
>> while in psr2.(re enable part of tgl dc3co handling)
> This is for PSR and pretty much following existing (disabled) TGL DC3CO
> control. What is your idea how selection between DC6 and DC3CO will be
> done in case of LOBF?

For both LOBF and PSR dc3co will be enabled from intel_atomic_commit_tail() it self.
This patch selects DC6 after 6 idle frames for PSR.

> BR,
>
> Jouni Högander
>
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   .../drm/i915/display/intel_display_types.h    |  1 +
>>   drivers/gpu/drm/i915/display/intel_psr.c      | 78
>> ++++++++++++++++++-
>>   2 files changed, 78 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 27f69df7ee9c..6ff53cd58052 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1759,6 +1759,7 @@ struct intel_psr {
>>   	bool panel_replay_enabled;
>>   	u32 dc3co_exitline;
>>   	u32 dc3co_exit_delay;
>> +	struct delayed_work dc3co_work;
>>   	u8 entry_setup_frames;
>>   
>>   	u8 io_wake_lines;
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>> b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 18bf45455ea2..4be709d1d324 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -1157,6 +1157,78 @@ static void psr2_program_idle_frames(struct
>> intel_dp *intel_dp,
>>   		     EDP_PSR2_IDLE_FRAMES(idle_frames));
>>   }
>>   
>> +static void psr2_dc3co_disable(struct intel_dp *intel_dp)
>> +{
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +	struct i915_power_domains *power_domains = &display-
>>> power.domains;
>> +
>> +	if ((power_domains->allowed_dc_mask &
>> DC_STATE_EN_UPTO_DC3CO) != DC_STATE_EN_UPTO_DC3CO)
>> +		return;
>> +
>> +	intel_display_power_set_target_dc_state(display,
>> DC_STATE_EN_UPTO_DC6);
>> +	/* Todo restore PSR2 idle frames , ALPM control*/
>> +}
>> +
>> +static void psr2_dc3co_disable_on_exit(struct intel_dp *intel_dp)
>> +{
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +	struct i915_power_domains *power_domains = &display-
>>> power.domains;
>> +
>> +	if ((power_domains->allowed_dc_mask &
>> DC_STATE_EN_UPTO_DC3CO) != DC_STATE_EN_UPTO_DC3CO)
>> +		return;
>> +
>> +	cancel_delayed_work(&intel_dp->psr.dc3co_work);
>> +	intel_dc3co_source_unset(display, DC3CO_SOURCE_PSR2);
>> +}
>> +
>> +static void psr2_dc3co_disable_work(struct work_struct *work)
>> +{
>> +	struct intel_dp *intel_dp =
>> +		container_of(work, typeof(*intel_dp),
>> psr.dc3co_work.work);
>> +
>> +	mutex_lock(&intel_dp->psr.lock);
>> +	/* If delayed work is pending, it is not idle */
>> +	if (delayed_work_pending(&intel_dp->psr.dc3co_work))
>> +		goto unlock;
>> +	/* enable DC6 after idle frames*/
>> +	psr2_dc3co_disable(intel_dp);
>> +
>> +unlock:
>> +	mutex_unlock(&intel_dp->psr.lock);
>> +}
>> +
>> +/*
>> + * When we will be completely rely on PSR2 S/W tracking in future,
>> + * intel_psr_flush() will invalidate and flush the PSR for
>> ORIGIN_FLIP
>> + * event also therefore psr2_dc3co_flush_locked() require to be
>> changed
>> + * accordingly in future.
>> + */
>> +
>> +static void
>> +psr2_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int
>> frontbuffer_bits,
>> +			enum fb_op_origin origin)
>> +{
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +	struct i915_power_domains *power_domains = &display-
>>> power.domains;
>> +
>> +	if (!(power_domains->allowed_dc_mask &
>> DC_STATE_EN_UPTO_DC3CO))
>> +		return;
>> +
>> +	if (!intel_dp->psr.sel_update_enabled ||
>> +	    !intel_dp->psr.active)
>> +		return;
>> +	/*
>> +	 * At every frontbuffer flush flip event modified delay of
>> delayed work,
>> +	 * when delayed work schedules that means display has been
>> idle.
>> +	 */
>> +	if (!(frontbuffer_bits &
>> +	    INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe)))
>> +		return;
>> +
>> +	mod_delayed_work(display->wq.unordered, &intel_dp-
>>> psr.dc3co_work,
>> +			 intel_dp->psr.dc3co_exit_delay);
>> +}
>> +
>>   static bool intel_psr2_sel_fetch_config_valid(struct intel_dp
>> *intel_dp,
>>   					      struct
>> intel_crtc_state *crtc_state)
>>   {
>> @@ -2117,7 +2189,7 @@ static void intel_psr_exit(struct intel_dp
>> *intel_dp)
>>   		intel_de_rmw(display, TRANS_DP2_CTL(intel_dp-
>>> psr.transcoder),
>>   			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
>>   	} else if (intel_dp->psr.sel_update_enabled) {
>> -
>> +		psr2_dc3co_disable_on_exit(intel_dp);
>>   		val = intel_de_rmw(display,
>>   				   EDP_PSR2_CTL(display,
>> cpu_transcoder),
>>   				   EDP_PSR2_ENABLE, 0);
>> @@ -2259,6 +2331,7 @@ void intel_psr_disable(struct intel_dp
>> *intel_dp,
>>   
>>   	mutex_unlock(&intel_dp->psr.lock);
>>   	cancel_work_sync(&intel_dp->psr.work);
>> +	cancel_delayed_work_sync(&intel_dp->psr.dc3co_work);
>>   }
>>   
>>   /**
>> @@ -2289,6 +2362,7 @@ void intel_psr_pause(struct intel_dp *intel_dp)
>>   	mutex_unlock(&psr->lock);
>>   
>>   	cancel_work_sync(&psr->work);
>> +	cancel_delayed_work_sync(&psr->dc3co_work);
>>   }
>>   
>>   /**
>> @@ -3475,6 +3549,7 @@ void intel_psr_flush(struct intel_display
>> *display,
>>   		if (origin == ORIGIN_FLIP ||
>>   		    (origin == ORIGIN_CURSOR_UPDATE &&
>>   		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
>> +			psr2_dc3co_flush_locked(intel_dp,
>> frontbuffer_bits, origin);
>>   			goto unlock;
>>   		}
>>   
>> @@ -3533,6 +3608,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
>>   		intel_dp->psr.link_standby = connector-
>>> panel.vbt.psr.full_link;
>>   
>>   	INIT_WORK(&intel_dp->psr.work, intel_psr_work);
>> +	INIT_DELAYED_WORK(&intel_dp->psr.dc3co_work,
>> psr2_dc3co_disable_work);
>>   	mutex_init(&intel_dp->psr.lock);
>>   }
>>   
--------------L4PNqNkl7SpXkeBb6NSuseYK
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 12-12-2025 12:41, Hogander, Jouni
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:212474a0884c026477653ee664c637506defadeb.camel@intel.com">
      <pre wrap="" class="moz-quote-pre">On Tue, 2025-12-09 at 17:03 +0530, Dibin Moolakadan Subrahmanian wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">dc6 should be enabled instead of dc3co after&nbsp; 6 idle frames
while in psr2.(re enable part of tgl dc3co handling)
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
This is for PSR and pretty much following existing (disabled) TGL DC3CO
control. What is your idea how selection between DC6 and DC3CO will be
done in case of LOBF?
</pre>
    </blockquote>
    <pre>For both LOBF and PSR dc3co will be enabled from intel_atomic_commit_tail() it self.
This patch selects DC6 after 6 idle frames for PSR.</pre>
    <blockquote type="cite" cite="mid:212474a0884c026477653ee664c637506defadeb.camel@intel.com">
      <pre wrap="" class="moz-quote-pre">
BR,

Jouni Högander

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">
Signed-off-by: Dibin Moolakadan Subrahmanian
<a class="moz-txt-link-rfc2396E" href="mailto:dibin.moolakadan.subrahmanian@intel.com">&lt;dibin.moolakadan.subrahmanian@intel.com&gt;</a>
---
&nbsp;.../drm/i915/display/intel_display_types.h&nbsp;&nbsp;&nbsp; |&nbsp; 1 +
&nbsp;drivers/gpu/drm/i915/display/intel_psr.c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 78
++++++++++++++++++-
&nbsp;2 files changed, 78 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
b/drivers/gpu/drm/i915/display/intel_display_types.h
index 27f69df7ee9c..6ff53cd58052 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1759,6 +1759,7 @@ struct intel_psr {
&nbsp;	bool panel_replay_enabled;
&nbsp;	u32 dc3co_exitline;
&nbsp;	u32 dc3co_exit_delay;
+	struct delayed_work dc3co_work;
&nbsp;	u8 entry_setup_frames;
&nbsp;
&nbsp;	u8 io_wake_lines;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
b/drivers/gpu/drm/i915/display/intel_psr.c
index 18bf45455ea2..4be709d1d324 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1157,6 +1157,78 @@ static void psr2_program_idle_frames(struct
intel_dp *intel_dp,
&nbsp;		&nbsp;&nbsp;&nbsp;&nbsp; EDP_PSR2_IDLE_FRAMES(idle_frames));
&nbsp;}
&nbsp;
+static void psr2_dc3co_disable(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct i915_power_domains *power_domains = &amp;display-
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">power.domains;
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">+
+	if ((power_domains-&gt;allowed_dc_mask &amp;
DC_STATE_EN_UPTO_DC3CO) != DC_STATE_EN_UPTO_DC3CO)
+		return;
+
+	intel_display_power_set_target_dc_state(display,
DC_STATE_EN_UPTO_DC6);
+	/* Todo restore PSR2 idle frames , ALPM control*/
+}
+
+static void psr2_dc3co_disable_on_exit(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct i915_power_domains *power_domains = &amp;display-
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">power.domains;
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">+
+	if ((power_domains-&gt;allowed_dc_mask &amp;
DC_STATE_EN_UPTO_DC3CO) != DC_STATE_EN_UPTO_DC3CO)
+		return;
+
+	cancel_delayed_work(&amp;intel_dp-&gt;psr.dc3co_work);
+	intel_dc3co_source_unset(display, DC3CO_SOURCE_PSR2);
+}
+
+static void psr2_dc3co_disable_work(struct work_struct *work)
+{
+	struct intel_dp *intel_dp =
+		container_of(work, typeof(*intel_dp),
psr.dc3co_work.work);
+
+	mutex_lock(&amp;intel_dp-&gt;psr.lock);
+	/* If delayed work is pending, it is not idle */
+	if (delayed_work_pending(&amp;intel_dp-&gt;psr.dc3co_work))
+		goto unlock;
+	/* enable DC6 after idle frames*/
+	psr2_dc3co_disable(intel_dp);
+
+unlock:
+	mutex_unlock(&amp;intel_dp-&gt;psr.lock);
+}
+
+/*
+ * When we will be completely rely on PSR2 S/W tracking in future,
+ * intel_psr_flush() will invalidate and flush the PSR for
ORIGIN_FLIP
+ * event also therefore psr2_dc3co_flush_locked() require to be
changed
+ * accordingly in future.
+ */
+
+static void
+psr2_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int
frontbuffer_bits,
+			enum fb_op_origin origin)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct i915_power_domains *power_domains = &amp;display-
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">power.domains;
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">+
+	if (!(power_domains-&gt;allowed_dc_mask &amp;
DC_STATE_EN_UPTO_DC3CO))
+		return;
+
+	if (!intel_dp-&gt;psr.sel_update_enabled ||
+	&nbsp;&nbsp;&nbsp; !intel_dp-&gt;psr.active)
+		return;
+	/*
+	 * At every frontbuffer flush flip event modified delay of
delayed work,
+	 * when delayed work schedules that means display has been
idle.
+	 */
+	if (!(frontbuffer_bits &amp;
+	&nbsp;&nbsp;&nbsp; INTEL_FRONTBUFFER_ALL_MASK(intel_dp-&gt;psr.pipe)))
+		return;
+
+	mod_delayed_work(display-&gt;wq.unordered, &amp;intel_dp-
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">psr.dc3co_work,
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">+			 intel_dp-&gt;psr.dc3co_exit_delay);
+}
+
&nbsp;static bool intel_psr2_sel_fetch_config_valid(struct intel_dp
*intel_dp,
&nbsp;					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct
intel_crtc_state *crtc_state)
&nbsp;{
@@ -2117,7 +2189,7 @@ static void intel_psr_exit(struct intel_dp
*intel_dp)
&nbsp;		intel_de_rmw(display, TRANS_DP2_CTL(intel_dp-
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">psr.transcoder),
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">&nbsp;			&nbsp;&nbsp;&nbsp;&nbsp; TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
&nbsp;	} else if (intel_dp-&gt;psr.sel_update_enabled) {
-
+		psr2_dc3co_disable_on_exit(intel_dp);
&nbsp;		val = intel_de_rmw(display,
&nbsp;				&nbsp;&nbsp; EDP_PSR2_CTL(display,
cpu_transcoder),
&nbsp;				&nbsp;&nbsp; EDP_PSR2_ENABLE, 0);
@@ -2259,6 +2331,7 @@ void intel_psr_disable(struct intel_dp
*intel_dp,
&nbsp;
&nbsp;	mutex_unlock(&amp;intel_dp-&gt;psr.lock);
&nbsp;	cancel_work_sync(&amp;intel_dp-&gt;psr.work);
+	cancel_delayed_work_sync(&amp;intel_dp-&gt;psr.dc3co_work);
&nbsp;}
&nbsp;
&nbsp;/**
@@ -2289,6 +2362,7 @@ void intel_psr_pause(struct intel_dp *intel_dp)
&nbsp;	mutex_unlock(&amp;psr-&gt;lock);
&nbsp;
&nbsp;	cancel_work_sync(&amp;psr-&gt;work);
+	cancel_delayed_work_sync(&amp;psr-&gt;dc3co_work);
&nbsp;}
&nbsp;
&nbsp;/**
@@ -3475,6 +3549,7 @@ void intel_psr_flush(struct intel_display
*display,
&nbsp;		if (origin == ORIGIN_FLIP ||
&nbsp;		&nbsp;&nbsp;&nbsp; (origin == ORIGIN_CURSOR_UPDATE &amp;&amp;
&nbsp;		&nbsp;&nbsp;&nbsp;&nbsp; !intel_dp-&gt;psr.psr2_sel_fetch_enabled)) {
+			psr2_dc3co_flush_locked(intel_dp,
frontbuffer_bits, origin);
&nbsp;			goto unlock;
&nbsp;		}
&nbsp;
@@ -3533,6 +3608,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
&nbsp;		intel_dp-&gt;psr.link_standby = connector-
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">panel.vbt.psr.full_link;
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">&nbsp;
&nbsp;	INIT_WORK(&amp;intel_dp-&gt;psr.work, intel_psr_work);
+	INIT_DELAYED_WORK(&amp;intel_dp-&gt;psr.dc3co_work,
psr2_dc3co_disable_work);
&nbsp;	mutex_init(&amp;intel_dp-&gt;psr.lock);
&nbsp;}
&nbsp;
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
</pre>
    </blockquote>
  </body>
</html>

--------------L4PNqNkl7SpXkeBb6NSuseYK--
