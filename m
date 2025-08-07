Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51296B1D21D
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 07:42:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9E4510E328;
	Thu,  7 Aug 2025 05:42:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XTDqEq4F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C561710E328
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 05:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754545349; x=1786081349;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NyHPeuu7QE4yBy8SuD1/Bbau8Uo2SIIwvAC/z7+Rv6k=;
 b=XTDqEq4Fs23Y1RIgmpk/TL00QdZLaAzPyKkDx7C3P43Uvs1FiHzOQXAI
 eMpbN+YtNlj9G6QI9TS9vMUDQ4HZ2NLi938+G/uUEnmFfcSMlD9OaVhND
 WxtCdwV26EJH8Z07l94VZlkVYQ2xTNS83VYz2BsZMPKRIc+YAX2g7ciuY
 8/MPI7WNrKeLVBtVcy2EHuTNPATnGF8ltVHgDlBnxvd7UVx6hZKd2a+hf
 UM8/P2F9Ozy/tOY43RgeVyXOlvxqUfbxb5TKJhx+qBxx0xA705ySSDdxB
 Q/3Dk/S28NnhzzS0R9WroPk8PSciUnoDkRuTvyI8k3Qse2XMXO5bQvY35 A==;
X-CSE-ConnectionGUID: Mo/eDWOmSqqlwI1hmCh4Gg==
X-CSE-MsgGUID: 655ue8HiTlGTljaD9R1tuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="68321828"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="68321828"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 22:42:28 -0700
X-CSE-ConnectionGUID: WVowsjqcQRm4cMpjQL9ezg==
X-CSE-MsgGUID: xMnXIs3XTPaZCcRX3zOFGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="165332859"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 22:42:28 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 22:42:27 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 6 Aug 2025 22:42:27 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.66)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 22:42:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jZQtpJDVIbGBJiQEYCUz6QNoncSM4e4BfCqIWGtJRq77KJ+ipjN4jgXKIpwYHtmuI/Lr+vVIlIgNgJeOKNKunqLAk6OIbgZmnoTykqUIXXi+DONWQyF3g2PZ/BnAx4SrV3DHTiLg0jdYN4ldZMuKSstcw2Oyf7PrYEh6W4seT6LMBPOsV4o9hvqLYNhxv1cFxdWA3aYCUJR3/GTvM2M4Am/vUqc4LDVHK7/1jo9dt+/j2Zp40gKSuoKayyUAgpHiPE/KZFUtpPJ21rr+9BVHFJja1Jui95EwUtreRZjPWkZ2osWu/uBPu1bOAziU+rDuV2erm0NfytdueEQm4OrYrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VfnE8L8npI+9rA3MqFSGYrZZCSOzc6gHBEgKUdP4TNo=;
 b=wdmGM7DVnKAlYwhtb2JldhnFaqM1xttw5bmrzSdBPBsAvidY15Ek+vAuPuLUtqYicaG89G+0Q/i5kM3lAGvzIKYdwxY8PBuaIm9eL/tiLC6ukq8565SYK5DWYj/bbz9zE4XhUIVDwfinr2DdcEyEHU2KbiNRKo6PjCRBUfR+9aGGh9L5ZG420bvnR5z0oqwlWzSjzgO7E3Ld3mTShTTULiT9op2LRRyxp1rsohtcQpXTgORGyDPh/J9gXS/DROvNuWUCVAzVzVpSu+ie2lEqdcigxliJB4BWphwtnj7BUDLEpu9aTVQ6GbzcQnH3fZIrnqSDE5RXcYaMKiaidpnQQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6391.namprd11.prod.outlook.com (2603:10b6:930:38::21)
 by MW4PR11MB7080.namprd11.prod.outlook.com (2603:10b6:303:21a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Thu, 7 Aug
 2025 05:42:25 +0000
Received: from CY5PR11MB6391.namprd11.prod.outlook.com
 ([fe80::d1d5:6fa6:9a2d:92e2]) by CY5PR11MB6391.namprd11.prod.outlook.com
 ([fe80::d1d5:6fa6:9a2d:92e2%7]) with mapi id 15.20.8989.020; Thu, 7 Aug 2025
 05:42:25 +0000
Message-ID: <c55b4d1c-0b89-47c0-ae76-153aa67d327c@intel.com>
Date: Wed, 6 Aug 2025 22:42:23 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/guc: Include the GuC registers in the error
 state
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20250804233523.1613363-2-daniele.ceraolospurio@intel.com>
Content-Language: en-US
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20250804233523.1613363-2-daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR2101CA0010.namprd21.prod.outlook.com
 (2603:10b6:302:1::23) To CY5PR11MB6391.namprd11.prod.outlook.com
 (2603:10b6:930:38::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6391:EE_|MW4PR11MB7080:EE_
X-MS-Office365-Filtering-Correlation-Id: d3de5299-d875-4e75-1a21-08ddd5753016
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a3VtM3VVNjZDK3haUktZRnlheFh5dTA3NldSbEx2N1NmajBrT0ZKb2doaVQr?=
 =?utf-8?B?UzlmVUkzNDBRZzRXMUtxUVBSd2oyUkV1WVZvdU5VZURWVCtqdlkzUURGYnFn?=
 =?utf-8?B?cGo3eUlCY0RZM1IwWXRqMFhMbVllWTVVVzhURUxqdXFzQUtwS3oyT25zVmp5?=
 =?utf-8?B?RnpYdEdMQjh5ZTFDNng0THNYeVBWbnlKQWRmTjlDM3pCUndaYkNtQkZhOHVC?=
 =?utf-8?B?VWVGMSsrYjg1L0RuR3Z5Wkk3bkI1QmhLelYzYnVXOWpIWDRCNGJWbjU3MndN?=
 =?utf-8?B?cjc2THJ1ZG0wSGJ5VEZ0N2lOc3krYzUrbGFsZzQ3S3dLME1JbmNNdzFXYW5Y?=
 =?utf-8?B?UFBPRG9TcTVod1FlMjdwQTlidXkwbWZQRm4yL2JMbjUyYm9NSFRrZ3BUUmt1?=
 =?utf-8?B?dTh0VllyUGhoSTVkMW8vYkpaRTVlWXc1THgrVXdEdGQ0Z0tLMm5aZmZjTUNC?=
 =?utf-8?B?MDYxQ2JjSTgxaXZnUktUMUdsWWcyZEJZM2VLc1ZUS0lQTHMxaDhYbGtPbS9L?=
 =?utf-8?B?VjNzNEV6a3pvTlBpajIvVVhCeWtkNTMvdjFTZ2lEUjFsV1Q5MjV1aWNYbWhk?=
 =?utf-8?B?YUQrMnZ2blNnSURUYldKa1pMVjU2VERCVFdzbjNEQUVzU00yU2VwOHo0MGFF?=
 =?utf-8?B?TUFZZXIwTVpMUzJrOHBWeWVZU05mcXZSZDczTHJrb3l2L2pmbWJuRHVWVFVB?=
 =?utf-8?B?THF0SE1pZmNCMVRGWHkrZ2lkSGxudEVaMW9kRDdYRTAweWtRaDNnOGVzSmtn?=
 =?utf-8?B?MDM4WDhPcmI0cHNidlduSXVxcmNYU1JLUit1OWQ0WHNGS2RnTDdSaS9SZ2xH?=
 =?utf-8?B?K2gzUGhWakQvaXIwZUF1YlRzNUdOR0hSRnQ2Uk1CZll0RUlsUFVhSk9rUzRS?=
 =?utf-8?B?U0lBcUw4cU1kQmhDYUw2a0llK3FVNnZFNmY1TWEyc0lhbU5Ia1NSWW10akJH?=
 =?utf-8?B?TEJkbXp2RmlFRzFTR2pNR1BDU21XUUZDcnRrTFNCaDlLQlJkL2M5c0pNQ1R1?=
 =?utf-8?B?aitCaHlldllsd0ZlMVBJL2hTdFNUNldoamhKTHNVM1pRVmQybThPYm9GbElB?=
 =?utf-8?B?Q0xwdW4yMjI4UDEzb1pZaWZaLzRESlFWdlBISlh5bFNPK2x6VGs5OWtvMmRY?=
 =?utf-8?B?T251aFRRKzBHK0dNUGx1WnZNTXg2cXpTWiswWDc1WGZQUml1VDNIMWNCcmNy?=
 =?utf-8?B?VWRwMXI5VDc4d1ppZGdheDlIRjNNMFJneWtuVWJVTXkzVGxkOFN1dXJSaWhi?=
 =?utf-8?B?OHprbXBjT2R1c1cyTExvOVlRR0ZieDU4bE9XdW16TUQ0bjcwWXFyNytUdTc0?=
 =?utf-8?B?Vm04dzZWbWkwZ0EvRGFPMmhmNW5lbTBSOGJjVUdmazluVEtQcnFRKzkwMmt6?=
 =?utf-8?B?d0hRUUhLUFB2OXg5cGs5UzFVVHN6RitXUU5TYm0zamV3ckQ5dTBiQjBFeEor?=
 =?utf-8?B?OHBqcXRwRHRnM1JFcmkvWVpjUmxMZm1raHMzZjkzbjFpWDdSR01MUG9oOEhW?=
 =?utf-8?B?SWJNdnVxUk5oR3k1UTEvQ3plRU5UaDlRdnlNckc3ZEpNODNqM2hpUSs5cWZp?=
 =?utf-8?B?bFhYQXBxc0FwbU12Z0RGMzlLa0FEWWRUdHIxazBYTnNTMlJoc0ZaYlYrR1g0?=
 =?utf-8?B?N0JOT3VhY2d6Ni9RY0JFNlFpa2V0dnc1YlFleVgwZnE1MGpjcXpZUVlpRWxN?=
 =?utf-8?B?d09mK2ZUN2RpWmtubGtRMkFGQXZvbzlVNWhGL21rZzcxMGgyN2Q1VGdRS0FL?=
 =?utf-8?B?UGkwcUVUYU5RU0V1UEUyS0ZieUhmWXpnNm91cVVEdnQ4M3NFeUo2UkVBL1Ey?=
 =?utf-8?B?c1YxMktBRnJIYkxlM2lQR3c3aUhlQkFSdlI2TW5MTG5KVitUbmNoMCt4Zzdl?=
 =?utf-8?B?M1VERWdwZUV4V2ZDYVRhTFdOeU1pZWdzTldCWUhBdWxHYVppQXNUNy9SZ2JF?=
 =?utf-8?Q?tC4IbrAcWtk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6391.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NkwxbEZ2blBIbUpGOWJPWGM2Y2xyRUlYemx4Z0oweGlVUUJwd0NySXVsemQ4?=
 =?utf-8?B?bDlUbkoyN2RtL3poRU5kdlNNdVVUTVRYQTB2d2cxczJmRU1ybWxSQXJwbmpY?=
 =?utf-8?B?Wll2VEtzbHcxczhwSG1rTGVBSDZJSVBTbUR2WW52WnlVV2pIUEYrTzhMVks5?=
 =?utf-8?B?V2VMbjFTaitQQ1c3ei9xRjQwQlgzQkFOVGRIYjBiZkluQklBUkwxNWVIdVVF?=
 =?utf-8?B?Uld0L1dqc1FrSFYvczYwM2xoajYxcm9qdmY1YmIzSUJKSzN1dVErNkxiOXJH?=
 =?utf-8?B?ZjdXOHBYMGRab28wTUYydVprL09WSStBT05hMjRiRjg3ajJxY3luc0djTHJH?=
 =?utf-8?B?aXVhdUMrNmJoaEFHNktISWdWNmxqQ29RYzV5SEt1R09oRXVuWi9IV0dLMEFR?=
 =?utf-8?B?OVhtcjlPSXNOa2cwRlJFam0vTGdiZWJ1NnlrMmZmMENBbllyalhTVFpnVnJn?=
 =?utf-8?B?WXFzNGtXRDNic2Rnc1pPUlYvbGZlcXdVWGpvK1VkQnhUelpOVnF1WFVSSVY5?=
 =?utf-8?B?cWFVM0c5UHNlKzhLQVdSbGdxQ1F0UWdwcDI2UTZtZ3l6Vk9yTldNT3BVRUt0?=
 =?utf-8?B?LzRLQXJiZXh1UWdUSUJMaDdENCs0WVBSdUVEVlNoOTlYWXhTdHVCRkdENFpZ?=
 =?utf-8?B?S0E4NUZoQjdZdEFLT0p0S09xSkFMd1BKN29XMmtTbVVSZXZ2L0tnU25oZlNX?=
 =?utf-8?B?a0NGbFhjMzJFeldRQ1hMMm1wazBxZEN6ODJmai9qUzJBYVU5THFoc3RxK2pU?=
 =?utf-8?B?WUViNnFPc3A3ZXNoSXhHM0hHZGozT0syNHF6WGNvREdwQkRNRUtvZkZIMlRs?=
 =?utf-8?B?QWw3a05TckRmRHNscExkcEh0bzNPWi93OHdEMW04RDV0aU8zMmc4QmVFS3Zp?=
 =?utf-8?B?OXphQmxvMU41UHJDZjdyK3hHaFhkTWUwd1FLWURCQmZvNFFIS3JZMnl3OGIx?=
 =?utf-8?B?THhJd2Q0TVdIakZoKzNBZkJZa0tNc0ZMK0R6YmE5OVJNeE9wa21oeFB3L3o3?=
 =?utf-8?B?UFZmZjkvWFIwcVd3dE5LT3JON09zSTJFTTVJTU0vTEpzbm5UMmJReUlnNnNm?=
 =?utf-8?B?OUxtOFlFU3AxVVN3ZHg2Wk1nRU82Y0FBUHQ3S1IyQzRnTE4rQ0NnOGh2cTlG?=
 =?utf-8?B?QmlxcVJoaEpZM01IdnlZUHMwMEtsY0Yxa0N1enZGdW11YnRrVHFZK2pWRHM2?=
 =?utf-8?B?bzhMNVZjS2ZZUm1OZVhIa0YxTmcrcFNOZ3ZSbVpwdTR1Q3ZUUFBGL2dKMURt?=
 =?utf-8?B?STQ5QyttL3FMV3c1TkZxTEZndGR6UjZSNDdHWXZJK1JWS0N6Y3Jia2Z5OFJ6?=
 =?utf-8?B?N3ltcW9MUGxRTklvRUs0dlFYU3F1Ly9NS3JITUhLRVRJUTMxZVUwckk1TW10?=
 =?utf-8?B?YVBPVk5UUGgremR1NEhETFdoSU5wbS9IUUUzY3BxMHdTQUF4cTRJMUdWUVBW?=
 =?utf-8?B?SFNMQm1OVHRwYTJIcmY0SkpTNnFacjFMVE8zM0tLTkw1V0NuOFlycndGbEZo?=
 =?utf-8?B?SVZUaVVNNGorWmhHbytMMDk4WmpUdmhsaG03c3RFa1BMQkxrOUN0SkdoTDZs?=
 =?utf-8?B?d0FRWVpGV3RTUmhZbzdGMUkrSE9qYmkzNlI4VjFNV2JhUlhEeFFqVGFMTTBa?=
 =?utf-8?B?WjNEcDA3N0RlbW04NXdiZ29LL3RybnhkNHRFZGF2ZW5mR1VyN3FrUFdkeGRa?=
 =?utf-8?B?TGlBTkRYQVIwSkJMQUxKU2gwUUNNL0JkMURlajFOVVk2NlJUdGc1aWg4dW04?=
 =?utf-8?B?WlZYRTZmZURlMW9BaTF0c1dNQ0RrbHoxKzNFMWQ5QWwyYWQxRFAwKy9KM3lm?=
 =?utf-8?B?OGFiWHF4ZzBlblFpMnhyYUtFWTdoK0VheUIxVE1PZHhob2tsN3ZBWmVkSHd5?=
 =?utf-8?B?WXMzbDFvelBUS2hqL0VMbU1OcnpJUERHRVdzZmZkODNVY25ackdPQTl5QmZ3?=
 =?utf-8?B?YXlXcStZYmZvMkZhOU4rMzlramgwQk11UzF5cTAxdkV3UXhNcFNVOFRyZ0sy?=
 =?utf-8?B?czFVMjFMK3NHc0xWU1pHSDJvMTBBZjJWU28xdE1TengwUFVCVGYxQmsvcUdz?=
 =?utf-8?B?bllhZW1YRFJnN1Y0bTA2U3BRanlVMy9zVldtcFE3VkZadEVNOE9oVHVXWlI5?=
 =?utf-8?B?ZUxkR2NZVzZoSHp5Z2RVc0xlNWRZbnA5OUIrY21HTE43a1JZMmQzQ0JobHE5?=
 =?utf-8?B?N2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3de5299-d875-4e75-1a21-08ddd5753016
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6391.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 05:42:25.2524 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hgoaNuZBW+oe7ib3B5KAfXMLyJOA88buvnMKrPjqWNK0chAPWeTqkQx7lsOppPjz5iHYFRZOGEKyD7bOitc1Qxl1qBNPSPUVX/Nv12M9KDU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7080
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

On 8/4/2025 4:35 PM, Daniele Ceraolo Spurio wrote:
> If GuC hangs, the GuC logs might not contain enough information to
> understand exactly why the hang occurred. In this case, we need to
> look at the GuC HW state to try to understand where the GuC is stuck. It
> is therefore useful to include the GuC HW state in the error capture.
>
> The list of registers that are part of the GuC HW state can change based
> on platform, but it is the same for all platforms from TGL to MTL so we
> only need to support one version for i915.
>
> v2: revised list
>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c  |   8 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h |   1 +
>   drivers/gpu/drm/i915/i915_gpu_error.c      | 103 +++++++++++++++++++++
>   drivers/gpu/drm/i915/i915_gpu_error.h      |   1 +
>   4 files changed, 113 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> index e7ccfa520df3..384d1400134d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> @@ -46,6 +46,14 @@ static void guc_prepare_xfer(struct intel_gt *gt)
>   		/* allows for 5us (in 10ns units) before GT can go to RC6 */
>   		intel_uncore_write(uncore, GUC_ARAT_C6DIS, 0x1FF);
>   	}
> +
> +	/*
> +	 * Starting from IP 12.50 we need to enable the mirroring of GuC
> +	 * internal state to debug registers. This is always enabled on previous
> +	 * IPs.
> +	 */
> +	if (GRAPHICS_VER_FULL(uncore->i915) >= IP_VER(12, 50))
> +		intel_uncore_rmw(uncore, GUC_SHIM_CONTROL2, 0, GUC_ENABLE_DEBUG_REG);
>   }
>   
>   static int guc_xfer_rsa_mmio(struct intel_uc_fw *guc_fw,
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
> index 3fd798837502..f73dab527547 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
> @@ -96,6 +96,7 @@
>   #define   GUC_GEN10_SHIM_WC_ENABLE		(1<<21)
>   
>   #define GUC_SHIM_CONTROL2		_MMIO(0xc068)
> +#define   GUC_ENABLE_DEBUG_REG		(1<<11)
>   #define   GUC_IS_PRIVILEGED		(1<<29)
>   #define   GSC_LOADS_HUC			(1<<30)
>   
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index f434b6825fc2..c8d731045793 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -685,6 +685,75 @@ static void err_print_guc_ctb(struct drm_i915_error_state_buf *m,
>   		   ctb->head, ctb->tail, ctb->desc_offset, ctb->cmds_offset, ctb->size);
>   }
>   
> +/*
> + * This list includes registers that are useful in debugging GuC hangs. We
> + * include them in the error state so that we don't have to reproduce the
> + * issue locally to capture them.
The second sentence is an odd comment. Even if we can reproduce an issue 
locally, we still need to capture this data somehow. Saving it in the 
error state is much better than manually hacking something every time. I 
would drop that comment and just keep the first sentence.

> + */
> +const struct {
> +	u32 start;
> +	u32 count;
> +} guc_hw_reg_state[] = {
> +	{ 0xc0b0, 2 },
> +	{ 0xc000, 65 },
> +	{ 0xc140, 1 },
> +	{ 0xc180, 16 },
> +	{ 0xc1dc, 10 },
> +	{ 0xc300, 79 },
> +	{ 0xc4b4, 47 },
> +	{ 0xc574, 1 },
> +	{ 0xc57c, 1 },
> +	{ 0xc584, 11 },
> +	{ 0xc5c0, 8 },
> +	{ 0xc5e4, 1 },
> +	{ 0xc5ec, 103 },
> +	{ 0xc7c0, 1 },
> +	{ 0xc0b0, 2 }
> +};
> +
> +static u32 print_range_line(struct drm_i915_error_state_buf *m, u32 start, u32 *dump, u32 count)
> +{
> +	if (count >= 8) {
> +		err_printf(m, "[0x%04x] 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\n",
> +			   start, dump[0], dump[1], dump[2], dump[3],
> +			   dump[4], dump[5], dump[6], dump[7]);
> +		return 8;
> +	} else if (count >= 4) {
> +		err_printf(m, "[0x%04x] 0x%08x 0x%08x 0x%08x 0x%08x\n",
> +			   start, dump[0], dump[1], dump[2], dump[3]);
> +		return 4;
> +	} else if (count >= 2) {
> +		err_printf(m, "[0x%04x] 0x%08x 0x%08x\n", start, dump[0], dump[1]);
> +		return 2;
> +	}
> +
> +	err_printf(m, "[0x%04x] 0x%08x\n", start, dump[0]);
> +	return 1;
> +}
> +
> +static void err_print_guc_hw_state(struct drm_i915_error_state_buf *m, u32 *hw_state)
> +{
> +	u32 total = 0;
> +	int i;
> +
> +	if (!hw_state)
> +		return;
> +
> +	err_printf(m, "GuC Register State:\n");
> +
> +	for (i = 0; i < ARRAY_SIZE(guc_hw_reg_state); i++) {
> +		u32 entry = 0;
> +
> +		while (entry < guc_hw_reg_state[i].count)
> +			entry += print_range_line(m, guc_hw_reg_state[i].start + entry * 4,
The 4 should be sizeof(u32)?

Otherwise it looks good. With the two nits cleaned up:
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> +						  hw_state + total + entry,
> +						  guc_hw_reg_state[i].count - entry);
> +
> +		GEM_BUG_ON(entry != guc_hw_reg_state[i].count);
> +		total += entry;
> +	}
> +}
> +
>   static void err_print_uc(struct drm_i915_error_state_buf *m,
>   			 const struct intel_uc_coredump *error_uc)
>   {
> @@ -693,6 +762,7 @@ static void err_print_uc(struct drm_i915_error_state_buf *m,
>   	intel_uc_fw_dump(&error_uc->guc_fw, &p);
>   	intel_uc_fw_dump(&error_uc->huc_fw, &p);
>   	err_printf(m, "GuC timestamp: 0x%08x\n", error_uc->guc.timestamp);
> +	err_print_guc_hw_state(m, error_uc->guc.hw_state);
>   	intel_gpu_error_print_vma(m, NULL, error_uc->guc.vma_log);
>   	err_printf(m, "GuC CTB fence: %d\n", error_uc->guc.last_fence);
>   	err_print_guc_ctb(m, "Send", error_uc->guc.ctb + 0);
> @@ -1025,6 +1095,7 @@ static void cleanup_uc(struct intel_uc_coredump *uc)
>   	kfree(uc->huc_fw.file_wanted.path);
>   	i915_vma_coredump_free(uc->guc.vma_log);
>   	i915_vma_coredump_free(uc->guc.vma_ctb);
> +	kfree(uc->guc.hw_state);
>   
>   	kfree(uc);
>   }
> @@ -1721,6 +1792,37 @@ static void gt_record_guc_ctb(struct intel_ctb_coredump *saved,
>   	saved->cmds_offset = ((void *)ctb->cmds) - blob_ptr;
>   }
>   
> +static u32 read_guc_state_reg(struct intel_uncore *uncore, int range, int count)
> +{
> +	GEM_BUG_ON(range >= ARRAY_SIZE(guc_hw_reg_state));
> +	GEM_BUG_ON(count >= guc_hw_reg_state[range].count);
> +
> +	return intel_uncore_read(uncore,
> +				 _MMIO(guc_hw_reg_state[range].start + count * sizeof(u32)));
> +}
> +
> +static void gt_record_guc_hw_state(struct intel_uncore *uncore,
> +				   struct intel_uc_coredump *error_uc)
> +{
> +	u32 *hw_state;
> +	u32 count = 0;
> +	int i, j;
> +
> +	for (i = 0; i < ARRAY_SIZE(guc_hw_reg_state); i++)
> +		count += guc_hw_reg_state[i].count;
> +
> +	hw_state = kcalloc(count, sizeof(u32), ALLOW_FAIL);
> +	if (!hw_state)
> +		return;
> +
> +	count = 0;
> +	for (i = 0; i < ARRAY_SIZE(guc_hw_reg_state); i++)
> +		for (j = 0; j < guc_hw_reg_state[i].count; j++)
> +			hw_state[count++] = read_guc_state_reg(uncore, i, j);
> +
> +	error_uc->guc.hw_state = hw_state;
> +}
> +
>   static struct intel_uc_coredump *
>   gt_record_uc(struct intel_gt_coredump *gt,
>   	     struct i915_vma_compress *compress)
> @@ -1755,6 +1857,7 @@ gt_record_uc(struct intel_gt_coredump *gt,
>   			  uc->guc.ct.ctbs.send.desc, (struct intel_guc *)&uc->guc);
>   	gt_record_guc_ctb(error_uc->guc.ctb + 1, &uc->guc.ct.ctbs.recv,
>   			  uc->guc.ct.ctbs.send.desc, (struct intel_guc *)&uc->guc);
> +	gt_record_guc_hw_state(gt->_gt->uncore, error_uc);
>   
>   	return error_uc;
>   }
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
> index 182324979278..91b3df621a49 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
> @@ -177,6 +177,7 @@ struct intel_gt_coredump {
>   			struct intel_ctb_coredump ctb[2];
>   			struct i915_vma_coredump *vma_ctb;
>   			struct i915_vma_coredump *vma_log;
> +			u32 *hw_state;
>   			u32 timestamp;
>   			u16 last_fence;
>   			bool is_guc_capture;

