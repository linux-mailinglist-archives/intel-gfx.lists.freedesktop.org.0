Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0D69A0AF9
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 15:05:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEBB910E6CB;
	Wed, 16 Oct 2024 13:05:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nLVi9TE4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89A0910E15F;
 Wed, 16 Oct 2024 13:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729083951; x=1760619951;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=WgHXRNShXJpyuuCIlthIboFESLB9Elpi7sB99pp/cPc=;
 b=nLVi9TE4x5LivCWOhAJgeVL9F0TbQA5d/3WaHHvv2l0cNogU4O9LN55K
 HYljDPlQUNnp/C2EkKubU1S0XtFrxgrj63Xbk835/51vlOIFf7w0Db0Oo
 0q0lNM5bqtd/9G4Baisc3mYpDXe7PEAnBG0iAg9hTRMWWdNLwMcwP26KV
 IlHS+3TFamiKKJm3wzWU2Ki6+QFBqdEXDOqGhXyBPeYqyKl1I62SjseBH
 uuTLLrzjX5dNEO/4W73HvgtLvddC62c3vnUN2zgKEGB0UDQ1o4Ke0SIP4
 ZOcfKYUvPGHevpcThEsq8QHoLt82iRBHzPz+9jc77dfrL+RopBxzh19hD A==;
X-CSE-ConnectionGUID: UK5yJaHvRR22mxxomwMNNg==
X-CSE-MsgGUID: aaa/TfLXRnqH6VO8ibbVIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="16145786"
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="16145786"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:05:50 -0700
X-CSE-ConnectionGUID: e8j8GVoaTNOEogDPVOLqig==
X-CSE-MsgGUID: DvD4thXZQrKMP6on3KazWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="82878842"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2024 06:05:50 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 06:05:49 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 06:05:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 16 Oct 2024 06:05:49 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 16 Oct 2024 06:05:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yDRLpWVTNUG8DtDGNFT1gSQeNR8W852Ncd2j/Pyb2V0M4YcmQXtLWF61Ro1/Ocmy9L4nhggLueA1XubTKn0gWHMJO3H5UE3KAdvwGxMN8+0jLpGimeYpVca9NtI3uzRo/xMFoqwFtrXcralV53EldY+Lr4AO4I/dNDSBjSX0rihBFOIn57R+2vHb8Ws8MH/60l07TOfNU77hiAHbwR36bXhzAe1ZDL45y7XF7SiN4u5Crs7a0ffI/n+M+Nat0i1wmf5aXcViwhxA8PQQDJ6Z09JtpIguYR2S0DEOgePGRPwdNHT8boQrm5vg+UI60R/rzprcDQLCvTVc+Bank+l8hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M70NkcWM20wjinT9YpOaFxf0D8x6FNyHqDA4CsIgzDU=;
 b=XLh1e3H7boa2TWHoZXDrEpXamqEqepKcNE0qCC1wC6Fdz0Xl1YgbbchBEaHbwrKnxdPW6yOBS5f6U7kSBG337BXnYmxCn5vNls4bTb1f6eDPpO24dV/jsEBIVZcEipYAgHaT93SuIt0ztud61RhCSlunuRdPHmNSahvTHyNfvyzjh3wfSM1Z2uBIMYUhGiOduM6tK70TJBN5JU3HEjKH0VZbAxDAR9jBINYDR8T6mKTt5luaKBDD+7K1jon5JHeu7cbahNaQjnkLbqy5+cZFioFDyiC+qwlho5CcujnMylt0iVCBBPV01Doeb4e0UlpTaeVtbqTE+MInDARgO4G3Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB7717.namprd11.prod.outlook.com (2603:10b6:510:2b8::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.27; Wed, 16 Oct
 2024 13:05:37 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8048.020; Wed, 16 Oct 2024
 13:05:37 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241015231124.23982-2-matthew.s.atwood@intel.com>
References: <20241015231124.23982-1-matthew.s.atwood@intel.com>
 <20241015231124.23982-2-matthew.s.atwood@intel.com>
Subject: Re: [PATCH v3 1/7] drm/i915/xe3lpd: Update pmdemand programming
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Wed, 16 Oct 2024 10:05:31 -0300
Message-ID: <172908393194.4147.1511267260307765845@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0185.namprd03.prod.outlook.com
 (2603:10b6:303:b8::10) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB7717:EE_
X-MS-Office365-Filtering-Correlation-Id: dcdc6a27-9571-4e33-8bfe-08dcede33a5a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V3U5T042eEpMODZQdWtTNUpOdW1xZ0VLTjFlbnM1NGtXOTAxeU9jdmliVVNU?=
 =?utf-8?B?YWNSajg5bW9DbGpUb1NqRUd2azhDZkVEem9XL3I5VEtBazI3ZTdoUklEQWla?=
 =?utf-8?B?TWpDWnNSdFRISjJ3QlEySDhuV3FFbmNlWWM0RkUvRElOV3l0Q08yeGk5V0hj?=
 =?utf-8?B?MXhLZ1FreEpwR3NWUTYzMFBhSU1PeUdVZWY0T24vMVlqRkFWMzNjWUxXTUtu?=
 =?utf-8?B?dEZDSkw5TVFqcVgzWHJqSzFvekJ3VStsbzFyblJSTDM1VG5VVzg0bTZLOXQ2?=
 =?utf-8?B?eHY1TE0rTTF3Sysyajc0TmNyWWFUT3BMRkxyY045N29XaFZieUxOeHdZSHdz?=
 =?utf-8?B?OVRxdy9obHA5NkZ1bXFPSGU2ZTRSRnBGbm1TRG8rN2Vka1pydUdyVExYU2dY?=
 =?utf-8?B?Y0VqSk9lRzZhUGRwWnJlWmk0TXErVVdkd1J2YjI4K0w3Q1Yvcm9LUHVrUkFz?=
 =?utf-8?B?MmxjaE9MYm40aUhwWHNkQ3VGUHdmQzZGSEZYaVNxOU1FMEZJQ3duZTNoSlhQ?=
 =?utf-8?B?dHNKVEZnalM1Z29jTS8wY1RmTVc1QWZMVVhLcGxRQjUvUTFhTkR3aXhlSis4?=
 =?utf-8?B?NGNNVS8rTTB6Z0xEWFk1Mk5XWG12dDU0ditIalRSWkRwY0tpTmFEWmlRZEJs?=
 =?utf-8?B?eDRlZmsrcURodVVTN1g1NUxXL0xqb0JHbzNaUmhnS2dpenRpanovRU1ER0pP?=
 =?utf-8?B?elNUZGJEZzViK3RwUk5tSEo2YVNPUnpqdjhkVUg0b1EyRUtRT2ZaeXpVOUVV?=
 =?utf-8?B?N3BkQlJvVTRUbEpKeUZqdzlMbjkvcW14a2xqNkZUYjErZEVnWGRxUjFVN2tV?=
 =?utf-8?B?dzk5NEczS3hEV3VXNGhGYXp6NXZhOEw2QXd4NTNrVFlTdGh0Sys4cldzWG5O?=
 =?utf-8?B?amxzRlQwTWhXOEVuY1JqSjlxejNxZURBSXdSNlZrdlJTUCs4WUJFcElmWWdn?=
 =?utf-8?B?N3ZJV0ZhT3ZkR3Y2akFQbVdrS3BUWG1CODJxbWg2M053Q21nTFhHQmF6cWYr?=
 =?utf-8?B?bDdzRS85VUp6UXE0RkZFcXIxZE9qTHZWVnJub3pQUkwzSGREcFMwdnFSblBi?=
 =?utf-8?B?RXZWSkpWVFFYcFIwcDFmb2lFWks3QUZqSDZQak1xNFEyNG4xR2xKK0JOdFpi?=
 =?utf-8?B?VlBLMnBDMEEyNjVFZVp0OEEzcjVZUCtza1JGaHV1MDVUNlBnSklQTXVlNk1o?=
 =?utf-8?B?Z3ExLzBsV3F2VEhCWXhNY2E4b2llaHFuc1B0VG1iMDluV3RFTlhKRFFtVUgz?=
 =?utf-8?B?WkNYekVzZmhBd2VWNzdoQ2xmdXNqTFNMb25tMk5SUm4yWXRaaG52RlJBVjll?=
 =?utf-8?B?V2FiZUN1Vjh1bVVvRjl3YmdJQ0JTem10NGNCdGRwc1RDMmdoZWJUczY2OXZT?=
 =?utf-8?B?ejNxU3p4Zkxka25iNDY2UlZnNTl3REkyZWp4WmU3OTJjT2g0UmE2NXd5RWdm?=
 =?utf-8?B?RUd4cGpzekZvSDFrRCtJNGhST3Exc2pXRjZNZUpFeW9veDZmc0MvRFdVK204?=
 =?utf-8?B?ZTJJb21QOC95M3F5bk1uNTl0Y2xFV3ZjT1dkbXYwc0trTkgzQlNSazU3YUZq?=
 =?utf-8?B?MndHdEpSaEcxM0tCaGdKTHNVY0tJQjdKZmpxa3RNRnBMclBmVEIwVGVMbU10?=
 =?utf-8?B?R1FXcmovRXRrT0QvbmdVV2tiMGJUUEVtckpZMjhnWnkxOGNBNWtTbXFGd0Rm?=
 =?utf-8?B?dHo1QzE1RzNLa0hzelkzMGY5VFhpdHJPdFU3dnF5SEJZOC9XbDhTM0p3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K1VOZ3o4L2haV0dTV1d5am1FOHRaMVpFQXprYVhVSXQxcFRyZ1Z4a2JqaTBx?=
 =?utf-8?B?U3BFQUZ6ZDY5djFwaEg4VVFkM0F2ZmR6VHh0eTFTS1N1N1h5SXowUEVpTDBQ?=
 =?utf-8?B?N3RUMjRkVmlXcXp3ZVcrNm9wb1Nxb28rQVBmT1pDVEdTK2xIZjhkOXlDcC8y?=
 =?utf-8?B?TVIxS2lUbVlRRFZ3N1ovSExBbElvbnE5eWp1a2o3OEVWV2VkRlNZdXVvYk9z?=
 =?utf-8?B?eG1VSnFpQVkrNER6aWt4S3dhY3VXSEZrTnp3YkFsUzViM1ZuL2hERlF2bUFR?=
 =?utf-8?B?OTdSVVdzWC9GZHorVHNaZHczYTBFdWFHZEQ1ZUYxdTAzaEpDdC9YRHRSeG9r?=
 =?utf-8?B?VERhUHlCSUhKMnZQNUhQVXZYOHFPVmJ6aG1wNFVnUUdCeC9VcUFCWHg1SXVn?=
 =?utf-8?B?dUdHMmExKy95OFo0ZDNwdEFYQzFEQms1ZUo3SzRPazQ4TzkwSmY5QmVFb0Nr?=
 =?utf-8?B?Risva1krdWVnQTA2ZHMvL2N6ZWxpK1BKS1pBemtXY3YyTXdKMnZ4MjZReTBo?=
 =?utf-8?B?RDM0bXJBSnVwQ3QyT3VlNjArSU80UEl0Y3YwVUdZVkU4RTJLUXcza3VKQXpy?=
 =?utf-8?B?d2crRVlyNGRnbWJqcDV2eTUrNmthMlRDNWxQaE9Za3pPaUR2QVlEODVERzZN?=
 =?utf-8?B?Q2tRNGFoTU5meUJmak1UcGVsOCs2UmFtelNhUkZFL0RvcElGNzZsMVhtbEZB?=
 =?utf-8?B?aEFxYk1NSVhrcnl3Q1lvR29zNXdhWFI0aHVwbUxoSE1Sa3FrRmFRaW03VWhJ?=
 =?utf-8?B?NjlLeVU0ei9NQmZ3Y3I2RkhUSlp0RVMzRHJHOE9DNit4VzVlQWlnelVPSzZw?=
 =?utf-8?B?MndockQ4d1lpMEwzdGh6Y0RYNlgrUzB2aW9iZFd0S09SMSsvVjQ5cHQ2Tzhm?=
 =?utf-8?B?Vjl3ZVVPRFF4ZWVaaVZRMFdTbmNERFhvK0h0NmdBdVpldnlDUHlvQkdva2Jq?=
 =?utf-8?B?azBhV1VEUHRwTTM5TDZvMmxPRFJwSXM0amtCNzdXanMrOStRcTA0Sm83UFNM?=
 =?utf-8?B?VFBMQ0tOQnpKMTVUNU92Wk5FVXlld0VwSDJNbHZtZWVJelFraENGMjF6VnFE?=
 =?utf-8?B?ZjZxOUlCcktJc3o1bHBLU0hpTklFTlN4ZXVMbktoZDNNdkdQbUxLY2NUdWds?=
 =?utf-8?B?V1owYUhySG5tSGxseGgrMnY1RC94ZXJyK1ZYYUJXVEE1QTVaQVVHZEl5L1N0?=
 =?utf-8?B?clZ4c3AxamtTSWptcnFNOU13MVZmdUpFRkR2ditxc1IraWJsRVhmbUxTYTRW?=
 =?utf-8?B?cm4xS0ZMVEFQSTNVNVpiYmlpUmNBbWxvR2NxTThmZE9XenpmMzl3L1NEcy8z?=
 =?utf-8?B?cjJzTzNTTE9BaE54NUFsRTZIUWJqVGFHaHNWTWtGZEVUT3QvUGdVa0l3QkM0?=
 =?utf-8?B?SGhubkcrQ2lNUTJQYUVURzZRN012ZVBtNnFQaVh5elpmQjBaWnQyRFI3SC8w?=
 =?utf-8?B?VEYzV29pcy9ZNWZUZ09mWWdMTDd6SzRBU3o0M2FOdWtTdkYvb3Z1ZmtsUjRC?=
 =?utf-8?B?cFNueUVxMXowTUQvVGxEVXlxLzBjREdKRGh6N3N0UW93RWdlZmtGTHJDc0Vy?=
 =?utf-8?B?SHl0dHpvbVVsMVB2ZWRPc0p4c04xZm1oNGNmdmdvRVc5NnFMTGlBTzVneWJF?=
 =?utf-8?B?NGphMVV5MTI2Q0pYMlordWJ5L0VNcWhXcW94MmI3WXh1T25adnN6NEhPOGxt?=
 =?utf-8?B?TnZSdGVnYWJFcFl4eHd6QjYzcEVTVndYUUxXYnhHcXBZTm53QXJ1b2VJT3lq?=
 =?utf-8?B?Y1crTnI4L0ZqZnhjTzN5bE5WTUc5enQvL3RVVFdQUENDTHFZcHJlRGVLamFT?=
 =?utf-8?B?SkhkeTE0enNhNFV5MVVXZkJOdUxzdGh6OFl5Q29OS3lyNTlIazdlaUZmZkpL?=
 =?utf-8?B?TVFSU2lIYXZpUWM2bWdsVWVqR3VjYVdNdkdSY3ordXVsU1hTWFIzL25kNGIy?=
 =?utf-8?B?NnRjWlBxUnhKdkNFeUtTbm4zR3diVnExRm43NXhpbk9mc3p0NldVeWw1U2xC?=
 =?utf-8?B?RHFvVDNMeWMzdFdYZ3E5M1BGVFNaY2NqdlhObG94Ujk5aFNCQWhnbDVNcXE0?=
 =?utf-8?B?QUFQeHpQdXB1ck1GNWdqcGNpWkVTWmxoeFJ2MVZTdGtLZkNBbzJER0xEQVZv?=
 =?utf-8?B?MWp4ME4rNU9Kd1h2ZDhkaVNCREFEbWxGRDZPYk1QelVEdGN6RDVIN3ZIUXRK?=
 =?utf-8?B?RFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dcdc6a27-9571-4e33-8bfe-08dcede33a5a
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2024 13:05:37.5308 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IBCkKQhJax+XfFZNt+fOvgi4vrLPnEslB7mkb/88+apwUPCoOn7wgqY6Y1Bx3MJP3kCPlFP1S+LvLn14hBgtSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7717
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

Quoting Matt Atwood (2024-10-15 20:11:18-03:00)
>From: Matt Roper <matthew.d.roper@intel.com>
>
>There are some minor changes to pmdemand handling on Xe3:
> - Active scalers are no longer tracked.  We can simply skip the readout
>   and programming of this field.
> - Active dbuf slices are no longer tracked.  We should skip the readout
>   and programming of this field and also make sure that it stays 0 in
>   our software bookkeeping so that we won't erroneously return true
>   from intel_pmdemand_needs_update() due to mismatches.
> - Even though there aren't enough pipes to utilize them, the size of
>   the 'active pipes' field has expanded to four bits, taking over the
>   register bits previously used for dbuf slices.  Since the lower bits
>   of the mask have moved, we need to update our reads/writes to handle
>   this properly.
>
>v2: active pipes is no longer always max 3, add in the ability to go to
>4 for PTL.
>v3: use intel_display for display_ver check, use INTEL_NUM_PIPES
>
>Bspec: 68883, 69125
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_pmdemand.c | 63 +++++++++++++------
> drivers/gpu/drm/i915/display/intel_pmdemand.h |  4 +-
> drivers/gpu/drm/i915/i915_reg.h               |  1 +
> 3 files changed, 46 insertions(+), 22 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.c
>index ceaf9e3147da..6edc0a706921 100644
>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>@@ -258,6 +258,7 @@ intel_pmdemand_connector_needs_update(struct intel_ato=
mic_state *state)
>=20
> static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
> {
>+        struct intel_display *display =3D to_intel_display(state);
>         const struct intel_bw_state *new_bw_state, *old_bw_state;
>         const struct intel_cdclk_state *new_cdclk_state, *old_cdclk_state=
;
>         const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>@@ -274,12 +275,16 @@ static bool intel_pmdemand_needs_update(struct intel=
_atomic_state *state)
>         new_dbuf_state =3D intel_atomic_get_new_dbuf_state(state);
>         old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
>         if (new_dbuf_state &&
>-            (new_dbuf_state->active_pipes !=3D
>-             old_dbuf_state->active_pipes ||
>-             new_dbuf_state->enabled_slices !=3D
>-             old_dbuf_state->enabled_slices))
>+            new_dbuf_state->active_pipes !=3D old_dbuf_state->active_pipe=
s)
>                 return true;
>=20
>+        if (DISPLAY_VER(display) < 30) {
>+                if (new_dbuf_state &&
>+                    new_dbuf_state->enabled_slices !=3D
>+                    old_dbuf_state->enabled_slices)
>+                        return true;
>+        }
>+
>         new_cdclk_state =3D intel_atomic_get_new_cdclk_state(state);
>         old_cdclk_state =3D intel_atomic_get_old_cdclk_state(state);
>         if (new_cdclk_state &&
>@@ -328,9 +333,11 @@ int intel_pmdemand_atomic_check(struct intel_atomic_s=
tate *state)
>                 return PTR_ERR(new_dbuf_state);
>=20
>         new_pmdemand_state->params.active_pipes =3D
>-                min_t(u8, hweight8(new_dbuf_state->active_pipes), 3);
>-        new_pmdemand_state->params.active_dbufs =3D
>-                min_t(u8, hweight8(new_dbuf_state->enabled_slices), 3);
>+                min_t(u8, hweight8(new_dbuf_state->active_pipes), INTEL_N=
UM_PIPES(i915));

We must use INTEL_NUM_PIPES(i915) only for DISPLAY_VER(display) >=3D 30.
For previous display IPs, the "Active Pipes" field it only 2-bit wide.
If for some reason there is a "4 active pipes" setup, we would end up
writing 0 instead of 3 in that field on MTL or LNL.

--
Gustavo Sousa

>+
>+        if (DISPLAY_VER(i915) < 30)
>+                new_pmdemand_state->params.active_dbufs =3D
>+                        min_t(u8, hweight8(new_dbuf_state->enabled_slices=
), 3);
>=20
>         new_cdclk_state =3D intel_atomic_get_cdclk_state(state);
>         if (IS_ERR(new_cdclk_state))
>@@ -395,27 +402,32 @@ intel_pmdemand_init_pmdemand_params(struct drm_i915_=
private *i915,
>=20
>         reg2 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
;
>=20
>-        /* Set 1*/
>         pmdemand_state->params.qclk_gv_bw =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, reg1);
>         pmdemand_state->params.voltage_index =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, reg1);
>         pmdemand_state->params.qclk_gv_index =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, reg1);
>-        pmdemand_state->params.active_pipes =3D
>-                REG_FIELD_GET(XELPDP_PMDEMAND_PIPES_MASK, reg1);
>-        pmdemand_state->params.active_dbufs =3D
>-                REG_FIELD_GET(XELPDP_PMDEMAND_DBUFS_MASK, reg1);
>         pmdemand_state->params.active_phys =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_PHYS_MASK, reg1);
>=20
>-        /* Set 2*/
>         pmdemand_state->params.cdclk_freq_mhz =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, reg2);
>         pmdemand_state->params.ddiclk_max =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, reg2);
>-        pmdemand_state->params.scalers =3D
>-                REG_FIELD_GET(XELPDP_PMDEMAND_SCALERS_MASK, reg2);
>+
>+        if (DISPLAY_VER(i915) >=3D 30) {
>+                pmdemand_state->params.active_pipes =3D
>+                        REG_FIELD_GET(XE3_PMDEMAND_PIPES_MASK, reg1);
>+        } else {
>+                pmdemand_state->params.active_pipes =3D
>+                        REG_FIELD_GET(XELPDP_PMDEMAND_PIPES_MASK, reg1);
>+                pmdemand_state->params.active_dbufs =3D
>+                        REG_FIELD_GET(XELPDP_PMDEMAND_DBUFS_MASK, reg1);
>+
>+                pmdemand_state->params.scalers =3D
>+                        REG_FIELD_GET(XELPDP_PMDEMAND_SCALERS_MASK, reg2)=
;
>+        }
>=20
> unlock:
>         mutex_unlock(&i915->display.pmdemand.lock);
>@@ -442,6 +454,10 @@ void intel_pmdemand_program_dbuf(struct drm_i915_priv=
ate *i915,
> {
>         u32 dbufs =3D min_t(u32, hweight8(dbuf_slices), 3);
>=20
>+        /* PM Demand only tracks active dbufs on pre-Xe3 platforms */
>+        if (DISPLAY_VER(i915) >=3D 30)
>+                return;
>+
>         mutex_lock(&i915->display.pmdemand.lock);
>         if (drm_WARN_ON(&i915->drm,
>                         !intel_pmdemand_check_prev_transaction(i915)))
>@@ -460,7 +476,8 @@ void intel_pmdemand_program_dbuf(struct drm_i915_priva=
te *i915,
> }
>=20
> static void
>-intel_pmdemand_update_params(const struct intel_pmdemand_state *new,
>+intel_pmdemand_update_params(struct drm_i915_private *i915,
>+                             const struct intel_pmdemand_state *new,
>                              const struct intel_pmdemand_state *old,
>                              u32 *reg1, u32 *reg2, bool serialized)
> {
>@@ -495,16 +512,22 @@ intel_pmdemand_update_params(const struct intel_pmde=
mand_state *new,
>         update_reg(reg1, qclk_gv_bw, XELPDP_PMDEMAND_QCLK_GV_BW_MASK);
>         update_reg(reg1, voltage_index, XELPDP_PMDEMAND_VOLTAGE_INDEX_MAS=
K);
>         update_reg(reg1, qclk_gv_index, XELPDP_PMDEMAND_QCLK_GV_INDEX_MAS=
K);
>-        update_reg(reg1, active_pipes, XELPDP_PMDEMAND_PIPES_MASK);
>-        update_reg(reg1, active_dbufs, XELPDP_PMDEMAND_DBUFS_MASK);
>         update_reg(reg1, active_phys, XELPDP_PMDEMAND_PHYS_MASK);
>=20
>         /* Set 2*/
>         update_reg(reg2, cdclk_freq_mhz, XELPDP_PMDEMAND_CDCLK_FREQ_MASK)=
;
>         update_reg(reg2, ddiclk_max, XELPDP_PMDEMAND_DDICLK_FREQ_MASK);
>-        update_reg(reg2, scalers, XELPDP_PMDEMAND_SCALERS_MASK);
>         update_reg(reg2, plls, XELPDP_PMDEMAND_PLLS_MASK);
>=20
>+        if (DISPLAY_VER(i915) >=3D 30) {
>+                update_reg(reg1, active_pipes, XE3_PMDEMAND_PIPES_MASK);
>+        } else {
>+                update_reg(reg1, active_pipes, XELPDP_PMDEMAND_PIPES_MASK=
);
>+                update_reg(reg1, active_dbufs, XELPDP_PMDEMAND_DBUFS_MASK=
);
>+
>+                update_reg(reg2, scalers, XELPDP_PMDEMAND_SCALERS_MASK);
>+        }
>+
> #undef update_reg
> }
>=20
>@@ -529,7 +552,7 @@ intel_pmdemand_program_params(struct drm_i915_private =
*i915,
>         reg2 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
;
>         mod_reg2 =3D reg2;
>=20
>-        intel_pmdemand_update_params(new, old, &mod_reg1, &mod_reg2,
>+        intel_pmdemand_update_params(i915, new, old, &mod_reg1, &mod_reg2=
,
>                                      serialized);
>=20
>         if (reg1 !=3D mod_reg1) {
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.h
>index 128fd61f8f14..a1c49efdc493 100644
>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.h
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>@@ -20,14 +20,14 @@ struct pmdemand_params {
>         u8 voltage_index;
>         u8 qclk_gv_index;
>         u8 active_pipes;
>-        u8 active_dbufs;
>+        u8 active_dbufs;        /* pre-Xe3 only */
>         /* Total number of non type C active phys from active_phys_mask *=
/
>         u8 active_phys;
>         u8 plls;
>         u16 cdclk_freq_mhz;
>         /* max from ddi_clocks[] */
>         u16 ddiclk_max;
>-        u8 scalers;
>+        u8 scalers;                /* pre-Xe3 only */
> };
>=20
> struct intel_pmdemand_state {
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 818142f5a10c..d30459f8d1cb 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -2705,6 +2705,7 @@
> #define  XELPDP_PMDEMAND_QCLK_GV_BW_MASK                REG_GENMASK(31, 1=
6)
> #define  XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK                REG_GENMASK(14=
, 12)
> #define  XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK                REG_GENMASK(11=
, 8)
>+#define  XE3_PMDEMAND_PIPES_MASK                        REG_GENMASK(7, 4)
> #define  XELPDP_PMDEMAND_PIPES_MASK                        REG_GENMASK(7,=
 6)
> #define  XELPDP_PMDEMAND_DBUFS_MASK                        REG_GENMASK(5,=
 4)
> #define  XELPDP_PMDEMAND_PHYS_MASK                        REG_GENMASK(2, =
0)
>--=20
>2.45.0
>
