Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 800E614E45D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 21:59:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B58E6E913;
	Thu, 30 Jan 2020 20:59:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD67C6E913;
 Thu, 30 Jan 2020 20:59:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 12:59:48 -0800
X-IronPort-AV: E=Sophos;i="5.70,382,1574150400"; d="scan'208";a="218402309"
Received: from lodierna-mobl.ger.corp.intel.com (HELO [10.252.22.225])
 ([10.252.22.225])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 30 Jan 2020 12:59:46 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20200130204124.29907-1-tvrtko.ursulin@linux.intel.com>
 <20200130205256.2021-1-tvrtko.ursulin@linux.intel.com>
 <158041781735.18112.13290397906308346272@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <09861f70-4ce1-fcc0-7c2f-5c1cb31f116c@linux.intel.com>
Date: Thu, 30 Jan 2020 20:59:45 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <158041781735.18112.13290397906308346272@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] tests/i915/gem_ctx_persistence:
 Convert engine subtests to dynamic
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
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 30/01/2020 20:56, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-01-30 20:52:56)
>> @@ -772,91 +787,64 @@ igt_main
>>                  igt_allow_hang(i915, 0, 0);
>>          }
>>   
>> -       igt_subtest("idempotent")
>> -               test_idempotent(i915);
>> -
>> -       igt_subtest("clone")
>> -               test_clone(i915);
>> -
>> -       igt_subtest("file")
>> -               test_nonpersistent_file(i915);
>> -
>> -       igt_subtest("process")
>> -               test_process(i915);
>> -
>> -       igt_subtest("processes")
>> -               test_processes(i915);
>> -
>> -       igt_subtest("hostile")
>> -               test_nohangcheck_hostile(i915);
>> -       igt_subtest("hang")
>> -               test_nohangcheck_hang(i915);
> 
> Could we keep these outside of the engine subtest groups?
> I'd like to keep them distinct as they aren't written with verifying
> engines per se, but the general context parameter.
> 
> There should be per-engine equivalents to the above already where
> appropriate.

Depends how you look at it, I envisioned two subgroups as telling me 
when the default context is really default and when it has been 
configured with an engine map.

Oh right contexts... okay I need a third subgroup.

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
