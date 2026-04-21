Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +K4xCXaN52m89wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 16:45:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A388443C3F2
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 16:45:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02C0910E1FD;
	Tue, 21 Apr 2026 14:45:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="Sa0gafdX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46E1210E1FD;
 Tue, 21 Apr 2026 14:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=DLmLclcRfMzkW1jUxLXdbKibxhGKqa4xL3PsT8Bg+rk=; b=Sa0gafdXdvEy8kv9wV6FSByThH
 9ldRnp/6TBdGRNIEt3dwfRE8+SSConuD7hZe7Sh7s+0yAHJImrTvhr9bldmN0SHIWIFqf67q0ppGy
 oG7YNoK4A/6SS9OVxKGeSzAKEVT00xG8z7hbb3rKHtZLgZx0YagPGFSNHZWZo9NN0ZKpkkKml2VH8
 yIBIpOvufpjRTB1FhmNbDigizRM/yAq/hYllV0AAHRGxJn+k2z0nD7YNQsDJjptgCau2e3oR2cxdr
 HdEZR+SJiAQYpC6e53YfoNMIW+fZmoq+NAp+paGYj0N0nPJqALwAZdTaDj/JkNe4lfN2mT/AC+52s
 N/azwR5Q==;
Received: from willy by casper.infradead.org with local (Exim 4.98.2 #2 (Red
 Hat Linux)) id 1wFCLW-0000000AHKv-34sD;
 Tue, 21 Apr 2026 14:45:02 +0000
Date: Tue, 21 Apr 2026 15:45:02 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: K Prateek Nayak <kprateek.nayak@amd.com>, John Stultz <jstultz@google.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 linux-kernel@vger.kernel.org,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, ravitejax.veesam@intel.com
Subject: Re: Regression on linux-next (next-20260324 )
Message-ID: <aeeNbseIzGwussm0@casper.infradead.org>
References: <af005996-05e9-4336-8450-d14ca652ba5d@intel.com>
 <20260327163100.GL3738010@noisy.programming.kicks-ass.net>
 <20260327164353.GM3739106@noisy.programming.kicks-ass.net>
 <df391df3-3a3b-4a65-b3c7-ffe3ab50ee83@intel.com>
 <20260330195037.GW2872@noisy.programming.kicks-ass.net>
 <20260420130318.GD3102924@noisy.programming.kicks-ass.net>
 <CANDhNCq=oizzud3hH3oqGzTrcjB8OwGeineJ3mwZuGdDWG8fRQ@mail.gmail.com>
 <20260421101521.GO3102624@noisy.programming.kicks-ass.net>
 <95651a71-1adf-45ba-83eb-5744bc6d4a52@amd.com>
 <20260421143752.GD1064669@noisy.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260421143752.GD1064669@noisy.programming.kicks-ass.net>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[infradead.org : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:-];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.991];
	FROM_NEQ_ENVFROM(0.00)[willy@infradead.org,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: A388443C3F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 21, 2026 at 04:37:52PM +0200, Peter Zijlstra wrote:
> Argh, I see... yes. Perhaps something like the below though?

This is a documentation bug.  I thought it was supposed to add *after*
pos, not before.  So can we clear that up too?

@@ -198,7 +198,7 @@ static inline void __mutex_clear_flag(struct mutex *lock, unsigned long flag)
 }

 /*
- * Add @waiter to a given location in the lock wait_list and set the
+ * Add @waiter before a given location in the lock wait_list and set the
  * FLAG_WAITERS flag if it's the first waiter.
  */
 static void

