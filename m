Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C42A3C45BF1
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 10:53:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D9BF10E371;
	Mon, 10 Nov 2025 09:53:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c4iERMEp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9123110E2CB;
 Mon, 10 Nov 2025 09:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762768420; x=1794304420;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ysKs/N9de4fzQcHXcl1lEWjYzEaDHObPg/DhUyA2VoY=;
 b=c4iERMEpS1Hl4FfIV4cK37OuaWx4PQvyrOHRMpphiTKRD9bqyWROh10Q
 UKypV0jJA0u3xEiFLnBMHabRiofpndaWrbYqEpPqa1YRdOLteN7Gki7fi
 bi6CDQqit6+QxuEl0iEI7HOUMzAr2zCe5WAcADPaaXQLQqgcKlHh/4GAH
 4JgjyZzKsOsrN/ZbpjFdeMvIqpLMd6aZYiQ1oFIK0QtUdMnPD84aY1AN1
 2RWVBXQGPTrHZzbjH4QHb/YqqxVEgssVRqzhWLOPzYpfGHWqYpG247Rcv
 hkdH4atRVFarvdy0sS8auwxgZ7odMBBNsbo1c2pqhmU7/LqFbsLPr2GXr w==;
X-CSE-ConnectionGUID: mx7Kch/dSUK0i9KfiWlh1A==
X-CSE-MsgGUID: j3PWzL0VR9G72MS+WVrhRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11608"; a="64970110"
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="64970110"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 01:53:39 -0800
X-CSE-ConnectionGUID: G2RkM1BuRtiPFuboPtIGDw==
X-CSE-MsgGUID: jlc+WzNBS8205xa1OZgMuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="219360955"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 01:53:39 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 01:53:38 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 01:53:38 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.51) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 01:53:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=De9tGOKFEdAWOddBGFiI+IvdD25+FJmj5LUAI2hGfjFmJ/7nPJPw+DPKGaeiHzSlTEWM8LSTGlCdPJyG0M1cHweCQeFeyatHzXtdni7N+rMVc92CmCsrIFnpexYIugJeLRJnAO/oIzJr+Kyfk7QOLfisuRJOHal/8tZ77hwGsCxwdaIJk6YVQ1uwRlq1BkEWwXClxcvYgWnApvJkBVJSUzWEHpBmB+Usnxe7vbuM5Gl9GtQZ4C0EdxyAIqOyhwdrbsgITq3EA959fV7gmpSUQmoCmCUVTaRtQri4DwtIgz9xFuoE5T0+l3Um+8sCmIepfi3WitWb5yM/lBDtw79lVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5LD+G695LZFvy22vTE4vSe5tRGGS5ouG0k1PQBj0fqk=;
 b=XZ0GOTfbukNX9+r5T6DQtVH7cvUNpFX/eW7AS0GeiVU5zJRucmv2FbKCpA0+oBDWud3gJXUtZ3Ca8FKLQfYYCMWSYsHg/NC8BPU2QX2mvOOzMzR9KPqzomW22F5zXBIrCNygf/e41lNXwMjhkMbqzVQiBx0SPju7P5mezasU4hP3vSMUIn8o23s2xc96u8t5qG5CYnu57sf+LRc0xKkbDVmGa6zUohzXHrrZYpGrnDxTfq0GUIY2c0OeJn4uNhT+rJtPoE+wriNeyNxdge2NpsVu5jrGouB3BdR3dn3s6Fdf4Ulz/kZjUB5fAO2v3kTtmqQNl4/97pnBuDPx//XHSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5143.namprd11.prod.outlook.com (2603:10b6:510:3f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Mon, 10 Nov
 2025 09:53:36 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9298.010; Mon, 10 Nov 2025
 09:53:35 +0000
Message-ID: <70139248-c7c5-45df-8e4b-c999d0c85414@intel.com>
Date: Mon, 10 Nov 2025 15:23:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] drm/i915/ltphy: Implement HDMI Algo for Pll state
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20251110061940.545183-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251110061940.545183-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0P287CA0012.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5143:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ae1040d-7594-46b0-b526-08de203f03f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d2UyeUVkSzZ2UTlWUksxSVdCSFUvWlMzcldjVTB2R2lOcUt2ZVhYWVRyclhv?=
 =?utf-8?B?Rk5BS29CNHFaazFFOU9Ta25LR084L0g0UXhIRGdUaVVzRHJIdGIrd09lMUg1?=
 =?utf-8?B?bXZnM1ZmNjU1S25zb01Oa1ZoTDJxU21tZUgwZ05wMDE2RjUwZHpYZXNDaldW?=
 =?utf-8?B?dDVLTHZZMU45T1BsOUI3QUFBQ2JRSmJoTDI1QUFWaDl0L1Q2ZG5Pa1k1dkRy?=
 =?utf-8?B?VUpOTGd2M005NXZDK3hHcUJ6T3BteFJNelJCcmVZckpGUkh6UVNEcWx1UlNV?=
 =?utf-8?B?MkQxZFF3b1ZmTXFNdE5Jc1VKTnhxMno0RDJ2Z3JPRDFJMzUrZnhEdDg0cmU2?=
 =?utf-8?B?enZrVG10K2RCRG0zZmFCcjE5UlU4TnVHUjZ6emVjUy92WGJpWkE2WlpmR01o?=
 =?utf-8?B?Y2JHdWppa1JqeHdSZjA2cDhUK1lxSmdiVklrQWdRaWl0UTE5a1hBd3I3TVRC?=
 =?utf-8?B?bUFmYkdWT0c1d3pjeFdFd21MOTFNQXpLWHN3cW1rUi91emQ2QWZVZE13M3lI?=
 =?utf-8?B?QTFjL09HZklrY3dTUkpnaHlEOWNVdFcwcVczZWRtS1hDeTFYUElEK2FacEpy?=
 =?utf-8?B?RUpUVEFTQUpRbUxGK2FwNjRwbG9GejVRWDN6bTVVT3h6cW9vWVpNSHpYUDlI?=
 =?utf-8?B?WlF3SVhFQzBKZThpTUp0RXF4dHFXSkhiNk1EcnE1M2NsdzhrYXhkRG1sMFpZ?=
 =?utf-8?B?Zk05emxQQXpKcWtLZHR3N0YreGJxLzdoV0lXVHJ5eUp5N2ZJTnNlUXIzUFlq?=
 =?utf-8?B?QW9QTEtEM1hCN2t5eHZZNit4Yno3R1RtcUhrcmRQY3EyV21vU0lBWXhJV3U1?=
 =?utf-8?B?bHErNHVXZ2Y5R1NmR3RmaS8rVVRMVG91ZTdPVWtPVitKV0ZpVW14Si8rbTUy?=
 =?utf-8?B?WFF5SnM4UFl2a2pWUTRzWDNaMnFHK3kzallzdC80RU83blNzZ241TTB5amNE?=
 =?utf-8?B?ZjIySjRCQ0g2Tkc1dWxvY211UDFoN3ZpZENPMzFLZEdJbk5Vc3RjSEJ2L0Jl?=
 =?utf-8?B?T0gvUVFzQ1p4bGNnM2cxZ3dCbENEMTExUHhYYldHUjJJODdQQWxodEJLNlR2?=
 =?utf-8?B?bXAvWTkrNy9JV0FqVmRWMFpKYklBQTRFM0hDWDdWZWpmV0o5Mkk4YXVqTUhD?=
 =?utf-8?B?MlBFQzU3emhJellaQS9EYklCUnZMUFZQRnJqWE5BeFBXdktSZzZKU2ZSMWU0?=
 =?utf-8?B?a09XUkNGbTJ2ZDZ4YWhZd1VYM1VNNlRvOHVsR1RIeDZad0J4VlY0a1Y3MDJ3?=
 =?utf-8?B?eEtEdjV6UmJSSmlIeFQyUXJEVEhEVGswbXRsZ1NvY2lyQWNNQ2FSK2JGbk9T?=
 =?utf-8?B?Z2d5UGhIeDVLV2tyaEY3NmU0TjNmNy9aeFpJRzFRcTR2OW5WcXZidHppM1ZH?=
 =?utf-8?B?SUw3ZW5YTU9UWllrMStQMzVycTdrbzZ5T1E3RTNRY2J4cUZhTWY2Z3Q5Y3Mz?=
 =?utf-8?B?OS9SMjlXU25HcFlLMHpyVTJ2S3JydWNocGkyTGpuMFJBTlFBYmQrbk1IQjky?=
 =?utf-8?B?dzRqeDJxaXRyWm05V1UyUFF1eDhrUG5BbEVTOWJmSWhWekZwYkZtajNGK2Ew?=
 =?utf-8?B?WEVFeUxlb0FXa3p4dHlDdnlIREtiZ0t1TlVwZmhVRnNyTFN0MzBDZTBKdUVz?=
 =?utf-8?B?T2poNkY3M0tJc1djcGpaVEdSUTgvRUZjN1FaZkE1TTU0OEs2ams3Z2dmdWFH?=
 =?utf-8?B?bE53aVNNUUh1djc5akY4STVnQ1ZBOHR1QVdEMVlOQ0FZeXkrcVAzNDdlblF6?=
 =?utf-8?B?b0RWcWpPWWNUWUZrRUNWYVpUTEFOZTFaWU9ielBuODB2eCswdGtaRWZWaWFL?=
 =?utf-8?B?b3BwU2o1K252aThrWm1SNlJ0c0RKdWljcml0ZkdtUXNDQWNBdGJYaHVING9S?=
 =?utf-8?B?OUhiWU5VZElDVCtoWGtWcDc0WVlqNC94bEtoZVdCZmZBN0hUTVJ0NVZmREEr?=
 =?utf-8?Q?HrNmrTvUy7j9i4H0WHKCKr7oEipg2loQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YjVjQTQ4S09HNnBJSlRpeXlrdlFTcVU3bnh4eHQ3VjdoQ2I0eXhLVlhnM3F1?=
 =?utf-8?B?RXVxenZVTmhXcTB3SHhYNEpOc0Vickt5aU1ucm5HK3V2bkRJV3ZyRnFmSmRt?=
 =?utf-8?B?RTNuQ1hyaTNua3A1NU9wRWtuWlQzcDRXVGdkd1NERzRaSTFKR3VXdkU2VzZE?=
 =?utf-8?B?MmorQjZTQ3NFZHBGTUFQQXFwenVhVTFaNkp4S0I4bXk1ZEVXQlVHSWlRb3Z3?=
 =?utf-8?B?KzU5a0cyQVcyUTFUY2VJVU5xQkdUN2Jqa09CY0pVd1hCcWsvRHVCY0dMWHFR?=
 =?utf-8?B?VVZWTk1hcG1vbWZ0MjRZK1FReWF4SGd2VDZaREJUZDVrdGNxVVY3c1hJb0JG?=
 =?utf-8?B?Ry9yaEloRmdYNlFMMUVrZGozem9UM1E5L2NkOGZCbzY2b3RQYTIvemtsRTAv?=
 =?utf-8?B?MmVxbGpCY3JWUDA0WWdPZzhKTE5VWnB6TGlDTkpvTmxTbnY0ekV4NjNzUUJ2?=
 =?utf-8?B?bXJHREpURnRhbDRhQk1GMm1FTmp2UU9SQUVuTWUxYzE4eHNDUG5GQi9yc2pT?=
 =?utf-8?B?dm5va2R2d3UrK2RTenl0RkQ1QmVwdlZKUTRCYkp4TkVUVUV0bk9XYWxPRTJp?=
 =?utf-8?B?RXRKN2poQ0Y3SzIzYkZ5SFN0akE4UnZSNEpHZU8wWUkxaHRaQTJyWkFMcUZa?=
 =?utf-8?B?Ny9jc2VxK1RKYnMweUc3emhLd2x0TFVjOU1XVUVIazd5VnNPaWFRQTdRbm5N?=
 =?utf-8?B?MnZ6Z0xad2JWQ3V1K0wralBaWkJhRjZiNjhnT0RleHM0SmM0bGZLSll1eUxF?=
 =?utf-8?B?RGpBWldSRXhIcXkydCs5VjB0U2RkNTcrNys5bytzR1R2SGNOaCtWNnVnampq?=
 =?utf-8?B?NnJydnFMNStXQzYwaFZ0aVBTTHRpOGlZOTZHMDhsYytkb28wMTg1N0lpR1hr?=
 =?utf-8?B?bEY1bFFiNUJib1JVdGNlbTZWdTZaVm0xVnl5VUxmVHhsOTVhTnZVNUpXL1pI?=
 =?utf-8?B?a01pcHhqTjViOVAycitQY1N5VFZsb1NYdlh5b2UrK2JTQlgzdmxnaFFIWXRK?=
 =?utf-8?B?NFBHVjhFcDV6c21CS2lZdVFCK3VpMWdac3F5L0dSTEZjM0FOcndMSFlkeWhq?=
 =?utf-8?B?UnhOeFhKNkdXNHBoWUVGQ3dGSWdvQ2RralNycUs2a2pKcFVaa2V2Tk9DZklj?=
 =?utf-8?B?WE1zMGd5bUxpVzNld0NFa3ZmTFQxai9FdzY2UlB3N3JlRFcxQVZ2RE1SVlhz?=
 =?utf-8?B?eXN0Ym9nZ0Qrc2JuMy9FdlpFVjF5eENwTGpSMXRWWS9NZmRxMVZTa243WG4z?=
 =?utf-8?B?ai9GTEJQbzdtM1A4QmRtMDhxSmU3OUF1Tk1JZ0dnNHdGTnI4QmxCbFgxbmJ1?=
 =?utf-8?B?RlF6L0Z5Zko1QU5jL0ZreTJDcFRxdzdmbVlRNDlUZE9MRWs1RjgwZnRIcU44?=
 =?utf-8?B?UVUyS1VFK3d3dG4xNEJEUDFEWlN0WW8xR3FKWE5sQkVHRHJUMGdGaGRJc1hX?=
 =?utf-8?B?Z05YRzlld2NQYjJJSFJZYmxvTnM3MFpFbDh2bTNXYjFrMU4zN0UxeTg5TEd4?=
 =?utf-8?B?RUM0eWpPVThTNVNHbk9yMEViSld0U29lZE9WVys5NXhjdVBOYVBHcDVLMEVw?=
 =?utf-8?B?c2lKL0YrdVlzMXZQZkVBZW1xT3NMMzlyek1BSmJGTEZHVzhoYkVzQXVTMWIr?=
 =?utf-8?B?V2VzdzkycHpsRVRDRTc4cFR1VFJqa09BbmgrWVluK1dqTHhMYkZxc3FUTWRh?=
 =?utf-8?B?V2t4L2lRQ3J6ZU9hSjNJaVlFSzN5N3FTMHVqMkZic3E2Nzl1dUtJbyttNGl2?=
 =?utf-8?B?R21WZGlDbTJjcFQ4M0pWNEdia1BXWVJzaTFaRHJpZkYxNXZ3cVBxLzAwa3FJ?=
 =?utf-8?B?MkRoampkR0tzRjZLQ3ZVM3c2eWpSK01VYkpOa3RxbnhqZ0lWdmxWakN2ZzdP?=
 =?utf-8?B?aHJReDlYT3p2TlFheGx2S3EwaVA3ZzdKbjI4UEI5YTY5b0QvS3YxZHpZeno3?=
 =?utf-8?B?bUJod2s0dXVSSGd4Ti9xOUtDV3hwcGNxWlVVQjk1LzBaak1wUGtqamNNZWwz?=
 =?utf-8?B?TDhHQzZXdGw5QXp2cjhwMTNNbldCUWFZYjZHZW9WK0FOY0dyOUpFbG1kVFU0?=
 =?utf-8?B?MWtUOGhZcEI0dGFybWk1WFF0NElweVpJbzdrbTJZUDgvUUEzU0x2WXlnbUlX?=
 =?utf-8?B?aDNxK3VMczQvZUM5WTN5cnlYTHo1ekNYeXBZZnNueUwzTjRpQ3ZKT2w3WEk3?=
 =?utf-8?B?ZkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ae1040d-7594-46b0-b526-08de203f03f5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 09:53:35.9359 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mzg/0cETEhMokmoN4PjvCSJPudB/+MOjPmS23JMoyU1RRleVT/tc9pxw7ubtoIq47l+aODVTfO1DFsVbJ0EvpNDJp3U2M8161yYGMYYtKY8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5143
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


On 11/10/2025 11:49 AM, Suraj Kandpal wrote:
> Implement the HDMI Algorithm to dynamically create LT PHY state
> based on the port clock provided.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>
> v1 -> v2:
> -Add new macro functions and definitions for address assignment(Ankit)
> -Introduce a structure lt_phy_param for code readability (Ankit)
>
> v2 ->v3:
> -Seprate out param calulation wherever possible (Ankit)
> -Modify Macro to accept pll_reg (Ankit)
>
>   drivers/gpu/drm/i915/display/intel_lt_phy.c   | 345 +++++++++++++++++-
>   drivers/gpu/drm/i915/display/intel_lt_phy.h   |   3 +
>   .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  16 +
>   3 files changed, 362 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index af48d6cde226..d88dbfbe97b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -31,6 +31,32 @@
>   #define INTEL_LT_PHY_BOTH_LANES		(INTEL_LT_PHY_LANE1 |\
>   					 INTEL_LT_PHY_LANE0)
>   #define MODE_DP				3
> +#define Q32_TO_INT(x)	((x) >> 32)
> +#define Q32_TO_FRAC(x)	((x) & 0xFFFFFFFF)
> +#define DCO_MIN_FREQ_MHZ	11850
> +#define REF_CLK_KHZ	38400
> +#define TDC_RES_MULTIPLIER	10000000ULL
> +
> +struct phy_param_t {
> +	u32 val;
> +	u32 addr;
> +};
> +
> +struct lt_phy_params {
> +	struct phy_param_t pll_reg4;
> +	struct phy_param_t pll_reg3;
> +	struct phy_param_t pll_reg5;
> +	struct phy_param_t pll_reg57;
> +	struct phy_param_t lf;
> +	struct phy_param_t tdc;
> +	struct phy_param_t ssc;
> +	struct phy_param_t bias2;
> +	struct phy_param_t bias_trim;
> +	struct phy_param_t dco_med;
> +	struct phy_param_t dco_fine;
> +	struct phy_param_t ssc_inj;
> +	struct phy_param_t surv_bonus;
> +};
>   
>   static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_rbr = {
>   	.clock = 162000,
> @@ -1356,10 +1382,322 @@ intel_lt_phy_pll_is_ssc_enabled(struct intel_crtc_state *crtc_state,
>   	return false;
>   }
>   
> +static u64 mul_q32_u32(u64 a_q32, u32 b)
> +{
> +	u64 p0, p1, carry, result;
> +	u64 x_hi = a_q32 >> 32;
> +	u64 x_lo = a_q32 & 0xFFFFFFFFULL;
> +
> +	p0 = x_lo * (u64)b;
> +	p1 = x_hi * (u64)b;
> +	carry = p0 >> 32;
> +	result = (p1 << 32) + (carry << 32) + (p0 & 0xFFFFFFFFULL);
> +
> +	return result;
> +}
> +
> +static bool
> +calculate_target_dco_and_loop_cnt(u32 frequency_khz, u64 *target_dco_mhz, u32 *loop_cnt)
> +{
> +	u32 ppm_value = 1;
> +	u32 dco_min_freq = DCO_MIN_FREQ_MHZ;
> +	u32 dco_max_freq = 16200;
> +	u32 dco_min_freq_low = 10000;
> +	u32 dco_max_freq_low = 12000;
> +	u64 val = 0;
> +	u64 refclk_khz = REF_CLK_KHZ;
> +	u64 m2div = 0;
> +	u64 val_with_frac = 0;
> +	u64 ppm = 0;
> +	u64 temp0 = 0, temp1, scale;
> +	int ppm_cnt, dco_count, y;
> +
> +	for (ppm_cnt = 0; ppm_cnt < 5; ppm_cnt++) {
> +		ppm_value = ppm_cnt == 2 ? 2 : 1;
> +		for (dco_count = 0; dco_count < 2; dco_count++) {
> +			if (dco_count == 1) {
> +				dco_min_freq = dco_min_freq_low;
> +				dco_max_freq = dco_max_freq_low;
> +			}
> +			for (y = 2; y <= 255; y += 2) {
> +				val = div64_u64((u64)y * frequency_khz, 200);
> +				m2div = div64_u64(((u64)(val) << 32), refclk_khz);
> +				m2div = mul_q32_u32(m2div, 500);
> +				val_with_frac = mul_q32_u32(m2div, refclk_khz);
> +				val_with_frac = div64_u64(val_with_frac, 500);
> +				temp1 = Q32_TO_INT(val_with_frac);
> +				temp0 = (temp1 > val) ? (temp1 - val) :
> +					(val - temp1);
> +				ppm = div64_u64(temp0, val);
> +				if (temp1 >= dco_min_freq &&
> +				    temp1 <= dco_max_freq &&
> +				    ppm < ppm_value) {
> +					/* Round to two places */
> +					scale = (1ULL << 32) / 100;
> +					temp0 = DIV_ROUND_UP_ULL(val_with_frac,
> +								 scale);
> +					*target_dco_mhz = temp0 * scale;
> +					*loop_cnt = y;
> +					return true;
> +				}
> +			}
> +		}
> +	}
> +
> +	return false;
> +}
> +
> +static void set_phy_vdr_addresses(struct lt_phy_params *p, int pll_type)
> +{
> +	p->pll_reg4.addr = PLL_REG_ADDR(PLL_REG4_ADDR, pll_type);
> +	p->pll_reg3.addr = PLL_REG_ADDR(PLL_REG3_ADDR, pll_type);
> +	p->pll_reg5.addr = PLL_REG_ADDR(PLL_REG5_ADDR, pll_type);
> +	p->pll_reg57.addr = PLL_REG_ADDR(PLL_REG57_ADDR, pll_type);
> +	p->lf.addr = PLL_REG_ADDR(PLL_LF_ADDR, pll_type);
> +	p->tdc.addr = PLL_REG_ADDR(PLL_TDC_ADDR, pll_type);
> +	p->ssc.addr = PLL_REG_ADDR(PLL_SSC_ADDR, pll_type);
> +	p->bias2.addr = PLL_REG_ADDR(PLL_BIAS2_ADDR, pll_type);
> +	p->bias_trim.addr = PLL_REG_ADDR(PLL_BIAS_TRIM_ADDR, pll_type);
> +	p->dco_med.addr = PLL_REG_ADDR(PLL_DCO_MED_ADDR, pll_type);
> +	p->dco_fine.addr = PLL_REG_ADDR(PLL_DCO_FINE_ADDR, pll_type);
> +	p->ssc_inj.addr = PLL_REG_ADDR(PLL_SSC_INJ_ADDR, pll_type);
> +	p->surv_bonus.addr = PLL_REG_ADDR(PLL_SURV_BONUS_ADDR, pll_type);
> +}
> +
> +static void compute_ssc(struct lt_phy_params *p, u32 ana_cfg)
> +{
> +	int ssc_stepsize = 0;
> +	int ssc_steplen = 0;
> +	int ssc_steplog = 0;
> +
> +	p->ssc.val = (1 << 31) | (ana_cfg << 24) | (ssc_steplog << 16) |
> +		(ssc_stepsize << 8) | ssc_steplen;
> +}
> +
> +static void compute_bias2(struct lt_phy_params *p)
> +{
> +	u32 ssc_en_local = 0;
> +	u64 dynctrl_ovrd_en = 0;
> +
> +	p->bias2.val = (dynctrl_ovrd_en << 31) | (ssc_en_local << 30) |
> +		(1 << 23) | (1 << 24) | (32 << 16) | (1 << 8);
> +}
> +
> +static void compute_tdc(struct lt_phy_params *p, u64 tdc_fine)
> +{
> +	u32 settling_time = 15;
> +	u32 bias_ovr_en = 1;
> +	u32 coldstart = 1;
> +	u32 true_lock = 2;
> +	u32 early_lock = 1;
> +	u32 lock_ovr_en = 1;
> +	u32 lock_thr = tdc_fine ? 3 : 5;
> +	u32 unlock_thr = tdc_fine ? 5 : 11;
> +
> +	p->tdc.val = (u32)((2 << 30) + (settling_time << 16) + (bias_ovr_en << 15) +
> +		    (lock_ovr_en << 14) + (coldstart << 12) + (true_lock << 10) +
> +		    (early_lock << 8) + (unlock_thr << 4) + lock_thr);
> +}
> +
> +static void compute_dco_med(struct lt_phy_params *p)
> +{
> +	u32 cselmed_en = 0;
> +	u32 cselmed_dyn_adj = 0;
> +	u32 cselmed_ratio = 39;
> +	u32 cselmed_thr = 8;
> +
> +	p->dco_med.val = (cselmed_en << 31) + (cselmed_dyn_adj << 30) +
> +		(cselmed_ratio << 24) + (cselmed_thr << 21);
> +}
> +
> +static void compute_dco_fine(struct lt_phy_params *p, u32 dco_12g)
> +{
> +	u32 dco_fine0_tune_2_0 = 0;
> +	u32 dco_fine1_tune_2_0 = 0;
> +	u32 dco_fine2_tune_2_0 = 0;
> +	u32 dco_fine3_tune_2_0 = 0;
> +	u32 dco_dith0_tune_2_0 = 0;
> +	u32 dco_dith1_tune_2_0 = 0;
> +
> +	dco_fine0_tune_2_0 = dco_12g ? 4 : 3;
> +	dco_fine1_tune_2_0 = 2;
> +	dco_fine2_tune_2_0 = dco_12g ? 2 : 1;
> +	dco_fine3_tune_2_0 = 5;
> +	dco_dith0_tune_2_0 = dco_12g ? 4 : 3;
> +	dco_dith1_tune_2_0 = 2;
> +
> +	p->dco_fine.val = (dco_dith1_tune_2_0 << 19)
> +		+ (dco_dith0_tune_2_0 << 16)
> +		+ (dco_fine3_tune_2_0 << 11)
> +		+ (dco_fine2_tune_2_0 << 8)
> +		+ (dco_fine1_tune_2_0 << 3)
> +		+ dco_fine0_tune_2_0;

I think this should have operator at the end:

     p.dco_fine.val = (dco_dith1_tune_2_0 << 19) +
              (dco_dith0_tune_2_0 << 16) +
              (dco_fine3_tune_2_0 << 11) +
              (dco_fine2_tune_2_0 << 8) +
              (dco_fine1_tune_2_0 << 3) +
              dco_fine0_tune_2_0;

> +}
> +
> +int
> +intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
> +				  u32 frequency_khz)
> +{
> +#define DATA_ASSIGN(i, pll_reg)	\
> +	do {			\
> +		lt_state->data[i][0] = (u8)((((pll_reg).val) & 0xFF000000) >> 24); \
> +		lt_state->data[i][1] = (u8)((((pll_reg).val) & 0x00FF0000) >> 16); \
> +		lt_state->data[i][2] = (u8)((((pll_reg).val) & 0x0000FF00) >> 8); \
> +		lt_state->data[i][3] = (u8)((((pll_reg).val) & 0x000000FF));	\
> +	} while (0)
> +#define ADDR_ASSIGN(i, pll_reg)	\
> +	do {			\
> +		lt_state->addr_msb[i] = ((pll_reg).addr >> 8) & 0xFF;	\
> +		lt_state->addr_lsb[i] = (pll_reg).addr & 0xFF;		\
> +	} while (0)
> +
> +	bool found = false;
> +	struct lt_phy_params p;
> +	u32 dco_fmin = DCO_MIN_FREQ_MHZ;
> +	u64 refclk_khz = REF_CLK_KHZ;
> +	u64 m2div = 0;
> +	u64 target_dco_mhz = 0;
> +	u64 tdc_fine;
> +	u64 tdc_targetcnt;

I think the variables which have same context can be grouped together 
like below:

u64 tdc_fine, tdc_targetcnt;

> +	u64 feedfwd_gain;
> +	u64 feedfwd_cal_en;


u64 feedfwd_gain, feedfwd_cal_en;

> +	u64 tdc_res = 30;
> +	u32 prop_coeff;
> +	u32 int_coeff;
> +	u32 ndiv = 1;
> +	u32 m1div = 1;
> +	u32 m2div_int;
> +	u32 m2div_frac;
These 3 can come in same line:
> +	u32 frac_en;
> +	u32 ana_cfg;
> +	u32 loop_cnt = 0;
> +	u32 gain_ctrl = 2;
> +	u32 refclk_mhz_int = 38;

u32 refclk_mhz_int = REF_CLK_KHZ / 1000;
Can be moved near to u64 refclk_khz above.

> +	u32 postdiv = 0;
> +	u32 d6_new = 0;
> +	u32 dco_12g = 0;
> +	u32 pll_type = 0;
> +	u32 d1 = 2;
> +	u32 d3 = 5;
> +	u32 d5 = 0;
> +	u32 d6 = 0;
> +	u32 d7;
> +	u32 d8 = 0;
> +	u32 d4 = 0;

All of these can be be grouped together including the d6_new above:

u32 d1 = 2, d3 = 5, d4 = 0, d5 = 0;
u32 d6 = 0, d6_new = 0;
u32 d7, d8 = 0;


> +	u32 bonus_7_0 = 0;
> +	u32 csel2fo = 11;
> +	u32 csel2fo_ovrd_en = 1;
> +	u64 temp0, temp1, temp2, temp3;
> +
> +	p.surv_bonus.val = (bonus_7_0 << 16);
> +	p.pll_reg4.val = (refclk_mhz_int << 17) +
> +		(ndiv << 9) + (1 << 4);
> +	p.bias_trim.val = (csel2fo_ovrd_en << 30) + (csel2fo << 24);
> +	p.ssc_inj.val = 0;
> +	found = calculate_target_dco_and_loop_cnt(frequency_khz, &target_dco_mhz, &loop_cnt);
> +	if (!found)
> +		return -EINVAL;
> +
> +	m2div = div64_u64(target_dco_mhz, (refclk_khz * ndiv * m1div));
> +	m2div = mul_q32_u32(m2div, 1000);
> +	if (Q32_TO_INT(m2div) > 511)
> +		return -EINVAL;
> +
> +	m2div_int = (u32)Q32_TO_INT(m2div);
> +	m2div_frac = (u32)(Q32_TO_FRAC(m2div));
> +	frac_en = (m2div_frac > 0) ? 1 : 0;
> +
> +	if (frac_en > 0)
> +		tdc_res = 70;
> +	else
> +		tdc_res = 36;
> +	tdc_fine = tdc_res > 50 ? 1 : 0;
> +	temp0 = tdc_res * 40 * 11;
> +	temp1 = div64_u64(((4 * TDC_RES_MULTIPLIER) + temp0) * 500, temp0 * refclk_khz);
> +	temp2 = div64_u64(temp0 * refclk_khz, 1000);
> +	temp3 = div64_u64(((8 * TDC_RES_MULTIPLIER) + temp2), temp2);
> +	tdc_targetcnt = tdc_res < 50 ? (int)(temp1) : (int)(temp3);
> +	tdc_targetcnt = (int)(tdc_targetcnt / 2);
> +	temp0 = mul_q32_u32(target_dco_mhz, tdc_res);
> +	temp0 >>= 32;
> +	feedfwd_gain = (m2div_frac > 0) ? div64_u64(m1div * TDC_RES_MULTIPLIER, temp0) : 0;
> +	feedfwd_cal_en = frac_en;
> +
> +	temp0 = (u32)Q32_TO_INT(target_dco_mhz);
> +	prop_coeff = (temp0 >= dco_fmin) ? 3 : 4;
> +	int_coeff = (temp0 >= dco_fmin) ? 7 : 8;
> +	ana_cfg = (temp0 >= dco_fmin) ? 8 : 6;
> +	dco_12g = (temp0 >= dco_fmin) ? 0 : 1;
> +
> +	if (temp0 > 12960)
> +		d7 = 10;
> +	else
> +		d7 = 8;
> +
> +	d8 = loop_cnt / 2;
> +	d4 = d8 * 2;
> +
> +	/* Compute pll_reg3,5,57 & lf */
> +	p.pll_reg3.val = (u32)((d4 << 21) + (d3 << 18) + (d1 << 15) + (m2div_int << 5));
> +	p.pll_reg5.val = m2div_frac;
> +	postdiv = (d5 == 0) ? 9 : d5;
> +	d6_new = (d6 == 0) ? 40 : d6;
> +	p.pll_reg57.val = (d7 << 24) + (postdiv << 15) + (d8 << 7) + d6_new;
> +	p.lf.val = (u32)((frac_en << 31) + (1 << 30) + (frac_en << 29) +
> +		   (feedfwd_cal_en << 28) + (tdc_fine << 27) +
> +		   (gain_ctrl << 24) + (feedfwd_gain << 16) +
> +		   (int_coeff << 12) + (prop_coeff << 8) + tdc_targetcnt);
> +
> +	/* Compute ssc / bias2 */
> +	compute_ssc(&p, ana_cfg);
> +	compute_bias2(&p);
> +
> +	/* Compute tdc/dco_med */
> +	compute_tdc(&p, tdc_fine);
> +	compute_dco_med(&p);
> +
> +	/* Compute dcofine */

Now I think we can do away with the comments above.

With the minor changes suggested above the patch looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


I was thinking if we should have a separate file for this, similar to 
one for snps phy hdmi plls, but in that case we were using it for snps 
PHY and C10 phy which have similar algorithm.

In the present LT PHY case it might be not a be a good idea for now.


Regards,

Ankit


> +	compute_dco_fine(&p, dco_12g);
> +
> +	pll_type = ((frequency_khz == 10000) || (frequency_khz == 20000) ||
> +		    (frequency_khz == 2500) || (dco_12g == 1)) ? 0 : 1;
> +	set_phy_vdr_addresses(&p, pll_type);
> +
> +	lt_state->config[0] = 0x84;
> +	lt_state->config[1] = 0x2d;
> +	ADDR_ASSIGN(0, p.pll_reg4);
> +	ADDR_ASSIGN(1, p.pll_reg3);
> +	ADDR_ASSIGN(2, p.pll_reg5);
> +	ADDR_ASSIGN(3, p.pll_reg57);
> +	ADDR_ASSIGN(4, p.lf);
> +	ADDR_ASSIGN(5, p.tdc);
> +	ADDR_ASSIGN(6, p.ssc);
> +	ADDR_ASSIGN(7, p.bias2);
> +	ADDR_ASSIGN(8, p.bias_trim);
> +	ADDR_ASSIGN(9, p.dco_med);
> +	ADDR_ASSIGN(10, p.dco_fine);
> +	ADDR_ASSIGN(11, p.ssc_inj);
> +	ADDR_ASSIGN(12, p.surv_bonus);
> +	DATA_ASSIGN(0, p.pll_reg4);
> +	DATA_ASSIGN(1, p.pll_reg3);
> +	DATA_ASSIGN(2, p.pll_reg5);
> +	DATA_ASSIGN(3, p.pll_reg57);
> +	DATA_ASSIGN(4, p.lf);
> +	DATA_ASSIGN(5, p.tdc);
> +	DATA_ASSIGN(6, p.ssc);
> +	DATA_ASSIGN(7, p.bias2);
> +	DATA_ASSIGN(8, p.bias_trim);
> +	DATA_ASSIGN(9, p.dco_med);
> +	DATA_ASSIGN(10, p.dco_fine);
> +	DATA_ASSIGN(11, p.ssc_inj);
> +	DATA_ASSIGN(12, p.surv_bonus);
> +
> +	return 0;
> +}
> +
>   static int
>   intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
>   {
> -#define REF_CLK_KHZ 38400
>   #define REGVAL(i) (				\
>   	(lt_state->data[i][3])		|	\
>   	(lt_state->data[i][2] << 8)	|	\
> @@ -1472,7 +1810,10 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
>   		}
>   	}
>   
> -	/* TODO: Add a function to compute the data for HDMI TMDS*/
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> +		return intel_lt_phy_calculate_hdmi_state(&crtc_state->dpll_hw_state.ltpll,
> +							 crtc_state->port_clock);
> +	}
>   
>   	return -EINVAL;
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index a538d4c69210..b7911acd7dcd 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -35,6 +35,9 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
>   				       struct intel_lt_phy_pll_state *pll_state);
>   void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
>   				   struct intel_crtc *crtc);
> +int
> +intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
> +				  u32 frequency_khz);
>   void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
>   			      const struct intel_crtc_state *crtc_state);
>   void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> index 9223487d764e..dc7b7679cd06 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> @@ -72,4 +72,20 @@
>   #define XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(port, lane)	 _XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(__xe2lpd_port_idx(port), \
>   											    lane)
>   #define   XE3LPD_PORT_P2M_ADDR_MASK			REG_GENMASK(11, 0)
> +
> +#define PLL_REG4_ADDR		0x8510
> +#define PLL_REG3_ADDR		0x850C
> +#define PLL_REG5_ADDR		0x8514
> +#define PLL_REG57_ADDR		0x85E4
> +#define PLL_LF_ADDR		0x860C
> +#define PLL_TDC_ADDR		0x8610
> +#define PLL_SSC_ADDR		0x8614
> +#define PLL_BIAS2_ADDR		0x8618
> +#define PLL_BIAS_TRIM_ADDR	0x8648
> +#define PLL_DCO_MED_ADDR	0x8640
> +#define PLL_DCO_FINE_ADDR	0x864C
> +#define PLL_SSC_INJ_ADDR	0x8624
> +#define PLL_SURV_BONUS_ADDR	0x8644
> +#define PLL_TYPE_OFFSET		0x200
> +#define PLL_REG_ADDR(base, pll_type)		((pll_type) ? (base) + PLL_TYPE_OFFSET : (base))
>   #endif /* __INTEL_LT_PHY_REGS_H__ */
