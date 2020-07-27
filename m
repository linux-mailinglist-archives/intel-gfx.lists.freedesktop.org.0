Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC3622F923
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jul 2020 21:34:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F98F89F01;
	Mon, 27 Jul 2020 19:34:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F9F389F01
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jul 2020 19:34:45 +0000 (UTC)
IronPort-SDR: gdP40lmqcycoTG7X1fUpjvN24JRqAkVYzVUcv8mwTfAN5GS9brjvzdovFn/n0o+CSVZBDMwvAe
 zNm93ZYZe0NQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9695"; a="130662569"
X-IronPort-AV: E=Sophos;i="5.75,403,1589266800"; d="scan'208";a="130662569"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2020 12:34:45 -0700
IronPort-SDR: 0IbcLe2y5kE9R6ItMgwb/evux5mrpm2vtHU4gnU5ATGkcr8qesp9PpGAwtjEFjhIL/diAgI5Md
 4ZO8pUdHmIYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,403,1589266800"; d="scan'208";a="303577326"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by orsmga002.jf.intel.com with ESMTP; 27 Jul 2020 12:34:43 -0700
Date: Mon, 27 Jul 2020 12:34:40 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Chris Wilson <chris.p.wilson@intel.com>
Message-ID: <20200727193440.GA10929@orsosgc001.amr.corp.intel.com>
References: <20200724001901.35662-1-umesh.nerlige.ramappa@intel.com>
 <20200724001901.35662-4-umesh.nerlige.ramappa@intel.com>
 <159558093596.21069.14612478680650228853@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159558093596.21069.14612478680650228853@build.alporthouse.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/perf: Whitelist OA counter and
 buffer registers
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 24, 2020 at 09:55:35AM +0100, Chris Wilson wrote:
>Quoting Umesh Nerlige Ramappa (2020-07-24 01:19:00)
>> From: Piotr Maciejewski <piotr.maciejewski@intel.com>
>>
>> It is useful to have markers in the OA reports to identify triggered
>> reports. Whitelist some OA counters that can be used as markers.
>>
>> A triggered report can be found faster if we can sample the HW tail and
>> head registers when the report was triggered. Whitelist OA buffer
>> specific registers.
>>
>> v2:
>> - Bump up the perf revision (Lionel)
>> - Use indexing for counters (Lionel)
>> - Fix selftest for oa ticking register (Umesh)
>>
>> v3: Pardon whitelisted registers for selftest (Umesh)
>>
>> v4:
>> - Document whitelisted registers (Lionel)
>> - Fix live isolated whitelist for OA regs (Umesh)
>>
>> Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 34 +++++++++++++++++++
>>  .../gpu/drm/i915/gt/selftest_workarounds.c    | 30 +++++++++++++++-
>>  drivers/gpu/drm/i915/i915_perf.c              |  8 ++++-
>>  drivers/gpu/drm/i915/i915_reg.h               | 10 ++++++
>>  4 files changed, 80 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> index a72ebfd115e5..c950d07beec3 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -1392,6 +1392,23 @@ static void gen9_whitelist_build_performance_counters(struct i915_wa_list *w)
>>         /* OA buffer trigger report 2/6 used by performance query */
>>         whitelist_reg(w, OAREPORTTRIG2);
>>         whitelist_reg(w, OAREPORTTRIG6);
>> +
>> +       /* Performance counters A18-20 used by tbs marker query */
>> +       whitelist_reg_ext(w, OA_PERF_COUNTER_A(18),
>> +                         RING_FORCE_TO_NONPRIV_ACCESS_RW |
>> +                         RING_FORCE_TO_NONPRIV_RANGE_4);
>> +
>> +       whitelist_reg(w, OA_PERF_COUNTER_A(20));
>> +       whitelist_reg(w, OA_PERF_COUNTER_A_UPPER(20));
>> +
>> +       /* Read access to gpu ticks */
>> +       whitelist_reg_ext(w, GEN8_GPU_TICKS,
>> +                         RING_FORCE_TO_NONPRIV_ACCESS_RD);
>> +
>> +       /* Read access to: oa status, head, tail, buffer settings */
>> +       whitelist_reg_ext(w, GEN8_OASTATUS,
>> +                         RING_FORCE_TO_NONPRIV_ACCESS_RD |
>> +                         RING_FORCE_TO_NONPRIV_RANGE_4);
>
>Great. This completely fills RING_MAX_NONPRIV_SLOTS, with over half the
>slots going to OA. That does not seem sustainable.
>
>I did not think the extended whitelist settings were available before
>cml.

Looks like we can remove A20, A20_upper and gpu ticks to free up 3 
slots. Will post that in the new series. Hoping that will do for now.

Thanks,
Umesh

>-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
