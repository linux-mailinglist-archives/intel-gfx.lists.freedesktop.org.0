Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2487CB89246
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 12:49:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D3CB10E98C;
	Fri, 19 Sep 2025 10:49:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WHRM0lhV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF63810E98B;
 Fri, 19 Sep 2025 10:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758278952; x=1789814952;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HIGacNkOcYFfarjucuspbz6e6daYc0QezOMoM3+T0gU=;
 b=WHRM0lhVl513aVyG8oN9bf2NFZ7LAx48PX4Uy+09grQft8+Odgf6bMdz
 TECbh6gFbXDqnjT4o0ZOMVlaanK16eE5Kt/jcz3jDUiXhXwlCo+4xdKxK
 9tPM0Qtj9I+Cu8f0VmKcU+Q1P8dwDpnf7ULjiPEiNzbNUD3TK2B6m/peJ
 Jdpa7UZX8XyBtErOLyHWmLQVJesfXzqG6cX2pPbOrGpSyBcZP6xGz6p5V
 ye29Fjp27Y5KuJu40+3usFYtPcZYtztExhdjR/WjSqmXg1VjBdCU5K1P+
 92I9LhPo3LHUVD/eZSZ35Xq0avvuqR/S3G8Kw4W1dQcXDj02s321jZm7t Q==;
X-CSE-ConnectionGUID: diE47xGYRyS4EcT1BbXUAA==
X-CSE-MsgGUID: eBKDCwWVRQWSGODQyXe1fQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="71304752"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="71304752"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 03:49:11 -0700
X-CSE-ConnectionGUID: bwVVBZBiTUm1ev+SYJUpJg==
X-CSE-MsgGUID: 3Bo3xn1ISq+UtTtf64OhZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="180218270"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 03:49:11 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 03:49:10 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 19 Sep 2025 03:49:10 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.9) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 03:49:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l6HuwqfByMI1HlmAIfcNkZFAGUnRuUenH976KxlIgZdIXIjvOJgtCYSN9mAlBKFHgEoc+gW7GQJQcYzyxvGETa2P+4NvIlWn2FMGDvvq9D6AroUSb+Fxstysza4MmPltvFVt4JLwJNupz8XnWzOO1Ffz6CcYOVP6MGVP8w3DrvjCvz82876Lv2HfJp2LJXwptJlAjwvMCHUmLCntzn2E8YpqR0Z0yNoe1L3DXNDpEpUT4pz8ZlEtkFuIeuc/yq1XQIaZetDueYELkDHYtZvm50UcYCXghaAyrfsk52+/oJ/HP1NtFn7x7TJoV4HWKLqO4mGMtP2NzzZTlIXSQU4mQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fCxwoetSY0GIF+/zjEa5HKQwwqJ+KaO8oSs+CFJKHTU=;
 b=U3HX1gPxt4Nv4p49YlzXC2dplo3dsJnoibC9d5vy4Dkz5XA2DFsbRdKIsEWvCz9Dlcw9N+4h9OWwt1mXoPMo0o7YsBQOJd8pAw2YDF2hjWk0BuczYrFk9XfH9iCMHpswsgwQRsrsu8cwn0OIOvCBrGW+99IAaPjHxm1cdEkONvnf/OOwGwRYKr9hZR5KKBcDyZPqOfjg4tOJLe6scT6N8U8Em18O3ak3KfqDXg4ULr0nGgyWgdbST08ali6tpFhSpHihJE7NcBTNBBRj5kJRHbOmhNUkpb2GEcGGSYHGHn6WuyO4YxI2lKqa5RYt6ZwYUer1WdjR2KectXLUOttGaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7923.namprd11.prod.outlook.com (2603:10b6:930:7e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.13; Fri, 19 Sep
 2025 10:49:08 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9137.015; Fri, 19 Sep 2025
 10:49:08 +0000
Message-ID: <bb2a11a1-39ea-4f3a-8e56-e35f99020c54@intel.com>
Date: Fri, 19 Sep 2025 16:19:01 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/vrr: Hide the ICL/TGL
 intel_vrr_flipline_offset() mangling better
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20250918232226.25295-1-ville.syrjala@linux.intel.com>
 <20250918232226.25295-2-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250918232226.25295-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0P287CA0009.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7923:EE_
X-MS-Office365-Filtering-Correlation-Id: 98138dac-c0bb-482e-1edc-08ddf76a28fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YzNCRFZLOTNIK29rK3FKaWlmekRXazFKVUNCMldJMGNQeW9QelpyTG9DSEF5?=
 =?utf-8?B?Z1JiL3Z1MDgwS053WGpLZitZV3k0TE9FeTV1V0Fxd3Fld1lhK1hmdGQ5dUEy?=
 =?utf-8?B?SHI3Q1NYSDlSdzV3Z2RvUy92dXpRTUNqNjV2ckhmeVROOGk2eDByMG10Zk55?=
 =?utf-8?B?Q2RkYnpBZlNoUWFrMWFTbkpBbUJSOXFDNFIwYkhxNmNUR2ljN2FLMDZBNjh3?=
 =?utf-8?B?V1BMV2Y2aUJ5OW9tQTdkd000cXREc3MzZHpMdnR3Mm4wSVlqbHQyRk5WVTBs?=
 =?utf-8?B?Ni9JdjF5U0ZCWThWRXdmRDZlVlNYS0FqS3Z6WFhyUlU2N1NBUkFMKzBscDBi?=
 =?utf-8?B?Qlg1SmtsdWJZaFNISlRERmVaOUlMQXdaYUs5ZnA4Zkt1aDUxeUp1ZGpTUU5C?=
 =?utf-8?B?Ni9OZUd4SkQ4SW45ZDFqUFBDbkd5SGwzY0hPK1dueHZSQVdJYUVuK3Fud3NV?=
 =?utf-8?B?SjNtbGM1QUlnRGJmY0Q0TFgxUjhLRUl5RUl1RlQ4a2o0amV3elYwam80M09S?=
 =?utf-8?B?N0RyWmZLZGdWSVZJQXNnSUdkUzE4Z3QzenNWQzdsMTRXSnZwTmk1SXUxOTlX?=
 =?utf-8?B?T3RxRzlBQjZIRzZUVWZYcjJZYWF0MmdZOGxjL1VpSklaWWMzR1BDOHFQSUZz?=
 =?utf-8?B?dExuekpoM0tXMzdEVE1pcXgyYkRxUW9aT3dNWkZWU0dNalhwQTQ4NUtLOXdP?=
 =?utf-8?B?K1VwUkwzYjdnMlAydDB2am9MMTRvTlA1dkpPTGxYNnpLa0VrM1NueU92L2ZU?=
 =?utf-8?B?K2o0eXh6NlJLeWt3eDFCZVk4cmJ5V1BZQU9tRVR6eXZ0cVpLT1Q2SXFCbUxE?=
 =?utf-8?B?TzNQQVhzWms5MkJMcVY1dzJLRzVGWkF6MTlmTDdMdHFjd25KUFBWd21ZQWcx?=
 =?utf-8?B?WjJlZEVYSXFPd091MHhGK29JWW9HVTJRaUlYc2pRZnMyL0cwRCtSdWkvMzVv?=
 =?utf-8?B?eEozWmFsZ2w2MWpTdnprcElWV0tNV1BMVG5sZThkUTU4YWUycFhIRUI0UFBP?=
 =?utf-8?B?Qi92ZFpTbzNEU3pyR2FmOVJyWFU2RTh2MDJlUDdUSWtFWFM0QnVqeXVlTitV?=
 =?utf-8?B?d0hRVkJyR2tyakxUSmhMTjMxTUV6U0tXNDN5T1J6YXBxMVBUelZ5TEJpT2JZ?=
 =?utf-8?B?c05WUDBVOHNhM0ZzT3drOUdoUXdjYXFwejJoY0ZvOEk1Si9Ib0U2VTV6TlRU?=
 =?utf-8?B?bHRUN2MvbStLWTVoTytCeWxwcVNGM1p3Rlh2T1BiMkU4VnM3YmhQSmJGM2Rn?=
 =?utf-8?B?Nm9tT2NaNkdXYVlVamZLbGIraXNrRjBBZ1M0TlhITVp2RVZnZjBwSXFoeTR3?=
 =?utf-8?B?VDNDcVY5ajgwYXQ4MjQ5WWMwdWhmTjJocjlYNStXdURvU3FUKysvZVZtQm9K?=
 =?utf-8?B?RXFveUVUL3ovaEozTjNpTy81bHJZNWg4ajVyWE9xUkk5SlNna1dDNWhFNG9n?=
 =?utf-8?B?cG5xdkhOTjdEVCtQb2tFSkJwMzVQbEJaSUkzYVNTZmkySGlSTUVza2FmQ2NR?=
 =?utf-8?B?dTRERDI3SVQ1RjR0bU4xenBWdit3QmIyTU5qc3VZMnNpWWF0STFuYmgwbTRP?=
 =?utf-8?B?WEViSENlRlg3MEdoeGMrMzUxSnFSZXh5QW5xaFRLcm5tMTNLdHZKVjRmcDJI?=
 =?utf-8?B?ZEFySWVtc1V3c2UvMm4wcFQvaGwwdEN1M2xzbHRHM1N0OXJ1WVArdGlPSTFE?=
 =?utf-8?B?YzhmT0lERTgrby9pVU4yMDhLSkVGQXRrZWpxU24vckdMd21YRjNUdFgyYldB?=
 =?utf-8?B?VmUxZkJudjdIOXNHWVI0eGlNTXk3eFU5TGRTK3dSQUNiTkI3U0Z0WkV5b1Bz?=
 =?utf-8?B?MHJCSjFFb1lsMlp4STBRL25xSzNqbWI4c3lZTlFKclc5Z3c0RWVpeHBCQlZX?=
 =?utf-8?B?SWtsYjFKSG5wM0dUWXRnTHloVDRLWWw3MGQrblJkdS8rMkNwOGk1M2FwTUpL?=
 =?utf-8?Q?bQWJfLhxrgU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXdCcnNnLzlKQVY3dEpBYnJGWDhqN2Jud1hYUS8yMTZSK2p5N0lpU04xRW5o?=
 =?utf-8?B?Q3lQcXBzVzlpM2xvSjRoZmhsNGovelpMbXl5cUw0VlRwMm1vVUN6TGVQd0JE?=
 =?utf-8?B?ZmhjbkdSSGYvbnR0Q3FQY0Zvb3hSakczT3FjdTlrRm9BUFVqOEUxQnlhRnVV?=
 =?utf-8?B?dXhOeUxudlJPZVZPQks2TFlxcmY1ZjBkOHhzeHRVNFBZSlF3MndwdGdjYW1I?=
 =?utf-8?B?YkJlKzFVeVpNV1hxeU9lb1J0blkxZHNhN0JnemdQejBybUtlRVlaUUh5SmU4?=
 =?utf-8?B?amJ0blJBRUp0OFRwREQ4ckx3Um5lak9XeVNLZ2hJUEZNQkt6SStCVmZqZitr?=
 =?utf-8?B?VXI2d1cwcmRKRVNxMk1GMi91a2lQMVR4VjNlNWhkb3dQbGJCWkd3ODU0d1Z4?=
 =?utf-8?B?ZDlrY0ROdFBlMXlGTkZGblZLL0tpeEpiMFMzcktacm92QzR4RXJQQllxQ1dp?=
 =?utf-8?B?UTNuVU9PaXhwRlpPa0FaUTNicnpGcEhHQmFSeDYyNG1LSmpPdFB0T1BuejJ6?=
 =?utf-8?B?NllhMHlFLzZIQk1xOCtpYjZiVVE4Mko3Q2Z5QTR4YmtwaFZLdWd2ZkZuV2E5?=
 =?utf-8?B?YXZONWx4ZHhHbjNjTWVjeDl4QkJBTlpOWEkyc2szY29CbzlNRVpVLytSaE11?=
 =?utf-8?B?bDZyK1I0Q2t5MG1GV0Z3RkpVZGdXOFNxOWw0SkV0OHhsK0pxWTVZSzJ5QitS?=
 =?utf-8?B?b2twVjN3VFFmZ2VCTmwrOGlabFZBUHpQNE9lS2NQNmtXeXhBWVF4U1lmQkR4?=
 =?utf-8?B?ZWFHMWszZjMzY05iUUVrSWlLaTlIRUUwWk96Q3Jvb2lDbk9BZ3M0YSsranJN?=
 =?utf-8?B?VTdZN1J2cjZ5M3kyZHA4eW4yanh4WkltMkxpUURmaTJ6akxkU0JDUm8wb0Ew?=
 =?utf-8?B?TTBhQ0dJR1FUb0NTNHVlc25yYWJqMmFibURGWTluNXhVazhTZWZ2Qk9tT0o5?=
 =?utf-8?B?Q0FRR0FtanUySkJ5WEZWTWxQeFVjWFhWUG0yaFVWcnB6S3huQ1VWWnFuckxr?=
 =?utf-8?B?UlVRaTA5V2pXRWYvaUl0YUsrSFgzSVRFc3cvMDlMdlo3ZXp0WDlFMkFGQXo1?=
 =?utf-8?B?ZVVnNEttSDY3QkxHN2RRMzgvZyt0K2NCZDZaUnhndllEZ0UwTjhzWGpPVVQ5?=
 =?utf-8?B?TXFUOHc1eDl5QjgvKzlpajJGcnE1WCs5TE5xVHI4aGZFQ1pFcTlQcldZWXBw?=
 =?utf-8?B?VXBZNGFLalVKRSs2ZVNxZnVOZnRiWWVIQjVvQ0RwVUM3d2ZNV3pEQkl0K0Vj?=
 =?utf-8?B?VzI3TTVVYzlaWDJpODAxZWgrSWdyV0VkVkxvMm5zVklZRlFWMUZkaTVnMy9W?=
 =?utf-8?B?bkR2WElIQ2ZSbXNaMFhKN1plRTlZek0rSDVmR244ZWFBSEFoazI2UnBGNVRo?=
 =?utf-8?B?N05NdG9iSC9YRGE0ZTNtU1VNOW5aaFJuV2RhbmljUlJFNEN0bGdwVG4wNTJn?=
 =?utf-8?B?YUowT3Y0YzZqRGZYZktwRDFPa2VIb1BqZHdjcGdGVXpibHFaYUd5UVN3eS9D?=
 =?utf-8?B?MlV4aE1nUXlIY05SeUdkTFVnZjFjaHNTcVA0TXdXcWI3NUJ1dWEwZ2VKYjBK?=
 =?utf-8?B?VnVVcmt3V3crQmNMUTRkWTduTWIxczNXWHFyaHhCM1RPRFBuN2xCM1JHd0RQ?=
 =?utf-8?B?THY5OFczNjYwSlozb1JselRsaVJFaUxxZVRleFRqQWo5ZXVnTG5JaDE3RHZ5?=
 =?utf-8?B?cjlvU3hhUWp2RnRSbkNndHlHd0dzbTJLV1FQTjE1bUtFSkM5Y1lGTUtpSllm?=
 =?utf-8?B?VzVaNVcyaEZNeXBaU21jOVk4VEErRzlBTVcweTBPL0ErQ2RjRXg1U241YWJZ?=
 =?utf-8?B?WkRBRTBDK1p5TnU3T0l5TWlXTFNkZldid3ZBTVBOdkxvSERqdEwvWWJNdjB5?=
 =?utf-8?B?cEpaREZQc2xJMjdYdjhDY1pYREVKZ2IzS21GQjJOd0lOOVpkVXdKSFJ6ZHVr?=
 =?utf-8?B?cjQ0WFdmcnYrSnpPY3hvdzRvOWJRT2I2eldxRU9NRjBkZloxM01DL3p3bGli?=
 =?utf-8?B?TFllZGpKOEFDUUpNK1owZFhKZnNJai9ETCtGNUZGeEtyWkVTcllWYmxHQXpV?=
 =?utf-8?B?K0FZbmYyUHpkVExrU1pMTk9PeTNVUWI2TGQ4azBUMGhzb0Jnemp5aW1FaXIv?=
 =?utf-8?B?VHROZmxMeFdVc1ZDVU9BREhFSlZ2Z1lIZXRCcm5raWFDTUdHMzdQMndtSmF1?=
 =?utf-8?B?Zmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98138dac-c0bb-482e-1edc-08ddf76a28fe
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2025 10:49:08.7489 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tqc+7ogARteYxFTQIGMMVekg47N6bmHrSx2evDad0GOxxzQdTs30kipSHP7NQ0PD/u4o4Dmj0IsVdLeRUFwmZK3gJ6VsztYOglssuLL1iMc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7923
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


On 9/19/2025 4:52 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> ICL/TGL VRR hardware won't allow us to program flipline==vmin. If we do
> that the actual effect will be the same as if we had programmed
> flipline=vmin+1, which would make the minimum vtotal one scanline taller
> than expected.
>
> To compensate for this we reduce vmin by one, and then program
> flipline=vmin+1. So we end up with a flipline value that matches
> the expected minimum vtotal. Currently this adjustment happens
> in intel_vrr_compute_config() which means that crtc_state->vrr.vmin
> will no longer be directly usable for the remainder of the high
> level VRR code. That is annoying at best, fragile at worst.
>
> Hide the adjustment in low level code instead. This will allow most
> of the higher level VRR code to remain blissfully ignorant about this
> fact. Afterwards crtc_state->vrr.{vmin,flipline} will be equal
> and match the minimum vtotal, exactly how things already work
> on ADL+.
>
> The only slight downside is that the actual register value will no
> longer match crtc_state->vrr.vmin on ICL/TGL, but that may already
> be the case on TGL because the register value will also have been
> adjusted by the SCL.
>
> Note that we must change the guardband calculation to account
> for intel_vrr_extra_vblank_delay() explicitly. Previously that
> was accidentally handled by the earlier vmin reduction by
> intel_vrr_flipline_offset().
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 30 ++++++++++++++----------
>   1 file changed, 17 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 71a985d00604..e725b4581e81 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -108,15 +108,20 @@ int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
>   
>   static int intel_vrr_flipline_offset(struct intel_display *display)
>   {
> -	/* ICL/TGL hardware imposes flipline>=vmin+1 */
> +	/*
> +	 * ICL/TGL hardware imposes flipline>=vmin+1
> +	 *
> +	 * We reduce the vmin value to compensate when programming the
> +	 * hardware. This approach allows flipline to remain set at the
> +	 * original value, and thus the frame will have the desired
> +	 * minimum vtotal.
> +	 */
>   	return DISPLAY_VER(display) < 13 ? 1 : 0;
>   }
>   
>   static int intel_vrr_vmin_flipline(const struct intel_crtc_state *crtc_state)
>   {
> -	struct intel_display *display = to_intel_display(crtc_state);
> -
> -	return crtc_state->vrr.vmin + intel_vrr_flipline_offset(display);
> +	return crtc_state->vrr.vmin;
>   }
>   
>   static int intel_vrr_guardband_to_pipeline_full(const struct intel_crtc_state *crtc_state,
> @@ -400,13 +405,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   	else
>   		intel_vrr_compute_fixed_rr_timings(crtc_state);
>   
> -	/*
> -	 * flipline determines the min vblank length the hardware will
> -	 * generate, and on ICL/TGL flipline>=vmin+1, hence we reduce
> -	 * vmin by one to make sure we can get the actual min vblank length.
> -	 */
> -	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
> -
>   	if (HAS_AS_SDP(display)) {
>   		crtc_state->vrr.vsync_start =
>   			(crtc_state->hw.adjusted_mode.crtc_vtotal -
> @@ -426,7 +424,8 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>   		return;
>   
>   	crtc_state->vrr.guardband =
> -		crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
> +		crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
> +		intel_vrr_extra_vblank_delay(display);
>   
>   	if (DISPLAY_VER(display) < 13) {
>   		/* FIXME handle the limit in a proper way */
> @@ -597,7 +596,10 @@ void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state
>   
>   static int intel_vrr_hw_vmin(const struct intel_crtc_state *crtc_state)
>   {
> -	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.vmin);
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.vmin) -
> +		intel_vrr_flipline_offset(display);
>   }
>   
>   static int intel_vrr_hw_vmax(const struct intel_crtc_state *crtc_state)
> @@ -762,6 +764,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   			crtc_state->vrr.flipline += intel_vrr_real_vblank_delay(crtc_state);
>   			crtc_state->vrr.vmax += intel_vrr_real_vblank_delay(crtc_state);
>   			crtc_state->vrr.vmin += intel_vrr_real_vblank_delay(crtc_state);
> +
> +			crtc_state->vrr.vmin += intel_vrr_flipline_offset(display);
>   		}
>   
>   		/*
