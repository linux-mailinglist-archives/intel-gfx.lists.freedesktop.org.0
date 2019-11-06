Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A45DF0B2C
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 01:42:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 107EF6EB9E;
	Wed,  6 Nov 2019 00:42:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 165DD6EB9E
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 00:42:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 16:42:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,271,1569308400"; d="scan'208";a="196022270"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.9.165])
 by orsmga008.jf.intel.com with ESMTP; 05 Nov 2019 16:42:05 -0800
MIME-Version: 1.0
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris.p.wilson@intel.com>
In-Reply-To: <20191106000205.22480-2-niranjana.vishwanathapura@intel.com>
References: <20191106000205.22480-1-niranjana.vishwanathapura@intel.com>
 <20191106000205.22480-2-niranjana.vishwanathapura@intel.com>
Message-ID: <157300092336.21573.10540959417252452757@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 06 Nov 2019 00:42:03 +0000
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Remove unwanted
 rcu_read_lock/unlock
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

UXVvdGluZyBOaXJhbmphbmEgVmlzaHdhbmF0aGFwdXJhICgyMDE5LTExLTA2IDAwOjAyOjAzKQo+
IFdlIGRvbid0IG5lZWQgcmN1IHJlYWQgc2lkZSBjcml0aWNhbCBzZWN0aW9uIHRvIGNhbGwgcGlk
X25yKCksCj4gcmVtb3ZlIGl0Lgo+IAo+IENjOiBDaHJpcyBQIFdpbHNvbiA8Y2hyaXMucC53aWxz
b25AaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE5pcmFuamFuYSBWaXNod2FuYXRoYXB1cmEg
PG5pcmFuamFuYS52aXNod2FuYXRoYXB1cmFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jIHwgMyAtLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z3B1X2Vycm9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jCj4gaW5k
ZXggZThiNjdmNWU1MjFkLi4xZjJmMjY2ZjI2YWYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ3B1X2Vycm9yLmMKPiBAQCAtMTIzMCwxMCArMTIzMCw3IEBAIHN0YXRpYyB2b2lkIHJlY29y
ZF9yZXF1ZXN0KGNvbnN0IHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QsCj4gICAgICAgICBl
cnEtPnN0YXJ0ID0gaTkxNV9nZ3R0X29mZnNldChyZXF1ZXN0LT5yaW5nLT52bWEpOwo+ICAgICAg
ICAgZXJxLT5oZWFkID0gcmVxdWVzdC0+aGVhZDsKPiAgICAgICAgIGVycS0+dGFpbCA9IHJlcXVl
c3QtPnRhaWw7Cj4gLQo+IC0gICAgICAgcmN1X3JlYWRfbG9jaygpOwo+ICAgICAgICAgZXJxLT5w
aWQgPSBjdHgtPnBpZCA/IHBpZF9ucihjdHgtPnBpZCkgOiAwOwo+IC0gICAgICAgcmN1X3JlYWRf
dW5sb2NrKCk7CgpPaywgdGhhdCB3YXMganVzdCBjdXQnbidwYXN0ZSBmcm9tIHBpZF90YXNrKCkK
UmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXMucC53aWxzb25AaW50ZWwuY29tPgotQ2hy
aXMKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCkludGVsIENvcnBvcmF0aW9uIChVSykgTGltaXRlZApSZWdpc3RlcmVk
IE5vLiAxMTM0OTQ1IChFbmdsYW5kKQpSZWdpc3RlcmVkIE9mZmljZTogUGlwZXJzIFdheSwgU3dp
bmRvbiBTTjMgMVJKClZBVCBObzogODYwIDIxNzMgNDcKClRoaXMgZS1tYWlsIGFuZCBhbnkgYXR0
YWNobWVudHMgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIG1hdGVyaWFsIGZvcgp0aGUgc29sZSB1
c2Ugb2YgdGhlIGludGVuZGVkIHJlY2lwaWVudChzKS4gQW55IHJldmlldyBvciBkaXN0cmlidXRp
b24KYnkgb3RoZXJzIGlzIHN0cmljdGx5IHByb2hpYml0ZWQuIElmIHlvdSBhcmUgbm90IHRoZSBp
bnRlbmRlZApyZWNpcGllbnQsIHBsZWFzZSBjb250YWN0IHRoZSBzZW5kZXIgYW5kIGRlbGV0ZSBh
bGwgY29waWVzLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
