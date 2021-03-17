Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7831B33F839
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 19:37:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37CE16E067;
	Wed, 17 Mar 2021 18:37:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C56736E067
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 18:37:55 +0000 (UTC)
IronPort-SDR: zXYskW1iQAXQ9j1NBIHSZcf71n0f9hI7JKGGMO3+NjoMli9sl4RcGKeKVFTHN4koQ/3ZvSWZm7
 7THvlc/o5daw==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="209497257"
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="209497257"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 11:37:55 -0700
IronPort-SDR: 3s0q9WSSv5CYhzO1C8bADhypAuZAFJf6In7p6cFQMUKHoiBhn6/BW3o+dAcuW+Mmizfx83pLrI
 zBfkeg2HU73g==
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="450199555"
Received: from jksalasr-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.42.17])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 11:37:54 -0700
Date: Wed, 17 Mar 2021 11:37:53 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20210317183753.wr6t33u5kh3d3rd4@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210311153415.3024607-1-matthew.d.roper@intel.com>
 <20210311153415.3024607-4-matthew.d.roper@intel.com>
 <20210315201442.asmgbo6u4djhwgew@ldmartin-desk2>
 <87czvxoe7n.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87czvxoe7n.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 03/23] drm/i915/display: Eliminate most
 usage of INTEL_GEN()
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

On Wed, Mar 17, 2021 at 07:57:32PM +0200, Jani Nikula wrote:
>On Mon, 15 Mar 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Thu, Mar 11, 2021 at 07:33:55AM -0800, Matt Roper wrote:
>>>Use Coccinelle to convert most of the usage of INTEL_GEN() and IS_GEN()
>>>in the display code to use DISPLAY_VER() comparisons instead.  The
>>>following semantic patch was used:
>>>
>>>        @@ expression dev_priv; @@
>>>        - INTEL_GEN(dev_priv)
>>>        + DISPLAY_VER(dev_priv)
>>>
>>>        @@ expression dev_priv; expression E; @@
>>>        - !IS_GEN(dev_priv, E)
>>>        + DISPLAY_VER(dev_priv) != E
>>>
>>>        @@ expression dev_priv; expression E; @@
>>>        - IS_GEN(dev_priv, E)
>>>        + DISPLAY_VER(dev_priv) == E
>>>
>>>        @@
>>>        expression dev_priv;
>>>        expression from, until;
>>>        @@
>>>        - !IS_GEN_RANGE(dev_priv, from, until)
>>>        + DISPLAY_VER(dev_priv) < from || DISPLAY_VER(dev_priv) > until
>>>
>>>        @@
>>>        expression dev_priv;
>>>        expression from, until;
>>>        statement S;
>>>        @@
>>>        - if (IS_GEN_RANGE(dev_priv, from, until)) S
>>>        + if (DISPLAY_VER(dev_priv) >= from && DISPLAY_VER(dev_priv) <= until) S
>>>
>>>        @@
>>>        expression dev_priv;
>>>        expression from, until;
>>>        @@
>>>        - IS_GEN_RANGE(dev_priv, from, until)
>>>        + (DISPLAY_VER(dev_priv) >= from && DISPLAY_VER(dev_priv) <= until)
>>>
>>>There are still some display-related uses of INTEL_GEN() in intel_pm.c
>>>(watermark code) and i915_irq.c.  Those will be updated separately.
>>>
>>>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>>
>> The reason why we had macros like IS_GEN() and IS_GEN_RANGE() is because
>> this allows the compiler to short-circuit it into a single
>> bitwise AND + comparison check.
>
>Well, just looking at the code, I think IS_GEN() and IS_GEN_RANGE() also
>look cleaner, at least once you've grown used to them.
>
>Stuff like this gets slower to read IMO:
>
>>>-	if (!IS_GEN_RANGE(dev_priv, 3, 7)) {
>>>+	if (DISPLAY_VER(dev_priv) < 3 || DISPLAY_VER(dev_priv) > 7) {
>
>In the past we had all combinations of <, <=, >, >= with && and ||, and,
>while it's pretty regular stuff, I think it benefited from the
>unification readability wise.
>
>Sure we can add IS_DISPLAY_VER() and _RANGE() later on, but with a bunch
>of churn that I find unlikely to happen again soon.
>
>So I guess I need more convincing this is indeed the path we want to
>take.

I don't disagree. I think the case you cited is the worst case, where we
have to invert the check. But looking at the code there are just 4 cases
in which this is used:

$ git grep \!IS_GEN_RANGE
drivers/gpu/drm/i915/display/intel_bios.c:      if (!IS_GEN_RANGE(dev_priv, 3, 7)) {
drivers/gpu/drm/i915/gt/gen8_ppgtt.c:   ppgtt->vm.has_read_only = !IS_GEN_RANGE(gt->i915, 11, 12);
drivers/gpu/drm/i915/gt/intel_ring_submission.c:        if (!IS_GEN_RANGE(engine->i915, 6, 7))
drivers/gpu/drm/i915/i915_cmd_parser.c:                         GEM_BUG_ON(!IS_GEN_RANGE(engine->i915, 6, 7));

Checking also the positive checks:

	$ git grep IS_GEN_RANGE | wc -l 
	37

So, not that many.  But to avoid this kind of issue I think we could add a
`DISPLAY_VER_RANGE(i915, from, until)` already and get rid of this problem.

Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
