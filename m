Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A900122C175
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 10:55:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3A7E6E029;
	Fri, 24 Jul 2020 08:55:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4186E6E029
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 08:55:39 +0000 (UTC)
IronPort-SDR: JufheoKHmyFnhIImMjKBoK9r5YRHdP6PnXScrTNR3tIv8WttuXjebjmvVAgabAUO4wWXpbDckC
 1E8nfj9FhP6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9691"; a="148171201"
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; d="scan'208";a="148171201"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 01:55:38 -0700
IronPort-SDR: 2xVEC+8VKMCqgmSwYBlVQWmuZYv18MEVinhAmCpBcuWphKe+Ot1v314mzvLW3c8wU7amCAx5oY
 1dn5ffdI3ruQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; d="scan'208";a="311337039"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.213.227.31])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jul 2020 01:55:37 -0700
MIME-Version: 1.0
In-Reply-To: <20200724001901.35662-4-umesh.nerlige.ramappa@intel.com>
References: <20200724001901.35662-1-umesh.nerlige.ramappa@intel.com>
 <20200724001901.35662-4-umesh.nerlige.ramappa@intel.com>
From: Chris Wilson <chris.p.wilson@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jul 2020 09:55:35 +0100
Message-ID: <159558093596.21069.14612478680650228853@build.alporthouse.com>
User-Agent: alot/0.9
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Umesh Nerlige Ramappa (2020-07-24 01:19:00)
> From: Piotr Maciejewski <piotr.maciejewski@intel.com>
> 
> It is useful to have markers in the OA reports to identify triggered
> reports. Whitelist some OA counters that can be used as markers.
> 
> A triggered report can be found faster if we can sample the HW tail and
> head registers when the report was triggered. Whitelist OA buffer
> specific registers.
> 
> v2:
> - Bump up the perf revision (Lionel)
> - Use indexing for counters (Lionel)
> - Fix selftest for oa ticking register (Umesh)
> 
> v3: Pardon whitelisted registers for selftest (Umesh)
> 
> v4:
> - Document whitelisted registers (Lionel)
> - Fix live isolated whitelist for OA regs (Umesh)
> 
> Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 34 +++++++++++++++++++
>  .../gpu/drm/i915/gt/selftest_workarounds.c    | 30 +++++++++++++++-
>  drivers/gpu/drm/i915/i915_perf.c              |  8 ++++-
>  drivers/gpu/drm/i915/i915_reg.h               | 10 ++++++
>  4 files changed, 80 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index a72ebfd115e5..c950d07beec3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1392,6 +1392,23 @@ static void gen9_whitelist_build_performance_counters(struct i915_wa_list *w)
>         /* OA buffer trigger report 2/6 used by performance query */
>         whitelist_reg(w, OAREPORTTRIG2);
>         whitelist_reg(w, OAREPORTTRIG6);
> +
> +       /* Performance counters A18-20 used by tbs marker query */
> +       whitelist_reg_ext(w, OA_PERF_COUNTER_A(18),
> +                         RING_FORCE_TO_NONPRIV_ACCESS_RW |
> +                         RING_FORCE_TO_NONPRIV_RANGE_4);
> +
> +       whitelist_reg(w, OA_PERF_COUNTER_A(20));
> +       whitelist_reg(w, OA_PERF_COUNTER_A_UPPER(20));
> +
> +       /* Read access to gpu ticks */
> +       whitelist_reg_ext(w, GEN8_GPU_TICKS,
> +                         RING_FORCE_TO_NONPRIV_ACCESS_RD);
> +
> +       /* Read access to: oa status, head, tail, buffer settings */
> +       whitelist_reg_ext(w, GEN8_OASTATUS,
> +                         RING_FORCE_TO_NONPRIV_ACCESS_RD |
> +                         RING_FORCE_TO_NONPRIV_RANGE_4);

Great. This completely fills RING_MAX_NONPRIV_SLOTS, with over half the
slots going to OA. That does not seem sustainable.

I did not think the extended whitelist settings were available before
cml.
-Chris
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
