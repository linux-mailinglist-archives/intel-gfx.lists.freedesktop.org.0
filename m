Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E586074587D
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jul 2023 11:35:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E780210E1EB;
	Mon,  3 Jul 2023 09:35:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93BE410E1EB
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jul 2023 09:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688376924; x=1719912924;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GzxLRh6iE1yTyAZjOb8JDWKbOtnn7wGRqKcGiyscPJ8=;
 b=UDJpUgdcF9y4x14k0vqz2tf9OMKhMzaCbYbJTIbXZrQ3UteaZv7qPMqH
 TwLXFRtdUbnrRykOGzGj2D/V6MLb9VPTqhnQwrSR88/rmhI6zVVRYEcXl
 vg3DyIu/WXJAm9A+YeUxjc+/tMrY6wQktyxT7xAf3IlDB7V2KVP1uZ8wv
 XKKg3FtGpEWoNR8mM9/S6pBn414o6osn5FyTIA/6PPTL4xQOiimamcKzO
 Q3PZ3jx8vaXEDw7E0Q0udaH7EfsFoA0Jg39g0K7pAYSHhMgEt3jv7bI7/
 vZ1hEY1g/nDOHmFUx93kwY8LCagJsM/LeVgjGt/We77QYSOJtKwqzG77y w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="362874739"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="362874739"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 02:35:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="721706821"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="721706821"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 03 Jul 2023 02:35:20 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 3 Jul 2023 02:35:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 3 Jul 2023 02:35:20 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 3 Jul 2023 02:35:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JJ/1AsjTmaTxqfcUIeckH7Kf5lHcPKbxq8MnyDpigGSfBZYHC/NwsyBGSrop1H2g2GjtORfiIh2i+Trr1y/WvMwZR4LT4LVTIbflLqPqeO0SsldVU59RFd1bZp3XuPg9qkrWS/Po7rkebRfeD+R6z366+sMY8+hM14wNIbwXWXI71aciS6UZ48W7SFgwEO2LBR/ywq4w6s/p8cBUEl/+dmAdmij+1tb80N1Kq+2PNAc1RDNTBZ3vFgUZxZvZhayS3vPt9Ps4NZmfUNdy89HoKL5WowfUDy9HEEgO4PHAfPah6Nl5S/xz2eXdT6mR8iEENwLFeKgPmNyly3U0zM4Otg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pGacJ9BLoXnCts0bb8EaCAlLnwVvKbsQGNJIeqJx5DA=;
 b=e7fRl3py7g1kUfXYO0IiwbEVZgOZFPSyDEbfRpXc84n8a5FCZjxL0ql7km6SuaGUq80zDEzjokgFPQYf8V+KcInzHZqTTTqS8UzO40v1vZ2zlm5jVu+UqQWdO0EZEnhchrHUFGMbdjOA8RuNwJ8Edwx6GR7SktDPp4YlAatH2ORoPaL28t2UVfwG+tsU4bBWvtTmVKeKWKx768J25bTltMMA+Xjw/rHk2ksuhLJYiNYHUXEN4tE5OInt+dttpivK3FTpH/BeHs2ODOdWTRVSuV1LGLOWGcXdWfnj8UDW6mIaDmSwkT52cMK2EuyGtlIhNGx1bSJLEa98/dh9+SU7UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB8057.namprd11.prod.outlook.com (2603:10b6:510:24c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Mon, 3 Jul
 2023 09:35:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a39f:b9ac:5ba1:e4e2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a39f:b9ac:5ba1:e4e2%7]) with mapi id 15.20.6544.024; Mon, 3 Jul 2023
 09:35:18 +0000
Message-ID: <c1d51d29-0d27-eb6f-5bac-e662a4ec6ad2@intel.com>
Date: Mon, 3 Jul 2023 15:05:03 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
References: <20230628100816.16528-1-stanislav.lisovskiy@intel.com>
 <d8d0502b-df19-7986-16cc-00051bee530a@intel.com> <ZKKL7caI1mOQbxQE@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZKKL7caI1mOQbxQE@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0026.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:25::31) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB8057:EE_
X-MS-Office365-Filtering-Correlation-Id: 1381a411-2a1f-4978-63ac-08db7ba8cfd3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /nfttVzCXlMCsvpb2sKg75tEq0q+Hu2a07x5lzqPtYigyq4ZjhNnlSYlS9dt9zwlMvDLmD4juciCIaB7rE+h/qD/Mkyl9DP+oX4VXC2Rz3aPwRuSioCrCq/rLlfMDGZ8wiHbxqHrTqqWVoDMz2NaDEE9V2QCD7zcm4hGbNMyBZnJFrkw0jC+xSyYlJ/DLbj34KgzoXJmJ0xqKC3sMAo1MGHtm/L7emJUsxxS+bHihZE5SScq4nF8mzM0Hi8WvaDgX2szE84wGZTNTz3e9bmJBYRD4u5qSi0gYWVSWgvkihLkelBU2cn9XUelnXrexoIheP0K+H1jfHBxGiKphAkUPFKDZvVDG4VJOilhgfmL7xxvzdR8rMLtHvC9OVDsoIcvnC2Qb/isKO9K4cIee+sDwyJ/TVAVQwXuyVGCL58jsc0/Kz0KbYW+weGK/uTSS/eZr/WCUKre7I98TiVKP8E07b/egbelmTaVh92SxbpqRavFpUOH3vkozC3cbmXcCcUKZ45p9DMqeWZTb1iktS0Hgu3/UoIVGrejSazYVgoEo8Eh/tbFr+RCQTcCGiA07XtrKbY3xz7yAi7ptspmSHkEX7/q3rMME5nCzHb6b5YXAKdn55A2L/ZF3pDQY0UTbRkiDbmTEdAmxOtSVPfiFrEvxA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(376002)(366004)(346002)(396003)(451199021)(6506007)(82960400001)(53546011)(55236004)(6512007)(316002)(66556008)(38100700002)(66476007)(66946007)(6636002)(4326008)(107886003)(2616005)(83380400001)(186003)(26005)(478600001)(37006003)(2906002)(31686004)(8676002)(8936002)(6862004)(36756003)(5660300002)(31696002)(6486002)(86362001)(6666004)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUwyckpncXlNOVZpMG9ybzVKdm1wazJqV2JKcGtheWNqd2lJWGJoak5veUVp?=
 =?utf-8?B?dkVQUEdKTnNxcHdPYUNHVXpvV3NXUnQxMmJ5Z0JjN2MweFArQXFDaFpjVFA5?=
 =?utf-8?B?a0pSenRYTGZWU2p5RUpzd1lFQUlaS3BLSTRjZTM1dXVhM3BnQzVOTm42Uzdq?=
 =?utf-8?B?UkdtS28vaE15eG5lbS92dThMRmtmbGEzZWhzMEw5WXFmMWxjNW1TdHNmRG9t?=
 =?utf-8?B?bTVTYXNIVmNHWnNESk9vQU1nVWMxd2Z6L0k5ZmlGUVkvZGdURmlUUFBDQXlo?=
 =?utf-8?B?RC9DMzU2aS84QTRzVWhac1hCcEVzTGpCYmlJaDluamZ4TGxQS0VsWG5ScWZS?=
 =?utf-8?B?NjVNVElsZ0JmeFVYVWJycXNBM3kzNUtjT3ZDaGFHd2JLMHN0Q3NmbExhWUd1?=
 =?utf-8?B?U013S0dTalB0VnAxcS9mVEI0Nkt6L3Rjem1TQzZtT002OVlFUHZvRGRpTUR1?=
 =?utf-8?B?VVM3ZW56RFZyNGRBR2JCK0d1b2w3Wml5YmJpeGQreVk1Yk94Q0s0ZzFYUlFj?=
 =?utf-8?B?ZFBrUGlEc0NtTTVpYTVGODd2dmhZMDg1d042aU1XQloyZlB2Tmd1SWZOZDhj?=
 =?utf-8?B?a21KQllUVzJZV2ZWNkQyVDREd3JSOU9scmhQZ0w3OE84ajVSWGtwMkRiYldO?=
 =?utf-8?B?YWNDMjJvbjRFdnY2KzlnRjJGSUp0QlNEV1lhUG1CZmE3YS9WNE8xc25rblhR?=
 =?utf-8?B?dnhuRW13QkRlK2JPaFVTMDJsbUY2R08rd3FEWEtjNVZRbXF3QzdISVhSZGxu?=
 =?utf-8?B?TGtLNHpDeHJzU0dNNmgzcjQ0YmR4ZHFHcUVNdnA4ZGJ3WXNsV1FMWXVwZkF5?=
 =?utf-8?B?c1AzMzRLKzltZ1gyZU1wU2F5TlVUL0IwTktScm9QdVVJbHlCOW56U2s5ak03?=
 =?utf-8?B?ODFiSWloYk1yeXJMOXAwYmZOM0pGa2doTDF1VzlKL0h5TFE3ZysvNW96MmZ1?=
 =?utf-8?B?T0hQTWNVeGFMQlN2dG1qcFR6N2wwVGFuQmV0NU5FMEVSUnZ1RjZXblp0NWZ5?=
 =?utf-8?B?NCtTbC9pM2hSbG9seW10VWl2RFB1STAvMEpzOVRVVDFYTXh3dGxpbk5rcnBK?=
 =?utf-8?B?TWNXZjRNZ2hJRmZPSXhjQzFKWUQ5U2NoUmd0eXA1TmRIajdLUDY5azhBS3lS?=
 =?utf-8?B?Nkpja3prODBleTJMb0FoNzFsdUtkeUIwQXZQeEZieUZQUGdRMmIydmVjUEhw?=
 =?utf-8?B?UWdBU3l2eEQ5N0RndUtOMWQ3N2duWllhR2FuVHc4MVpPWnE5Mm5uWHJ5SnAv?=
 =?utf-8?B?bER0cWpwL2NabXdaUjlQdlg3Z3gyNXl0azc0QzJuSGY0MENueGpEb2xpY1JN?=
 =?utf-8?B?VlFnbjhqdUVrRFlkK29oUWxmbEZOV0QzamNhbTA1aDJGMHF0Wm1KeXpmVFkv?=
 =?utf-8?B?K1hkMFMwN2FLWVM0RytWNHRrOUE0OTREWC9BRjJhNjVxaWkwZUxtUUNPN0dp?=
 =?utf-8?B?N2x2cFV3L0hxYllPd3VwK3FZQWNwWFlYUE5nbzQ5Uk1qTTRUenZGbmFFK0V0?=
 =?utf-8?B?a3FyazB0VlkrZFNSK2ZsTHkrRDREaCttNUgvRFpzNWVGU0FMdGpiZjRnNFBm?=
 =?utf-8?B?RnBUSmlUekUwbUpmQkVsU24wVlRob0piS1VFV2NQdSs0Z0lQME9hOFlVSUxS?=
 =?utf-8?B?TEhlajdPazAxRSt5QmJVUmtNWENWaTJ6cnFROHFKcHlqNGpIMUpwMmViZHBm?=
 =?utf-8?B?R3kzMHF1ekVlb3pybjdyVFJxeEc0WnZoRTl1Q1NUYTFrSWZFdVNEeUZWcUx2?=
 =?utf-8?B?clpUM1VBY3Y5Q2VZMFpDcERQRGN5RlZWYS9KWDZJaElyTFJjT3QzMnk4VDFQ?=
 =?utf-8?B?UVpQR0JndGVBaTlPS2FmbUdZUG1ZRXliUzhGdC9XeXZPVlZ4SVN5YWlHTVh1?=
 =?utf-8?B?djBhT2RoUVhaSnRxalFxVjVySXd2TlpoL2luNllhd0tDR0FBS0xBZ1k1cThG?=
 =?utf-8?B?UDZPUVI2NVM1M1B0cnJjQWtId2lwaTVMTDBBYmRxWlBjWGtBN25ENGZZbjFO?=
 =?utf-8?B?NnJLb0MvZkxUTjFTY3c5TGxpdGF6UjN4dlljZWZyZDZiMHdvT0IxVlZtVlRt?=
 =?utf-8?B?alN1OG1SZEMyQUNEU1k1QzZmWkZmcHVVdTJGbEdUbnVvLyt0SERYcC9iTHY1?=
 =?utf-8?B?c3hncldHRGdyY0ZwZzhjbVdYdWlCRllRR3M3bHQ1eXZIMVdxVW5TQ1RzazlQ?=
 =?utf-8?B?bmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1381a411-2a1f-4978-63ac-08db7ba8cfd3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2023 09:35:18.0819 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e3uA4r+Dr4o5BdrSohY24Wb2+bG/w170sK2pgZgkkkZXDkYJBsGHferau99PiQHrBCxxzeX5YwYUJ03YhaBdZQrSpnAjO1wChu5baQmhvkE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8057
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't rely that 2 VDSC engines
 are always enough for pixel rate
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/3/2023 2:20 PM, Lisovskiy, Stanislav wrote:
> On Mon, Jul 03, 2023 at 10:23:00AM +0530, Nautiyal, Ankit K wrote:
>> On 6/28/2023 3:38 PM, Stanislav Lisovskiy wrote:
>>> We are currently having FIFO underruns happening for kms_dsc test case,
>>> problem is that, we check if curreny cdclk is >= pixel rate only if
>>> there is a single VDSC engine enabled(i.e dsc_split=false) however if
>>> we happen to have 2 VDSC engines enabled, we just kinda rely that this
>>> would be automatically enough.
>>> However pixel rate can be even >= than VDSC clock(cdclk) * 2, so in that
>>> case even with 2 VDSC engines enabled, we still need to tweak it up.
>>> So lets compare pixel rate with cdclk * slice count(VDSC engine count) and
>> Is it not that we use slice count for the number of DSC slices in which the
>> horizontal scanline count is divided. So this can be 1,2, 4.
>>
>> Whereas VDSC engine count is the number of VDSC engines the stream is
>> splitted.
>>
>> IIUC for a case where number of horizontal DSC slices is 4 and we use 2 VDSC
>> engines, each VDSC engine will get two slices and slice width will be
>> HACTIVE/4.
>>
>> Perhaps what we want to do is to compare pixel rate with cdclk * (number of
>> vdsc engine count = dsc_split ? 2 : 1)
> Yes, we of course need amount of DSC engines here, however I was wondering is there
> any other way to get amount of VDSC engines used more precisely, except just assuming
> "2" if dsc_split is set to true?
>
> As I understand amount of slices will always be >= amount of VDSC engines, however of course
> if we will have 2 slices for each VDSC engines - that would be too optimistic.
> However I just really don't want to hardcode "2" here.
> Need to check if there is any other way..

Hmm right there is no exact way. DSS_CTL2 defines Left and right vdsc 
branch as of now and dsc_split is true if right VDSC engine also gets used.

Perhaps dsc_split can be defined as flag, each bit representing a VDSC 
engine?

Regards,

Ankit


>
> Stan
>
>> Regards,
>>
>> Ankit
>>
>>
>>> check if it still requires bumping up.
>>> Previously we had to bump up CDCLK many times for similar reasons.
>>>
>>> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_cdclk.c | 9 +++++++--
>>>    1 file changed, 7 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
>>> index 4207863b7b2a..5880dcb11588 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>>> @@ -2607,9 +2607,14 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
>>>    	 * When we decide to use only one VDSC engine, since
>>>    	 * each VDSC operates with 1 ppc throughput, pixel clock
>>>    	 * cannot be higher than the VDSC clock (cdclk)
>>> +	 * If there 2 VDSC engines, then pixel clock can't be higher than
>>> +	 * VDSC clock(cdclk) * 2. However even that can still be not enough.
>>> +	 * Slice count reflects amount of VDSC engines,
>>> +	 * so lets use that to determine, if need still need to tweak CDCLK higher.
>>>    	 */
>>> -	if (crtc_state->dsc.compression_enable && !crtc_state->dsc.dsc_split)
>>> -		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
>>> +	if (crtc_state->dsc.compression_enable)
>>> +		min_cdclk = max_t(int, min_cdclk * crtc_state->dsc.slice_count,
>>> +			          crtc_state->pixel_rate);
>>>    	/*
>>>    	 * HACK. Currently for TGL/DG2 platforms we calculate
