Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAeCIhzUymkOAgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 21:50:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 254A5360A52
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 21:50:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1DF510E759;
	Mon, 30 Mar 2026 19:50:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="lrqLj7Op";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A219C10E759;
 Mon, 30 Mar 2026 19:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+/JZYP5QpagLtvYaNDs6zLVTNxiHm41ao7r0f9+QWbk=; b=lrqLj7OpiuMThbJqI0C+rxdc3Y
 /zT/e2U37UGCeJN4BGoYvwNO7fuW9fCCV3uZ/LUYDlUnTCU4gVBJMVBhK0WmVb/SMmJc5NX8gRKQC
 lxgLIATuxxsvk/wd5WGfYodYcGhjbnz8g/l+AApQfhp2OH651aAY67gAsBpLpZp5pCtW6XHzWe+t0
 fe6WnnXuw0I/MrtS5fQtrF/q0cmsNisxm0YDGYMswtqKpN8wKrdn4Opkt3g1TGwW82tFiSHpouL7Z
 201ALQBT5ALZqt/BqLS6IklEF/acxA+EHRnDai4pTyaYCuLaDercrVK3E9GXSQ/ZQ80Nwebke1sqA
 PjwU3t4w==;
Received: from
 2001-1c00-8d85-4b00-266e-96ff-fe07-7dcc.cable.dynamic.v6.ziggo.nl
 ([2001:1c00:8d85:4b00:266e:96ff:fe07:7dcc]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1w7IdJ-00000007DfV-28lM; Mon, 30 Mar 2026 19:50:45 +0000
Received: by noisy.programming.kicks-ass.net (Postfix, from userid 1000)
 id 465E0301BDE; Mon, 30 Mar 2026 21:50:37 +0200 (CEST)
Date: Mon, 30 Mar 2026 21:50:37 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: willy@infradead.org, linux-kernel@vger.kernel.org,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, ravitejax.veesam@intel.com
Subject: Re: Regression on linux-next (next-20260324 )
Message-ID: <20260330195037.GW2872@noisy.programming.kicks-ass.net>
References: <af005996-05e9-4336-8450-d14ca652ba5d@intel.com>
 <20260327163100.GL3738010@noisy.programming.kicks-ass.net>
 <20260327164353.GM3739106@noisy.programming.kicks-ass.net>
 <df391df3-3a3b-4a65-b3c7-ffe3ab50ee83@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <df391df3-3a3b-4a65-b3c7-ffe3ab50ee83@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[infradead.org:s=casper.20170209];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[infradead.org : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:-];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[peterz@infradead.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 254A5360A52
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 30, 2026 at 01:56:33PM +0530, Borah, Chaitanya Kumar wrote:
> > diff --git a/kernel/locking/ww_mutex.h b/kernel/locking/ww_mutex.h
> > index b1834ab7e782..bb8b410779d4 100644
> > --- a/kernel/locking/ww_mutex.h
> > +++ b/kernel/locking/ww_mutex.h
> > @@ -42,7 +42,7 @@ __ww_waiter_last(struct mutex *lock)
> >   	struct mutex_waiter *w = lock->first_waiter;
> >   	if (w)
> > -		w = list_prev_entry(w, list);
> > +		w = __ww_waiter_prev(lock, w);
> >   	return w;
> >   }
> Thank you for the response, Peter. Unfortunately, the issue is still seen
> with this change.

Bah, indeed. Looking at this after the weekend I see that it's actually
wrong.

But I haven't yet had a new idea. I don't suppose there is a relatively
easy way to reproduce this issue outside of your CI robot?

My current working thesis is that since this is graphics, this is
ww_mutex related. I'll go over this code once more...
