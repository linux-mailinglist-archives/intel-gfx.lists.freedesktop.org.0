Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB241EC155
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 19:47:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A4C06E443;
	Tue,  2 Jun 2020 17:46:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from merlin.infradead.org (unknown [IPv6:2001:8b0:10b:1231::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B79376E443
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2020 17:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=v3tuchAEfVO+OzQ0DaicmBbJU96MLx9TBq9QzPyBMDU=; b=LlZ1zZl8SEtNehHIuU4z0QTug6
 g0kqWLE7GzxA8E6kTjI/Z55WvdSllYdRUYOUcUjrwHJDXMDyG8/ZPZjAonludAADtY9XHtWo8Oyd+
 XwCXyRTxzcroRDguh6fe2Bsxpl/t15NCkojM909ANfoO+RdAPLiQ7zjLUWUngadNuVQlpyROr4tNc
 GUsFJVCfiO3h7G8O51oXmHJ81R0IzRpZbMHdcvl84NLseiq9kjDCtmjrUVlwDocthLND8nwWMsE4U
 mFg4g2pswAL2WUqGzl3WrvI5lyHkrEyYsa4mLLsaFzPHexG3RUTBTpJ4Q3nxskEojo5QHvdYzZZ02
 sdatsmWw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgAzp-0000ie-BW; Tue, 02 Jun 2020 17:46:41 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id D716D30081A;
 Tue,  2 Jun 2020 19:46:39 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 9BDF92024F041; Tue,  2 Jun 2020 19:46:39 +0200 (CEST)
Date: Tue, 2 Jun 2020 19:46:39 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com
Message-ID: <20200602174639.GB2604@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] [drm:gen8_de_irq_handler [i915]] *ERROR* Fault errors
 on pipe B: 0x00000080
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
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi All,

My desktop (Intel(R) Xeon(R) CPU E3-1245 v5 @ 3.50GHz) is spewing tons
and tons of:

[  778.461227] [drm:gen8_de_irq_handler [i915]] *ERROR* Fault errors on pipe B: 0x00000080
[  778.477763] [drm:gen8_de_irq_handler [i915]] *ERROR* Fault errors on pipe B: 0x00000080
[  778.577718] [drm:gen8_de_irq_handler [i915]] *ERROR* Fault errors on pipe B: 0x00000080
[  778.577824] [drm:gen8_de_irq_handler [i915]] *ERROR* Fault errors on pipe B: 0x00000080

at a rate of ~3 per second, and X isn't as stable as one would like (it
crashes every few days, sometimes taking the whole kernel along). Sadly,
this being my desktop, I don't actually have a serial line connected to
it, although I could hook one up if required.

It is currently running 5.6.14-1 (as per debian testing), but it seems
to have done this for a while, I only now got around to reporting it :/

What else I you need to know, want me to try etc.. ?

~ Peter


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
