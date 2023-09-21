Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 490207A9431
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 14:20:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CC0F10E5E6;
	Thu, 21 Sep 2023 12:19:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DD3010E0C1
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 12:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695298795; x=1726834795;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=W/SVziLunj/d1LzueL2duXkJBgFv9CRUAqJLDHgU/Iw=;
 b=b9WIKsOzd3MkO4LnrO5cHtbKkEU0pL/hrsX5F9aWSzwQily+h4UNSrCF
 40PkFP2wYZJ1UP2VizRWtnnhC664xsz5jWUexSXi9PyhSurhoPA0RGXhF
 BkyeTTwNpOu76axZHafsnvArXuhwCP9biuHvC5NdJuhMt8a7UeOQTYYPt
 HCSFA1bMW2kBVE06eDD0/ERnoNH34EiufVS81Oo7mRp2HXsmZeIruNhBQ
 sNdTLhniKngPdf2BVI5rwAeg7bOYyjsabDKWS1o9uK1X994p5vmlz+RpG
 vIwDGOAnLgUqdjBfGIRWXw/RZ9b41R9ro0py8j8doiHJTlbFYfLxjMZSu Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="380411357"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="380411357"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 05:19:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="740607259"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="740607259"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Sep 2023 05:19:53 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 05:19:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 21 Sep 2023 05:19:52 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 21 Sep 2023 05:19:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jcCg/lLGqPZbie1YizKPx4e4B6ZzTEVhbtHOhjB5eF3/m2D2pISXGaIuqhD4deHhHuRLMINsSLnpRxuX9gxsFWx+/CSg/SmIjdkyNtNHLxnm7SzbPcfBBvwMXRwdjYTtX8XlqfTV9nTz/XntK4vqWrypR93wy9TWv3wfLf9cpMAr3pwTaYXaCVlKMNIAm6Yj87ngqwXhUAGlaj1+lYR4hlXQGyGQMrqecTUHW6w4K3MxZJv7rvhbemU8KVrpOr1OfnIhC3WDquN6ZWP2kl53tekIHL9tK5jWmYoSBWgo+w4rdhfSQJSdARC54hA+CNA54wch1sMpJgw8kO/F4r8l7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O4QH8Fy8zpkqpLZQ65qFGQnCLD03MtQG2SgxJIWtwiw=;
 b=H+jbRlFH3W6KoVnynPo/DPHEZ0lADaZddfD5079O1mpoBcQnLh3QAaZp0s8pyAOlkYTYGKM+ZBRJRQ6lVjanMApW97JpU+aBwIfbL2i7voEpNcKlNL1AogfUedZRV4/PI6vIJS1rwxTo67uhvPeijYiQCLk1ljcwrcR/k54SV2AD0QOLrs3awhel731TmlgyzSv3Ia0xOVbP7VgTtd5B6G/3FZFI9FrcADKjhHymMKy+LaVpx5c7ocpMmMWs/8Rz25ydTXQbMzV88kZdGkdLwIGQLnwJX13MDKwpJZaw6XEcocn5Y8SgucG4KzeqtPtNU0uSoaYhHNp9jfR1ZA52WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by IA1PR11MB7296.namprd11.prod.outlook.com (2603:10b6:208:427::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.20; Thu, 21 Sep
 2023 12:19:26 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bddf:185b:23c:241]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bddf:185b:23c:241%7]) with mapi id 15.20.6792.026; Thu, 21 Sep 2023
 12:19:26 +0000
Message-ID: <ae654282-4b7c-4333-958b-20229cdb33d6@intel.com>
Date: Thu, 21 Sep 2023 17:49:18 +0530
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Nilawar, Badal" <badal.nilawar@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20230920090620.3255091-1-badal.nilawar@intel.com>
 <169522061709.6464.4576114754812442843@emeril.freedesktop.org>
 <BN9PR11MB5530A9D8F211ACD8FD378F39E5F8A@BN9PR11MB5530.namprd11.prod.outlook.com>
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
In-Reply-To: <BN9PR11MB5530A9D8F211ACD8FD378F39E5F8A@BN9PR11MB5530.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0235.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::13) To CY5PR11MB6211.namprd11.prod.outlook.com
 (2603:10b6:930:25::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6211:EE_|IA1PR11MB7296:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ec15897-f9e1-445b-3bb0-08dbba9cff1e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nu/cwXRcaoWuDaYgvgIlpct7maO8dcfjh8Tw5i9ZqWfnpxHsiUc2pdMB+AYMscz1vBb6VHLr7yfpWxgSYuMDJBX0znf8S6QxE/Y1++s2A4pLZgcqINf8P0J0MoDMaFg2agqFj20iDhNqbBTmvyT6Nm2Y6dYKSrJHxA5NmrfjUF+A6L1mbRI7XA16CToStBVWWD0Mu/KOJBLPgGAGhXOMpFViFarF+SAcWvnIB4/tK6VgI3goM6TW6ojfr9WeGOmLBYeFSTO5zCD0FhiiA0T10YWucz9lWWghWupSEcYCx1T+2tTdtmGhQae4hJleZfN5941CiqtNpw/XO+stqWExc7vEbSME7cFcHx6QvILQV4TRcOYFXQXPUjcZjqf1o4aJgqy6YbVXMhA+kLXzVURNFuoGyygVneA3A2GCyewIUxwVDHoB6l2Pn9/KMYAd4gnBmt7swNHAzrMFKFnLePuPzcpK3Nl7133Py1suBM9+9jIIq/BTCtXS3/FptS1RhPcIz/xAyPmQeAY9GsLApNQeOqn3OCbZGQGAEnynD33Lo924u6MjjOH/poZj+yiBC2AtY4fa1ecgPCDkv3DK4hAbSW1g/Q5nlfQXl3qsQUeinyqWVGuw1Tv7hX2ULiMWgjwGYZI+ypx7HHyuoMdc72x8MJb20yFa4hqiy4s7N2Spc5I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(376002)(366004)(346002)(186009)(451199024)(1800799009)(31696002)(36756003)(86362001)(38100700002)(31686004)(66556008)(6666004)(66476007)(8936002)(6506007)(26005)(110136005)(53546011)(66946007)(41300700001)(316002)(2616005)(6486002)(6512007)(966005)(478600001)(82960400001)(5660300002)(30864003)(2906002)(15650500001)(83380400001)(43740500002)(45980500001)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?citiRG83UHNyMlJtUzZuRVgzNlFzdWhXM2tPSWhHaWs2Mi9ydHhpMUZIT0c0?=
 =?utf-8?B?bFlJVHRURGh4M0VHMmx4Tm5SdkRjanlNaElrdWI1YXNhSUEzZXNtcllLLytG?=
 =?utf-8?B?VkJqbUxLMFoxWnB2MkUvd1ErakdENjByUEY2UDZybjd2aGRla1lTNFFsL1A1?=
 =?utf-8?B?NzlHckptOFRqNUFQMVlVNmFaZ3BHZUVRY09wcWJGcEpGUU5ZM3VkY0lSM055?=
 =?utf-8?B?M1lWa3E2WmtkRDFNaXN0QTQ5ekYyc2traEQxMXlBR3Juazl4M3pteXRjZzZK?=
 =?utf-8?B?bXk0cEhhNEgrdlMwNmZzR085T0J4NGYyNmtXblRYM0x2Zlp3WW1VWC9LYTB6?=
 =?utf-8?B?R1JJamVRZ2RiVjhwMk9yNlQ2Umh5UllhZmRrSE9GOUFqSkh5eEZPWEhtZEU4?=
 =?utf-8?B?a3pXVkdaTS9SQkZPSmE4YVNYMTlvZmJIWlRmeVhDcEZUV3BXeUVacFVMeXEz?=
 =?utf-8?B?d0ZWUzhTRXM0dHhrZWM4NkZVY2dRT0VONllYYnpVSHF5dGtDSlRxTk9DNG00?=
 =?utf-8?B?d3RoZ3BsNlY1UDFFb0pVMkMzWnB1Yng1TE5kZUhld3VBMUQyeFlwcXUvdzdo?=
 =?utf-8?B?TVFDV3NQd3R5aCtWOGdyb1RZRGlQV1RBV3FOMFI3NXJXRS9HUFc4eDZKVnVG?=
 =?utf-8?B?d3NRZDFtZTduS1RUblo2ZDBNRW9xRXdIcVZBNlVWbFZNdDJ3SXFPc3M0a3dF?=
 =?utf-8?B?Z3VtbTRqTW1DbGkxY21qaWVZeGtPdjE1WkM3RzlrMXhpYkIxVVI0STI4RUE1?=
 =?utf-8?B?bE9hdHRoUnhYRUdzSVE4K0JhNnFVeTBJUFUrcUwwREpEMUswemRHUDJSa2Zr?=
 =?utf-8?B?eUJQTHBQNlA1RzNrZnNhaWwySlNqNE5KM1MxOXJIRzV6MHdva2F3SG5mK2xO?=
 =?utf-8?B?b2dzUzZiT2ZEaVhCb25HaWtMZG9UcTlJdVFBcDJHQkZpd2tBaE0vN0dvdUFW?=
 =?utf-8?B?bCtQQmVzYmEwakZYRU9uSWpTdmpqcm9va08xeHkxQ1NCdEFwdjk0ek5Cd0hn?=
 =?utf-8?B?UmxtSDJhQXFTbzVXOHFMaStTMGw5Y2JkU2ErSkVHWUtod3lWNFBvVUg0Slc4?=
 =?utf-8?B?bGNIWVRJckkrNXFFMVFrN2dBZ3hLQjNwVHVzOWhKckRmbjJMT0JQM3NMZ2VJ?=
 =?utf-8?B?VkRwTXBTYXVpNm1ZMHBmZlJORWtiRkMzeUN1VC8weGtrVHJUNWd6ZFpiMXo2?=
 =?utf-8?B?UUV3OWQvTHdHQmZRc3N4cEhXZFNkK3dSYXlnRjBseENvSHlCK3NDMHRvcGF6?=
 =?utf-8?B?ekpUM1hIYjJlUzQyRW5rWTBHdUJ6cm5qYkxycUlvSkdLNHVQVzB4UUVZdy9M?=
 =?utf-8?B?VW1ZWEJ0VG5ZeG5Iamo4d1Fic2Mzd1FLVDJPT0VOMzNuck1wS0orZnplUjgr?=
 =?utf-8?B?WW1uTnVLVlpyemhOQnFCLzRLTEcrTVg4cy9GUHhXZndkSzRUMStpVk5HZjQ3?=
 =?utf-8?B?SFdKeHhueURmNy8remo3TW41clI1T1JXWE16NDZFQVhYMi9DU2hwTGxYV2xw?=
 =?utf-8?B?OHVqZDFEL2pFQzFUVlIrUVhiMkE0cVFUY1pkSE1LUklVMVhESFBxa0M3aWJL?=
 =?utf-8?B?b0tsT0tOYyszeG13LzA0V252MEFHQVhsVHg2Mlg2MVVnRDBBZFVIc2RvaTho?=
 =?utf-8?B?eXE1bk9nTXlJK3ZiS0hscHlISEx0b1VjYkVkTHR4V1g0T3M5OVJWdHI4ck5X?=
 =?utf-8?B?aFB6bUZlZ25SNExROUVmdDIzdDQ2NnB4eTloam9kUGVraENBVWljcUpLWld6?=
 =?utf-8?B?NEZNL1NGM3k2RmVRQlNKakJXa054Q3I0TkJiYmVlclFEaEZsVzFzZHVMRk5a?=
 =?utf-8?B?VEJNSjJsRjV5VU1NRXFodUMxeXlWVVRqeXlnZ1lBRThiTFNSUTZyd1NxYUly?=
 =?utf-8?B?ZEkrbGtYdFFZa1NKMEpRU0tvemtjbnV6SnFUWHBLbmFIU04wbCt1TWM0VVpj?=
 =?utf-8?B?NzVkYTVxYWhSY3dZTzVWMVZRNm5haWVUU3JSK1grYVpWYm1yQVlGYjFRNnh3?=
 =?utf-8?B?Ujg2NC9lNGpCMDQySWJMR1dqc0NNdmg5Nm9vc3RoSlEyVjZwdGVJcWxUYngr?=
 =?utf-8?B?UHg3VnhmWnFnVkFyWWEzMk5uMjlxL1pCYVhJK25weUJCWFBRWEtKcmNMWnll?=
 =?utf-8?B?UmM2TkZ1eWUxdy9JUjJsVlN4MVVicC9qZEpHN25LajJ5RHhtTk15dHYvSjVE?=
 =?utf-8?B?WFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ec15897-f9e1-445b-3bb0-08dbba9cff1e
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2023 12:19:26.6890 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2BMxVW7BfKIxbb5y5lDnrMx6H14ISIl79MEnHSEMtNhBebtlBUlHEsbe6+/Z4eivIYjivwqbte6FaE/Ki7IcxGq+JIYLXBwlquOry7+HaE0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7296
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Update_RC6_mask_for_mtl=5Fdrpc_=28rev2=29?=
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



On 9/21/2023 4:10 PM, Nilawar, Badal wrote:
> These failures are not related to the changes in patch.
pushed to drm-inte-gt-next with some modification in commit log.
thanks for patch.

Br,
Anshuman.
> 
> Regards,
> 
> Badal Nilawar
> 
> *From:*Patchwork <patchwork@emeril.freedesktop.org>
> *Sent:* 20 September 2023 20:07
> *To:* Nilawar, Badal <badal.nilawar@intel.com>
> *Cc:* intel-gfx@lists.freedesktop.org
> *Subject:* ✗Fi.CI.IGT: failure for drm/i915/gt: Update RC6 mask for 
> mtl_drpc (rev2)
> 
> *Patch Details*
> 
> *Series:*
> 
> 	
> 
> drm/i915/gt: Update RC6 mask for mtl_drpc (rev2)
> 
> *URL:*
> 
> 	
> 
> https://patchwork.freedesktop.org/series/123775/ 
> <https://patchwork.freedesktop.org/series/123775/>
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
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_13653_full -> Patchwork_123775v2_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_123775v2_full absolutely 
> need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_123775v2_full, please notify your bug team 
> (lgci.bug.filing@intel.com <mailto:lgci.bug.filing@intel.com>) to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (9 -> 9)
> 
> No changes in participating hosts
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_123775v2_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@drm_mm@drm_mm_test:
>       o shard-rkl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@drm_mm@drm_mm_test.html>
>   * igt@kms_psr2_sf@cursor-plane-update-sf@pipe-a-edp-1:
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-mtlp-4/igt@kms_psr2_sf@cursor-plane-update-sf@pipe-a-edp-1.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-5/igt@kms_psr2_sf@cursor-plane-update-sf@pipe-a-edp-1.html>
>   * igt@kms_selftest@drm_damage:
>       o shard-dg2: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-6/igt@kms_selftest@drm_damage.html> +2 other tests timeout
>   * igt@kms_selftest@drm_plane:
>       o shard-snb: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-snb4/igt@kms_selftest@drm_plane.html> +1 other test timeout
>       o shard-mtlp: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@kms_selftest@drm_plane.html>
>   * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-apl7/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-apl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html>
> 
> 
>         Warnings
> 
>   * igt@drm_buddy@drm_buddy_test:
>       o shard-apl: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-apl7/igt@drm_buddy@drm_buddy_test.html> -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-apl7/igt@drm_buddy@drm_buddy_test.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_123775v2_full that come from 
> known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   * igt@core_hotunplug@unbind-rebind:
>       o shard-snb: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-snb4/igt@core_hotunplug@unbind-rebind.html> (i915#9372 <https://gitlab.freedesktop.org/drm/intel/issues/9372>)
>   * igt@drm_fdinfo@busy-hang@bcs0:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@drm_fdinfo@busy-hang@bcs0.html> (i915#8414 <https://gitlab.freedesktop.org/drm/intel/issues/8414>) +9 other tests skip
>   * igt@drm_fdinfo@busy-idle-check-all@ccs0:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@drm_fdinfo@busy-idle-check-all@ccs0.html> (i915#8414 <https://gitlab.freedesktop.org/drm/intel/issues/8414>) +6 other tests skip
>   * igt@gem_bad_reloc@negative-reloc-lut:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html> (i915#3281 <https://gitlab.freedesktop.org/drm/intel/issues/3281>) +1 other test skip
>   * igt@gem_ccs@block-multicopy-compressed:
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-tglu-3/igt@gem_ccs@block-multicopy-compressed.html> (i915#9323 <https://gitlab.freedesktop.org/drm/intel/issues/9323>)
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg2-11/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html> (i915#7297 <https://gitlab.freedesktop.org/drm/intel/issues/7297>)
>   * igt@gem_close_race@multigpu-basic-threads:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-6/igt@gem_close_race@multigpu-basic-threads.html> (i915#7697 <https://gitlab.freedesktop.org/drm/intel/issues/7697>)
>   * igt@gem_create@create-ext-cpu-access-big:
>       o shard-dg2: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-1/igt@gem_create@create-ext-cpu-access-big.html> (i915#9283 <https://gitlab.freedesktop.org/drm/intel/issues/9283>)
>   * igt@gem_ctx_freq@sysfs@gt0:
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg2-2/igt@gem_ctx_freq@sysfs@gt0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html> (i915#6786 <https://gitlab.freedesktop.org/drm/intel/issues/6786>)
>   * igt@gem_ctx_persistence@engines-mixed-process:
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-snb5/igt@gem_ctx_persistence@engines-mixed-process.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#1099 <https://gitlab.freedesktop.org/drm/intel/issues/1099>) +1 other test skip
>   * igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1.html> (i915#5882 <https://gitlab.freedesktop.org/drm/intel/issues/5882>) +5 other tests skip
>   * igt@gem_ctx_sseu@invalid-args:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@gem_ctx_sseu@invalid-args.html> (i915#280 <https://gitlab.freedesktop.org/drm/intel/issues/280>)
>   * igt@gem_eio@reset-stress:
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg1-14/igt@gem_eio@reset-stress.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg1-17/igt@gem_eio@reset-stress.html> (i915#5784 <https://gitlab.freedesktop.org/drm/intel/issues/5784>)
>   * igt@gem_exec_capture@pi@vcs0:
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-7/igt@gem_exec_capture@pi@vcs0.html> (i915#4475 <https://gitlab.freedesktop.org/drm/intel/issues/4475>)
>   * igt@gem_exec_fair@basic-deadline:
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-rkl-2/igt@gem_exec_fair@basic-deadline.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-4/igt@gem_exec_fair@basic-deadline.html> (i915#2846 <https://gitlab.freedesktop.org/drm/intel/issues/2846>)
>   * igt@gem_exec_fair@basic-none@bcs0:
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-rkl-1/igt@gem_exec_fair@basic-none@bcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +1 other test fail
>   * igt@gem_exec_fair@basic-pace:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-6/igt@gem_exec_fair@basic-pace.html> (i915#3539 <https://gitlab.freedesktop.org/drm/intel/issues/3539>) +1 other test skip
>   * igt@gem_exec_fair@basic-throttle:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@gem_exec_fair@basic-throttle.html> (i915#4473 <https://gitlab.freedesktop.org/drm/intel/issues/4473> / i915#4771 <https://gitlab.freedesktop.org/drm/intel/issues/4771>)
>   * igt@gem_exec_fence@invalid-fence-array:
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-mtlp-7/igt@gem_exec_fence@invalid-fence-array.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-5/igt@gem_exec_fence@invalid-fence-array.html> (i915#9262 <https://gitlab.freedesktop.org/drm/intel/issues/9262>) +1 other test abort
>   * igt@gem_exec_fence@parallel@vcs0:
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-mtlp-3/igt@gem_exec_fence@parallel@vcs0.html> -> DMESG-FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-4/igt@gem_exec_fence@parallel@vcs0.html> (i915#8962 <https://gitlab.freedesktop.org/drm/intel/issues/8962>) +2 other tests dmesg-fail
>   * igt@gem_exec_fence@parallel@vecs0:
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-mtlp-3/igt@gem_exec_fence@parallel@vecs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-4/igt@gem_exec_fence@parallel@vecs0.html> (i915#8957 <https://gitlab.freedesktop.org/drm/intel/issues/8957>) +2 other tests fail
>   * igt@gem_exec_flush@basic-uc-ro-default:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-1/igt@gem_exec_flush@basic-uc-ro-default.html> (i915#3539 <https://gitlab.freedesktop.org/drm/intel/issues/3539> / i915#4852 <https://gitlab.freedesktop.org/drm/intel/issues/4852>) +4 other tests skip
>   * igt@gem_exec_params@rsvd2-dirt:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-6/igt@gem_exec_params@rsvd2-dirt.html> (fdo#109283 <https://bugs.freedesktop.org/show_bug.cgi?id=109283> / i915#5107 <https://gitlab.freedesktop.org/drm/intel/issues/5107>)
>   * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html> (i915#3281 <https://gitlab.freedesktop.org/drm/intel/issues/3281>) +10 other tests skip
>   * igt@gem_exec_reloc@basic-wc-gtt-active:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-6/igt@gem_exec_reloc@basic-wc-gtt-active.html> (i915#3281 <https://gitlab.freedesktop.org/drm/intel/issues/3281>) +7 other tests skip
>   * igt@gem_exec_schedule@preempt-queue:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-2/igt@gem_exec_schedule@preempt-queue.html> (i915#4537 <https://gitlab.freedesktop.org/drm/intel/issues/4537> / i915#4812 <https://gitlab.freedesktop.org/drm/intel/issues/4812>)
>   * igt@gem_fence_thrash@bo-write-verify-x:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-1/igt@gem_fence_thrash@bo-write-verify-x.html> (i915#4860 <https://gitlab.freedesktop.org/drm/intel/issues/4860>)
>   * igt@gem_fenced_exec_thrash@no-spare-fences:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-5/igt@gem_fenced_exec_thrash@no-spare-fences.html> (i915#4860 <https://gitlab.freedesktop.org/drm/intel/issues/4860>) +2 other tests skip
>   * igt@gem_lmem_swapping@basic:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-2/igt@gem_lmem_swapping@basic.html> (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +1 other test skip
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html> -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html> (i915#5493 <https://gitlab.freedesktop.org/drm/intel/issues/5493>)
>   * igt@gem_media_fill@media-fill:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-5/igt@gem_media_fill@media-fill.html> (i915#8289 <https://gitlab.freedesktop.org/drm/intel/issues/8289>)
>   * igt@gem_mmap_gtt@basic-read-write-distinct:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-5/igt@gem_mmap_gtt@basic-read-write-distinct.html> (i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +9 other tests skip
>   * igt@gem_mmap_wc@copy:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@gem_mmap_wc@copy.html> (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>) +6 other tests skip
>   * igt@gem_mmap_wc@write-prefaulted:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@gem_mmap_wc@write-prefaulted.html> (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>)
>   * igt@gem_pread@bench:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-6/igt@gem_pread@bench.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>) +4 other tests skip
>   * igt@gem_pread@snoop:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-1/igt@gem_pread@snoop.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>) +5 other tests skip
>   * igt@gem_pwrite@basic-exhaustion:
>       o shard-snb: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-snb5/igt@gem_pwrite@basic-exhaustion.html> (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>   * igt@gem_pxp@create-regular-buffer:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@gem_pxp@create-regular-buffer.html> (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>)
>   * igt@gem_pxp@fail-invalid-protected-context:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-7/igt@gem_pxp@fail-invalid-protected-context.html> (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>) +2 other tests skip
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@gem_pxp@protected-raw-src-copy-not-readible.html> (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>) +2 other tests skip
>   * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-snb2/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +230 other tests skip
>   * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html> (i915#8428 <https://gitlab.freedesktop.org/drm/intel/issues/8428>) +5 other tests skip
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html> (i915#8411 <https://gitlab.freedesktop.org/drm/intel/issues/8411>)
>   * igt@gem_softpin@noreloc-s3:
>       o shard-mtlp: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-5/igt@gem_softpin@noreloc-s3.html> (i915#9262 <https://gitlab.freedesktop.org/drm/intel/issues/9262>) +5 other tests abort
>   * igt@gem_tiled_pread_pwrite:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@gem_tiled_pread_pwrite.html> (i915#4079 <https://gitlab.freedesktop.org/drm/intel/issues/4079>) +2 other tests skip
>   * igt@gem_unfence_active_buffers:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@gem_unfence_active_buffers.html> (i915#4879 <https://gitlab.freedesktop.org/drm/intel/issues/4879>)
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-6/igt@gem_unfence_active_buffers.html> (i915#4879 <https://gitlab.freedesktop.org/drm/intel/issues/4879>)
>   * igt@gem_userptr_blits@create-destroy-unsync:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@gem_userptr_blits@create-destroy-unsync.html> (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297>) +2 other tests skip
>   * igt@gem_userptr_blits@dmabuf-sync:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@gem_userptr_blits@dmabuf-sync.html> (i915#3323 <https://gitlab.freedesktop.org/drm/intel/issues/3323>)
>   * igt@gem_userptr_blits@forbidden-operations:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>)
>   * igt@gem_userptr_blits@mmap-offset-banned@gtt:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-8/igt@gem_userptr_blits@mmap-offset-banned@gtt.html> (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297>) +2 other tests skip
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-tglu-3/igt@gem_userptr_blits@unsync-unmap-after-close.html> (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297>)
>   * igt@gem_userptr_blits@vma-merge:
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-5/igt@gem_userptr_blits@vma-merge.html> (i915#3318 <https://gitlab.freedesktop.org/drm/intel/issues/3318>)
>   * igt@gen7_exec_parse@basic-offset:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@gen7_exec_parse@basic-offset.html> (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +3 other tests skip
>   * igt@gen7_exec_parse@load-register-reg:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-2/igt@gen7_exec_parse@load-register-reg.html> (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +3 other tests skip
>   * igt@gen9_exec_parse@bb-oversize:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-6/igt@gen9_exec_parse@bb-oversize.html> (i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>)
>   * igt@gen9_exec_parse@unaligned-jump:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-2/igt@gen9_exec_parse@unaligned-jump.html> (i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>) +5 other tests skip
>   * igt@gen9_exec_parse@valid-registers:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@gen9_exec_parse@valid-registers.html> (i915#2527 <https://gitlab.freedesktop.org/drm/intel/issues/2527>) +1 other test skip
>   * igt@i915_hangman@engine-engine-error@vcs0:
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-5/igt@i915_hangman@engine-engine-error@vcs0.html> (i915#7069 <https://gitlab.freedesktop.org/drm/intel/issues/7069>)
>   * igt@i915_module_load@load:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-8/igt@i915_module_load@load.html> (i915#6227 <https://gitlab.freedesktop.org/drm/intel/issues/6227>)
>   * igt@i915_module_load@reload-with-fault-injection:
>       o shard-dg2: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@i915_module_load@reload-with-fault-injection.html> (i915#8617 <https://gitlab.freedesktop.org/drm/intel/issues/8617>)
>   * igt@i915_module_load@resize-bar:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@i915_module_load@resize-bar.html> (i915#6412 <https://gitlab.freedesktop.org/drm/intel/issues/6412>)
>   * igt@i915_pm_freq_api@freq-reset:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html> (i915#8399 <https://gitlab.freedesktop.org/drm/intel/issues/8399>)
>   * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html> (i915#3591 <https://gitlab.freedesktop.org/drm/intel/issues/3591>)
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg1-17/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg1-19/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html> (i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>) +1 other test skip
>   * igt@i915_pm_rpm@dpms-non-lpsp:
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg2-7/igt@i915_pm_rpm@dpms-non-lpsp.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-10/igt@i915_pm_rpm@dpms-non-lpsp.html> (i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>)
>   * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html> (i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>)
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-rkl-1/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html> (i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>) +1 other test skip
>   * igt@i915_pm_rpm@pm-caching:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-6/igt@i915_pm_rpm@pm-caching.html> (i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +9 other tests skip
>   * igt@i915_pm_rps@min-max-config-idle:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-6/igt@i915_pm_rps@min-max-config-idle.html> (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
>   * igt@i915_query@test-query-geometry-subslices:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html> (i915#5723 <https://gitlab.freedesktop.org/drm/intel/issues/5723>)
>   * igt@i915_suspend@basic-s3-without-i915:
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg2-2/igt@i915_suspend@basic-s3-without-i915.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-5/igt@i915_suspend@basic-s3-without-i915.html> (fdo#103375 <https://bugs.freedesktop.org/show_bug.cgi?id=103375>) +1 other test fail
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>       o shard-snb: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-snb5/igt@i915_suspend@fence-restore-tiled2untiled.html> (i915#8841 <https://gitlab.freedesktop.org/drm/intel/issues/8841>) +4 other tests dmesg-warn
>   * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-1/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html> (i915#4212 <https://gitlab.freedesktop.org/drm/intel/issues/4212>)
>   * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html> (i915#4212 <https://gitlab.freedesktop.org/drm/intel/issues/4212>) +2 other tests skip
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@kms_addfb_basic@basic-y-tiled-legacy.html> (i915#4215 <https://gitlab.freedesktop.org/drm/intel/issues/4215> / i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
>   * igt@kms_addfb_basic@tile-pitch-mismatch:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-6/igt@kms_addfb_basic@tile-pitch-mismatch.html> (i915#4212 <https://gitlab.freedesktop.org/drm/intel/issues/4212> / i915#5608 <https://gitlab.freedesktop.org/drm/intel/issues/5608>)
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-dp-4-4-mc_ccs:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-11/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-dp-4-4-mc_ccs.html> (i915#8709 <https://gitlab.freedesktop.org/drm/intel/issues/8709>) +11 other tests skip
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs.html> (i915#8502 <https://gitlab.freedesktop.org/drm/intel/issues/8502>) +3 other tests skip
>   * igt@kms_async_flips@crc@pipe-a-edp-1:
>       o shard-mtlp: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@kms_async_flips@crc@pipe-a-edp-1.html> (i915#8561 <https://gitlab.freedesktop.org/drm/intel/issues/8561>) +1 other test dmesg-fail
>   * igt@kms_async_flips@crc@pipe-d-edp-1:
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@kms_async_flips@crc@pipe-d-edp-1.html> (i915#8247 <https://gitlab.freedesktop.org/drm/intel/issues/8247>) +1 other test fail
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html> (i915#404 <https://gitlab.freedesktop.org/drm/intel/issues/404>)
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html> (i915#1769 <https://gitlab.freedesktop.org/drm/intel/issues/1769> / i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-6/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614>) +4 other tests skip
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-7/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614>) +1 other test skip
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html> (i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>)
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html> (i915#5138 <https://gitlab.freedesktop.org/drm/intel/issues/5138>)
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-tglu-10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-tglu-10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html> (i915#3743 <https://gitlab.freedesktop.org/drm/intel/issues/3743>)
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-1/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html> (i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>) +12 other tests skip
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614> / i915#3638 <https://gitlab.freedesktop.org/drm/intel/issues/3638>) +2 other tests skip
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html> (fdo#110723 <https://bugs.freedesktop.org/show_bug.cgi?id=110723>)
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-7/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html> (fdo#111615 <https://bugs.freedesktop.org/show_bug.cgi?id=111615>) +8 other tests skip
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-5/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html> (i915#6187 <https://gitlab.freedesktop.org/drm/intel/issues/6187>)
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html> (i915#4538 <https://gitlab.freedesktop.org/drm/intel/issues/4538> / i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>) +3 other tests skip
>   * igt@kms_big_joiner@invalid-modeset:
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-apl7/igt@kms_big_joiner@invalid-modeset.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +23 other tests skip
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-4_tiled_mtl_rc_ccs:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@kms_ccs@pipe-a-ccs-on-another-bo-4_tiled_mtl_rc_ccs.html> (i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354> / i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>) +1 other test skip
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-tglu-3/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html> (i915#3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689> / i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886> / i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354> / i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>)
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html> (i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886> / i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354> / i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>)
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-7/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html> (i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>) +31 other tests skip
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html> (i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886> / i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>) +7 other tests skip
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-4_tiled_mtl_rc_ccs_cc:
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-tglu-3/igt@kms_ccs@pipe-c-ccs-on-another-bo-4_tiled_mtl_rc_ccs_cc.html> (i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354> / i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>) +2 other tests skip
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-5/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html> (i915#3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689> / i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886> / i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +8 other tests skip
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_ccs:
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-tglu-3/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_ccs.html> (i915#3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689> / i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354> / i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>)
>   * igt@kms_ccs@pipe-d-bad-aux-stride-4_tiled_mtl_mc_ccs:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@kms_ccs@pipe-d-bad-aux-stride-4_tiled_mtl_mc_ccs.html> (i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +6 other tests skip
>   * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-1/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs.html> (i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +39 other tests skip
>   * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-5/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html> (i915#3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689> / i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +17 other tests skip
>   * igt@kms_cdclk@mode-transition-all-outputs:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@kms_cdclk@mode-transition-all-outputs.html> (i915#4087 <https://gitlab.freedesktop.org/drm/intel/issues/4087> / i915#7213 <https://gitlab.freedesktop.org/drm/intel/issues/7213>)
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-6/igt@kms_cdclk@mode-transition-all-outputs.html> (i915#7213 <https://gitlab.freedesktop.org/drm/intel/issues/7213> / i915#9010 <https://gitlab.freedesktop.org/drm/intel/issues/9010>)
>   * igt@kms_chamelium_color@ctm-0-50:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-5/igt@kms_chamelium_color@ctm-0-50.html> (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1 other test skip
>   * igt@kms_chamelium_color@degamma:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-7/igt@kms_chamelium_color@degamma.html> (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>   * igt@kms_chamelium_hpd@dp-hpd-with-enabled-mode:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-with-enabled-mode.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +1 other test skip
>   * igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-tglu-3/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>)
>   * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-6/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +3 other tests skip
>   * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +7 other tests skip
>   * igt@kms_content_protection@lic:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@kms_content_protection@lic.html> (i915#6944 <https://gitlab.freedesktop.org/drm/intel/issues/6944>)
>   * igt@kms_content_protection@mei_interface:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-7/igt@kms_content_protection@mei_interface.html> (i915#8063 <https://gitlab.freedesktop.org/drm/intel/issues/8063>)
>   * igt@kms_content_protection@srm:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-7/igt@kms_content_protection@srm.html> (i915#7118 <https://gitlab.freedesktop.org/drm/intel/issues/7118>) +1 other test skip
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-7/igt@kms_cursor_crc@cursor-onscreen-512x170.html> (i915#3359 <https://gitlab.freedesktop.org/drm/intel/issues/3359>) +1 other test skip
>   * igt@kms_cursor_crc@cursor-random-512x170:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-5/igt@kms_cursor_crc@cursor-random-512x170.html> (i915#3359 <https://gitlab.freedesktop.org/drm/intel/issues/3359>) +1 other test skip
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html> (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274> / fdo#111767 <https://bugs.freedesktop.org/show_bug.cgi?id=111767> / i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>)
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html> (i915#4213 <https://gitlab.freedesktop.org/drm/intel/issues/4213>) +1 other test skip
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html> (i915#3546 <https://gitlab.freedesktop.org/drm/intel/issues/3546>) +1 other test skip
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +1 other test skip
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html> (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274> / i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +5 other tests skip
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html> (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html> (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103>)
>   * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4:
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg1-17/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4.html> (i915#9227 <https://gitlab.freedesktop.org/drm/intel/issues/9227>)
>   * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4:
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg1-17/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4.html> (i915#9226 <https://gitlab.freedesktop.org/drm/intel/issues/9226> / i915#9261 <https://gitlab.freedesktop.org/drm/intel/issues/9261>) +1 other test skip
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-7/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +5 other tests skip
>   * igt@kms_fence_pin_leak:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@kms_fence_pin_leak.html> (i915#4881 <https://gitlab.freedesktop.org/drm/intel/issues/4881>)
>   * igt@kms_flip@2x-flip-vs-fences:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-5/igt@kms_flip@2x-flip-vs-fences.html> (i915#8381 <https://gitlab.freedesktop.org/drm/intel/issues/8381>) +1 other test skip
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-2/igt@kms_flip@2x-flip-vs-suspend-interruptible.html> (i915#3637 <https://gitlab.freedesktop.org/drm/intel/issues/3637>) +5 other tests skip
>   * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html> (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274>) +5 other tests skip
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +1 other test skip
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +2 other tests skip
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-default-mode:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-default-mode.html> (i915#8810 <https://gitlab.freedesktop.org/drm/intel/issues/8810>)
>   * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8810 <https://gitlab.freedesktop.org/drm/intel/issues/8810>)
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672> / i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +1 other test skip
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html> (i915#8708 <https://gitlab.freedesktop.org/drm/intel/issues/8708>) +12 other tests skip
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html> (i915#6880 <https://gitlab.freedesktop.org/drm/intel/issues/6880>)
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite.html> (i915#1825 <https://gitlab.freedesktop.org/drm/intel/issues/1825>) +28 other tests skip
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825> / i915#1825 <https://gitlab.freedesktop.org/drm/intel/issues/1825>) +6 other tests skip
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html> (i915#3023 <https://gitlab.freedesktop.org/drm/intel/issues/3023>) +2 other tests skip
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc:
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html> (fdo#109280 <https://bugs.freedesktop.org/show_bug.cgi?id=109280>) +1 other test skip
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-tglu-3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html> (fdo#110189 <https://bugs.freedesktop.org/show_bug.cgi?id=110189>) +1 other test skip
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html> (i915#8708 <https://gitlab.freedesktop.org/drm/intel/issues/8708>) +8 other tests skip
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html> (i915#3458 <https://gitlab.freedesktop.org/drm/intel/issues/3458>) +12 other tests skip
>   * igt@kms_getfb@getfb-reject-ccs:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-6/igt@kms_getfb@getfb-reject-ccs.html> (i915#6118 <https://gitlab.freedesktop.org/drm/intel/issues/6118>)
>   * igt@kms_hdr@bpc-switch:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@kms_hdr@bpc-switch.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/intel/issues/8228>) +1 other test skip
>   * igt@kms_hdr@invalid-hdr:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-1/igt@kms_hdr@invalid-hdr.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/intel/issues/8228>)
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-tglu-3/igt@kms_hdr@invalid-hdr.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/intel/issues/8228>)
>   * igt@kms_hdr@static-toggle-suspend:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-7/igt@kms_hdr@static-toggle-suspend.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/intel/issues/8228>)
>   * igt@kms_panel_fitting@atomic-fastset:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html> (i915#6301 <https://gitlab.freedesktop.org/drm/intel/issues/6301>)
>   * igt@kms_plane_lowres@tiling-yf:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-2/igt@kms_plane_lowres@tiling-yf.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8821 <https://gitlab.freedesktop.org/drm/intel/issues/8821>)
>   * igt@kms_plane_multiple@tiling-y:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-5/igt@kms_plane_multiple@tiling-y.html> (i915#8806 <https://gitlab.freedesktop.org/drm/intel/issues/8806>)
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
>       o shard-rkl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html> (i915#8292 <https://gitlab.freedesktop.org/drm/intel/issues/8292>)
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-dp-4:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-dp-4.html> (i915#5176 <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +3 other tests skip
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-d-edp-1:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-d-edp-1.html> (i915#5176 <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +7 other tests skip
>   * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-c-hdmi-a-1:
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg1-19/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-c-hdmi-a-1.html> (i915#5176 <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +19 other tests skip
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-hdmi-a-4:
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg1-16/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-hdmi-a-4.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +3 other tests skip
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +3 other tests skip
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +7 other tests skip
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-11/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +7 other tests skip
>   * igt@kms_prime@basic-modeset-hybrid:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-1/igt@kms_prime@basic-modeset-hybrid.html> (i915#6524 <https://gitlab.freedesktop.org/drm/intel/issues/6524> / i915#6805 <https://gitlab.freedesktop.org/drm/intel/issues/6805>)
>   * igt@kms_prime@d3hot:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-7/igt@kms_prime@d3hot.html> (i915#6524 <https://gitlab.freedesktop.org/drm/intel/issues/6524>)
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html> (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   * igt@kms_psr2_su@page_flip-nv12:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html> (fdo#111068 <https://bugs.freedesktop.org/show_bug.cgi?id=111068> / i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   * igt@kms_psr2_su@page_flip-p010:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@kms_psr2_su@page_flip-p010.html> (i915#4348 <https://gitlab.freedesktop.org/drm/intel/issues/4348>)
>   * igt@kms_psr@no_drrs:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-1/igt@kms_psr@no_drrs.html> (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +6 other tests skip
>   * igt@kms_psr@psr2_sprite_mmap_cpu:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@kms_psr@psr2_sprite_mmap_cpu.html> (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072>)
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html> (i915#4235 <https://gitlab.freedesktop.org/drm/intel/issues/4235>)
>   * igt@kms_rotation_crc@sprite-rotation-90:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-90.html> (i915#4235 <https://gitlab.freedesktop.org/drm/intel/issues/4235>) +1 other test skip
>   * igt@kms_setmode@basic-clone-single-crtc:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-7/igt@kms_setmode@basic-clone-single-crtc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8809 <https://gitlab.freedesktop.org/drm/intel/issues/8809>) +1 other test skip
>   * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
>       o shard-snb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-snb1/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html> (i915#5465 <https://gitlab.freedesktop.org/drm/intel/issues/5465>) +1 other test fail
>   * igt@kms_tv_load_detect@load-detect:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-7/igt@kms_tv_load_detect@load-detect.html> (fdo#109309 <https://bugs.freedesktop.org/show_bug.cgi?id=109309>)
>   * igt@kms_universal_plane@cursor-fb-leak-pipe-b:
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg2-11/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-11/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html> (i915#9196 <https://gitlab.freedesktop.org/drm/intel/issues/9196>)
>   * igt@kms_vblank@pipe-c-ts-continuation-modeset:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@kms_vblank@pipe-c-ts-continuation-modeset.html> (i915#4070 <https://gitlab.freedesktop.org/drm/intel/issues/4070> / i915#6768 <https://gitlab.freedesktop.org/drm/intel/issues/6768>)
>   * igt@kms_vblank@pipe-d-wait-idle:
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-apl7/igt@kms_vblank@pipe-d-wait-idle.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#533 <https://gitlab.freedesktop.org/drm/intel/issues/533>)
>   * igt@kms_writeback@writeback-invalid-parameters:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-8/igt@kms_writeback@writeback-invalid-parameters.html> (i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html> (i915#2436 <https://gitlab.freedesktop.org/drm/intel/issues/2436>)
>   * igt@perf@global-sseu-config-invalid:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@perf@global-sseu-config-invalid.html> (i915#7387 <https://gitlab.freedesktop.org/drm/intel/issues/7387>)
>   * igt@perf_pmu@busy-idle-check-all@bcs0:
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-6/igt@perf_pmu@busy-idle-check-all@bcs0.html> (i915#4521 <https://gitlab.freedesktop.org/drm/intel/issues/4521>) +2 other tests fail
>   * igt@perf_pmu@event-wait@rcs0:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@perf_pmu@event-wait@rcs0.html> (fdo#112283 <https://bugs.freedesktop.org/show_bug.cgi?id=112283>)
>   * igt@perf_pmu@module-unload:
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-5/igt@perf_pmu@module-unload.html> (i915#5793 <https://gitlab.freedesktop.org/drm/intel/issues/5793> / i915#6121 <https://gitlab.freedesktop.org/drm/intel/issues/6121>)
>   * igt@perf_pmu@most-busy-idle-check-all@vcs1:
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@perf_pmu@most-busy-idle-check-all@vcs1.html> (i915#5234 <https://gitlab.freedesktop.org/drm/intel/issues/5234>) +6 other tests fail
>   * igt@perf_pmu@multi-client@ccs0:
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-2/igt@perf_pmu@multi-client@ccs0.html> (i915#4349 <https://gitlab.freedesktop.org/drm/intel/issues/4349>) +2 other tests fail
>   * igt@prime_udl:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@prime_udl.html> (fdo#109291 <https://bugs.freedesktop.org/show_bug.cgi?id=109291>)
>   * igt@prime_vgem@basic-write:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@prime_vgem@basic-write.html> (i915#3291 <https://gitlab.freedesktop.org/drm/intel/issues/3291> / i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>   * igt@prime_vgem@fence-read-hang:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@prime_vgem@fence-read-hang.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +2 other tests skip
>   * igt@v3d/v3d_submit_cl@bad-multisync-out-sync:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-5/igt@v3d/v3d_submit_cl@bad-multisync-out-sync.html> (i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +8 other tests skip
>   * igt@v3d/v3d_submit_csd@bad-bo:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-8/igt@v3d/v3d_submit_csd@bad-bo.html> (i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +11 other tests skip
>   * igt@v3d/v3d_submit_csd@bad-multisync-extension:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@v3d/v3d_submit_csd@bad-multisync-extension.html> (fdo#109315 <https://bugs.freedesktop.org/show_bug.cgi?id=109315>) +2 other tests skip
>   * igt@vc4/vc4_mmap@mmap-bad-handle:
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@vc4/vc4_mmap@mmap-bad-handle.html> (i915#7711 <https://gitlab.freedesktop.org/drm/intel/issues/7711>)
>   * igt@vc4/vc4_mmap@mmap-bo:
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-5/igt@vc4/vc4_mmap@mmap-bo.html> (i915#7711 <https://gitlab.freedesktop.org/drm/intel/issues/7711>) +5 other tests skip
>   * igt@vc4/vc4_perfmon@create-perfmon-exceed:
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-7/igt@vc4/vc4_perfmon@create-perfmon-exceed.html> (i915#7711 <https://gitlab.freedesktop.org/drm/intel/issues/7711>) +6 other tests skip
>   * igt@vc4/vc4_tiling@get-after-free:
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-tglu-3/igt@vc4/vc4_tiling@get-after-free.html> (i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>)
> 
> 
>         Possible fixes
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-rkl-1/igt@gem_exec_fair@basic-none-share@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@gem_exec_fair@basic-none-share@rcs0.html>
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>       o shard-dg1: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html> (i915#3591 <https://gitlab.freedesktop.org/drm/intel/issues/3591>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html>
>   * igt@i915_pm_rpm@dpms-non-lpsp:
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html> (i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-4/igt@i915_pm_rpm@dpms-non-lpsp.html>
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg2-10/igt@i915_pm_rpm@modeset-non-lpsp.html> (i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-11/igt@i915_pm_rpm@modeset-non-lpsp.html>
>   * igt@kms_busy@extended-modeset-hang-oldfb-with-reset@pipe-a:
>       o shard-mtlp: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-mtlp-2/igt@kms_busy@extended-modeset-hang-oldfb-with-reset@pipe-a.html> (i915#9262 <https://gitlab.freedesktop.org/drm/intel/issues/9262>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-7/igt@kms_busy@extended-modeset-hang-oldfb-with-reset@pipe-a.html> +2 other tests pass
>   * igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3:
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg2-7/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3.html> (fdo#103375 <https://bugs.freedesktop.org/show_bug.cgi?id=103375>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-3/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3.html> +1 other test pass
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html> (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html> (i915#6880 <https://gitlab.freedesktop.org/drm/intel/issues/6880>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html> +1 other test pass
>   * {igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a}:
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg1-13/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html> (i915#1937 <https://gitlab.freedesktop.org/drm/intel/issues/1937>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg1-19/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html>
>   * igt@kms_properties@plane-properties-legacy:
>       o shard-mtlp: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-mtlp-5/igt@kms_properties@plane-properties-legacy.html> (i915#8668 <https://gitlab.freedesktop.org/drm/intel/issues/8668>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-6/igt@kms_properties@plane-properties-legacy.html>
>   * igt@kms_universal_plane@cursor-fb-leak-pipe-a:
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-apl3/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html> (i915#9196 <https://gitlab.freedesktop.org/drm/intel/issues/9196>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-apl4/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html>
>   * igt@kms_universal_plane@cursor-fb-leak-pipe-b:
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html> (i915#9196 <https://gitlab.freedesktop.org/drm/intel/issues/9196>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html> +1 other test pass
>   * igt@perf@enable-disable@0-rcs0:
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html> (i915#8724 <https://gitlab.freedesktop.org/drm/intel/issues/8724>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-7/igt@perf@enable-disable@0-rcs0.html>
>   * igt@perf_pmu@busy-double-start@vecs1:
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg2-10/igt@perf_pmu@busy-double-start@vecs1.html> (i915#4349 <https://gitlab.freedesktop.org/drm/intel/issues/4349>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html> +3 other tests pass
>   * igt@perf_pmu@rc6-all-gts:
>       o shard-mtlp: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-mtlp-8/igt@perf_pmu@rc6-all-gts.html> (i915#9268 <https://gitlab.freedesktop.org/drm/intel/issues/9268> / i915#9335 <https://gitlab.freedesktop.org/drm/intel/issues/9335>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-mtlp-1/igt@perf_pmu@rc6-all-gts.html>
> 
> 
>         Warnings
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
>       o shard-tglu: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html> (i915#2681 <https://gitlab.freedesktop.org/drm/intel/issues/2681>) -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html> (i915#2681 <https://gitlab.freedesktop.org/drm/intel/issues/2681> / i915#3591 <https://gitlab.freedesktop.org/drm/intel/issues/3591>)
>   * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html> (i915#2681 <https://gitlab.freedesktop.org/drm/intel/issues/2681> / i915#3591 <https://gitlab.freedesktop.org/drm/intel/issues/3591>) -> WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html> (i915#2681 <https://gitlab.freedesktop.org/drm/intel/issues/2681>)
>   * igt@i915_suspend@basic-s3-without-i915:
>       o shard-snb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-snb5/igt@i915_suspend@basic-s3-without-i915.html> (i915#8841 <https://gitlab.freedesktop.org/drm/intel/issues/8841>) -> DMESG-FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-snb7/igt@i915_suspend@basic-s3-without-i915.html> (fdo#103375 <https://bugs.freedesktop.org/show_bug.cgi?id=103375>)
>   * igt@kms_content_protection@mei_interface:
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg1-13/igt@kms_content_protection@mei_interface.html> (fdo#109300 <https://bugs.freedesktop.org/show_bug.cgi?id=109300>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg1-16/igt@kms_content_protection@mei_interface.html> (i915#7116 <https://gitlab.freedesktop.org/drm/intel/issues/7116>)
>   * igt@kms_content_protection@type1:
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg2-10/igt@kms_content_protection@type1.html> (i915#7118 <https://gitlab.freedesktop.org/drm/intel/issues/7118>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg2-11/igt@kms_content_protection@type1.html> (i915#7118 <https://gitlab.freedesktop.org/drm/intel/issues/7118> / i915#7162 <https://gitlab.freedesktop.org/drm/intel/issues/7162>)
>   * igt@kms_fbcon_fbt@psr:
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-rkl-1/igt@kms_fbcon_fbt@psr.html> (fdo#110189 <https://bugs.freedesktop.org/show_bug.cgi?id=110189> / i915#3955 <https://gitlab.freedesktop.org/drm/intel/issues/3955>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-6/igt@kms_fbcon_fbt@psr.html> (i915#3955 <https://gitlab.freedesktop.org/drm/intel/issues/3955>)
>   * igt@kms_fbcon_fbt@psr-suspend:
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html> (i915#3955 <https://gitlab.freedesktop.org/drm/intel/issues/3955>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html> (fdo#110189 <https://bugs.freedesktop.org/show_bug.cgi?id=110189> / i915#3955 <https://gitlab.freedesktop.org/drm/intel/issues/3955>)
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html> (i915#4816 <https://gitlab.freedesktop.org/drm/intel/issues/4816>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html> (i915#4070 <https://gitlab.freedesktop.org/drm/intel/issues/4070> / i915#4816 <https://gitlab.freedesktop.org/drm/intel/issues/4816>)
>   * igt@kms_psr@cursor_plane_move:
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg1-17/igt@kms_psr@cursor_plane_move.html> (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123775v2/shard-dg1-16/igt@kms_psr@cursor_plane_move.html> (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072> / i915#4078 <https://gitlab.freedesktop.org/drm/intel/issues/4078>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_13653 -> Patchwork_123775v2
> 
> CI-20190529: 20190529
> CI_DRM_13653: 56d487b04d902a227f8bc5cc93b73a71f7c06a12 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7493: 2517e42d612e0c1ca096acf8b5f6177f7ef4bce7 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_123775v2: 56d487b04d902a227f8bc5cc93b73a71f7c06a12 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
> 
