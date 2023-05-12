Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EE3701293
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 01:44:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 524C610E028;
	Fri, 12 May 2023 23:44:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CDA410E028
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 23:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683935083; x=1715471083;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GiqBgY2kjexzxeWGG+aMxiaM2fh3sW5yE5Hk7CIufwk=;
 b=JxL9IhQsP8KVnDPM6LHyh+htSZxh+/oMYspv7Z790G99654uw51aciGH
 HCyPJCLb3Pco+t8ADs9wfwpG6aqBLuk8XXMROnVrV5A/emGr8Z25dughv
 uTVXnygwSt9sVwfqParFkEek0nzWH5r1cfRBMkX16WA5iy4kX6g/tlG8T
 HjAxgILMOD5P7UIrdu5bhiTII6sZLNCWoHkDsyKV7/GpUalGUpaty/sW4
 BtZlBvp3I/YiGm/I1dga42Rd50IOsXjiMucErFqe/BHneRjezqLIgzpSW
 n7/vleR44U8dLMFBiEMV03DhJVvNv1sre53N9e7aC4ylGeK1oBT2yBT1w g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="350931329"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="350931329"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 16:44:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="1030243783"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="1030243783"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 12 May 2023 16:44:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 16:44:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 12 May 2023 16:44:41 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 12 May 2023 16:44:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ULi1YIMdRac8hxqRqUc9hnHOb2C4cqGtQNfo14xtfT5KK/xEHcuz01BnnJQrcTcqn/cpix4pS852MgWPrkDdQwB2FU52SfO9EXxxj/lI1kgacY6TBnY9/+qx6hzOJ3/CcZ7gADKYl/NBrcfu/Vr75kkob9JBTlXX8uXe20yFawNWJQRpKwEwjm+WnJxPspVgSRQIGaA+i5yXemxZ2D37RQ5bplfYW8dC/ARLnjRMX1NVfKCiM9gEaSKf/RJe+d2rimbweKT7OQC8WTbRzcBexYGseKyUpa3Qx+QMUQ8/9wZwWHq6xA1nY7bdQ7xWBYY3hYHrMf7XPrZO4fP2waZXjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m09L7iF4LhWFQdt9iozg2wLGzAcLDiGip/hIpwKCX0s=;
 b=XO4Z/5wD8x4pwsktZyPVvnI8eNx8cDFm7cvB5/Y2KcMEGdq0sjR3BjCiiCGPuxv3drVMyXz84sk2PTcJgxxwkd0/9N1iBYC/K0LHaYxRedFX67f619BY+QiFPhT9Y+1KaHkuxDkucOdvKRDyS5bZTXLSc13P9YlZtExME0jHHJ5cIdGqdP4lzCtQ03XJzb6bf4rVqR8QZKZgyMhHqFoZbq9vfiNW+Ncfz9aIRDljcOtoegv3f1CVdlul7dchK00seAJ9xQ9z5Ua5Mvc55ApfEdKRypj19PRPBlqEvgMprAl/Bs2Wbo4Cq0uIKM+9G0tGFs5zfAJ1GB5swON4xKTJgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SN7PR11MB6995.namprd11.prod.outlook.com (2603:10b6:806:2ae::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.21; Fri, 12 May
 2023 23:44:39 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3435:8461:a51:17fc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3435:8461:a51:17fc%3]) with mapi id 15.20.6387.023; Fri, 12 May 2023
 23:44:39 +0000
Date: Fri, 12 May 2023 16:44:29 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZF7PXazccbkufp1X@orsosgc001.jf.intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
 <20230506005816.1891043-5-umesh.nerlige.ramappa@intel.com>
 <87ilcxdw0g.wl-ashutosh.dixit@intel.com>
 <ZF7BMH5W/lzS2tq0@orsosgc001.jf.intel.com>
 <87h6shdtn0.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87h6shdtn0.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BY5PR17CA0070.namprd17.prod.outlook.com
 (2603:10b6:a03:167::47) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SN7PR11MB6995:EE_
X-MS-Office365-Filtering-Correlation-Id: f516f8b3-3651-4e3b-3050-08db5342d980
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TsJ6H1bXMU9E4pWKtfD4SLRTrcb5XIzoLKbHwcOJWCY/rN4MsyOSM3td2aILOEoTHyazkpPG2ketHeX37FcSw+2yaFWSloewGP/OhBz3/H4lBOkJanKPjAPoRVZYI1/AyKEgOwNfUhIMah9niWNswTwkHNLTmJuJtWmTpOMUkqYxliqnTPzF0SWqR61VtEiFfHr+SIwyNVabmBGQlb3JFJ4odxq9jCTub70poXuRIVd5Gsf2b+75/NWNsmmMa99uan+VrbbIRfxGMUxl1b01ZWcE/pXjCLQ1IXDBYYlBS7ZywJDIey7G0LxchPaYxAqHzMnNgYNq4A7q2p+NEdOoqCCh98oUAZ0iyo+hDrhqTXC95whPy07/slW7bh5/wj3ekvTNi5cpg2ni4JkPEjWifTvvZePH3b3rMH/ulAx/QuoWS4weEcFe83hoYIjAqquOalR8tUSkKCub92kJz7jzGbcso4ztoM60q5bXicPED3fJ04tJxWXLYkNzUD2qum6L5IqB21K2CzT+mY8odaU+bhZ03aiqRKPoJgQ16APAWFXJrCIMPWkeyEJCLMsGm6l4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(39860400002)(346002)(396003)(366004)(451199021)(4326008)(6636002)(66556008)(66476007)(478600001)(66946007)(316002)(8936002)(8676002)(6862004)(41300700001)(6666004)(6486002)(38100700002)(82960400001)(186003)(6512007)(6506007)(26005)(5660300002)(86362001)(2906002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TUhLK3BOZE9EZzhDRzRwY1AxSFBLUEo3NmYrMGhnZ2tNZ3dqeDgxSGpWSUdV?=
 =?utf-8?B?TWJuOWpOM0c0Wm5aQ0l3SFRHSC84QkxEZjRwVzJzaFBQUFd0eHR4aEpJTCsr?=
 =?utf-8?B?Uk8xc0RnRW8ycVRtRkJ4Y21leTVuUllrYzlVMnhWdmVJd2YreWthVUxhRWdR?=
 =?utf-8?B?RUxZcjVKOC9iRThLdFdTMmlBUXBwQXpRUWswK3hWL0psVjFmeXIvOGpJaE5o?=
 =?utf-8?B?RS8vcjhFNVo3WWNZenlVa081SHBaR3FabU5HK0JYWkVrNGxoNlFDcFVreitO?=
 =?utf-8?B?K0Q4YklwWC96c3pIMHhCNExsaDE5VjlrVlgzcW85QVZ2aStkNTdJTjFVY0hs?=
 =?utf-8?B?WDdtd3VRTXRHTWhqYXNzcThKcXlBcTBmZFJwbDU2YTlzU1B4U1BEU3Y1ZDl2?=
 =?utf-8?B?ekJFMUhCbkpQQjlkYVB1M3V2TVo0VFRHZTNyWWZBdlJUbld0N3lSckpyZW1M?=
 =?utf-8?B?RGFhMThXZmNOa1dOQ2xCNXpDdjNrMWw1NnhJRzl2Yy9BYXBYdEVKbU56WWtL?=
 =?utf-8?B?Mmd2bkk3ait3akU3MFZhMlo2Q0J2L3R2NXF6blliaTFaOG93MzJubDZBWHdQ?=
 =?utf-8?B?Q3MxYnZQSkoyVDUzby9XdE5uRGJUK0R2VGdWbEJSVGdoM1NOSjQveDZyUVM1?=
 =?utf-8?B?Ym5XQ0JGRkV0cWc4WWpldVZYc0VuRjd6YU40cXNkcmpHeithdkZwZlNPbnRj?=
 =?utf-8?B?b3dUaXNmRkNzZ000VExlM3hyakovdEJzYXhic3ZaR0NEbVNwTzcvQzlyVkRv?=
 =?utf-8?B?cU5ORWhFQURNbG4xNWhUdmQxMFRSRGdZZDhnNFpnbjhaclRvcUdwME5oV2VP?=
 =?utf-8?B?SGhjYzNaZTZkWC9QV2l2VHhIVlpBbW91c1d6ei9GQzQ4UEJaN0FYV3pBVnEv?=
 =?utf-8?B?dm04YUJOU1BRQ2x5cU9uYlRiOHJxNlBOalJMOG9sblByQnpteTEvOFFTSVRX?=
 =?utf-8?B?YjZlaThLQUp5cEJmQStvRVY4VmNWN2s0aUlwWG9KL0lGNThZdHZjMXJtelBG?=
 =?utf-8?B?MnpRcVA1bGx0SmVqcVpVT3JXZDNGVmNmZTRscFZXalE5K1hqalczYnlnVy85?=
 =?utf-8?B?bm1GS2h2NTZhcDdIMTFQMjhnekhnRUhIZVZlZ096Z3VPc25ZVS93WmhrN2Np?=
 =?utf-8?B?aEd3c2hMc05GV3BVa0Q1dE5KTUEyMVozL0RhZnFrVFl0UnZoWk1VV0tUa3RC?=
 =?utf-8?B?YlhKbFR3R0NxbUljSVQvdy9QeFQ3cExMd1ZUVVpIL1c4QjI3TForRXNUZnN1?=
 =?utf-8?B?bTVrMm9iR1hxSTBvZkJyRkVJOU11azJwcEZwTlFPRG1PTTZMVmFRSnBGRTZG?=
 =?utf-8?B?MEpZZlFmUTRLUTZ3d2R5QmlHMk5PemR6RU9mN3dPeHBQRUc2ZDJ6SU1FZDdw?=
 =?utf-8?B?NWU1STJwY3NQUFZDS3FpS1JLOEtjZXRHODdKYjJLUExRcENGOThscW4yamJr?=
 =?utf-8?B?TFhjZWw4SFd3UHpnS01RcHV4U3lwV0N3Kys1d3lyWm53MkFLb2JaeU5jYnRh?=
 =?utf-8?B?N292RUFINDM4L2hlMk1YWjhGTWF4U051Z25JazdFV1BWVTV3NnhUVnJkY1RT?=
 =?utf-8?B?Sk5Rd2dLYVZ1dCt4SWZsdzBRMU9jSzc0OXlneloxTDd5a2NQNXlkNFcwN3RY?=
 =?utf-8?B?dFRYRlE5M2xPMTc0bXYzWnhxTVBTYUtyd2p3aTZQWjBTSWlGcmpyQjRwQ1d0?=
 =?utf-8?B?NXl2RXB3bFlZL29TUjlhNjNYYmxUU3c5UjdRU2c2ZStESzk3K3pma2tZOXFF?=
 =?utf-8?B?bFJOc05CUXpwd1dVNGZlcVprTUJxeEZuMmFDY3JsdWdzd25TakhMRFRCSTFE?=
 =?utf-8?B?V3p6Wmk0SUlNVmYvSVF1SFNETDUva3dyemc3UkQvV1k2VU44QXVkUWlwRE92?=
 =?utf-8?B?QnY3Z2ZGMkZIc1VzOFN0emkyYkZVc09Bc0FBS0lYeVdmT2VXNDZxM01WMFFo?=
 =?utf-8?B?KzMwbmxJek5pOFFWWlRqY3o2aWkvM0NWRmNlWXVSdTVsREZWZitOOEt4WTdY?=
 =?utf-8?B?ZTd6Q3hCQ3ZVdkpKYUR1amIwN1c3bG5MSmtzS1FzbE1QUWVuRWhFc0dlNzI4?=
 =?utf-8?B?KzJpcVBibmpJK0xFR1Mzb3ZMb2NuRXgrZi9qRWNMMWtSbVZrUWlBMjFpTWJu?=
 =?utf-8?B?c3VMbE5Zd21nYlNieGUyc1BPaUJYV1BmejhudlRxb1p4dnpZMGtpRmtsSGVI?=
 =?utf-8?Q?Fcp73mfhyKzOESrlgsI/ysc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f516f8b3-3651-4e3b-3050-08db5342d980
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2023 23:44:38.7703 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5e1D7TYELnuv9RdM0mLdmtDfXTLQBA4sxTCT1Wh0kPvKytzxUtFcCNGB8Ho93oD4ubgm5tNqGhwRzHT/D5CNrzyLqAH4+S95ktiPv1Jw+rI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6995
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/pmu: Add reference counting to
 the sampling timer
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

On Fri, May 12, 2023 at 04:20:19PM -0700, Dixit, Ashutosh wrote:
>On Fri, 12 May 2023 15:44:00 -0700, Umesh Nerlige Ramappa wrote:
>>
>> On Fri, May 12, 2023 at 03:29:03PM -0700, Dixit, Ashutosh wrote:
>> > On Fri, 05 May 2023 17:58:14 -0700, Umesh Nerlige Ramappa wrote:
>> >>
>> >
>> > Hi Umesh/Tvrtko,
>> >
>> >> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> >>
>> >> We do not want to have timers per tile and waste CPU cycles and energy via
>> >> multiple wake-up sources, for a relatively un-important task of PMU
>> >> sampling, so keeping a single timer works well. But we also do not want
>> >> the first GT which goes idle to turn off the timer.
>> >>
>> >> Add some reference counting, via a mask of unparked GTs, to solve this.
>> >>
>> >> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> >> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/i915_pmu.c | 12 ++++++++++--
>> >>  drivers/gpu/drm/i915/i915_pmu.h |  4 ++++
>> >>  2 files changed, 14 insertions(+), 2 deletions(-)
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>> >> index 2b63ee31e1b3..669a42e44082 100644
>> >> --- a/drivers/gpu/drm/i915/i915_pmu.c
>> >> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>> >> @@ -251,7 +251,9 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
>> >>	 * Signal sampling timer to stop if only engine events are enabled and
>> >>	 * GPU went idle.
>> >>	 */
>> >> -	pmu->timer_enabled = pmu_needs_timer(pmu, false);
>> >> +	pmu->unparked &= ~BIT(gt->info.id);
>> >> +	if (pmu->unparked == 0)
>> >> +		pmu->timer_enabled = pmu_needs_timer(pmu, false);
>> >>
>> >>	spin_unlock_irq(&pmu->lock);
>> >>  }
>> >> @@ -268,7 +270,10 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
>> >>	/*
>> >>	 * Re-enable sampling timer when GPU goes active.
>> >>	 */
>> >> -	__i915_pmu_maybe_start_timer(pmu);
>> >> +	if (pmu->unparked == 0)
>> >> +		__i915_pmu_maybe_start_timer(pmu);
>> >> +
>> >> +	pmu->unparked |= BIT(gt->info.id);
>> >>
>> >>	spin_unlock_irq(&pmu->lock);
>> >>  }
>> >> @@ -438,6 +443,9 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
>> >>	 */
>> >>
>> >>	for_each_gt(gt, i915, i) {
>> >> +		if (!(pmu->unparked & BIT(i)))
>> >> +			continue;
>> >> +
>> >
>> > This is not correct. In this series we are at least sampling frequencies
>> > (calling frequency_sample) even when GT is parked. So these 3 lines should be
>> > deleted. engines_sample will get called and will return without doing
>> > anything if engine events are disabled.
>>
>> Not sure I understand. This is checking pmu->'un'parked bits.
>
>Sorry, my bad. Not "engines_sample will get called and will return without
>doing anything if engine events are disabled" but "engines_sample will get
>called and will return without doing anything if GT is not awake". This is
>the same as the previous behavior before this series.
>
>Umesh and I discussed this but writing this out in case Tvrtko takes a
>look.

Sounds good, Dropping the check here in the new revision.

Thanks,
Umesh
>
>Thanks.
>--
>Ashutosh
>
>
>
>> >
>> >
>> >>		engines_sample(gt, period_ns);
>> >>
>> >>		if (i == 0) /* FIXME */
>> >> diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
>> >> index a686fd7ccedf..3a811266ac6a 100644
>> >> --- a/drivers/gpu/drm/i915/i915_pmu.h
>> >> +++ b/drivers/gpu/drm/i915/i915_pmu.h
>> >> @@ -76,6 +76,10 @@ struct i915_pmu {
>> >>	 * @lock: Lock protecting enable mask and ref count handling.
>> >>	 */
>> >>	spinlock_t lock;
>> >> +	/**
>> >> +	 * @unparked: GT unparked mask.
>> >> +	 */
>> >> +	unsigned int unparked;
>> >>	/**
>> >>	 * @timer: Timer for internal i915 PMU sampling.
>> >>	 */
>> >> --
>> >> 2.36.1
>> >>
