Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A925A1554F7
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 10:45:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0627F6FBF8;
	Fri,  7 Feb 2020 09:44:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ADB06FBF8
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 09:44:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 01:44:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,412,1574150400"; d="scan'208";a="345763161"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 07 Feb 2020 01:44:55 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id F303C5C0D64; Fri,  7 Feb 2020 11:44:00 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Patchwork <patchwork@emeril.freedesktop.org>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158101475363.7306.14997471557241847879@skylake-alporthouse-com>
References: <20200206174658.2576421-1-chris@chris-wilson.co.uk>
 <158101401457.15032.2403533196319855536@emeril.freedesktop.org>
 <158101475363.7306.14997471557241847879@skylake-alporthouse-com>
Date: Fri, 07 Feb 2020 11:44:00 +0200
Message-ID: <87wo8y91gf.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Apply_Enable_Boot_Fetch_to_MBC_control_register_=28?=
 =?utf-8?q?rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Patchwork (2020-02-06 18:33:34)
>> == Series Details ==
>> 
>> Series: drm/i915/gt: Apply Enable Boot Fetch to MBC control register (rev2)
>> URL   : https://patchwork.freedesktop.org/series/73107/
>> State : failure
>> 
>> == Summary ==
>> 
>> CI Bug Log - changes from CI_DRM_7876 -> Patchwork_16465
>> ====================================================
>> 
>> Summary
>> -------
>> 
>>   **FAILURE**
>> 
>>   Serious unknown changes coming with Patchwork_16465 absolutely need to be
>>   verified manually.
>>   
>>   If you think the reported changes have nothing to do with the changes
>>   introduced in Patchwork_16465, please notify your bug team to allow them
>>   to document this new failure mode, which will reduce false positives in CI.
>> 
>>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/index.html
>> 
>> Possible new issues
>> -------------------
>> 
>>   Here are the unknown changes that may have been introduced in Patchwork_16465:
>> 
>> ### IGT changes ###
>> 
>> #### Possible regressions ####
>> 
>>   * igt@i915_selftest@live_gem:
>>     - fi-snb-2600:        NOTRUN -> [DMESG-WARN][1] +5 similar issues
>>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/fi-snb-2600/igt@i915_selftest@live_gem.html
>
> Oh well.

But this is expected as the hw will clear it at some point.
-Mika

> -Chris
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
