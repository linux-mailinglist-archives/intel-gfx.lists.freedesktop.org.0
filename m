Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB11A7D7473
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 21:37:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3DDF10E6E1;
	Wed, 25 Oct 2023 19:37:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2F0D10E6E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 19:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698262625; x=1729798625;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ac2GIoTRsQxvLzGjFj7TA9fb7d4ks9QB1Z7nE3lsUH4=;
 b=lenpgOe/YIJ7jyuo5DE170qGhyKrFHNOQC/GocEqTqX98CAYRqH3HKAK
 BJdGckFyIpRpCvACM3Q+k5a9SNyobgzgrqaCUbcZyN/B8isJHg3A+/Uja
 3pyfWJUzuQZYYuCjb1MZ7XQ/C+biToD8V23BeGdTUB6bR0In65xtQ3hpK
 c2ccTf+00gjcQUGbENmZUV0EQdDIykAmVoiZJypUMFBbCSAElp/X6shwM
 R7Yg/IRsCQd1JgMeG1M/LxnZOkFl0Tim75F/uwMfm/MgC6BuyU2Ghv7ck
 lczd3r3WiKt0VgihtJhj8LagzBCgPQHu2GIvZ5SWIp+gzmFnl+X3/g2Zt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="387209424"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="387209424"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 12:37:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="758954173"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="758954173"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2023 12:37:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 25 Oct 2023 12:37:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 25 Oct 2023 12:37:03 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 25 Oct 2023 12:37:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RnDBHyi6E6fQAenwoLYLaApYrSIGqXQE1L6gTrfspKlACF1tfPLHaauc92Y5KmNgQ5+yi0aHwg4wYmaxRIcvMzIMwr+jVd0bur27ksL4SkenwQTwvzlFcXK2UCJWQPe4LBxYab333CQcMD0syQuG8sRXwtrgXv644seXHuPMoxdnC2nzFPTM7yGu6bSHgYBsDmVKiQ7XK14Oal8/L9FABPAyyH2voHEcWCGogg/hd3HFe88zf+yxk0Qb+6zVEOYeI2QjkmrVXJutscx4y8+5EIEr3zyMxImuJSPZGS2BoeRXz2C6nZsG6ddN2abtqFVLLOZi7Q2i6Zgft/8X4XymXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jpLdFHbJnb+BVe9GBhmItYp7ZTVYYuogghhIAp0nWYM=;
 b=WhrT4YJcRqleIk9EDkiA/AU6ozbkAWNILVuEnoecuckuhFV4neBS5TH7n56z7RoiftAQK1Qc9VuUvNxr8h81UAwGOsiuXeEQb/jDfqrgW7XoJTlwgg8EgO+DGPi4J38UU6rNau9hkiHLlH0Oka48kY2uGOPEdwdXDm5shCArcr2VVVEmJXFWiq3CBJKxVL/sP4RQ2dWHfTRZU3xXjOI4olFHtSQv3ugtQw3jTN59K9chviH1h0WXqIH9RAxikNQciPeHrkw85x5jD8DYEhhwJ3A88EJleVDbmOLtxaPiZ8puzDXrCUDtPwr5UmwtJlZ1+PQiuhKFWRpViE5zU0v4vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 BL3PR11MB6315.namprd11.prod.outlook.com (2603:10b6:208:3b2::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Wed, 25 Oct
 2023 19:37:01 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e73e:dcc0:c5bb:49b9]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e73e:dcc0:c5bb:49b9%7]) with mapi id 15.20.6933.019; Wed, 25 Oct 2023
 19:37:01 +0000
Date: Wed, 25 Oct 2023 12:36:59 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <ZTluW/ADJpEqrCu1@unerlige-ril>
References: <20231020152441.3764850-1-umesh.nerlige.ramappa@intel.com>
 <ZTe2ka9rOHQDxs8t@ashyti-mobl2.lan>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <ZTe2ka9rOHQDxs8t@ashyti-mobl2.lan>
X-ClientProxiedBy: MW4PR03CA0203.namprd03.prod.outlook.com
 (2603:10b6:303:b8::28) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|BL3PR11MB6315:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a998eb4-ac77-491f-6211-08dbd591c2b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 08CH6OJlbuHxs4q4xbcFkQu79A2k7YF09mvaZcJoiimlRJpU90RDqlUm7T09Fvez54Ah2doMfIYiHP5ud3P6G3IiMbEJ3wMLGvxLOX6UhtPTIa24qnMSDiCIuhZMK1dyN7zhmc77k22WHTU4MCw+RWw27AijFhkgzs3o7PuGaz6PhGFUJhytoT0mr0EUqvBaXlKGgdtX+iDV57bmJmR3pemaA5PxvbxO/j69VtRxHRYqOO4hEZOlIlMno3sKb2zFsljYXDR85xrSBQfSzSx7YIOA1kofzAIDrg/lUJaEGlz1YzK1ooeQTmTe2B9q+XkkzZsY3s+Sxx0j0VAPGlj4k62tvKLKv9JYTorPELWjfEHJz0VxjBIY4GWeP1mcazALFivT5cAb4DnO6L0YQXdkVXFkhkjNXxZBKVqQp2asgth/XydfEpDz/Noo2s7MgexrkI52e1haWEEUAEbhDaE52tv6L93wzooRws65FdyxYm8AeApa5p/veGtr2a8V6NTzYtEGHpihrV4FYBnA/O+eniDG7Q96kyaUOMiH0oxAqIE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(136003)(376002)(366004)(396003)(346002)(230922051799003)(1800799009)(64100799003)(186009)(451199024)(2906002)(66556008)(66476007)(66946007)(966005)(316002)(6916009)(478600001)(6486002)(41300700001)(8936002)(5660300002)(4326008)(8676002)(86362001)(33716001)(9686003)(83380400001)(6506007)(6512007)(82960400001)(38100700002)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b1dNNkhiMzYydWROZ1I1TFJ6N3gyTEI2aDRHSGZodWFUcWg5VTlHOTBSb3Vs?=
 =?utf-8?B?cExWUjRxWnQyM3VGUGttZkx5Rk5qYk1GU1luZTUyOUMzWG9sdDhFdjNKYlhR?=
 =?utf-8?B?U01ta2ExOXAza1VMUTdNK0h2R2JYQ25QbS92cG9SdXA1UEp2Q29QYkdyaHp4?=
 =?utf-8?B?NkJjZ3E1LzF5cWRETjRnbWNTOVloMGFrcHhOd1JDL2F0ZjdxSWFvTVY0anpz?=
 =?utf-8?B?MXlWejFEVzN2UGFsM0NBemxGZWljZDVFUm5lcVdURURZU2pybTZjNnJ6NGxM?=
 =?utf-8?B?b2poeElkZnVWSG0rV3o3TDFpOEcrV0IxdkRWMC9kVVdmUCtyejFIcDFlbjFv?=
 =?utf-8?B?ellHemdKcnQxdG13RngrMzBVakRuSTFKY1Q0dmQrREFQUTM5TTNiRCtqaXY2?=
 =?utf-8?B?WFRoYWU0WkdlcGRCdFJBUmdzeFd0c3FPNUtVZ3R6ZCtabjRWcnVYV1RNSWtn?=
 =?utf-8?B?WTJwS2JWcnl6NkIvS2Y1YzB3LzVYSFhhRytoZ2w0VDBvb0pGRTdENTZiNlVY?=
 =?utf-8?B?d2lWb1BmRElsNUVnQ0thdXZvSXUvMFJuT0RzeDdBSFhpZEs5c0loN0Jxdm03?=
 =?utf-8?B?NGJiMzB2SFJXVjRvQ0F3Qy9JU3lXQk1HQWVWSnBIWEhIQkhXTlpxVVlUQUFL?=
 =?utf-8?B?cWRFTURWdldQQXoySm1qZmZlc0dsamxwREhESksvTzVqdmZ3NUVqK2g2dURW?=
 =?utf-8?B?ZDVWMGtuQlhWS2VQUnpKOXB6UEdkdFlTSG9OWXZiNDYzWEJTVmYxK0taQW9h?=
 =?utf-8?B?NGJXRzFLQy9Xd045N2FhQXoyQkg4V09jMUp0SDVramMzM0QxVVdTL2x1VnRk?=
 =?utf-8?B?V3c5MTVXbHlVT2FNMk9yb3NYYkV0VXFyL3lwdFlhazdUaXRRb1B2NVQzZ1g5?=
 =?utf-8?B?aXBuM0VwSTg5NURDaHBXZkF3Q3J5djc5OXBFbC9XeWh0bGtEMTFrZjJEUWJa?=
 =?utf-8?B?R01OTW1uNjhBa2hyWGtaMnBxS0lvcW5QVFlhTE9TbVYxVVNPcnpjSnFVci80?=
 =?utf-8?B?eFJWK1NKM3ozZmJnS0NRMlJjUlRiNmlrL1dvWThsdTVXdy80aDF0R2lMeTRs?=
 =?utf-8?B?QjMyMVFzS2lqdlBMSVRTTWltRWRXNU1Xb0FkT0NoNk8yeSt6QVljd2NjYWtL?=
 =?utf-8?B?TndaTWNmUnBrS1V5T25aQmNnWWNMRGxlTTZpVEtFeFBXRXZZK2U3SnNuOU15?=
 =?utf-8?B?MXF0a2NVWVIvYStoV1FDQmpwOHRDamJSVGQyYzZ6NW5JbkNOZS9NQzdkdTA4?=
 =?utf-8?B?MkNkRDJnMi8rMUh4RTd6Z2N1am1kN3d3K2NTSFRQa0lJNEFkeDdoekpmbjY5?=
 =?utf-8?B?SWZsRGVVMUpVdjNXNVBQSllONDdqZWpFVUd5OG8rUXlvdXlyVjZFdURqNnZi?=
 =?utf-8?B?N2ZCbWZEblBpLy90RDVUa25sNTJ1S1NtWTlzQkkyb2NLeEhZK2xCbWU5WkxO?=
 =?utf-8?B?YjRaUlhGWjZqNWhoZlViZWFkOEpQSU1hWFU2YjRYSGF2UnhNSTM1Y1FteHND?=
 =?utf-8?B?MTlPWVNoakk1YlJnLytBbnd1NUxtVE16YUU2YkxEMElrSUlwczRrQ0tvb2dK?=
 =?utf-8?B?T2ZjRjRTM0tZc0xBRGo5a05nSUJIWXJ4UVNTRjdnQS93czEycjFBamhPdFdC?=
 =?utf-8?B?bnVoUVlYRkdtMzYwblR5a1NMSDZoWW1ENEUvdzRqWjlXYUxscC9uZy83WDV0?=
 =?utf-8?B?eCtqQUY3SVk0UHJhblJWb25rbklpMzZLdHF0aGxURTNrbmpnQnFPeHJjL0xy?=
 =?utf-8?B?RE80Z240N0NOclUyeWp2MXc0c3Fkb1JVR1UrZktPcTlQbGZTdFl2bVpSeVla?=
 =?utf-8?B?QTZ5UnZoenNtQzFOSUlZZ0dlWm1oendMcGRWT0VFQ1RMcXFSUjR6R1YrY3VG?=
 =?utf-8?B?SGM3N3RhRnp2K1BhTk9RYXZPeGJUTExOeFNMQ091UC9sMkJLUlBNdlZWWmE5?=
 =?utf-8?B?djFIMU93cjhxYzI2V2NWQjlxRFRWektVakQzeFZ5QnBmeER5VHhZS0ZYeUk4?=
 =?utf-8?B?M0NPWnNnWWVRZ1pnUTJTTkluV1liVnZ6M2JzSldOMWhNQXdzdmo5WTZRZHZm?=
 =?utf-8?B?blUzS05FaWJaM3dUVGlCSHNEdHdxMXEvNjVRRGIwREJyR1ZmMWxnSVFSbzRM?=
 =?utf-8?B?L3JnRGZFNWloZDdJYmhyQVJENC85ZGxqY0RlZ2lFeElYdWE2WkIvbEFCZ0JQ?=
 =?utf-8?Q?US3ki4GmcoH7PJ1szEwohv4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a998eb4-ac77-491f-6211-08dbd591c2b3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2023 19:37:01.7703 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DM0u4hG8Nyoi3MDJNthAp8862f8xYE1vc1wiEwVGVQKXIOaTzJe8OvhGPuIp3pgpVSVpeQtBOR4RLCoU6rD52K65X8W7ex7lUL9W4qX1WvY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6315
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Check if pmu is closed before
 stopping event
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 24, 2023 at 02:20:33PM +0200, Andi Shyti wrote:
>Hi Umesh,
>
>On Fri, Oct 20, 2023 at 08:24:41AM -0700, Umesh Nerlige Ramappa wrote:
>> When the driver unbinds, pmu is unregistered and i915->uabi_engines is
>> set to RB_ROOT. Due to this, when i915 PMU tries to stop the engine
>> events, it issues a warn_on because engine lookup fails.
>>
>> All perf hooks are taking care of this using a pmu->closed flag that is
>> set when PMU unregisters. The stop event seems to have been left out.
>>
>> Check for pmu->closed in pmu_event_stop as well.
>>
>> Based on discussion here -
>> https://patchwork.freedesktop.org/patch/492079/?series=105790&rev=2
>>
>> v2: s/is/if/ in commit title
>> v3: Add fixes tag and cc stable
>>
>> Cc: <stable@vger.kernel.org> # v5.11+
>> Fixes: b00bccb3f0bb ("drm/i915/pmu: Handle PCI unbind")
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>argh! 4th time that this patch has been sent. Please next time
>use:
>
>   git format-patch -v <version number>
>
>Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>
>No need to resend :-)

Sorry about the versioning. Will keep inn mind next time.

Thanks,
Umesh
>
>Andi
>
>> ---
>>  drivers/gpu/drm/i915/i915_pmu.c | 9 +++++++++
>>  1 file changed, 9 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>> index 108b675088ba..f861863eb7c1 100644
>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>> @@ -831,9 +831,18 @@ static void i915_pmu_event_start(struct perf_event *event, int flags)
>>
>>  static void i915_pmu_event_stop(struct perf_event *event, int flags)
>>  {
>> +	struct drm_i915_private *i915 =
>> +		container_of(event->pmu, typeof(*i915), pmu.base);
>> +	struct i915_pmu *pmu = &i915->pmu;
>> +
>> +	if (pmu->closed)
>> +		goto out;
>> +
>>  	if (flags & PERF_EF_UPDATE)
>>  		i915_pmu_event_read(event);
>>  	i915_pmu_disable(event);
>> +
>> +out:
>>  	event->hw.state = PERF_HES_STOPPED;
>>  }
>>
>> --
>> 2.38.1
