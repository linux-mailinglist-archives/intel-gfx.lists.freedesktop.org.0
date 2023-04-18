Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AFB6E55D0
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 02:26:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39AEC10E642;
	Tue, 18 Apr 2023 00:26:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D68B10E642;
 Tue, 18 Apr 2023 00:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681777606; x=1713313606;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VEONN9IugbkC8qizVc7kBJI4LWiudPg7XNESb1XGKuE=;
 b=iv6TczMr7lxOJTePgfCeqlh3QTrPHEIKNpTwNv4nkF8OX1Vj5AoLJ9xF
 cupxaMq0OhHK4ZBrMI+DRlYliwx2CZJUrmSDqa47jMAusISSkIc5FZREX
 vKGirOOV85GbtCTFOwvmD3Zt35RBpFQ/1h+/PHh3LdZQpQDoGLlKbLJV3
 og0tvCp09PKNQqXPzq1V8BCUXx1mEb8vBJT8YboiTuOIWpRnOxKV4hil0
 jDyed3A1nwn/hCHB10vzi4McP6omu47qFGd+OLeihuHtc/+nq+5en6OWj
 1BxUw2DirJLDou1sFp93Am3WdD42EAkk/md6eUo70A07UlCN12iPdl4Ui g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="324658020"
X-IronPort-AV: E=Sophos;i="5.99,205,1677571200"; d="scan'208";a="324658020"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 17:26:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="641153946"
X-IronPort-AV: E=Sophos;i="5.99,205,1677571200"; d="scan'208";a="641153946"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 17 Apr 2023 17:26:21 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 17:26:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 17:26:20 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 17 Apr 2023 17:26:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tbfz3kJ91TIrrq9+E/Zk6mOTAMvFdU9513FILtrLNdO4us9vq1yI6ZVEykNN94v1v7A/0kQ4810k9lvH3CIO9TuCc32XkLiWqntja/4TwFgszjVwdzj0jDgxBEzzM3+Bat1+Lw2L/psgn5LthZa1A7h0a2RsUhchWUWJAyxzlZ8jdOOTTkCNQ4FEkK8nC6aValH2NdhmXV96LvryKDFKibRJhpyxki+smgV83Xa+1zvXBiGtosBMIr+bMVSOuu28iLmBvhAGimN0tr/6C2wS2rAyTZ8S3nztZFCKMDNsMU0vj8EAOGn8xYlwgbsV3XSu+KkWvjeCyDP/DVruSlUdPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vq1SlmZxOe4IDKHiEos6VwF04ngq7YwGXKYRtpMxiSw=;
 b=cXp7leVoaPlofJ8clyxoBN+orLgBcwuUCxGYaer1WC9hrZIWMpMhG7ybXrq6YhDwEqlKE+ni20U/kYhaLtMbYtvHIVfwBLPKbKpuJ29/8iToP1dZot6pxCXBiTOI6eAKJahye9uWBayWWURTLbBFk6WOpSUfj+DCfV1V99cUlcRifSLlddXF8ET3r0FzQGw6XYihfYkLsIf5vzNPRoIvS8W7rKe3UFMpsefWnup+fCb6vNiUNBDnRtrxk16izUO0lrV4+I/Oz+I4NbSH4PHvywrCxBcSeyoZmJPGERRn+rR3n7y+vUleP5hTm9Pz/WTzlbbnWq3Sry0HovHFvG3euQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by DM4PR11MB6501.namprd11.prod.outlook.com (2603:10b6:8:88::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.30; Tue, 18 Apr 2023 00:26:18 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::2988:48c2:4dd7:decd]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::2988:48c2:4dd7:decd%7]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 00:26:18 +0000
Message-ID: <32dc3847-bfc7-900e-4283-b6d859696b70@intel.com>
Date: Mon, 17 Apr 2023 17:26:15 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230414191639.2565389-1-vinay.belgaumkar@intel.com>
 <20230414191639.2565389-3-vinay.belgaumkar@intel.com>
 <87ildyqkh4.wl-ashutosh.dixit@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <87ildyqkh4.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR01CA0047.prod.exchangelabs.com (2603:10b6:a03:94::24)
 To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|DM4PR11MB6501:EE_
X-MS-Office365-Filtering-Correlation-Id: 3696a0fd-39d3-406f-64f2-08db3fa386ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QZEAzsHo8ppYEIkCBahDi+mzYBMmRq4sT96rV6NMLsCIZcKxQuaQULEm8tcsQVEi1kHa9pNvQBQN/Wba7fUvF6Nh2ZX0bevn5YeS5xjU8F3k/+rFF4tbLG+c5kbDDjkYzuez1iBHBS7h2uhzElojmVfQ+sY6QozZWyr4eMHUsKa9aD2pEEc6DTgWannRnPBrAUK1L+OsYW8tMa/rHyg2mKIzE048ztZuXcuJ3c+QfJRNfFKzFxO1S8W9Sz5EKOCkOWSuwwDHEuJTJw2Ht9icI+YkyvKBjnMVB+KD2wFGCPwyMvypr3QSYyLndjHbADOUm0ww8I+o3zq5tZuDiHgGgwqeYimkoSpks1BFBnBJ+N7pQdAo1rqX38Dod8NOXbIXF69HMBHAjLTs7bReTkLngESSErn9owqU2fr1o2+VaaLwijlWl3K4qIh6G3zgVLYL58zfCzDH7HMuT4iE9mG6uinAn6E7C870CBKCNxhM/ZpAqlpcFCkeQ3LvmC43kQIb3B46aNrdKd/L1/Feo+uPRAWO2y305BY9bhGE1VvnQUEMlMTgzoYsMfWAmV7Qv7PwgCZCHfSP6KHBBMXIgzddcHgkNbyWa/1hy0wchvPYIn1IEnuxepUvDi+D+WG3ofwimM2KUBjJ3R8LuWTn5Smkzg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(136003)(39860400002)(346002)(396003)(451199021)(86362001)(6636002)(37006003)(478600001)(316002)(82960400001)(41300700001)(8676002)(8936002)(6862004)(38100700002)(5660300002)(66556008)(450100002)(6512007)(53546011)(31696002)(6506007)(36756003)(26005)(31686004)(186003)(4326008)(66476007)(66946007)(6666004)(83380400001)(2906002)(6486002)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cUxJRXlhVG9SZzd3ZDJOVDdHNTdaYnlpM2Q2cGpHWVdrZ0Jmd3YyaVR5R00r?=
 =?utf-8?B?bEdnSEhRQXJwU0paRngrWTU5ZWxOalRjbnI1MEFUcW5veXlnVXFvc1FENFI0?=
 =?utf-8?B?NExtdE5OQmNBb0VjdkJlZHM1cXlGcnhHNkFZa216cGNSeWxpVE01QkwvaHR3?=
 =?utf-8?B?SXhoYithWS9NeGdDNkx6MkIvMlc2NFRYQ3lBOG1LNExvQ0VJY0JITDhWWkY2?=
 =?utf-8?B?RFhtTzVhRm1TMUQrQys5Y2hUMHNqcmJMQ3ZvcTFlLzlJa25aLzVnMzVRRkll?=
 =?utf-8?B?aGtzcVkwOWpob2dVMEpLaGIzVXhVSFpuTWJrUDI1RmhNcUl0YlJvRnFyanRK?=
 =?utf-8?B?ZmNWQ0g3bmJJTXQzdFFidjVpYVQyY09icmJyZHB3YW1iVnd0UGhVNm5jMk5P?=
 =?utf-8?B?MXpDOVBPVk5ia1pad2VKNk1EUWMyS1ZEMHFGU1ZlUzZ3YVI4UjhKU1RqOWhJ?=
 =?utf-8?B?UUEzZGpuYUpwdE1xT0xnVytWZ1o3Qmt3RFFIdklEYXFRNzVjSXZ4MVBrNnhT?=
 =?utf-8?B?ZE5zRUNhM1Fma3QwbnlwWHI1eVVqdkR3WkdmT3RsL3BLYTE3c1ZncVJWYzBu?=
 =?utf-8?B?YkJDT2RLUlJ3Rm5nczVzbzBkcmpNVXgwY1NJYmpTN1BTZ1I4bzEyb1N4NGs0?=
 =?utf-8?B?KzJGRy8rZHVRWmVzU2VKOEFpZ09kTjhnNmdlZ0pwNk10MGtsa085ZkVGbFlP?=
 =?utf-8?B?a0JTdW40Skg4R0w0U3ZRditjNEYzajBJdmNOQzN2WHJHWFozOCt3bG5PSTBp?=
 =?utf-8?B?WlpJcC9od1NQUHV2aXFpUjN2SzZYbXNRdTFaeC91VTdOQVhvNjh0aFhYbC83?=
 =?utf-8?B?dkZNQ3FkRVM3QWxOWk5EYUw0bUJibmpSaHA2M3lmVVVvVjRDYysyclpqc2Rq?=
 =?utf-8?B?MDZiS3FsRlRsWWVaMmg4cWVGSGFuSmNPVHR3ZDZTc09tL0FoclczWDRwNTdF?=
 =?utf-8?B?WkF4Yi83RFVLaVZiUGhTS09FOWtaM0YxME1kZThrcGtIRE96cVRvZ09WeUJM?=
 =?utf-8?B?QWZRWWIzNWRBQXZEZFZnNnBhMC9rQ29tVHJnZFBoRzdwcEw2NEU4WFo5TWVO?=
 =?utf-8?B?U3RLeW10MXVzNVJocjdUUjhnNU1HejdQQ25xdzE5aFhGRldJZ2tkT1l6cXo0?=
 =?utf-8?B?aDE3UnZHRW9zbEUvT1hvLzNGZFFCc1ZaRUUwRDhPNXpFUS82YXRYamhPR0wv?=
 =?utf-8?B?ZjhzVkJSdW9oSVdUWVQydkZJZDhrdkxRZzVsUVFkVXpMVEY1Tm1BSG4vd0Zj?=
 =?utf-8?B?WHRxVmFOWkdPdnVhSXltMjJHOElDME4relZNd2dSRGVyYU5SVm0vSlIrZVlN?=
 =?utf-8?B?eEo0bm9vNUtJZ1VwL0RsMzZxbjhBVHQyOTZXSmR6RS9JeTFXZ2VBOU1tTWR6?=
 =?utf-8?B?cThBUnpPWGNzRnNsalluVGpSY2FOR3hKV0g5MGdwYW1uaTBPNlZHMlkwOSsv?=
 =?utf-8?B?UE02TXFXSDBodTJqZjB5eE9pbGlGVENMTExUUEIwNnZwRFJ3TGZoOHpTZkdq?=
 =?utf-8?B?T2ZGM2FXYVgxNklqMVVHMmVsN1IzejdoT05sYVhZMDYyVTNkbWlIb0NzbjY1?=
 =?utf-8?B?K0xvS2pDNEY0RzlGYXlxZ04yQ3pkdlJZeWVZdGxnQ2FMWWxtOU81Ym5vUFh2?=
 =?utf-8?B?QU5tcHBud2JXanlMc0JrbFFmQS8rTWNGZjdjR0FoODc3UGMyald3eUxydmhQ?=
 =?utf-8?B?cWhpQWZaZEI2OXRyT09lU1Q0SUN0RkJHY0I1aFY0bmRTKzgvN3o2Q2RseEpq?=
 =?utf-8?B?bGtoWU1CbHUxSFBSOTdxL050dXlZcjNud2VkdDhpZzNpaGxsNnMwL0FBSncr?=
 =?utf-8?B?MEErRmQwcUtpVW9mWUtxUDlZMlJCM1pBQzU0cjhjZXdNYUNmVy9pbit3UzlO?=
 =?utf-8?B?Tld1RmtRd3pTaGRBTElPU24vWlZBbnV6emkwS1VGRWo4MjliS21vVWxnRXBy?=
 =?utf-8?B?UktjOVRnZDhiQ2kvV2ZLQUwyNUQ5N3c1M2x0MVZ0dG8xcWlHZVhXT2VKRXJX?=
 =?utf-8?B?MHQzZDIrSkdWZVh0VWJSRnEyanlBV2ZDblJNSXpYZVVBRnZWUVk3NUhuTGRO?=
 =?utf-8?B?Z3RQeUtSdW1HaHkzZ3FoVjZRa2NCYzUxdzJnb293eHFHWFZtUjhPWjlpcE5C?=
 =?utf-8?B?MnJsODZFT256dmNPWUhVdWt3czhTMzdJamlXOEdaTUZycEJvU1o3clQ1b2dN?=
 =?utf-8?B?clE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3696a0fd-39d3-406f-64f2-08db3fa386ef
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2023 00:26:18.2568 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gLSFiPCVmwIoHBlsObKlItzp6GM5Sl8VB6bYUr/bWkM1HHsxcAqY2isKMI3JQ2ntPlvGoEo+l/amgHXobn15JtRpA5QbfXivAghT+zudxUE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6501
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/4] lib: Make SLPC helper
 function per GT
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 4/14/2023 1:25 PM, Dixit, Ashutosh wrote:
> On Fri, 14 Apr 2023 12:16:37 -0700, Vinay Belgaumkar wrote:
> Hi Vinay,
>
>> Use default of 0 where GT id is not being used.
>>
>> v2: Add a helper for GT 0 (Ashutosh)
>>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   lib/igt_pm.c | 36 ++++++++++++++++++++++++++----------
>>   lib/igt_pm.h |  3 ++-
>>   2 files changed, 28 insertions(+), 11 deletions(-)
>>
>> diff --git a/lib/igt_pm.c b/lib/igt_pm.c
>> index 704acf7d..8a30bb3b 100644
>> --- a/lib/igt_pm.c
>> +++ b/lib/igt_pm.c
>> @@ -1329,21 +1329,37 @@ void igt_pm_print_pci_card_runtime_status(void)
>> 	}
>>   }
>>
>> -bool i915_is_slpc_enabled(int fd)
>> +/**
>> + * i915_is_slpc_enabled_gt:
>> + * @drm_fd: DRM file descriptor
>> + * @gt: GT id
>> + * Check if SLPC is enabled on a GT
>> + */
>> +bool i915_is_slpc_enabled_gt(int drm_fd, int gt)
>>   {
>> -	int debugfs_fd = igt_debugfs_dir(fd);
>> -	char buf[4096] = {};
>> -	int len;
>> +	int debugfs_fd;
>> +	char buf[256] = {};
> Shouldn't this be 4096 as before?
ok.
>
>> -	igt_require(debugfs_fd != -1);
>> +	debugfs_fd = igt_debugfs_gt_open(drm_fd, gt, "uc/guc_slpc_info", O_RDONLY);
>> +
>> +	/* if guc_slpc_info not present then return false */
>> +	if (debugfs_fd < 0)
>> +		return false;
> I think this should just be:
>
> 	igt_require_fd(debugfs_fd);
>
> Basically we cannot determine if SLPC is enabled or not if say debugfs is
> not mounted, so it's not correct return false from here.
yup, makes sense.
>
>> +	read(debugfs_fd, buf, sizeof(buf)-1);
>>
>> -	len = igt_debugfs_simple_read(debugfs_fd, "gt/uc/guc_slpc_info", buf, sizeof(buf));
>> 	close(debugfs_fd);
>>
>> -	if (len < 0)
>> -		return false;
>> -	else
>> -		return strstr(buf, "SLPC state: running");
>> +	return strstr(buf, "SLPC state: running");
>> +}
>> +
>> +/**
>> + * i915_is_slpc_enabled:
>> + * @drm_fd: DRM file descriptor
>> + * Check if SLPC is enabled on GT 0
> Hmm, not sure why we are not using the i915_for_each_gt() loop here since
> that is the correct way of doing it.
Didn't want to introduce another aggregation here. If SLPC is enabled on 
GT0, it is obviously enabled on all other tiles on that device. There is 
no per tile SLPC/GuC control.
>
> At the min let's remove the GT 0 in the comment above. This function
> doesn't check for GT0, it checks if "slpc is enabled for the device". We
> can check only on GT0 if we are certain that checking on GT0 is sufficient,
> that is if SLPC is disabled on GT0 it's disabled for the device. But then
> someone can ask the question in that case why are we exposing slpc_enabled
> for each gt from the kernel rather than at the device level.
>
> In any case for now let's change the above comment to:
>
> "Check if SLPC is enabled" or ""Check if SLPC is enabled for the i915
> device".
ok.
>
> With the above comments addressed this is:
>
> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>
> Also, why is igt@i915_pm_rps@basic-api still skipping on DG2/ATSM in
> pre-merge CI even after this series?

basic-api is supposed to skip on GuC platforms. It wasn't due to the 
test incorrectly reading the SLPC enabled status from debugfs (which is 
being fixed here).

Thanks for the review,

Vinay.

>
> Thanks.
> --
> Ashutosh
>
>
>> + */
>> +bool i915_is_slpc_enabled(int drm_fd)
>> +{
>> +	return i915_is_slpc_enabled_gt(drm_fd, 0);
>>   }
>>   int igt_pm_get_runtime_suspended_time(struct pci_device *pci_dev)
>> diff --git a/lib/igt_pm.h b/lib/igt_pm.h
>> index d0d6d673..448cf42d 100644
>> --- a/lib/igt_pm.h
>> +++ b/lib/igt_pm.h
>> @@ -84,7 +84,8 @@ void igt_pm_set_d3cold_allowed(struct igt_device_card *card, const char *val);
>>   void igt_pm_setup_pci_card_runtime_pm(struct pci_device *pci_dev);
>>   void igt_pm_restore_pci_card_runtime_pm(void);
>>   void igt_pm_print_pci_card_runtime_status(void);
>> -bool i915_is_slpc_enabled(int fd);
>> +bool i915_is_slpc_enabled_gt(int drm_fd, int gt);
>> +bool i915_is_slpc_enabled(int drm_fd);
>>   int igt_pm_get_runtime_suspended_time(struct pci_device *pci_dev);
>>   int igt_pm_get_runtime_usage(struct pci_device *pci_dev);
>>
>> --
>> 2.38.1
>>
