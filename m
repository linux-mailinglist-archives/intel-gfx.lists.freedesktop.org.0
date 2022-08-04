Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F5E58A3E8
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Aug 2022 01:27:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C14B591776;
	Thu,  4 Aug 2022 23:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4506BA9E66
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 23:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659655613; x=1691191613;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/yVd98D6CJyztUQM+hCiIDTd+5HWEkmALLG+FHixiZk=;
 b=OXHd5qarLMzMOxjyzgpsBlfb4O0kEQFUOUtYU2LeyflVIn4w6nlypEZE
 QvrKIR0JIxAqSsviCHZ8CVj297+Djlm89bv7BbpuEgovNWMqP6RYuRb6+
 xvhkyA8QbpLWU0rfWE2fdnsjau9SmIIMl2bPoRfqvmd+N61hrx+8Pt0jg
 BIQP3j1ezdU52//iAXgCGCaOFLe/rTq80v6F22Lak6I7JxhPyw7ZUGyT+
 zzyp06oTz/j1RZKS2DuYn3ugZOxBeF+Gc+MXakA2nvOTDJlqUUNx+CPK0
 id4jiZ/ymk0Ql3o+gTI+XP9KWDj4WGiaNK0Sf+F1tZCK92nDeha9kFzfC g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="287640554"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="287640554"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 16:26:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="706396244"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga002.fm.intel.com with ESMTP; 04 Aug 2022 16:26:52 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 4 Aug 2022 16:26:51 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 4 Aug 2022 16:26:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 4 Aug 2022 16:26:51 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 4 Aug 2022 16:26:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nq8TR7k4CTSNLTz5DPAlwk4Ou563D6Xz1E/SKhycIQhg7/LLMRaw89rnMo+Nd+B+garMzXsVE5Rge4BIIsznsLBA5lzUDCiHLZrr433DfgZ4SJF4pGYIGqzg1IYE3QaCItpumIln4w3tm1GoOr453K2NJCnVar+BrvJ5/Ggf80ayPTw6k5tW8IGtsgazEgSpcZW05ISu6ZMX3To8LS57C4szkUcQBCw4n2sHHpB/TQE1LGbAxy0ED2zNWpABf/BMKAjc6qGZxh/URmJq7YvI82kuogThdDClJlQcJuN6fczuVeCHt8dpa67yqZXWaWEGo9vjOS6m8FRXxoeVjPrM+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Prt9mv8FvfgXKa87vE7LNxE40WiPTwNM7wDK5IP3M58=;
 b=ZAd9D8FZ7UuXLn09A5K9sOctyA+t24/L8WowGo3na2Qk+oL9fdEVPR8tTMR90mqyZVr2UzzlE1W0zc2sCGHyQLfMemK4idv8AarzN2ZsKUw0y+WGTCeODloEo8u0mMEneCUXERevn71FnHtoNvajh/c0Nx0cesxWVgQk6a8qRiI1z7gXybugrIpZEnzm2JRIGHsFsC7NC5t1CJ0+kuPWHi9U+bublaegToVfcn+lh5pOUr23ZcoJSWOeiWUOQ98nnVQnDjgU5cFpERURCm1PS14OtGmYWCz/KdwjqKmpPSwmT9BHxnD3jLCzjrVZjyOYKkNiAIGxbs2ulgCy7tAbyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SJ0PR11MB5582.namprd11.prod.outlook.com (2603:10b6:a03:3aa::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.14; Thu, 4 Aug 2022 23:26:49 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e7:b934:6a3e:59a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e7:b934:6a3e:59a%7]) with mapi id 15.20.5482.016; Thu, 4 Aug 2022
 23:26:49 +0000
Date: Thu, 4 Aug 2022 16:26:47 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Stuart Summers <stuart.summers@intel.com>
Message-ID: <YuxVt6gsJDKSvtJK@orsosgc001.jf.intel.com>
References: <20220803230325.137593-1-stuart.summers@intel.com>
 <20220803230325.137593-2-stuart.summers@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20220803230325.137593-2-stuart.summers@intel.com>
X-ClientProxiedBy: SJ0PR05CA0133.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::18) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: baae63c3-9c0b-4c52-8ea6-08da7670ce1f
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5582:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0h2FFSF02+OD0BG0nh9TMII6vf8T9LWPnwQUaKL81VANyJdOraYkyD1rzBe5CnAM2+QAf0KTzwnPioeu0eq4jTLFkpU0LDZqRL+D/IOwEZP6I1oZMqfyATdXFcluJaUnxyW4+0F6EpHx9n7+oWk/dylpBR6KAeL9NKi6BrOA0fwr/s5fRr4Zh05TOcJYkgVa7CwIAtY1XFX4I2fCH3CQeVJh3kmOdq4gu8nej/mpML4gWyeOmezJY37o3R2rGZmi+1sP73Aof70KeqYbNGDFGnq11gMwTjL9wHUPDO3E9JdOCQjdLL6kJaVGCUiLzkj2mBO2Q39xg5jY8RVxwm4MuW7MJ3xvUap2MSSt2O00tFk7TwQrLUEBpJ1PFN4Pn+paCH8MuKBCMz01J9mJHarucvN3EvQ/+lF6626ZhIkEiLG7U1OFk1HBKLSUQ8V+Ar5dfV5MRISC2jD1uo5V0YUQpb9O/Nf49qpeUn4rXnH23FUhr7Nb2FizriMV44i6DBBDancoZr3d0GnhY4TH7YkSJTeI4YXuk2sOD6ztAaNpaOYgl+UzMUYgJzztVs5f0Qoeluefu34QgZJDmfcsJjxfTB6gP3Q1ShKLwjM7zzjgdZBHr7rpiuXaqSCI7vs/nkdlH75po4exMM7og1DTLtQTKSH1GGvjn0axTkB6bPOtVO22pdHp3Nkzou2wbopoLvp18nUANuE6Ou83cEBDX/yE09vtzBtOhxy8VNHfAyWeIlcJSMmc+cYwnim2A51r5xpO
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(376002)(346002)(136003)(366004)(396003)(2906002)(86362001)(8676002)(4326008)(66946007)(6506007)(66556008)(66476007)(83380400001)(478600001)(8936002)(6862004)(5660300002)(41300700001)(82960400001)(6486002)(38100700002)(316002)(6636002)(26005)(6512007)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qk44VTV3UHhNRVAvald0UWFkbGV4WE1TT25BVWNqTWwxZXZmQ1N2ZmZsaW5j?=
 =?utf-8?B?K3J3NDRFbEJNQnRpS1BTSmRMSXdiVHNzQzA4SzlkVVFmZzlSTlhrN0o1T29z?=
 =?utf-8?B?OHNSQ1l4cDZyY3BPL09tazFnamhCbWlxRWF6eHplaDBYV2R0K2tvaHRXOG5W?=
 =?utf-8?B?MnVtaGYzNnd5L21SU096c3ppTGNOREVqUDNwNzQ1RFhGTEpZUkRhSXR3T214?=
 =?utf-8?B?Q2I1WVE0MHFBa3RhUEc1MmRoYVcwMU5ZY1ZMaHRZckRDa05OdEd5TFR6akEr?=
 =?utf-8?B?TTJmdXNtUU13bmZOVnA4ZUsxc3VkUGIyY3U4SUtvSWZWNlZGN3FsTWlNZzdP?=
 =?utf-8?B?OGlFRFBFblpUNkJkMkQvbXUvS1ROblpjTlRLYnEwZU9jRFVoV3JYVm1rOURB?=
 =?utf-8?B?N01KdlpBMkZrYTRIZzhCYW9OaUNXTGJJa1I2M2R4YlNJQW9tYStHVDBiaWFB?=
 =?utf-8?B?bE8wKy9DT1N0NVdpQ2JXV214WlpjV2M1ZWVIbWZpbExTNGlCQ0V3VGFud0RD?=
 =?utf-8?B?amNrQ2cveGJIVnBTMllrTERzMXp0ZWxRNU91aXI4SE9ranAwb0xCOXYyMEtw?=
 =?utf-8?B?MjRvVm44NTBDY2s3VVBPUWVmaHQxZmxOWEVOMW5ZMCtZOEUvV3gzbDROaVJp?=
 =?utf-8?B?elBzc2F0Y0ttWHpmTURqeUxOZTJKRjV4TEdjNTJxSnhVekVvZHpqb3FVaXJG?=
 =?utf-8?B?VUo0YmJseVVjN3hBU1hlY0VSNlhja1QweVpXSmQwUUNwL0ZkKzNCUnFZSVl0?=
 =?utf-8?B?aWdCekZrWXErNEtUM3pSYklFTmRkb3N4UlJXMHUzQS9OblMzbG1WYkFGanRa?=
 =?utf-8?B?WW1yeGxuUnlieUYyUVZaOTF0ZE9kaG55cTdGeXE0RER6WmpKZ1RPMEdVU0VI?=
 =?utf-8?B?SjFieXg3elhpeC9ZWUxodXlGUDJYcDJ6alZDUncwc0t4NU4xY3ZYUVViVHIy?=
 =?utf-8?B?QjZBbEdZaGFYQUtVSkRQSTA1RzF2TFJMQmFIV01RcnoyNVJwVk5IWC9QZGx2?=
 =?utf-8?B?d0tDT254L1RJb0NHalB2Qk1vblBnaFFiajR4TlgrZnREalAzZXh2NGpYY1NO?=
 =?utf-8?B?ODdzTGdrNUFCMlZ6a2l1eVBoMmxmTHh0b3ZXQnAyTENGL2c0MDhtWGFuUlYx?=
 =?utf-8?B?bTJWQ2VrUHRSa3I5SWpMSDBieVhUWER0QU9vTHppdjFZU0ttRktDSmxaL3Zt?=
 =?utf-8?B?dVdoWU50SFRPZ3VXV090Zld3SDJ4ZzJIS1g4Z29zSThPU0ZQR1JHTlVLcE9J?=
 =?utf-8?B?ZnVOcXBWUVFGdC96UldWMDFsTThqQUVsQVh1Q3dmb1JxR2RsSUNzYUtaOFRJ?=
 =?utf-8?B?OXNkTU5zNnpzOXpucUFTcFVudmxyRmhVNjVlRk9OLy9BYlQxeU9aZWxHTWll?=
 =?utf-8?B?aEp1c2hCc0V4ZjhFSEZtdWRyc3Y4TUdRa1RZT1UzOUZNK0NLRmV5MmV1TWZs?=
 =?utf-8?B?bk9YdmtLN25wNm9MY0FuTzNkeXplRUVvdk5tYjRibktNY1NObWRZK3BUd0NK?=
 =?utf-8?B?Vy9JT3poMldFSTFjaitLZGRLWDlucTRLdXVZcDFZc3N6b3lETWhGaEI3aTZQ?=
 =?utf-8?B?WXRlckpadCtDc2wzSUo1SEhoK1B4NHNRc2ZJeElKNjY4V3lLT0hFVFRxWjBL?=
 =?utf-8?B?SkFIQVFtSWUvZ3ZsblJETkI0a3ozWWpWQmtFSkQ4QmRVeFNGZVFkcjkwZVJ4?=
 =?utf-8?B?WTh2R3crZXNuSnVRY0pzK2o1VjVKR0ZxYjZkV0FhUEc5Ui9UMzFYajhTa1hj?=
 =?utf-8?B?dDhTR3lkVkFkSE5SVEYwRHQyMkQ1K25OTEdVTnRDUUpxay9lSE9icm9CTUY3?=
 =?utf-8?B?Z3hqTDVNaEFLV2N4QVoyd0FMVFVIN3UxZVBKSS9ILzVzeHEzM2dPclEzZU52?=
 =?utf-8?B?bjBJWGV3WDZHdlVGMWErNFV6ZU8xUGNtTHlZYmtTd0IydkV2dXdTMWxub2Fy?=
 =?utf-8?B?Yk0ybXN6TGhYSSt1Z2pBMlFxcDhCZFFReFBJazdsNTB2cTdlekVpdFVoTTkz?=
 =?utf-8?B?VjNheVhNdWVjaFBFUlIzRzl2RjMzc0xqcStBZ3l1d1BmMHJPaWZWTHplUG5U?=
 =?utf-8?B?RS93RWN0Z29kcGMwNmlEVGwySUdZcVhraUhqNWwwaHNZNnYrTkFwVlhUQXl2?=
 =?utf-8?B?OVA4OW8yL1ZCd0pmbnhCOE5CTHpDdWk3d0k5bzNOYVNNU3Rxa2k2RnJLSFFB?=
 =?utf-8?Q?lWiuQnPM2Dq10RrZWuJ5Mvg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: baae63c3-9c0b-4c52-8ea6-08da7670ce1f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2022 23:26:49.4185 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +avWsg/SPTtHrBL0zCoaVbEH+pKTwcE0x9ZaCoZ9X8vTlNqxbid5GbD9igTMFslYtKFrvx4SoF/mn5MUOqNaUut/jdkhXp7oTEv5ZrPyIEI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5582
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Only disable PMU on stop if
 not already closed
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

On Wed, Aug 03, 2022 at 11:03:25PM +0000, Stuart Summers wrote:
>There can be a race in the PMU process teardown vs the
>time when the driver is unbound in which the user attempts
>to stop the PMU process, but the actual data structure
>in the kernel is no longer available. Avoid this use-after-free
>by skipping the PMU disable in i915_pmu_event_stop() when
>the PMU has already been closed/unregistered by the driver.
>
>Fixes: b00bccb3f0bb ("drm/i915/pmu: Handle PCI unbind")
>Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>Signed-off-by: Stuart Summers <stuart.summers@intel.com>
>---
> drivers/gpu/drm/i915/i915_pmu.c | 8 ++++++++
> 1 file changed, 8 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>index 958b37123bf12..0d02f338118e4 100644
>--- a/drivers/gpu/drm/i915/i915_pmu.c
>+++ b/drivers/gpu/drm/i915/i915_pmu.c
>@@ -760,9 +760,17 @@ static void i915_pmu_event_start(struct perf_event *event, int flags)
>
> static void i915_pmu_event_stop(struct perf_event *event, int flags)
> {
>+	struct drm_i915_private *i915 =
>+		container_of(event->pmu, typeof(*i915), pmu.base);
>+	struct i915_pmu *pmu = &i915->pmu;
>+
>+	if (pmu->closed)
>+		goto out;
>+
> 	if (flags & PERF_EF_UPDATE)
> 		i915_pmu_event_read(event);
> 	i915_pmu_disable(event);
>+out:
> 	event->hw.state = PERF_HES_STOPPED;
> }

lgtm

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Thanks,
Umesh
>
>-- 
>2.25.1
>
