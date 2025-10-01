Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F68DBB0088
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 12:41:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C60210E350;
	Wed,  1 Oct 2025 10:41:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m/qPpJBI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CB7510E345;
 Wed,  1 Oct 2025 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759315287; x=1790851287;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H1u0qBcRVcYoaTgb4luxwp4K6/tkvdmFsz4aiYjnmfE=;
 b=m/qPpJBIAAjlHDEphOe9xeCShVqxNoPpRlXGMm30AXRGwZeK3jIY4KQl
 5Y/hhMKfLhJZzKn7LIBj0CBxGX3p1g7GNqaAaHEjDIFNekWueGPUGswtP
 w956dEvKzcFHbL3Yk5UmG1W7VV8fNNC5QLFP5TCp4pPdOM4BKjlx0S51t
 QGImVDFulClEwsdz/+Gxzf7F+2/eK/GiYY2nEelj7xFVgxvjvCgaK+E9J
 Z/Mf+IOil3nwCltTN1focQYZGSmF1ROhIaepQ4MTkKNuD3b/WWGoLMBuY
 C1khtZBCjSYOgiNdYP1g+Wo47+ZJ+KhNTfACV0IeaXFQIOhAc9Opv8g4G g==;
X-CSE-ConnectionGUID: y7EcQFUxTX+rHK0VLpDBlw==
X-CSE-MsgGUID: px8294ksTCqjO+oAo4eTog==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="72685910"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="72685910"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 03:41:26 -0700
X-CSE-ConnectionGUID: wyO6MYIGTIGU5Goxr0OoLA==
X-CSE-MsgGUID: VJXUPkkcTemK8yJunClfRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="202459393"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 03:41:25 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 03:41:24 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 1 Oct 2025 03:41:24 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.41)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 03:41:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vHodPvpYes4x4FZTpzza/i7jcQMh91L8nwhx2QunBzz3LJHPlgtH9q6ElnP+6nycaaQZkfX9Zw+o1mu/wu14AYXdxdCsyi0k/dUEh0pRm0wycejoyiYFG65r67JSuVQXFmznM9Rwfh1P8stVXzU5NZJKrBr+iIE/eaSPzlzyQ+EdaGXgVmiH0wwIN6s7L1rpA/i95S5kJ5etfmXLn+Pf33i5migzSem3WDvr6ZulWAA/ARi7wR5h86UmLVCToUHGsZ8NTf1m7scXVixH2svPZCPfzFpyEBrL5oDUN/0arYl1vPFh7mXRn09OBomOlz6ZUhKQygwMuDaVj9Lk8uEQog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uUIVd0H/+H3AGwk53hPHAIvMVR+VV6ybDlToE9bEPkY=;
 b=az4uwjxP3AENE3m5+IaslFxwPHSgfQvLOngHGz1vqkomnzufMPaYcEG70vZeRTfyHF16r1sDAtNH/cH1VEXYVQTzLjHopuGsmfm9oRLo7XVya6u99RddtPrljXAyl+ZAFb/ZtLGLJyR6xRB0xlxK+O/YoWVoJo5CJL2lOyzXvxyQp4MkP8xSpq5KjB8Rn+r0yDAXFii3N6CJ7PHoVk9IVC4lswZ+4XWr76IOk6mcHvnCHRBq63BsuG7jpzaDflIesRTqQooqVo0u1SHgdt7ffCfK/hJwtzVJpwoiHRJWCT4GcT4PsNJIupE6Eb24xwV98OTbDd9aO4bPQw/C9sGSBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB6842.namprd11.prod.outlook.com (2603:10b6:930:61::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.17; Wed, 1 Oct
 2025 10:41:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9160.015; Wed, 1 Oct 2025
 10:41:20 +0000
Message-ID: <daf38ab6-b123-4c91-a18c-1b6c7ec7715d@intel.com>
Date: Wed, 1 Oct 2025 16:11:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/15] drm/i915/display: Use optimized guardband to set
 vblank start
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
 <20250928070541.3892890-16-ankit.k.nautiyal@intel.com>
 <aNpKrMapLVw4bvGb@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aNpKrMapLVw4bvGb@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0034.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:17a::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB6842:EE_
X-MS-Office365-Filtering-Correlation-Id: 19349fef-5877-4739-4a15-08de00d70e9c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QjM2YTdjaWlYV0hrWjNrZ0ZVZkpwY01DVFJXajBrSHlWQnlKZGRYOGlNSTA3?=
 =?utf-8?B?S2Y0Z0QwUmtkOGdodFBITy9GTXR5VTJBazFKSWFQUnRmYndLTjdxUDA1QXBn?=
 =?utf-8?B?OGFkVUJtZGprY0QxUHI1RjJHc3FkSmhOYXNEN1dQK2hCME1LRFZTaTlFUGs4?=
 =?utf-8?B?U2l4MHhtaEVQS1BIU3hWUHNOakdLWUc2VnRYVzZ0MEdEODBqTHdDSzdpdVpo?=
 =?utf-8?B?dmJac3RWN29ocXo0bkJtREVMTG52ZTdnS2dRSk9ZbkJCWklGK3BIN2h0VHdI?=
 =?utf-8?B?YmQxTGk5UHFwSXdxMU1nampyMUgrOGlkT1JCaE9MNUtvVzNoUzNadUZhOG53?=
 =?utf-8?B?YUM2Y1Y4SGpxbVVLUWZ1YjlsS202NW55RlFnRmt6TEFjVC9peDJFUVNlcm9j?=
 =?utf-8?B?VzdFSEVXTG1OdGxGeDhEcWxmc1VZNnM0enB0QzUyZnVLcU9panlSYWtCOEty?=
 =?utf-8?B?NUdWaEdRbGo0Q3oxOHdDK2RYd0lRaTEwYllsTm5uenpwUDdtN1l3N0p0cnpj?=
 =?utf-8?B?cnNKRG5haTArekZGSWZuTHdWYlRVTjZZbUNxaWVKaWc5WVRURWwzSFlPNXpt?=
 =?utf-8?B?K1EwbkdHeFVXeEVoT1BGa1hudEEwZUg4M2dLYWtESi80RjNBV0hJY3FhVzh4?=
 =?utf-8?B?VXJMSlVFVVhSS3VJK0FmbkFTZllLL0R5WnNDb01hb0VuVGlkZGhrTWFKVkQ1?=
 =?utf-8?B?b0dNZCtRdFBzVW9uKzkvMlJHSjVMQzV0Nm5STkN0OUpEeG9maVdRWnN6cG00?=
 =?utf-8?B?NFFjdUVreDZJTzJjUTFCcmYvRi9ELzFOTUdueTNkTjZHK1dhczhpTXlWZ2hJ?=
 =?utf-8?B?Y1FLaE9aOVJNejVHWnoraTdPYlptQlRGdldEL3pTdjM5ZjcxMlR6Q0NaYWUv?=
 =?utf-8?B?UDREVUdlcnpPbEg4d1NUcUtTTXhNUlZOUmZscWpmQ3BqUkIyUEMwSmxYdkJV?=
 =?utf-8?B?QXFaVk9hTUg3eCs2UElTYVgvQkM3Z0J1TW4vSDNkTUxjVW1XZDdVVzRQOTRk?=
 =?utf-8?B?cDM5RjNOV0FUME42bGJUTHVCWU14aDRHK0ozOVJRV3JwYWNOY3VGRmxlSW5Q?=
 =?utf-8?B?cEJ0bXlWa1hidTU2TjcxSVpFSEJGRlZTRWVFOHBjYllMSzVBZFN4K05NcnFC?=
 =?utf-8?B?OE41V2xGTEJRam81cWRXN0cyVXNzN2srWUhDSDZNYVoxeThGdERDL0QxblJ2?=
 =?utf-8?B?b00zaHB5U3YybGVIV2R3NmVrNjBCS3V0R1pZd05HdUM3UE5lVG1Zai9QOEhX?=
 =?utf-8?B?WFJjR2pQWUNHdUhzV3kvcFNqOG5EZVY1N0l4NEVxYlViRXA4LzFhRVVnTnhD?=
 =?utf-8?B?VkxwY25vYVdtOW5aTkVWM2dLZFVCaUl2bHkzemNITW9NQ0laNjRzZDc2VTRm?=
 =?utf-8?B?Z1lVbTZWRlFjb1NsT0tGVmJ2ZzhGZTB1MDEwMHNsL05HSlgwSEJzWUUxL25Y?=
 =?utf-8?B?Wk9BbU1iUGVaMUErWVBXV0JoZ1JyazV3Vit3UGk1UEMwdnVEdklwbkpDN1FX?=
 =?utf-8?B?VFRTT1hMaDA0VE9BSFdYVmllVUJLN00vNDdIeDRlOGNTeHhQVU5kUml0L1FW?=
 =?utf-8?B?QXg1WkJEdGRYWm9sNHhkWW9yTmwzYVo3UDF5YTdFeFZQMHJacDh5d0thVDZ0?=
 =?utf-8?B?bE9IdkJub0cvMi9Wbkl3MHdPaDhqL0F6c0NuQWdKVkZxK0x6U2pNc3VCb3Nn?=
 =?utf-8?B?dFBOSzg0b2pjTjZqQS9EREUyM09XT0RJZGhkUUY4OHRwY3oxMDU4K3dJM3Vk?=
 =?utf-8?B?SjgxMmp3cmpnelcwSkVkeTRsWER0RHVIdUtxUVhWVklwUVgyOTNkZ2N0bEtU?=
 =?utf-8?B?ZnVOYzdYaU5Pa0tLYkhpV041VG5qc0Jnc2JrSUk1UWhEK0pZV2RQMlJoa3Nj?=
 =?utf-8?B?dXNyUWZGQThybWlBVWJUNDQ5bkJwbXVPdWNOTFhuTDhoRnd3MVY5eWFYV21O?=
 =?utf-8?Q?yrF/9u8sf8dT9oCsMVYHlQ2wSljiRmsn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UXF5RVdqVGdnNnJGOHpQeTNYbTIrajA5UmhJOGxqMWJuREZaSkNGRW5YTHdw?=
 =?utf-8?B?YU43R1laNkY3aXU0dytFQS9lUk1kWDBsd2VwNk9xQ2lwcml3MkdIZXUzSjV5?=
 =?utf-8?B?ai80VW1ieVljbmEwakExRlR1L0RYYlV2N2dBQ3Y3dENSQXVvOXh3VUxOZnkz?=
 =?utf-8?B?WmkxOXhYTFZjSVRpMEprWUZ0d25rU09nQVROaU1QL3hjbi9BZ3dCZTV4Q1pr?=
 =?utf-8?B?c0JVZDRDWjVkMlc4Q2RxbVI3aWhTWDh1WFhJZEwwQmo0VklnZXp1KzdyeUNH?=
 =?utf-8?B?U1pzaXFydUZhOVdNeEZtcXhkdjVUYVA3VE5CcVRYZ0RWU3VFUHlzdytGVEF2?=
 =?utf-8?B?TTRQSGRmSFkzTFViOFgrMWUvbkNKTXJQUjhLamxSaktoYTZDdGQwWG56ekRm?=
 =?utf-8?B?S20vdDlUVzI1SUdKWTdaWUJRL1A1aGRMRGRoSlFTa3Y2dmJXcFE3bUdJYTJh?=
 =?utf-8?B?S0RCRmw5NlBiZUxkU21HM2RMaGdpZGRCVnpmV3VvWHhkcTJnRUFXOXRWLzhV?=
 =?utf-8?B?LytaL1RyVndHTTF4YUdIME5Temx2dWZOd0tvZWd1TWtsakk5REN2STl4YmtL?=
 =?utf-8?B?cDAyc0hBOUZ1cDczVTY0dyt0ZXY0WWtTTENTdkdJdzZDYjE0VC96S3dUNUtz?=
 =?utf-8?B?VCs3a0tMc1c0cUg1SjNlV1BYdmh1VVAvRzBObnFtZHVrdDlPdWF4N2tkNWhG?=
 =?utf-8?B?K1NNbHhhOGhqUzA4UmNSajdCN0RIWmtzVEpqR1lEMDd3T01aOUo2QUZIbm1k?=
 =?utf-8?B?dTcrc2R6amdHOHBIRFlWNE9tUHZ2MGp5SHhEUjJCRXd3b3dLMHRvZy9yMGc0?=
 =?utf-8?B?VkEvSldrM1UwekhEMmpTZ1I4ZURjK1ZCa0xHckUzckRkRWcvZytaYzdjblFC?=
 =?utf-8?B?bStxbVRoMXpsYzlUTXdKaWZ4MTZQVkVBTU9VdjhFS0JGeldVMVFrakNoSkpn?=
 =?utf-8?B?QnluRzVaS1AxVndOY3FRRVNrZ1RYYk0vZ2hmTlI0TGlWZ05Vc3ZqTlNDV291?=
 =?utf-8?B?c3FEMGgvSTdqZVFtcUtITlBySld6eCtSTGkrSjhwa3NiaHZDWjY1WnJzVks4?=
 =?utf-8?B?TC9qOGF2TTkyYVpnbG5pT3ZVZ3l3SWsyRFhxMm9nN2lseEd5RG9taWoyMmdR?=
 =?utf-8?B?bUJNZHBHLzhHWVcyMjhrWU9yMzV3Qm1zaWlLMTYyMWNUWXRLNEFmTFB6SVQ0?=
 =?utf-8?B?bWVJWGE4YktnUzY5a2x0R3ZnZ01VRzZzMEJBMFlpNVNFSmFTZmVwK2grcWs2?=
 =?utf-8?B?UmdLMHJ6OGU5MWhWTGl3ejBHUTJnZzlGakE0OVo4Y2J4Slp5akRCSU1wZkxz?=
 =?utf-8?B?NmpWbXRldGxjakI5ZDNsYnQ4NEwrL0FPbXpnZGdoVEVZaWZjbjA0KzJBaEtV?=
 =?utf-8?B?TTQvaFNQSk5kZ3pDY1l1blQ0Y25VV3E5QUJHc015NU84TE4wdlh6UkhNanFm?=
 =?utf-8?B?MGg2Zm00YnZML0pWTEIxZGRiRW41MWo4NjJOTDk1ekliMk1PeXhyelRjQVFR?=
 =?utf-8?B?bUt5ZVhTczlkYzFMS3VuVnh2dlUwQUsyWERkZWdqRFJ5UG5YSUg4Rmd2cEtX?=
 =?utf-8?B?VVZuakk1ZkpvcHNFSCtkUHRwV3NmMGhVdUhZNVNObml5dGhuQkJ5eTdsQ2Vk?=
 =?utf-8?B?d2xYQVZvYnhLYU0wY016SUhKUWw2U0ZSSWtjaENPUUIrckpZNlVyNFpCU2tS?=
 =?utf-8?B?VHhoNFc3RmU4SHVYRVFTRTVPbjI1elY2MlJVWlJTNzBRMm4vVm5tN2xjVGhH?=
 =?utf-8?B?Vjl1UTZQQnd2ZmFCbjlIUVA2V3BRS3NIYnd2NmFxWmVtOG1wZWYxWlg1ZGho?=
 =?utf-8?B?VHByN0EyMVR4eDBJZmY2SVJGVENRRHhmNTVnNmt2blg1WjBCT1cvbGpZTmhZ?=
 =?utf-8?B?RUZ2WE0xc04vdTQvUW00UmUrZUYrdzJtVmF3dEgrMmdRZnRHTjAwUXdBSHRi?=
 =?utf-8?B?MTNzUG1aQldCbWFtaVBrNXZDbVFybkxwTVo2VkpHZUdQQjNEME9VdW5MbDNT?=
 =?utf-8?B?QzRSc1pKbGl6QWR2ZzVUd3NEM1ZjQ1VNdS9KcjZpenlOdldLbVQ5ajd5eHBN?=
 =?utf-8?B?NFY1YmZ1MEcvZzg1K1Q0V2tWYTdBYUJtTGgrVFpXZWNhUE9idEl3QlpDbFhl?=
 =?utf-8?B?TlRKNjBBeGx3TFk5cmdtS1RzQ2RnVW1CWWNvVElMZHBKTllvREw2V1hhOHZt?=
 =?utf-8?B?N2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 19349fef-5877-4739-4a15-08de00d70e9c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2025 10:41:20.2485 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kcqyn3wnjI2NYflly2eROjak2vdcwi6QKT4vHdsVQIZqMw7GuNMY4ZojYe+DwhuV/4kYbf4rli030WYGcR43947aVEdH63yyhQ4CKRdcQZQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6842
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


On 9/29/2025 2:30 PM, Ville Syrjälä wrote:
> On Sun, Sep 28, 2025 at 12:35:40PM +0530, Ankit Nautiyal wrote:
>> As we move towards using a shorter, optimized guardband, we need to adjust
>> how the delayed vblank start is computed.
>>
>> Use the helper intel_vrr_compute_guardband() to calculate the optimized
>> guardband. Since this is measured from the vblank end, we shift the
>> vblank-start accordingly.
>>
>> Calculate the minimum delay required based on the guardband and apply it in
>> intel_crtc_vblank_delay() to update crtc_vblank_start.
>>
>> Additionally, introduce a new allow_vblank_delay_fastset() helper that
>> combines the existing LRR-based logic with an additional check for the
>> optimized guardband usage.
>>
>> v2:
>> - Check if optimized guardband is more than vblank length and add debug
>>    print.
>> - Extend vblank delay fastset logic to cover optimized guardband.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 79 +++++++++++++++++++-
>>   1 file changed, 76 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 4135f9be53fd..97a3121a204f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -2361,6 +2361,67 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
>>   	return 0;
>>   }
>>   
>> +static
>> +int intel_crtc_min_guardband_delay(struct intel_atomic_state *state,
>> +				   struct intel_crtc *crtc)
>> +{
>> +	struct intel_display *display = to_intel_display(state);
>> +	struct intel_crtc_state *crtc_state =
>> +		intel_atomic_get_new_crtc_state(state, crtc);
>> +	const struct drm_display_mode *adjusted_mode =
>> +		&crtc_state->hw.adjusted_mode;
>> +	struct drm_connector_state *conn_state;
>> +	struct drm_connector *drm_connector;
>> +	int vblank_length;
>> +	int i;
>> +
>> +	if (!intel_vrr_use_optimized_guardband(crtc_state))
>> +		return 0;
>> +
>> +	vblank_length = crtc_state->vrr.vmin -
>> +			adjusted_mode->crtc_vdisplay;
>> +
>> +	for_each_new_connector_in_state(&state->base,
>> +					drm_connector,
>> +					conn_state, i) {
>> +		int guardband;
>> +		struct intel_connector *connector;
>> +
>> +		if (conn_state->crtc != &crtc->base)
>> +			continue;
>> +
>> +		connector = to_intel_connector(drm_connector);
>> +		guardband = intel_vrr_compute_guardband(crtc_state,
>> +							connector);
>> +		if (guardband > vblank_length) {
>> +			drm_dbg_kms(display->drm,
>> +				    "[CRTC:%d:%s] Cannot optimize guardband (%d) exceeds max (%d)\n",
>> +				    crtc->base.base.id, crtc->base.name,
>> +				    guardband,
>> +				    vblank_length);
>> +			return 0;
>> +		}
>> +
>> +		return vblank_length - guardband;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static void intel_crtc_vblank_delay(struct intel_atomic_state *state,
>> +				    struct intel_crtc *crtc)
>> +{
>> +	struct intel_crtc_state *crtc_state =
>> +		intel_atomic_get_new_crtc_state(state, crtc);
>> +	struct drm_display_mode *adjusted_mode =
>> +		&crtc_state->hw.adjusted_mode;
>> +	int vblank_delay = 0;
>> +
>> +	vblank_delay = intel_crtc_min_guardband_delay(state, crtc);
>> +
>> +	adjusted_mode->crtc_vblank_start += vblank_delay;
>> +}
>> +
>>   static int intel_crtc_set_context_latency(struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>> @@ -2413,6 +2474,7 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
>>   	ret = intel_crtc_compute_set_context_latency(state, crtc);
>>   	if (ret)
>>   		return ret;
>> +	intel_crtc_vblank_delay(state, crtc);
> IMO we should get rid of all this vblank_delay terminology here.
> This one I think should just be our current
> intel_vrr_compute_config_late() (renamed to eg.
> intel_vrr_compute_guardband()).

Hmm ok so will rename this and call from intel_modeset_pipe_config_late().

Regards,

Ankit

>
> After which we just have to solve all the chicken vs. egg problems
> to really compute the approriate optimized guardband value.
>    
>>   	ret = intel_dpll_crtc_compute_clock(state, crtc);
>>   	if (ret)
>> @@ -5101,13 +5163,24 @@ static bool allow_vblank_delay_fastset_lrr(const struct intel_crtc_state *old_cr
>>   {
>>   	struct intel_display *display = to_intel_display(old_crtc_state);
>>   
>> +	return HAS_LRR(display) && old_crtc_state->inherited &&
>> +		!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
>> +}
>> +
>> +static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_state,
>> +				       const struct intel_crtc_state *new_crtc_state)
>> +{
>>   	/*
>>   	 * Allow fastboot to fix up vblank delay (handled via LRR
>>   	 * codepaths), a bit dodgy as the registers aren't
>>   	 * double buffered but seems to be working more or less...
>> +	 *
>> +	 * Additionally, with the optimized guardband the vblank start
>> +	 * is moved further away from the undelayed vblank. Allow this
>> +	 * vblank delay when optimized guardband is used.
>>   	 */
>> -	return HAS_LRR(display) && old_crtc_state->inherited &&
>> -		!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
>> +	return allow_vblank_delay_fastset_lrr(old_crtc_state) ||
>> +	       intel_vrr_use_optimized_guardband(new_crtc_state);
>>   }
>>   
>>   bool
>> @@ -5242,7 +5315,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>   	PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
>>   	PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
>>   	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
>> -	if (!fastset || !allow_vblank_delay_fastset_lrr(current_config)) \
>> +	if (!fastset || !allow_vblank_delay_fastset(current_config, pipe_config)) \
>>   		PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
>>   	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
>>   	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
>> -- 
>> 2.45.2
