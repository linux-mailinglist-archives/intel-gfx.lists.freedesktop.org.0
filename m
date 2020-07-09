Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9B521A942
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 22:46:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9EC26EB35;
	Thu,  9 Jul 2020 20:46:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56F266EB35
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 20:46:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21770340-1500050 for multiple; Thu, 09 Jul 2020 21:46:08 +0100
MIME-Version: 1.0
In-Reply-To: <fd6dab94-a529-9883-402a-574c8ba75d7d@intel.com>
References: <20200709195837.4285-1-umesh.nerlige.ramappa@intel.com>
 <159432703606.23667.16598713539279373813@build.alporthouse.com>
 <fd6dab94-a529-9883-402a-574c8ba75d7d@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 09 Jul 2020 21:46:05 +0100
Message-ID: <159432756544.23667.15244364549691647417@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Use GTT when
 saving/restoring engine GPR
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

Quoting Lionel Landwerlin (2020-07-09 21:42:39)
> On 09/07/2020 23:37, Chris Wilson wrote:
> > Quoting Umesh Nerlige Ramappa (2020-07-09 20:58:37)
> >> MI_STORE_REGISTER_MEM and MI_LOAD_REGISTER_MEM need to know which
> >> translation to use when saving restoring the engine general purpose
> >> registers to and from the GT scratch. Since GT scratch is mapped to
> >> ggtt, we need to set an additional bit in the command to use GTT.
> >>
> >> Fixes: daed3e44396d17 ("drm/i915/perf: implement active wait for noa configurations")
> >> Suggested-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> >> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/i915_perf.c | 1 +
> >>   1 file changed, 1 insertion(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> >> index de69d430b1ed..c6f6370283cf 100644
> >> --- a/drivers/gpu/drm/i915/i915_perf.c
> >> +++ b/drivers/gpu/drm/i915/i915_perf.c
> >> @@ -1592,6 +1592,7 @@ static u32 *save_restore_register(struct i915_perf_stream *stream, u32 *cs,
> >>          u32 d;
> >>   
> >>          cmd = save ? MI_STORE_REGISTER_MEM : MI_LOAD_REGISTER_MEM;
> >> +       cmd |= MI_SRM_LRM_GLOBAL_GTT;
> > Indeed.
> >
> > For bonus points, please write a selftest to verify that the user's GPR
> > are restored. Something as simple as live_noa_delay, but instead of
> > measuring the time; submit a request to write telltales into the GPR,
> > submit a request to run noa_wait; then readback the telltales from a
> > final request.
> >
> > Now since the noa_wait is being run from the GGTT, the address space
> > selector should be reading from the GGTT. So I am actually curious as to
> > whether we have a bug or not.
> > -Chris
> 
> I'm not super competent on the PPGTT setup, but I assumed this worked 
> because we wrote into the ppgtt scratch page.

It's not a STORE_INDEX, it's writing to an absolute address based on the
address space selector which is a combination of the batch address space
and the command bits. Certainly the batch itself is read from the GGTT,
but I can't off hand remember the rules for the various MI (whether they
could even access ppGTT when launched from GGTT).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
