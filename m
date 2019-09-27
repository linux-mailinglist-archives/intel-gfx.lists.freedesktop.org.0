Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB206C0C27
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 21:41:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA0D26E0D2;
	Fri, 27 Sep 2019 19:41:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 005476E111
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 19:41:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18644242-1500050 for multiple; Fri, 27 Sep 2019 20:41:47 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
Message-ID: <156961330306.1880.9785814665939145674@skylake-alporthouse-com>
Date: Fri, 27 Sep 2019 20:41:43 +0100
Subject: Re: [Intel-gfx] [PATCH xf86-video-intel 00/21] Compiler warn
 elimination
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTA5LTE5IDE3OjMwOjUyKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gUmFuZG9tIHNt
YXR0ZXJpbmcgb2YgcGF0Y2hlcyB0byBlbGltaW5hdGUgY29tcGlsZXIgd2FybmluZ3MuCj4gU29t
ZSBJIGp1c3Qgc3VwcHJlc3NlZCBvdXQgb2YgbGF6eW5lc3MsIG90aGVycyBJIHRyaWVkIHRvCj4g
c2lsZW5jZSBieSBhZGp1c3RpbmcgdGhlIGNvZGUgYSBiaXQuCgpTb21lIG9mIHRoZSBhbGlhc2lu
ZyBwb2ludGVyIGF2b2lkYW5jZSBsb29rZWQgc2lsbHksIGJ1dCBzaWxseSBjb21waWxlcgppcyBz
aWxseS4KIAo+IEFmdGVyd2FyZHMgdGhlIGJ1aWxkIGlzIGNsZWFuIG9uIG15IGdjYyA4LjMsIHRo
b3VnaCB3aXRoCj4gYSBidW5jaCBvZiBzdHVmZiBzdGlsbCBzdXBwcmVzc2VkIEknbSBub3QgMTAw
JSBzdXJlIHRoYXQncwo+IGEgZ29vZCB0aGluZy4KCkRlZmluaXRlbHkgcXVpZXRlciB3aGljaCBp
cyBtdWNoIGxlc3Mgb2ZmcHV0dGluZy4KVGhhbmtzLAotQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
