Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C05DE1ADD0B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 14:18:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C60166E402;
	Fri, 17 Apr 2020 12:18:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C24D6E402
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 12:18:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20932610-1500050 for multiple; Fri, 17 Apr 2020 13:18:07 +0100
MIME-Version: 1.0
In-Reply-To: <3a6ec509-055a-8dde-4daf-d168eb12e548@linux.intel.com>
References: <20200416114117.3460-1-chris@chris-wilson.co.uk>
 <3a6ec509-055a-8dde-4daf-d168eb12e548@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158712588584.5570.10530494997719732777@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 17 Apr 2020 13:18:05 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Scrub execlists state on resume
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
Cc: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-04-17 13:09:52)
> 
> On 16/04/2020 12:41, Chris Wilson wrote:
> > Before we resume, we reset the HW so we restart from a known good state.
> > However, as a part of the reset process, we drain our pending CS event
> > queue -- and if we are resuming that does not correspond to internal
> > state. On setup, we are scrubbing the CS pointers, but alas only on
> > setup.
> > 
> > Apply the sanitization not just to setup, but to all resumes.
> > 
> > Reported-by: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>
> > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > ---
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Tvrtko mentioned on irc that we could do some poisoning of assumed state
(like the HWSP here) in order to better catch these errors.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
