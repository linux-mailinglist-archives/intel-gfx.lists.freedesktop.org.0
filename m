Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70315649C9
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 17:37:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7DA08902A;
	Wed, 10 Jul 2019 15:37:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C03B8902A
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 15:37:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17201552-1500050 for multiple; Wed, 10 Jul 2019 16:37:32 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190710143054.610-1-chris@chris-wilson.co.uk>
 <874l3trji8.fsf@gaia.fi.intel.com>
In-Reply-To: <874l3trji8.fsf@gaia.fi.intel.com>
Message-ID: <156277305018.4055.17406529760725408398@skylake-alporthouse-com>
Date: Wed, 10 Jul 2019 16:37:30 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Ensure we don't clamp a
 random offset to 32b
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTEwIDE2OjM0OjIzKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBTcGVjaWZ5IHRoYXQg
d2UgZG8gd2FudCBhIDY0YiB2YWx1ZSBmb3Igc2l6ZW9mKHUzMikgYXMgd2Ugd2FudCB0bwo+ID4g
Y29tcHV0ZSB0aGUgbWFzayBvZiB0aGUgdXBwZXIgNjJiaXRzLgo+ID4KPiA+IFNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IE1pa2Eg
S3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgfCAyICst
Cj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9n
ZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dl
bV9jb250ZXh0LmMKPiA+IGluZGV4IDNhYmUxNWEwOGI2ZC4uMjc1ZWMxYmZjMmJlIDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250
ZXh0LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9n
ZW1fY29udGV4dC5jCj4gPiBAQCAtMTUzOSw3ICsxNTM5LDcgQEAgc3RhdGljIGludCBpZ3Rfdm1f
aXNvbGF0aW9uKHZvaWQgKmFyZykKPiA+ICAKPiA+ICAgICAgICAgICAgICAgICAgICAgICBkaXY2
NF91NjRfcmVtKGk5MTVfcHJhbmRvbV91NjRfc3RhdGUoJnBybmcpLAo+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdm1fdG90YWwsICZvZmZzZXQpOwo+ID4gLSAgICAgICAg
ICAgICAgICAgICAgIG9mZnNldCAmPSAtc2l6ZW9mKHUzMik7Cj4gPiArICAgICAgICAgICAgICAg
ICAgICAgb2Zmc2V0ICY9IC0odTY0KXNpemVvZih1MzIpOwo+IAo+IFRha2luZyBhIHNpemVvZiBv
ZiBzb21ldGhpbmcgd2Uga25vdyB0aGUgc2l6ZSBvZi4KCnUzMiBpcyBhIHByb3h5IGZvciBkd29y
ZCwgYW5kIEkgd2FzIGp1c3QgdHJ5aW5nIHRvIGJlIG1vcmUgZXhwcmVzc2l2ZQp0aGF0IHdlIHdh
bnQgdGhlIGFkZHJlc3MgYWxpZ25lZCB0byBhIGR3b3JkIGZvciB0aGUgTUlfU1RPUkVfRFdPUkRf
SU1NCnVzZWQuIGFsaWdub2ZfZHdvcmQgbWF5YmU/Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
