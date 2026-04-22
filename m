Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YA+jH/jg6GmeRAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 16:53:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9ADF447900
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 16:53:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 647D310EA68;
	Wed, 22 Apr 2026 14:53:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MX0QFt5b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 781E110EA55;
 Wed, 22 Apr 2026 14:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776869621; x=1808405621;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r21iCySGqO72yWbrSsj8BbTAe+PztFZLx6Y5JAp9uo0=;
 b=MX0QFt5bvOTxOb/H3uhkMlrmciTLCXx9jFca+Dm6ymieB4ubMORx3ayX
 pbAtRhvSeIZ79/7J/+QUQscKZRMbzkhxgU01AEWletrdtJbCzuqEXHhVq
 LFVdmHJXxFquk4Z0bPweTcx4JQVlBm9Ax+hAT9YrhHAZtZS9BY7rzKBRF
 yY6j40fE748pp5wC1C77CyCaWEwaCUrN+5Qh8B86i6pNXOm2qEW+1n4HG
 OG5Sjc4yD0/oiVDVhPkACxujFY/cN+OUUnuaGp5FHdr1+f4Bg/u2c/yiL
 rFQzcFWC29IQMEMv45HhylfpM40E6pTZZoBqNFrOyveG+zqA9GO37VF2C g==;
X-CSE-ConnectionGUID: jkh0j7ZRTIeqZbL+kxqRvQ==
X-CSE-MsgGUID: yC7D+ucwSKuCH8iv0WUz7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="81434706"
X-IronPort-AV: E=Sophos;i="6.23,193,1770624000"; d="scan'208";a="81434706"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 07:53:40 -0700
X-CSE-ConnectionGUID: Ha+tFC7PTo2jcg01i1PSuw==
X-CSE-MsgGUID: BwjG+IS/RKGgP/A7f9TFRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,193,1770624000"; d="scan'208";a="229704907"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 07:53:40 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 07:53:39 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 22 Apr 2026 07:53:39 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.40) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 07:53:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OPRZcJRz/fl1CDUldZU1nxIhM8LIUUuNI5fu1egYXb+RIJI8hhStah6YUIM97dM5/vPFL50ZyLf9dgy6BKkl8FezzQr8figh+jvESQJtyJz0oC02xDNftWQt2P9C2KcAQop6XXGMWBum+SVuIjC3OzR/wVhoQlxd2JO3VWl/OnXDSZCCxTB5eRcN03lT0dTMQt823dvE4uOOawwUhDMQHwLn5SLy1pIxiRKaEZs6oohYCzfCSQ0IgIsjKe7MUMge3OrTYSfyidNSqSKyatTmy8NBTnooajXXzOZ1FS9oXDgOeXS2iutbjxso1o61nlotEWODP9nBkQrDgBf8sV/q7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KqPewp7HWJeaYPfKm3TL31r2dosJuNiz8ueGyblLDPQ=;
 b=RYbLvlpXvuYRrqodn/QV40DZZGTSRTsq0Wd0cAxWwMGOFReLSePwwINkFRR0hsMThXbQrJD/gpGrmKBvoEVtcu6vARid2NCg/IVoVgBkFXsYbNsMv/NTv8pinxeV0PW50mFfH5Da6640aSzZFsAR66O98ONaNesSYTZu0RSdd0qKronhyFL/N+fo/g3AbYE+1kbkWd6N+5khNFVcyLkTkzflq/C4DOzRsb107G45O0A7x2i2NLAGECLl4ANrPpfkZ9MfVSboXvMG4YyhXqOQybYFH8zqZs9OQ7rAaAmbyHLImtwCV2ooLXuWr2Q/3B46j+232nbv0WJDhkAQMsdPUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.20; Wed, 22 Apr
 2026 14:53:34 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9846.016; Wed, 22 Apr 2026
 14:53:33 +0000
Message-ID: <f7c62aec-e8e4-4a97-997f-e6b0d94784de@intel.com>
Date: Wed, 22 Apr 2026 20:23:26 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/19] drm/i915/display: PSR Add delayed work to exit DC3CO
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-16-dibin.moolakadan.subrahmanian@intel.com>
 <DM4PR11MB6360B0C68F4C91CFA236A682F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DM4PR11MB6360B0C68F4C91CFA236A682F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0052.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b8::9) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|PH0PR11MB5013:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d465e66-8bbb-49ab-862d-08dea07eed1f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: p/Vmn8ia4E4VWuJpBaFJWOIp+OqCQe0t8UcOV1K7/ogBcxYupEKNJTToi2wbgdJ3854tWbWXM52vNliJC1h3zGeR1nludSCRjHRqkYSlq0N+CqZ8bS6E9jYOjjitYIhtVfCRfUnDuerJeTsXk5F+RHhjDOt5/uz908lAWI+ZpFM/aZTzYEvz5KBMk/EAk9I0OOOOVo9bV5dW/FYBFCMP09OnEtgUFW7LAeKLcVKsEIi7DROyio9LdCkaOVmAmG/pPiH3u8yZrhzCBMuAeneyzbuGe0R/6zf3+cySebx1OfUCvvz3KozFQdvzsuJgta/zL8pz18jRThz88eq+IBnasNPgViOz6Kh0AV/prSa8cEldo+nuarNP+fbc+Bd3UYpt9utgelmaXsKGamRcuXFcHjEjYs4+jyWP2wbv8oKIz1GEA0lqkUZ5r8iZ4cEWaBCulX/jesRX7pHwWimIuRQ3aiToJQUMSKSfOSd11DZpzL/1CoV1xWlHFujV75PLtl7dDHiwnvFZxAnMRsgp7aySDvnuOc6OxA9NL0bbw/VtWRKkoEed5D1mpvAWINIDLqL63U026ZKCcqNX6+jjB6zdrzSbxJdIhZF94QH6oQQbX4tdVV0cvZnpkzHOAu4R+nvgBBA8FkkrsHb7TuWiPwXPLF7bNX0LOcr29AHIpbmrx4JYp8ftdPsvl4O7bATnWVTrbpRbVM3EDHs5cr8iHZ25YhZqvhjj3lf/yR7qMj1duWA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnFXVzAwYjh6MXJ5VFpndGJjR09CbTFlTDl5MUl2VE1YejM2dkxnejV0YnYv?=
 =?utf-8?B?ZU1nTFVZb1p2bTBFcXJPbEhNTnF6NXNSVDFGRy9Vc0VoZnM2RjBPYXJWTXdC?=
 =?utf-8?B?Wm1Fb1BGeHVHanJraFVoak81aXVBbmtueE5VTmJCb1ErMGxzTHVsMkpsRE9Y?=
 =?utf-8?B?NFdKL2l3S1lxU0Y2ekxVbWhuSWtXaFBranJsV0lrUlNPcTlhWWorR1d5aU9L?=
 =?utf-8?B?UEJKNnNSbGpMNmh2K2NobVNHYit2YytSQ3dWMU5waXlkRUIra3lDZ3hIMzlL?=
 =?utf-8?B?US8xaGlFUlNCdFVRUDVMeUVBdGZXVVQrcmk1L2R1QTZaTWZjTlZ4Q0VPbEdr?=
 =?utf-8?B?K0NDM0EvVXpONTVwVXBYeTNpUXg0RmhacDdsZ21jS0Nkak4xeStFRjN1WXNp?=
 =?utf-8?B?a1ZBa1o5YzRYRDdTZHZ1TUJYWmo0aUdEWUg4dmM3SGNXVnNMSlRWUFRuRkZl?=
 =?utf-8?B?cG5CZUpYRFgwWGZSa1dyQVhJZGF3VXArUVBPYU5OSDFqaVV2SWJwUzFpQjA2?=
 =?utf-8?B?QzE2WmpBdEZwaXVTZDNWWU9YNVhsNGVIWUx3WDVCVFRHeW1SZ0tVaWV4VXJ1?=
 =?utf-8?B?UnNNbTBySzgwSm9nU3g3WWNLTkQ1YUFZUDBkZEZZNUNTUWM4TlR3ajlkUUtH?=
 =?utf-8?B?d29VZFNSRzQ5TWo1THhPaVE4dkR1UkJqMzkzcFpEekkra25uQW1sQzQ4eDNI?=
 =?utf-8?B?Q1J1N2FCTThUc1I0VkgwQTdzVk4zYlkyMXFsZFpDV3N4OFVCWEZDdFlpNWVr?=
 =?utf-8?B?ZTQ1VXBhbERVU040YWdqT2UwOEtWbStoS2M1dnROQmNuZ1VsNDNpRUhtSG56?=
 =?utf-8?B?ajlrKzFjb0FwN0JCWjZjdlFuRFJkTm4yYzVLc2FQUVFuNjRZeHIyUk9NZTJZ?=
 =?utf-8?B?STc0REc3UGI2aTJpbzZZcGVmS0J4Umt1SUIzanphV2Z4THdlK0lUMk1wMUdZ?=
 =?utf-8?B?YW9TcmxQQjdqUi81V1FnRXAxUDhLblVLWVUzVVlJMHpCaTU5TlBPU2kzMU5v?=
 =?utf-8?B?Q0VYdjhxbTFkQTNHdWRBbnJjakNDUmRWTmJUOG9aQVEzWm0xekF6b0NEdDhV?=
 =?utf-8?B?MitPQnVlS0ZIYmc4OGNlQUxaSWtXbTN5Mys0U2tmM1JhM1YzTXhUUlJ2WExs?=
 =?utf-8?B?YVRESG94bVRVUitNSUdaWmR1bkdLbFM2a0lmSEIxbTNuaXBLbGxJRDJ3S0VN?=
 =?utf-8?B?SXlRVE1zN29kcEFpbVlmTjg4QlAzcjQyOS9GUWFjT1k4S2ZXYy9Xek01QUtL?=
 =?utf-8?B?aHN4aTJlNzEyeFZoN2p1UEV0eDFQVXFTZWZxT1g4N3l1a3BqYXJiQWlGRWZ5?=
 =?utf-8?B?S0h0aHlkbDRNS1ZnbFRQNkIzb1JEY2RuY3FwRkNoZFRiRkFYKy9GeUtweFlW?=
 =?utf-8?B?SGo5aVVwVzFOYTBRL0diUlM5VXJXTHBiU1RqTnd1aEpVWTdoWEVJQmh6WkhF?=
 =?utf-8?B?ZWszNFRMM0YxZ3d3cjVUQXhwSjBPKytteXdvTlpCQUxrZ0I4Z25WY0dJWm0z?=
 =?utf-8?B?cFh1RDVMOUdEZDZqR3pBZkRvN3F1WThzQTNNNkRrMmhMd3NyT0IxM1g2Q3dY?=
 =?utf-8?B?ZlUyQ1krRzRDcFkyaDJBZUFWNnRad055Qm04UWJEN0ttdEZTb0hvcTExcEZL?=
 =?utf-8?B?aG54MHFSY3pBWTZCQko3ampRWnVIdmttdFQ3cjJGNGZnbTBUUTMvVUdOdkJ2?=
 =?utf-8?B?NlUxL1Q1VEJVdlVyVDRCTHMxYzJmY2hwMTZvU3lwQnVUemp2T1pSRHJpbkxE?=
 =?utf-8?B?LzRZb1diUXdYS2syZVI5ZE5oM05EUTd6NnVEYXg3VzBxRHk5aTViTjVrNjBx?=
 =?utf-8?B?TkY2L1IvaHdpL1lpRjE4U3R3ajRSQ0VUUHE1SFRHeWN3cTJXSG1sbkFzcUJw?=
 =?utf-8?B?M3BDY3pDSll0elpWc200M0FmbTZNdUVjcFltT21vd0NHYklCVWk0WGFDZ0NU?=
 =?utf-8?B?WXNBenkzSFplUW1SeHFqTjduNnVyaHkwVDFGdlIzSFFrcVZOVjI1OUQ0Y2lv?=
 =?utf-8?B?L0tuSEk5ZHJsaGFPbUc0MzZSaXp2d202cUkvek9sZ2loeEZjayt4VHRlcnRn?=
 =?utf-8?B?US9XMy9CVkNCTUZjZ0pUd3ZYN1BrZnhFdGtsWXgvNGZkeW0zQ01ETDY4RGZk?=
 =?utf-8?B?SHd1cDZDS1ZUVlZ1cDVSYzhRS0plWjBaY2QvMlVMd3krdWZLSG1ONFExKzNv?=
 =?utf-8?B?N1JZc0FWN1BrQ1JCVEVnUEtNampWVTQvVFRuY29pN1VKcUJmT2pvQmd0UDJO?=
 =?utf-8?B?S2xmZ1hZdkljM1k0WE1lT0dSMm1Rc3dCbllscE9tSUZYSkpDSlZhUi9aVXZw?=
 =?utf-8?B?SlNyZDRqS0x2ZWcrNGRMeVBXSTVjVWUrdGloMlhCT3R1Y0RqUzRPYmp5bzlP?=
 =?utf-8?Q?qhqrExEvzY+NLcCHZ4ffB1XznWGhQbhdJxH28uiyMosf2?=
X-MS-Exchange-AntiSpam-MessageData-1: yn1WbD7mhQBpSw==
X-Exchange-RoutingPolicyChecked: ePlYihFhFUC8tpHY7zFkLaVV5ycj72P7hM2a+tJ8H5qS6C5egffmK4DFTaYIXCW2/QWPkgwhYNlZyTOQSm/WtKXdz+yAPq8TmutNFz3TiK0uHVOUagz400veJlHNN8ij8cQJyp3nHZP77bE1/E9Oaw1M6Ggb4/9gw+crqxfICygMe40L7unuD1Hbynl9OWq/uW/wMeSuuHN8Cil7/S3nTzlkaVLz7UBpmwNetKF1+cK0oHGTSY8WwWsu9fv3bAzwMwaRHk2O8sJ6SF87B78g2XFo163/7uWYgp/ZahggfAwSbyt/Dnz0wgRILvmR/Y3qSfRyjGP8Ece02yro3/DDXA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d465e66-8bbb-49ab-862d-08dea07eed1f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2026 14:53:33.8950 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LcwmGjGAGclqWyXNtttYFArb+A9RwpWeRVlC2saR0TI/zFJyH1DrzNJCVaT58Y6Fcykd8SLSOmItHikUSBetLN2a+pm5reHUe6jXBAd0WYL8w7QCBXktfkIL3wy8+H+x
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5013
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D9ADF447900
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 14-04-2026 03:41, Shankar, Uma wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Thursday, March 26, 2026 10:46 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
>> <suresh.kumar.kurmi@intel.com>
>> Subject: [PATCH 15/19] drm/i915/display: PSR Add delayed work to exit DC3CO
>>
>> For DC3CO, idle_frames is programmed to 0, so PSR does not enter deep sleep.
>> Add delayed work to schedule DC3CO exit after an idle duration derived from
>> frame time (minimum equivalent of 6 frames).
>>
>> The work is re-armed from the PSR flush path on relevant frontbuffer activity, and
>> once the display remains idle, DC3CO is disabled and DC6 is enabled to allow
>> deeper power savings.
>>
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   .../drm/i915/display/intel_display_types.h    |  2 +
>>   drivers/gpu/drm/i915/display/intel_psr.c      | 48 +++++++++++++++++++
>>   2 files changed, 50 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index d0d2cda3d669..0c8958338f76 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1785,6 +1785,8 @@ struct intel_psr {
>>   	bool irq_aux_error;
>>   	/* DC3CO eligibility used to control PSR configuration */
>>   	bool dc3co_eligible;
>> +	/* DC3CO disable work*/
> Add space before *
>
>> +	struct delayed_work dc3co_work;
>>   	u16 su_w_granularity;
>>   	u16 su_y_granularity;
>>   	bool source_panel_replay_support;
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>> b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 16a9f4111ac8..f3476118b8d0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -1701,6 +1701,50 @@ static bool intel_psr_needs_wa_18037818876(struct
>> intel_dp *intel_dp,
>>   		!crtc_state->has_sel_update);
>>   }
>>
>> +static void psr2_dc3co_disable_locked(struct intel_dp *intel_dp) {
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +
>> +	if (intel_dp->psr.dc3co_eligible) {
>> +		intel_dp->psr.dc3co_eligible = false;
>> +		intel_display_power_set_target_dc_state(display,
>> DC_STATE_EN_UPTO_DC6);
> Before switching to DC6, would be good to call cancel_delayed_work so that
> it doesn't get scheduled later and mess up the state.

This function is called frompsr2_dc3co_disable_work() itself, I will add cancel_delayed_work
to intel_psr_disable_locked().

>
>> +	}
>> +}
>> +
>> +static void psr2_dc3co_disable_work(struct work_struct *work) {
>> +	struct intel_dp *intel_dp =
>> +		container_of(work, typeof(*intel_dp), psr.dc3co_work.work);
>> +
>> +	mutex_lock(&intel_dp->psr.lock);
>> +	psr2_dc3co_disable_locked(intel_dp);
>> +	mutex_unlock(&intel_dp->psr.lock);
>> +}
>> +
>> +static void
>> +psr2_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
>> +			enum fb_op_origin origin)
>> +{
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +
>> +	if (!intel_dp->psr.dc3co_eligible)
>> +		return;
>> +
>> +	if (!intel_dp->psr.sel_update_enabled ||
>> +	    !intel_dp->psr.active)
>> +		return;
>> +	/*
>> +	 * At every frontbuffer flush flip event modified delay of delayed work,
>> +	 * when delayed work schedules that means display has been idle.
>> +	 */
>> +	if (!(frontbuffer_bits &
>> +	    INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe)))
>> +		return;
>> +
>> +	mod_delayed_work(display->wq.unordered, &intel_dp->psr.dc3co_work,
>> +			 intel_dp->psr.dc3co_exit_delay);
> Where is this exit_delay assigned, please check. If its 0, work may get executed immediately.

It is assigned in intel_psr_enable_locked() along with other psr struct members.

>
>> +}
>> +
>>   static
>>   void intel_psr_set_non_psr_pipes(struct intel_dp *intel_dp,
>>   				 struct intel_crtc_state *crtc_state) @@ -2273,6
>> +2317,7 @@ void intel_psr_disable(struct intel_dp *intel_dp,
>>
>>   	mutex_unlock(&intel_dp->psr.lock);
>>   	cancel_work_sync(&intel_dp->psr.work);
>> +	cancel_delayed_work_sync(&intel_dp->psr.dc3co_work);
>>   }
>>
>>   /**
>> @@ -2303,6 +2348,7 @@ void intel_psr_pause(struct intel_dp *intel_dp)
>>   	mutex_unlock(&psr->lock);
>>
>>   	cancel_work_sync(&psr->work);
>> +	cancel_delayed_work_sync(&psr->dc3co_work);
>>   }
>>
>>   /**
>> @@ -3527,6 +3573,7 @@ void intel_psr_flush(struct intel_display *display,
>>   		if (origin == ORIGIN_FLIP ||
>>   		    (origin == ORIGIN_CURSOR_UPDATE &&
>>   		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
>> +			psr2_dc3co_flush_locked(intel_dp, frontbuffer_bits,
>> origin);
>>   			goto unlock;
>>   		}
>>
>> @@ -3585,6 +3632,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
>>   		intel_dp->psr.link_standby = connector->panel.vbt.psr.full_link;
>>
>>   	INIT_WORK(&intel_dp->psr.work, intel_psr_work);
>> +	INIT_DELAYED_WORK(&intel_dp->psr.dc3co_work,
>> psr2_dc3co_disable_work);
>>   	mutex_init(&intel_dp->psr.lock);
>>   }
>>
>> --
>> 2.43.0
