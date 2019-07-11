Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8519653CC
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 11:29:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3914089FEC;
	Thu, 11 Jul 2019 09:29:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B3B89FC0
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 09:29:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17217972-1500050 for multiple; Thu, 11 Jul 2019 10:29:19 +0100
MIME-Version: 1.0
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <1561834612.3071.6.camel@HansenPartnership.com>
References: <1561834612.3071.6.camel@HansenPartnership.com>
Message-ID: <156283735757.12757.8954391372130933707@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 11 Jul 2019 10:29:17 +0100
Subject: Re: [Intel-gfx] screen freeze with 5.2-rc6 Dell XPS-13 skylake i915
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW1lcyBCb3R0b21sZXkgKDIwMTktMDYtMjkgMTk6NTY6NTIpCj4gVGhlIHN5bXB0
b21zIGFyZSByZWFsbHkgd2VpcmQ6IHRoZSBzY3JlZW4gaW1hZ2UgaXMgbG9ja2VkIGluIHBsYWNl
LiAKPiBUaGUgbWFjaGluZSBpcyBzdGlsbCBmdW5jdGlvbmFsIGFuZCBpZiBJIGxvZyBpbiBvdmVy
IHRoZSBuZXR3b3JrIEkgY2FuCj4gZG8gYW55dGhpbmcgSSBsaWtlLCBpbmNsdWRpbmcga2lsbGlu
ZyB0aGUgWCBzZXJ2ZXIgYW5kIHRoZSBkaXNwbGF5IHdpbGwKPiBuZXZlciBhbHRlci4gIEl0IGFs
c28gc2VlbXMgdGhhdCB0aGUgc3lzdGVtIGlzIGFjY2VwdGluZyBrZXlib2FyZCBpbnB1dAo+IGJl
Y2F1c2Ugd2hlbiBpdCBmcmVlemVzIEkgY2FuIGNhdCBpbmZvcm1hdGlvbiB0byBhIGZpbGUgKGlm
IHRoZSBtb3VzZQo+IHdhcyBvdmVyIGFuIHh0ZXJtKSBhbmQgdmVyaWZ5IG92ZXIgdGhlIG5ldHdv
cmsgdGhlIGZpbGUgY29udGVudHMuIAo+IE5vdGhpbmcgdW51c3VhbCBhcHBlYXJzIGluIGRtZXNn
IHdoZW4gdGhlIGxvY2t1cCBoYXBwZW5zLgo+IAo+IFRoZSBsYXN0IGtlcm5lbCBJIGJvb3RlZCBz
dWNjZXNzZnVsbHkgb24gdGhlIHN5c3RlbSB3YXMgNS4wLCBzbyBJJ2xsCj4gdHJ5IGNvbXBpbGlu
ZyA1LjEgdG8gbmFycm93IGRvd24gdGhlIGNoYW5nZXMuCgpJdCdzIGxpa2VseSB0aGlzIGlzIHBh
bmVsIHNlbGYtcmVmcmVzaCBnb2luZyBoYXl3aXJlLgoKY29tbWl0IDhmNmU4N2Q2ZDU2MWYxMGNm
YTQ4YTY4NzM0NTUxMjQxOTgzOWI2ZDgKQXV0aG9yOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4KRGF0ZTogICBUaHUgTWFyIDcgMTY6MDA6NTAgMjAxOSAtMDgw
MAoKICAgIGRybS9pOTE1OiBFbmFibGUgUFNSMiBieSBkZWZhdWx0CgogICAgVGhlIHN1cHBvcnQg
Zm9yIFBTUjIgd2FzIHBvbGlzaGVkLCBJR1QgdGVzdHMgZm9yIFBTUjIgd2FzIGFkZGVkIGFuZAog
ICAgaXQgd2FzIHRlc3RlZCBwZXJmb3JtaW5nIHJlZ3VsYXIgdXNlciB3b3JrbG9hZHMgbGlrZSBi
cm93c2luZywKICAgIGVkaXRpbmcgZG9jdW1lbnRzIGFuZCBjb21waWxpbmcgTGludXgsIHNvIGl0
IGlzIHRpbWUgdG8gZW5hYmxlIGl0IGJ5CiAgICBkZWZhdWx0IGFuZCBlbmpveSBldmVuIG1vcmUg
cG93ZXItc2F2aW5ncy4KClRlbXBvcmFyeSB3b3JrYXJvdW5kIHdvdWxkIGJlIHRvIHNldCBpOTE1
LmVuYWJsZV9wc3I9MAotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
