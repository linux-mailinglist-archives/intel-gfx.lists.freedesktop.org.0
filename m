Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4FB8EB7A
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 14:24:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03CFC6E377;
	Thu, 15 Aug 2019 12:24:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3E196E377
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 12:24:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 05:24:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="167731284"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 15 Aug 2019 05:24:45 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 1A3405C1140; Thu, 15 Aug 2019 15:24:03 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156586940854.5838.6495750696819184177@skylake-alporthouse-com>
References: <20190815042031.27750-1-chris@chris-wilson.co.uk>
 <877e7e7jau.fsf@gaia.fi.intel.com>
 <156586940854.5838.6495750696819184177@skylake-alporthouse-com>
Date: Thu, 15 Aug 2019 15:24:03 +0300
Message-ID: <874l2i7h24.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move tasklet kicking to
 __i915_request_queue caller
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTE1IDEyOjM1OjM3KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBTaW5jZSBfX2k5MTVfcmVx
dWVzdF9xdWV1ZSgpIG1heSBiZSBjYWxsZWQgZnJvbSBoYXJkaXJxICh0aW1lcikgY29udGV4dCwK
Pj4gPiB3ZSBjYW5ub3QgdXNlIGxvY2FsX2JoX2Rpc2FibGUvZW5hYmxlIGF0IHRoZSBsb3dlciBs
ZXZlbC4gQXMgd2UgZG8gd2FudAo+PiA+IHRvIGtpY2sgdGhlIHRhc2tsZXQgdG8gc3BlZWQgdXAg
aW5pdGlhbCBzdWJtaXNzaW9uIG9yIHByZWVtcHRpb24gZm9yCj4+ID4gbm9ybWFsIGNsaWVudCBz
dWJtaXNzaW9uLCBsaWZ0IGl0IHRvIHRoZSBub3JtYWwgcHJvY2VzcyBjb250ZXh0Cj4+ID4gY2Fs
bHBhdGguCj4+ID4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPj4gPiAtLS0KPj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZXF1ZXN0LmMgfCA0ICsrLS0KPj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPj4gPgo+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCj4+
ID4gaW5kZXggNDAyMTMzNGRkMmM1Li44YTJiYzFkMzE3ZTQgMTAwNjQ0Cj4+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+PiA+IEBAIC0xMjAzLDEyICsxMjAzLDEwIEBAIHZvaWQg
X19pOTE1X3JlcXVlc3RfcXVldWUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCj4+ID4gICAgICAg
ICogZGVjaWRlIHdoZXRoZXIgdG8gcHJlZW1wdCB0aGUgZW50aXJlIGNoYWluIHNvIHRoYXQgaXQg
aXMgcmVhZHkgdG8KPj4gPiAgICAgICAgKiBydW4gYXQgdGhlIGVhcmxpZXN0IHBvc3NpYmxlIGNv
bnZlbmllbmNlLgo+PiA+ICAgICAgICAqLwo+PiA+IC0gICAgIGxvY2FsX2JoX2Rpc2FibGUoKTsK
Pj4gPiAgICAgICBpOTE1X3N3X2ZlbmNlX2NvbW1pdCgmcnEtPnNlbWFwaG9yZSk7Cj4+ID4gICAg
ICAgaWYgKGF0dHIgJiYgcnEtPmVuZ2luZS0+c2NoZWR1bGUpCj4+ID4gICAgICAgICAgICAgICBy
cS0+ZW5naW5lLT5zY2hlZHVsZShycSwgYXR0cik7Cj4+ID4gICAgICAgaTkxNV9zd19mZW5jZV9j
b21taXQoJnJxLT5zdWJtaXQpOwo+PiA+IC0gICAgIGxvY2FsX2JoX2VuYWJsZSgpOyAvKiBLaWNr
IHRoZSBleGVjbGlzdHMgdGFza2xldCBpZiBqdXN0IHNjaGVkdWxlZCAqLwo+PiAKPj4gV2FzIHRo
aXMgaGVyZSB0byBvbmx5IG9wdGltaXplIHRoZSBsYXRlbmN5IGZyb20gc2NoZWR1bGUKPj4gdG8g
cmVzdWJtaXNzaW9uPwo+Cj4gSXQncyBvbmx5IGZvciBsYXRlbmN5IG1pbmltaXNhdGlvbi4gSWYg
d2UgZG9uJ3QgZG8gaXQgbm93LCB0aGUKPiByYWlzZV9zb2Z0aXJxIHdpbGwgbm90IGJlIHVudGls
IHRoZSBwcm9jZXNzIGhpdHMgdGhlIHNjaGVkdWxlci4KPgo+IEZlbmNlIC0+IGJhY2tlbmQgaXMg
YWxsIGlycS1zcGlubG9ja3MuCgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9w
cGFsYUBsaW51eC5pbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
