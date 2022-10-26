Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BC460E8F6
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 21:25:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E33210E775;
	Wed, 26 Oct 2022 19:25:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DBFC10E775
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 19:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666812340; x=1698348340;
 h=message-id:date:subject:from:to:references:in-reply-to:
 mime-version; bh=6drC9pdZkCVPM8e1KaO1Q3ERVomZ9x4wnkvf5O2mhyw=;
 b=OswEfMj8yg8swoCcrmWRvtzvQWPVMEhaY8W7QwDruAKf/uVLE2psrKvQ
 cf82qANx/bGhf2Ke9R1e0ujEd2wKKiNBkEj2ZqSsK9JuzbUp1vJVvdlye
 o/OBnaCu9bHi2oNYtXeugDwCVdWBZoea2YJJuVAUrCatUuOwUAfF7kSDi
 /g9Y8iwSPuhaT+tgWAcKeO7V1UlFWz+Ree64JUITgoE3u/OJLGTxpws4A
 8/EeDbbltQkVPhnFnztSQPFbBr6OB9LWhDU4m0HA2y1rm4QUfichvawoA
 ogH0QIAP8SFl9MMbmH9gwbdRMZcSs2gWcX/wQGs0Q6fP7y92LvFw2UcM5 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="308034723"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; 
 d="scan'208,217";a="308034723"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 12:25:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="721383815"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; 
 d="scan'208,217";a="721383815"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Oct 2022 12:25:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 26 Oct 2022 12:25:39 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 26 Oct 2022 12:25:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 26 Oct 2022 12:25:38 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 26 Oct 2022 12:25:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LTgfcshw/OiKLn7xJYpX9zdckcZIFWEzKi0bIvk48Qlej2bWqR5BUIefba/C0x/FZpR3UoKtnutL1TeEOF0m9L8qolS8ro3GD/eSjbwKsYMogLbKX1iZqD7AotCeUX3jxoQwgA323gTtlOQilSWs+2Q3BMY5B0hKYkv8fv934A7cqomYRHSG+5VXKmc6WXKm9bIebv4CUh0xthaCpOWFMqwF8W5TRqYYGiPEtM7Cg6RByNnXVlDxn/HsKnEIEsjdj+vPpAZNzQEr/qvqANDJZST9AQ0bp0GmH0TNjo1mRO0ncZdzi5nkmMONpcGmpccqT3lwRjdbylDwlkrgYaSc7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eHRZRVFI2NsoltkPm2akKk4Ca71cs2B9QVqBFR1WSzA=;
 b=mGfBUILAZ8Y+YIc5dwYtPZLNdo1PjsxWtOdxDxPGuU57DhmJ6NV45e/jmEt0t6hTe1RcB/NYSk+xjMT12OrkU75TslzQZdr1mtmq/r7Y5hHCRwYeCiDx2qQt1GwkQAbs/Ub00Hx3JWIZou5otjNpwf7rAyCNy2k4JrBblAlP47oXdxtV+AeVOLcTHd0NMJAcpaQ8I08VmwRz4JKrXGfoCsL5lIQxgttlu7LcH102B8suC9cF24CWB+ZmzL2Ipyafm9i4vqeKVFC60WKCclPNLwHLsxUyYQHodDzeOw5KnMYJ58UZLFghWVXBt787kEnEaG1blDcwlLStTDspHmvnfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by SJ0PR11MB6695.namprd11.prod.outlook.com (2603:10b6:a03:44e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Wed, 26 Oct
 2022 19:25:32 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::725e:5836:c99d:a1a6]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::725e:5836:c99d:a1a6%5]) with mapi id 15.20.5746.023; Wed, 26 Oct 2022
 19:25:32 +0000
Content-Type: multipart/alternative;
 boundary="------------MmKhSwxejQ5BPkm0vxPhKR4G"
Message-ID: <c9e41f56-f553-8f74-f3b0-56b3c174ede0@intel.com>
Date: Wed, 26 Oct 2022 12:25:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20221024225453.4856-1-vinay.belgaumkar@intel.com>
 <166675192681.25382.11584691764992719676@emeril.freedesktop.org>
 <BY5PR11MB4274E5414E26BB5AEC05E39185309@BY5PR11MB4274.namprd11.prod.outlook.com>
In-Reply-To: <BY5PR11MB4274E5414E26BB5AEC05E39185309@BY5PR11MB4274.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR13CA0118.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::33) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|SJ0PR11MB6695:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ca85c34-8e47-4ba2-3d96-08dab787d973
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JYQ4mINk+oaJTXCSIFQj3Y8vfxL9J2/H2Ye20yg7raAzMj96G67zgGn/Zk+83LaocbPjed2owB2RdW3Ioftb2HzwNNZO52VVqoCcRfDqTTmYp4X/VtySXQE9hq6loPWH1lY3QHhHOjD9i1X2BKAI+9fhkPB36NYmzh0mBEilpwMJBSlb5mDH06mz8AsBj/19etKsCuV+SnBuDL61Am2Wo9AJNPQyY0TZLL+Wpi8RYsKSfP72/gOkUo/ppfjIT7kb1Znn61Vycf3myz3z1v0Sa5lLrLAKG1mazXRwGRF4nVkl/j5Wao2KkyhvKZj2qduYNONPy9nLvX/iShZx+6EgtxAD+beeco3oRdAS7EbmmSfyIsMMJwNQ9UOfFHSRWTBLLwQXiTd4YwVUYpt6xX+P4HhGRC0amc0yrPC2wnZ+Kjc2KC81mRg6WEX0cLlYxPNvl4K97/093LPLyoD0dd89e/99DtJQnb9zn/odutz8tSz+s8NnRb1duvbRH9zbTRbDftFHqB/h+M58s0Wehjan1wiNEW9ADsEvJUrC7I/5aoI6V1HdrygA70EDvropA7L1nx7Nj4cGqwA0k/LNxi1sHwfwgmB9ESa1q3KikoFfyLWBUIUzxil1O1vKqkl6KRX2y4fXVeRNZAsom7iZISyoiVTtPF4VPQPMVbNE7SZOkJcLzbPq5aIV8pbLvtUWakHOp47+HOHlUwQ6oPHl/lDSva0jhN/ME283I3kntZOpnlJaXWF2o4ZTyEhEyUJgLVx/GyO+TjIIxXTD+i1XQBowB0sNChsx3iE7vnIcozv6WXBPaguhr9bE1vMTNNJ2OWFXPBi+K/q07X/wjj9B6X7a3hezDVrtRw1oWCwoJXR63+Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(376002)(366004)(346002)(136003)(451199015)(41300700001)(33964004)(53546011)(6506007)(38100700002)(82960400001)(40265005)(36756003)(5660300002)(6916009)(316002)(21615005)(31696002)(66946007)(66476007)(966005)(8936002)(6486002)(66556008)(478600001)(30864003)(86362001)(166002)(31686004)(83380400001)(6512007)(2616005)(2906002)(26005)(186003)(43740500002)(45980500001)(559001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MXlFc1E4ZjVjWXNJbE9qY1ZBbG01dllPUFpJSlR6eGhFUnlBZ0RKMHdubDkv?=
 =?utf-8?B?dWY0a2xxb2pGaVl5b0ZGZnp3YXdMMW1oWVZKTHlhTFFkTkFBazBOYTFMRUg1?=
 =?utf-8?B?aHpaRVY3UHJSWmE3Uk5wSTNPWVpXdi9ZM2RUVkQ1OHRnNmNHRlFodFNIQlB3?=
 =?utf-8?B?VFE0V2tDS3B4d2VhakdJa1FuWHV2RVFFSVlyNkdZcEhrYjFHR0xtZEMyTzJz?=
 =?utf-8?B?ZGZiMHArQnIvSGwzeWdDK1FUQ1FmUkFRbDFaSFdla3hORzV1cW5naWh1SzBU?=
 =?utf-8?B?a1dsaFdtSGRGaENFZ0ZjZUlkbG5aTGo2R2orcTNtUHlQNWYrajFLK2ZpSGdQ?=
 =?utf-8?B?OFFyWTAyNHJ3NDVPa2xxUWRBNFhvbjFFSUdMa2hRMy9qbXlmTGljUmd6UDN0?=
 =?utf-8?B?bWwxVUpsdjJOOFBMK05SNFlPSW9LeTdVN0lSakl3RFlqVlZkOFY1a2s2RGlO?=
 =?utf-8?B?SmVSRE5LczZBaGtJcVhxVHNqVHJSZmpnZzAxd0Zxd1RlcmdjeXg4WXluSGZr?=
 =?utf-8?B?T0hZRy9YM3ZWUm1zNSt6dEZyUlFzWWt1aDEzRnRHK1NZdmRvK2FQUlNIZlZm?=
 =?utf-8?B?VFJaZjZwYmdZaTJGTDJLOHp1Z1ZwK1V2NnUyNmVyR0txb3QvQXgyUitOMjRQ?=
 =?utf-8?B?eElEWC9PbFFYOU9uNkora1g1eTlJMy9xempsVmlYRlE4Uk04dGN6cWhDWjln?=
 =?utf-8?B?aHNONHR3WUw1Mi9QL2dNemhyNEpnNVlxOFlZN0IxQjhpMUIrWk5OY2h2TXlP?=
 =?utf-8?B?c1VPWXJUcWozMW5zSkZRZGRhSEIwVnNEYkRwV2ErS252di8xUk1VbEE5VWdH?=
 =?utf-8?B?dWxYWGJodHBFTVlIb2o0ZFRCZVBPdzE5RmFFRG96SVB3RWFHNFZlamh0SUFF?=
 =?utf-8?B?bkc5VzhjdDMxYWdxVFZkb3BhVkdBd0dwL2FJZld5OWtsRVRiR3hreUNxTkxt?=
 =?utf-8?B?V013NWNoSTVuZTlkZWl4THZsYkR2NXZMVVlySXBJNExtQ3JpWDkybTZGd3N5?=
 =?utf-8?B?bGdqYytIVkQvT0tqN1ZJU3J1WkJiVTNrMSt6dXI0NlFlNjJHSWNSOE5EWUdk?=
 =?utf-8?B?SUZOVXpxM2tpRDAzMmJPcTFpVUkwTjRaT2pwNmhVNEx2bU8zbHZxOUR4SFNa?=
 =?utf-8?B?NEthY3BNVmJzYnJ4M252M2pzd29pUVcwQ2VBcHcyOXlvbXhCc29yTUdkN2tm?=
 =?utf-8?B?V1BFQTJYaHhIUE5LN2JncHZrc3dtZTJPRXo4NXRWSlZ0SDE0QXZxQnovSVo1?=
 =?utf-8?B?a2NKVm9PTmRNMnl5T3RybTk2SHppYXp1SXgxcnRJRjdNamdhMGlBMXVGQWpB?=
 =?utf-8?B?ekF2Ly9ZQWpxb2FJYjd0Z3M5Ky9TdklOVEtOeHR0RDRtWGVxMlVOWi9Va1Mr?=
 =?utf-8?B?bWpDdENxUlJpY3hhdWFCaTJBMDFsNmxDVkZMZWNwYmY1Z3R3cDhjU2d3b3Bj?=
 =?utf-8?B?aDRKZDFNMDV0UCtxSkRMeDQva0d0UFFtSk9Ka2dMRXZPUjdsNHYrbTY4TDE1?=
 =?utf-8?B?L0N3TXdRYm40cEhZNVlROURGL0xQeUpPdU9qcTl6d1NWNkh0bGQwMXJrL2lK?=
 =?utf-8?B?UXZseDZTOWUxb1FJRHowVE9oNDdCYy9TOVp3TzdBWVM1ZDFXbUttQjhFVXRP?=
 =?utf-8?B?MWdlM1JTSFdVN2h1Z2xNRXpDT2t0dS9JaU9CaHVZZk1xcTFqK3ZPR0I2VlBv?=
 =?utf-8?B?elFMUlk4N3dmYmk4STE0VjZrSHF1MnpuSDFvUklJUGQ0RW90VkZhWlFjMU5R?=
 =?utf-8?B?SGoySnFqSjhnWFA3UDREZFN3eDVCanBZM2ZHYXhQNVgrZW9mamgrOTMzcHlt?=
 =?utf-8?B?THU2NTJkTzFuZzBvczE5R21Wb0REVjJZYko3VVZQbGhLelhzVEZERXhHN01V?=
 =?utf-8?B?WHcvazVKV0dEOFliSEgvUUZGdHpFdkFaaEkxZDMySVNmdEdxdWlBdmVhWmJ1?=
 =?utf-8?B?M1dlN1hLU0gvYzFFeVBjbXFhbFl2ZXlkcnByMzB6WjBhNWdqZG9pYWpyTHpj?=
 =?utf-8?B?RzZKSWN3RnF1RGtKVmZSSFd4MzFRYlhtU283UlBYZDg5bUZDb2NqRnhLa2Zq?=
 =?utf-8?B?VFVRWmRoV1FOemQ2WUQzR3ZwdytaZk5MMklCcjBrL0FQOExiNUtyNGtxNVJk?=
 =?utf-8?B?cnRBMmFQTlIxSDJSRUJ1Z0srVFhmY2s4b2VpWGRkaTEvNk1DWVB5YkZ0R2lX?=
 =?utf-8?B?V1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ca85c34-8e47-4ba2-3d96-08dab787d973
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Oct 2022 19:25:32.4116 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +eyZfwprLJks5JgTvGcAfSl8CbsV6nHkb2Lrq2NEbPxLLr2bnhOoxrwlir3YLhsxQeZPRp2qx08RsZ23qYtM2he2mk7HwxakfPOytlmDbQs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6695
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/slpc=3A_Use_platform_limits_for_min/max_frequency_=28rev5?=
 =?utf-8?q?=29?=
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

--------------MmKhSwxejQ5BPkm0vxPhKR4G
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit


On 10/26/2022 12:13 PM, Belgaumkar, Vinay wrote:
> Project List - Patchwork
>
> *From:* Patchwork <patchwork@emeril.freedesktop.org>
> *Sent:* Tuesday, October 25, 2022 7:39 PM
> *To:* Belgaumkar, Vinay <vinay.belgaumkar@intel.com>
> *Cc:* intel-gfx@lists.freedesktop.org
> *Subject:* ✗ Fi.CI.IGT: failure for drm/i915/slpc: Use platform limits 
> for min/max frequency (rev5)
>
> *Patch Details*
>
> *Series:*
>
> 	
>
> drm/i915/slpc: Use platform limits for min/max frequency (rev5)
>
> *URL:*
>
> 	
>
> https://patchwork.freedesktop.org/series/109632/
>
> *State:*
>
> 	
>
> failure
>
> *Details:*
>
> 	
>
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12293_full -> Patchwork_109632v5_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_109632v5_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_109632v5_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (9 -> 11)
>
> Additional (2): shard-rkl shard-dg1
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_109632v5_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@gem_exec_capture@pi@vecs0:
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-iclb2/igt@gem_exec_capture@pi@vecs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb8/igt@gem_exec_capture@pi@vecs0.html>
>
> Not related to this change as it is not a server part.
>
To clarify, this patch affects the guc path, ICL does not use that. So 
failure is not related to this patch.

Thanks,

Vinay.

> Thanks,
>
> Vinay.
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>   * igt@gem_create@create-clear@smem0:
>       o {shard-rkl}: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-rkl-5/igt@gem_create@create-clear@smem0.html>
>   * igt@sysfs_preempt_timeout@idempotent@rcs0:
>       o {shard-dg1}: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-dg1-12/igt@sysfs_preempt_timeout@idempotent@rcs0.html>
>         +4 similar issues
>
>
>     Known issues
>
> Here are the changes found in Patchwork_109632v5_full that come from 
> known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>   * igt@gem_ctx_exec@basic-nohangcheck:
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html>
>         (i915#6268 <https://gitlab.freedesktop.org/drm/intel/issues/6268>)
>   * igt@gem_exec_balancer@parallel:
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-iclb1/igt@gem_exec_balancer@parallel.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb7/igt@gem_exec_balancer@parallel.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   * igt@gem_huc_copy@huc-copy:
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-tglb2/igt@gem_huc_copy@huc-copy.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-tglb7/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>   * igt@gem_lmem_swapping@parallel-random:
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl10/igt@gem_lmem_swapping@parallel-random.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html>
>         (i915#2521 <https://gitlab.freedesktop.org/drm/intel/issues/2521>)
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl10/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +44
>         similar issues
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-glk1/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html>
>         (i915#118
>         <https://gitlab.freedesktop.org/drm/intel/issues/118> /
>         i915#5138 <https://gitlab.freedesktop.org/drm/intel/issues/5138>)
>   * igt@kms_color_chamelium@ctm-limited-range:
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl10/igt@kms_color_chamelium@ctm-limited-range.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2
>         similar issues
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         +1 similar issue
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html>
>         (i915#2122 <https://gitlab.freedesktop.org/drm/intel/issues/2122>)
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +4
>         similar issues
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html>
>         (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>)
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html>
>         (i915#2587
>         <https://gitlab.freedesktop.org/drm/intel/issues/2587> /
>         i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>)
>   * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +6
>         similar issues
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-iclb1/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +2
>         similar issues
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl10/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   * igt@kms_psr2_su@page_flip-nv12:
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb3/igt@kms_psr2_su@page_flip-nv12.html>
>         (fdo#109642
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109642> /
>         fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   * igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1:
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb2/igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1.html>
>         (i915#5939
>         <https://gitlab.freedesktop.org/drm/intel/issues/5939>) +2
>         similar issues
>   * igt@kms_psr@psr2_sprite_plane_move:
>       o shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-tglb5/igt@kms_psr@psr2_sprite_plane_move.html>
>         (i915#132
>         <https://gitlab.freedesktop.org/drm/intel/issues/132> /
>         i915#3467 <https://gitlab.freedesktop.org/drm/intel/issues/3467>)
>   * igt@perf@blocking:
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-skl7/igt@perf@blocking.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl7/igt@perf@blocking.html>
>         (i915#1542 <https://gitlab.freedesktop.org/drm/intel/issues/1542>)
>   * igt@perf@polling:
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl10/igt@perf@polling.html>
>         (i915#1542 <https://gitlab.freedesktop.org/drm/intel/issues/1542>)
>   * igt@perf@polling-parameterized:
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-skl10/igt@perf@polling-parameterized.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl4/igt@perf@polling-parameterized.html>
>         (i915#5639 <https://gitlab.freedesktop.org/drm/intel/issues/5639>)
>   * igt@perf_pmu@interrupts:
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-skl4/igt@perf_pmu@interrupts.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl9/igt@perf_pmu@interrupts.html>
>         (i915#7318 <https://gitlab.freedesktop.org/drm/intel/issues/7318>)
>   * igt@sysfs_clients@recycle-many:
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl10/igt@sysfs_clients@recycle-many.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>
>
>         Possible fixes
>
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-iclb8/igt@gem_exec_balancer@parallel-keep-submit-fence.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html>
>   * igt@gem_exec_fair@basic-none@vecs0:
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-glk1/igt@gem_exec_fair@basic-none@vecs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-glk5/igt@gem_exec_fair@basic-none@vecs0.html>
>   * igt@i915_pm_dc@dc5-psr:
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-skl9/igt@i915_pm_dc@dc5-psr.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl6/igt@i915_pm_dc@dc5-psr.html>
>   * igt@i915_pm_dc@dc9-dpms:
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html>
>         (i915#4281
>         <https://gitlab.freedesktop.org/drm/intel/issues/4281>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html>
>   * igt@i915_selftest@live@gt_heartbeat:
>       o shard-apl: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html>
>         (i915#5334
>         <https://gitlab.freedesktop.org/drm/intel/issues/5334>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html>
>   * igt@kms_fbcon_fbt@psr-suspend:
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html>
>         (i915#4767
>         <https://gitlab.freedesktop.org/drm/intel/issues/4767>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html>
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html>
>         +1 similar issue
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html>
>         +1 similar issue
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl1/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html>
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html>
>         +2 similar issues
>   * igt@kms_psr@psr2_sprite_blt:
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html>
>
>
>         Warnings
>
>   * igt@gem_pwrite@basic-exhaustion:
>       o shard-apl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl1/igt@gem_pwrite@basic-exhaustion.html>
>         (i915#7248
>         <https://gitlab.freedesktop.org/drm/intel/issues/7248>) ->
>         INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl7/igt@gem_pwrite@basic-exhaustion.html>
>         (i915#7227
>         <https://gitlab.freedesktop.org/drm/intel/issues/7227> /
>         i915#7248 <https://gitlab.freedesktop.org/drm/intel/issues/7248>)
>       o shard-tglb: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-tglb6/igt@gem_pwrite@basic-exhaustion.html>
>         (i915#2658
>         <https://gitlab.freedesktop.org/drm/intel/issues/2658>) ->
>         INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-tglb5/igt@gem_pwrite@basic-exhaustion.html>
>         (i915#7248 <https://gitlab.freedesktop.org/drm/intel/issues/7248>)
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html>
>         (i915#2684
>         <https://gitlab.freedesktop.org/drm/intel/issues/2684>) ->
>         WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html>
>         (i915#2684 <https://gitlab.freedesktop.org/drm/intel/issues/2684>)
>   * igt@runner@aborted:
>       o shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl2/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl3/igt@runner@aborted.html>)
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312>) ->
>         (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl7/igt@runner@aborted.html>)
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_12293 -> Patchwork_109632v5
>
> CI-20190529: 20190529
> CI_DRM_12293: 508d090a36a87847ece5f75d4d0c12e96ca819a3 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7026: ce0f97e7e0aa54c40049a8365b3d61773c92e588 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_109632v5: 508d090a36a87847ece5f75d4d0c12e96ca819a3 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>
--------------MmKhSwxejQ5BPkm0vxPhKR4G
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 10/26/2022 12:13 PM, Belgaumkar,
      Vinay wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:BY5PR11MB4274E5414E26BB5AEC05E39185309@BY5PR11MB4274.namprd11.prod.outlook.com">
      
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <title>Project List - Patchwork</title>
      <style>@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:"Segoe UI Symbol";
	panose-1:2 11 5 2 4 2 4 2 2 3;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}h1
	{mso-style-priority:9;
	mso-style-link:"Heading 1 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:24.0pt;
	font-family:"Calibri",sans-serif;
	font-weight:bold;}h2
	{mso-style-priority:9;
	mso-style-link:"Heading 2 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:18.0pt;
	font-family:"Calibri",sans-serif;
	font-weight:bold;}h3
	{mso-style-priority:9;
	mso-style-link:"Heading 3 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:13.5pt;
	font-family:"Calibri",sans-serif;
	font-weight:bold;}h4
	{mso-style-priority:9;
	mso-style-link:"Heading 4 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Calibri",sans-serif;
	font-weight:bold;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}span.Heading1Char
	{mso-style-name:"Heading 1 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 1";
	font-family:"Calibri Light",sans-serif;
	color:#2F5496;}span.Heading2Char
	{mso-style-name:"Heading 2 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 2";
	font-family:"Calibri Light",sans-serif;
	color:#2F5496;}span.Heading3Char
	{mso-style-name:"Heading 3 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 3";
	font-family:"Calibri Light",sans-serif;
	color:#1F3763;}span.Heading4Char
	{mso-style-name:"Heading 4 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 4";
	font-family:"Calibri Light",sans-serif;
	color:#2F5496;
	font-style:italic;}span.EmailStyle25
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}ol
	{margin-bottom:0in;}ul
	{margin-bottom:0in;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <div>
          <div style="border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class="MsoNormal"><b>From:</b> Patchwork
              <a class="moz-txt-link-rfc2396E" href="mailto:patchwork@emeril.freedesktop.org">&lt;patchwork@emeril.freedesktop.org&gt;</a> <br>
              <b>Sent:</b> Tuesday, October 25, 2022 7:39 PM<br>
              <b>To:</b> Belgaumkar, Vinay
              <a class="moz-txt-link-rfc2396E" href="mailto:vinay.belgaumkar@intel.com">&lt;vinay.belgaumkar@intel.com&gt;</a><br>
              <b>Cc:</b> <a class="moz-txt-link-abbreviated" href="mailto:intel-gfx@lists.freedesktop.org">intel-gfx@lists.freedesktop.org</a><br>
              <b>Subject:</b> <span style="font-family:&quot;Segoe UI
                Symbol&quot;,sans-serif">✗</span> Fi.CI.IGT: failure for
              drm/i915/slpc: Use platform limits for min/max frequency
              (rev5)<o:p></o:p></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal"><b>Patch Details</b> <o:p></o:p></p>
        <table class="MsoNormalTable" cellpadding="0" border="0">
          <tbody>
            <tr>
              <td style="padding:2.0pt 2.0pt 2.0pt 2.0pt">
                <p class="MsoNormal"><b>Series:</b><o:p></o:p></p>
              </td>
              <td style="padding:2.0pt 2.0pt 2.0pt 2.0pt">
                <p class="MsoNormal">drm/i915/slpc: Use platform limits
                  for min/max frequency (rev5)<o:p></o:p></p>
              </td>
            </tr>
            <tr>
              <td style="padding:2.0pt 2.0pt 2.0pt 2.0pt">
                <p class="MsoNormal"><b>URL:</b><o:p></o:p></p>
              </td>
              <td style="padding:2.0pt 2.0pt 2.0pt 2.0pt">
                <p class="MsoNormal"><a href="https://patchwork.freedesktop.org/series/109632/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/109632/</a><o:p></o:p></p>
              </td>
            </tr>
            <tr>
              <td style="padding:2.0pt 2.0pt 2.0pt 2.0pt">
                <p class="MsoNormal"><b>State:</b><o:p></o:p></p>
              </td>
              <td style="padding:2.0pt 2.0pt 2.0pt 2.0pt">
                <p class="MsoNormal">failure<o:p></o:p></p>
              </td>
            </tr>
            <tr>
              <td style="padding:2.0pt 2.0pt 2.0pt 2.0pt">
                <p class="MsoNormal"><b>Details:</b><o:p></o:p></p>
              </td>
              <td style="padding:2.0pt 2.0pt 2.0pt 2.0pt">
                <p class="MsoNormal"><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/index.html</a><o:p></o:p></p>
              </td>
            </tr>
          </tbody>
        </table>
        <h1>CI Bug Log - changes from CI_DRM_12293_full -&gt;
          Patchwork_109632v5_full<o:p></o:p></h1>
        <h2>Summary<o:p></o:p></h2>
        <p><strong><span style="font-family:&quot;Calibri&quot;,sans-serif">FAILURE</span></strong><o:p></o:p></p>
        <p>Serious unknown changes coming with Patchwork_109632v5_full
          absolutely need to be<br>
          verified manually.<o:p></o:p></p>
        <p>If you think the reported changes have nothing to do with the
          changes<br>
          introduced in Patchwork_109632v5_full, please notify your bug
          team to allow them<br>
          to document this new failure mode, which will reduce false
          positives in CI.<o:p></o:p></p>
        <h2>Participating hosts (9 -&gt; 11)<o:p></o:p></h2>
        <p>Additional (2): shard-rkl shard-dg1 <o:p></o:p></p>
        <h2>Possible new issues<o:p></o:p></h2>
        <p>Here are the unknown changes that may have been introduced in
          Patchwork_109632v5_full:<o:p></o:p></p>
        <h3>IGT changes<o:p></o:p></h3>
        <h4>Possible regressions<o:p></o:p></h4>
        <ul type="disc">
          <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l0
            level1 lfo1">
            igt@gem_exec_capture@pi@vecs0:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l0
              level2 lfo1">
              shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-iclb2/igt@gem_exec_capture@pi@vecs0.html" moz-do-not-send="true">
                PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb8/igt@gem_exec_capture@pi@vecs0.html" moz-do-not-send="true">
                INCOMPLETE</a><o:p></o:p></li>
          </ul>
        </ul>
        <p class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Not
          related to this change as it is not a server part.</p>
      </div>
    </blockquote>
    <p>To clarify, this patch affects the guc path, ICL does not use
      that. So failure is not related to this patch.</p>
    <p>Thanks,</p>
    <p>Vinay.<br>
    </p>
    <blockquote type="cite" cite="mid:BY5PR11MB4274E5414E26BB5AEC05E39185309@BY5PR11MB4274.namprd11.prod.outlook.com">
      <div class="WordSection1">
        <p class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><o:p></o:p></p>
        <p class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Thanks,<o:p></o:p></p>
        <p class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Vinay.<o:p></o:p></p>
        <h4>Suppressed<o:p></o:p></h4>
        <p>The following results come from untrusted machines, tests, or
          statuses.<br>
          They do not affect the overall result.<o:p></o:p></p>
        <ul type="disc">
          <li style="mso-list:l4 level1 lfo2">igt@gem_create@create-clear@smem0:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l4
              level2 lfo2">
              {shard-rkl}: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-rkl-5/igt@gem_create@create-clear@smem0.html" moz-do-not-send="true">
                INCOMPLETE</a><o:p></o:p></li>
          </ul>
          <li style="mso-list:l4 level1 lfo2">igt@sysfs_preempt_timeout@idempotent@rcs0:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l4
              level2 lfo2">
              {shard-dg1}: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-dg1-12/igt@sysfs_preempt_timeout@idempotent@rcs0.html" moz-do-not-send="true">
                FAIL</a> +4 similar issues<o:p></o:p></li>
          </ul>
        </ul>
        <h2>Known issues<o:p></o:p></h2>
        <p>Here are the changes found in Patchwork_109632v5_full that
          come from known issues:<o:p></o:p></p>
        <h3>IGT changes<o:p></o:p></h3>
        <h4>Issues hit<o:p></o:p></h4>
        <ul type="disc">
          <li style="mso-list:l2 level1 lfo3">igt@gem_ctx_exec@basic-nohangcheck:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-tglb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html" moz-do-not-send="true">
                PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html" moz-do-not-send="true">
                FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268" moz-do-not-send="true">i915#6268</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@gem_exec_balancer@parallel:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-iclb1/igt@gem_exec_balancer@parallel.html" moz-do-not-send="true">
                PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb7/igt@gem_exec_balancer@parallel.html" moz-do-not-send="true">
                SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4525" moz-do-not-send="true">i915#4525</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@gem_exec_fair@basic-pace-share@rcs0:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html" moz-do-not-send="true">
                PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html" moz-do-not-send="true">
                FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send="true">i915#2842</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@gem_huc_copy@huc-copy:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-tglb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-tglb2/igt@gem_huc_copy@huc-copy.html" moz-do-not-send="true">
                PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-tglb7/igt@gem_huc_copy@huc-copy.html" moz-do-not-send="true">
                SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190" moz-do-not-send="true">i915#2190</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@gem_lmem_swapping@parallel-random:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl10/igt@gem_lmem_swapping@parallel-random.html" moz-do-not-send="true">
                SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> /
              <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do-not-send="true">i915#4613</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html" moz-do-not-send="true">
                PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html" moz-do-not-send="true">
                FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521" moz-do-not-send="true">i915#2521</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl10/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html" moz-do-not-send="true">
                SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>) +44 similar
              issues<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@kms_big_fb@y-tiled-32bpp-rotate-180:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-glk1/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html" moz-do-not-send="true">
                PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html" moz-do-not-send="true">
                DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118" moz-do-not-send="true">i915#118</a> /
              <a href="https://gitlab.freedesktop.org/drm/intel/issues/5138" moz-do-not-send="true">i915#5138</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@kms_color_chamelium@ctm-limited-range:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl10/igt@kms_color_chamelium@ctm-limited-range.html" moz-do-not-send="true">
                SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> /
              <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>) +2 similar issues<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html" moz-do-not-send="true">
                PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html" moz-do-not-send="true">
                FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79" moz-do-not-send="true">i915#79</a>) +1 similar issue<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@kms_flip@flip-vs-expired-vblank@a-edp1:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html" moz-do-not-send="true">
                PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html" moz-do-not-send="true">
                FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122" moz-do-not-send="true">i915#2122</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html" moz-do-not-send="true">
                PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html" moz-do-not-send="true">
                DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not-send="true">i915#180</a>) +4 similar issues<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html" moz-do-not-send="true">
                SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672" moz-do-not-send="true">i915#2672</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html" moz-do-not-send="true">
                SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2587" moz-do-not-send="true">i915#2587</a> /
              <a href="https://gitlab.freedesktop.org/drm/intel/issues/2672" moz-do-not-send="true">i915#2672</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html" moz-do-not-send="true">
                SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555" moz-do-not-send="true">i915#3555</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html" moz-do-not-send="true">
                SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>) +6 similar issues<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-iclb1/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html" moz-do-not-send="true">
                PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html" moz-do-not-send="true">
                SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235" moz-do-not-send="true">i915#5235</a>) +2 similar issues<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@kms_psr2_sf@plane-move-sf-dmg-area:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl10/igt@kms_psr2_sf@plane-move-sf-dmg-area.html" moz-do-not-send="true">
                SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> /
              <a href="https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send="true">i915#658</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@kms_psr2_su@page_flip-nv12:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb3/igt@kms_psr2_su@page_flip-nv12.html" moz-do-not-send="true">
                SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642" moz-do-not-send="true">fdo#109642</a> /
              <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068" moz-do-not-send="true">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send="true">
                i915#658</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb2/igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1.html" moz-do-not-send="true">
                FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5939" moz-do-not-send="true">i915#5939</a>) +2 similar issues<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@kms_psr@psr2_sprite_plane_move:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-tglb5/igt@kms_psr@psr2_sprite_plane_move.html" moz-do-not-send="true">
                FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/132" moz-do-not-send="true">i915#132</a> /
              <a href="https://gitlab.freedesktop.org/drm/intel/issues/3467" moz-do-not-send="true">i915#3467</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@perf@blocking:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-skl7/igt@perf@blocking.html" moz-do-not-send="true">
                PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl7/igt@perf@blocking.html" moz-do-not-send="true">
                FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542" moz-do-not-send="true">i915#1542</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@perf@polling:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl10/igt@perf@polling.html" moz-do-not-send="true">
                FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542" moz-do-not-send="true">i915#1542</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@perf@polling-parameterized:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-skl10/igt@perf@polling-parameterized.html" moz-do-not-send="true">
                PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl4/igt@perf@polling-parameterized.html" moz-do-not-send="true">
                FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5639" moz-do-not-send="true">i915#5639</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@perf_pmu@interrupts:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-skl4/igt@perf_pmu@interrupts.html" moz-do-not-send="true">
                PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl9/igt@perf_pmu@interrupts.html" moz-do-not-send="true">
                FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7318" moz-do-not-send="true">i915#7318</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l2 level1 lfo3">igt@sysfs_clients@recycle-many:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2
              level2 lfo3">
              shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl10/igt@sysfs_clients@recycle-many.html" moz-do-not-send="true">
                SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> /
              <a href="https://gitlab.freedesktop.org/drm/intel/issues/2994" moz-do-not-send="true">i915#2994</a>)<o:p></o:p></li>
          </ul>
        </ul>
        <h4>Possible fixes<o:p></o:p></h4>
        <ul type="disc">
          <li style="mso-list:l3 level1 lfo4">igt@gem_exec_balancer@parallel-keep-submit-fence:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l3
              level2 lfo4">
              shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-iclb8/igt@gem_exec_balancer@parallel-keep-submit-fence.html" moz-do-not-send="true">
                SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4525" moz-do-not-send="true">i915#4525</a>) -&gt;
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html" moz-do-not-send="true">
                PASS</a><o:p></o:p></li>
          </ul>
          <li style="mso-list:l3 level1 lfo4">igt@gem_exec_fair@basic-none@vecs0:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l3
              level2 lfo4">
              shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-glk1/igt@gem_exec_fair@basic-none@vecs0.html" moz-do-not-send="true">
                FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send="true">i915#2842</a>) -&gt;
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-glk5/igt@gem_exec_fair@basic-none@vecs0.html" moz-do-not-send="true">
                PASS</a><o:p></o:p></li>
          </ul>
          <li style="mso-list:l3 level1 lfo4">igt@i915_pm_dc@dc5-psr:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l3
              level2 lfo4">
              shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-skl9/igt@i915_pm_dc@dc5-psr.html" moz-do-not-send="true">
                FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl6/igt@i915_pm_dc@dc5-psr.html" moz-do-not-send="true">
                PASS</a><o:p></o:p></li>
          </ul>
          <li style="mso-list:l3 level1 lfo4">igt@i915_pm_dc@dc9-dpms:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l3
              level2 lfo4">
              shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html" moz-do-not-send="true">
                SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4281" moz-do-not-send="true">i915#4281</a>) -&gt;
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html" moz-do-not-send="true">
                PASS</a><o:p></o:p></li>
          </ul>
          <li style="mso-list:l3 level1 lfo4">igt@i915_selftest@live@gt_heartbeat:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l3
              level2 lfo4">
              shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html" moz-do-not-send="true">
                DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334" moz-do-not-send="true">i915#5334</a>) -&gt;
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html" moz-do-not-send="true">
                PASS</a><o:p></o:p></li>
          </ul>
          <li style="mso-list:l3 level1 lfo4">igt@kms_fbcon_fbt@psr-suspend:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l3
              level2 lfo4">
              shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html" moz-do-not-send="true">
                FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4767" moz-do-not-send="true">i915#4767</a>) -&gt;
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html" moz-do-not-send="true">
                PASS</a><o:p></o:p></li>
          </ul>
          <li style="mso-list:l3 level1 lfo4">igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l3
              level2 lfo4">
              shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html" moz-do-not-send="true">
                FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79" moz-do-not-send="true">i915#79</a>) -&gt;
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html" moz-do-not-send="true">
                PASS</a> +1 similar issue<o:p></o:p></li>
          </ul>
          <li style="mso-list:l3 level1 lfo4">igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l3
              level2 lfo4">
              shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html" moz-do-not-send="true">
                FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79" moz-do-not-send="true">i915#79</a>) -&gt;
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html" moz-do-not-send="true">
                PASS</a> +1 similar issue<o:p></o:p></li>
          </ul>
          <li style="mso-list:l3 level1 lfo4">igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l3
              level2 lfo4">
              shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html" moz-do-not-send="true">
                DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not-send="true">i915#180</a>) -&gt;
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl1/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html" moz-do-not-send="true">
                PASS</a><o:p></o:p></li>
          </ul>
          <li style="mso-list:l3 level1 lfo4">igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l3
              level2 lfo4">
              shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html" moz-do-not-send="true">
                SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235" moz-do-not-send="true">i915#5235</a>) -&gt;
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html" moz-do-not-send="true">
                PASS</a> +2 similar issues<o:p></o:p></li>
          </ul>
          <li style="mso-list:l3 level1 lfo4">igt@kms_psr@psr2_sprite_blt:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l3
              level2 lfo4">
              shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html" moz-do-not-send="true">
                SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441" moz-do-not-send="true">fdo#109441</a>) -&gt;
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html" moz-do-not-send="true">
                PASS</a><o:p></o:p></li>
          </ul>
        </ul>
        <h4>Warnings<o:p></o:p></h4>
        <ul type="disc">
          <li style="mso-list:l5 level1 lfo5">igt@gem_pwrite@basic-exhaustion:<o:p></o:p></li>
          <ul type="circle">
            <li style="mso-list:l5 level2 lfo5">shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl1/igt@gem_pwrite@basic-exhaustion.html" moz-do-not-send="true">
                INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7248" moz-do-not-send="true">i915#7248</a>) -&gt;
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl7/igt@gem_pwrite@basic-exhaustion.html" moz-do-not-send="true">
                INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7227" moz-do-not-send="true">i915#7227</a> /
              <a href="https://gitlab.freedesktop.org/drm/intel/issues/7248" moz-do-not-send="true">i915#7248</a>)<o:p></o:p></li>
            <li style="mso-list:l5 level2 lfo5">shard-tglb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-tglb6/igt@gem_pwrite@basic-exhaustion.html" moz-do-not-send="true">
                WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2658" moz-do-not-send="true">i915#2658</a>) -&gt;
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-tglb5/igt@gem_pwrite@basic-exhaustion.html" moz-do-not-send="true">
                INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7248" moz-do-not-send="true">i915#7248</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l5 level1 lfo5">igt@i915_pm_rc6_residency@rc6-idle@rcs0:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l5
              level2 lfo5">
              shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html" moz-do-not-send="true">
                FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2684" moz-do-not-send="true">i915#2684</a>) -&gt;
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html" moz-do-not-send="true">
                WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2684" moz-do-not-send="true">i915#2684</a>)<o:p></o:p></li>
          </ul>
          <li style="mso-list:l5 level1 lfo5">igt@runner@aborted:<o:p></o:p></li>
          <ul type="circle">
            <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l5
              level2 lfo5">
              shard-apl: (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl8/igt@runner@aborted.html" moz-do-not-send="true">FAIL</a>,
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl2/igt@runner@aborted.html" moz-do-not-send="true">
                FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl1/igt@runner@aborted.html" moz-do-not-send="true">
                FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl8/igt@runner@aborted.html" moz-do-not-send="true">
                FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl6/igt@runner@aborted.html" moz-do-not-send="true">
                FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12293/shard-apl3/igt@runner@aborted.html" moz-do-not-send="true">
                FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3002" moz-do-not-send="true">i915#3002</a> /
              <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-send="true">i915#4312</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl8/igt@runner@aborted.html" moz-do-not-send="true">FAIL</a>,
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl3/igt@runner@aborted.html" moz-do-not-send="true">
                FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl7/igt@runner@aborted.html" moz-do-not-send="true">
                FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl1/igt@runner@aborted.html" moz-do-not-send="true">
                FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl6/igt@runner@aborted.html" moz-do-not-send="true">
                FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl8/igt@runner@aborted.html" moz-do-not-send="true">
                FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109632v5/shard-apl7/igt@runner@aborted.html" moz-do-not-send="true">
                FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not-send="true">i915#180</a> /
              <a href="https://gitlab.freedesktop.org/drm/intel/issues/3002" moz-do-not-send="true">i915#3002</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-send="true">
                i915#4312</a>)<o:p></o:p></li>
          </ul>
        </ul>
        <p>{name}: This element is suppressed. This means it is ignored
          when computing<br>
          the status of the difference (SUCCESS, WARNING, or FAILURE).<o:p></o:p></p>
        <h2>Build changes<o:p></o:p></h2>
        <ul type="disc">
          <li class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l1
            level1 lfo6">
            Linux: CI_DRM_12293 -&gt; Patchwork_109632v5<o:p></o:p></li>
        </ul>
        <p>CI-20190529: 20190529<br>
          CI_DRM_12293: 508d090a36a87847ece5f75d4d0c12e96ca819a3 @
          git://anongit.freedesktop.org/gfx-ci/linux<br>
          IGT_7026: ce0f97e7e0aa54c40049a8365b3d61773c92e588 @ <a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git" moz-do-not-send="true" class="moz-txt-link-freetext">
            https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
          Patchwork_109632v5: 508d090a36a87847ece5f75d4d0c12e96ca819a3 @
          git://anongit.freedesktop.org/gfx-ci/linux<br>
          piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
          git://anongit.freedesktop.org/piglit<o:p></o:p></p>
      </div>
    </blockquote>
  </body>
</html>

--------------MmKhSwxejQ5BPkm0vxPhKR4G--
