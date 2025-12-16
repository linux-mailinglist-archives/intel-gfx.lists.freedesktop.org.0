Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E44E9CC2D02
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 13:36:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A0B110E7DB;
	Tue, 16 Dec 2025 12:36:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oH0Yzucu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A32810E6F7;
 Tue, 16 Dec 2025 12:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765888575; x=1797424575;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RDS/7Af9G0WXig6UjGpl5PRHgQs4tmruUpSaCMMeH9g=;
 b=oH0YzucurctjsygMAdi+dL29SFpwyfWs2zOILNA7uk+twH0Nnr8qED+w
 BLOFNx1HZiQVy1bMXUWkbsmNaAzT9X1NWdONiHKL5bbBSWBU1ZPJrwZK2
 W8jE+k526g0/pTGPuk18acVvICoO9MkvH9vdicMgw4gJsMsrrzxmWKdn/
 Y0J4g6DpmNpFBSFNy94ZQy+woza229Y+ZuDCCBHDZVwJhnhon41omBO+V
 1EJkjfpLuie7MN0ccJyPfq2Uq9Vo2jhL/3+8gfZ8zRL7vgSrflytzlAuH
 FeuGa8PgtWl7HQO+q8+deJgzJDq+/Utj6GbVmJKh2dp4+c8szLyjxfkRo g==;
X-CSE-ConnectionGUID: 6WKNBQDjTbGocGtMK+AMPQ==
X-CSE-MsgGUID: kI4YZF7wSrGI6sPDuu7arw==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="71656612"
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="71656612"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 04:36:15 -0800
X-CSE-ConnectionGUID: gW8TlSBzTeuq0TKlpx9RmA==
X-CSE-MsgGUID: u4gPsp5NT+SuQNs2V/qr5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="197750361"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 04:36:14 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 04:36:13 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 16 Dec 2025 04:36:13 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.60) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 04:36:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s+SEfR2AE+VkE8jpUpM+YWP1351vDPsVawoBXb2+LJH1PUFGnI5R8bgFKJdJ0sVCMoNC4WndwGh/yGJtW5GIYUIZ1chV+vWvs0fYREmegNFJ/SAuxmxWuRojek73Vd6lI43fstvp7X+XslnXmtOi+i7xYRZaq42f8WPUD14D3RXFo4/jhfBKFKfCKUIUklL/j0x83LNcCquMiZOyfRGxRAnUSv0PewPOabI7e3MQWoLWrs9kxrStTR9hfmAJtMenoOKnZH6IBZpGgJVLkS1+beV8IvT+LeDGj4P/OaZeTwaOXOYAEAzOzDu3rJXf3lAtmKKfa774vzcIGgVBQoRx1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C53WX18MfY83d9dPUvgowF2cHq0Hg26f3ocbiNR5kCg=;
 b=ZOA/9VdP4Sv0k/3mDLR3CTFshWwqK1jgHO/a0Rfdppa7ceZ7IzhZUrgrLGK6Wk+ZRyM5neW0xcFhcw/QFSN5xdgIHh3rVdw5bFPNvLuRZVlFlAfysY5zrc3519+Egzg4V6uIGPTjc7anyyIg+sHJ4rrAZ7eBEdEpXwDpveMOE2xWEMWs/eOCZJkj0bMx27by+HnSCFngIi8nMFZlsyFv3305XRkcaP/BJ/e6IXb90NZVHglfdKBZt6A4vcVzMmC9l9sZl+gc2Z6oiCMcmSLC8oOUNG1W7ndPpu7baa1rd6OK6V+zsZyH/CnfSfvWnxbS9MJzjrumqKyE1EKbgVbjqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM6PR11MB4753.namprd11.prod.outlook.com (2603:10b6:5:2ac::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Tue, 16 Dec
 2025 12:35:53 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9434.001; Tue, 16 Dec 2025
 12:35:50 +0000
Message-ID: <2f4c633b-e8d1-411c-95b8-d382e5b9a314@intel.com>
Date: Tue, 16 Dec 2025 18:05:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 15/17] drm/i915/vrr: Pause DC Balancing for DSB commits
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>,
 <uma.shankar@intel.com>, <jani.nikula@intel.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251202073659.926838-16-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251202073659.926838-16-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0153.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ac::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM6PR11MB4753:EE_
X-MS-Office365-Filtering-Correlation-Id: 69fcc413-6167-4811-8967-08de3c9fa511
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QXRGa3dUdW5Od041N0E0Z3FUTnk0a01VVkQrUWxXblZiMGtEdnU3VDVlQ1Rw?=
 =?utf-8?B?VXpUOUQ3TVgwZjJvV0dKRDBKNE1IU1BHS1NEUkl5a0dnc2gwWFRDc2oyZ1hs?=
 =?utf-8?B?WDV1Y1RaMkZwN3lnZU5tQUVuekpYYkZGaDRacVhMeWtpc20zVGJFU3VRSXJy?=
 =?utf-8?B?WEtTNkptYy9MdnhIQklmYUl5UGM5VzhHVnRzUGgwREVZOUQ2TFlhL2FDd0pX?=
 =?utf-8?B?QVFxUFpUMk5kRlZHeXR4UndJRzF1MHBEbUk3em4ycVlTNVNHRjhQZWJKdGlL?=
 =?utf-8?B?UTRpdVE0dlhrODI1S3RVdWJ4VmxWWkk5Nlk4VmR6RGVsbU5MREQ4QlhKc2wx?=
 =?utf-8?B?K0swR2pxb1NVMlI0RVo3K1lTaldmcWhuR2ZIVXU3MU8wektLWlJ4bStWc2FM?=
 =?utf-8?B?eEVySm92a255WkxtVVZ2bmVvQXBqRVJGV0VNa1Y3bUNNSW9uTnEwcEdxWWJ3?=
 =?utf-8?B?aEdrcmFudDJUdjA5MXoxNnYzUm01blZmcUUwK2FONXJXTXcyMGpiaHBMcDJ0?=
 =?utf-8?B?bEFmUGlWRFBkQlVYVjNHdlQzd2x5TjdJNnhMV2dhN0pXMTBkNTR3RUhQZVAx?=
 =?utf-8?B?RjdwYXcvNGNRQTY5TVB3VCtJVFlXRUNYM3pIRTI0MW1TRnVld0pSdTN6WVFF?=
 =?utf-8?B?aHk1L04rQU5CT0kzYWZxdFdNa1Q1eFRlVjNlTkFkM0c3d1NhZktCVG9odHhF?=
 =?utf-8?B?ampjZGpJQmsydTZNeVFxTU1HRVNrcUVmTGNWci9NYWcyQVpkK21Ra1dwblZJ?=
 =?utf-8?B?N2xGekxSRnRlV2RWZk9SU0tqbFZUT2tnMVFWN1g3TC9UczhUS3Q2Zm4vaUJi?=
 =?utf-8?B?SThTUC9pemxiZlRlQ1p4SGxRK29yS0ZpbWNQdmtSQW9GeHFWN1RtZDRKUTA4?=
 =?utf-8?B?VTZlNFdwU1UyWTJMT1g5THV4SnBPTE1meEtndXU1VzZXaGJIQVcreFY2Rjdy?=
 =?utf-8?B?UkloL09ZMXlDQnJRU3NvK2tRWXVBYTRodHg0L2QxZmNXNlZRa3pFcEJxWExF?=
 =?utf-8?B?M2YvdFhnYng0c2c2Q0hlMXhyaDFCdldPMzhlZnNZejlYWXhPOFdHb3BkZHIz?=
 =?utf-8?B?N0lqdlFTRWp3cThxS1d1d0V3dnlMelRLcDdiVHl0V1NZNXBMYXlrTURMY2pl?=
 =?utf-8?B?cHlvZ3VBVDNES2JSbFlUamN0ZTFHR3RGQkt1aWlSak1QS1VSMlVIQ1VBT3JQ?=
 =?utf-8?B?VElaZ3JQY3BMclEzYU9FbG5rTjdGZVFQU1RZMExPR3o3TVhtT2wwTWhyV2xr?=
 =?utf-8?B?S2NzUVlVVVdaaTUxTXhURlB4dDhNZ2YxL0pKTjhUR0RYcmErUFJ0czdpclVY?=
 =?utf-8?B?UDdkMGNuODlEUHozVjM3UEduVXNRUTEyM0xtcFBoNWNjTUJJeWprWjhFODMz?=
 =?utf-8?B?RWdCWnVIdmVFcmhLQnAyMWJwd2pyajRQb2psYy80NGhZbWJ3RGNwUWl1eVFI?=
 =?utf-8?B?YlJ3UlZzOE9OZlAvbmkxNFpOZ1FUajFaTFJmU05ldmRwcnVERVBTbmtHbU1M?=
 =?utf-8?B?S2o2Tm5aMy84UDhDVTRwTjFYVXYwZE1BZDRqcHVRcnovNVhyQ3dYN0xiUkJE?=
 =?utf-8?B?ZlY4Vk1Tb3ZnYkJQM2d4S0hlbWxHK3RZRTF3ODZNUmVQeWs4dnMyVTJRNlQv?=
 =?utf-8?B?S1RHc0M0Rjl6NHpyRmg3MzlKYVl1bkFkM0lyL3VobTczRkkrZVdBeExoY3or?=
 =?utf-8?B?Mk9HWGxEblNGdG1OQ09vK1JzUUk5aDJLckpnZTY4cXljU084SXovdGJJSWQ4?=
 =?utf-8?B?aGJvYUcybEF5a29RWVlib3ByeHhzTTJDNDNpV29KWWVJby8rSGppUnQ5dWsw?=
 =?utf-8?B?SUZyTW52eXhNNjgwTm9XRkFGLzhtTTJ4WlYram5ibUZLMEhzWGMwZ3Fnb2xl?=
 =?utf-8?B?a2QrMkkzeG1mUFpZTzBPeE5XR1NpejJHNGxMU1ZHSng2clJPNDNES2xnZWVK?=
 =?utf-8?Q?Fc2Wi2AucOXYzwmky9FdtcoF3hSbhVq1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MjBOR0FFT2xSb3BjTUltSjE4ZkpYcXFoMFpPSXZwbFZ1VDYwWkVvaE9uTnZt?=
 =?utf-8?B?SHk5bHB3T1RnOU85cXF3blJJRm1nYnU2eVJ1QU5vNjJxQm83QWs2MGFkQkdD?=
 =?utf-8?B?RmduS042cGovTjFZcFVyMklOTXY4ZVJ6UDBkWTIzNWlvb1dtR3kvenRPVUJ0?=
 =?utf-8?B?RjB2TWhraHJES2s1N3NibHRENmVVbGIxWXhCVjJxbmZ0WkI1c1h5ekZ2WU1N?=
 =?utf-8?B?bzVicXdYdUJvRVl4K3lvNkFiKzg1R25RVmhuM3pjdzZxQnNpUlBZeGJEdFVP?=
 =?utf-8?B?ejVZS2d5T25hOUVYa21FYTR5TStVN0JFWXVwNG9ZK1dNSW5jRWRPUGNQT0FY?=
 =?utf-8?B?OFcwbklyaURieW9UL0J5MVhFQ1RSeU9nK3NqdXdBR2s2d1EyQWJmRVlWaFFB?=
 =?utf-8?B?R1RiTFdEY3dQb1kwOUtuNkErclJvenBFdnJydDJ2aDU5OGVDMHAxeHNlck1z?=
 =?utf-8?B?QkUrb2hBb2dMOXZzdlhJTi95QXZPSkM4Q0tsQ2RBNjZITEdFQzdEVVlPM3lD?=
 =?utf-8?B?R2VNVmhyQlFUb3hUNWxIU2N0UHNHN3NYbm9VeHA2SEEyR0pjL3g2ZzJEUEtL?=
 =?utf-8?B?VlVLcE5GVVBXQm5RK2Ira1BoNEtNOUUvWHE4L3lDblNlMURRZTRYRGpQdGJX?=
 =?utf-8?B?RlVjZk1xY0MyRkdTTm12bldRbkYweVc1ZENqZGM5dnVRczgwUjlkZGNibGw4?=
 =?utf-8?B?QkI0YVVGVDdKR2czYmtPTGtoRFlKTkIzR1RNOWIyZFNlMFpCdWVScytvUFl1?=
 =?utf-8?B?M3RiRzUvUFVrVko4eGRacFloV2xRWDlaUEJucFlpdnFsRDd1ZTA1M1c1MHNw?=
 =?utf-8?B?MFcvbWt2R1cwaWFhTUYxTi83TDRCbkdINElFbUM2QVZaSE50c1AvNm5NS3VQ?=
 =?utf-8?B?UmVFd2dRd0JTL2E0ZGN2NWVra3JDekhuaU9VMW0rZGN0NmU4WklQVEZ2YWFw?=
 =?utf-8?B?ZWZDK2pLbmxnT1lDcC9xY0NuYTYrYUlJYW9HSWsySmtEOUlEZm5INFNZT0dG?=
 =?utf-8?B?ZjlsdjNGTUlZTGZFcExSdkgxdGhjTGdMVEZ0eEpzSHFUb2hnOUFoTUsvMXJZ?=
 =?utf-8?B?alc4dFdIVll5VGxjTnBDS0dZc0p5Uk95Sk1yMGVaTWxGMTY5T0lPK2xBNWJ5?=
 =?utf-8?B?VzdleXhXckhmWk43OWhSYzJzK3A3WlVzYklmai9HVys1N3VQaE1VQU55bW82?=
 =?utf-8?B?SnQvK2FUYVYwb3NSNkNJeHpoeHNoS1ZyMnIrT1RsdG1SZEVNc1g2cEQ3V0tm?=
 =?utf-8?B?cGY4em5PcEU3K1lSLytvcUp3dlBaRFR3WFArZXIxS2FScHQxMXdpajRDMEJw?=
 =?utf-8?B?M1RLNFYyc3liV3hWL0FxalJkMU11aEFZb3FCd0swM24xWnUwWjgzdEFYM055?=
 =?utf-8?B?eWFkQWhtQmNHaFh3NXgwaVgxTTVnbVlINEdtcU5kaGlKbHJWc3lpQmZwcUo3?=
 =?utf-8?B?bU0yaEczb1FaKzBvcHNqc0dOQmZ3NjI3alBYckpnUU9TUVJqYTExU3EyU1ZK?=
 =?utf-8?B?MGQ0YlgrRVJ2ZmVpelZ3bzZZdVVJSmhRNjdYWHpyQ25TVzJmaSs0c1haaUxM?=
 =?utf-8?B?UUQyYlpXcWgrbFdCNjVVUHBhR2JJK1lCTTB4U1k4VHpObEVKbTdFckFOT0pF?=
 =?utf-8?B?WkFPNTV4QVgyR0xJTHg0TSt5aDhKOEtIUGlUNXpwYkxLaEMrYTF6SDV5M0RR?=
 =?utf-8?B?bzlPaWo3TkRUSTluL1RDcFB5VDN2QWxYRlQ4Wk9kZTRLREZTSjZiNld2ZTJN?=
 =?utf-8?B?SGtyR21lLzVXU3NOWHR3emdrRmJ5ODJQRldiMVMrd1RrcjF6WC91ZlZaenZv?=
 =?utf-8?B?WlNXMVJlZHk4d0h3Qk1hZFUwYTRsUFhSeWVqNGNTdGhhZFlCdDhDK0dYMURl?=
 =?utf-8?B?dmZpamZlV2ZuMnhXVExiWUJTSjZBcDlsQU8zNmR4SjhWWTZwbmRNQ2loMldY?=
 =?utf-8?B?MWtra1pyUWM1alY4SHljWEJ5eTJBWHBnNEU2L3ZHMkVtcm54bVhER0FoeU5P?=
 =?utf-8?B?cHJpSUs3bVZKYnZNSnhVRHM4SWpFYTdaLy82ajZuN0E4alFRSnNVTzF3L21I?=
 =?utf-8?B?WGR5Z1VNNzdmUk5EUlpoL3dkaHlCQ29zcllMUmV0MVM1L2ltZDNmMk5KK215?=
 =?utf-8?B?SWRGOXRrV2JtaFMyWHI5czIxUUsxK01vanZDbkN0YzhSZEZQdFJpdjlhMHF2?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 69fcc413-6167-4811-8967-08de3c9fa511
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2025 12:35:50.8974 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fYRd2dJUoKpXwNwPWUkvh6ygU+npS8YtILIo1WcATUxB1l4zYsVKBqws9N7cg++3KHwFFcbncaI1jLWBDQXcn6XW/tQgNzESXlzd6Oyb1RM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4753
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


On 12/2/2025 1:06 PM, Mitul Golani wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Pause the DMC DC Balancing for the remainder of the
> commit so that vmin/vmax won't change after we've baked
> them into the DSB vblank evasion commands.
>
> --v2:
> - Remove typo. (Ankit)
> - Separate vrr enable structuring. (Ankit)
>
> --v3:
> - Add gaurd before accessing DC balance bits.
> - Remove redundancy checks.
>
> --v4:
> - Move events to separate function.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 19 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.c     |  3 +++
>   2 files changed, 22 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f9a779c555cc..3dbad592832e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7321,6 +7321,21 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   		if (new_crtc_state->use_flipq)
>   			intel_flipq_wait_dmc_halt(new_crtc_state->dsb_commit, crtc);
>   
> +		if (new_crtc_state->vrr.dc_balance.enable) {
> +			/*
> +			 * Pause the DMC DC balancing for the remainder of
> +			 * the commit so that vmin/vmax won't change after
> +			 * we've baked them into the DSB vblank evasion
> +			 * commands.
> +			 *
> +			 * FIXME maybe need a small delay here to make sure
> +			 * DMC has finished updating the values? Or we need
> +			 * a better DMC<->driver protocol that gives is real
> +			 * guarantees about that...
> +			 */
> +			intel_pipedmc_dcb_disable(NULL, crtc);
> +		}
> +
>   		if (intel_crtc_needs_color_update(new_crtc_state))
>   			intel_color_commit_noarm(new_crtc_state->dsb_commit,
>   						 new_crtc_state);
> @@ -7374,6 +7389,10 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   		intel_dsb_wait_for_delayed_vblank(state, new_crtc_state->dsb_commit);
>   		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
>   					  new_crtc_state);
> +
> +		if (new_crtc_state->vrr.dc_balance.enable)
> +			intel_pipedmc_dcb_enable(new_crtc_state->dsb_commit, crtc);
> +
>   		intel_dsb_interrupt(new_crtc_state->dsb_commit);
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 4c1470dcd3bb..38dc4f87e6fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -10,6 +10,7 @@
>   #include "intel_de.h"
>   #include "intel_display_regs.h"
>   #include "intel_display_types.h"
> +#include "intel_dmc.h"
>   #include "intel_dmc_regs.h"
>   #include "intel_dp.h"
>   #include "intel_psr.h"
> @@ -824,6 +825,7 @@ intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
>   		       crtc_state->vrr.dc_balance.vblank_target);
>   	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
>   		       ADAPTIVE_SYNC_COUNTER_EN);
> +	intel_pipedmc_dcb_enable(NULL, crtc);
>   }
>   
>   static void
> @@ -837,6 +839,7 @@ intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
>   	if (!old_crtc_state->vrr.dc_balance.enable)
>   		return;
>   
> +	intel_pipedmc_dcb_disable(NULL, crtc);
>   	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
>   	intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
>   	intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
