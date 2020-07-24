Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F2E22C308
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 12:24:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E97806E94D;
	Fri, 24 Jul 2020 10:24:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BB8B6E94D
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 10:23:59 +0000 (UTC)
IronPort-SDR: oMWblDQegAM+Gfh3H990jD4bsgBfJyv5VhjZeSaHEzNXBFwvcxyeTjub/TbLKYjNM4QrUMndlI
 vcZOzw44XHJA==
X-IronPort-AV: E=McAfee;i="6000,8403,9691"; a="215272992"
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; d="scan'208";a="215272992"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 03:23:58 -0700
IronPort-SDR: nUQtVCEDIdn+t4EFKnitRI/yB4exqdzYZtZDga0hjfAQGhYvNpky107tCTS2wsPnptFC3Hu3O6
 d6ASlhT3l5Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; d="scan'208";a="288950083"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.213.227.31])
 by orsmga006.jf.intel.com with ESMTP; 24 Jul 2020 03:23:57 -0700
MIME-Version: 1.0
In-Reply-To: <159558594558.21069.2521382659864870599@build.alporthouse.com>
References: <20200724001901.35662-1-umesh.nerlige.ramappa@intel.com>
 <20200724001901.35662-3-umesh.nerlige.ramappa@intel.com>
 <159558277976.21069.2416672457874030480@build.alporthouse.com>
 <dd661523-be0f-e90d-f450-2079fb109ce0@intel.com>
 <159558594558.21069.2521382659864870599@build.alporthouse.com>
From: Chris Wilson <chris.p.wilson@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jul 2020 11:23:56 +0100
Message-ID: <159558623641.21069.2918420188225512985@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/perf: Whitelist OA report
 trigger registers
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

Quoting Chris Wilson (2020-07-24 11:19:05)
> Quoting Lionel Landwerlin (2020-07-24 11:07:18)
> > On 24/07/2020 12:26, Chris Wilson wrote:
> > > Quoting Umesh Nerlige Ramappa (2020-07-24 01:18:59)
> > >> diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> > >> index febc9e6692ba..3b1d3dbcd477 100644
> > >> --- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> > >> +++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> > >> @@ -934,6 +934,10 @@ static bool pardon_reg(struct drm_i915_private *i915, i915_reg_t reg)
> > >>          static const struct regmask pardon[] = {
> > >>                  { GEN9_CTX_PREEMPT_REG, INTEL_GEN_MASK(9, 9) },
> > >>                  { GEN8_L3SQCREG4, INTEL_GEN_MASK(9, 9) },
> > >> +               { OAREPORTTRIG2, INTEL_GEN_MASK(8, 11) },
> > >> +               { OAREPORTTRIG6, INTEL_GEN_MASK(8, 11) },
> > >> +               { GEN12_OAG_OAREPORTTRIG2, INTEL_GEN_MASK(12, 12) },
> > >> +               { GEN12_OAG_OAREPORTTRIG6, INTEL_GEN_MASK(12, 12) },
> > > Because we are not making the mistake of exposing more globals, and the
> > > pardon is a list of our past sins, not an excuse for more.
> > 
> > I'm afraid the HW design leave us no choice on Gen12 :(
> 
> The question then is how much mischief can a client get up to if they
> subvert the OA of the privileged user. It's a privilege escalation hole,
> but is there anything dangerous behind it? Or is it just going to disturb
> the data being fed to the privileged client... (Which seems scary enough.)

The other angle is whether the RING_NONPRIV are context saved; I have
vague memories of seeing them in the context image. If they are, we can
add them the to privileged OA client. We still need to respect the
hard limit on the number, but that would close the hole.
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
