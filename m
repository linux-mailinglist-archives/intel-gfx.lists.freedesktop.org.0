Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F349527F1D
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 10:02:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DDEA112B9C;
	Mon, 16 May 2022 08:02:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ECE6112B9C
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 08:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652688162; x=1684224162;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tDUz0ZGZU88EqHifTngnhk/p6rllosdJozlzsiR0fPc=;
 b=MT02ZJrXEhafAOhRa9KUZpe6yJmPdE+rvQtU+6sGdtv3fXXJHYTaFS9u
 6I6ndOx0e6MT0j+mdE9gvUEQucb2HGCDSEAgGU6XDY6tuJRilIbCp21mS
 qk6obqEYNxoCplJKuKjMGu7KGuIayBCSTDWN1/PNpJ+lGGcgH1n/1pu8n
 OosYsFOXI/87uvS2eGQPSe+acGzK9exkR4Up6E6JCcaQ3MrhEG4mBzryF
 lcMI3kO9pnpRkkXE5o48TVuisvMC7/XIXbx625xjg/9g3vv9mDMORzOxj
 hcc6KZG/9DAHX9DYqB59/pw1T6vbYNPQF3wLISTn94IWYomm9ov32IZUC w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="250655806"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="250655806"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 01:02:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="660000990"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by FMSMGA003.fm.intel.com with ESMTP; 16 May 2022 01:02:39 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 16 May 2022 01:02:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 16 May 2022 01:02:39 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 16 May 2022 01:02:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PuZyCTTMNOTT18N5ccNN96zNjXVaA3wB8W3CUiU3VMtR502QIvYaciEq6ko3KEY7WWVooMymlKSI4/VC0djGu3JppM5qwAg5nscvqQg2rdhNhQugqP56Cest1HtPvnNCWv7WtekzCBXM+NFZqPxibUkt0s9Ergucbp5xJxoQT7DcUm621NVQ7itQMWO83qazAbotcdgFhbUmsstRbXKegJcaShrmr/bVEBkcBQWgTzlBaFKhI7LuvoafPZHEJxnmC+HxFwj0fQmzt+oNG76IFj+0/aOWetxVUoZWAftNM0np1AvmxYtiz4RET1zqX53fRfH0isozbtWrwWD3cLCPdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EGd2wa3/5QzkPXUWg5EYXgBQ34q7amJSF9T2l6QzS6g=;
 b=EJnylZ7CVN4TggRCHBBbRzvFG43RZFJMj9A+aRyc2SZtS+UkeJV0DEgifAKwH9KOQg4qr/rNErcLMUfyk5sF61qJMtsvSC9hxk2ZXJP8Ex5qMC2JsBm4otYLosNT1x6keBvhO6oy4CvZwYJVVK8KB3UT0du5jnhWy4jwrOt3RwhVxViTy3PobK6ZhkiZjJ23bFMwrF0TFsNLjCseYAqFlAx4K0GANfvm2E50X9tBlp6YdL2Y4j0oPj37lx3KbBZQOWh+ecrKM7xnUcO00zali3LYIvL5DXCkg9Bx0T4R16PwfVcOzwfEVed5fmj9X9WXUQulhvUKmkJBCbjgpKzGjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3180.namprd11.prod.outlook.com (2603:10b6:5:9::13) by
 DM6PR11MB3083.namprd11.prod.outlook.com (2603:10b6:5:65::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5250.18; Mon, 16 May 2022 08:02:37 +0000
Received: from DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b1fa:393c:9fb6:6871]) by DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b1fa:393c:9fb6:6871%5]) with mapi id 15.20.5250.018; Mon, 16 May 2022
 08:02:37 +0000
Message-ID: <b2afbb69-bbf7-d00d-34eb-d5d268e42ccc@intel.com>
Date: Mon, 16 May 2022 10:02:33 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.9.0
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20220513160641.3096487-1-andrzej.hajda@intel.com>
 <165254778115.14454.14533702386791964477@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <165254778115.14454.14533702386791964477@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM6P193CA0054.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:8e::31) To DM6PR11MB3180.namprd11.prod.outlook.com
 (2603:10b6:5:9::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9fdb36be-7bea-473e-4698-08da37127127
X-MS-TrafficTypeDiagnostic: DM6PR11MB3083:EE_
X-Microsoft-Antispam-PRVS: <DM6PR11MB3083B9D09C4EE66ECC26C859EBCF9@DM6PR11MB3083.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pB+ueH/MzzXh3CThWKVsRQplDnVsKX6K5axAJeaZd6N04+5AwcZObhYcMRt2t3VBcwn7xTHc4PqdHbEDQpKzDvdtHMB77+5qhHR5ly1b0zOMUBWVp1i7/G5XI/z8kUlYQ9AAPIm1aH3y2heHtYrwXzXC/+nNkqqQfswXn2VbZYLddcmEiPbloaol7yBitjIG7vMo1ouoaORyvHtQ8UTUUWy+noX5kjFOIOLpBvYbHnL4IXlgxSaCAc+X/yIaWmxY15OzJ2/pQzBbRmstk+Id/AAG3BqXhZ/3xNQsRdukSJva3c2Icx30xg4WUiOMtz70v3S2fxR9Taui6D4fDKz6SY0dQ3t9QjZeE4dMDUWsQHaiSUPTR9C4EHv+HYQb4gr7RzhcxKN5PQMSs1KVpnK8xsi8S/yIWz2HTjFNwtbipWxRHeqypL3UQS+H0Svp86VRhnQsJG3WJQ8SgYLeIKBLNfQwHmsMZznGiWRoGOBvH8VJI0Ig6R5QYerAqC8BKuYXlOypRjFfkc0dr+405jmA8qv4Xqjax/QxmxsDnihrjciIOENEMYLoKZn+B4v1OhMAHHLErmRf4JH8rLmrR7egRDWssO4o8d1ByC3hvDhVvo6pAF04LxjtmLY0x4/QknuE3KuWDjDz2Mpzr+u+GkZGlgV+mEHI9QyQ3UvMQsbQkHywZRS1axudAxj8msSYXCBnLt83I9JfnfW1UEK6V8jMwEGCXqspNZrlhWwlMGMdJGcE6P7LbmVL/lIUutZxdw4WOs1mIa9sffW+xpZ+0SQkHRXvxlPXWystk3SEvChNT/HHpyQ5NURpdb1GsRB0mKViKNhsZq54lqoXLj3ygCaIw4bqdKiXxvwDNMlZFgSwStg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(36756003)(6916009)(8936002)(31686004)(2616005)(83380400001)(186003)(86362001)(316002)(31696002)(6512007)(26005)(36916002)(38100700002)(66946007)(66476007)(6506007)(2906002)(6666004)(66556008)(53546011)(44832011)(82960400001)(5660300002)(508600001)(6486002)(966005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWx3RHlmU1JmU2FhaDVZYXhyRlhUVGlIMHNMdjY2UllLMFdBUHBCWW5yUEtB?=
 =?utf-8?B?Y3E0NmVpeFNEQ1piUUx3QmlNMTNzSWxaeU82bit5bEo3SVdoOFZBZ1ZNemRo?=
 =?utf-8?B?NkdRRmhUYUw1Q3lxbmJ2cnkxMU9QRUh3QVhRcWVtQk4vWTVjTXlpMStGZTBp?=
 =?utf-8?B?V25HUGxrTzBIUStSb1lGMVF0Y2NSN2ZYRkVRTmxQZjVzUm1jQnFDRlJLYUpG?=
 =?utf-8?B?VllKSDdscWRISGF2RUpUL3Q0TUYyTU9CQ2ZaRFhMWFZQLys4VzFyTndBSXVD?=
 =?utf-8?B?d3VpM0llM0JyZURydXZRbFVTclpSc05TODhTZmd0WU9zRTNEOFBCdXoxT0lo?=
 =?utf-8?B?SmxIMDZTMG5MV1JLbVRub1Zsb3ljcjBFSlc2cUhicUk2UjVnQ1c0WXI4VkxB?=
 =?utf-8?B?MW96cWRaWFhERTBMbTNLcFYrUHJNZFd6VUszd1BCWWE4S0dnRy9UWDVhUGda?=
 =?utf-8?B?ZTY2MnVzYTZoeWpQVU5yV2xsZCtpUnZ4OEswd0Jwc3dXUGQ5eGdkUVJKUHNT?=
 =?utf-8?B?M2t3dFNmcE1TNlpISTczNE4xLzZPZUFuRnR2VU1mZG1JVTNtRWpWNXkrckRu?=
 =?utf-8?B?WlVpcUN5Ry9mQTkvN1J0ek5KTVd3b0VDYkNqd0VyWU9DL1RPa1dhY3NrQ3FD?=
 =?utf-8?B?QnFEWTJEYnYzTnJ0bG1Xb3JHSHc4NW13M2JFZFBXUDlYeDYzQnZrMzBhd1B2?=
 =?utf-8?B?SndTcFhZL1orMWR2b01KY1daRUZ5YUR4bzNCd29DUkpTQlZwNXdwNEpMSDJD?=
 =?utf-8?B?WVZDNEk0VGhGMk9tb3RNNUlhQ0NjOWovd0dQQVVjbnRwK29GVjZYVE14ZlJ3?=
 =?utf-8?B?U09XT2NzU2IvbTE2WlpPR3RUZ1FmTlZITjRNbkZiZjRtQjluTnJPcFRxMVp1?=
 =?utf-8?B?MWhBNFJiVlJhL0t6SThUbUV2R0wxeDNnREx4OEtmQmVlODkvRlJyaG9HWGhV?=
 =?utf-8?B?cDdtRUpVSkZJbzBXaFFFSFE3bmhFWWtnTnZzNW92bzRHUFVlQmIzTlkza2t4?=
 =?utf-8?B?ZTZrOWNEV3EzdUo2ajAyZU5odUVMbHZPeUYzQi9DYVp2bGVsVW84Zmt6QytU?=
 =?utf-8?B?SGM2TXVvcDRzR1pack1EM3VPOWVycnhUNk1jOTIxS2lNUExFYm5wdkdBaTJE?=
 =?utf-8?B?N0VXTUVqc3dSVUUyUU9XSjRRWHN6UHNpNUY1QzJJTTF1NVZodk9zVTk4SlB1?=
 =?utf-8?B?TzV5dXBNUnVOZ2JzaUFyanJadkpZZ1J5UHRtUFNmZ0NNYmtUZHRGS2V3dkli?=
 =?utf-8?B?TXorOTNpWDdxTEhMSldxZFdsa1VNNjFGMytsaXpDaTJqZXJmSTNpWXlrMHdl?=
 =?utf-8?B?T0JWZUY4K3FKSENHTld3a2dTTkk2MXNXazd4TWZROFZ6dzBnRVNHOUpJeXU5?=
 =?utf-8?B?TkhIWlJUQ3k3WUhqWDM2YlR4YWxqRW1TTnhWRGNLUmZabnRyYkdtME82MFcz?=
 =?utf-8?B?L2J2ZHExOWNUZnE0SGdCUE9vSlV2dXBtdlZrOWo3ZXRkbnpNS1pxRmlIZENE?=
 =?utf-8?B?UlZJMVRJWTRwQ3NoYmV2M3NyNGhXMEFERjlZdXNMY1dPaVhiWldVeTNPVXl3?=
 =?utf-8?B?M1Q2V3RSdXV6NGhKcHBzRUpUb05lYWdsajJTU0hhSmtHMWF1eThKNmpXZUI3?=
 =?utf-8?B?c0dEN1MweDdtenZ2OFVickFkUkFtVjFIN1RGQ281UTBFMUFZY3YrYWl6MVh1?=
 =?utf-8?B?cXRnZDVSWlVNV0ZlYkV6Q0M3b2s4SC9oRWlZQ2c2NVdVcDFmVjB5ZStvUXZM?=
 =?utf-8?B?bUdlNEtSRm4rSGtTVVltOXNwc29Ua2MzeXhpYldtZndvc3dFVC9XNkE5RzV4?=
 =?utf-8?B?UmR0b21uWlFXZjdFWGhMVURiTG82aEZwSWRjbHNIRWowQml6Y3BvWWp3a3FZ?=
 =?utf-8?B?dDN6c1NkMVh1U0xVb0J4SFJHM3VlbnhBbUpmMjRWdTFuTVh0b3NNcENRbGgy?=
 =?utf-8?B?WVg1Z1dRWjNnQ25qZXBYVWNJTkFseDdERTVLZEJ0cFYxN0VxR2JIcUJxMEd4?=
 =?utf-8?B?RW43OHdUSmNnc1k3MHFvclVIbUhMT2dtUWE3L0NMYUhlUk9TZW94N21BeFFR?=
 =?utf-8?B?RjI0OFY4ckRJRWhJQWVTdS9jRkcwbEJsNlNRaWdISWtqR1pSTmpRa1Y2MHp2?=
 =?utf-8?B?S3RMZmR5dk1XdDIzVURjVTgzL2d0aFJHV2w0d2lnblFzWU9Wc3JUSUVWYTlW?=
 =?utf-8?B?cEQxQTVHeWZ4MWJZRUpZYTdjUnB5cXgwM0J1cTNaUWc5b0lkdXdhaHE2bjFv?=
 =?utf-8?B?UWxETDF0M1NlV0dPYlhvTEZFWXZ6QVd3d2VRS1dRZVU2cVpoUHpibmRsUUtI?=
 =?utf-8?B?OS9jcFVqcHpFT1ZBeVBPTGJrRjBoMGw0VjNwbHprK0NGQVREZHVBclZRY01N?=
 =?utf-8?Q?6vLSwv6OR9FRIEV8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fdb36be-7bea-473e-4698-08da37127127
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2022 08:02:37.6653 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HtWTSjO6NxhXoh1+Mio7v80vDIzIPDK+FE5kdUU6dlJktjh9OVnqHEL6C0X0NNE7F+gQUCOsIjHUXc7bezxGWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3083
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_disable_HPD_workers_before_display_driver_unre?=
 =?utf-8?q?gister_=28rev7=29?=
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



On 14.05.2022 19:03, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/display: disable HPD workers before display driver 
> unregister (rev7)
> *URL:* 	https://patchwork.freedesktop.org/series/103811/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v7/index.html
>
>
>   CI Bug Log - changes from CI_DRM_11653_full -> Patchwork_103811v7_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_103811v7_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_103811v7_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (13 -> 13)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_103811v7_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@i915_pm_rpm@system-suspend-modeset:
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11653/shard-apl7/igt@i915_pm_rpm@system-suspend-modeset.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v7/shard-apl7/igt@i915_pm_rpm@system-suspend-modeset.html>
>


This is unrelated - the patch changes only behavior on driver removal path.

Regards
Andrzej

