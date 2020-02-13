Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDED15BD40
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 12:02:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5111B6F5AC;
	Thu, 13 Feb 2020 11:02:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD7A96F5AB;
 Thu, 13 Feb 2020 11:02:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 03:02:12 -0800
X-IronPort-AV: E=Sophos;i="5.70,436,1574150400"; d="scan'208";a="227199411"
Received: from ayashfe-mobl1.ger.corp.intel.com (HELO [10.251.86.31])
 ([10.251.86.31])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 13 Feb 2020 03:02:10 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200211192253.1120964-1-chris@chris-wilson.co.uk>
 <1e8603fe-d4b8-5860-37cc-6ac381276e6d@linux.intel.com>
 <158158749815.11180.3098367349420655936@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <17dd2eef-40c1-0bfc-299f-ced610de0681@linux.intel.com>
Date: Thu, 13 Feb 2020 11:02:09 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <158158749815.11180.3098367349420655936@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_ctx_persistence:
 Race context closure with replace-engines
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 13/02/2020 09:51, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-02-13 09:07:59)
>>
>> On 11/02/2020 19:22, Chris Wilson wrote:
>>> +     igt_until_timeout(5) {
>>> +             igt_spin_t *spin;
>>> +             uint32_t ctx;
>>> +
>>> +             ctx = gem_context_clone_with_engines(i915, 0);
>>> +             gem_context_set_persistence(i915, ctx, true);
>>> +
>>> +             spin = igt_spin_new(i915, ctx, .flags = IGT_SPIN_FENCE_OUT);
>>> +             for (int i = 0; i < ncpus; i++)
>>> +                     write(t[i].pipe[1], &ctx, sizeof(ctx));
>>
>> It's early so I hope I am not too confused, but drm client in the forked
>> process is a different one. So I think it needs to use threads to be
>> able to share.
> 
> It using the same fd, so the children have control over the parents ctx
> (and shares the ctx id space via the fd)

It was too early then.

Then with a more neutral comment:

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
