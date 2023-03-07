Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E73796AE0F9
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 14:44:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CC4610E264;
	Tue,  7 Mar 2023 13:44:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1149110E264
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 13:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678196672; x=1709732672;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7FddYYMAgz9UQxM0uRmWUfYuAB3k+NbqyKkdTlTVutE=;
 b=mRrKjxev3wya4cKzY82XRT+GhuULpClbtHnZ/ARpQXrDEczXq7rPgnVt
 PG5Z1th8VG/BF19+7pRT6zOfK0vwpmQeRlA9XfIDvzRbjZWv5JJTK0PNp
 QH9kEXs1O9eZLvfFf8+pwGvC65X8dNEcfn9aPHJgUdpW8D8jfRyD/5fus
 7YQt8nVqCRTls+pnP6GfN2V8P0NHpqb7Fm0F6geXYleuzHQWRubUk22Es
 cZ1CaQRZgIlJG0L7avgZkdOmm5QDR4nbJC8tAbS1O3W/grC2KmeSPaKHH
 w41xASwodmcH2E1LQRU9Wkh1bYewY1s+oVRwHfIsYQWvg1qnov0fl+xmX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="316250257"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="316250257"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 05:44:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="706807433"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="706807433"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 07 Mar 2023 05:44:31 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 7 Mar 2023 05:44:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 7 Mar 2023 05:44:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 7 Mar 2023 05:44:30 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 7 Mar 2023 05:44:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hi+/B4SHmThnuok/AIqO5B0EJ2pmRTVxgy0x4vpJ72+FUlQzumopIEXMt8yowgdzSD6EL0/e1PNcw5N5gY5epN+9YpOFuZ4/O8t3h9N41n0/RFlh9fpPlJIpNkcTVbIkMFoq3AzUaCITh8mvEP6FXX+Cn1j/SwcysJgP9zU/ykI11dfd2cs92LajxdPE3zxqUs5KFErDj+NiNLmLXgWKGLVs9PunlJhYPzba2J1lfAbshAaHVRPqkz+7/gpplupzWlne4FD5USkwdR+M7wFjgxT0sOgJcMngm0yTBfwuqZRI2jhWwf1uSGrGECJnLKb8dgMwVS6/DWU4tE4c/28yQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f8yi/bP4V6Xlc4hQCGy7UBa4VOSARmEWWDrgQLwoUKY=;
 b=CKlLTnJ99eMeIoHtTuxDXLVXPlgxSd5eTPgDSoaEbgcbBeO2dPy/f/V7wayEnWt6+fEXD6kQhS+rHYiAFrmZ49s4vWHV58el/HhHtFd+tcoP7uGCbmXWPdMLyyA/A49FvfhyYHSbtiqOweaqZ93ORZhOcQZ8+uR0ypmNV0Mr4PakhokFy10e8Eb2XeqtCIrD6kKlCn+rLMFCTdTvLOY0xvj6eAt6HSA+q+g4DauHjp0ikh+KEYjhgqlYLPb/20N0QHbDd/c/k7me7teCwHiipVjtUpkLjYomA0OV1hFyP3a+yq9nEPSGwb8rHa1DkID1KuOLairRr8+aqn+jEVcNQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by PH0PR11MB7542.namprd11.prod.outlook.com (2603:10b6:510:28b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Tue, 7 Mar
 2023 13:44:23 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::ba24:c771:dd96:7d68]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::ba24:c771:dd96:7d68%9]) with mapi id 15.20.6156.029; Tue, 7 Mar 2023
 13:44:23 +0000
Message-ID: <8622e68f-1e38-9660-4e49-25e14748fc51@intel.com>
Date: Tue, 7 Mar 2023 19:14:13 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, "Gupta, Anshuman"
 <anshuman.gupta@intel.com>
References: <20230304161749.1420224-1-badal.nilawar@intel.com>
 <CY5PR11MB6211CAA5EF431A7486E94BF495B69@CY5PR11MB6211.namprd11.prod.outlook.com>
 <ZAZK+0mtzebzDzka@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <ZAZK+0mtzebzDzka@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0209.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::20) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|PH0PR11MB7542:EE_
X-MS-Office365-Filtering-Correlation-Id: 5efa3b6f-5685-435f-7e5e-08db1f120f37
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VqgMce7NvreUPFRXrpo/rrTV8+oPkQUWtjyUXx6onJdDYEALD0OOaMMOJ8iIyjwsLLYsQaXbuJG5ym5JDe9pWz9edANVoyxQMDbEZeZRBq0JJ5C/OvzwKY/k/f79UgZPJsSOV2Ds4TqoTupVsKf5huis87MRbtZnJfUJWYf+4pQEs1kvNm6CXklvj80kxffzKl181NkHcyluG7lX9W0Bbt5aO30zshNB34C3lQrPOd4mRgJoYfvark8bAL+j0m0jn1akTHrZsN1Yl4aQJEToy0z0sUIZJIJt4shaiAxqbOkXZdpMxWJE8e3jBlXx91ZFOkQctkd4Foc0RBKi/rTInErzjWb5+ciQVYIo2xJnbj8IaugsdYIjmZkRfSwbYbRlOdcEWvkJabLjXsfwNnfSlPrYzreJREr06r1uCS4XodLYnnv4bzShFm0KovM9OqlnVZAuIDQrADaGYf6E9vrfiDJTHtaOugo7Lzypro+k7kbsR17LW0AJAwMPiQaJOhBTqwDRaWwsjYEvzc196EYYIGeq1EspSgTd0WpL+FN/cR0oOrHcMnTYmX9rZlmhPddqa438CoXdxtUTlX06aMZ1lnflnUWZ1mh1B50RJxeKmBtP0N1Cb3iwewnvDNjRRth+CmjQ40XuiOMFnkwVh7awtI9FsQYtpwny2MWtaV3Qq5kyQFXsURIbHsMqpoAaMqa/RVffm7hwDc1L5q7lBKO1O698Ph++kqGLdEDO+LFecDM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(366004)(346002)(39860400002)(136003)(396003)(451199018)(31686004)(8936002)(5660300002)(66556008)(66476007)(15650500001)(2906002)(4326008)(8676002)(54906003)(110136005)(316002)(6636002)(478600001)(66946007)(6666004)(6506007)(36756003)(107886003)(53546011)(6486002)(6512007)(26005)(2616005)(41300700001)(31696002)(82960400001)(86362001)(83380400001)(186003)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXdJanlTYVd1eVJYZVc5YXBCRzlNYVpEbWZPZ1hRQ0xjTlpXdTNrbjZuelJ4?=
 =?utf-8?B?M0UxQWFWYSthZ3dnNWRXY1g4M0lrbXJ4U29PM0d3Q25zdlZya2tCNEV5aWQy?=
 =?utf-8?B?MjVpV0o2anQwRWhBTkRPMkQvTG5yZDR2Q0RZY2Jld3lnb2U2elhnckZiUk5L?=
 =?utf-8?B?bjRmNEFCbDlZSkZrNG02ZmFPOTM2a01hMExRTFJIRmRoZHpQY09mUzRBNWth?=
 =?utf-8?B?ZGtSc2UzQjFCdGYzQXRWSGY0MTBaTWkreWhYZVJpS0lvNmRHaENtc015ZmJo?=
 =?utf-8?B?bmpOWDI2TmorT1ovMDhEazZsdXdkRVA0UG5QZnEzcXVhMEk5enZRYWtIZTdU?=
 =?utf-8?B?blp0MVRrOHdjTUZPU09IZFVGZmw1dFBlMDdXRkxpeUpHZzBJeVNIbVpzN2RX?=
 =?utf-8?B?alBBTk9Qd0xPTDlpWlowbXpCQ01IT3dCVkU5QTJ1MWt2Y1ExV1o1em1mNVhF?=
 =?utf-8?B?bjVEa1poVXJQbnRWcC9SNFFuQ1pEWDU3SjNFY2h0T0hPY3dXYjlBQml4Sm0x?=
 =?utf-8?B?clVuaVF0R3dRZVRDd1lCdW9xNEFmUURxcnJ5WU5RT01IR3NoZWlzV25OeHZE?=
 =?utf-8?B?ME8yYkpycDJkTkRIeGRieU5oUUJWYTZxd2taWUNQbXBLTkRIUG5aWU9BQmRV?=
 =?utf-8?B?TGJQeUpJMnI3ZUhWcWFBaEI1cTF5U2RMSHN6RzcvZVNVbTNXSmd1bFV1YWlm?=
 =?utf-8?B?Mzg3cDdselZ3VDVCRjRCeFFyUUNLdVRKQmxYN05wTGVkWHVtcDVydHc4MklU?=
 =?utf-8?B?c2tlcXBSOW0rWnJLQXdpYkErUm9Ed1lZSUhIRUhObk1GVVF4cXFXS3lNMExo?=
 =?utf-8?B?WmN4OThIWDVoNjFIWGxLTW12cG9GTmlOQlJGR2d3QkRoVko5cExUaElZeEE4?=
 =?utf-8?B?NEV1WWZyRlU4Mk9CMkVjTW9iTGdodWc3UjUzNkdKZWY4STEyQjJMdmhYMEgz?=
 =?utf-8?B?VVNESHgzdXF5MFIzS24xdmJHM2pTOUN6enBXMlB4OVIrRHB4V2dMeWdZUWZj?=
 =?utf-8?B?VjBBVDl5M0h6cmVEYUJQWGFrOVp1bUVlZ0psblhpSCtoc1VQSCtBYzZLYVAw?=
 =?utf-8?B?MExyR0svQzdlUmQ1WU1HSDFSZmtuc0FvVkMrSTJXVmJWS3VjYkZDejMyckR3?=
 =?utf-8?B?dlhnOTV3UXBHMVVOVXcxSjF0ckFZdyt3QnVaV0J4QXJIaVo5RDZZUHdMVUlV?=
 =?utf-8?B?b1BhazZ5S3dGYjJIQ1A5TGlXMm50THo5WE9hc0RVWjBEMGVwWmJaVDB6S2ZQ?=
 =?utf-8?B?Ty82Y3lYVjlYT29OWklINVFITlFKVFR3Y3JpV0E4SXhUQXltelp1U295SUh4?=
 =?utf-8?B?K1B1bnFoWEYwQ1dJRldCamRReUVtZ3JkMzlDUnFEQXFtOEVQeUNNUmlvaHox?=
 =?utf-8?B?OHRMYTk2bktmVXR1SzdsOCtYVm5zWkVXV2tRd0paS0hqZTFPYUZGNjRuTmdC?=
 =?utf-8?B?b3hkS2IzakU4L3N0Z0pDV3Jaa1BKYXNUdDJYTWQrOE1IeU5kY3ZtRUJOQnJY?=
 =?utf-8?B?NnEvdWRJTlFrZXRkMVRoNFN2R3ZNWUU1WlpWM25KZ1h0UzRKNHVuZ3pwSUxt?=
 =?utf-8?B?Q2pVdDlUaFJ6d25UL3ZRamQ1bUc1QndjUmdJQ1YrNXpUa2EyMGhpYW5CUHd2?=
 =?utf-8?B?WUVuSSt3UUErVUhaTHI4SU96L3pEcGp1TUhKYTdlNWlralc0ZVI1NHB4QjVX?=
 =?utf-8?B?ZCtSdXprd1lwVTJHa210ajh0dTVjaGdLam52Nmc5UnVzWXVPeTNLemZqNUJr?=
 =?utf-8?B?QnMwN05TMldmMkRFSUptWXFHVGwvazBtNmkwSjBvc3dFMWxMRGN1bDVBamVa?=
 =?utf-8?B?R0E5dTRNazc1RGxuYnBiL2ZjZFRMajJFdnNwQmM1TkpHV3NlVU5lalBkL1Fs?=
 =?utf-8?B?UkRtc2NsUm1ubmpwaFdZajZGRlQwRDRYWFAzVjcvSHN5cyswYWRtTEhKKysv?=
 =?utf-8?B?NC9DUCtwYjNXWjBCcFV5VTk1Yy9WaTdaTmpidlEwbmQwNVVURTNoT3ZTNXRM?=
 =?utf-8?B?cGlzLzA3ZHdxTkVHOHo2RG11K09YdzZLdlF3UitYNVVIY0tuZUFQWmM0a1cy?=
 =?utf-8?B?QkZBSWVyYXlKUjZpKzEvWGlNWExncXpsaHN3VGJVTzduM1NYSzk2SFJqMDJY?=
 =?utf-8?B?WWJvNVFDcUpQN2RMaEZ0ZHlNVmVsanlEdUZUODVvc3B3ZDRobGFmMzUrTDRa?=
 =?utf-8?B?MHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5efa3b6f-5685-435f-7e5e-08db1f120f37
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2023 13:44:23.2147 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EqqjiCXEXmWYl3l8v2uSOeP7IX38kVp0LC5nOd+uWKnPtspOLwyavlaTkgvQDj/lDD9fU3tKrJZYbeg3KXnEyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7542
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Extend Wa_14017073508 in
 suspend/resume flow
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 07-03-2023 01:50, Rodrigo Vivi wrote:
> On Mon, Mar 06, 2023 at 08:33:04AM +0000, Gupta, Anshuman wrote:
>>
>>
>>> -----Original Message-----
>>> From: Nilawar, Badal <badal.nilawar@intel.com>
>>> Sent: Saturday, March 4, 2023 9:48 PM
>>> To: intel-gfx@lists.freedesktop.org
>>> Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Ewins, Jon
>>> <jon.ewins@intel.com>; Belgaumkar, Vinay <vinay.belgaumkar@intel.com>;
>>> Vivi, Rodrigo <rodrigo.vivi@intel.com>
>>> Subject: [PATCH] drm/i915/mtl: Extend Wa_14017073508 in suspend/resume
>>> flow
>>>
>>> During suspend resume flow it was seen that lots forcewakes are taken and
>>> released for media. So to avoid HANG due to MC6 entry/exit while accessing
>>> media applied Wa_14017073508 in suspend/resume flow.
>> We need to fix such gaps in runtime PM as well, but that will make this WA dirty somewhat similar to other RC6 related WA on other platforms.
>> I suggest to disable the MC6 rather on A step rather than having this form of WA. This WA is not needed on A step.
>> @rodrigo and @matt what is you opinion here ?
> 
> My opinion since day-0 is that we should simply disable MC6 on A0 parts
> and move on with this feature only on B0. Since the beginning it was
> pretty clear that this workaround would get out of control and become
> the same as the PVC-RC6 one.
Thanks for your opinion Rodrigo. I will disable MC6 and send the patch.

Regards,
Badal Nilawar
> 
>>
>> However some comment her to improve this patch.
>>
>>>
>>> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gem/i915_gem_pm.c   |  6 ++++-
>>>   drivers/gpu/drm/i915/gt/intel_gt_pm.c    | 32 ++++++++++++++++--------
>>>   drivers/gpu/drm/i915/gt/intel_gt_pm.h    |  3 +++
>>>   drivers/gpu/drm/i915/gt/intel_gt_types.h |  1 +
>>>   drivers/gpu/drm/i915/i915_driver.c       | 32 ++++++++++++++++++++++++
>>>   5 files changed, 62 insertions(+), 12 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
>>> b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
>>> index 0d812f4d787d..60deac41104d 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
>>> @@ -160,8 +160,12 @@ void i915_gem_suspend_late(struct
>>> drm_i915_private *i915)
>>>   	 * machine in an unusable condition.
>>>   	 */
>>>
>>> -	for_each_gt(gt, i915, i)
>>> +	for_each_gt(gt, i915, i) {
>>> +		/* Wa_14017073508: mtl */
>>> +		mtl_media_busy(gt);
>> Let's add  these busy/idle in intel_gt_suspend_late()
>>>   		intel_gt_suspend_late(gt);
>>> +		mtl_media_idle(gt);
>>> +	}
>>>
>>>   	spin_lock_irqsave(&i915->mm.obj_lock, flags);
>>>   	for (phase = phases; *phase; phase++) { diff --git
>>> a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>> b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>> index cef3d6f5c34e..1f3bf1cf0421 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>> @@ -26,24 +26,34 @@
>>>
>>>   #define I915_GT_SUSPEND_IDLE_TIMEOUT (HZ / 2)
>>>
>>> -static void mtl_media_busy(struct intel_gt *gt)
>>> +void mtl_media_busy(struct intel_gt *gt)
>>>   {
>>>   	/* Wa_14017073508: mtl */
>>> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
>>> +	if (gt && IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)
>>> &&
>>>   	    gt->type == GT_MEDIA)
>> Let's have this in a separate patch , I believe that is already floated and ready to merge.
>>> -		snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
>>> -				  PCODE_MBOX_GT_STATE_MEDIA_BUSY,
>>> -
>>> PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
>>> +		if (!atomic_inc_not_zero(&gt->media_wakeref)) {
>>> +			drm_err(&gt->i915->drm, "Media busy\n");
>> This should not be Error message.
>>> +			snb_pcode_write_p(gt->uncore,
>>> PCODE_MBOX_GT_STATE,
>>> +
>>> PCODE_MBOX_GT_STATE_MEDIA_BUSY,
>>> +
>>> PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
>>> +			atomic_inc(&gt->media_wakeref);
>>> +		}
>>>   }
>>>
>>> -static void mtl_media_idle(struct intel_gt *gt)
>>> +void mtl_media_idle(struct intel_gt *gt)
>>>   {
>>>   	/* Wa_14017073508: mtl */
>>> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
>>> -	    gt->type == GT_MEDIA)
>>> -		snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
>>> -
>>> PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY,
>>> -
>>> PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
>>> +	if (gt && IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)
>>> &&
>>> +	    gt->type == GT_MEDIA) {
>>> +		WARN_ON(atomic_read(&gt->media_wakeref) <= 0);
>>> +		if (!atomic_add_unless(&gt->media_wakeref, -1, 1)) {
>>> +			drm_err(&gt->i915->drm, "Media idle\n");
>> Same here this can't be error message.
>> Thanks,
>> Anshuman Gupta.
>>> +			snb_pcode_write_p(gt->uncore,
>>> PCODE_MBOX_GT_STATE,
>>> +
>>> PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY,
>>> +
>>> PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
>>> +			atomic_dec(&gt->media_wakeref);
>>> +		}
>>> +	}
>>>   }
>>>
>>>   static void user_forcewake(struct intel_gt *gt, bool suspend) diff --git
>>> a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
>>> b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
>>> index 6c9a46452364..43ffabf9babe 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
>>> @@ -89,4 +89,7 @@ static inline bool is_mock_gt(const struct intel_gt *gt)
>>>   	return I915_SELFTEST_ONLY(gt->awake == -ENODEV);  }
>>>
>>> +void mtl_media_busy(struct intel_gt *gt); void mtl_media_idle(struct
>>> +intel_gt *gt);
>>> +
>>>   #endif /* INTEL_GT_PM_H */
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>> b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>> index f08c2556aa25..321ccfef4028 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>> @@ -145,6 +145,7 @@ struct intel_gt {
>>>
>>>   	struct intel_wakeref wakeref;
>>>   	atomic_t user_wakeref;
>>> +	atomic_t media_wakeref;
>>>
>>>   	struct list_head closed_vma;
>>>   	spinlock_t closed_lock; /* guards the list of closed_vma */ diff --git
>>> a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>>> index 8bc76dede332..c7625ea28022 100644
>>> --- a/drivers/gpu/drm/i915/i915_driver.c
>>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>>> @@ -327,6 +327,8 @@ static int i915_driver_mmio_probe(struct
>>> drm_i915_private *dev_priv)
>>>   	intel_gmch_bar_setup(dev_priv);
>>>   	intel_device_info_runtime_init(dev_priv);
>>>
>>> +	/* Wa_14017073508: mtl */
>>> +	mtl_media_busy(dev_priv->media_gt);
>>>   	for_each_gt(gt, dev_priv, i) {
>>>   		ret = intel_gt_init_mmio(gt);
>>>   		if (ret)
>>> @@ -335,10 +337,14 @@ static int i915_driver_mmio_probe(struct
>>> drm_i915_private *dev_priv)
>>>
>>>   	/* As early as possible, scrub existing GPU state before clobbering */
>>>   	sanitize_gpu(dev_priv);
>>> +	/* Wa_14017073508: mtl */
>>> +	mtl_media_idle(dev_priv->media_gt);
>>>
>>>   	return 0;
>>>
>>>   err_uncore:
>>> +	/* Wa_14017073508: mtl */
>>> +	mtl_media_idle(dev_priv->media_gt);
>>>   	intel_gmch_bar_teardown(dev_priv);
>>>
>>>   	return ret;
>>> @@ -781,6 +787,12 @@ int i915_driver_probe(struct pci_dev *pdev, const
>>> struct pci_device_id *ent)
>>>   	if (ret < 0)
>>>   		goto out_tiles_cleanup;
>>>
>>> +	/* Wa_14017073508: mtl */
>>> +	if (i915->media_gt) {
>>> +		atomic_set(&i915->media_gt->media_wakeref, 0);
>>> +		mtl_media_busy(i915->media_gt);
>>> +	}
>>> +
>>>   	ret = i915_driver_hw_probe(i915);
>>>   	if (ret < 0)
>>>   		goto out_cleanup_mmio;
>>> @@ -838,6 +850,8 @@ int i915_driver_probe(struct pci_dev *pdev, const
>>> struct pci_device_id *ent)
>>>   	i915_gem_drain_freed_objects(i915);
>>>   	i915_ggtt_driver_late_release(i915);
>>>   out_cleanup_mmio:
>>> +	/* Wa_14017073508: mtl */
>>> +	mtl_media_idle(i915->media_gt);
>>>   	i915_driver_mmio_release(i915);
>>>   out_tiles_cleanup:
>>>   	intel_gt_release_all(i915);
>>> @@ -1063,6 +1077,9 @@ static int i915_drm_suspend(struct drm_device
>>> *dev)
>>>
>>>   	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>>>
>>> +	/* Wa_14017073508: mtl */
>>> +	mtl_media_busy(dev_priv->media_gt);
>>> +
>>>   	/* We do a lot of poking in a lot of registers, make sure they work
>>>   	 * properly. */
>>>   	intel_power_domains_disable(dev_priv);
>>> @@ -1097,6 +1114,9 @@ static int i915_drm_suspend(struct drm_device
>>> *dev)
>>>
>>>   	intel_dmc_suspend(dev_priv);
>>>
>>> +	/* Wa_14017073508: mtl */
>>> +	mtl_media_busy(dev_priv->media_gt);
>>> +
>>>   	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>>>
>>>   	i915_gem_drain_freed_objects(dev_priv);
>>> @@ -1197,6 +1217,9 @@ static int i915_drm_resume(struct drm_device
>>> *dev)
>>>
>>>   	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>>>
>>> +	/* Wa_14017073508: mtl */
>>> +	mtl_media_busy(dev_priv->media_gt);
>>> +
>>>   	ret = i915_pcode_init(dev_priv);
>>>   	if (ret)
>>>   		return ret;
>>> @@ -1260,6 +1283,9 @@ static int i915_drm_resume(struct drm_device
>>> *dev)
>>>
>>>   	intel_gvt_resume(dev_priv);
>>>
>>> +	/* Wa_14017073508: mtl */
>>> +	mtl_media_idle(dev_priv->media_gt);
>>> +
>>>   	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>>>
>>>   	return 0;
>>> @@ -1319,6 +1345,9 @@ static int i915_drm_resume_early(struct
>>> drm_device *dev)
>>>
>>>   	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>>>
>>> +	/* Wa_14017073508: mtl */
>>> +	mtl_media_busy(dev_priv->media_gt);
>>> +
>>>   	ret = vlv_resume_prepare(dev_priv, false);
>>>   	if (ret)
>>>   		drm_err(&dev_priv->drm,
>>> @@ -1333,6 +1362,9 @@ static int i915_drm_resume_early(struct
>>> drm_device *dev)
>>>
>>>   	intel_power_domains_resume(dev_priv);
>>>
>>> +	/* Wa_14017073508: mtl */
>>> +	mtl_media_idle(dev_priv->media_gt);
>>> +
>>>   	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>>>
>>>   	return ret;
>>> --
>>> 2.25.1
>>
