Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 340475F3A0D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 01:51:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0074E10E11D;
	Mon,  3 Oct 2022 23:51:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 198AD10E11A
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 23:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664841093; x=1696377093;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LwBG5wr2EzaGvfD5kWOeB4eXoKPFYn7xz5UVTiRnkzw=;
 b=XOAydc8Ptub2iEY2NabOqPsZP0xP1BHY1htSA/5JreWG3KEqN9ljrKOO
 Iw9uWpKH0cvVdhjilyBxZ1zun0ygl/gXB1/mZFEMaHj5Ub23Bb7NzdRgN
 yXub/G0JzmDlxeMmV5uXUV0tN0sOucocI3M9MGwZqAYAPeodZhjiGi0NS
 lzaiO0IA7fDF5B/cfdIl4jUoX9Opq+Pv09bmre1J5MG4duYnN/W7ur8Kx
 C+kGLVyOqoSx1IdFTfSEEFnUBBYmnK7cfCYYYLFN0HZ20qDCGBV7SqRNP
 uglljudSzuLZyKa8EWw2qI+eWvyN9XFn7ZUVd4l09tZTtxEzjfVpEs6kX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="282500280"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="282500280"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 16:51:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="686344138"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="686344138"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 03 Oct 2022 16:51:32 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 16:51:31 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 16:51:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 16:51:31 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 16:51:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gTqdLQP/H6f8hoHpEeHKp3ecBJnDgYls5u29ciMWgwECv/PPlsWPNlbwEVUF1IcEQmn54u2yw5e+F5h0RgLCOalo2ex6e9qg5KEHBPdEFzN8eqZHi57MbJAY4T6qa/b17Q2BNtt65aQE2jWNraiUWfbM8+xznjet1FVtojIW2l4HpYLgpt/t69IYE+txBXXtJH4fq3bqCEK2XnS0gf1sqkHg1uC3nwGucyyivxWPGi4oOZna/mK+3AvK84kix5poFwteQYHWjrW2SVUAXxu/X4kd5IzGwaU0PWnqhvweW3CQCCpDyMGz51nLD9QMRRzsuMcJT/pdahiw8mW/2ANuzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SCRaT3L6xlUCrB5tHYQzi/eHOO6UuIFZe4pKXEd/yXE=;
 b=BkSPV0XX1c14bkVGjCzx/0EaP6vkfL7eakEBpQDR2rqr149CqyJA4ANTM3Pa7Iksuq5AoBnosGbMLgwa+cXRYfRL/DMcwwgMJtVvxsayoc3pi7zvOaIc2POplz3zhTF0RTYkfp6YJjTqJdyY2IOXMV8pj+3DQxFtcvv7/lESIXfb2Nief9h8xMT5+B4DhumhcGEbgtaXmidTZSxZPBZq6Dbea91GsxSJdAXstIYPfpSFRv4miF2I8xxMk1DlCimbPd55B2oa5Ywj1lc/oMvoMvoHpNMq7vFA5rjgZwKdlJV7/NCarhvwHTCqGqKoAdFfsEFkd89hRl+SNlRKnZF9EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by IA0PR11MB7403.namprd11.prod.outlook.com (2603:10b6:208:431::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 3 Oct
 2022 23:51:29 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6%7]) with mapi id 15.20.5676.031; Mon, 3 Oct 2022
 23:51:29 +0000
Message-ID: <03452d47-a16e-fde3-3d6f-e7d98c6d2b2e@intel.com>
Date: Mon, 3 Oct 2022 16:51:26 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.2
Content-Language: en-GB
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220930010507.108296-1-alan.previn.teres.alexis@intel.com>
 <20220930010507.108296-2-alan.previn.teres.alexis@intel.com>
 <49be7acd-79b8-2937-96ec-5a9728006d76@intel.com>
 <acdf464bc515f0489c70c9282dcccce1cc2e85ca.camel@intel.com>
 <0dad721a-2308-588c-8b7d-8ac98d17f3dc@intel.com>
 <2cb443945f86c2bbcfef78ca19cc4a85fdae3666.camel@intel.com>
 <9703bd69-3b42-3e64-04e1-5b8fc6e9f367@intel.com>
 <27c162aadb79123fff5458dc1695c6026ea0c796.camel@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <27c162aadb79123fff5458dc1695c6026ea0c796.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR08CA0027.namprd08.prod.outlook.com
 (2603:10b6:a03:100::40) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|IA0PR11MB7403:EE_
X-MS-Office365-Filtering-Correlation-Id: 4cf51433-cc9f-422d-ec12-08daa59a30de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: O3cQScrQLNgrsenk7fBl0XgFPPz8y/Ne2Avd0jtfiLfoK8IwE5m5eQ+B+NRHCc21OBXxY38+Y4bjzsH39eEngkvlCdoMX9YKkHyV3BUdwiIHRPPCPbFqV1X/cn6qEkpT8ySVuaWN4bPTPWkOwZD2XYQlzYKq5ij5iT9vE9CR1Xk6VfxRgxiE4mifnyzEABR/f4mz6ZkGSK0/spGyxUTeHFkZk5Tqb0lZgxZZ7sBrH+lmpHBPUR12hxwd3TfRM7WWSfyfYSvH47nrrMKpuKa0zph64ikUXHaZMwFxQdv+lZSNFYoWSCdAyhkThoXtMkxlWAvPE2kerXcKkYOfVzr1z9Rtf3NPptZQWJCalLWNtuBH2PVnxGQd4lFIl3o809li8yXNVgNPpdel83NFdW79p6AtVJSPg864Q8N56SrL7MruefhGdF3BaQT72uNRltJ8Cn08gzYiq6e/uIbw5zwz0p4Zug2CJTdpidJlYjffi9j3m0MpfygGAZNZHFXP9enUj2aTcCVhyEwsinYIqSgkscLCdHg+c6pFlTzK/HvDvANJQs75jJu7zhlKgNbXXOglf9ILebOfWrtJU3QumVcOGcVSBDQF2lX84A9Twc+5Q7PSwrbBmNImuTo0qulf2+VuJQxbyU5cTm9LKnC33bJrLQ5Pdo77sbnVRuTrI+Lfs6arUSFs/vMvEY3FxUvWOgvtcZbsO0zvSknydhNGXlcUkahqX4k2/kF9SFPtxtUHCRUgfbIDfM6PFMSjUJZrxgzFy6ggpIVWAa7Xr/pS7I9hWJFSdmKh/qkPBxOrFCMW3Nk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(366004)(39860400002)(346002)(136003)(451199015)(82960400001)(86362001)(31696002)(38100700002)(31686004)(36756003)(186003)(26005)(6512007)(6506007)(41300700001)(478600001)(53546011)(6666004)(6486002)(2906002)(5660300002)(316002)(66946007)(83380400001)(8936002)(66556008)(66476007)(2616005)(110136005)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V3haOC9zY09GQmJCOUpqN2hnTmQ4cVVIUy92RGdRamR6cmM4blh4Znh5ektK?=
 =?utf-8?B?RjQzb2lITzhWQzRPdVFRbXVYQXpidUlseVE3c3JNeURHWGpURzBoU3I3YnB2?=
 =?utf-8?B?ZkZWZjk4K1krUXpLZGZmd2hPOVc4akpVZG04bEJZbGpBZkpLSDdtUkVndDV1?=
 =?utf-8?B?czhtU2NJSDNMSkFvbTA4M0dKenRwajRxV0NnS2ZTZW11SC9lekFNOXA5U1JJ?=
 =?utf-8?B?UWc5Qkcrbnp1VStueXdsQ0pLTVVvc29JQVFHUC9tWlUyc0hZeFRmMEZPZjVm?=
 =?utf-8?B?T1I3cVBBaGhLZnN1KzUrbitjbU03UEt3T2FvOTZvajFIWTZLMisyeGtrNU1Y?=
 =?utf-8?B?a2VBWlA5MWIwdm9jN2VLOVAyS3E3S3QydjJNWHpTbHcwb1VDTFV4cXZZMFIy?=
 =?utf-8?B?MXVXZDFlbjY1K085VUVoZExJZGtJd1pzM0lZdldZR0wveWlZbWo1YzlMN09F?=
 =?utf-8?B?U3VxcXBpR3lkQjUwMjdGTkI4VE9TL3RKYnozSU5QK01WTVBZbkhacGY3K21Y?=
 =?utf-8?B?N1RpTmpLTVVKZUEwcFAzeEpYU3NOOHhGeXd4Ylh2RFZXRmY4UktHY1pqMnh1?=
 =?utf-8?B?MXhkaVpzUVQyZGEwWndzOFQzcVZpNmt3cDJDaGFsZEdQT1BBL0RCUy9JOWVp?=
 =?utf-8?B?MGVQaS83WkxVTklXM2RPNnJvazNvelVFRUQ3ajNhelVONFVxZXg2NkQwWlhi?=
 =?utf-8?B?ZWJrem5NLzFUZVM2SDltVmhqMTFxRzdESkY3TEJNU3NRbFp0RU96WDNmeWpU?=
 =?utf-8?B?U0M0MTFQQ1lOd2cwNHNJMzEzNEY1L0ErcmFCT3BGRkczbXdGY2t1cEIwVEli?=
 =?utf-8?B?MHJYb1FPcS9iblJ5WEU2YUFLRjJpQzVFUFNURXpOSFBrMFc2NjhySG5KYjFx?=
 =?utf-8?B?cDBvYVAzRTdRUGJxR21NdDBRYTh5S3V0bVBFb25BNkxieDVZK3o5OWN2UlZK?=
 =?utf-8?B?ekRDbmU5L2x3cVNqWkt4bUgyYys3RUwzcGkwT21jWk5kU3NUdkxUQlY4VzFj?=
 =?utf-8?B?UlB3V3JWaHE2OW50ZDBDZ3h1ck9pUWhyNzIrWk8xWE5GUkxINEdZSFM4K0NC?=
 =?utf-8?B?Z2FSNWY0OGEwd0wyeHlZTC9IYnhhWEdMRzhjY3I0VGJqZWhsL1dJSk1qQkdx?=
 =?utf-8?B?R3psUkVLcCtxZ3dOY1E4a2Z5L2duZkdaMTNKaWZMWEhEVllyNk9lVGN5dWxj?=
 =?utf-8?B?WFR1bW9rdlFybkVCbTBDa0hWbm5iZlJaTnpvMUp6V2JuV1RQa2lpeDc3a0JM?=
 =?utf-8?B?Sm5GMSswcWNrWXdyM1RNS1VMbTVNK2kyV0NGejI5clUwL2NkK1V0TmdFTlRx?=
 =?utf-8?B?NVlidlY5ZjFXNUxFTElBRkJCc1JRSzBpRFkrZ3dUdHBkZDl5cFRibGZoT2c0?=
 =?utf-8?B?L0xiMFN4eWtaSU1Eb0dvSEZhL05vdVpkK2IvUU4yNjduOFRIV2c0NmNFRXk1?=
 =?utf-8?B?S2tnbmtxY3phNHlJS0dLYk13azNHNmtFOVgvRk9tYlRTSE5FNlpEVmR1M242?=
 =?utf-8?B?YVN0Ky9YTWsrL2xSTHRsaEM0S1hKeXdiZFg3eUJBemh5WGhUUU1adDZnMysy?=
 =?utf-8?B?QTZqR1dOUGJkZFdwTlEzMnlpS1NzcGVUQTlkMXVCd2p6N3Jlb0tVb3ZQNWFB?=
 =?utf-8?B?dVQ1Tzg1OUpILzV0RlZPeDQxSDRZb3hITUhHdCt0Q2xCa0pyaFlMVy9lazlG?=
 =?utf-8?B?Q3pOZGFqd3Q5TzRTL091UWM2WHlGL0IxT2IxQnJxSG9FZWE5MTczeVdTOUIy?=
 =?utf-8?B?RWVQUnpHbnF6OVcvdjlJOVhxREFZcDF2RjJvWm9neWV1dWlKdHpQdHFKNndI?=
 =?utf-8?B?N0piMVlYRFFIMXlKRUQrWit4M1ArVGxVZitheDVrS1ZRZTZFY2dObEtRTVRz?=
 =?utf-8?B?bUlLMml2S0hsVzBnWWxRMXpPbVdKTUtXdHhnOFNtZGFucGNkb1dKRVZZVmRV?=
 =?utf-8?B?ZmxCMklnMG4yWjFmNnhodzB6bzlVMlFWYmNYei96Qnk4d1RVelV4K3RtNnoz?=
 =?utf-8?B?enN5KzdVeTd2dEpLRE1KelVaZStwWEZ0NWM3MXNuZXcwMnkzWlBaOGlNNitZ?=
 =?utf-8?B?eW5jaGdHdlByb01uSjU1NEpRVFhTbkx5Zk8rV01pN3NIRHFTU1Q3bzdKQnNl?=
 =?utf-8?B?eTRFMGljcW9mdEZDN0VYUi9Ja0lTU2lOcVVrVVlHVElDTkRZUEIwSUZrS0ox?=
 =?utf-8?B?WlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cf51433-cc9f-422d-ec12-08daa59a30de
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2022 23:51:29.0746 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eMr4uTba9VEZkkVaEIj05pqkPw0UOdh/fxCmyYkW4L1nGoPelEhTQpXLS9JuRRo9j5HF8/i5rNnYyBfrEwnBELHWYl+323mksKB7XpqUI/M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7403
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Fix GuC error capture
 sizing estimation and reporting
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

On 10/3/2022 14:10, Teres Alexis, Alan Previn wrote:
> On Mon, 2022-10-03 at 12:47 -0700, Harrison, John C wrote:
>> On 10/3/2022 11:28, Teres Alexis, Alan Previn wrote:
>>> On Fri, 2022-09-30 at 15:35 -0700, Harrison, John C wrote:
>>>> On 9/30/2022 14:08, Teres Alexis, Alan Previn wrote:
>>>>> I disagree because its unlikely that all engines can reset all at once (we probably have bigger problems at the at
>>>>> point) and if they all occurred within the same G2H handler scheduled worker run, our current gpu_coredump framework
>>>>> would just discard the ones after the first one and so it wouldnt even matter if we did catch it.
>>>> So min_size is not actually the minimal size for a meaningful capture?
>>>> So what is? And remember that for compute class engines, there is
>>>> dependent engine reset. So a reset of CCS2 also means a reset of RCS,
>>>> CCS0, CCS1 and CCS3. So having at least four engines per capture is not
>>>> unreasonable.
>>>>
>>> Alan: min_size is a meaningful size for the worst case scenario of collecting the guc-report. However due to gpu-core-
>>> dump, its not meaningful in terms of reporting that information out to the user. Thats not a limitation of this
>>> subsystem.
>> I'm not following what you mean about gpu-core-dump. The point of the
>> warning is to let the user know that the interface they want to use
>> (error capture via sysfs) might not be complete in the majority of
>> cases. If there is some catastrophic worst case scenario that overflows
>> but 99% of instances are fine then that's what the drm_notice about
>> 'spare_size' is for. But if the 99% of instances of a capture are going
>> to overflow then that is what the drm_warn about 'min_size' should be for.
>>
>>>> It seems pointless to go through a lot of effort to calculate the
>>>> minimum and recommend sizes only to basically ignore them by just
>>>> whispering very, very quietly that there might be a problem.
>>>>
>>> Alan: I already responded that i will re-rev as per your recommendation and switch back to drm_notice.
>>>
>>>> It also
>>>> seems pointless to complain about a minimum size that actually isn't the
>>>> minimum size. That's sort of worse - now you are telling the user there
>>>> is a problem when really there isn't.
>>>>
>>> Alan: the min size is accurate - but whether we report to the use about them possibly facing a problem is where it gets
>>> a bit unclear because of the limitation in the gpu-core-dump framework. We could drop the message completely if you like
>>> - but then we'd have to remember to re-add it if we fix gpu-core-dump in future. For now, as i mentioned in the last
>> What limitation in the 'gpu-core-dump framework'? What is the fix required?
>>
> Unless it has changed since i last looked at it, gpu_coredump framework will store the first error-state captured and
> wait until the user extracts it via sysfs. Any other error-state capture that gets created before that prior one was
> cleared by the user gets dropped. I'm not sure if that limitation needs to be "fixed". I am not sure of its history -
> maybe it was designed that way for a reason. ATM I dont have the bandwidth to chase that history down.
That is by design. Generally speaking, you want to see the first error 
that occurred. If there were a bunch back to back then likely the first 
one is the real problem and the rest are either symptoms or repeat 
offences of the first.

Also, in the case where a user doesn't know what an error capture is but 
they are running (or developing) some app that keeps dying and produces 
core dumps, you can't just swallow all system memory in a linked list of 
error captures that won't ever be read out and freed up.

Hence the design is to save the first and hold on to it until read out. 
And if any further hangs happen before the current one is cleared, they 
are discarded as uninteresting if not plain old spam.

>
>>> reply, i have already changed it back to "notice" as per your last comment. Perhaps you should have looked at rev2 which
>>> was posted before your responses above. As mentioned in last reply, i disagreed but i am committing to your request
>>> which was fixed in rev2 as per your request.
>> The point of a code review is not "I say X so you must do X, immediately
>> post a new revision now". I asked some questions. I stated my opinion
>> about what the end user should see. If you think your implementation
>> already matches that or you disagree because you think I am basing my
>> comments on incorrect information, or even just that you disagree with
>> my reasoning, then you should not blindly post a new revision saying
>> "here are your changes, I don't like it because Y but just r-b it and
>> I'll merge". You should reply to the comments with your thoughts and
>> suggestions. Maybe the reviewer is wrong!
>>
> I think this comes down to preference as there is no clear rule about what is right vs what is wrong in this case:
>
> 	- we have a possible issue but its a corner case when all engine instances suffer a reset all at once.
> 	- in the event of that corner case occurring, the end-user could go back and increase the guc-log-capture-
> region size and thus the warning will go away and GuC will have space to report the error-state dump for all engine
> instances if they got reset all at once (within the same G2H IRQ event).
> 	- assuming the issue is reproducible, the user, now happy that the warning is resolved, reruns the workload.
> The
> user dumps the first error-state-capture via sysfs which only contains info for the first engine that was reset (as it
> appeared in the G2H-CTB). the user inspects the same sysfs and none of the other dmesg-reported engine-hang error-state-
> dumps seem to be made available in the sysfs after clearing that first one.
>
> so the preference here becomes "should we warn the user about this possible event of running out of guc-error-state
> capture region when resolving it still doesn't allow the user to get it anyway"... OR "should we just make a quiet debug
> message about it since an i915 developer knows that the gpu_coredump framework design can only ever store 1 error-state-
> capture-dump and throws the rest away until its cleared by the user via sysfs".
>
> My preference is the latter. However, just to be clear, with the fixed calculation, we'll probably never see the
> warning(or-debug) message with the HW that we have today and the foreseeable future.

The warning isn't meant to be for i915 developers who understand bizarre 
internal workings of the driver. The warning is meant to be for end 
users who might not be able to debug their applications.

Given that the error capture interface is fundamentally only really 
concerned about obtaining a single valid capture at a time. I would 
argue that supporting a dozen back-to-back captures is no more than a 
nice-to-have convenience for a very rare situation (such as the user has 
explicitly modified their kernel to save all the captures in a list). 
And that back-to-back scenario is the 'spare_size', not 'min_size' isn't 
it? So there is no need for a warning about that. A notice is fine but 
not a warning.

The thing that really, really, really matters to an end user is that the 
first capture of a session is complete and useful. So my view is that 
any warning message should be focused on that. Can we get one complete 
error capture for one complete set of engines? If not, that is something 
we should warn about. And that is what 'min_size' should be.

Note that 'one complete set of engines' really only means five on 
current hardware - RCS + CCS0-3 is the most that can reset at one time 
(due to dependent engine resets) given that GuC managed resets are 
context based and a context can only run on one engine. Although I think 
it is technically possible for more engines to be involved but that 
would also count as hard to hit a corner case. And given the small size 
involved, it might be simplest just to base min_size on all engines anyway.



>>>> IMHO, the min_size check should be meaningful and should be visible to
>>>> the user if it fails.
>>>>
>>>> Also, are we still hitting the minimum size failure message? Now that
>>>> the calculation has been fixed, what sizes does it come up with for min
>>>> and spare? Are they within the allocation now or not?
>>>>
>>> Yes - we are within the allocation with this patch (the fix of removing the redundant register-struct-size
>>> multiplication brought the number down significantly).
>> Bringing in comment from other thread:
>>   > Some context: with the calculation fix we are allocating 4MB but we
>> only need 78k as min-est.
>>
>> Wow! That is quite a big smaller. And much more plausible! So if
>> min_size is 78KB, what is spare_size now?
>>
> Around 230K. (the min_est was exactly 78504 bytes or 76.664Kb - that was based on a DG2 - i think it was a 384 - cant
> recall for sure)
Might be worth checking on PVC. That could be getting close to 1MB with 
all the extra blitter engines.

>
>> Sounds like we can drop it down to a 1MB allocation.
>>
> Okay - will do a 3rd rev with a 1MB change.
Don't start writing anything yet. Let's get to a final decision on the 
plan first.

>
>> And even if
>> min_size is not the absolute minimum but quite a bit more worst case
>> kind of size, it still seems reasonable to keep it as a warning rather
>> than a notice. Given that it is so much smaller than the allocation
>> size, if it does somehow overflow on some platform/configuration then
>> that sounds like something we should know about because it likely means
>> something is broken.
> Okay - this works fine too since we probably will likely never trigger that message until we have significantly more
> engine instances than todays hw.
See above about PVC.

John.


