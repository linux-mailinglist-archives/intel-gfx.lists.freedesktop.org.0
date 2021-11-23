Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FAE45AE85
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 22:36:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A8986E0DC;
	Tue, 23 Nov 2021 21:36:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 063896E073
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Nov 2021 21:36:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="215846557"
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="215846557"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2021 13:36:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="456833608"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 23 Nov 2021 13:36:19 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 23 Nov 2021 13:36:18 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 23 Nov 2021 13:36:18 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 23 Nov 2021 13:36:18 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 23 Nov 2021 13:36:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DDRr73v+gG0PC8+luu/UjBx+/o326tb4Tl9dyEm2wI6T8NTfIW6B7Vc/5lfdlqyPQAfHEG4w3VUSWasTvwRPPmzi6UodCtCjIw67xqjKUx2DKK3RIbAmtVRaeoT9R82edI+s45kOUXOm2bXqf14OgoMnH0tkX0Yobp4ccZX8ezrBQzabJOj8e+EeDuvx8Zkgr0aefp1aQODr48GtyvbH8j/WccUOG6K+a5Tc4oB5t9PlNYwgd+4UnoVy7URuSkIO2nlMDKUozlw/cQ/pwfWUNz1nKgEUAZvA59OwJDa5RWL2EUERZ3L6kodFz59SjJH2mkQ7i22tzSAY+EX1ex97ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4xs/pxC4iJIf7JpWGwDdG3tChIjynW/QSJLj1CW0gGs=;
 b=HW1ikvXL06C4nDmJ75tUC/Ik058J9KVbsrmmOn2pWewB2gT+DUkhfP/dIcxQ6n3OH0lSE+bbQjhu6ecZLz2EWDoaDYwFi34EqiLt7+9X3+1UqKvw+DSot7ta3/3fabQMXGlWawpbcuAB68Ki8QI0kN9D3L+/vjK0kNKccWbN6ULZ9J8UyRWuqYnEKPlGekdcMvlMEu6e0I4hpzAcqYQNwbjW4wkr5pSZgn9aX/i4Yrxlp7j8ZvdVXIQlXgs+bng6iuBxrXAuAgjxj3bQVG0nu81658Whl8xLYkeRG8DdBuCqR3eGcVln/MBLjd04UeqtzVv+iLii4HWsiMmJ2J3u7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4xs/pxC4iJIf7JpWGwDdG3tChIjynW/QSJLj1CW0gGs=;
 b=Z93r8fl4oSwphRyzJSpOMEi3thJ5FEn8pQ62s+ft4OindG1yIKPlptr74i/93vlJsNAFdPd/pjasyp/tu0MyArOjPWNWBBNVgKJZIcqHbbHQL3kNe0rqjgtVcQ0pjlGC6MeopZDE6Mhp6MBNnBZjv6AA6K7f6gGNvzYoJEYJxjI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM6PR11MB2572.namprd11.prod.outlook.com (2603:10b6:5:c8::31) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.16; Tue, 23 Nov 2021 21:36:15 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::a5e8:312c:b70:a2a5]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::a5e8:312c:b70:a2a5%4]) with mapi id 15.20.4713.022; Tue, 23 Nov 2021
 21:36:15 +0000
Message-ID: <9829efe7-cff7-8c81-6fa8-dfa21202a0ad@intel.com>
Date: Tue, 23 Nov 2021 13:36:12 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.3.1
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20211117060321.3729343-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <7b3a4b58-d604-9465-34e4-9cf167f110f6@intel.com>
 <a7701b74-0231-6081-8278-c4f151c79a7f@intel.com>
In-Reply-To: <a7701b74-0231-6081-8278-c4f151c79a7f@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR06CA0064.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::41) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
Received: from [192.168.1.65] (99.72.232.53) by
 BYAPR06CA0064.namprd06.prod.outlook.com (2603:10b6:a03:14b::41) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.19 via Frontend
 Transport; Tue, 23 Nov 2021 21:36:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9c9e13ea-36a0-4033-b7dc-08d9aec946f8
X-MS-TrafficTypeDiagnostic: DM6PR11MB2572:
X-Microsoft-Antispam-PRVS: <DM6PR11MB257298989A08D2537CAD1B4FF4609@DM6PR11MB2572.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gTGyQWV8ddJe7DZMGS4nVhfx2ms+qhrGiuJ5GGcW+2TtuS4qJIvuERn/aOVwxcN3at44BkxRzs7vM/WCv9CfepZXdBI9Y3v6S/vd/aRsQwgPc/Dqq2P77pAmqAzm9VZGotrQEg5liZoKuMAti+hxneqXw8tWd/+jeplrhmN+cBANH4RYAoAsTb066TGo1cnbUui2sKpwJM6FflM1p9BC4xkDIlEF04ShvEjM+gPnK9+qiyYCp6lKjyjx8JSNT3RbPoGC6gLb1cVPnYy1lqVtZEh9fOl81wFOPMBFBHO1xtM3mcMtCcYoEa7mBYTJkMaCSfczA8TPkK74aEwx1ZZH+GZjmAGpql3qFnuEB6np3LJCDDsDhw4M3114Vlkj3By6QmxjII/cFlh/SKgmQ2Qp0rN7kBroHa4vpEnVJbknHPUOjMt5GTbgzfeWVF1OGXLU+0/IuKqPu5DcvwuXfaCp8r+q6GJAR6l6Gt4dXU44DQkK3ZPdNkRnup0J0DY0MENTJuLF0Bhtqnk04NVzgUxT/uRPQ2ZDhjyOwmnebjmWKan8SnEdGm128AyjIKr1ShTY1Axd5ZqO3eFc9KiWuK7Q63Bd/gpH4Y+v88WEZG/QoZ0xNkcWnEj1E3UW7NeOEXVwRNHTO1vk5m4HGQfM18KRj7lJU7w7GrTDvVFJYMxWHEsNww3XryutCx+UJNaOI4Ftry8uANh1p819VHXFaHRLkEVYqv+/S6BU5nBDRMRLTp0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(86362001)(16576012)(66946007)(5660300002)(956004)(2616005)(316002)(508600001)(31686004)(36756003)(66476007)(186003)(26005)(2906002)(66556008)(82960400001)(15650500001)(53546011)(31696002)(8936002)(8676002)(45080400002)(6486002)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S21SV1dOdkxtc1JHMTQ5NDFDeTdBS0RJem54cE9FaHV2WEFkUlRXL2gvdkR5?=
 =?utf-8?B?OHRpbHVYdUlnRUhoOUgzSWlVcnVWb3R4RlAvQ0RBdHBPa3JoUWxNNmt5Qm1T?=
 =?utf-8?B?ZjlQSHk1NVgzV1FKL0g4QUN3SkJyRnVnT21vQVp3ZHhyb3ZJa0cvdXdJaEd1?=
 =?utf-8?B?K2d0TXIycVVnSDgxMEd3NkNvM1lWWE1BeWFsSlAyejhKSlJLcFVibkh5ZjB1?=
 =?utf-8?B?dFk2K3pQcGUzbWJ0dFN1Rkl6Yk5laGg4ckJGZlRrQjRxcSsvZDNHUWN4Yzk4?=
 =?utf-8?B?NjM4UE9HeGVzS290MnZZL1NjZkNPVVVvY2pMSHRVMTNZREpJczR2c1ZubXdi?=
 =?utf-8?B?UFRLWEZuMUplaktQVUlCcHg2RzdRRm14Z3VBblJtZVFCSlp1K1N4Mjd6N2pF?=
 =?utf-8?B?MnNkcHVZUUpJNnYySGd3RGVqUkk4c3J2K2lDNmFIb3B3TGt3NXFFYVNtYk1U?=
 =?utf-8?B?bFZZZlFDREFYVkJJSSsyRnplVVZSTlg0OVljRHM1VEI3MWU3dm1zZm9Ld1Vh?=
 =?utf-8?B?ZHN1VCt1V2lNSHBTM3F5NVF4ZzgxRlVXdmVpQ2tXRUQrQWtQNVByUGI2VFNN?=
 =?utf-8?B?S1hMKzhHYzFhU2tWTmZTSmpzZ0o5QllLSzdxYW5KSHBiZDk2SUFMblpaZUFE?=
 =?utf-8?B?WjNFYVUxOXVxcSs2bisrbDBLa3dUQXpYcFo3YjRYRW5OVmQ3Rk14VW9LUUZD?=
 =?utf-8?B?d1VaN3d1YWVZYmVBMUl1OC9sakEvWG1qZTNSQ05GUVllWnhlbnlTTnExWDdi?=
 =?utf-8?B?aWgzRE1LREpEeUZhbnpENXhmOUxWSmtkQ0h5WnJ2NUdzS0xTQWpCTVdkUTZT?=
 =?utf-8?B?UUdONEdMMG5Bdkt4QS95Z3p0T0VqalMrK0IwU1FlQXVqMDB4UTBIUmptdUxQ?=
 =?utf-8?B?d2I2S2VvbWdOYlY3SWd4ZytxNUd6OFUrY21ubHI4NFBBcWV6MjI3WHlZTTZJ?=
 =?utf-8?B?Zyt2ZUxCVnpzZWVNZmtmRk81ZXQ5SU1oeS90SE1uS2RUWWExWVArK2ZxVEtz?=
 =?utf-8?B?ZXRySDlQTVUxcjBTUDlkdjhFM2VFZGx0TDZiOUkzY3R3cm9ZNlY2TkcvTXhI?=
 =?utf-8?B?RFpZRWNGYk9wV1dWNkZGZlhNNzVCTXp5OUcwazBodENHUDFmOVd5d09qMjJZ?=
 =?utf-8?B?UXRkYjltMy9sRVFIK2dmbkdWVEFSWXc5Y1JlK3psVm1ESEpRQUxyc3BGN010?=
 =?utf-8?B?L2JhUHY1V0lnT1dwOGVrYzV1akhmOWd1V3ZxU0Z2WW9oREV6NjRHcFcwdUQv?=
 =?utf-8?B?UEYrd2tmanRqQXkycjg0WjltRmh3elZQdkorTjlmRngxWWtmMUMxeTYvb2pY?=
 =?utf-8?B?QlF4VCt2TTJ6ams3aE54MFBRQ1cxc1UyekFHT1FyTWFZSm9DbWt0ZWdrSWdz?=
 =?utf-8?B?b1EyY0dJejIwOXpMOE16VTByZW93bC9rTWh3OU03TEwvVnFhbHJGUHZXd01v?=
 =?utf-8?B?WXkzdzhSeGxEa3VNY1BlZUpJenh1dE1BSVVabTFRVHRaWUlKejVvakRIbjQ1?=
 =?utf-8?B?ZVNOanowMnozOVh5U0JhNXhBWERpbUF5TmZKWDk4Ykk2dXdFcFFna2p3d0Nq?=
 =?utf-8?B?SEl2VlZCQjFwVTk4Ty93RnJESHdlTGFmbkdIYlBZQzBkMnRudi83bzRFcFd4?=
 =?utf-8?B?NGUrVmtsUU1ia0tjaVl0NkhuN1c3eVIvQ3hWMzJ6NDVKWmRqcEVHSGNrcDZi?=
 =?utf-8?B?WTlNQ2NzOVdiNDNRRUFKNk9iTDZGZGc3V29yUFY5aWVZTXd5dWxLK1lCNTZN?=
 =?utf-8?B?MDJIMHN6VFZlNnQ5dGhHTzFMM0MyU2xOS0RkakJ2YzdXeXVwcjZqRmFjai9C?=
 =?utf-8?B?MGl1NC9oa2lCVDBGV1h1WWFFamZvYzRhODlTRCtaeVhDR1FIOXd5ekM3LzBw?=
 =?utf-8?B?WjMzYzBxZUNzTkFSeUQrdHQ0OVZWdVdFRDF5NzBHeG5NN3JkUTQrVk1naW9n?=
 =?utf-8?B?VVBQOVVyck9ZRDhNWStHV2RmRHhTTnlQeHJOeVlFN2dIOFhpZFV2SVk5OHFz?=
 =?utf-8?B?Z0czWTBnbVJteisyT3lBcXBKSk8zNHRHV2lvNy9FOVpSR05MU1ppcDZVZHFN?=
 =?utf-8?B?WCtaZC9WY29OcUQ4RkV0QThNR2ZvSHNUZ0pBaDBSU2E0aWV6eDZxc0hIdll1?=
 =?utf-8?B?VHBNNEt2K3lQeGgwbTkzRFhtUHd1QzJPQUxNdFdWRkhiQ3EvdjZpcGNtZ2t2?=
 =?utf-8?B?dHFuRHVXanpLZ3J0R3BhNTNCbkRSL3hTRWlwQllwOEVLRlZXVGJDVGtHQ0dC?=
 =?utf-8?B?UTQwbmZ0TWFiaklZRzF6enVaQU13PT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c9e13ea-36a0-4033-b7dc-08d9aec946f8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2021 21:36:15.5335 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JgfoTow4iAFO2jOJR+b8zL5znHG+BkqnCxK2BMR3RJO/hmIYecdmUK0efVJJ+sx5f82DHudMiBHu0MM+Utmh5+v+19Puh2GkMGp7AsuruA0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2572
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gt: Hold RPM wakelock during
 PXP suspend
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



On 11/22/2021 8:56 AM, Daniele Ceraolo Spurio wrote:
>
>
> On 11/18/2021 11:35 AM, Daniele Ceraolo Spurio wrote:
>>
>>
>> On 11/16/2021 10:03 PM, Tejas Upadhyay wrote:
>>> selftest --r live shows failure in suspend tests when
>>> RPM wakelock is not acquired during suspend.
>>>
>>> This changes addresses below error :
>>> <4> [154.177535] RPM wakelock ref not held during HW access
>>> <4> [154.177575] WARNING: CPU: 4 PID: 5772 at
>>> drivers/gpu/drm/i915/intel_runtime_pm.h:113
>>> fwtable_write32+0x240/0x320 [i915]
>>> <4> [154.177974] Modules linked in: i915(+) vgem drm_shmem_helper
>>> fuse snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic
>>> ledtrig_audio mei_hdcp mei_pxp x86_pkg_temp_thermal coretemp
>>> crct10dif_pclmul crc32_pclmul ghash_clmulni_intel snd_intel_dspcfg
>>> snd_hda_codec snd_hwdep igc snd_hda_core ttm mei_me ptp
>>> snd_pcm prime_numbers mei i2c_i801 pps_core i2c_smbus intel_lpss_pci
>>> btusb btrtl btbcm btintel bluetooth ecdh_generic ecc [last unloaded: 
>>> i915]
>>> <4> [154.178143] CPU: 4 PID: 5772 Comm: i915_selftest Tainted: G
>>> U            5.15.0-rc6-CI-Patchwork_21432+ #1
>>> <4> [154.178154] Hardware name: ASUS System Product Name/TUF GAMING
>>> Z590-PLUS WIFI, BIOS 0811 04/06/2021
>>> <4> [154.178160] RIP: 0010:fwtable_write32+0x240/0x320 [i915]
>>> <4> [154.178604] Code: 15 7b e1 0f 0b e9 34 fe ff ff 80 3d a9 89 31
>>> 00 00 0f 85 31 fe ff ff 48 c7 c7 88 9e 4f a0 c6 05 95 89 31 00 01 e8
>>> c0 15 7b e1 <0f> 0b e9 17 fe ff ff 8b 05 0f 83 58 e2 85 c0 0f 85 8d
>>> 00 00 00 48
>>> <4> [154.178614] RSP: 0018:ffffc900016279f0 EFLAGS: 00010286
>>> <4> [154.178626] RAX: 0000000000000000 RBX: ffff888204fe0ee0
>>> RCX: 0000000000000001
>>> <4> [154.178634] RDX: 0000000080000001 RSI: ffffffff823142b5
>>> RDI: 00000000ffffffff
>>> <4> [154.178641] RBP: 00000000000320f0 R08: 0000000000000000
>>> R09: c0000000ffffcd5a
>>> <4> [154.178647] R10: 00000000000f8c90 R11: ffffc90001627808
>>> R12: 0000000000000000
>>> <4> [154.178654] R13: 0000000040000000 R14: ffffffffa04d12e0
>>> R15: 0000000000000000
>>> <4> [154.178660] FS:  00007f7390aa4c00(0000) GS:ffff88844f000000(0000)
>>> knlGS:0000000000000000
>>> <4> [154.178669] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>>> <4> [154.178675] CR2: 000055bc40595028 CR3: 0000000204474005
>>> CR4: 0000000000770ee0
>>> <4> [154.178682] PKRU: 55555554
>>> <4> [154.178687] Call Trace:
>>> <4> [154.178706]  intel_pxp_fini_hw+0x23/0x30 [i915]
>>> <4> [154.179284]  intel_pxp_suspend+0x1f/0x30 [i915]
>>> <4> [154.179807]  live_gt_resume+0x5b/0x90 [i915]
>>>
>>> Changes since V2 :
>>>     - Remove boolean in intel_pxp_runtime_preapre for
>>>       non-pxp configs. Solves build error
>>> Changes since V2 :
>>>     - Open-code intel_pxp_runtime_suspend - Daniele
>>>     - Remove boolean in intel_pxp_runtime_preapre - Daniele
>>> Changes since V1 :
>>>     - split the HW access parts in gt_suspend_late - Daniele
>>>     - Remove default PXP configs
>>>
>
> Just realized this is also missing a fixes tag:
>
> Fixes: 0cfab4cb3c4e ("drm/i915/pxp: Enable PXP power management")
>
> Daniele
>
>>> Signed-off-by: Tejas Upadhyay 
>>> <tejaskumarx.surendrakumar.upadhyay@intel.com>
>>
>> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>
>> Can you send a trybot with the PXP config enabled before we merge 
>> this, just to make sure the issue is gone?
>>

Trybot came back ok for this change, so pushed to gt-next (fixes tag 
included).

Thanks,
Daniele

>> Thanks,
>> Daniele
>>
>>> ---
>>>   drivers/gpu/drm/i915/gt/intel_gt_pm.c   |  7 +++--
>>>   drivers/gpu/drm/i915/pxp/intel_pxp_pm.c | 37 
>>> +++++++++++++++++--------
>>>   drivers/gpu/drm/i915/pxp/intel_pxp_pm.h | 19 +++++++++++--
>>>   3 files changed, 46 insertions(+), 17 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c 
>>> b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>> index b4a8594bc46c..c0fa41e4c803 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>> @@ -303,7 +303,7 @@ void intel_gt_suspend_prepare(struct intel_gt *gt)
>>>       user_forcewake(gt, true);
>>>       wait_for_suspend(gt);
>>>   -    intel_pxp_suspend(&gt->pxp, false);
>>> +    intel_pxp_suspend_prepare(&gt->pxp);
>>>   }
>>>     static suspend_state_t pm_suspend_target(void)
>>> @@ -328,6 +328,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
>>>       GEM_BUG_ON(gt->awake);
>>>         intel_uc_suspend(&gt->uc);
>>> +    intel_pxp_suspend(&gt->pxp);
>>>         /*
>>>        * On disabling the device, we want to turn off HW access to 
>>> memory
>>> @@ -355,7 +356,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
>>>     void intel_gt_runtime_suspend(struct intel_gt *gt)
>>>   {
>>> -    intel_pxp_suspend(&gt->pxp, true);
>>> +    intel_pxp_runtime_suspend(&gt->pxp);
>>>       intel_uc_runtime_suspend(&gt->uc);
>>>         GT_TRACE(gt, "\n");
>>> @@ -373,7 +374,7 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
>>>       if (ret)
>>>           return ret;
>>>   -    intel_pxp_resume(&gt->pxp);
>>> +    intel_pxp_runtime_resume(&gt->pxp);
>>>         return 0;
>>>   }
>>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c 
>>> b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>>> index 23fd86de5a24..6a7d4e2ee138 100644
>>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>>> @@ -7,26 +7,29 @@
>>>   #include "intel_pxp_irq.h"
>>>   #include "intel_pxp_pm.h"
>>>   #include "intel_pxp_session.h"
>>> +#include "i915_drv.h"
>>>   -void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime)
>>> +void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
>>>   {
>>>       if (!intel_pxp_is_enabled(pxp))
>>>           return;
>>>         pxp->arb_is_valid = false;
>>>   -    /*
>>> -     * Contexts using protected objects keep a runtime PM 
>>> reference, so we
>>> -     * can only runtime suspend when all of them have been either 
>>> closed
>>> -     * or banned. Therefore, there is no need to invalidate in that
>>> -     * scenario.
>>> -     */
>>> -    if (!runtime)
>>> -        intel_pxp_invalidate(pxp);
>>> +    intel_pxp_invalidate(pxp);
>>> +}
>>>   -    intel_pxp_fini_hw(pxp);
>>> +void intel_pxp_suspend(struct intel_pxp *pxp)
>>> +{
>>> +    intel_wakeref_t wakeref;
>>>   -    pxp->hw_state_invalidated = false;
>>> +    if (!intel_pxp_is_enabled(pxp))
>>> +        return;
>>> +
>>> + with_intel_runtime_pm(&pxp_to_gt(pxp)->i915->runtime_pm, wakeref) {
>>> +        intel_pxp_fini_hw(pxp);
>>> +        pxp->hw_state_invalidated = false;
>>> +    }
>>>   }
>>>     void intel_pxp_resume(struct intel_pxp *pxp)
>>> @@ -44,3 +47,15 @@ void intel_pxp_resume(struct intel_pxp *pxp)
>>>         intel_pxp_init_hw(pxp);
>>>   }
>>> +
>>> +void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
>>> +{
>>> +    if (!intel_pxp_is_enabled(pxp))
>>> +        return;
>>> +
>>> +    pxp->arb_is_valid = false;
>>> +
>>> +    intel_pxp_fini_hw(pxp);
>>> +
>>> +    pxp->hw_state_invalidated = false;
>>> +}
>>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h 
>>> b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
>>> index c89e97a0c3d0..16990a3f2f85 100644
>>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
>>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
>>> @@ -9,16 +9,29 @@
>>>   #include "intel_pxp_types.h"
>>>     #ifdef CONFIG_DRM_I915_PXP
>>> -void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime);
>>> +void intel_pxp_suspend_prepare(struct intel_pxp *pxp);
>>> +void intel_pxp_suspend(struct intel_pxp *pxp);
>>>   void intel_pxp_resume(struct intel_pxp *pxp);
>>> +void intel_pxp_runtime_suspend(struct intel_pxp *pxp);
>>>   #else
>>> -static inline void intel_pxp_suspend(struct intel_pxp *pxp, bool 
>>> runtime)
>>> +static inline void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
>>> +{
>>> +}
>>> +
>>> +static inline void intel_pxp_suspend(struct intel_pxp *pxp)
>>>   {
>>>   }
>>>     static inline void intel_pxp_resume(struct intel_pxp *pxp)
>>>   {
>>>   }
>>> -#endif
>>>   +static inline void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
>>> +{
>>> +}
>>> +#endif
>>> +static inline void intel_pxp_runtime_resume(struct intel_pxp *pxp)
>>> +{
>>> +    intel_pxp_resume(pxp);
>>> +}
>>>   #endif /* __INTEL_PXP_PM_H__ */
>>
>

