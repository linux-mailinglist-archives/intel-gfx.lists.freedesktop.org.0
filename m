Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A18D14C0B4
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 20:11:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F36556E10D;
	Tue, 28 Jan 2020 19:11:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1B066E10D
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 19:11:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20039857-1500050 for multiple; Tue, 28 Jan 2020 19:11:40 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200128183806.149576-1-matthew.auld@intel.com>
 <158023765820.2129.13427585414402734376@skylake-alporthouse-com>
In-Reply-To: <158023765820.2129.13427585414402734376@skylake-alporthouse-com>
Message-ID: <158023869901.2129.2234935848099874237@skylake-alporthouse-com>
Date: Tue, 28 Jan 2020 19:11:39 +0000
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftests/perf: measure memcpy
 bw between regions
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

Quoting Chris Wilson (2020-01-28 18:54:18)
> Quoting Matthew Auld (2020-01-28 18:38:06)
> > +               sort(t, ARRAY_SIZE(t), sizeof(*t), wrap_ktime_compare, NULL);
> > +               pr_info("%s src(%s, %s) -> dst(%s, %s) %s %llu KiB copy: %lld MiB/s\n",
> > +                       __func__,
> > +                       src_mr->name,
> > +                       repr_type(src_type),
> > +                       dst_mr->name,
> > +                       repr_type(dst_type),
> > +                       tests[i].name,
> > +                       size >> 10,
> > +                       div64_u64(mul_u32_u32(4 * size,
> > +                                             1000 * 1000 * 1000),
> > +                                 t[1] + 2 * t[2] + t[3]) >> 20);
> 
> Should this be >> 22 ? (20 /* to MiB */ + 2 /* for avergage */)

Ah, 4*size.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
