Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C040924A6CA
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 21:22:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 298496E7DD;
	Wed, 19 Aug 2020 19:22:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 457A96E7DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 19:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=hgX3joYPFZpo2QtmTgZsXGn673PNEDLaPOgOwJjyFLg=; b=DJkkV2T63wvqAdEB0q1FfOixkY
 J0QSJn7/etLbfvAOw+60dUet+k8s0FRE1GZBBzQ3eRjQTJAGrna62uGhVKiLnLdxrQ3PF9ONHuj7a
 5ObG08pYo1tcGExV+8gO5esk0N+RCLbXXgk8VUmb95PTjOWg/nrX6TmONqH9UUE4zWsllimOiz641
 zGMv7+3Y3rEwriGDD2mOdvhUsW35b9OyvOGEpxiYFfQG+hmJZuZDl6TmdNIqYs7nEheT2eFeMIFgw
 hlnCqYuW/br+kjwcTvxSg75uxoJH+ao/c7dfu50ONMPj6Fx7KAfloezzAqBKZ6rxL2ZP9o2TXXmNo
 3ql0xIjg==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1k8Tf1-0000xM-Rk
 for intel-gfx@lists.freedesktop.org; Wed, 19 Aug 2020 19:22:11 +0000
Date: Wed, 19 Aug 2020 20:22:11 +0100
From: Matthew Wilcox <willy@infradead.org>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200819192211.GJ17456@casper.infradead.org>
References: <20200819184850.24779-1-willy@infradead.org>
 <159786397788.23597.3955303702184593026@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159786397788.23597.3955303702184593026@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBS?=
 =?utf-8?q?eturn_head_pages_from_find=5Fget=5Fentry_and_find=5Flock=5Fentr?=
 =?utf-8?q?y?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBBdWcgMTksIDIwMjAgYXQgMDc6MDY6MTdQTSAtMDAwMCwgUGF0Y2h3b3JrIHdyb3Rl
Ogo+ICAgQ0MgICAgICBtbS9zd2FwX3N0YXRlLm8KPiBtbS9zd2FwX3N0YXRlLmM6IEluIGZ1bmN0
aW9uIOKAmGZpbmRfZ2V0X3N3YXBfcGFnZeKAmToKPiBtbS9zd2FwX3N0YXRlLmM6NDM1Ojc6IGVy
cm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJhzaG1lbV9tYXBwaW5n4oCZ
OyBkaWQgeW91IG1lYW4g4oCYcGFnZV9tYXBwaW5n4oCZPyBbLVdlcnJvcj1pbXBsaWNpdC1mdW5j
dGlvbi1kZWNsYXJhdGlvbl0KPiAgIGlmICghc2htZW1fbWFwcGluZyhtYXBwaW5nKSkKPiAgICAg
ICAgXn5+fn5+fn5+fn5+fgo+ICAgICAgICBwYWdlX21hcHBpbmcKPiBjYzE6IHNvbWUgd2Fybmlu
Z3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKCk5ldmVyIG1pbmQgdGhlIC5jb25maWc7IEkgZGVj
aWRlZCBvbiBhIHdheSB0byBmaXggaXQgd2l0aG91dCBzZWVpbmcgdGhhdC4KSXQgd291bGQgYmUg
dXNlZnVsIGZvciBmdXR1cmUgd2FybmluZ3MgdGhvdWdoLgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
