Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C6D2889E9
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Oct 2020 15:38:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 631C76ECE6;
	Fri,  9 Oct 2020 13:38:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E1C6ECDF;
 Fri,  9 Oct 2020 13:38:40 +0000 (UTC)
IronPort-SDR: pl+rfkT+f+iILjVYugFTjEXRpg4XxFVmnkda2FS+TMwwZOnVXIue7L0zGnxJw4u4+rUTzN9kRx
 xL3rskoWW/pg==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="152403299"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="152403299"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 06:38:39 -0700
IronPort-SDR: Yzv4f/J8igKasFfYfpPw8bP1SPceoX1nMemoD7bVZHUVdBbghwUzYBEezvyYugrknx7NOt93G3
 ZnvNEwDqoxbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="298438741"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga008.fm.intel.com with ESMTP; 09 Oct 2020 06:38:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 9 Oct 2020 06:38:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 9 Oct 2020 06:38:38 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.1713.004;
 Fri, 9 Oct 2020 06:38:38 -0700
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "K, SrinivasX" <srinivasx.k@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/ehl: Remove require_force_probe
 protection
Thread-Index: AQHWm/FceboB2e8wtEe68XkD/d20damLTsaAgAAAfICAAAIFgIAAAfkAgAQXZwCAAFXKgA==
Date: Fri, 9 Oct 2020 13:38:38 +0000
Message-ID: <B6C174E8-161A-43BD-AFDA-21C94F6D56E3@intel.com>
References: <20201006145632.117291-1-srinivasx.k@intel.com>
 <2f7809798dd0b59246d67c5044dafb1e518fc4c5.camel@intel.com>
 <160200650945.2919.11750150118902885340@build.alporthouse.com>
 <3CDB63EE-D1CD-43E4-A977-4E966CD19313@intel.com>
 <c88bc0fbc4956395324674ca202b395326208888.camel@intel.com>
 <BYAPR11MB3014087624B8206C05362830F9080@BYAPR11MB3014.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3014087624B8206C05362830F9080@BYAPR11MB3014.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <96718CA05EE11741980FA25AFEC1527C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Remove require_force_probe
 protection
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
Cc: "Pandey, Hariom" <hariom.pandey@intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> On Oct 9, 2020, at 1:31 AM, K, SrinivasX <srinivasx.k@intel.com> wrote:
> 
> Hi Rodrigo,
> 
> How do we get W/A and rc6 changes in, do you have any details?

I told based on what I was seeing on https://intel-gfx-ci.01.org/tree/drm-tip/drmtip-alt.html?
focusing on the issues that are exclusively for ehl and not happening on other platforms.

It looks like workarounds are fine there now. so I'm not sure if it was sporadic thing that day.

for the rc6 there are a few testcases failing around it:
https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_675/fi-ehl-1/igt@i915_pm_rc6_residency@rc6-fence.html
https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_675/fi-ehl-1/igt@i915_pm_rc6_residency@rc6-idle.html
https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_675/fi-ehl-1/igt@i915_selftest@live@gt_pm.html#dmesg-warnings415

> 
> Thanks,
> Srinivas
> 
> -----Original Message-----
> From: Souza, Jose <jose.souza@intel.com>
> Sent: 06 October 2020 23:33
> To: Vivi, Rodrigo <rodrigo.vivi@intel.com>; chris@chris-wilson.co.uk
> Cc: Ausmus, James <james.ausmus@intel.com>; Nikula, Jani <jani.nikula@intel.com>; Pandey, Hariom <hariom.pandey@intel.com>; Roper, Matthew D <matthew.d.roper@intel.com>; intel-gfx@lists.freedesktop.org; dri-devel@lists.freedesktop.org; K, SrinivasX <srinivasx.k@intel.com>; Surendrakumar Upadhyay, TejaskumarX <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Remove require_force_probe protection
> 
> On Tue, 2020-10-06 at 10:55 -0700, Vivi, Rodrigo wrote:
>> 
>>> On Oct 6, 2020, at 10:48 AM, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>>> 
>>> Quoting Souza, Jose (2020-10-06 18:46:45)
>>>> +Rodrigo and Jani
>>>> 
>>>> On Tue, 2020-10-06 at 14:56 +0000, Kamati Srinivas wrote:
>>>>> Removing force probe protection from EHL platform. Did not
>>>>> observe warnings, errors, flickering or any visual defects while
>>>>> doing ordinary tasks like browsing and editing documents in a
>>>>> two monitor setup.
>>>> 
>>>> One of the requirements was also to have CI BAT all green and
>>>> shards as green is possible but EHL don't show up in CI results, we actually have one single EHL machine in CI but I guess it is not able to run all tests that shards do:
>>>> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9097/filelist.html
>>> 
>>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip-alt.html
>> 
>> we are really close to that point. We just need to fix some w/a and
>> rc6 issues before applying this change.
>> 
>>> -Chris
>> 
> 
> Huum okay we have drm-tip results for EHL but if someone sends a patch that breaks EHL it will not be caught in pre-merge testing.
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
