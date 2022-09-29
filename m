Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DECD5EFB4B
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 18:50:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0473A10EB14;
	Thu, 29 Sep 2022 16:50:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 897FB10EB14
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 16:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664470209; x=1696006209;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6ghgMfE1xwmvLQoMKMl13m3yoMSwF8ODBQcrWN5b50w=;
 b=N2hFyDoCs/0bI6mKuInpdbQZERx5cxQMnw8PKnjTsNGXb2ljAQfZ0SNs
 pCAcAv+EoHDXMOGItksiTpalZ+Q6TfL0VO+UUEJCFS1HkQ0T4yJ9VfBN1
 /e9KIHlXsgkYYADkFFdl/c13MSBhVN74wZOxwkZCMD3sP0zD5U5bHI0C0
 QHkZ0pjPsT0EfNO1RYpISLtLjrBV32rSzJeHeNNZf8mmxXSoyXzoD8tfT
 YRV1HjTlxweD1BvaAx4o/U2E4fcPrBovvazndKVtw18FItPG4DQRLS0l/
 ULxShX4nDa108QcwMrUBwwUy9P9PUC4chbARofg3VFo/SmADMWOAw6g4r g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="282321202"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="282321202"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 09:49:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="600073315"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="600073315"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 29 Sep 2022 09:49:40 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 29 Sep 2022 09:49:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 29 Sep 2022 09:49:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 29 Sep 2022 09:49:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FvbRpsb2Xj8SYxJG9kuBLdhtaSaD0B74u/MzTS7HwqIJL1vELKkuzKyhc38THxhUo2CyMJKf4TLCLjZuIksPmQIePtjOe8CFrl3Kbjyt+7O0QbRuDtS+44WHkmajlli8Gp2tWBJFoJQTEQfOIi0AdnWxcpfgvHQA3JaCzJxUvM+WXvjDddvjDAbX1NG1dm/r/MvjhoHx+3BjJFMJ2Ysg8lsMejy3v6kr8iyrFLuF8E1hqtbOXKDCLlIfXf50emgVlg+kzy1+JMEID8752y65n3zhTPrN0uXt+xjdSlRwh7z0rBW9Lfu+fOXHMOF+ViA/lTHX3I4jjVK7LQLhd+QlTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ejw2VQJwy7Nu8rstgC7l8XlKBgKNH+9toOZ+Cmfxam8=;
 b=SxfsqJaxLREnfPwD4MNxDIUTZYX6uG2dDRT7zsvzmLLhDOG7q5soGPZ9LjgLwGMYo5NTtioK90PLbxdPRvqe+3xzySnoMDx+w9D7addD1t/Ww+nAYVDYQa8qyQmk68XcLwmv80gzN9UuNvHWRZLfvYstakxw7gofoYoQtEbj/PaGVBTiJK6jsUxy6CIm2vvbrQWPT/RjISqhsWMmCga1nKAE6JgCBaDrXbLpj4OHnkAzpOHHRxGbN/YF4ReI72MaTwzD+Mn1cQkxIMk5buZ8oQoedbXRTRWGQmoKWvb45nML9BUTN4IsGZViZ0wIHEJh5U4EO1DZZozvuwxVE3uJiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH8PR11MB6804.namprd11.prod.outlook.com (2603:10b6:510:1bc::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.20; Thu, 29 Sep
 2022 16:49:38 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6%7]) with mapi id 15.20.5676.020; Thu, 29 Sep 2022
 16:49:38 +0000
Message-ID: <006de13b-4c01-4ab8-abe6-257ca6ebe370@intel.com>
Date: Thu, 29 Sep 2022 09:49:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.2
Content-Language: en-GB
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
References: <20220926215410.2268295-1-andrzej.hajda@intel.com>
 <YzIrUG8lrEsY9XOo@ashyti-mobl2.lan>
 <7039faf9-b2a1-9400-fdc7-f5dcd7a8dd9a@intel.com>
 <f34e60c9-17ea-56a0-acb2-bb8d97363993@intel.com>
 <c3af2831-d06b-5818-baf2-e88b4d1f6694@linux.intel.com>
 <ad885543-02f3-5a44-0d06-0ffe48cf29e2@intel.com>
 <ad22bd93-fcdb-3463-9915-1e4409618239@linux.intel.com>
 <e4200a76-f7e0-106e-cff9-5e58f27b40da@intel.com>
 <92edfe5c-17f9-9f82-7df4-d653c7899765@linux.intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <92edfe5c-17f9-9f82-7df4-d653c7899765@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR05CA0008.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::13) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH8PR11MB6804:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b7ce503-157a-4774-9ac5-08daa23a9907
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9JfEWVCMKBE0cpZR3yOz76N94C2Bkbs7u7DM8ma+Jd0YXMIf1LZc1Fuo3VtNZEYW5fDJCkh+khwNzdTgDq175BoFk73aLOmHmYoFffYy/xyuPfzebvveQhxm60BrBzgaT9SNXI5eYdLQMQIwWvA0BC3JT2pmi2fQ3MM8rJHEZAokJAhV/3dHc7MQZpmu516opAkYPi7lhcaIXapOV4Ba1XserNFzPcPMr/JPXCQ5xYeuuZMPTZcA50vTrF7fe3ED2eWRYSGafU1OoOomH8hG45DU1nNmpOrmYZk+P+qC5Bmdv17mndsyYlUFyyiWdxx6b/e5L8sFbgoIifiM7PUDZz7B0fs1koE1JFDx5BdSDaFZziETXgQx1YLmEI3gg+2EAkb0UK14YszAOgXNaSDoslX0LVBdM9Ne+nee+hYP9BwED+f3sJK+CdSHeyxgbICSMB0AXfmW5CZKdKdkMSNGH+XuZ1qh0W2I+9tKfEG8/TO2qIRnGXZ7PbdGV628gE29tlSgctg7IqfYo/8xeL647ly7M5GFCyQBy2uOg8/3Mt70b15t77W5OMpfl8d+oEySww/PHDrY/YudJMpOdpCijsjnUhWXigEMyRdzFih+AKcWa1Mf6gzsLx8u281pqB24iOMta6UD9sr72kOBWn9GoVY64kMK5t4lWADhY9yA30myYpOtqIEzj88DFZ23aHzfQ9+SHSZpcorwvucD/MJzB6xcdpIioCsMM1IzMiCV0oyBGhhQ5UOpy/grr5Zb3TTP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(39860400002)(136003)(376002)(366004)(451199015)(66899015)(30864003)(5660300002)(8936002)(41300700001)(82960400001)(316002)(38100700002)(6506007)(966005)(6486002)(83380400001)(2906002)(31686004)(53546011)(6512007)(66556008)(66946007)(31696002)(86362001)(110136005)(54906003)(4326008)(36756003)(8676002)(66476007)(26005)(186003)(2616005)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFh5ZjR3WGR1d2NRTEV2cXk5ZWhQREZNSGFkYWJtcmhjcE82QnYzZnFuUDVa?=
 =?utf-8?B?RHRDaDVmRW1leVhjQVg3d1h6eHg5dTIxai80QVVhL2pKcTRZYU5tOTVELzN4?=
 =?utf-8?B?TndJMlR3dzJYVUpQdHlGN01LUVBNamc0WERUdGRHUkJzWjdGMCtTWkNvZi9P?=
 =?utf-8?B?dHZYMkFLeHpPR0h6VlovMmNGSGFrK1hyVVZGSzBFU2lmVmJNRkZnSFhYQmtT?=
 =?utf-8?B?Zkh0SnFRN1VRa2cyakdzOURrQWc1SjY0eThXdXd4eXYzQmhyVUxzc2oyaC83?=
 =?utf-8?B?NTVJVXNMUDJWWTI3RlJVbmhiQllreEFaZ256c3dsb05lUzlqbVhOUXFNaHZF?=
 =?utf-8?B?TlFmVERXZlBkbS9aOFdGeng5Ym9Da21TK3dYWVZiVDIrYkw2dkwzVjNGWkJa?=
 =?utf-8?B?aXpZOXBJaWlRL1BIY0Rka0RZeUwxVzRXcmEvb0syeDhOZXhWbWg3ck1CT2lN?=
 =?utf-8?B?ZlEwdjdxZlBPZHB5SWVSWGdpTHloZmZyWnA0aGxzM01ETDZWdFgwc2txZzcx?=
 =?utf-8?B?Q0NvWnU0NUlmRHNYeXdlMy9uK044NXpvSG0vRVY0NE9qOUlLQUp0WGpUNDRL?=
 =?utf-8?B?TEc4NmFKdXBWeGUrd3VNcTkwWVRDRFNzVDU0TTJqcFNxQzVrYXRiT3pQTXRu?=
 =?utf-8?B?S05LRVdpQjg1MURVa0NwbC90dGVKNTBma2xhcHBIU1pBMGl4bFFEbXBLRU1Z?=
 =?utf-8?B?U0QwZ3YwZ21ZTktaRW9EcFIvRVFGZi9MY1Q4L0w4VlIzQnBqbmcxR2JvVmhx?=
 =?utf-8?B?YUJxbkd5cDR2bHcyd2ZGMmUvTk4zUEpWd0cxWG5Kbk9TbDVVTlZWbk95alhF?=
 =?utf-8?B?M1JLdXFsVzFGTW4xalFvLy9DWUY2cDlPZTV6bEc2Q0F3RkFsZEQvQzBKSEFp?=
 =?utf-8?B?ZmVBRGl4TVBjb1JvOTJ0ZzVhOXBTWlRLZFBrb0hpUXZJTEZkeFhjelJRdTFC?=
 =?utf-8?B?QXVTLzFoMWViTzVLa09hRkRpU0hVRzNpRzhjSjFJaW1POU95UlRBWnhleWFy?=
 =?utf-8?B?dzJQZXJPM2RSQ2loZnQ2TUNFNHRBWi9vdGs4bXJ0RStCZExnVDU3eVZVOHVK?=
 =?utf-8?B?UXdvSTcrMjFzUm5ObjlVbGdVMVp1NjhKdm5NTUhYbDRNditKazFXMFM0bEVv?=
 =?utf-8?B?VVJVb3d2K3YxSW9qK3lKaWlrMVNSbjU2RUZ5K0svQVJvaGFxMXhmT0sxdE5m?=
 =?utf-8?B?MkVhSlQxTE9hUzN1bzlKQVI2ckltUm9zMG1UNXFCVVJTZnRZajVKeU1GNWJY?=
 =?utf-8?B?N29BQzBvSE5uMFVIM1hjN2dRQzBQcmtqcUpRRTlHUzFobkY2T3FQeGNaS3lk?=
 =?utf-8?B?MTZxR09tYW9xSTN0bVozbGNVS3FSTmo0V0x1U2t1QTR6QWt1MG1SYmdMb0k0?=
 =?utf-8?B?bzM5eUxqN01kb0lSTklmOUNhUFh3eFhqdjRvN2tQQ0hEWDBqUnlyVHhVeXYw?=
 =?utf-8?B?S1R5YTUvdVo5R2dRZXhrK1JjZmdHeGlPa1NUR204NUtSR21ETlRmNzBKS0JE?=
 =?utf-8?B?RFZ2SnFHK0FsclpZanJ3R25Dam1xeGdCVTAwa1ZYcXdNWFM4U0hOQ1U3Q05s?=
 =?utf-8?B?ZThKOGhUcTVGUUhsQmRQTWU1NFRKUTQ5MGw0RnFMTnBCekM0Ry9PS2l2R2xP?=
 =?utf-8?B?d2FoVTUyeUh5bVFJWXo2SmtweklGYjExbENhanlYNjQvTitWS2RmS0VhNGc3?=
 =?utf-8?B?NkV3eVhDZEdCVkZpOXlSazU4RG9EaFptZGp4WFBFWGpPd1M5eXI4TGVOTHhv?=
 =?utf-8?B?ZUl0U3hSalA3R2JtSkU1eWx1RmRqclJ3S2RiNDlhc3FZTksxOTRtQ09ieFFH?=
 =?utf-8?B?ZjQvQmJKOWZ1RFZOay9lN05FbXlyWW0za1pZaW1xWDhFTjdFRDNxT2w3KzEz?=
 =?utf-8?B?UFZTNjgycVN0UmtZTjQvakZ5aGJsaWxNWlpXSi81MnlRbHJxazhxRElEdWR1?=
 =?utf-8?B?S05tNFkwc3dkN0duRmxUaitIL2Qzam85MEgzSmEwYXdtZXhrbmZERlhiaXQ1?=
 =?utf-8?B?MXcwWGw1OGZ4Z0VGaWhXZ1JqK1pUN01vY28xZ2xzMUE5WGQyd1U3ZEJYanY2?=
 =?utf-8?B?R3BmZ3dORllEcllENDQybjRLSkk5ZzQzeXdicU1YN25veDMrUGF0L0FVSVpU?=
 =?utf-8?B?azVFT3FmZThNNWphZjdaMU10R3FSMjIrMjNHN2swdmg0dE9BM2tDNEhXT3NY?=
 =?utf-8?B?S0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b7ce503-157a-4774-9ac5-08daa23a9907
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2022 16:49:38.7124 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gv0lYXqbpopmEI9E+EyQeJHNs/Ub6Dm92suXDr5IKAnhsfzLHuGb0vtQQzAhgqUEBE/4ZfmaxKjNi4MMNnHCQGzRxV4ISJeZkmZk00y8iFk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6804
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: do not capture error state on
 exiting context
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 9/29/2022 01:22, Tvrtko Ursulin wrote:
> On 28/09/2022 19:27, John Harrison wrote:
>> On 9/28/2022 00:19, Tvrtko Ursulin wrote:
>>> On 27/09/2022 22:36, Ceraolo Spurio, Daniele wrote:
>>>> On 9/27/2022 12:45 AM, Tvrtko Ursulin wrote:
>>>>> On 27/09/2022 07:49, Andrzej Hajda wrote:
>>>>>> On 27.09.2022 01:34, Ceraolo Spurio, Daniele wrote:
>>>>>>> On 9/26/2022 3:44 PM, Andi Shyti wrote:
>>>>>>>> Hi Andrzej,
>>>>>>>>
>>>>>>>> On Mon, Sep 26, 2022 at 11:54:09PM +0200, Andrzej Hajda wrote:
>>>>>>>>> Capturing error state is time consuming (up to 350ms on DG2), 
>>>>>>>>> so it should
>>>>>>>>> be avoided if possible. Context reset triggered by context 
>>>>>>>>> removal is a
>>>>>>>>> good example.
>>>>>>>>> With this patch multiple igt tests will not timeout and should 
>>>>>>>>> run faster.
>>>>>>>>>
>>>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1551
>>>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3952
>>>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5891
>>>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6268
>>>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6281
>>>>>>>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>>>>>>> fine for me:
>>>>>>>>
>>>>>>>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>>>>>>>
>>>>>>>> Just to be on the safe side, can we also have the ack from any of
>>>>>>>> the GuC folks? Daniele, John?
>>>>>>>>
>>>>>>>> Andi
>>>>>>>>
>>>>>>>>
>>>>>>>>> ---
>>>>>>>>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 3 ++-
>>>>>>>>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>>>>>>>>
>>>>>>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>> index 22ba66e48a9b01..cb58029208afe1 100644
>>>>>>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>> @@ -4425,7 +4425,8 @@ static void 
>>>>>>>>> guc_handle_context_reset(struct intel_guc *guc,
>>>>>>>>>       trace_intel_context_reset(ce);
>>>>>>>>>         if (likely(!intel_context_is_banned(ce))) {
>>>>>>>>> -        capture_error_state(guc, ce);
>>>>>>>>> +        if (!intel_context_is_exiting(ce))
>>>>>>>>> +            capture_error_state(guc, ce);
>>>>>
>>>>> I am not sure here - if we have a persistent context which caused 
>>>>> a GPU hang I'd expect we'd still want error capture.
>>>>>
>>>>> What causes the reset in the affected IGTs? Always preemption 
>>>>> timeout?
>>>>>
>>>>>>>>> guc_context_replay(ce);
>>>>>>>
>>>>>>> You definitely don't want to replay requests of a context that 
>>>>>>> is going away.
>>>>>>
>>>>>> My intention was to just avoid error capture, but that's even 
>>>>>> better, only condition change:
>>>>>> -        if (likely(!intel_context_is_banned(ce))) {
>>>>>> +       if (likely(intel_context_is_schedulable(ce)))  {
>>>>>
>>>>> Yes that helper was intended to be used for contexts which should 
>>>>> not be scheduled post exit or ban.
>>>>>
>>>>> Daniele - you say there are some misses in the GuC backend. Should 
>>>>> most, or even all in intel_guc_submission.c be converted to use 
>>>>> intel_context_is_schedulable? My idea indeed was that "ban" should 
>>>>> be a level up from the backends. Backend should only distinguish 
>>>>> between "should I run this or not", and not the reason.
>>>>
>>>> I think that all of them should be updated, but I'd like Matt B to 
>>>> confirm as he's more familiar with the code than me.
>>>
>>> Right, that sounds plausible to me as well.
>>>
>>> One thing I forgot to mention - the only place where backend can 
>>> care between "schedulable" and "banned" is when it picks the preempt 
>>> timeout for non-schedulable contexts. This is to only apply the 
>>> strict 1ms to banned (so bad or naught contexts), while the ones 
>>> which are exiting cleanly get the full preempt timeout as otherwise 
>>> configured. This solves the ugly user experience quirk where GPU 
>>> resets/errors were logged upon exit/Ctrl-C of a well behaving 
>>> application (using non-persistent contexts). Hopefully GuC can match 
>>> that behaviour so customers stay happy.
>>>
>>> Regards,
>>>
>>> Tvrtko
>>
>> The whole revoke vs ban thing seems broken to me.
>>
>> First of all, if the user hits Ctrl+C we need to kill the context off 
>> immediately. That is a fundamental customer requirement. Render and 
>> compute engines have a 7.5s pre-emption timeout. The user should not 
>> have to wait 7.5s for a context to be removed from the system when 
>> they have explicitly killed it themselves. Even the regular timeout 
>> of 640ms is borderline a long time to wait. And note that there is an 
>> ongoing request/requirement to increase that to 1900ms.
>>
>> Under what circumstances would a user expect anything sensible to 
>> happen after a Ctrl+C in terms of things finishing their rendering 
>> and display nice pretty images? They killed the app. They want it 
>> dead. We should be getting it off the hardware as quickly as 
>> possible. If you are really concerned about resets causing collateral 
>> damage then maybe bump the termination timeout from 1ms up to 10ms, 
>> maybe at most 100ms. If an app is 'well behaved' then it should 
>> cleanly exit within 10ms. But if it is bad (which is almost certainly 
>> the case if the user is manually and explicitly killing it) then it 
>> needs to be killed because it is not going to gracefully exit.
>
> Right.. I had it like that initially (lower timeout - I think 20ms or 
> so, patch history on the mailing list would know for sure), but then 
> simplified it after review feedback to avoid adding another timeout 
> value.
>
> So it's not at all about any expectation that something should 
> actually finish to any sort of completion/success. It is primarily 
> about not logging an error message when there is no error. Thing to 
> keep in mind is that error messages are a big deal in some cultures. 
> In addition to that, avoiding needless engine resets is a good thing 
> as well.
But not calling the error capture code on a banned context is a trivial 
change. I don't see why it is so complicated to just suppress that part 
of the clean up.

>
> Previously the execlists backend was over eager and only allowed for 
> 1ms for such contexts to exit. If the context was banned sure - that 
> means it was a bad context which was causing many hangs already. But 
> if the context was a clean one I argue there is no point in doing an 
> engine reset.
>
> So if you want, I think it is okay to re-introduce a secondary timeout.
>
> Or if you have an idea on how to avoid the error messages / GPU resets 
> when "friendly" contexts exit in some other way, that is also 
> something to discuss.
Well, yes. Just don't call the error capture code for a banned context. 
That's the only bit that prints out any GPU hang error messages. If you 
don't call that, the user won't know that anything has happened.

>
>> Secondly, the whole persistence thing is a total mess, completely 
>> broken and intended to be massively simplified. See the internal task 
>> for it. In short, the plan is that all contexts will be immediately 
>> killed when the last DRM file handle is closed. Persistence is only 
>> valid between the time the per context file handle is closed and the 
>> time the master DRM handle is closed. Whereas, non-persistent 
>> contexts get killed as soon as the per context handle is closed. 
>> There is absolutely no connection to heartbeats or other irrelevant 
>> operations.
>
> The change we are discussing is not about persistence, but for the 
> persistence itself - I am not sure it is completely broken and if, or 
> when, the internal task will result with anything being attempted. In 
> the meantime we had unhappy customers for more than a year. So do we 
> tell them "please wait for a few years more until some internal task 
> with no clear timeline or anyone assigned maybe gets looked at"?
Persistence is totally broken for any post-execlist platform. It 
fundamentally relies upon code deep within the execlst backend that 
cannot be done with any other backend - GuC, DRM, anything that comes in 
the future, ... Pretty much any IGT with 'persistence' (or 
'no-hangcheck') in the name is failing for GuC because of this.

Daniel Vetter's view is that any connection to a submission backend, 
heartbeat, or indeed anything other than file handle closure is 
horrendous over complication and must be removed.

The task is theoretically at the top of my todo list. But I keep getting 
large high priority interrupts and never manage to work on it :(. If you 
are feeling bored, then please pick it up. You would massively improve 
our DG2 pass rates...

>
>> So in my view, the best option is to revert the ban vs revoke patch. 
>> It is creating bugs. It is making persistence more complex not 
>> simpler. It harms the user experience.
>
> I am not aware of the bugs, even less so that it is harming user 
> experience!?
This whole thread is because there are bugs. E.g. the fact that the GuC 
backend did not get properly updated to cope with the new distinction of 
ban vs revoke. The fact that compute contexts now take 7.5s to kill via 
Ctrl+C. And if the user has disabled the pre-emption timeout completely 
then Ctrl+C just won't work at all.

>
> Bugs are limited to the GuC backend or in general? My CI runs were 
> clean so maybe test cases are lacking. Is it just a case of 
> s/intel_context_is_banned/intel_context_is_schedulable/ in there to 
> fix it?
>
> Again, the change was not about persistence. It is the opposite - 
> allowing non-persistent contexts to exit cleanly.
If the code being added says 'if(persistent) X; else Y;' then it is 
about persistence and it is making the whole persistence problem worse.

>
>> If the original problem was simply that error captures were being 
>> done on Ctrl+C then the fix is simple. Don't capture for a banned 
>> context. There is no need for all the rest of the revoke patch.
>
> Error capture was not part of the original story so it may be a 
> completely orthogonal topic that we are discussing it in this thread.
Then I'm lost. What was the purpose of the original change? According to 
the commit message, the whole point of introducing revoke was to 
suppress the error capture on a Ctrl+C wasn't it? - "logging engine 
resets during normal operation not desirable".

John


>
> Regards,
>
> Tvrtko

