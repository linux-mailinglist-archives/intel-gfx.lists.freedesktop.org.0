Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 466812C2868
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 14:41:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71CB96E3E3;
	Tue, 24 Nov 2020 13:41:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 400E66E3E3;
 Tue, 24 Nov 2020 13:41:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23092064-1500050 for multiple; Tue, 24 Nov 2020 13:41:40 +0000
MIME-Version: 1.0
In-Reply-To: <4ab1f514-83cb-c9e2-1feb-a1c054023e4a@linux.intel.com>
References: <20201124123251.4147819-1-chris@chris-wilson.co.uk>
 <20201124123450.4188664-1-chris@chris-wilson.co.uk>
 <4ab1f514-83cb-c9e2-1feb-a1c054023e4a@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 24 Nov 2020 13:41:39 +0000
Message-ID: <160622529926.28476.13471148278568889360@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH i-g-t] Cast negative debugfs values to u64
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-11-24 13:28:15)
> 
> On 24/11/2020 12:34, Chris Wilson wrote:
> > -             igt_sysfs_set(dir, "i915_wedged", "-1");
> > +             igt_sysfs_printf(dir, "i915_wedged", "%llu", -1ull);
> 
> Set to printf conversion is okay. Maybe we could later add 
> igt_sysfs_setu32 for simplicity but maybe it would also be too much api.

Yup, I thought printf would be generic enough to cover all users, and
was not convinced that wrapping the common integers added enough
convenience as printf is a ubiquitous API.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
