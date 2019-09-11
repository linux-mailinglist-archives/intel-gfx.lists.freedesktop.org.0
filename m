Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1540AFD17
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 14:51:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 336CB6E284;
	Wed, 11 Sep 2019 12:51:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66BD36E284
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 12:51:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18451388-1500050 for multiple; Wed, 11 Sep 2019 13:50:24 +0100
MIME-Version: 1.0
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190911103653.GW7482@intel.com>
References: <20190911074727.32585-1-chris@chris-wilson.co.uk>
 <20190911103653.GW7482@intel.com>
Message-ID: <156820622274.3332.3768389513818541140@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 11 Sep 2019 13:50:22 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Put glk_cdclk_table
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMTktMDktMTEgMTE6MzY6NTMpCj4gT24gV2VkLCBT
ZXAgMTEsIDIwMTkgYXQgMDg6NDc6MjdBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
Q29tbWl0IDczNmRhODExMmZlZSAoImRybS9pOTE1OiBVc2UgbGl0ZXJhbCByZXByZXNlbnRhdGlv
biBvZiBjZGNsawo+ID4gdGFibGVzIikgcHVzaGVkIHRoZSBjZGNsayBsb2dpYyBpbnRvIHRhYmxl
cywgYWRkaW5nIGdsa19jZGNsa190YWJsZSBidXQKPiA+IG5vdCB1c2luZyB5ZXQ6Cj4gPiAKPiA+
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYzoxMTczOjM4OiBlcnJv
cjog4oCYZ2xrX2NkY2xrX3RhYmxl4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV2Vycm9yPXVu
dXNlZC1jb25zdC12YXJpYWJsZT1dCj4gPiAKPiA+IEZpeGVzOiA3MzZkYTgxMTJmZWUgKCJkcm0v
aTkxNTogVXNlIGxpdGVyYWwgcmVwcmVzZW50YXRpb24gb2YgY2RjbGsgdGFibGVzIikKPiA+IFNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4g
Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiBD
YzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiA+IENjOiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgNSArKysrLQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwo+ID4gaW5kZXggNjE4YTkzYmFkMGE4
Li4xMzc3OWI2MDI5ZjUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NkY2xrLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY2RjbGsuYwo+ID4gQEAgLTI1MTEsNyArMjUxMSwxMCBAQCB2b2lkIGludGVsX2luaXRf
Y2RjbGtfaG9va3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ID4gICAgICAg
ICAgICAgICBkZXZfcHJpdi0+ZGlzcGxheS5zZXRfY2RjbGsgPSBieHRfc2V0X2NkY2xrOwo+ID4g
ICAgICAgICAgICAgICBkZXZfcHJpdi0+ZGlzcGxheS5tb2Rlc2V0X2NhbGNfY2RjbGsgPSBieHRf
bW9kZXNldF9jYWxjX2NkY2xrOwo+ID4gICAgICAgICAgICAgICBkZXZfcHJpdi0+ZGlzcGxheS5j
YWxjX3ZvbHRhZ2VfbGV2ZWwgPSBieHRfY2FsY192b2x0YWdlX2xldmVsOwo+ID4gLSAgICAgICAg
ICAgICBkZXZfcHJpdi0+Y2RjbGsudGFibGUgPSBieHRfY2RjbGtfdGFibGU7Cj4gPiArICAgICAg
ICAgICAgIGlmIChJU19HRU1JTklMQUtFKGRldl9wcml2KSkKPiA+ICsgICAgICAgICAgICAgICAg
ICAgICBkZXZfcHJpdi0+Y2RjbGsudGFibGUgPSBnbGtfY2RjbGtfdGFibGU7Cj4gPiArICAgICAg
ICAgICAgIGVsc2UKPiA+ICsgICAgICAgICAgICAgICAgICAgICBkZXZfcHJpdi0+Y2RjbGsudGFi
bGUgPSBieHRfY2RjbGtfdGFibGU7Cj4gCj4gV2hvb3BzLgo+IAo+IFJldmlld2VkLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKUHVzaGVkIHRvIHNp
bGVuY2UgdGhlIGNvbXBpbGVyLiBJJ2xsIGxldCBNYXR0IGNoZWNrIGlmIHRoaXMgd2FzIGFsbCB0
aGF0CndhcyB0cnVseSByZXF1aXJlZCA6KQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
