Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 536325ECF52
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 23:34:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E33110E151;
	Tue, 27 Sep 2022 21:33:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7573D10E139
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 21:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664314413; x=1695850413;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wUTlbGZtOa8OREFa5nEpBpeWdo5FGVRzzW40s6VooUI=;
 b=B3i3HkxlebEq56lRSjXwfRsby7qz4iiMgCcNBqSz8Z6z6pLnDZ8/qBpY
 FQznUJOvGnTrb/e/ODzkjvOEMfJsq21Vv/6Oss2oXBlk5YH+FUshg4W81
 aqw4ZQxoQY+C+KD7qjMfJpLaSoLNjfLzeADyF9SJuHYW6chgXccpWqZ++
 +KBdfJmmtHtMe3xfcNmW8avakWROu7e2amCMCu9neQPMTMaYAj+oph9y+
 iToasN/corWImrfbWSg15TzOd1Vxow/3+mPWWdgKBk4pi+keo0PYIEhbc
 afOi0pVF1l5jyj0e7lFkX/5zm7guadDf75i6XPeECNBcxNOF4UsJQIayM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="302347673"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="302347673"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 14:33:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="710717785"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="710717785"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Sep 2022 14:33:31 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 14:33:30 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 14:33:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 27 Sep 2022 14:33:30 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 27 Sep 2022 14:33:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oV3gFMvOuuHK0KvhfpayFRRPthfOSSAUf/HgdBOofNt+CxXEAvnXrj/kFL0TawmUFn23/qkmqPJFPuRVVcvAsCF4tUaVbHR7/ol0FyCnVf+txr55kENXMIXuTu5p4LtHCREgxwXs74sG6hLKbKz5BndaZW2i1R1tWagdYM9FsJLuAC3ZX9TKR2WUlCuptGI/L4cF60PPxxwVFJenL6+w/KihDEOSbseBmiDKJMzr4moAT91t4o3yga4u8WdLWX7lc3mumByQaN/W08Kt4Ro+nnKA9E7EpCMJiG6t+b+tLKa5oApuwEroCYKt4t1EmDwkYNHiUBi6T0hqMQ2/8Af3qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DByLn5g9yqPw1fwe/1pEN6ebXM6CD76/+hzjLybA+oo=;
 b=Off3/km/R0ufiXGk/KQX/qO/1Pzyqx/jfrzN6gSb/6kMBatn/GIkNZ59DXKuyA9zQ+GzXBjruTcOQo+cP4VYKPVECKXm+8AjH++YhNzphBOj5UDJx0T528SiXwSEdd4l+JDgA+Y2/UepCjuVrxAYV0N/aoGPNQsL9+/YRN5mLaLWu4f1VROERvh3ROW7KQg9fgxgLqQntM7ionftQ2d2PdNqqsw+jTEw7t4+FsSODcrypMmFrh1vrFFWlG5KMGM2YpRISi4p9iMND7pEClGe9Qld8KKIUPa/6Tslq+PCwySJrTAsdkhrOCKK61l4rpqiy2qKsW3TqOG6cSbJtnkxUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 SJ1PR11MB6081.namprd11.prod.outlook.com (2603:10b6:a03:48c::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.22; Tue, 27 Sep 2022 21:33:28 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::280f:75b5:17ad:1668]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::280f:75b5:17ad:1668%3]) with mapi id 15.20.5654.026; Tue, 27 Sep 2022
 21:33:27 +0000
Message-ID: <e650c472-8d9b-27b4-c4b6-5759297176c8@intel.com>
Date: Tue, 27 Sep 2022 14:33:25 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20220926215410.2268295-1-andrzej.hajda@intel.com>
 <YzIrUG8lrEsY9XOo@ashyti-mobl2.lan>
 <7039faf9-b2a1-9400-fdc7-f5dcd7a8dd9a@intel.com>
 <98c9c819-5606-5d93-8008-bcf0acba1898@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <98c9c819-5606-5d93-8008-bcf0acba1898@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY3PR05CA0007.namprd05.prod.outlook.com
 (2603:10b6:a03:254::12) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|SJ1PR11MB6081:EE_
X-MS-Office365-Filtering-Correlation-Id: 77b2ee85-1bee-452c-38dd-08daa0cfea47
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lHmxxNd3yaXvsl+MAgr6OXepX56VDh85QeaZ/lzakQMjvcWfJkUvWTb26sfW4U2mwty5jvgL7wPMFjETmJ2xlZpruhiav5HczfgB7vx7EOBBUOl9fB7ybGe3m5Vw5dJUdNHCHf8snnUeC3Ob6KTqNzMVA0yfgS9twXJ0KpWQd/7tj92+PYB9JYMAr94fWcKLvbP10MIPLRnmFN23qn55W0HHIQAEc8xhmgYX8vLjEJmAP66y0DlpUXNMLXo+kG8xkN7NbANS5Yo3sZvNU3xoP+71RywGpjzVLPRMTqXZDehBFbL6ashIO7UFsh3FEwU0mP53mHcPA8YUyL9VPD0Ei57DVzUCvyxhqfXY/4nbHAhzsiOdBQ59Qun8BUOEEu8U9TswMxXZU9mO2XPvi5sx6XLJOcqZh5Kpwvj+6R6HKsP27onDWqgeQMuy5bVmIb6AUTlVYVGDo7MGA5i1Eh9N2NE313Ibt5PtofILDuieZSjY8Gr0f5nTRXWrzlGGxKDuCzs1oaZKTTK6yG3wLfcHK63JEJq2mnHuxfiRZMCkAu7v9byDJF/oJKvb0JVUFoBpAPlfrCiswMK+HutKeO0887E/Jn0xzkQ+SeerFRfLmg+LY3jLyDSWebVYMA/+l+YMe5MDE09kzkrSmu0zoUiolA6XMeml6fqr4tIvduMpzqjfffVrfB0ZsbEDzvo5vmwbeyA/7Dl5ZQ77tLPA9QZCysRvvPAGtq+yeWF7YeVE5Ta0KLpFFFypn7LvSJp8VSjh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(39860400002)(396003)(346002)(136003)(451199015)(82960400001)(26005)(41300700001)(54906003)(6506007)(110136005)(478600001)(316002)(36756003)(966005)(6486002)(38100700002)(186003)(2616005)(86362001)(6512007)(31696002)(83380400001)(53546011)(31686004)(4326008)(5660300002)(2906002)(66946007)(8936002)(8676002)(66556008)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V3k0dGhSTWpUOUZYMHNWUGlLZHBCUEJxMDE5My9zdWc3WG1SZ3Z6YWNmMVJQ?=
 =?utf-8?B?Y0t6OG50a2o3TDNkR3hGSXJNUXdFdkJmVHJWZXJ4YitwdnVjQzZqTElreXps?=
 =?utf-8?B?aUhjWXlva0NFSlV4Z0tBUi9QeVJ6WjRqYVJsSWJJZEFvaVQyMlBseU1uSmtQ?=
 =?utf-8?B?RnhIWmJQWXZHUiswMjBLK3hWQlpFOHV4TG9TQ2JPZVA2dVdERFJPMTFURGtZ?=
 =?utf-8?B?Y1pzUlRKSWYxeVU0MERxZDBUeExKV3ZEUmx5a0l5Y01VTGlyTjBjajBHZHha?=
 =?utf-8?B?SnFnMlFQRWxhQlRITG94cWZzUURCc2NSSkhvbGVydUJtb3BNdVRuekhWVTd2?=
 =?utf-8?B?MVFoZm96MjdvWXJWSnA2d24zTlc1eStGUU5WNDBhWE5NWVgzNGMvRnVyemMy?=
 =?utf-8?B?UEFnWXdhRlhWOG9DcG9GOE5VR0o0dnlhRWJkN3ZwenMvTDViRnRhUktkRkMw?=
 =?utf-8?B?aGpxSGx6MHFteDZFNExYM3dKMGVtUmhkenJST3d6bkVleDV0dkV0NnFWM2hl?=
 =?utf-8?B?emNxb3EwMVNHR3pqdHdCZmw1RHpyczVyNGpWcDAzdVdJSW1YYS82UGRFUzJI?=
 =?utf-8?B?UDM0UWJMaXl6ZXI5VUdRMlJYOTdQVElKNThENVI5RUhmS2hlekVtaVZ4SEZ5?=
 =?utf-8?B?Rkh6WUxzRGVpUFFTL1NtR0lBTHp5by9VOXZNYlo4M0pCRGpyUEVTMGptWmo3?=
 =?utf-8?B?eldFaDRnT0xqTzMwSWZZV2JvNGNSQVdxZVZGYXc3TlpXVC9YVWgxQkdINnB3?=
 =?utf-8?B?RUVFV3pLUElhZ0VIRmlJYWhqWWI4UFRUaVRnQkJWVEhZMXJBblhYVUtyOVVj?=
 =?utf-8?B?OUFPYVpyTmdoRzVDZWhOOGZaakE5MXhUdmxEaUtkRmV1QWZxblBDVUNuajA5?=
 =?utf-8?B?d3RSdWpidEg2QXM3TEJnN0JKeVhoTitqVmhOZGloZzJzZHpOQ09VQ0hWeGhq?=
 =?utf-8?B?bjRuWk1iUS9hNnpaeHZ4d21OcE55ZnY4Si9mUVJVYmtlZHF1T3IxMVBWZ3dw?=
 =?utf-8?B?Y3dtNm1BdFpBUFBEalNNWXVkQ1lOQUk2YnZnamkyQmlIUlRhOEFaMVhla3E4?=
 =?utf-8?B?enlwc1NGcU1ad1FGRGttSGUxNGJqMkxpRUxCN0g2NWxBYVQrb0hVNzFsZTFw?=
 =?utf-8?B?eVAvWi85dVQrWFdBZ0NxbGZEQm9jRXlGZnNsaTIweU1JZVNPR1RwcGVxL25D?=
 =?utf-8?B?cWZtVzNIQXM3TEZ3enMvT1dXU2NLT01pVlhOckROellSNnZUZEhMWlFsdUFY?=
 =?utf-8?B?Q2tCK0JwaUEvTXZBd2JSSzZzMHlYMzBsRDVucHhZamcrSDFxcnZjc3RMMGtl?=
 =?utf-8?B?NHRYWHMrUXhmZ3ZwY2I1QkVlczU3UEpBQit0YzNkdDZWaW1PR1dlaXczaVpF?=
 =?utf-8?B?enBHWG92dk1JWmdyNENmWS9DMktFTUZOYVo0TjRETTB6OTB5UUVZaUU2V0xD?=
 =?utf-8?B?ak10eVRTQnRidThheDFhQlJSZ0EwaW1DQjFGeXBaWXArUWcxa2k2SHdsQmF4?=
 =?utf-8?B?Z0hEWGtZRDFPMHlERzJtMHRtTTFGZHJQdW0vM1pia2tod1pib01xNWJ6dUFK?=
 =?utf-8?B?bkVLdk9QT1NNekdWQ1FrcGJham1lVnBqUmFYWm5keEQ4WDNNWG1Td3E2RGlt?=
 =?utf-8?B?ZWVSSGx0dDlZM2xMRUJ5TStIK296ZUdTMDJOL05TenpxWGFvYTdnM29uNlZU?=
 =?utf-8?B?c095NmVUUS9uL2t0dDdsbDkvYlUxeUZ5bFZhdjZtOVVlUE1EUEVmTXAyRS9r?=
 =?utf-8?B?Yy85em1Kakx5NEFuY05tc0Nzd1FOSXd3K1g2MkNGV05zNEdWOXZkQ2JIMXRN?=
 =?utf-8?B?OENSdkkvZkxBNy9CSkM0VmxMdkJTR3pPOGZwNkZVQ2RoOTJ4MzlhN0h1bGg5?=
 =?utf-8?B?TU96WGF3azRxY3k5R0JVa011WDBlVTFzQnh4OGRZd2V2akYwS2h4eGVqL09u?=
 =?utf-8?B?VHRlZ3pKV2RMY2ZxSmtGR1RFK3NPakZoWEdXVWF0UXZQRWFSb1JTa25EVGNY?=
 =?utf-8?B?Q0Vlb0JYOHQvZ0VnaWRRRXZhZEhZY2tkYmhLbm1CeXUybXNyL0ZSMUNFZ29B?=
 =?utf-8?B?MXJjblpTUEdCRE9IMVp2SFYwZDgwalFpL0Foem9jTDd6dFZXVU1taEhYV0F3?=
 =?utf-8?B?dUdSbVlJNmk0dG1GdCtBK0ZFYVpWclMvejU4d1NkbGVCYVAxYjVzQU1IcVJ4?=
 =?utf-8?Q?l8vAvAbQNz5uJ1KbmFHpRV8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 77b2ee85-1bee-452c-38dd-08daa0cfea47
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2022 21:33:27.7275 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CICFmgFNqHfPpsqP3iasQK0jyaVYTquEbAuHmrrJWgBWaDxfQHvOjQ6HEnikbQQwHQVk1S42bt/zMp5CywSpRLONZuXNkT4Zzw8FCR+KaQM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6081
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



On 9/27/2022 3:14 AM, Andrzej Hajda wrote:
> On 27.09.2022 01:34, Ceraolo Spurio, Daniele wrote:
>>
>>
>> On 9/26/2022 3:44 PM, Andi Shyti wrote:
>>> Hi Andrzej,
>>>
>>> On Mon, Sep 26, 2022 at 11:54:09PM +0200, Andrzej Hajda wrote:
>>>> Capturing error state is time consuming (up to 350ms on DG2), so it 
>>>> should
>>>> be avoided if possible. Context reset triggered by context removal 
>>>> is a
>>>> good example.
>>>> With this patch multiple igt tests will not timeout and should run 
>>>> faster.
>>>>
>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1551
>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3952
>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5891
>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6268
>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6281
>>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>> fine for me:
>>>
>>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>>
>>> Just to be on the safe side, can we also have the ack from any of
>>> the GuC folks? Daniele, John?
>>>
>>> Andi
>>>
>>>
>>>> ---
>>>>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 3 ++-
>>>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>> index 22ba66e48a9b01..cb58029208afe1 100644
>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>> @@ -4425,7 +4425,8 @@ static void guc_handle_context_reset(struct 
>>>> intel_guc *guc,
>>>>       trace_intel_context_reset(ce);
>>>>       if (likely(!intel_context_is_banned(ce))) {
>>>> -        capture_error_state(guc, ce);
>>>> +        if (!intel_context_is_exiting(ce))
>>>> +            capture_error_state(guc, ce);
>>>>           guc_context_replay(ce);
>>
>> You definitely don't want to replay requests of a context that is 
>> going away.
>
> Without guc_context_replay I see timeouts. Probably because 
> guc_context_replay calls __guc_reset_context. I am not sure if there 
> is need to dig deeper, stay with my initial proposition, or sth like:
>
>     if (likely(!intel_context_is_banned(ce))) {
>         if (!intel_context_is_exiting(ce)) {
>             capture_error_state(guc, ce);
>             guc_context_replay(ce);
>         } else {
>             __guc_reset_context(ce, ce->engine->mask);
>         }
>     } else {
>
> The latter is also working.

This seems to be an issue with the context close path when hangcheck is 
disabled. In that case we don't call the revoke() helper, so we're not 
clearing the context state in the guc backend and therefore we require 
__guc_reset_context() in the reset handler to do so. I'd argue that the 
proper solution would be to ban the context on close in the hangcheck 
disabled scenario and not just rely on the pulse, which btw I'm not sure 
works with GuC submission with a preemptable context because the GUC 
will just schedule the context back in unless we send an H2G to 
explicitly disable it. Not sure why we're not banning right now though, 
so I'd prefer if someone knowledgeable could chime in in case there is a 
good reason for it.

Daniele

>
> Regards
> Andrzej
>
>
>>
>> This seems at least in part due to 
>> https://patchwork.freedesktop.org/patch/487531/, where we replaced 
>> the "context_ban" with "context_exiting". There are several places 
>> where we skipped operations if the context was banned (here included) 
>> which are now not covered anymore for exiting contexts. Maybe we need 
>> a new checker function to check both flags in places where we don't 
>> care why the context is being removed (ban vs exiting), just that it is?
>>
>> Daniele
>>
>>>>       } else {
>>>>           drm_info(&guc_to_gt(guc)->i915->drm,
>>>> -- 
>>>> 2.34.1
>>
>

