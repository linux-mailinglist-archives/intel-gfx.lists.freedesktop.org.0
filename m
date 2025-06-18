Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0397ADED66
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 15:06:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC3A610E81F;
	Wed, 18 Jun 2025 13:06:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DmrIaI5x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A661510E81F
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jun 2025 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750251986; x=1781787986;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=CoE8Gd/r5125FR0HS/Oammnv6D60apZR2lNS6M1ejgw=;
 b=DmrIaI5x53V8e7Z7K9oa6rpy+6/5SqaVCE+sqRJ1kqbx0QbFlBDKhLqZ
 6VRAJgHnvYu9BGHLMTPxQy/A4HxTpdMC61b8davHH8dWjwtVWXkpLegsk
 wmBqg+Z8MXAx1JQc/Syz3qHnm/b8PW+t3MvXB29MPEVTcf9dSirCSoClC
 pk+CiTyy7TakFwPeYJwjzbkGkvMDH1xunYf5GmCKe860CWAycptgysCa7
 0jo6DbxFKBsipZLQWEMTpZeS0+foJH5G5qAZAYw/UVTAsBBpOF/701szs
 dKtvcwFleP3qpzzdvV4jMM0lqxl2QKPXo5uDVDKOgDirIRBp+0Gk7w9Jw w==;
X-CSE-ConnectionGUID: RSwdbaEqQ+mlnkVzptgMuA==
X-CSE-MsgGUID: FgqbkbjORQuEZq6uWfFr5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="55086138"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="55086138"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:06:25 -0700
X-CSE-ConnectionGUID: U5F8DXUQTDG4+yNzsfxELQ==
X-CSE-MsgGUID: fOLeNornTSuCBWyRtkLIcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="150071917"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:06:25 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 06:06:24 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 06:06:24 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.82) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 06:06:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D7mYNow6Lv0W4b2B8y4Aoqqmji3Gm87ZgnBIFNr2ZcJV8mh6Ug6d61qyyYbObJlw73okvrb+9u4dfWnRtwYng9GGRd6Gvy/2UR9k+VlO/RyS5zfrui+f8VTX2z6+1ApyuoLdX/0xPgxIqV0khqIv0Jkvs5PLjMYurHhumBFWrOtC6IJuidoifhxFGYURNI57kRa2mrG3lI06bWN3D3BKCxGgS1n7MwTo11RxIJcrfrqthw+rLU4ZYNXj+G96+W7CzfbjOtVl6oHCnud4cKycdVNR3er+fw84OVROC/nixeGlVPSTXGBlAFVDFxI9AxRHYSE+NuMqUhuv+RStIast4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CoE8Gd/r5125FR0HS/Oammnv6D60apZR2lNS6M1ejgw=;
 b=J/2yZLUGNOXxe0Gw7kuav1YDz8laSxG35dDP4i2J/ziBRT/Wgz+PGZkxSTDJj1x3iUvMZFyYyTebgB7CXzbxn6OKMSySVx1EbZO17qkiCpx3QnjwP5LGvceBVOS+KSqOxEnWuMEu27Z0TdLTnfQUs54dT8oToiJ2EXV6BEEEajGimfl3XFCcB4rDkmaS+cqrwjrUeNMtcZGgNR9+4MJZY9OkmNgqIiRRgK0dwhQ70JaHwlz8q0z5ZHkbqk3i8faXTT6TnESUOQJWMqg71YMxKVmpbT0QdMIbrs3KsaRiSor8V26h29qfGsRgzm2xexnk2MIde2dop6HoF3W/jjFKIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA1PR11MB8594.namprd11.prod.outlook.com (2603:10b6:806:3b1::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Wed, 18 Jun
 2025 13:06:06 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8857.019; Wed, 18 Jun 2025
 13:06:05 +0000
Date: Wed, 18 Jun 2025 13:05:57 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: Re: your mail
Message-ID: <jgr44hpf6ardaunhh3tr4pvcqcv7kvdljh2m5idr5c3quhjq5w@x5eyznstuuuu>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <enmvs5xc2vjomnhaumdpt6ygv3berd7acuz2usz5hvprgey3x2@6bepnus3ve52>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <enmvs5xc2vjomnhaumdpt6ygv3berd7acuz2usz5hvprgey3x2@6bepnus3ve52>
X-ClientProxiedBy: VI1PR0902CA0029.eurprd09.prod.outlook.com
 (2603:10a6:802:1::18) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA1PR11MB8594:EE_
X-MS-Office365-Filtering-Correlation-Id: dcb03cec-8c8d-48c7-1baa-08ddae68e296
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Wk1DRDlJMURyR2xqczdiQ2hFSnB4dlNPSTM4M1BkSkRhZnBoY1grSG9qdjRJ?=
 =?utf-8?B?QU1qU0lzb3lEay9vNGVQcFhQeVdGVzVNNm85Z2FuK2JXOXFCUFhWL21YMnlR?=
 =?utf-8?B?RW85dnJadldiYlhUQXJQdDhnbXZnOHZRbVYrYzlzQmRZaUVreTNoWHBaSFNH?=
 =?utf-8?B?R2RxdmZBeHJRYkkwbitzWDJ4cmpOUjVQNGN6N2Y3ZjQ3UWNEeGlyOUNkOXp2?=
 =?utf-8?B?WGUyeGhBRnBER0lQbkRta0pmcDMzU3hYR2hjYm5XdnZmR0hZTjhzNkZPWXZn?=
 =?utf-8?B?U0ZQdERjZWhEakgvK3pzS2Q1TjJIdTd6ODVQMlQ4emhYRjV0NXR0UWtVeXc0?=
 =?utf-8?B?RnQxcWlvaitmTTBOQy9Sck9zVFlxUnI3aG5lVUFKVEUxVERrUVhjRmg4NTBm?=
 =?utf-8?B?TUYyRFVROWU2L0hQdXR5REFEUnI5SkxldXBId1Y5WHNLY2NrdmJ4V3VVN3c3?=
 =?utf-8?B?ayt5NjU4YUFzbnhuNDdVQnRSeDM5QnpRbEx1NVptRytNKzFTTUpZZnAxUjNX?=
 =?utf-8?B?Y2FPQVFIMjUyb09wQ3pSSWRTWTRhMm5IQXVuRUpscTdObElNZDNhRjd4TlU4?=
 =?utf-8?B?aVhoNEtaYmFQeTQwak5pQnc2SmNWYUI5Q1ZkTzBXT1B5OWg3amliamZ4Q3o2?=
 =?utf-8?B?VUFxZ2piY010NlZFR3FMR293YTdEZnB3eHEzZE90MGMraEFVZGtvcC9jYUZq?=
 =?utf-8?B?RTBrWENXRm1XN21pRERRb2hrZFAzSTVRUUp6OWlGclZESHgzL1VLSklaS2Rq?=
 =?utf-8?B?amYvRFVNUHhwaGRPbXV6dll3WkN3ZVNZYkQrZldBTjRibzVtM3ViMWVzQ0k1?=
 =?utf-8?B?dDdQNDdZNDMvODdWTGROc0ZpNnRhQlhVRkpMVzBtNFFPZ0VIVG1tTDVzMmxt?=
 =?utf-8?B?Wjhxb0lvckhqbzdOSEQrcUx5U2hhcnVLMXVBT1lSVjAwUFdUT3NveUF2ZDln?=
 =?utf-8?B?UUxzc0pEWXFqcjE5Y1ZuMjBETTJqU0RwMGRRSWs2cjdPMFN2U1hEQURpZ044?=
 =?utf-8?B?ZUtsd21JRE4yM1lkb3RJOFFzYVNWM0RLS2dlR3h2UHk3US9hOVhTN1JpUmlD?=
 =?utf-8?B?UEl1VjF4R2VGV2d4MXBKR0VIbitZZG9CM3kxRDlNK3hUZ2tCdEhnMTJaY0t1?=
 =?utf-8?B?MmlBVlY0aXRxRHJBWUVzQTNCc0JDaE5hcFV1WWV4YUNGM2ZuTytOZ0hLMC9H?=
 =?utf-8?B?bUJCaUt2cE5jQURydVpnWXM4Qk16WkhkeGRoMjRqNFVMWFdqeVdndkpvYUUy?=
 =?utf-8?B?Q3VpOWtpb2F5NmppRjM4OThQUDZHaU9jV3c3bVVGRUJFQUU1YXl3THlWYy9I?=
 =?utf-8?B?K0dXdzRMUWEyU0s3dTZ3dzJESGNvU1hQRlN5VGVZbG1CcW8rRUxDZnVPMlpS?=
 =?utf-8?B?OXRPN2pDSVlwMVY3YStmYW5kMG5NNkV2cElsQkQ3M3FLTmpBd1BvUG5kYm1m?=
 =?utf-8?B?Um1acnJza2NYeEdBOGp5QThyalpsd0VqUTZmUkpwZjhCWWpOWjBCNStwUi92?=
 =?utf-8?B?UmRTMDVHc3krKzlnVVB2aUdPd3BiMnJOUkhyNmNRYVM4UFlMdTlBbjdYRGRB?=
 =?utf-8?B?UFZkY1k4bEJQR1NPYUc5cWhEbi9SUHZJZ3A3WlE0Tzh4UjZ4UjJFVGRGTXQ4?=
 =?utf-8?B?bXBjUDAyTFpEb2hMdURLYnMzL3NYN1JscHVIaUlwVUZJQUY5M1NhZlBvVERv?=
 =?utf-8?B?OVhtVXhYZEgxdDkwVE5qdUplVUplZ0NnbXpMNnU2NVR6V3QvVDdRSTNyZDdi?=
 =?utf-8?B?SXVObjkyM2tPeGRyeWg0U09SajdHQTB3amJJeDMvSkdMSFF0M0czVDg3aHNS?=
 =?utf-8?B?QkhJSGRwYk5VdExvMXVuWU1pckdEL2ViL3BJSDVoUG9OcnNxeXNwMDNad3dV?=
 =?utf-8?B?blgrNE1pSWJmV2pXam1QZjNkZm5Pcnd6UlRGQ0U1Z3NWbEZsMTZsYXIvRzE4?=
 =?utf-8?Q?CCJJgUYGv9U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VFJoSGwxZGcranhGMTBqQkVpUGlJRjdKTXU1UXpac0J6TmFEamt5cHljQmFP?=
 =?utf-8?B?WGZ3ejRTWUlLUnJjL0tPMzFyWmpwZTUwUm5ScjQrTnRGT0JiTDgzTll2eW16?=
 =?utf-8?B?a1Bmc1N2amdvQkY2cGJ5aTFMZTNUNGQwMmlqcExyYlRoVzRvVStvSlBTUmho?=
 =?utf-8?B?Z3NsaTZETXBZRjZkcWROMVF6ZXBhUHlqcForeENqaVJNb0YvTTdjckJ5SExT?=
 =?utf-8?B?cmdPRmVLZHRNeGlwOGkxR3pPaTk5RUZpQTlGTUxDMng0RW1IRGRBZ081Lzlo?=
 =?utf-8?B?R1dnZ0RYT3pNYjh0ZHRMMXRXc1psUHVmcGs4c3FmRlFRNy9wVld1cUh5QW5D?=
 =?utf-8?B?OG1ZOFNZZ0dNMU1kanFoNTczRHVHWW9aOGV6ZDl5UnZYdzdiekNwZHJNdStX?=
 =?utf-8?B?QURSNkI4Z3lUQ0wxZVBvY2J1ZFVKMVAwd2l0R1diMmsrR2k2R1hsNm5yQTA1?=
 =?utf-8?B?cEpLWTZNOGlXc3hxb05jWWsveGpYNi9UWUtzSDBOaG9kNGViM3JhWXdjZFFo?=
 =?utf-8?B?UExmS3VQK2pxcnI4VkoxcXA2M1Q1OS9hOGFIMi83WjVROGhyKzFyN0VhQ3lO?=
 =?utf-8?B?RXBJWHQ0a1JnUmVCSXMzSG94OU5vSldvQ0dQVVpON2w1LytRbEVkOVJMZXVq?=
 =?utf-8?B?SHV1MUcxVkRxR011dHNVNlFIa0pVdlRkTUtKQ2VsbDdhbnAyZkhITjhXYktL?=
 =?utf-8?B?RHV6c3dyQW9BZjlISUt1YUJPN3JvUDhCNEhZanFRTzlnck5WZG1KT0NXdXdr?=
 =?utf-8?B?d1VmLzlSVXdFQTNsVWFiVzJrdHhmTkVPTnh4UlFpc1dkOUJBUVRWNXZEWDlW?=
 =?utf-8?B?K2JYeEw0TmNSc2VTUnFoL2MrSVpIQ1oxZWVsRU1vUXp0cU1rSUgvdG5wQ2xO?=
 =?utf-8?B?ZDFJV01qOFZ5cTdvM2VCOVd0aC9JcTlGQkZ4dm1mMEI0WjYva0NBdnZLWStl?=
 =?utf-8?B?bDBFMGQwazIydVQ1VFR2QTV6bUg0c0o0Q0ZiaEhaZlR3bm9HOWo3cElnditm?=
 =?utf-8?B?UUFmT2Mrc0VXN3JETFBNcFlHUnQ2MW15SWt3SG9LaFdLaUxhVFZwS2lkcFpE?=
 =?utf-8?B?S1hBRUlERXJqd3poK3V4cUVFSzd5T1Z6aGd4U0x4eEluSnU2QnhzRUpqWUZ0?=
 =?utf-8?B?MUFYbFFzbUt3ak1Qc2RLRkxRazkzeUZtZzgxUDJGUmFqSExTT2ZyMUN5T3pD?=
 =?utf-8?B?Z2I4dmtNQjc5ZWtncGR6b3pub2VNcjdoVjV4WndPdFFqci9XRWd6REkvS2M4?=
 =?utf-8?B?aTd3cG5OcGhrdHkxaGQvSWNRdDluQ1VyOUZkK0svM3JUSUw2TVFRa3VHK29h?=
 =?utf-8?B?QTlEbVpIa2N1TWxWZnpONk05dVlyQjl1enFUUGpYd2JzKzVsT3hwejBHL0Z1?=
 =?utf-8?B?M0VsN0tlMUh5T1BXM0E2WmlGNjZwbG1kODhoTXN5SVR3MzNKUzE1VVJUdmNk?=
 =?utf-8?B?SnZtWUNvTnhyTzYxUitOMzFTOTRkWGZmSGNiOERLdkJGMWMzUFR6UHVWd2FK?=
 =?utf-8?B?NW56WXdvY3NLUWh0K2llVlZLTzY2OVJKRjB3MzlMMFBnNGc5NEE0Z00vaHR1?=
 =?utf-8?B?RkhvMDQ5bzJZMnNEcDRrazJxN1FCOUs5dllldC84V0hGeThiZzdMdzNqUjJv?=
 =?utf-8?B?WURleEVnL1ppTyt1WnF5WUhlY2d2Q1Voc3lWMXRvTHZuS2JoTk1Eb1NrSDFY?=
 =?utf-8?B?aFVZeFpLN0NBdktiWnBqY1lkc3dibXJFNWUyL2dSZCtHd2xLYTZjaEhSdHdn?=
 =?utf-8?B?TFhSdDE2dm51c1NwRWxnZEVVTEpFaGZBSnRxK1BkRzRjWnMwTVRiUWZud3ly?=
 =?utf-8?B?Q2VFRE5lRmdrdFRLWW5TY2VFKzByK3NGODdkdUpTUllBMDRzOFBTTWk0Umk1?=
 =?utf-8?B?TTJtc1dDWndTdzhkNmY4cDdVMXFobldaaW4za0NrRyt2M1lSWDN0WGdIbmFF?=
 =?utf-8?B?WGhBMjB3TjBmQ09VeUR0SWpKUi95SW04THZFb0xsQWJRNHM1MmpmTEhoUjBn?=
 =?utf-8?B?NHh3eXJ3VGNla1haUnpJdkNORnA4eUM5QzR3NkNjK2RHT3UwWTRXMnlBYXhU?=
 =?utf-8?B?Z0hOMWFobmZQeTJFazQ0SFF2eFZKVmFKYm1yV0ZUWCtOK2VFU0dUVG1CWk56?=
 =?utf-8?B?QWZXaTk5RDlKZlEzaW8vZVp4a09QUDVLbFlIamwyRUFDTy9oeXVsdGhEYUV3?=
 =?utf-8?B?dEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dcb03cec-8c8d-48c7-1baa-08ddae68e296
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2025 13:06:05.9013 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IZlnS7SUXY8GWGS2QZL++9DGjX1mDsnpoFQ2Ii8iFSiAzflJ9cI/jMcteGMjTBS60+1oLTsloNs+6wgQDyLJVAbaLorpO53Q1kxSecYI57k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8594
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

Please disregard this email, I made a mistake while sending
a bunch of patches. Sorry for the noise.

---
Best Regards,
Krzysztof
