Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB4C648EBD
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Dec 2022 14:01:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3C2E10E05B;
	Sat, 10 Dec 2022 13:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DE5310E05B
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Dec 2022 13:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670677276; x=1702213276;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pyz1xkqinxV9Gpku6ovHNpENCpjjTo0LXsy/vPFPgs0=;
 b=B/IgfkyHxsRMz04QEkdr+VCE5wTztnmdfTTPR0MczFd54L+/6uBclC8M
 m/JTFMBAabiJJ6MSNda7kxJ94qiScb6+VBM4DqI6KKufl2r4+B0eYN8tV
 5OICXNUwNrf/B8xkMeZBpgX30PKLv3Q9f4ARuuIpcu8D+uSD7wOBIbIM3
 6jAZlHlAPQEE9Eqhv/5BVyw3yr7q8Tne5MoRmclf0504hkDaCvBJ3r6ly
 nJ66KGWEv4BEkHbz47hVmmOff9DA4zOlu9CulxUOi88fSWbLhvI2QMG+/
 HFbaLf/8Sko26qKSqTGWFd+6JX8/uLAAtNGmbTia65g5/QLm0ylEiFJIY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="319480536"
X-IronPort-AV: E=Sophos;i="5.96,234,1665471600"; d="scan'208";a="319480536"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2022 05:01:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="789999339"
X-IronPort-AV: E=Sophos;i="5.96,234,1665471600"; d="scan'208";a="789999339"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 10 Dec 2022 05:01:15 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sat, 10 Dec 2022 05:01:15 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sat, 10 Dec 2022 05:01:13 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sat, 10 Dec 2022 05:01:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RHJHKDV39qJx0q9nOUPW3WnWrYTErbQC9QQJRX+Cx7PVlvjaMF6nbLEdnZpasLErs+6rY5p307w7FM8tkqzrHAcR4NGU2QgTP5zsMQJEt+gjvRAX0CmVxTV+Z7ivLg86R5r8Ys1NeYK8654hXQ6IrEGiPckCYiN+Xc+NQKLx2ZPAXpqKy/jA4oZPlPN+18wO5BxNGRKendTQ4PeOE6e23JT7xX+8Htm718gyu4UmOODgpBvbe5rjHkU0c9wYNU0WujQK6aXHAqZK5TP83XUnHi38nJkUwze/BxBj2RAxyEBh5ZNgP+Yr2ONF21oXqB1IkcsB5G0jppMadQdK62J7EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tVgTYUb477HOn7PMKdTos/poj3fl4l2KThGDyXJDf0Q=;
 b=E+jtgs0Q9gvU+Mfw3Tn0MDL5Uk4eN51MK3mf82mYDZcgikQ94J5func0qY71xsm4umn2Lz4T7hxd8EzPt1yZlQz0TqHoM7w0k/joLgugYiCsjXVLbvu58oRGJE9ft42Y7XbjTE/ZpUGHzhHZN6n2RsdjIrDGVMLY7l1x0QbigGDgAlsIl8mzsVn+yvMxkPqRaqbW2RxQ77Oo9Qh5U3PUFYUxOpDjfrI7YXY+8E8gS1F0mpodkpZR1PFE6TOtrVr4H7l7PS3S/ZgxcUs5h4vSMJ7EhNQQuH2rJjpYLY8sZGU6Zb2EXsYZfXYl5KBsZgnzQSfbmLyT8lO9cNEPFdXxUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL1PR11MB5526.namprd11.prod.outlook.com (2603:10b6:208:31d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Sat, 10 Dec
 2022 13:01:09 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1aa9:582:908f:d89c]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1aa9:582:908f:d89c%5]) with mapi id 15.20.5880.019; Sat, 10 Dec 2022
 13:01:09 +0000
Message-ID: <97589ea0-8425-2ea3-8e82-08ede9e3ce7a@intel.com>
Date: Sat, 10 Dec 2022 18:30:59 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20221202101028.803630-1-ankit.k.nautiyal@intel.com>
 <20221202101028.803630-2-ankit.k.nautiyal@intel.com>
 <Y5JYgrd4rJMUtnyf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Y5JYgrd4rJMUtnyf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0218.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL1PR11MB5526:EE_
X-MS-Office365-Filtering-Correlation-Id: 81571f1a-7a64-4a5d-6171-08dadaae9b45
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kma60KGplphPo3PIA20/Gb3bZtugTZo8nl5KO17/jzBg6suVFvLQ/rQ3bNR/CGIEzp+pTYBcqCuW2khNl/a1+3Ab7RBJ5fMX+MBIxSiq0NryfDBgFt3nbtSNgS36fcFxkwZaURaxCPeK4EOpXMF+wq9XqMcjL7rpDYPp5zZE1DPeNnRLQpfmJUpc8GqYVqfaG5q5+ypzkJTxQk1Cal3aNDCyvvS6ba+OVkehDBxYQGOlqkW/ZrFY3Xe1whKNoFZXD10kPo3IgpRvpGt3pDvkB0siHKGtUvupsAlR7FCLSFJttkiUxU3LMJtLWmg2e747nkfIuQxBexQL1bBTJaT7n0z72wq1SZRQk85iiCNOKlxHCMgLBioaKSE72EWtRAf+WAJsv3+rjk//tDqurvFcZFq3kyWK9l3DVc6AGZWrAUpMoD7mgY1R6r15PTOgRg28uSZYQCHumzdXyZSZi/oBzuS9jzJNwBNyBDmL5Vcpegg9TZ3opCBs+GuqKQkTBB007XkHJM0vH1aF93opSIF5zRZ2hUxoCfr6Yv1TsJjP5WICs9Cf3QcZjOVV3FORdKnxUPFJFVR1CoLVYm0747j802blzPwlcGpama6QDqBFg4z9LxLH0pr3zvw7Vf2P00jQCHzG8QuZbes74F01ufi6VbwRdix4kH/ACqcmeuto4XIOyETfhgSUBTnkJoApsaJttOmhA16gB8w6BIcya71zKnpK/N9mN5Dc6Xr3srXApOc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(376002)(346002)(396003)(366004)(451199015)(41300700001)(86362001)(6512007)(26005)(31696002)(478600001)(6666004)(6506007)(53546011)(55236004)(6486002)(6916009)(316002)(83380400001)(66574015)(66946007)(66556008)(66476007)(4326008)(8676002)(2616005)(82960400001)(38100700002)(31686004)(186003)(2906002)(8936002)(5660300002)(36756003)(30864003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QVZIb0VXM2p3WWVDcWRUanV4NGNpOXhyT1ZjMHRvRGhHSHJwbWVZU3c2R0xh?=
 =?utf-8?B?RTQ5RjZyVmwwQlc2RnRpdFRrSEZyTUtFd1k2YkNub1JTV1NrRlZGZW1sVERj?=
 =?utf-8?B?eUttdVVsNm9WaldDRm0zT0hXbWk3M05ta0RoODZsd3FGcFVYTElZc01SY1ly?=
 =?utf-8?B?U0pIOFBQaVM0NnpvWnBSMld2M2t1RDNTSE1hTCsvTmZ1TmxJY0huTjlXMXNa?=
 =?utf-8?B?TDltSVB3anRlc1RPZWE2UFJNRkRJRXFjcFpXQ0tBLzB2bHFVN294YktwSW43?=
 =?utf-8?B?M0wzYjZqN0dhdW9vRCtyenN2bU9rbC9OSHdveVRqK2NEMGNISm5nZ1pjNUts?=
 =?utf-8?B?K2s4WFVVdVZ1UGU5UjJSQ2RNOHFsbkhOTXp1RjZmQytuUGxqSk1VWFNjdFB4?=
 =?utf-8?B?bFg1WGFZdG0rNWxxcXRicjVBelFwdm5MR0ZVeHpZYnpaV2haUGQ5K0I4NXlU?=
 =?utf-8?B?WUtLak5lWTJZN3ZFVnVZSHYraFZRTndBT1pDOW5wM1RWQjYxTG9iK0JnT3RY?=
 =?utf-8?B?TWpiTi9wWlJwNWQ3dzhtRHVzTTAzQzB0a1JpdjNoUDRmalZDemdDVzBReDh6?=
 =?utf-8?B?Wkg0UVNvSlpjQU12L3NYNWcrNFFBbmV5U1Bmb0JBRStadXM5d1BzeDNmUyt4?=
 =?utf-8?B?Y3hrZlF0MDU5bkp3WS9WWUkxZkpXbUI5SG83cGZueXVodHRmeE9EOWdiM3Vw?=
 =?utf-8?B?amVzQ2MvSjdUd1dqZFBRWk5PeC9DK205dTR1Vzhzc1hTZHZQTkpjcXZnM1FS?=
 =?utf-8?B?WEdGSk01MmFnV1FPbTNVUlJQUEtPTERaYjRUWDZTa0hNcS9SdUJieFRoL3dp?=
 =?utf-8?B?L1BMQ2tlYUNFNTAyQXVUNExiKy9sbzhaZWZWdHByaWg1S3lrNDE3WXFLMkkx?=
 =?utf-8?B?S1pGZXcrQTlqT1crWmdwaEd1NHlESUdUcVlsK0c3Z2N4TjlXS3BKQlMxUFIw?=
 =?utf-8?B?NU5pbGFlRWxVeWh3V05oMUttWEZIdUFIY1FxbnloNTlNRGVBUXdTMzdublRn?=
 =?utf-8?B?blgwTVd5MFFSVkJiMHZlcEovM1ZkMVd1a2VNZjR6UWdIbXVhbnpUMTVJZFZ2?=
 =?utf-8?B?SWxGWTV0cmhWU2RSczdrdnMrUDBVOCsyUUQ2T0lDK1ZXNkNmVmE5K0NjRFFG?=
 =?utf-8?B?b2lmZnYxN052YTRxR0ZUTjFTODJKa2dlc2VIY1NzcUFhNHZkK3JhWmVLdHBv?=
 =?utf-8?B?MTZsRkhOZlhzamtLWlRFYjZ3YmZzZWZTYU5ab3ducjZNWVNySUFZbzB6Vy9X?=
 =?utf-8?B?QjR0VGNiSVQ2UGJjY3E1Ri9EM0NPQmFiMkZ5YjNsZjRpbGltUk9OcFJzc0dK?=
 =?utf-8?B?aXhGU1J4Mi8waElnLzZEa2t4bGFhcDZUTHBOb0hiUzdWNmg3UlhiRXFneVd6?=
 =?utf-8?B?RGtOdlFHWjBTeWwrQlNGeXI1czdUUFR2OWxESHlSWVZqcHlUNDB6Y25pdi9V?=
 =?utf-8?B?NDZ2MFZVVUNWS0dBTkx2Yktla3ZtVUJjRG4xS295cUpqUHNsTU5tZVVHYnpX?=
 =?utf-8?B?Wk5mUUV1UXRoRDFLVGtoQ2xzQmFGdUxpWWV3dFVTc2tvUUpUWmNFVGQ1ZlBB?=
 =?utf-8?B?T2tUWnhhVExLb0pWN2tUQlZaZDFvOTgremJ1d0VxREo2S0VhamE5elk2Q2E2?=
 =?utf-8?B?aHRjdDM4blZDdGcvMHlrZU5nNElVRzdEL0Uydkp5QW83ZVJxbU5HWnpVNlIw?=
 =?utf-8?B?YXZNVUxIZitiakttUkNHU2Z4WUFya0RlVGtGWVZhL2VET0FCYkVhTTB2MFN2?=
 =?utf-8?B?OFpMeW9MVVBNRkFwYWg2bUl1S1BGeWtSdk5qWmVJd3VaYWVWajliMW9mMWpI?=
 =?utf-8?B?T1Blenp6dFRyeEdCS2svRzU0ZW15eFppbjlnNWtUcW9qZEN5dHYvOEZZK2k4?=
 =?utf-8?B?SllxTkV4YkxKK0ZJSFd4dEFReGhCQ3Z2c1Q3Z3NwWmNvSzFZdGRqS2p4MzVH?=
 =?utf-8?B?bTF0Qml3bHNUc292bFhzeXp6ZDZ3MGJYelZTeDU5bUJsWFdoQWdBSXVRTGdE?=
 =?utf-8?B?UGRHOWduQVBQWDc5bnBySjlkNlZkTkVENW1wc2txTmoxRGJtMGRnZHFuWWZx?=
 =?utf-8?B?ZmVCZUNQVTFlams4R3BuSGllL013Rk95OW9oUnBLekt3VGVWTkRlbmNDRXc5?=
 =?utf-8?B?TWw3NTFVZXVuTUhIbmhEUXJpaHlXaEkrd2pJU0tWS0J6dHlBeHh4ZEZ6eVpC?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 81571f1a-7a64-4a5d-6171-08dadaae9b45
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2022 13:01:09.3821 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7GOH0h65OPz9lQ1rL9j5YhvbVhjGxfaS+yMQ8avs8OkSyZ6Cn+aCG1YFFnNZZe+WbPj6II0rzalq+XtqzPPBm6T+08zsdUPmv8rvnWNc8M8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5526
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 01/14] drm/i915/display: Add new member
 to configure PCON color conversion
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/9/2022 3:04 AM, Ville Syrjälä wrote:
> On Fri, Dec 02, 2022 at 03:40:15PM +0530, Ankit Nautiyal wrote:
>> The decision to use DFP output format conversion capabilities should be
>> during compute_config phase.
>>
>> This patch adds new member to crtc_state to represent the final
>> output_format to the sink. In case of a DFP this can be different than
>> the output_format, as per the format conversion done via the PCON.
>>
>> This will help to store only the format conversion capabilities of the
>> DP device in intel_dp->dfp, and use crtc_state to compute and store the
>> configuration for color/format conversion for a given mode.
>>
>> v2: modified the new member to crtc_state to represent the final
>> output_format that eaches the sink, after possible conversion by
>> PCON kind of devices. (Ville)
>>
>> v3: Addressed comments from Ville:
>> -Added comments to clarify difference between sink_format and
>> output_format.
>> -Corrected the order of setting sink_format and output_format.
>> -Added readout for sink_format in get_pipe_config hooks.
>>
>> v4: Set sink_format for intel_sdvo too. (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> (v3)
>> ---
>>   drivers/gpu/drm/i915/display/icl_dsi.c        |  1 +
>>   drivers/gpu/drm/i915/display/intel_crt.c      |  1 +
>>   .../drm/i915/display/intel_crtc_state_dump.c  |  5 +--
>>   drivers/gpu/drm/i915/display/intel_display.c  |  5 +++
>>   .../drm/i915/display/intel_display_types.h    | 11 +++++-
>>   drivers/gpu/drm/i915/display/intel_dp.c       | 34 +++++++++++++------
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c   |  1 +
>>   drivers/gpu/drm/i915/display/intel_dvo.c      |  1 +
>>   drivers/gpu/drm/i915/display/intel_hdmi.c     | 24 +++++++------
>>   drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
>>   drivers/gpu/drm/i915/display/intel_sdvo.c     |  1 +
>>   drivers/gpu/drm/i915/display/intel_tv.c       |  1 +
>>   drivers/gpu/drm/i915/display/vlv_dsi.c        |  1 +
>>   13 files changed, 62 insertions(+), 25 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>> index d16b30a2dded..0ca0d23f42c6 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -1667,6 +1667,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
>>   		&pipe_config->hw.adjusted_mode;
>>   	int ret;
>>   
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
>> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
>> index 797ad9489f7e..eb5964b3ff95 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
>> @@ -393,6 +393,7 @@ static int intel_crt_compute_config(struct intel_encoder *encoder,
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>>   		return -EINVAL;
>>   
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	return 0;
>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> index e3273fe8ddac..9b61884851fc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> @@ -163,10 +163,11 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>>   
>>   	snprintf_output_types(buf, sizeof(buf), pipe_config->output_types);
>>   	drm_dbg_kms(&i915->drm,
>> -		    "active: %s, output_types: %s (0x%x), output format: %s\n",
>> +		    "active: %s, output_types: %s (0x%x), output format: %s, sink format: %s\n",
>>   		    str_yes_no(pipe_config->hw.active),
>>   		    buf, pipe_config->output_types,
>> -		    output_formats(pipe_config->output_format));
>> +		    output_formats(pipe_config->output_format),
>> +		    output_formats(pipe_config->sink_format));
>>   
>>   	drm_dbg_kms(&i915->drm,
>>   		    "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 32b257157186..789667e1b2cb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -3242,6 +3242,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
>>   		return false;
>>   
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>> +	pipe_config->sink_format = pipe_config->output_format;
>>   	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
>>   	pipe_config->shared_dpll = NULL;
>>   
>> @@ -3701,6 +3702,8 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
>>   		break;
>>   	}
>>   
>> +	pipe_config->sink_format = pipe_config->output_format;
>> +
>>   	pipe_config->gamma_mode = REG_FIELD_GET(PIPECONF_GAMMA_MODE_MASK_ILK, tmp);
>>   
>>   	pipe_config->framestart_delay = REG_FIELD_GET(PIPECONF_FRAME_START_DELAY_MASK, tmp) + 1;
>> @@ -4099,6 +4102,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>>   			bdw_get_pipemisc_output_format(crtc);
>>   	}
>>   
>> +	pipe_config->sink_format = pipe_config->output_format;
>> +
>>   	pipe_config->gamma_mode = intel_de_read(dev_priv,
>>   						GAMMA_MODE(crtc->pipe));
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index ff3ef37d099e..136866615223 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1267,9 +1267,18 @@ struct intel_crtc_state {
>>   	/* HDMI High TMDS char rate ratio */
>>   	bool hdmi_high_tmds_clock_ratio;
>>   
>> -	/* Output format RGB/YCBCR etc */
>> +	/*
>> +	 * Output format RGB/YCBCR etc., that is coming out
>> +	 * at the end of the pipe.
>> +	 */
>>   	enum intel_output_format output_format;
>>   
>> +	/*
>> +	 * Sink output format RGB/YCBCR etc., that is going
>> +	 * into the sink.
>> +	 */
>> +	enum intel_output_format sink_format;
>> +
>>   	/* enable pipe gamma? */
>>   	bool gamma_enable;
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 1607c86af025..3ec8a248a928 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -788,11 +788,12 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>>   
>>   static enum intel_output_format
>>   intel_dp_output_format(struct intel_connector *connector,
>> -		       bool ycbcr_420_output)
>> +		       enum intel_output_format sink_format)
>>   {
>>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
>>   
>> -	if (!connector->base.ycbcr_420_allowed || !ycbcr_420_output)
>> +	if (!connector->base.ycbcr_420_allowed ||
>> +	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
>>   		return INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	if (intel_dp->dfp.rgb_to_ycbcr &&
>> @@ -831,8 +832,14 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
>>   			     const struct drm_display_mode *mode)
>>   {
>>   	const struct drm_display_info *info = &connector->base.display_info;
>> -	enum intel_output_format output_format =
>> -		intel_dp_output_format(connector, drm_mode_is_420_only(info, mode));
>> +	enum intel_output_format output_format, sink_format;
>> +
>> +	if (drm_mode_is_420_only(info, mode))
>> +		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> +	else
>> +		sink_format = INTEL_OUTPUT_FORMAT_RGB;
>> +
>> +	output_format = intel_dp_output_format(connector, sink_format);
>>   
>>   	return intel_dp_output_bpp(output_format, intel_dp_min_bpp(output_format));
>>   }
>> @@ -1985,23 +1992,28 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>>   
>>   	ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
>>   
>> -	crtc_state->output_format = intel_dp_output_format(connector, ycbcr_420_only);
>> -
>> -	if (ycbcr_420_only && !intel_dp_is_ycbcr420(intel_dp, crtc_state)) {
>> +	if (ycbcr_420_only && !connector->base.ycbcr_420_allowed) {
>>   		drm_dbg_kms(&i915->drm,
>>   			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
>> -		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>> +	} else if (ycbcr_420_only) {
>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> +	} else {
>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	}
>>   
>> +	crtc_state->output_format = intel_dp_output_format(connector, crtc_state->sink_format);
>> +
>>   	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>>   					   respect_downstream_limits);
>>   	if (ret) {
>> -		if (intel_dp_is_ycbcr420(intel_dp, crtc_state) ||
>> -		    !connector->base.ycbcr_420_allowed ||
> Hmm. Where did that ycbcr_420_allowed check go? It seems we'll now try
> to enable things thinking we can somehow output 4:2:0 when in fact we
> can't. Same issue in the HDMI path.

We are setting sink_format as YCbCr420 only when the mode is YCbCr420 
only, and connector->base.ycbcr420_allowed is true.

So in condition below we just check that whether we have already tried 
with YCbCr420 as sink format, if thats the case, we just return.

We also return if the sink_format was other than YCBCR420, but the mode 
is not Ycbcr420_also.

So IMHO, with the check for sink_format for YCbCr420, the check for 
ycbcr_420_allowed is no more required.


Regards,

Ankit


>
>> +		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>>   		    !drm_mode_is_420_also(info, adjusted_mode))
>>   			return ret;
>>   
>> -		crtc_state->output_format = intel_dp_output_format(connector, true);
>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> +		crtc_state->output_format = intel_dp_output_format(connector,
>> +								   crtc_state->sink_format);
>>   		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>>   						   respect_downstream_limits);
>>   	}
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index 4077a979a924..e53e7ece624c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -148,6 +148,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>>   		return -EINVAL;
>>   
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->has_pch_encoder = false;
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
>> index 4aeae0f3ac91..68ba70751527 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
>> @@ -271,6 +271,7 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>>   		return -EINVAL;
>>   
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	return 0;
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index e82f8a07e2b0..0dd60bb9d7e8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -2190,13 +2190,13 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
>>   
>>   static enum intel_output_format
>>   intel_hdmi_output_format(const struct intel_crtc_state *crtc_state,
>> -			 struct intel_connector *connector,
>> -			 bool ycbcr_420_output)
>> +			 struct intel_connector *connector)
>>   {
>>   	if (!crtc_state->has_hdmi_sink)
>>   		return INTEL_OUTPUT_FORMAT_RGB;
>>   
>> -	if (connector->base.ycbcr_420_allowed && ycbcr_420_output)
>> +	if (connector->base.ycbcr_420_allowed &&
>> +	    crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>>   		return INTEL_OUTPUT_FORMAT_YCBCR420;
>>   	else
>>   		return INTEL_OUTPUT_FORMAT_RGB;
>> @@ -2214,23 +2214,25 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
>>   	bool ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
>>   	int ret;
>>   
>> -	crtc_state->output_format =
>> -		intel_hdmi_output_format(crtc_state, connector, ycbcr_420_only);
>> -
>> -	if (ycbcr_420_only && !intel_hdmi_is_ycbcr420(crtc_state)) {
>> +	if (ycbcr_420_only && !connector->base.ycbcr_420_allowed) {
>>   		drm_dbg_kms(&i915->drm,
>>   			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
>> -		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>> +	} else if (ycbcr_420_only) {
>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> +	} else {
>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	}
>>   
>> +	crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector);
>>   	ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
>>   	if (ret) {
>> -		if (intel_hdmi_is_ycbcr420(crtc_state) ||
>> -		    !connector->base.ycbcr_420_allowed ||
>> +		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>>   		    !drm_mode_is_420_also(info, adjusted_mode))
>>   			return ret;
>>   
>> -		crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector, true);
>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> +		crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector);
>>   		ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
>>   	}
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
>> index 7bf1bdfd03ec..ee526fef2276 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
>> @@ -440,6 +440,7 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
>>   		pipe_config->pipe_bpp = lvds_bpp;
>>   	}
>>   
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	/*
>> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
>> index 329b9d9af667..f6b09412da5a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
>> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
>> @@ -1327,6 +1327,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
>>   
>>   	DRM_DEBUG_KMS("forcing bpc to 8 for SDVO\n");
>>   	pipe_config->pipe_bpp = 8*3;
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	if (HAS_PCH_SPLIT(to_i915(encoder->base.dev)))
>> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
>> index b986bf075889..2a205a21d0c2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_tv.c
>> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
>> @@ -1206,6 +1206,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>>   		return -EINVAL;
>>   
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	drm_dbg_kms(&dev_priv->drm, "forcing bpc to 8 for TV\n");
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> index 84481030883a..1958774860dc 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -280,6 +280,7 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
>>   	int ret;
>>   
>>   	drm_dbg_kms(&dev_priv->drm, "\n");
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
>> -- 
>> 2.25.1
