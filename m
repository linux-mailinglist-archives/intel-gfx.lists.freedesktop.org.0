Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6072450CE
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Aug 2020 11:53:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 399186E09A;
	Sat, 15 Aug 2020 09:53:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B2DF6E09A
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Aug 2020 09:53:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22135408-1500050 for multiple; Sat, 15 Aug 2020 10:53:10 +0100
MIME-Version: 1.0
In-Reply-To: <66272f87-c6c1-2b45-87f4-cf54303ab44b@intel.com>
References: <20200814155735.29138-1-chris@chris-wilson.co.uk>
 <20200814155735.29138-2-chris@chris-wilson.co.uk>
 <4e8f3929-06d9-9183-f5ed-9cf18abf40dc@intel.com>
 <159743033592.31882.10893400044974332038@build.alporthouse.com>
 <66272f87-c6c1-2b45-87f4-cf54303ab44b@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Chang, Bruce" <yu.bruce.chang@intel.com>, intel-gfx@lists.freedesktop.org
Date: Sat, 15 Aug 2020 10:53:09 +0100
Message-ID: <159748518914.31882.11207732178974792782@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gt: Wait for CSB entries on
 Tigerlake
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chang, Bruce (2020-08-15 01:36:10)
> 
> >>> @@ -2498,9 +2498,22 @@ invalidate_csb_entries(const u64 *first, const u64 *last)
> >>>     */
> >>>    static inline bool gen12_csb_parse(const u64 *csb)
> >>>    {
> >>> -     u64 entry = READ_ONCE(*csb);
> >>> -     bool ctx_away_valid = GEN12_CSB_CTX_VALID(upper_32_bits(entry));
> >>> -     bool new_queue =
> >>> +     bool ctx_away_valid;
> >>> +     bool new_queue;
> >>> +     u64 entry;
> >>> +
> >>> +     /* XXX HSD */
> >>> +     entry = READ_ONCE(*csb);
> >>> +     if (unlikely(entry == -1)) {
> >>> +             preempt_disable();
> >>> +             if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 50))
> >>> +                     GEM_WARN_ON("50us CSB timeout");
> >> Out tests showed that 10us is not long enough, but 20us worked well. So
> >> 50us should be good enough.
> 
> Just realized this may not fully work, as one of the common issue we run 
> into is that higher 32bit is updated from the HW, but lower 32bit update 
> at a later time: meaning the csb will read like 0xFFFFFFFF:xxxxxxxx 
> (low:high) . So this check (!= -1) can still pass but with a partial 
> invalid csb status. So, we may need to check each 32bit separately.

Hence the transformation to use u64 as the entry type :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
