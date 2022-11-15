Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3D66292A9
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 08:48:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1618E10E36C;
	Tue, 15 Nov 2022 07:48:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0AF410E36C
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 07:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668498494; x=1700034494;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lvYVEiQFCOZbS97X0vLXZCVJQ8nydA9stABMtQ//kwU=;
 b=h5wzJWEkC7Hwn79M5oZGrhfIK8MoiV86nTx2mc5JB4SZpxewQL8mwPMu
 U8IMwB0NoxK7QUrWCvM8y11CDHHTiLyvLO5fM3YtmSungm6O+uGxTtHnQ
 wsDqvYXHHOg+qfJnMFQ1a8vugnxUgMeI57LSz+lYPu5Gkm6qnKEjyMfl5
 C9qRp6OCd+ai2NrmhWJkunpDuUNMKuXP7xbcAhQTOxYDgzBBsAnLdjDw1
 nVs2xgXqr00o6zQdxBfrNb/trVgfOCWu1/2y5G9JPJ5cUtz8XLavtPLCW
 /PIRO34L6qBlLldNPKPhqmE8TCxFCHnYphT3biaNHXqWxy780moeTQfqd g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="313997531"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="313997531"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 23:48:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="616662491"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="616662491"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 14 Nov 2022 23:48:13 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 23:48:13 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 23:48:13 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 23:48:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nCddf3szQSP4vi/4uM0fChao74xCV2BsFOghjp0KVo/O5zMz8kTxIoadwxs+8sGgJjZ1QFyq2w2M/MdsTUtiXP4R4KnRWfmfYJY0arXhPRNTxZKA3qriebfHOvbkK0cO88aHmncFtd3iVcHLC6rm8S9AJhkbW6utb5RRL5t/lz75QIEH0Ejx1o/E5pqpfJMUcry1Lk+BZIUMR75sucNOquXqVfiG2YEIHttGq1vrjjDmlLYp9hfG4NbVpYuaDZdwKBNNvf0YkOb2Rqy4kVDxS/gPD60WYAlbHpe+wld7HFRzzZIsLgBquSnw17erKphxBmWrax3RVC+Ca9ovdM1+NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rRPb9vsd8m0iNc7Bdemwqe7BzoSiBKXShyLmNiYwGPY=;
 b=aJ9AnLrJzpWdei8sQDHf6os/yXy/WvZ5WYGuPP1E0WOdlyZky8aek1WjzVM+cCud7bzljYsAGkUyBt4ZADo9Xn8v1a2fo+Fko7o8NZWB6zJ0PLAJzkddIPbn3E07oA7eQXhhOjo6Scb0mpOSMHbaS/pDRcBG3/iRVdf2nVtdUybrgigJ4PRUIIvN32za9zeY/daSECXGq5Z94NussMKWo9HX7uhzvTtsKVPtODo8imj8CYD6aX8ZCC/q/cKc+j9xEyAF7+iF0OC9MWtAUAcAaY1x6e2FZvHPkOObu2PerxW/E0snH+yoPacsHoF8Qas76Y3c87/S11YM1cMERvJ6Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB6057.namprd11.prod.outlook.com (2603:10b6:208:375::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Tue, 15 Nov
 2022 07:48:11 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%8]) with mapi id 15.20.5813.017; Tue, 15 Nov 2022
 07:48:11 +0000
Message-ID: <bd38a962-381b-b31f-8a58-7be003b808ae@intel.com>
Date: Tue, 15 Nov 2022 13:18:03 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20221028094411.3673476-1-ankit.k.nautiyal@intel.com>
 <20221028094411.3673476-2-ankit.k.nautiyal@intel.com>
 <Y21hPPewENMIzCpk@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Y21hPPewENMIzCpk@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0087.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::32) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB6057:EE_
X-MS-Office365-Filtering-Correlation-Id: f84bbcd5-4b65-467a-d250-08dac6ddbe50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3BCzO8wcVTVqWJTaMeQMvO6kxaElZ4x0BLaNpALVnLBeAmrGmuTZh/7kzSUXAdhYb1Iyl0I6XWALQr48RRfx7tXpYDDWzV5AD6Qj+kvZWTylioTjSDUivAYybGhryNpX8i7lV9Gk9Wz9k5AcHz0lJgAJn6ZxR0+nOdO7Kwin5o/gzJHu1ibJiXjxX2G4/n1LC9heY734/lw2C1Iv8dUjzvhEeWAIYddn+ZAvr6eyoA8qwo/0MiCuqr2S7cag/Iu6I1Le1rkfJ85NecOUHaJRujjAw3SBFbw0G9CtgxkibToSveEgByIpUD7OsD5JsdgN0192u8QNK5VpI/EVcyVS7mpWUNpSUEauvb9IhDzKdjLZh6H+r1jJ77EhiC/mpSSQCPnG5o85tV/UHLOOUDp3FZpAse+EYFu7v8EPkPrW+WV2JLrs7l0g2DIVanSy6ykzKCoq58FY1LxcQms0VQsCmHQ/6IfY/X7mHCj2Bpm+t7NQeDA2ymmc//VhXRi3IRS2t3Ne2SxWRZf7DQ87dEVAmxlG3n5X9n3fZm5OYLEU0fPDPbhIzc+96e/FxH9LJb82+NVs5Fp3Q+gGluvzQT3Fbe0XZI6QfZczIscOiAmEFeFj9IF6516EqU9LEED83EJYzYBB0mIAXVN66EIaf7GZc/KnNDvVKX7Olmta0d/uyfrxUlYPmKAzJwX6u/XEIBguFkUYkvQ831hq05FUluAnpo5tPUDB3ehDHok2zOAIf5Let+I5fWzh3LaoDMiUXMyGVSfrz3Jut91tT82HsY4e/MaD9VQxdVbrmk3oHBRmhDA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(396003)(136003)(39860400002)(346002)(451199015)(316002)(2616005)(478600001)(36756003)(6486002)(186003)(53546011)(26005)(6666004)(6512007)(38100700002)(6506007)(82960400001)(83380400001)(86362001)(31696002)(30864003)(66574015)(6916009)(66946007)(66556008)(66476007)(8936002)(5660300002)(4326008)(8676002)(2906002)(31686004)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ck40SDY4WDNyd3lYQUFveFFCYkx3QWtQZXNrZFJNL3pSK0QwWE10Y0p5Y3NN?=
 =?utf-8?B?ZUQ2ZE9JVms3OHlzSDRiYmlRTk5Qc0tCL2tOdWhkQ3VUbktnbFVoT1l3RXo4?=
 =?utf-8?B?SDQ4WGR2N081WkpEQlNTbmgwVEVqTmZLWHYrZUFXQ3lya0tmeDJnb2ltSFVa?=
 =?utf-8?B?dVY5am8zOW5ORkc2eWVwZWtBYU03ZUlkeXlnbkdCSlpDK1MrN21CZllndkZK?=
 =?utf-8?B?OU53UkNjb0Jqbk9yendUOUFHNm9LN3JSMnFkZzhQSUh3Y2FhcXlJczhJd0JE?=
 =?utf-8?B?VnA0cFdmS1Z6eUYvSFZ2QndiK1hkYS9jOGF0UFhadGVLQ2YvbGFjNHdOT0Qv?=
 =?utf-8?B?WVpLeFkzd3cxTzVBbjhMd2dpQ29LUG1kK24zM2VxaU0wTmZJeitsSHJTUUZm?=
 =?utf-8?B?N2l2WUZ5anZOaGRpQTVZV1ppbjY3N01USkhLUEM5dUF5Z1g3dGRjNjZMTkFX?=
 =?utf-8?B?RjRrUWE0RXZlbmRnUEF6eWp2aG9qekJLenY1VGdBZk5oOTJqeC95YjRQMVFY?=
 =?utf-8?B?NCtYaElqM001V2dsc0x4RzM1MmYrZyttSXpNbGZycHBBejQ1WGI4Zmt2QWFu?=
 =?utf-8?B?N0RhdDRMMkdvNDRXVFh6MGhOYnJDVGRhTCtPZjBmVEVjVXk2ejF3dXJRWFdt?=
 =?utf-8?B?TFpXOEhyQ3MwblNMbjRGNmJOeFQ4Y25yRmtkL21KN3JKR1RmejhMVXFIcjVo?=
 =?utf-8?B?VVdXVTVDc0VWRnc1YlkvSWxwUkZtTjQ4eGlDYkM0d2tIOFBNK0VKdVkzbmRz?=
 =?utf-8?B?Wk5TZGcwaUdrMmFQR1FzZU5oZ1d5VlMyTUdHV3EvRWZvTGpXU3FvbmNsb2RQ?=
 =?utf-8?B?S0g3Wk9wb1NYbXJQdElSbkVZcXhMNjZCeUtONHNuWkhMcG5Dd0lhRzZtZ1Zl?=
 =?utf-8?B?eVhmOGN6NkJrL3oxZHI5QkhwTXhXSDZDNS9YcXRmU0pmL0NGSmRvaXlScWRa?=
 =?utf-8?B?NzV2VGhyK2tnenozc0RrZXBpOWZWYlcwVllUOEdTbXBZUVZDaG9YVVpLc3Q2?=
 =?utf-8?B?Q2xwREtHSkdOb2cxdXh1UUM0QWhtTi9jSjFQSndvQ21BRG1DT0V2QnpUTmtr?=
 =?utf-8?B?c0RhUjNZSkJFbFBzZEhlcHk0TWhTYzdVNTJ1aERhdjJ2SFIwNGg1a2lQVW41?=
 =?utf-8?B?T1Z0MGl2N1lBeVZQV3JkTVc0cTVkcEl2UmZKRVUxdVhycWt6SjFySDRrZjRw?=
 =?utf-8?B?WWxnNDkzV21jUGhUWnd0cWlkdUNEelJNc2FkeGtPNXJ5SS9TaFNGTTVTaUcx?=
 =?utf-8?B?d2R5MSs3QUtLd0tRK3pEWHdpV3I0YU5mWmhHYkZPL052M1ZmdzdibURQOVVo?=
 =?utf-8?B?QXE4WXhZMXZGbEFzUDZjT1ZWV1VJamFPV1Bwd1FLc3lqVDgrdml5VkJYdVhP?=
 =?utf-8?B?cFllTi9PbGEvWm1QSjVKZ29hcXJ3dnlwNkZGM0h6WDIzNHpVeGNnV1BQZ1d5?=
 =?utf-8?B?UkhCbXIxVTY0Mzh5Yi9KcVdaaHZMejU1RHRJVU1uQnlpdHNaMHhIRW91eXJW?=
 =?utf-8?B?V1hQRjhheUF2T3dZUWg3dlNMc1BFOURQMUwzdWdtVzYvY3Q1UmsvSTlFSjBZ?=
 =?utf-8?B?MzNZV1pEaXV6YnFaYWpUTFZyWTl0VnN0NkR5czEwU1lGaFhsc3E0SW5FeERt?=
 =?utf-8?B?MHI1V1lLOWQ2QkZoNzZqTGVXN1BDMlA5TEpLNUJUVVdZOStsbksxdE5lbFhl?=
 =?utf-8?B?UVVYK3A1NXNGTmZzc2NwSkRYeCtOb1BTWVphUGxYOUxoR0dubThMMVJzWEVE?=
 =?utf-8?B?K2UzZEFPMXRwMjU4WW1wRWtuNTNmZDNrQ2lVV0NKL0k5S2JwT3ljb3hmRDhO?=
 =?utf-8?B?d0taK1hGOWczSmNWbVZBVTljbUE1YTdPWCtwd21wdDdHVGw5bUhqTXJweGhl?=
 =?utf-8?B?M1JNSDI0dXpTSjQ1Ly9jUEJBS3BReUhvVW12MUJOTkRYQkdnbUJDdEFTUVBO?=
 =?utf-8?B?RWxHcUJXaVBSVDRZZ2NLVmI5UlE2dG5sbUNySHdjVXdoQTFQYU5IT1RKQk5s?=
 =?utf-8?B?MW1yaWdiQXpVdk5sRmJzRlg4TGptcUNCZlBtRGcvUHNzYVpwZTh4WlNCZ2tG?=
 =?utf-8?B?YkZtRnFwelhMdXQ4dkl3bW5Wa1Izelppa1ZKc0dqdmlTRFhsUUdBYXdZeFN1?=
 =?utf-8?B?ZkhIaHhIYTA3OXMvTTJBZjJ6TkxVU3M4cjN6elBJejV2eGF2U3UrVEExelJ4?=
 =?utf-8?B?UkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f84bbcd5-4b65-467a-d250-08dac6ddbe50
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2022 07:48:11.2979 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HZw3Z9kHP6RnBfQoSnMkXcZ+uV+V1l+StoviRERIe3FtcImql2SjjfOIaSJl3XyLVr4nn16YFcV7flfXAAqdGu47wAwy3YYDhTdns1MxaiM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6057
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 1/9] drm/i915/display: Add new member to
 configure PCON color conversion
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


On 11/11/2022 2:08 AM, Ville Syrjälä wrote:
> On Fri, Oct 28, 2022 at 03:14:03PM +0530, Ankit Nautiyal wrote:
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
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/icl_dsi.c        |  1 +
>>   drivers/gpu/drm/i915/display/intel_crt.c      |  1 +
>>   .../drm/i915/display/intel_crtc_state_dump.c  |  5 +--
>>   drivers/gpu/drm/i915/display/intel_display.c  |  5 +++
>>   .../drm/i915/display/intel_display_types.h    | 11 +++++-
>>   drivers/gpu/drm/i915/display/intel_dp.c       | 34 +++++++++++++------
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c   |  1 +
>>   drivers/gpu/drm/i915/display/intel_dvo.c      |  1 +
>>   drivers/gpu/drm/i915/display/intel_hdmi.c     | 24 ++++++++-----
>>   drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
>>   drivers/gpu/drm/i915/display/intel_tv.c       |  1 +
>>   drivers/gpu/drm/i915/display/vlv_dsi.c        |  1 +
> We seem to miss intel_sdvo.c here. Apart from that looks nice.
>
> With sdvo fixed
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>


Thanks Ville. Will add sdvo in the next version of the patch.

Regards,

Ankit

>
>>   12 files changed, 63 insertions(+), 23 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>> index e05e7cd6c412..533563e94f58 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -1666,6 +1666,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
>>   		&pipe_config->hw.adjusted_mode;
>>   	int ret;
>>   
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
>> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
>> index 94d0a5e1dd03..1b46d10fc6f4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
>> @@ -391,6 +391,7 @@ static int intel_crt_compute_config(struct intel_encoder *encoder,
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>>   		return -EINVAL;
>>   
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	return 0;
>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> index e9212f69c360..ed427b9cbf09 100644
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
>> index 9697179309c4..6edb3f2af376 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -3240,6 +3240,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
>>   		return false;
>>   
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>> +	pipe_config->sink_format = pipe_config->output_format;
>>   	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
>>   	pipe_config->shared_dpll = NULL;
>>   
>> @@ -3699,6 +3700,8 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
>>   		break;
>>   	}
>>   
>> +	pipe_config->sink_format = pipe_config->output_format;
>> +
>>   	pipe_config->gamma_mode = REG_FIELD_GET(PIPECONF_GAMMA_MODE_MASK_ILK, tmp);
>>   
>>   	pipe_config->framestart_delay = REG_FIELD_GET(PIPECONF_FRAME_START_DELAY_MASK, tmp) + 1;
>> @@ -4094,6 +4097,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>>   			bdw_get_pipemisc_output_format(crtc);
>>   	}
>>   
>> +	pipe_config->sink_format = pipe_config->output_format;
>> +
>>   	pipe_config->gamma_mode = intel_de_read(dev_priv,
>>   						GAMMA_MODE(crtc->pipe));
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 609eeb5c7b71..924b7b656097 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1254,9 +1254,18 @@ struct intel_crtc_state {
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
>> index 7400d6b4c587..0e4f7b467970 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -787,11 +787,12 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
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
>> @@ -830,8 +831,14 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
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
>> @@ -1984,23 +1991,28 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
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
>> index cd4e61026d98..496795476213 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -147,6 +147,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>>   		return -EINVAL;
>>   
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->has_pch_encoder = false;
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
>> index 595087288922..8f5b5612cba8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
>> @@ -278,6 +278,7 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>>   		return -EINVAL;
>>   
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	return 0;
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index 93519fb23d9d..bd802ce69174 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -2191,9 +2191,10 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
>>   
>>   static enum intel_output_format
>>   intel_hdmi_output_format(struct intel_connector *connector,
>> -			 bool ycbcr_420_output)
>> +			 enum intel_output_format sink_format)
>>   {
>> -	if (connector->base.ycbcr_420_allowed && ycbcr_420_output)
>> +	if (connector->base.ycbcr_420_allowed &&
>> +	    sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>>   		return INTEL_OUTPUT_FORMAT_YCBCR420;
>>   	else
>>   		return INTEL_OUTPUT_FORMAT_RGB;
>> @@ -2211,22 +2212,27 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
>>   	bool ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
>>   	int ret;
>>   
>> -	crtc_state->output_format = intel_hdmi_output_format(connector, ycbcr_420_only);
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
>> +	crtc_state->output_format = intel_hdmi_output_format(connector,
>> +							     crtc_state->sink_format);
>>   	ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
>>   	if (ret) {
>> -		if (intel_hdmi_is_ycbcr420(crtc_state) ||
>> -		    !connector->base.ycbcr_420_allowed ||
>> +		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>>   		    !drm_mode_is_420_also(info, adjusted_mode))
>>   			return ret;
>>   
>> -		crtc_state->output_format = intel_hdmi_output_format(connector, true);
>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> +		crtc_state->output_format = intel_hdmi_output_format(connector,
>> +								     crtc_state->sink_format);
>>   		ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
>>   	}
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
>> index 246787bbf5ef..6d98bc8789a7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
>> @@ -439,6 +439,7 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
>>   		pipe_config->pipe_bpp = lvds_bpp;
>>   	}
>>   
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	/*
>> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
>> index cf7d5c1ab406..9fe1fdca8336 100644
>> --- a/drivers/gpu/drm/i915/display/intel_tv.c
>> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
>> @@ -1204,6 +1204,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>>   		return -EINVAL;
>>   
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	drm_dbg_kms(&dev_priv->drm, "forcing bpc to 8 for TV\n");
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> index 5a741ea4505f..11d9691c78cf 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -279,6 +279,7 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
>>   	int ret;
>>   
>>   	drm_dbg_kms(&dev_priv->drm, "\n");
>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>>   	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
>> -- 
>> 2.25.1
