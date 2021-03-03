Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B391032BCCD
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 23:08:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D9436E0BF;
	Wed,  3 Mar 2021 22:08:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A3946E0BF
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 22:08:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 24003756-1500050 for multiple; Wed, 03 Mar 2021 22:08:12 +0000
MIME-Version: 1.0
In-Reply-To: <20210301193200.1369-8-daniele.ceraolospurio@intel.com>
References: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
 <20210301193200.1369-8-daniele.ceraolospurio@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 03 Mar 2021 22:08:13 +0000
Message-ID: <161480929311.25897.3336401858374622984@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2 07/16] drm/i915/pxp: Create the arbitrary
 session after boot
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
Cc: Huang@freedesktop.org, "Huang, Sean Z" <sean.z.huang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Daniele Ceraolo Spurio (2021-03-01 19:31:51)
> +static inline bool intel_pxp_is_active(const struct intel_pxp *pxp)
> +{
> +       return pxp->arb_is_in_play;
> +}

> +static bool intel_pxp_session_is_in_play(struct intel_pxp *pxp, u32 id)
> +{
> +       struct intel_gt *gt = pxp_to_gt(pxp);
> +       intel_wakeref_t wakeref;
> +       u32 sip = 0;
> +
> +       with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> +               sip = intel_uncore_read(gt->uncore, GEN12_KCR_SIP);
> +
> +       return sip & BIT(id);
> +}
> +
> +bool intel_pxp_arb_session_is_in_play(struct intel_pxp *pxp)
> +{
> +       return intel_pxp_session_is_in_play(pxp, ARB_SESSION);
> +}

So pxp->arb_is_in_play is not the same as intel_pxp_arb_session_is_in_play().

That's confusing.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
