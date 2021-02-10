Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB3431667B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Feb 2021 13:21:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 039E9892E4;
	Wed, 10 Feb 2021 12:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 459A46E24D
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Feb 2021 12:21:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23833189-1500050 for multiple; Wed, 10 Feb 2021 12:21:44 +0000
MIME-Version: 1.0
In-Reply-To: <87blcsryc5.fsf@gaia.fi.intel.com>
References: <20210210102238.28779-1-chris@chris-wilson.co.uk>
 <20210210102238.28779-2-chris@chris-wilson.co.uk>
 <87blcsryc5.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 10 Feb 2021 12:21:47 +0000
Message-ID: <161295970702.7731.143384895338715325@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Correct surface base
 address
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

Quoting Mika Kuoppala (2021-02-10 10:50:18)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > The surface_state_base is an offset into the batch, so we need to pass
> > the correct batch address for STATE_BASE_ADDRESS.
> >
> > Fixes: 47f8253d2b89 ("drm/i915/gen7: Clear all EU/L3 residual contexts")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> > Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> 
> Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Compared against https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_7571/index.html
I think we've found our suspect.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
