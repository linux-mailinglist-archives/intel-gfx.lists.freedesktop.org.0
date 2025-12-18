Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D69D0CCB347
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 10:38:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3886110EC74;
	Thu, 18 Dec 2025 09:38:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TFdtRhcE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E78E310EC74;
 Thu, 18 Dec 2025 09:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766050692; x=1797586692;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rm/Kje2IlqyRNwtwMCJYAQLnGCYaOj0d1bem3vt36/c=;
 b=TFdtRhcEkaKYaZcWiHw95CjmRFhKr0qBU6iO3Bn8c3NNe9SanokoYnBL
 fGCa8iEwLJZRzX0b+qsJBnq9yzItV4F+H9te3hx46uR6IV9qqOHi4E0Sy
 SFtBe0W6o7OLQU5bOluqTtlw4S0RkNptDARXeODS/u+ddTSeapsUng4Wa
 QP3o6gGwLWfsirgQ+Warl83j2A4jbmx4HkHEOAGRhBtnyJ8Rnz+zR10vD
 oTH4IRY0z/1GKBkeDSDsYAXwwhZoWcOBg3LypSXZBVRDqvhu+DUx6VJds
 IgAnUAAwCI2k5HJVkqETJ0zaU7RTDi7RcAOO/Ts6A35rDFxNRN/arqtLV w==;
X-CSE-ConnectionGUID: +C+/uB75QzSLYLDQK1m8Fw==
X-CSE-MsgGUID: dzGsY9MnSVOO5v3zTZGSLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="68155069"
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="68155069"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 01:38:12 -0800
X-CSE-ConnectionGUID: hhsb84lsRiCcqlfsxoySQA==
X-CSE-MsgGUID: pIYPTZSySgaADF/gSiJzBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="203059501"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 01:38:12 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 01:38:11 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 18 Dec 2025 01:38:11 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.36) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 01:38:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Hzqp+2rkRwzQvPGd7IlbjDSupeG8GkLRMdigRnTIED5z8/nNYNjLxU98C70owltwH+yLTOsZkLUawgV8SO38pg2HnAZqk/7NvHf4Q3sq5FsWM5bp8vtDf9tYI6POvVehuO1mqBaHiXsMKVhL4qj61ONHMXx5JMBTKt3EWT5k/qBcw4QDXW0QWiZ+k468EtFqLSfo+d2fC7qeFM4zsdx4Q8ZiNJVPgxOiByx2j34OzEaSn9hlluNh50+D38n9yOQWHUJ05MbCxp0CF5R+U3NN2qF0nfrlUlgzDUKfXqw7sW/q/3pDCrc/9MQ4MSffmeA/r6TNK61zsNoMiUAn9TE4OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CduBSsfY7IdW7m3h886aen893MBWWAl6MeNT+oIpcCg=;
 b=iZMOehymwSLeyD70zPKFFKKuFNj1fJh3inTTjZ6KIcXBx0I0UfOOvc25y0zfEj/Z4vdUjdy4B3/7jcOcBc0qXA9b54VYuossyHWxCs5bO160128jCWcuaVKNjc7dM/xbdPiEIupk/eiPhza8d6wi+PZ7M/KAT+78+LjjdeyzIJmAkltCHTYBRsFzobvzgNwaq9APuRgVz/tCJsw9CdsghcYyuckaJrRSucQF1dr/WBSHCphuwT4JWnC+IRkEm5its5zvOB0fe6KBt6Qt8pdDKopFKP3TYvge9n4SQUt7LYhzsiojNSE6XKN5XtKFQk45Aq+yJ7h7bBSRWOe/vGUf6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4567.namprd11.prod.outlook.com (2603:10b6:208:26d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Thu, 18 Dec
 2025 09:38:04 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9434.001; Thu, 18 Dec 2025
 09:38:04 +0000
Message-ID: <2b5abd99-69fe-4b40-af9b-dffbd633e645@intel.com>
Date: Thu, 18 Dec 2025 15:07:55 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] drm/i915/alpm: Simplify and align LOBF checks in
 pre/post plane update
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
References: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
 <20251119135152.673276-5-ankit.k.nautiyal@intel.com>
 <d8e65d354c42eb4241c75b3c0f6b0125b5f48b73.camel@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <d8e65d354c42eb4241c75b3c0f6b0125b5f48b73.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0016.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:177::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4567:EE_
X-MS-Office365-Filtering-Correlation-Id: acb7dea4-e80f-4d7a-003e-08de3e19244d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YVNnM2ZSbDBOaC9WNGJObGpRTVVZZXlQcnNmNDBVWDkvQ3lYWkVHejNaSndn?=
 =?utf-8?B?VW93WVlyU1ZSQlhvSDhrVEdabEx0cHE5MDlvWHFNL0NnZVByajdYY3lkUkI2?=
 =?utf-8?B?YzJJV2xEOFhwMFUrVS9WUjBMK1BKM09NMFpLaU13QzBWVUltTHVhSmlKVEVy?=
 =?utf-8?B?L0ZHNlBuSlVzeUNmckdwdVp1cEgwdHFYYWhEM3ZqZlNoald5TVRWTFF3dVRG?=
 =?utf-8?B?OUZMTW5MMkVPeTdaOGpBZTlLZ2llaW10TGlPUGtENmFROCthZlBCVUJHM1BT?=
 =?utf-8?B?TEVxTGN3b0d0NnhUNFJjRUpYUWM1bU81OTUwWWNRZWVJWXFKOVhUWURJclp0?=
 =?utf-8?B?MGJQVFk0MHIwRGFLUEpJN054clIzZnJJS0lvLzVMaFgyeGp0V2lxNDdxajUr?=
 =?utf-8?B?N1NXZzBVRWx2MW9XbDVSQzlycnFOSnEzNG9VcVNteU4xRlNEZ2h6ZXNNNVRK?=
 =?utf-8?B?azA3amFHaVVJUTdqbERtYkFzZmxwaXl0SzRKMXBVUGJjUWcrbXMxdFQ2VTRX?=
 =?utf-8?B?ZHI2SXFneUxDZ2dlR0Uza3lwa2VmTExSOEtnODZvY0k0MlIyOWNQNUo5UlQv?=
 =?utf-8?B?YXYxUXd2SXNXdkNPdjJnUXZ6WnNWcjRtNVk3OVFDWUdQWVVZUUNnMjlxY1p5?=
 =?utf-8?B?NGdSMmRhU1pBQjlBeFFseStzbmdOV3N6eGNaN0N4N0JBb0YzK0d0a25nM2NI?=
 =?utf-8?B?cWprd2UyQWVkVGp2TU4xSG9kV3JXNnk1QW9STUszcDZSMUhVY0FoUW8vRFla?=
 =?utf-8?B?bW1nY082ZmVzdjR1YUt0emNUQTFhVUVOdGUyeFA0VHVDbUxFa3NFcmJVUlBv?=
 =?utf-8?B?alhPRHFkVUtSSVNXR2FPeVdyOUpLQzhsM2NNOXNaWlA5UlhHdFFWTDRHL1pP?=
 =?utf-8?B?dGJqRExtNFExclZYbG5MNEhIb0VlNXd0a3pjSXVGSDhjOFViR3ROTHBDUmg2?=
 =?utf-8?B?dDRYYVE2T3IyTS9ubDR0VnVya2x3d3pqdXI3VWtLOXBSeHpGZ2owNGVmMlZM?=
 =?utf-8?B?N1ByOFV2SDJtV1JJVjVNdWV4cDN5VGt3SEEyb3ltaHptSkZYbC9lZlAzdHlE?=
 =?utf-8?B?RTJLelVYRWhldnRDVlA0bG1Od05ucnNuSW1GVm4wNDdBeFEyWkVXODQ1Y1ox?=
 =?utf-8?B?OW5DWklhMGY5dmlGZ2ZlbFoycHVWN3VmTEpyN1Q1RVluYTl0QmFlb2NaVFdk?=
 =?utf-8?B?VWh6NmZ3WTR2OFZDclBKZXFmU25aMkNuYVE4VC9sV0hYWFBOVU91MmQ0NzZN?=
 =?utf-8?B?M1VKTlVPNDdVcjNpU1dTZkJnTkVpbDV1YVJycXdSQjFrYXp1N1dBOGRMbnd5?=
 =?utf-8?B?dzRqZWFJczRoL3djMnNrRWpqZE5FeEdpR0ZtQ29qdzduMXh6VjJnL0ExVGJX?=
 =?utf-8?B?VkNQWm5YbTFIWExJUFBVc3pzOVFXNGJsMmJlbTZMRnhaemUzTEJhU3lGMjZN?=
 =?utf-8?B?VXBRS2g4NjNjYlpPYWVUU293Y0dublFRbk5Ja085eG5sOEtOdWZxT2pZQzIy?=
 =?utf-8?B?eENneFQyb3dlL0NZTlJPQjFhZ0ZjK1MyVkY0VHlnR0FPQmZqMTFYeW5UQWth?=
 =?utf-8?B?dDNORVI5ZHV4L3R6RHcwRjNtZHJvME16R014ZHA2dzg3QWh6M1N1bjdNY3BZ?=
 =?utf-8?B?WlpKdWNSWmc4NXY4Z1h2SXU3a1EwdUV1cHRhRjJKYTViUGhsRHczckoyb0JF?=
 =?utf-8?B?M0RsalllbWFqTjlLQzBKYVQ5eGh1a2xsaXUyVFJZRnlxVnpzRm00WXJUNFFa?=
 =?utf-8?B?WjBFMElhaHNvSm9ZbEtPTGVFV204SXZlMTc3MlZrZzMrRVlmT2d5WmNkeVBM?=
 =?utf-8?B?ZGF6aXhQNy9ieWpxTmlNTFpjdmVHbUk5emJOeEVPdWxCcldpRFBDWDNaNXE4?=
 =?utf-8?B?bmxiWDJrdHZTUzdLTFJ0bk55UHhBck1Days0RmpJOTRiNjlXeDdyRXpPTUdI?=
 =?utf-8?Q?B+dHP3eRMvozF46VPpBAK+tFiywe/p0R?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWtpRGJTcFJObWlCMGlZdktXc2x6cldWZFRwZERSbEhWQXpScjR4b0RtYm14?=
 =?utf-8?B?OHVLQ0tHa1lOS00yU1hlM1JOUTQzMm1wNnM4eFY4STVrUmpiZUk3WHNVNS9j?=
 =?utf-8?B?UWV1bkFjeWN2R2dyQmRjZG1DNlUwQTVvOTZrUHh6TFZwM3YxZmk1Tnh5dU5S?=
 =?utf-8?B?aFl5VU5jaGtneUJCMWNpam9SZUxJSVFUOU8wM0pvMGMvNVVML0tFa2F5Z0k4?=
 =?utf-8?B?RmYvOUxseXB4c2VYQkF2K0d1TGdHd0VBVFJtME5ZcE1mR0hxbHVyd2lRNkRV?=
 =?utf-8?B?eUd5MHFZQWhlTmZhS3lEUE9DYTR1TkhYUlB2dXliMHJBeWxmM1VaYUk5ZWV2?=
 =?utf-8?B?T1pMbjl3dlRPZVRjQUZvT0ozOE1BaUpMY3Jxc3RtVGlydHY0T2JwK1Bsc1Jp?=
 =?utf-8?B?UUw3SzdvMEJiQTEwOGtFYWtzT3BHNVczQm81ODdTZCtFc2c2ZDlYMXNFQ1VL?=
 =?utf-8?B?NzhmbVNNS2pYcFdlZmlWWi9LQWNwSjVJMkVRQUFnNjdsODNTQ2Z2OTQzdGE1?=
 =?utf-8?B?ZHJ4dFdJeWZJWUh3WTQ5dUVZbXZtaTJRS3ZucVBBajV0NmNyWTU4VTltUmwr?=
 =?utf-8?B?a2Y4aDA5b1BBcnJ5M2RhNUFnYk52U1diWVowcTl2QVl3S1lYVHVuVDJJa1JU?=
 =?utf-8?B?bUxUWHJVK1Znckw1VkVNMnExcU95TFQ4TCtzNmdPT0s4K25TdWNqenNpa0Vs?=
 =?utf-8?B?WWxtek9tUjl4UlFwOFB4RXMrL0M3TnJVaVhCZXZaNmx2QWdwZjlLb20zMUd6?=
 =?utf-8?B?NEs4YUx3cWhuUXRGWVVtTzRFT2dVQlNxYW5kRHpDOE03S0VoZkNHMDJKZWoy?=
 =?utf-8?B?cWlVbVI0S0FsN3ZtZGRocm50SWpWZk9taG83VmUyZHp4clZGZVVPNmZkTXlC?=
 =?utf-8?B?T2NTemF3RGpLbHVGWUlEdkJxNGVoQ1RWeEhBYnpQbmI3VmM1UmFyZXB1UUpH?=
 =?utf-8?B?TmF6VHlmdmFRdGxzMUFHTXRGM01sS3JHTmtDRjNzejlSZDh3UzJjQTdmb011?=
 =?utf-8?B?OWk3MEFDZi8rRWdMaTVKazU2UFNDSTVFNlZBeXhYY0RkUWttK1Q4UlFUem0x?=
 =?utf-8?B?RjRvMEhKMU9rZndGNGdsOXQ1bUIzVUhSS3dpVkc4ZlVmNjEwcmhKanFGZWps?=
 =?utf-8?B?Mkl6c2FDelRQNHBNcTBLelZYRmdha3VxMExCdnBmZmJkSHVMeFE4UlMzdFl6?=
 =?utf-8?B?azlCckd3ZDNXb09oM1ZNa3RMblNJclBOM0VlNFlOdkI0TkhVRFJwQThRTHdU?=
 =?utf-8?B?cEVQVlgraXRENGVVQUw4c1RRZ0RVR0hqUGw2blVwcGdpSDNrZ2VNMlZqTkR6?=
 =?utf-8?B?M1B4SVBUb1ViSFlpQ2c3K3Q3YWhMb2I2elpnaVJ5dzZUeTdYY281UkV4aUxr?=
 =?utf-8?B?cDNzYmEwQWlnbEtCT1AvUVZBUlpzaFpscEIvYW9USEJaSjNiVEFLbU5wQ1Uz?=
 =?utf-8?B?Q0oycm05alYzTzlTVFBqUjlvdmw0SWZrK0FadUgrSnNZR3hwa3dNaHJ5WXY3?=
 =?utf-8?B?UE1oUXRMVW9SMHlXSTIzaFNzb0hjdjNMN3FaRFZESEJYR1RKUXAwWHJ0U0Nt?=
 =?utf-8?B?MVZFckM3UDFIczQ4UWZaUDlHM0hkZjJMakN2YjZiMlZQV2tieUtjTU8yN0dU?=
 =?utf-8?B?NXVzOEFlRmJRbEVrUWhiajNUWjI4YzR3cHlMUk9rYVZFWTVvTHNWNmZXWHNq?=
 =?utf-8?B?QzRPZmxDTVIydjhXR0JlNXJya0RRV0w2ZWcwU2JxcTAreEtKK2NZUHk4QktH?=
 =?utf-8?B?Z2tweVB3VUFjczhpQmJBbk5Ud1c1SjFJZHI1RzhKb3g4Sm1kcG02L3o1UVov?=
 =?utf-8?B?UW04bWpjNkdNMitIQ0llRGx1cWZxcTd3OElreGFUeTVRbzJVdGIyS3JMWXdl?=
 =?utf-8?B?RnRUWnBac0EyZE51V1BqdUNJYnpUd3VlU1JhQnd5aW9NMThpWmNiQUVBOXll?=
 =?utf-8?B?bXRFM0I3WURGZ3RkaFk4L0lSQVBrRFRnRmo5RXBrTVFOQUZvd2s1WUNnTk5M?=
 =?utf-8?B?WTdtOFBpK21BZXZlZlp5VFFDMkpkaC9pdUEwT1pKNXh1bzEwZy9OeEJJdFBY?=
 =?utf-8?B?dVpzeUVweUw4TkM4STh5QVNYVVVvY3Fxb2piMWlLOEswUjFPejdiVVAxOC96?=
 =?utf-8?B?NzY2UDNmdzdoUlJ1bUtkQWlJNUFiOWxZNS9uU2dEMmlKUHF0aGEzZkRzK1o4?=
 =?utf-8?B?TVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: acb7dea4-e80f-4d7a-003e-08de3e19244d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2025 09:38:04.1813 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wI8LrumMdpHXFcYXOB0RtFG9CF8AW3gxSTlxEXYpgQ8FWzN8XECAEvfru4DF9P4QkTn03VvBKRC7/Nod6DqGlJkaucrVrW9oKSVzNnzFbqI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4567
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


On 12/17/2025 7:19 PM, Hogander, Jouni wrote:
> On Wed, 2025-11-19 at 19:21 +0530, Ankit Nautiyal wrote:
>> The pre_plane_update and post_plane_update hooks essentially
>> disable/enable lobf feature. Use the existing
>> _is_enabling/is_disabling
>> logic for this in the pre_plane_update and post_plane_update paths.
>>
>> Also rename the helpers to intel_alpm_lobf_{en,dis}able().
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_alpm.c    | 45 ++++++------------
>> --
>>   drivers/gpu/drm/i915/display/intel_alpm.h    |  6 +--
>>   drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++++++-
>>   3 files changed, 41 insertions(+), 38 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
>> b/drivers/gpu/drm/i915/display/intel_alpm.c
>> index 5cfb9345776a..abeb70fcf92c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
>> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
>> @@ -447,25 +447,17 @@ void intel_alpm_port_configure(struct intel_dp
>> *intel_dp,
>>   	intel_de_write(display, PORT_ALPM_LFPS_CTL(port),
>> lfps_ctl_val);
>>   }
>>   
>> -void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
>> -				 struct intel_crtc *crtc)
>> +void intel_alpm_lobf_disable(const struct intel_crtc_state
>> *new_crtc_state)
>>   {
>> -	struct intel_display *display = to_intel_display(state);
>> -	const struct intel_crtc_state *crtc_state =
>> -		intel_atomic_get_new_crtc_state(state, crtc);
>> -	const struct intel_crtc_state *old_crtc_state =
>> -		intel_atomic_get_old_crtc_state(state, crtc);
>> -	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +	struct intel_display *display =
>> to_intel_display(new_crtc_state);
>> +	enum transcoder cpu_transcoder = new_crtc_state-
>>> cpu_transcoder;
>>   	struct intel_encoder *encoder;
>>   
>>   	if (DISPLAY_VER(display) < 20)
>>   		return;
> You can remove this as well. intel_crtc_lobf_enabling is supposed to be
> true only on display version >= 20.


Ok sure will remove this check.


>
>>   
>> -	if (crtc_state->has_lobf || crtc_state->has_lobf ==
>> old_crtc_state->has_lobf)
>> -		return;
>> -
>>   	for_each_intel_encoder_mask(display->drm, encoder,
>> -				    crtc_state->uapi.encoder_mask) {
>> +				    new_crtc_state-
>>> uapi.encoder_mask) {
>>   		struct intel_dp *intel_dp;
>>   
>>   		if (!intel_encoder_is_dp(encoder))
>> @@ -476,12 +468,10 @@ void intel_alpm_pre_plane_update(struct
>> intel_atomic_state *state,
>>   		if (!intel_dp_is_edp(intel_dp))
>>   			continue;
>>   
>> -		if (old_crtc_state->has_lobf) {
>> -			mutex_lock(&intel_dp->alpm.lock);
>> -			intel_de_write(display, ALPM_CTL(display,
>> cpu_transcoder), 0);
>> -			drm_dbg_kms(display->drm, "Link off between
>> frames (LOBF) disabled\n");
>> -			mutex_unlock(&intel_dp->alpm.lock);
>> -		}
>> +		mutex_lock(&intel_dp->alpm.lock);
>> +		intel_de_write(display, ALPM_CTL(display,
>> cpu_transcoder), 0);
>> +		drm_dbg_kms(display->drm, "Link off between frames
>> (LOBF) disabled\n");
>> +		mutex_unlock(&intel_dp->alpm.lock);
>>   	}
>>   }
>>   
>> @@ -502,22 +492,13 @@ void intel_alpm_enable_sink(struct intel_dp
>> *intel_dp,
>>   	drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG,
>> val);
>>   }
>>   
>> -void intel_alpm_post_plane_update(struct intel_atomic_state *state,
>> -				  struct intel_crtc *crtc)
>> +void intel_alpm_lobf_enable(const struct intel_crtc_state
>> *new_crtc_state)
>>   {
>> -	struct intel_display *display = to_intel_display(state);
>> -	const struct intel_crtc_state *crtc_state =
>> -		intel_atomic_get_new_crtc_state(state, crtc);
>> -	const struct intel_crtc_state *old_crtc_state =
>> -		intel_atomic_get_old_crtc_state(state, crtc);
>> +	struct intel_display *display =
>> to_intel_display(new_crtc_state);
>>   	struct intel_encoder *encoder;
>>   
>> -	if (crtc_state->has_psr || !crtc_state->has_lobf ||
>> -	    crtc_state->has_lobf == old_crtc_state->has_lobf)
>> -		return;
>> -
>>   	for_each_intel_encoder_mask(display->drm, encoder,
>> -				    crtc_state->uapi.encoder_mask) {
>> +				    new_crtc_state-
>>> uapi.encoder_mask) {
>>   		struct intel_dp *intel_dp;
>>   
>>   		if (!intel_encoder_is_dp(encoder))
>> @@ -526,8 +507,8 @@ void intel_alpm_post_plane_update(struct
>> intel_atomic_state *state,
>>   		intel_dp = enc_to_intel_dp(encoder);
>>   
>>   		if (intel_dp_is_edp(intel_dp)) {
>> -			intel_alpm_enable_sink(intel_dp,
>> crtc_state);
>> -			intel_alpm_configure(intel_dp, crtc_state);
>> +			intel_alpm_enable_sink(intel_dp,
>> new_crtc_state);
>> +			intel_alpm_configure(intel_dp,
>> new_crtc_state);
>>   		}
>>   	}
>>   }
>> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h
>> b/drivers/gpu/drm/i915/display/intel_alpm.h
>> index 14dc49fee4c3..0b2460b90465 100644
>> --- a/drivers/gpu/drm/i915/display/intel_alpm.h
>> +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
>> @@ -25,12 +25,10 @@ void intel_alpm_configure(struct intel_dp
>> *intel_dp,
>>   			  const struct intel_crtc_state
>> *crtc_state);
>>   void intel_alpm_enable_sink(struct intel_dp *intel_dp,
>>   			    const struct intel_crtc_state
>> *crtc_state);
>> -void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
>> -				 struct intel_crtc *crtc);
>> +void intel_alpm_lobf_disable(const struct intel_crtc_state
>> *new_crtc_state);
>>   void intel_alpm_port_configure(struct intel_dp *intel_dp,
>>   			       const struct intel_crtc_state
>> *crtc_state);
>> -void intel_alpm_post_plane_update(struct intel_atomic_state *state,
>> -				  struct intel_crtc *crtc);
>> +void intel_alpm_lobf_enable(const struct intel_crtc_state
>> *new_crtc_state);
>>   void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
>>   bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp);
>>   bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index 069967114bd9..ecbdc506a1fc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -1009,6 +1009,27 @@ static bool intel_casf_disabling(const struct
>> intel_crtc_state *old_crtc_state,
>>   	return is_disabling(hw.casf_params.casf_enable,
>> old_crtc_state, new_crtc_state);
>>   }
>>   
>> +static bool intel_crtc_lobf_enabling(const struct intel_crtc_state
>> *old_crtc_state,
>> +				     const struct intel_crtc_state
>> *new_crtc_state)
>> +{
>> +	if (!new_crtc_state->hw.active)
>> +		return false;
> Is it possible that new_crtc_state->hw.active == false &&
> new_crtc_state->has_lobf == true

I dont think its possible.


>> +
>> +	if (!new_crtc_state->has_psr)
>> +		return false;
> I don't understand why you are checking psr here? I should have been
> checked already on compute phase?

hmm yes right this can be dropped here.


>
>> +
>> +	return is_enabling(has_lobf, old_crtc_state,
>> new_crtc_state);
>> +}
>> +
>> +static bool intel_crtc_lobf_disabling(const struct intel_crtc_state
>> *old_crtc_state,
>> +				      const struct intel_crtc_state
>> *new_crtc_state)
>> +{
>> +	if (!new_crtc_state->hw.active)
>> +		return false;
> No need to disable before everything else is disabled?

Sorry this should be :

        if (!old_crtc_state->hw.active)
                 return false;

If pipe was already inactive we don't need to do anything.

Thanks for catching this.

I will update the patch with suggested changes.

Thanks & Regards,

Ankit

>
> BR,
>
> Jouni Högander
>
>> +
>> +	return is_disabling(has_lobf, old_crtc_state,
>> new_crtc_state);
>> +}
>> +
>>   #undef is_disabling
>>   #undef is_enabling
>>   
>> @@ -1056,7 +1077,8 @@ static void intel_post_plane_update(struct
>> intel_atomic_state *state,
>>   			adl_scaler_ecc_unmask(new_crtc_state);
>>   	}
>>   
>> -	intel_alpm_post_plane_update(state, crtc);
>> +	if (intel_crtc_lobf_enabling(old_crtc_state,
>> new_crtc_state))
>> +		intel_alpm_lobf_enable(new_crtc_state);
>>   
>>   	intel_psr_post_plane_update(state, crtc);
>>   }
>> @@ -1153,7 +1175,9 @@ static void intel_pre_plane_update(struct
>> intel_atomic_state *state,
>>   		intel_atomic_get_new_crtc_state(state, crtc);
>>   	enum pipe pipe = crtc->pipe;
>>   
>> -	intel_alpm_pre_plane_update(state, crtc);
>> +	if (intel_crtc_lobf_disabling(old_crtc_state,
>> new_crtc_state))
>> +		intel_alpm_lobf_disable(new_crtc_state);
>> +
>>   	intel_psr_pre_plane_update(state, crtc);
>>   
>>   	if (intel_crtc_vrr_disabling(state, crtc)) {
