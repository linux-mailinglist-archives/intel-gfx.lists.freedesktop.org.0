Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 104BB95F9B7
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 21:31:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2096C10E1E0;
	Mon, 26 Aug 2024 19:31:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bYCPpiHI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2FB810E1E0;
 Mon, 26 Aug 2024 19:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724700700; x=1756236700;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Nf2pSF/E+2ivyMVbCJ4JD6HTM6i1XLt2khOfRJ1B7nI=;
 b=bYCPpiHIIhqSzABA9O6PqZ3dSRdrzEElxq9zbNj54bZoYet1kqRVMfJE
 W2BJO+WGQ8BNw4Yru+fasVeIeH2tukP9a1BPDP8fb9bgSg+KCXeAael1I
 qiMlUmNy/E5BRghaE2hOdXIToaj98Grw8WH5bSNzmVY0osZISvT6aix/O
 U0kcKlrtoHTwp7hVL8n3kIQtzILhYIBfuvAxtbL+JUbhb9/vks/sWN+24
 S3JCsX6QmeZvKuNf4pl+CKptEezZf9Ha/eWX0cW+7Fu4WrcZRV2c+UITo
 7zInVKh6A9uduLGkXzqaF+AqdPA7B7nR1KPRDLrghZr631U+RTFEGb+bl Q==;
X-CSE-ConnectionGUID: ZgChdVGvST65AqJ5YhXTOQ==
X-CSE-MsgGUID: qlGa8qKXTHSIHqZjg8tUnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="26915569"
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="26915569"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 12:31:40 -0700
X-CSE-ConnectionGUID: 1a6fDszPRJKSlMLd/gyT4A==
X-CSE-MsgGUID: oxFMgQMJTD+F1Dz5czbAkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="93337411"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Aug 2024 12:31:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 12:31:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 12:31:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 26 Aug 2024 12:31:38 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 26 Aug 2024 12:31:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UP8rX9CNGSippUXNVDHWJx5rqOwgcQVuUaOy1Ckfv++yK9PiwQ3Flb+sR2/O1fYLIpbiiphND0UBy8jVq+gmR3rsojOkzyTzPm+9yckHWqYIMst0Ic21iq4BzAo9hlAqQWW5UHHYs5LeRahWAZsUGJaXH3dULf2amrbzsXTUE18DvwZCNJ66aLscKH0gxP3vvDMQwl46ywasyPNbm1YwUEC64g/BH6EmANI4ENBl0xLn58TCsaXq4xIxEb1Yv6YfEod08JcYXJBTur30TemRCRPjCYtSeA0h454cD9HN9S8M8/2KIJoDjSLhGuP0NlbpzYL0CUJ7zg+ywWBDGqrrtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GLf36nzHfHuwAaj095KjY8Q4iLhMeJCOmSDC4jZGVDk=;
 b=E3vJ5nfr9H0dG0KAPx8Cqq84ZqdT7YMKV/wHQVRSZW29wH6iyuqedgdGCH+7TAciu37aR5hKRp8J5uA/mLNulHwcmdIZB/POy7AlhbiQ5P4Skm2iJJdyixuvufxpwysK6le1ix9GvyhDCUWasr875oS7x5LD6N/Danm+SiHWtwc1t5sbK569SBCU5AgA24BQHin31BXXR39BKlM2OCVUFTyNCX0tVhi+xOCALgv90AU5zysOBp87A6psg9s2KWLvlv0dterbalc/qCQRIkaHGj8NovyxzT5CO/PVFgT0h6nslpfuGMUAS0I5EYPxjHLBrgVxOpUgoDQvXyU3zzrh5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by SA1PR11MB8395.namprd11.prod.outlook.com (2603:10b6:806:38c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.24; Mon, 26 Aug
 2024 19:31:35 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%6]) with mapi id 15.20.7875.018; Mon, 26 Aug 2024
 19:31:35 +0000
Date: Mon, 26 Aug 2024 19:30:20 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Juha-Pekka =?iso-8859-1?Q?Heikkil=E4?= <juha-pekka.heikkila@intel.com>
Subject: Re: [PATCH v6 2/2] drm/xe: Align all VRAM scanout buffers to 64k
 physical pages when needed.
Message-ID: <ZszXzIwntGCQobwy@DUT025-TGLU.fm.intel.com>
References: <20240826170117.327709-1-maarten.lankhorst@linux.intel.com>
 <20240826170117.327709-3-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240826170117.327709-3-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: BY5PR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::39) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|SA1PR11MB8395:EE_
X-MS-Office365-Filtering-Correlation-Id: 42376931-02a1-40a7-2f4c-08dcc605b2be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aUpISC9md3RURXFsMEcxTzYyeUN0clNqRlA4Qm1rWG16Qm5Ca3dQdDg1QStH?=
 =?utf-8?B?NDFzbXJvcnFMWkp5SzY4Q2g2NXhVU3BNajhvd2kybmlyM3lPMURraW5VRkVR?=
 =?utf-8?B?OHJ1ZjhNOVQ3SUhhMXZFdW03UUllaHFNVzJYT2ZzTGVjZWRBZHo1YlhDenBB?=
 =?utf-8?B?Wm93ekpYN1RoRzlCOXdxZlJpQWNVWmhoc2lqRVpvTnB2SjU2MnQrZ1p2VDBG?=
 =?utf-8?B?K0V5SGdJUnV5REd3SjBvTy9GeStXczUrVjNqZUdaUjJpRE5YVXpRRXRsWlJE?=
 =?utf-8?B?TTZxd05XdEdMSDRlTVpjU05oaFdiODBtdWNURmtHTkl5TERSdHZrcG5mUXFF?=
 =?utf-8?B?WTVqNVZKYjMxSy9CbDRFL01VdGh2a1hraE9Id1VNcldCd3huNEpuTVQ4eUlv?=
 =?utf-8?B?S0wrZFNmQ3psWFNHQ3Q5WjRYejlJMDEvUUc0YVdDQjJEWVlIa1hSTW1jOW5w?=
 =?utf-8?B?Mzczb2Q1aXpRQ2VEaTY4bG1FL1FERDdmZUVzWTE4dUVndERlNVdUWnRMQXdx?=
 =?utf-8?B?WjBFNFVIMUpKd1ozeGtYU2tYOVk2REtEOERreEJPYTVrTUZTN293bUd6cVZ4?=
 =?utf-8?B?RG12SEJZakhLdG8zK2tvR1owZXIyOXRocERQNTJ3K3BGMDRGMEd4cXpkSUVt?=
 =?utf-8?B?ZDlBVks5SE12RWd0VGR0KzhCN1VPeVVaaG12emQzdmlMUkY1MGFXbDFTNlVH?=
 =?utf-8?B?NGN2bWlqTjhwYlFzTzdJZ3JWSS9XeWoxM0pQRm03RkZ5Zlo1bGk3NGh4YzhN?=
 =?utf-8?B?OHQrOGhxUDUzZi9TdktSb3p0b3hWTkxmRmdZd2ZPbHpHTktTVmxIb2JtNWVv?=
 =?utf-8?B?YWVnb0dhaVpBb0JQdTlQTXFnWFZhZjgxbDhBN1hBYjJrcy9UU3ZVcDAyQjZl?=
 =?utf-8?B?aWUrQzIwU0NYeTV5VTIzdW5Xd2lCUUtkZVJHNFhTanlMeGg5NW1JeE9MREV0?=
 =?utf-8?B?WHo2bU4ralNiTVJCK2cvcS80MlY3SnNHYnB2RWJsMVhQZCtyYWhQa2hpMDFX?=
 =?utf-8?B?OVNLNHBGVXJGTzg4eFBPQ3NBM0h5ZzNpSW1Ga2NTajZYTE9tTEFycEcrNHZV?=
 =?utf-8?B?Ym50NDNSYWUvNnNpbTJpbHpiYkxUaUprQW5nY0phZE54Y0FZcDNmVTF4V1FK?=
 =?utf-8?B?dy9PVVljeDZuM0R0Mys0MnVrNlFXTUVQbytvM0lqcDBPUCtydmRhL2U3QWFh?=
 =?utf-8?B?WEM3bWVybENuWE4wY1FzanlTcmRyRksxNzAwYUpUaTdpMWU0dTFvNGNhcmQv?=
 =?utf-8?B?WkVqeU1mbHZpYk9jZDE3dXRyVmhQQ05tamsxd0JnZjZSeE1MQ0Z1LzAyVDNP?=
 =?utf-8?B?UVU1NThpNUtIaDhWRkdpaXpQZ1phcFYzZGo4ajVERGhmTmZOV2NCblZ5RWRr?=
 =?utf-8?B?V0tpakZQdVNiTk9TZ1NlbFZGRHJwdjdqaUxjeGJqNTk4SnluV0ZGM0NtU1gz?=
 =?utf-8?B?QnJlM0M5Mmk5STJTR2daNE1UNlpVV3ZKSzl6UFVqRmszaEFmdEFqeWU0Mjkr?=
 =?utf-8?B?SlYvQVhlbzNkbXRDV2FqNWNUZGVzYUVINWVjUXA4S2lwakp3V0duYWxCdVFk?=
 =?utf-8?B?SHJkbUhTSFZyeDdQRUYvaG9rVzlKUDZGUnlsRXVhTHZiWEVJS1NMVGg0cmlj?=
 =?utf-8?B?WWxjRDFDdU5zRVNqWk9ROG1wV2VVSks2V01RTzdoTXR4RHdsZko3SmcyZ3N4?=
 =?utf-8?B?aWxsSC9vT2FMTVgxekZ6T3YyUWN4YzVnVEZ1eldDekJidmI3THJ6blhHTUE2?=
 =?utf-8?B?WVZlNy9vM2tweHlaYkJsUUl4cVVxaVRmRUNiVDA2b3lDdWh2UklGYjdtNEN0?=
 =?utf-8?B?NDZuMTQ3RVJoWWRubVZxZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UFlMMWdvUFF6S3VhemlzeUZpSXFpajd5TXRlOExveEQxMzRXTnNoZStzZ3d3?=
 =?utf-8?B?YVRCYzVPdjU5eERndlN6OWl5VjZFcVNhQ1V2dE9VUGU2Y25GU0JOQjkwY0VN?=
 =?utf-8?B?S0dwTGtiZ1BJcHVTVWp0K3I0aFoyLzZoRFJ1OXRHUWVGdjFjNWF1NUhxTDMw?=
 =?utf-8?B?bUpZb1V4NFlaVFlLc0NMS1o5U0lGaFc3UTZLeFNjRmVJQ1pWaEp3KzFBL0or?=
 =?utf-8?B?dmdULzF6Y3dHN0x3bHRoaTd1cC9VU1MrQTZyTTdzY1NtMWJFd3FjN3p4Sjc0?=
 =?utf-8?B?eFRHM3lhRHQvNkdNL0xBNlp6Y3Z5bjM5ZGFIZ0psaUowcUJSQUt6aHU5VXZC?=
 =?utf-8?B?b3FQWnA3ZVlOdTNTMGkyYzhsZUdFOGt2RVZSMXR4dURZRHd6Ykt3eWhiZGJa?=
 =?utf-8?B?ZkdVUktzSHhPbTFjTnN6cFZ6L1MxekdqdzAxOUwra2JCS2xRRm9MaVZnNDNZ?=
 =?utf-8?B?TXR2UG44aGpxamhOMDNjUnI5dHFkMmwra3l1TVBsVmhURXBWMlRCSzlETUJx?=
 =?utf-8?B?WWxzdWRXNStkM3dneWdtc0xPQUhMcnExSTFzeEtVWmsweXhvQlpuOXdmQW91?=
 =?utf-8?B?MEU1WlU0Sk5JQnE3UEZEY3NwVmFhdml0RTlFRTc0SDdFYmF4Szlac3g4dnUz?=
 =?utf-8?B?SkdFbUlRN3lOV1MvRnlvaU1WV2JOclM1cmcybVN0TVVTcXdtQWZYY1h5c3Nm?=
 =?utf-8?B?bjNuUGtndmM1MGRzYnVOK00wNWxFRlJvM0oxeTJJZHpteERVYWZDNnpSazBp?=
 =?utf-8?B?dDVFMHFEM1pOQmwwb2ZhcVo1TU5SU1FjbEttN2hKZ2t1aFZMamtqVXdEUEtQ?=
 =?utf-8?B?Y0JhbUFlSWlraUNqc00wU1ZNNzVENmdESTFFcU5JME0wRXp2ZnVqY1lPSTUv?=
 =?utf-8?B?VWV0MHdLOCtuOEtXWVF1dnd4NE5Lb1RQNGZua2lhZEhIcU9UUDB0a2lZcXdo?=
 =?utf-8?B?RGkwbXpoZDRkMDMvTXlkRGNMRUJwbW52RHh2em43MWNVTkFMTXVCY3VnQVdZ?=
 =?utf-8?B?dTdsMGZuYXlnZFdWR0g2M1M5eEVNZWgxb0lMelpub2hqbDBhNEhTa1l5ZVdn?=
 =?utf-8?B?YzNETzJBSFM0MDlTNlJNMGRFTXc4dERDeEdCK0w4eW81UjZTRkpvclBqL2xr?=
 =?utf-8?B?RHozakEyRTFkNndrVGVBUU5ZMGlrSjVOakdkV0V3bWdjNnFUeFVDTTB6d3lY?=
 =?utf-8?B?K2F2QlVXY24zbGpneXlRL0w3TUFwd2tOaHJEdFNaczR3MUlic05RRXVGNW9k?=
 =?utf-8?B?N2I1K2Zoa1BzdkdqZjB4MkJnSnZBU1crTU9GMUltMkxvSXZlR09SN1dROXVY?=
 =?utf-8?B?Z3I0R3YvbThpUFBuaU40MUEwTHdRdnJHd3B3THFXTEUwUFM1TkRlblUvUjNu?=
 =?utf-8?B?QUNReDNyTFFOZHF4cWxDZHNKSXFrV284MHlrLy9nNGdDblZqTzBxR0VWWHkr?=
 =?utf-8?B?d0wwazhEY2NVaTM2cHUvTmtaTkwzalFzOGhqMlljeG15WUNXZVZOcGQ5ZTFY?=
 =?utf-8?B?MGkrazZxVUQrZ3A0YjNxTUdveHhUZG5RTWVWQllhYWtTelhEclozNGlhK3Bw?=
 =?utf-8?B?dDZuTjErQ3VCekF6V0FxbGFNOEpmWm1UZkp3OFZyazBidVNGSkZ4azNVMlFD?=
 =?utf-8?B?bGxQeFUxbkZ4eVhKM2duTTgrbmtibHE3UXQ5RUFsclpKVGQvbU02ZDQveFZB?=
 =?utf-8?B?MzRMSi9ZUjZvdkY4R2p6Zmtqb1RkZldHVjExb0s3VkY1MHRLaVVvMDlqcitM?=
 =?utf-8?B?UCsxMHJXengzYmYwSnFxdzAxR3RQYlJiSVFnMUNESUhFdzV3UGExdmJ4c1RT?=
 =?utf-8?B?Y2lYNy9RZWF0T0NlbWs5eCtyY0dnNGZIeUJZV2VqL29sSHZHcjZNMExpQWZj?=
 =?utf-8?B?NU5TRDF1RGpDeGpJWWppQnRYOTZYVXJKTEhkcTNpZHZVcVUrS25YUGpDU09K?=
 =?utf-8?B?dlJxMjhIQXpVL3Q2bERIelNIb0liR1ZZZVc3WjFLVndqUGIzTXphMzJkelh1?=
 =?utf-8?B?K1U5OC9qY3ZuZ1ZhNUVrOFRJd1pwYjFYTmk3emFVRDJkTytJaklacmRoaFE1?=
 =?utf-8?B?ZHJZdUc3OFBSbVo5TU1kV3JxamtiMFVBaWZGYVZVRGx1elU3dlRJRFd6ekhM?=
 =?utf-8?B?d1pVOTF0eXRDS2J1NlczRUFoLzJoT1Z5bFNla09OdjZLR1JRSmdteEtjNUU0?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 42376931-02a1-40a7-2f4c-08dcc605b2be
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2024 19:31:35.6827 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: suIwMhhbryKlboeZG7dGemAZeHtD85u3tJ1UIvbGQdQoGuY7ODnnzogmwr1VFkR9SHrr5QOf4TzyPTgTCtSRSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8395
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

On Mon, Aug 26, 2024 at 07:01:16PM +0200, Maarten Lankhorst wrote:
> For CCS formats on affected platforms, CCS can be used freely, but
> display engine requires a multiple of 64k physical pages. No other
> changes are needed.
> 
> At the BO creation time we don't know if the BO will be used for CCS
> or not. If the scanout flag is set, and the BO is a multiple of 64k,
> we take the safe route and force the physical alignment of 64k pages.
> 
> If the BO is not a multiple of 64k, or the scanout flag was not set
> at BO creation, we reject it for usage as CCS in display. The physical
> pages are likely not aligned correctly, and this will cause corruption
> when used as FB.
> 
> The scanout flag and size being a multiple of 64k are used together
> to enforce 64k physical placement.
> 
> VM_BIND is completely unaffected, mappings to a VM can still be aligned
> to 4k, just like for normal buffers.
> 
> Signed-off-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
> ---
>  drivers/gpu/drm/xe/display/intel_fb_bo.c |  9 +++++++++
>  drivers/gpu/drm/xe/xe_bo.c               |  7 +++++++
>  drivers/gpu/drm/xe/xe_vm.c               | 11 ++++++++++-
>  3 files changed, 26 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> index f835492f73fb4..63ce97cc4cfef 100644
> --- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
> +++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> @@ -7,6 +7,7 @@
>  #include <drm/ttm/ttm_bo.h>
>  
>  #include "intel_display_types.h"
> +#include "intel_fb.h"
>  #include "intel_fb_bo.h"
>  #include "xe_bo.h"
>  
> @@ -28,6 +29,14 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
>  	struct xe_device *xe = to_xe_device(bo->ttm.base.dev);
>  	int ret;
>  
> +	/*
> +	 * Some modifiers require physical alignment of 64KiB VRAM pages;
> +	 * require that the BO in those cases is created correctly.
> +	 */
> +	if (XE_IOCTL_DBG(xe, intel_fb_needs_64k_phys(mode_cmd->modifier[0]) &&
> +			     !(bo->flags & XE_BO_FLAG_NEEDS_64K)))
> +		return -EINVAL;

I don't think this is correct use of this macro as XE_BO_FLAG_NEEDS_64K
is an internal flag we set and typically this macro is used to santize
user input. An assert here or WARN would make more sense.

Matt

> +
>  	xe_bo_get(bo);
>  
>  	ret = ttm_bo_reserve(&bo->ttm, true, false, NULL);
> diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
> index cbe7bf098970f..9d6632f92fa94 100644
> --- a/drivers/gpu/drm/xe/xe_bo.c
> +++ b/drivers/gpu/drm/xe/xe_bo.c
> @@ -2019,6 +2019,13 @@ int xe_gem_create_ioctl(struct drm_device *dev, void *data,
>  
>  	bo_flags |= args->placement << (ffs(XE_BO_FLAG_SYSTEM) - 1);
>  
> +	/* CCS formats need physical placement at a 64K alignment in VRAM. */
> +	if ((bo_flags & XE_BO_FLAG_VRAM_MASK) &&
> +	    (bo_flags & XE_BO_FLAG_SCANOUT) &&
> +	    !(xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K) &&
> +	    IS_ALIGNED(args->size, SZ_64K))
> +		bo_flags |= XE_BO_FLAG_NEEDS_64K;
> +
>  	if (args->flags & DRM_XE_GEM_CREATE_FLAG_NEEDS_VISIBLE_VRAM) {
>  		if (XE_IOCTL_DBG(xe, !(bo_flags & XE_BO_FLAG_VRAM_MASK)))
>  			return -EINVAL;
> diff --git a/drivers/gpu/drm/xe/xe_vm.c b/drivers/gpu/drm/xe/xe_vm.c
> index 4cc13eddb6b32..3eb76d874eb28 100644
> --- a/drivers/gpu/drm/xe/xe_vm.c
> +++ b/drivers/gpu/drm/xe/xe_vm.c
> @@ -2878,7 +2878,16 @@ static int xe_vm_bind_ioctl_validate_bo(struct xe_device *xe, struct xe_bo *bo,
>  		return -EINVAL;
>  	}
>  
> -	if (bo->flags & XE_BO_FLAG_INTERNAL_64K) {
> +	/*
> +	 * Some platforms require 64k VM_BIND alignment,
> +	 * specifically those with XE_VRAM_FLAGS_NEED64K.
> +	 *
> +	 * Other platforms may have BO's set to 64k physical placement,
> +	 * but can be mapped at 4k offsets anyway. This check is only
> +	 * there for the former case.
> +	 */
> +	if ((bo->flags & XE_BO_FLAG_INTERNAL_64K) &&
> +	    (xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K)) {
>  		if (XE_IOCTL_DBG(xe, obj_offset &
>  				 XE_64K_PAGE_MASK) ||
>  		    XE_IOCTL_DBG(xe, addr & XE_64K_PAGE_MASK) ||
> -- 
> 2.45.2
> 
