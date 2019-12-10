Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 812591192A9
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 22:04:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C488689DB9;
	Tue, 10 Dec 2019 21:04:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36A5089DB9
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 21:04:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19532583-1500050 for multiple; Tue, 10 Dec 2019 21:04:00 +0000
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <op.0cloqgv8xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
References: <20191210204744.65276-1-michal.wajdeczko@intel.com>
 <20191210204744.65276-2-michal.wajdeczko@intel.com>
 <157601131366.17013.13933214786705317799@skylake-alporthouse-com>
 <op.0cloqgv8xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <157601184076.17013.1410871918506938192@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 10 Dec 2019 21:04:00 +0000
Subject: Re: [Intel-gfx] [RFC 1/4] drm/i915/uc: Add ops to intel_uc
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

Quoting Michal Wajdeczko (2019-12-10 21:02:30)
> On Tue, 10 Dec 2019 21:55:13 +0100, Chris Wilson  
> <chris@chris-wilson.co.uk> wrote:
> 
> > Quoting Michal Wajdeczko (2019-12-10 20:47:41)
> >> @@ -628,3 +651,15 @@ int intel_uc_runtime_resume(struct intel_uc *uc)
> >>          */
> >>         return __uc_resume(uc, true);
> >>  }
> >> +
> >> +const struct intel_uc_ops uc_ops_none = {
> >> +};
> >> +
> >> +const struct intel_uc_ops uc_ops_off = {
> >> +       .init_hw = __uc_check_hw,
> >> +};
> >> +
> >> +const struct intel_uc_ops uc_ops_on = {
> >> +       .init_hw = __uc_init_hw,
> >> +       .fini_hw = __uc_fini_hw,
> >> +};
> >
> > No externs in the headers, so should these be static?
> 
> but then forwards from top of the file will not work.
> and early_init will have to be moved here as well.
> doable, but wanted to minimize diffs during rfc phase.

static forward decls.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
