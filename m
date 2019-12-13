Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4C911E001
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 09:56:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A8BA89E47;
	Fri, 13 Dec 2019 08:55:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AB7389E47
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 08:55:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 00:55:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="204265228"
Received: from fractal.fi.intel.com ([10.237.72.198])
 by orsmga007.jf.intel.com with ESMTP; 13 Dec 2019 00:55:55 -0800
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191211212433.18185-1-manasi.d.navare@intel.com>
 <157611880961.32008.16220670685103356969@emeril.freedesktop.org>
 <20191212212845.GA24342@intel.com>
From: Tomi Sarvela <tomi.p.sarvela@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <db330426-2263-b095-8019-9e9415c25901@intel.com>
Date: Fri, 13 Dec 2019 10:54:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191212212845.GA24342@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm=3A_Handle_connector_tile_suppor?=
 =?utf-8?q?t_only_for_modes_that_match_tile_size?=
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/12/19 11:28 PM, Manasi Navare wrote:
> The KBL failure does not look related to the changes in this patch series.
> Tomi, could you confirm if this is a false negative?
> 
> Manasi

The failures with the patchset seem same as all the other results from 
live_gt_pm: just that kbl-x1275 hasn't been ticked to the bugfilter, 
probably because it hasn't survived the test before (module_reload).

I've triggered shard-run for this series.

Tomi

> On Thu, Dec 12, 2019 at 02:46:49AM +0000, Patchwork wrote:
>> == Series Details ==
>>
>> Series: series starting with [1/2] drm: Handle connector tile support only for modes that match tile size
>> URL   : https://patchwork.freedesktop.org/series/70790/
>> State : failure
>>
>> == Summary ==
>>
>> CI Bug Log - changes from CI_DRM_7545 -> Patchwork_15701
>> ====================================================
>>
>> Summary
>> -------
>>
>>    **FAILURE**

>>    External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/index.html
>>
>> Possible new issues
>> -------------------
>>
>>    Here are the unknown changes that may have been introduced in Patchwork_15701:
>>
>> ### IGT changes ###
>>
>> #### Possible regressions ####
>>
>>    * igt@i915_selftest@live_gt_pm:
>>      - fi-kbl-x1275:       NOTRUN -> [DMESG-FAIL][1]
>>     [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/fi-kbl-x1275/igt@i915_selftest@live_gt_pm.html

>>
>> == Logs ==
>>
>> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/index.html


-- 
Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
