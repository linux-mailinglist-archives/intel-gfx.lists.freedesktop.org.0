Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38912146B67
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 15:33:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 206986FD26;
	Thu, 23 Jan 2020 14:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CBEB6FD26
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 14:33:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19983612-1500050 for multiple; Thu, 23 Jan 2020 14:33:28 +0000
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>,
 =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200123141034.GS13686@intel.com>
References: <20200123140004.14136-1-jani.nikula@intel.com>
 <20200123141034.GS13686@intel.com>
Message-ID: <157979000636.19995.2361677609016844776@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 23 Jan 2020 14:33:26 +0000
Subject: Re: [Intel-gfx] [PATCH RESEND 1/6] drm/i915/dmc: use intel uncore
 functions for forcewake register access
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMDEtMjMgMTQ6MTA6MzQpCj4gT24gVGh1LCBK
YW4gMjMsIDIwMjAgYXQgMDM6NTk6NTlQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gPiBN
b3ZlIGF3YXkgZnJvbSBJOTE1X1JFQURfRlcoKSBhbmQgSTkxNV9XUklURV9GVygpIGFuZCBzd2l0
Y2ggdG8gdXNpbmcKPiA+IGludGVsX3VuY29yZV9yZWFkX2Z3KCkgYW5kIGludGVsX3VuY29yZV93
cml0ZV9mdygpLCByZXNwZWN0aXZlbHkuCj4gPiAKPiA+IE5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4K
PiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jIHwgMyArKy0K
PiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAK
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jCj4gPiBpbmRleCBhZTI1OTYwZjc0ZTAuLjZhNDA4
ZTExYTNkZSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5j
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYwo+ID4gQEAgLTMxNSw3
ICszMTUsOCBAQCB2b2lkIGludGVsX2Nzcl9sb2FkX3Byb2dyYW0oc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQo+ID4gICAgICAgcHJlZW1wdF9kaXNhYmxlKCk7Cj4gPiAgCj4gPiAg
ICAgICBmb3IgKGkgPSAwOyBpIDwgZndfc2l6ZTsgaSsrKQo+ID4gLSAgICAgICAgICAgICBJOTE1
X1dSSVRFX0ZXKENTUl9QUk9HUkFNKGkpLCBwYXlsb2FkW2ldKTsKPiA+ICsgICAgICAgICAgICAg
aW50ZWxfdW5jb3JlX3dyaXRlX2Z3KCZkZXZfcHJpdi0+dW5jb3JlLCBDU1JfUFJPR1JBTShpKSwK
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBheWxvYWRbaV0pOwo+IAo+
IFdoeSB1bmNvcmUgaW5zdGVhZCBvZiBkZT8KCk91dHNpZGUgb2YgZGlzcGxheS8KCkl0IG1pZ2h0
IGJlIHZlcnkgd2VsbCB3b3J0aCBtb3ZpbmcgaW50ZWxfY3NyLmMgdW5kZXIgdGhlIGF1c3BpY2Vz
IG9mCmRpc3BsYXkgcG93ZXJtYW5hZ2VtZW50LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
