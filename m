Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFAC4ECC5A
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 20:36:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CECDD10E767;
	Wed, 30 Mar 2022 18:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 039A910E767
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 18:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648665392; x=1680201392;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jilLkcXqbUlm+J2jpXymqt5E92FWl14/YnrRjBMqun0=;
 b=UZBGDJKD1BJGQBziMBks3kEokenaKZIRMZdbvI0SmFAbg2Kq5Sj/QJ7c
 N41Hg+cw2gK0sEoxDFUePY6DqWUkQ7bGoHrLEYflREOmjXcTjISp8y7WE
 1kcsZRcxqpn6gMCHs1IjSrVLcLeJqxmCz+fHI17tb/wqUIGQ2k2Y3kbVD
 1Iz7Z9SbCTYTu+IXE/lTFSs7CcEnmYxSlPj/iQcYH4hT6natgCQhMnfOa
 tRYKaOnO54a3wPtYWuz24y5P0OocH9NqjV9TxkWTmmwJSl2A6sUXEHxzN
 N9V2ikc5RGezQVQX/wxvff38Y6eQEdb5CJ3j/CGh6wICXNsMIwNSX8lU8 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259800687"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="259800687"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 11:36:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="522011522"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 30 Mar 2022 11:36:07 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 30 Mar 2022 11:36:06 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 30 Mar 2022 11:36:06 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 30 Mar 2022 11:36:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Aoiaw8Uzqj5Ghy3rVg49vu8347agokDwdzLnolQbOCoWvvr1SIoVvpEVNB9afz1+b1vFMLWL13yzAXVMNSEw7X49vzRB4JWJuwds8mabEq4BOmnew7vM5UpO+mEHLtBqlCMQuhDaY1F2Imns1wjKZW7hZ1auO/IGsINHhKUMY9vwU3Lf2yaCs2z2lZ9U2O5O0R5uPA6kBTKrqaqYPaVTsGOfxFaGf9bzcYqFKbwgTjAEpwNkWtY9qfcPzdWcQA7fwb3BSiZM2JlVt2V0h1dQ5uyBeQiL4pcX90P3GW14AIGve7YqvzxAVUsg/lAaQ3CIXVxpmjWsFHSbCayxvhwooA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jilLkcXqbUlm+J2jpXymqt5E92FWl14/YnrRjBMqun0=;
 b=IUK0kVkilGDkPKAiIrlcVoLBmgEybnJdNwmO/1+YCVjF3Gx2hkly/UK62U0GawMD0yhMY2flV+dvYAPfvKr9AV4hF1dhvWHLgbKv2sIvru5bYSr8xWITs18iDvUY3PfO1K8B8cspSX/6DizVK+KwYJ+iqWnVSJ9q6VrIccjN4rg1ivYTYoyzg9CbXP8E1KYACPN8cp9xegQAdrNsj+DarN4Jag0Z9zPuwyrzmcQCgSBMFlirTW/DefZstX8Uk4dzOv5EViW/0C/EV7ayuNGaoYFOILlCMCfVd13FzyIKDcJlftv25fBti2kuuvtoUtsq2feeP8QfCOAk0foPgwSS9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2936.namprd11.prod.outlook.com (2603:10b6:a03:8c::17)
 by CO1PR11MB4978.namprd11.prod.outlook.com (2603:10b6:303:91::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.20; Wed, 30 Mar
 2022 18:36:04 +0000
Received: from BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::5dae:3976:a7b2:8cd2]) by BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::5dae:3976:a7b2:8cd2%4]) with mapi id 15.20.5102.022; Wed, 30 Mar 2022
 18:36:04 +0000
Message-ID: <039c4b34-cde7-3898-9ccd-a37773ba4b4f@intel.com>
Date: Wed, 30 Mar 2022 11:36:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220329235830.1025100-1-casey.g.bowman@intel.com>
 <20220329235830.1025100-2-casey.g.bowman@intel.com>
 <b468e1b1-0d7e-6384-77db-b0d1519539c4@linux.intel.com>
 <dc652e22-913e-3a18-8062-202629c54b33@intel.com> <878rsrbbf6.fsf@intel.com>
From: Casey Bowman <casey.g.bowman@intel.com>
In-Reply-To: <878rsrbbf6.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0118.namprd03.prod.outlook.com
 (2603:10b6:303:b7::33) To BYAPR11MB2936.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6e174a99-ee6a-4f5d-a21c-08da127c259c
X-MS-TrafficTypeDiagnostic: CO1PR11MB4978:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <CO1PR11MB4978C3D83E1DD6C9C46CF173DD1F9@CO1PR11MB4978.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3WkUtbpqJqS93Me5gmR+qM0ATcp7iumZvu9EOFaynQVDR+K0YjSOaEfIGmQsJZdLJQJk0Uns2Ov53R5TRLEUPDaVM/LtdxZMeDP/PDmBwSdZcg+8IvWV/E3khqp+wlExjIvf5EXHvdElFRTwHumiPuAkzjPPSnS+dv7O/jApDQayvDlIeCIJ44DSsXsanY25ChDVm2W42O02FZSJvtyuwM5s7D2kxRn2MI3IbMCFEvvXxbl21tJLl5mahsy4kTVUKUHQyx+xV9+2jE+dRT3lHytCtDJJ8bBtpwF/YquDwTTNfiAnlXF6kj6TNNefZezIofjEkD2AgONzD8tjAgp2WdsrMWsdAbC7HFB6YJeQFH0ab7Z9zhI5OuLwdMy6jyRdZbx/BJ4BLrjyF59TeKTpaC9TKGzHK8kpMuPxDq70di8iV23adc5F+hJEXgJoW2iLwdupp08GolnF0o6MVORM4QzyFWOTAkdKEoG24euQdNw41isYbRgKaYAB718io7PCY4xXzQ2RsUi74/mg6IKqUVyq6slQvkgIrw74y/s3yiMfVvFI9pJqoBaNmND1v+ggKv92AkuXc/DP2wDW8j8CxiIeW2gOTiiNyCPOX4KWlkLCMtbjpf6AImHdi+vVZoMPY8TmnOQ0WAKsw0H6O3+bjU6XK+KE9VMGvYbJagt43RDuk13mGtORydS+q/UIbhRlaGpWdrQskaB6KyoKQGmoR6cdtNDx6asE9ks503IY4+cyuiuqPfFFYjyEr4E8YloG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2936.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(2906002)(36756003)(38100700002)(82960400001)(31686004)(8936002)(31696002)(8676002)(4326008)(86362001)(186003)(2616005)(110136005)(26005)(66556008)(66946007)(66476007)(53546011)(6666004)(508600001)(316002)(6512007)(6486002)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S3A3WnFWc2NKQVNZSVV5VzBqbHFnbjROT1QzRmFUSkwzbjF2Ry8ya3orbXVo?=
 =?utf-8?B?d0hFRGM5d3AyZmtZNnhKd29aVm9aaFU0bHJDVER5eUllWUlWMk1rQnREckpG?=
 =?utf-8?B?VThpcUt6T0pCSlZrSlNFaUF0QzZxeDZhOVhPVGo2NHJkZDJzSlJiZWtjcUFL?=
 =?utf-8?B?SGlxTSt0bkpObGZXdmFtZDJOU0pxdGxGN25nS0d5VGk0V212Yk41WWFsZ0JE?=
 =?utf-8?B?bE45dzFQVDBjV3BHcmN5SmFKUnJQY1ZPYlNleHVjVkx2bTQzT25Eb0llTHRw?=
 =?utf-8?B?SE1CNnMxTWI0clFGWlVka1ErSEFMZi8wTFFYK0tXYVEvZU52TUcwSUxiU1R2?=
 =?utf-8?B?SUZndC9WSklCN3FHeVFRTXhMdGJOSWlIWWlPcmlKR0NpRjArelQwZjRyWmVw?=
 =?utf-8?B?V1M3TnR5Y2FFZ0NhZDFBanhEc2dhSnJlMm93Tko2NzV0cnY1VERUMzk1MXo3?=
 =?utf-8?B?TXYvVjg2eXhjUXBxTlg5SnhHNFpEK0hQZFpjQ3pLTjcrRDJIOTJlSXdzanVW?=
 =?utf-8?B?Z0tRR042ckh1K204aWE5dWJMdWxMdHVIY0tXSDNrOWgvczhMTmU2WVdNRmtL?=
 =?utf-8?B?amJrTTNMSG9qUVJQUnFTMCtUSHhvSWliN0Rqd3AvL2pmekNyMW13WEloT2Mr?=
 =?utf-8?B?M2Nic3o4L2lpZG45T2EyVlpTMFBUek15bUJnL3VBRFkwN3gzTEh4S3JDcTU1?=
 =?utf-8?B?QklGN2FzTDROU3V2dWhiSmxFeFJtUkxMMkpkK1hTanJRRFMvYktxQ3MxT1g0?=
 =?utf-8?B?cS9pektRTGV1SU1MczRJTS8vUmdCYUEzUlVUNkpQVmthSkFoSkQrN2ZENndq?=
 =?utf-8?B?N3lENEZUZER0YjNKMUZaYmVQYkxMME1USVVUdXQvZlRDSUdkbXJhMUd3Q0Rx?=
 =?utf-8?B?V0dRaG4vazdaNlUrbGttajhCS2w2bTRhbTI5a0dZd0pBeGk1L1p4cVBDVy9m?=
 =?utf-8?B?R1R4WjNEZnhveFU0SWs1UFdEZW1yMUJjRjdYQVdXaUZ4ZjBIR3g0eWx0RjhF?=
 =?utf-8?B?UEhEaEFiZXNlTUxLUVlkakU4WDhpSHJCZHIyMGpBK2hNZlZiS1ZpL1RoYjN6?=
 =?utf-8?B?TUcrRXdqRGFNNWp1WDhtbFFKdExGU282TURyL2gzd1hyaStCandGTDVGdWFE?=
 =?utf-8?B?dmM1RVZmZWVuR1IxZThaWkY3bG51bnczQXJwZU9GdDZ1ZUNzejM1ZjdZL200?=
 =?utf-8?B?ZitDMEJxblNPU0d6dzBESnZmVjBZZUJQcUhnZGRiUFJPWjdJT2E4Ym5aM0Fk?=
 =?utf-8?B?aHZJNGxkQ3ZwVkcxaUV3dzRzYUhneEkwWGNiVGVqQmE3bWg1U2dhQ1hQMERU?=
 =?utf-8?B?TVBlYUloU0xBQzcrNEJ1M1VMM285cUtlazBQOGlESU1PU0RGNklKOVVQUVdO?=
 =?utf-8?B?cjNsT2E2MmxxOHZMSGVoSDNyRWptUkdZbkx4RTFTNDhGbFVMc2dLUGV3OThZ?=
 =?utf-8?B?ZU1md1laZXg4QlFNWm5qMkhxVitDNjNMSHpRS0kvN2U0aVdjbUQ4dHVQOHJO?=
 =?utf-8?B?NDErdWZzYXFOZkNaWiszRXM2TlZrR2VmdmJjUnlTakpkaDVsNkJVSzhrRklk?=
 =?utf-8?B?a2ZBRWswZnBuNWdzRGhPdWN1TmNTcHY1SmRjSHVaMEFndzRXaTBjSTFMd0lv?=
 =?utf-8?B?OTBCQms2R3lkUFZsaHdSRER4Q09nNzcrOXZkV1FSRXdJSGFRRlhERldYWU5v?=
 =?utf-8?B?Y0JkWnpZUUZxRHVOeFVMZCsvV0hrcnhlNFVwcW40TjRVbU1YT3JEK25zeXho?=
 =?utf-8?B?MWhnb2t4b3Z3cU93SE0veTg3VGdDaTRQaHQrbzVSeC9vOG1jNEZxWnpVR29q?=
 =?utf-8?B?YnkwT0F3QWg3MWJxVmVnU0RIdHB2NlBYVm5VOGlicUhhZjY2S2FwaHRuRWZU?=
 =?utf-8?B?cFNqdVdMK2djazlLZS92SHBsYkZVb000TEJUcEdTb3Q5V2ZmaTJqUG16cFJa?=
 =?utf-8?B?OXgyMUxTN0FCc2hwZXc1NlZOcFJpZUlnZmlJcHV2dUk1NmVTbmM1RkhDY0xB?=
 =?utf-8?B?Uk5SY0psYjRwSk5pbCtrZkt5WHlROEJOazk3R0NDSkI3RjRKVUo1ODFwWE9i?=
 =?utf-8?B?OVpnZExzQzluSDVpNGFVL1lmalppSVlJQVY5Q3NWRU90MEdHU0ZHb0hWQVRS?=
 =?utf-8?B?bkhNQXRJZWttWWVHNTlRZ2pOK05xR1lwYmV5MWVtVHdtWmI1ZVRQR0ZwaTlZ?=
 =?utf-8?B?MHV1aUhiMGl0ZDNyY05TbXo5ZlVKUnVmOVA2VldxVVdsKzFrbTYrQkR6UDdY?=
 =?utf-8?B?RjVsUnJKYVhBVzBvZ2NyVzQwaytXTlBuVzZnYVR5M1NuV01CM01EdGprK0lJ?=
 =?utf-8?B?UXN3Wi9PNG11RXMxMkppT0VveGR0YThOQ2Jsa1BUeXFBZ0NlUUIvQVlnRmpo?=
 =?utf-8?Q?vchjPxpZlV8UbFog=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e174a99-ee6a-4f5d-a21c-08da127c259c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2936.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2022 18:36:04.3863 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pyf7MEowqUJO0BOtnz2yK20ya3PWRNJOT2kg1UcASdVXWbdu4kSQVOy12lgsRfmRKqZqZdbK3RPyKrGVkTbUKA2lpI7vBgIMwRMsEKNdReU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4978
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/gt: Split intel-gtt
 functions by arch
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
Cc: thomas.hellstrom@linux.intel.com, lucas.demarchi@intel.com,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 3/30/22 10:25, Jani Nikula wrote:
> On Wed, 30 Mar 2022, Casey Bowman <casey.g.bowman@intel.com> wrote:
>> On 3/30/22 02:55, Tvrtko Ursulin wrote:
>>> I mean I could suggest to do something about the incosistency of:
>>>
>>> static inline void intel_gt_gmch_gen5_chipset_flush(struct intel_gt *gt)
>>>
>>> vs:
>>>
>>> static inline int intel_gt_gmch_gen5_probe(struct i915_ggtt *ggtt)
>>>
>>> Since I value more for function name to tell me on what it operates
>>> instead where it is placed. So I'd personally rename the second class
>>> to i915_ggtt. It would also be consistent with other exported
>>> functions which take struct i915_ggtt like i915_ggtt_enable_guc,
>>> i915_ggtt_resume and so. But opinions will differ so I can live with
>>> it as is as well.
>>>
>> @Jani/Lucas, do you guys have any opinion on changing the prefix to a
>> functionality-based name over location-based?
>>
>> If we have any standard we're trying to adhere to here, I can change it
>> for the standard.
>> I'd like to make everyone happy, if possible. :P
> For display code I'm pretty strongly in favour of file name based symbol
> prefixes. And basically a file should be a collection of related
> functionality around a theme, so in that sense it's not merely location
> based. Indeed the file name should be functionality based!
>
> Also for display code we tend to have tons of functions that take
> similar first (context) parameters, everywhere, and we also change the
> parameters being passed while refactoring. It would be counter
> productive to name the functions based on the first parameter.
>
> Random example, display/intel_dp.h, it's all about display port, almost
> all functions are named intel_dp_*, but if they were named by first
> parameter, we'd have intel_dp, intel_encoder, intel_atomic_state,
> drm_i915_private, intel_crtc_state, intel_digital_port, etc. It's the
> intel_dp that best describes them as a group, so that's in the file and
> function names.
>
> Now, I'm not going to put my foot down on gem or gt stuff, but I
> *personally* find the logic there confusing.
>
>
> BR,
> Jani.
>
>
Ok, thank you for your perspectives!

Regards,
Casey
