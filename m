Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE521503AE
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 10:58:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CCCB6EB97;
	Mon,  3 Feb 2020 09:58:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90B766EB97
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 09:58:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20097202-1500050 for multiple; Mon, 03 Feb 2020 09:58:10 +0000
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200203095413.45084-1-michal.wajdeczko@intel.com>
References: <20200203095413.45084-1-michal.wajdeczko@intel.com>
Message-ID: <158072388824.20090.16406597674750954560@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 03 Feb 2020 09:58:08 +0000
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/guc: Stop using mutex while
 sending CTB messages
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

Quoting Michal Wajdeczko (2020-02-03 09:54:13)
>  void intel_guc_ct_init_early(struct intel_guc_ct *ct)
>  {
> +       int i;
> +
>         spin_lock_init(&ct->requests.lock);
>         INIT_LIST_HEAD(&ct->requests.pending);
>         INIT_LIST_HEAD(&ct->requests.incoming);
>         INIT_WORK(&ct->requests.worker, ct_incoming_request_worker_func);
> +       for (i = 0; i < ARRAY_SIZE(ct->ctbs); i++) {
> +               spin_lock_init(&ct->ctbs[i].lock);
> +               lockdep_set_subclass_and_mark_as_used(&ct->ctbs[i].lock, i);

Trybot warned of another issue... We need to hold irq-off for
subclass=1, but equally we have to keep subclass=0 clean.

if (i == 1)
	local_irq_disable();
lockdep_set_subclass_and_mark_as_used(&ct->ctbs[i].lock, i);
if (i == 1)
	local_irq_enable();

Or wrap that into ...and_mark_as_used(bool irq_off) then we can reuse
that macro in intel_engine_cs.c
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
