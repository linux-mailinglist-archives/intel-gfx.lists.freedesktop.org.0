Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A46ED9A4316
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 17:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96A5B10E195;
	Fri, 18 Oct 2024 15:59:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TG5BHWov";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACBB110E195;
 Fri, 18 Oct 2024 15:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729267173; x=1760803173;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=hyL7jpvArFx7UnM8RNipJC9Ut7HKWGGZDf+FsiX78lw=;
 b=TG5BHWovFUrZ+M8Fb2nApyYPoN0ndrpyDkwnvn33Z6ZD33ROkTTGyO5y
 iBWJsb/W/VniGEBQVdbXjyBIa8yW++r2YhmLsst6yn+GSBLTje729Wt67
 nSOO9MfE7C5b0oE6meZpT24hrxqmpFmL/XgXndUpT82BJUJGFMhnatdeN
 g73zy5BMIRMg4Gx7GFHNuj2B9QrmJXRLi70b/LWWf5U13IVo9ARZsZdoP
 pW+d1WIsCv/rfm+3QcnFmxQIXnbhXV4HFIQdxLA7BdSSQXa1HYRSZJVct
 CfnS8oUZcJ5XNoYv8zjwVB6chlPAACYcjEeK7PhDed2TaJ2mBUpMrh3md A==;
X-CSE-ConnectionGUID: kr1m43P6StyEz2wZARnBkA==
X-CSE-MsgGUID: sKq1vI49Q+eKmxkMf0elQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="32489515"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="32489515"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 08:59:33 -0700
X-CSE-ConnectionGUID: ioww/cEzQJStq87HhYXLpg==
X-CSE-MsgGUID: JtPnwM1mQN2kwUiRCCBQ2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="78861964"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 08:59:33 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 08:59:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 08:59:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 08:59:32 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 08:59:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ob1x+GIqfYeq5iRA5J7PfizMo9woyFGUUCMqQmH8PNq/j7MZnpJ4AsH0ZIOzvTRIej2QMVRJotwC/m5XZVad0KeExIOBXaAUpLUazA+JmdLlA81yP3clNBvL/bSHe+Zg2MIyFo29NIsjQudR3CNH1s6Z/6SVsQOU3t7/i6/PX2EU3HzgBotMbcw5R53hLS4ZaLmjyebCZXWPTZFSAdrZgwCU7FkQxoOiGZ3YFo9uN0mogtf9GjXflg9CzWaq5Db3SLwsSgOlR370nI+6RpToy2K+sBBZCEZICB2UNCH+3oDfWoHTnQN7gYuz2Q1+NzdhibfSBdTUwW01SOYBBA1hgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RLFPLIh4Wwvlao7i/Gb3efcQ6IYbWFMhA1DnGa12lwQ=;
 b=XclhkyWn22TagoEUGLuyEUYpx7KS0tn99wEyZxUt/EvWD7zFHXWjLRL/fs/FRyRbZ2C3tpj6WhmoIJxpHCpmNnaA6+lhb+oKPJ2jt2lQ9xTMQrkZSWsfoD0O7vsNAkuAPbiScLcU8g7ugdbEsTa7MagHwohPfcfMVDiT8bEYARyQ1dWprXNtdn2uY73zQlPIkOvDZUzy35wKWgaz/jbz/ZdQMJRHyKHMJ4e5UvA/Q4KflwfOdVifgIye4pUlkl7ARrd/NDtFJH3b3h5cXfI79FsYbli/vAkBFyfL6T+zvnhsIHUOyAbWjNeLs2cFdS6kiaLHFntpbiaj/WmzaEGtzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB7081.namprd11.prod.outlook.com (2603:10b6:930:53::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Fri, 18 Oct
 2024 15:59:30 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8069.016; Fri, 18 Oct 2024
 15:59:29 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <864c8944-6cca-4cb8-b02a-19cd4d172081@intel.com>
References: <20241017205444.102979-2-gustavo.sousa@intel.com>
 <864c8944-6cca-4cb8-b02a-19cd4d172081@intel.com>
Subject: Re: [PATCH] drm/i915/xe2lpd: Update C20 HDMI TMDS algorithm to
 include tx_misc
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Fri, 18 Oct 2024 12:59:24 -0300
Message-ID: <172926716448.2355.14213276307122273402@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P220CA0021.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::26) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB7081:EE_
X-MS-Office365-Filtering-Correlation-Id: 3cd0ad0c-d79c-487e-d6a6-08dcef8dd95f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SzNNUlNGY0ZzMTFFdEw2aVdyMS9JSSswNG92RTUzNUo3aDdZTXBlUjNXSXUr?=
 =?utf-8?B?K2dQMzdmWGE3aGNqVjFHUGpZalkxZ3dUSHE4aTBUNTBqNHdsNHNybnNNKzV5?=
 =?utf-8?B?aklXWGdjS01XVHJvaDE3Mi9JNC9iTmlkcWZrbEhuU1BGZXZKTFlKK2d2VXhF?=
 =?utf-8?B?RWRGeTZuZDdhV3UxNUsrUFFHcFhzRDRhT0ZLOTB1WGl5QkdCcmkxbFA4dWpE?=
 =?utf-8?B?NVU0QzJVV1hhR2hJeG9QL2FBd2s2MmRkSzVLNXp3NFpMaUZDSDNuaFBmQUt1?=
 =?utf-8?B?Y2FHTm1tamJWWkcrMFdiR0R0RjNhRzlEN25oS1I1UHd1M3BpVTFPSnoxejFj?=
 =?utf-8?B?VURNTXBXQ0tPTUx0U2J4QlhOaVlIN0VqL1BFOFlzbWxXTThPNFVVb0h1UEhJ?=
 =?utf-8?B?WjZzK054Vy91dnBZWUtLRHpoUm1qU2F3clFEQlFPOE5TYlppN1R4MGlTTkVr?=
 =?utf-8?B?WGMxejZzcmZoNU0xdTl0c2hlY1BOem5mSFVDVU5SeXBUMmZOL0pFb1dzOHhr?=
 =?utf-8?B?K0MrQVBDQXVlSVFSSHBsQ3grVDZQTXkySm44VUJGL1QzWlhKVnhGWXB3YVQ2?=
 =?utf-8?B?V2M4V3J6ZU9BdGtsbmlQRldtdjZqbWRlR3VSaHVxTW9CZy9SZVR0OFRoZ2xD?=
 =?utf-8?B?RGNwVmxRWjFScU1FS3V2N3FoNXF6VzEvWHZ1K2gyUWdWaWNqdG9RR3JyTXVC?=
 =?utf-8?B?bkRqN2krMkFENFMxU2tsanlFTGdzMzNTcTZURDVZUFlJN3FSWjh0c3ROTUpK?=
 =?utf-8?B?VXNJVXkyOFRIVE9LamVwOGx5aFlPYWtlYXNyQXNTQitCT29zWS92aEl3V2wx?=
 =?utf-8?B?alBzU2NQTVAwblNpbXltdkVXbVIxaC80NXg3MERzY1pYVUZ5eEVsTExjOVIw?=
 =?utf-8?B?ZVArRSsyUm93Q21xZ201SFJzelRxT21LOU5mYzllTGtCU3F4SkNJQXByak56?=
 =?utf-8?B?U2M1QWRici9ZZDY1MkorTnVYZzZudXAyVDJ5SEIwUW9lOTBLcXB1Wkg5Z3Va?=
 =?utf-8?B?bWxKUEgyejMwNUpkQ2VvYTFTVy9xREVDY3N5YzFXQmw3Tm9KNEdXeFUzU0lm?=
 =?utf-8?B?ODQ1NitkQnJIdDB0Z1RLb0tQWU5PNGdTdGJjaW0rdGxXb25sdE5NUUh2MzFa?=
 =?utf-8?B?aXBWNDd2bUpJbzZhUjNYeWJ3ZkJhV2JuREZ2VzRVN01VTC84RUNFUkNVNWtw?=
 =?utf-8?B?YXd5S2xITUdmSEUxT09oSVRPMXdCYys3MkI4Nkh6bUcyRHUrcnV1Z3ZCTU1D?=
 =?utf-8?B?Z3JURlZxTjhMTXc3ajNpRXBFdnNTbVl6REF2dmxScHdPZTkzdWtGWGRlRDU5?=
 =?utf-8?B?NmxINUV5MVRUTTROYnRPVXNLZ0xoSmhKRmp2UHkvQTFjU2JlZTVXWmx4N3p0?=
 =?utf-8?B?KzFsRlJEOHF3Z2tjOEpybzNPWmlaUUhtMjdENXBuUjJDajZTbk4rckVjRWVU?=
 =?utf-8?B?dDhybVJaWXRDNjdZZmRNWFhOK0VROUJEREJoU3huWW1NUVJnNFFLNy9aZVlS?=
 =?utf-8?B?QU9BZGxBdzBFSmpCM1d5VmZKWDUxeTQxelY0MG9IRUxkOUxIMG8vU1I0TDlT?=
 =?utf-8?B?bXRKaWJ1RlNsOFNDamxmNkF1ajVlcCtwZWdVdnhDMmJlL1VCQWNVSm1pZVNU?=
 =?utf-8?B?R05CMjRFaTFlQk5kUE9jcHFjRSt6N3o4b3lxWE4vSEtBZ2hyK1dJSldQR0dp?=
 =?utf-8?B?RGlkWktOSzFsVkd2b0hJd2lNc2crZThxZkcwMEhPL3lNbFAwb3dLVVRjS2l1?=
 =?utf-8?Q?2N5Vpmo6xq3EKzHKD6+WTAXs+Xt21h9E2RcCXWs?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXBZTmRjKzhkLytza1JUOWIvKzBqNW1IbHlqcko3Q0ttSUVWbnVIUlhyTU8y?=
 =?utf-8?B?Z3R4OXEyL1ZWZTZRd1VaNlJvbUxWQy8vRUxWTnVBd1N3c2NUdVJuTVZ5ellV?=
 =?utf-8?B?dmp4YmxlZXhzRnNmdUNWcjIvSGdIN3M0RFVLYmE4TjBBOVUzZWN0RUo3MGR4?=
 =?utf-8?B?NkZIVTNOVDQrU0M2aE9uZmtGUkRPd0t2dFlvTjJON3l2YVAybWZzZTFQMFVG?=
 =?utf-8?B?alc5dlM2MklrSDF1VWRWdml6eml2SXRiTGx4QTFEMndXRjlKcGh0cHYvUzlm?=
 =?utf-8?B?UGxXcDBzMTZidzBzK2NOVFBsWXkrTG0vUnljWjZHRzZKYlFuYjdOTDNWQkJ5?=
 =?utf-8?B?SlJxYUNiM2lBbWFDUGVsb3pvemNZWkkzRzVDazEzYm1tVVhla1l4WTNtcndH?=
 =?utf-8?B?MS8yTWNRak1WSjArS1dWOTBxMmpxVU5vZHhsL3Avcm4wSmNOR0Y1NWRQZDJo?=
 =?utf-8?B?UUxHMndqYXo3Zk9mRWNFWEtjY3EvYzFOYnZIYjBiRDlaalJoVTFyVVB0dUps?=
 =?utf-8?B?K0RjeGF5WlkzT1JTNG4yMm04Z3gxRnJoVEpQRlNiQ3lJYWtDampNYy9CYjNF?=
 =?utf-8?B?V1J0OC81WGx2dkE1ZVpic3kyWFVSM3hxZ1BjOFdFVlM5bFJiRUp5dG5neEZG?=
 =?utf-8?B?dHM2Q25wd2FqWUJ5K3dpZ21jMjh5YjlkVUx5eExKWmNmUmVGNlM5aDBOK3Bj?=
 =?utf-8?B?WmJONjB0VERNQ04xYUlYSngzaUZ5TVhOZnVlZ3dvenROVFQ1M2QyNC91aHp5?=
 =?utf-8?B?Wm1kWEQ3Qm56RlBCeC9kRHVUV0o4eC81SkRZZ3lERVlHVEhEL0R6VU44b29H?=
 =?utf-8?B?ZUxJR0ZBVVBaalYybFYzNWVzcEJRdURXcVcreTdjejROSXJFS3JvT0hzRGJu?=
 =?utf-8?B?bWRIVFlTY2R6WW5PdnpGdm1lYjdaYkd4SlJBOXpsQnB4bEdjSnhGaEEwekdz?=
 =?utf-8?B?eDFodTUzUk5FWXMyNUw3ZnMzUmo5RmRobjgxK3Y0WUVVSnJwS09oVVh4dldU?=
 =?utf-8?B?bFJib1E5YUU2UklXSmNGR0o5Ynh5UUdGeFJQMzd5L2pQVThwZU0wNC9ScENi?=
 =?utf-8?B?Vk5iNmMzRTB3b0lwWjhNVjVGNXF2UFpzN01LNU9uZFFWZTUrRjc0ZkZFYyts?=
 =?utf-8?B?aVVHamx3b01mbW84MGFiMks5dnExcjRHMnRJM0pJT1ZKM1hvQnNFam56TVhB?=
 =?utf-8?B?dFlqaHlKWGR6ZXJtMFRBM3Q1czcvQjcrMEk5QlR4aDVlRU5pczcrdHNjRG1G?=
 =?utf-8?B?U0svYnhPUUIyb0ZXSk8vSTBSNnpUQTJNNkdTMXVzMDUyRStnSkxpcmxZS01S?=
 =?utf-8?B?QWpVa2RwRzAxYmdoNkZYOGhGWTR4NzlqSy9hZmp5V1JCMTRKOVNxWVRETnRq?=
 =?utf-8?B?dXdkTHhhN1Zqc0ZyajVpdExZc2pDLzJTQjhGY1ZGeUJGUnEyQVNWZUNWbUtq?=
 =?utf-8?B?VndNMERvcUtCQlNuN1JiK0FHSFNWeDFxQVlQVFFUMjdqMEg5MSt1T3NaZ0JI?=
 =?utf-8?B?dFdFclEybk5kSnIzU0NxTWZKSVBxbzY1bE51NktVNkdJZ29qcWtlSnVkTjVY?=
 =?utf-8?B?cFBCeG0rbWl4MVFMSk8xZldQQTlveVVGUEswNzVwZFM4SEhmb1NNWnBPWXdV?=
 =?utf-8?B?SFA4VHpHTVluVzdmUm5qWnpXdWdRTG9WMFA4YWRCK3VKZWNvYUptbWRqQ2xB?=
 =?utf-8?B?N0NBeWo4MjZNN2hIazB6SlAwM084aUcyYzJRdVpxelNwbFY3bjE5NklndDAr?=
 =?utf-8?B?TERpRndYTDY0aG93aVVIWjhnaWZPQ2xXdHluQzhNdHdvZVpRb1RuYnlVL0xE?=
 =?utf-8?B?VVJMV1dFWmVVVWlkQU0xYTZ2Mjk4VFljdHBxZE1VaG5maDFFT2xDak5EVUU4?=
 =?utf-8?B?YmNxZzBpUHZqK1RmdnVsOWd6QVR0M2dZa0NoREtXdDNhcUluV1ROd0JZTEJm?=
 =?utf-8?B?ZW5EWGpIKzlBemhaK2cveTI0UGY2QWlMcFFTVDBrMldvV0ZaQ2w3WXNZWnRS?=
 =?utf-8?B?UTBuUTJ4VzBZamY4YjFPRzdLUDEwMXdmY3JKbWF5OTUvdERMMUlvMk9mRVg5?=
 =?utf-8?B?T09QUHhCZDZ2ZTN4T21oblgvUmZFeEY5bVZhUE1ySGdLdlFSZC9BWFpyRE41?=
 =?utf-8?B?M3pHT1B1MTEwbWxiL3lER1JwUnQrZmt6UUQrLzc0d1M5b0NlVEpaSC96SHg0?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cd0ad0c-d79c-487e-d6a6-08dcef8dd95f
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2024 15:59:29.8829 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GJt1hnRWMkYP/ZoSQait0ZMxnreWhCRBWVphOEDDklOrZ3AqTiG1oZG7ISXSRWnm+OFdCkkWqRjj3FxpwSDdLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7081
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

Quoting Pottumuttu, Sai Teja (2024-10-18 11:16:43-03:00)
>
>On 18-10-2024 02:23, Gustavo Sousa wrote:
>> There has been an update to the Bspec in which we need to set
>> tx_misc=3D0x5 field for C20 TX Context programming for HDMI TMDS for
>> Xe2_LPD and newer. That field is mapped to the bits 7:0 of
>> SRAM_GENERIC_<A/B>_TX_CNTX_CFG_1, which in turn translates to tx[1] of
>> our state struct. Update the algorithm to reflect this change.
>>
>> Bspec: 74489
>Nit: Would 74491 be a better Bspec here?

Oops. You're right. I remember having that one open as well while
implementing this, so I ended up copying the wrong reference. Thanks!

>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_cx0_phy.c    | 17 ++++++++++++++---
>>   .../gpu/drm/i915/display/intel_cx0_phy_regs.h   |  2 ++
>>   2 files changed, 16 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/=
drm/i915/display/intel_cx0_phy.c
>> index f73d576fd99e..22184b2d5a11 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> @@ -2142,8 +2142,12 @@ static void intel_c10pll_dump_hw_state(struct drm=
_i915_private *i915,
>>                               i + 2, hw_state->pll[i + 2], i + 3, hw_sta=
te->pll[i + 3]);
>>   }
>>  =20
>> -static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct inte=
l_c20pll_state *pll_state)
>> +static int intel_c20_compute_hdmi_tmds_pll(struct intel_encoder *encode=
r,
>> +                                           u64 pixel_clock,
>> +                                           struct intel_c20pll_state *p=
ll_state)
>>   {
>> +        struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>> +
>>           u64 datarate;
>>           u64 mpll_tx_clk_div;
>>           u64 vco_freq_shift;
>> @@ -2154,6 +2158,7 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pix=
el_clock, struct intel_c20pll_
>>           u64 mpll_fracn_rem;
>>           u8  mpllb_ana_freq_vco;
>>           u8  mpll_div_multiplier;
>> +        u16  tx_misc;
>>  =20
>>           if (pixel_clock < 25175 || pixel_clock > 600000)
>>                   return -EINVAL;
>> @@ -2171,6 +2176,11 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pi=
xel_clock, struct intel_c20pll_
>>           mpll_div_multiplier =3D min_t(u8, div64_u64((vco_freq * 16 + (=
datarate >> 1)),
>>                                                     datarate), 255);
>>  =20
>> +        if (DISPLAY_VER(i915) >=3D 20)
>> +                tx_misc =3D 0x5;
>> +        else
>> +                tx_misc =3D 0x0;
>Looks like tx_misc changed from 0x1 to 0x5 and not from 0x0.

Yeah and it looks like we missed doing that update. However, I'm not
sure what you mean here. Do you mean to use 0x1 for the "else" case? If
so, then I think we should not do it. The change was from 0x1 to 0x5 for
Xe2_LPD and newer displays.

--
Gustavo Sousa

>
>Thanks
>Sai Teja
>> +
>>           if (vco_freq <=3D DATARATE_3000000000)
>>                   mpllb_ana_freq_vco =3D MPLLB_ANA_FREQ_VCO_3;
>>           else if (vco_freq <=3D DATARATE_3500000000)
>> @@ -2182,7 +2192,7 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pix=
el_clock, struct intel_c20pll_
>>  =20
>>           pll_state->clock        =3D pixel_clock;
>>           pll_state->tx[0]        =3D 0xbe88;
>> -        pll_state->tx[1]        =3D 0x9800;
>> +        pll_state->tx[1]        =3D 0x9800 | C20_PHY_TX_MISC(tx_misc);
>>           pll_state->tx[2]        =3D 0x0000;
>>           pll_state->cmn[0]        =3D 0x0500;
>>           pll_state->cmn[1]        =3D 0x0005;
>> @@ -2266,7 +2276,8 @@ static int intel_c20pll_calc_state(struct intel_cr=
tc_state *crtc_state,
>>  =20
>>           /* try computed C20 HDMI tables before using consolidated tabl=
es */
>>           if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
>> -                if (intel_c20_compute_hdmi_tmds_pll(crtc_state->port_cl=
ock,
>> +                if (intel_c20_compute_hdmi_tmds_pll(encoder,
>> +                                                    crtc_state->port_cl=
ock,
>>                                                       &crtc_state->dpll_=
hw_state.cx0pll.c20) =3D=3D 0)
>>                           return 0;
>>           }
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers=
/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> index ab3ae110b68f..c1949aa1b909 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> @@ -280,6 +280,8 @@
>>   #define PHY_C20_B_TX_CNTX_CFG(i915, idx) \
>>                   ((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_TX_CNTX_CFG : _=
MTL_C20_B_TX_CNTX_CFG) - (idx))
>>   #define   C20_PHY_TX_RATE                REG_GENMASK(2, 0)
>> +#define   C20_PHY_TX_MISC_MASK                REG_GENMASK(7, 0)
>> +#define   C20_PHY_TX_MISC(val)                REG_FIELD_PREP16(C20_PHY_=
TX_MISC_MASK, (val))
>>  =20
>>   #define PHY_C20_A_CMN_CNTX_CFG(i915, idx) \
>>                   ((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_CMN_CNTX_CFG : =
_MTL_C20_A_CMN_CNTX_CFG) - (idx))
