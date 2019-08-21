Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E716B97FD4
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 18:19:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA85D6E454;
	Wed, 21 Aug 2019 16:19:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E1886E454
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 16:19:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 09:19:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,412,1559545200"; d="scan'208";a="196027978"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 21 Aug 2019 09:19:15 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 1843D5C1FAD; Wed, 21 Aug 2019 19:18:28 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190821155728.2839-1-chris@chris-wilson.co.uk>
References: <20190821155728.2839-1-chris@chris-wilson.co.uk>
Date: Wed, 21 Aug 2019 19:18:28 +0300
Message-ID: <878srmv6ej.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/execlists: Set priority hint
 prior to submission
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gU2luY2Ug
d2Ugbm93IHJ1biBwcm9jZXNzX2NzYigpIG91dHNpZGUgb2YgdGhlIGVuZ2luZS0+YWN0aXZlLmxv
Y2ssIHdlCj4gY2FuIHByb2Nlc3MgYSBDUy1ldmVudCBpbW1lZGlhdGVseSB1cG9uIG91ciBFTFNQ
IHdyaXRlLiBBcyB3ZSBjdXJyZW50bHkKPiBpbnNwZWN0IHRoZSBwZW5kaW5nIHF1ZXVlICphZnRl
ciogdGhlIEVMU1Agd3JpdGUsIHRoZXJlIGlzIGFuCj4gb3Bwb3J0dW5pdHkgZm9yIGEgQ1MtZXZl
bnQgdG8gdXBkYXRlIHRoZSBwZW5kaW5nIHF1ZXVlIGJlZm9yZSB3ZSBjYW4KPiByZWFkIGl0LCBt
YWtpbmcgb3Vyc2VsdmVzIGNoYXNlcyBhbiBpbnZhbGlkIHBvaW50ZXIuCj4KPiBGaXhlczogZGY0
MDMwNjkwMjlkICgiZHJtL2k5MTUvZXhlY2xpc3RzOiBMaWZ0IHByb2Nlc3NfY3NiKCkgb3V0IG9m
IHRoZSBpcnEtb2ZmIHNwaW5sb2NrIikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFs
YUBsaW51eC5pbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9w
cGFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IGluZGV4IDQ0Nzgw
ZTdmYWZlYy4uZDQyNTg0NDM5ZjUxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJj
LmMKPiBAQCAtMTMzNSw5ICsxMzM1LDkgQEAgc3RhdGljIHZvaWQgZXhlY2xpc3RzX2RlcXVldWUo
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAJaWYgKHN1Ym1pdCkgewo+ICAJCSpw
b3J0ID0gZXhlY2xpc3RzX3NjaGVkdWxlX2luKGxhc3QsIHBvcnQgLSBleGVjbGlzdHMtPnBlbmRp
bmcpOwo+ICAJCW1lbXNldChwb3J0ICsgMSwgMCwgKGxhc3RfcG9ydCAtIHBvcnQpICogc2l6ZW9m
KCpwb3J0KSk7Cj4gLQkJZXhlY2xpc3RzX3N1Ym1pdF9wb3J0cyhlbmdpbmUpOwo+ICAJCWV4ZWNs
aXN0cy0+c3dpdGNoX3ByaW9yaXR5X2hpbnQgPQo+ICAJCQlzd2l0Y2hfcHJpbyhlbmdpbmUsICpl
eGVjbGlzdHMtPnBlbmRpbmcpOwo+ICsJCWV4ZWNsaXN0c19zdWJtaXRfcG9ydHMoZW5naW5lKTsK
PiAgCX0gZWxzZSB7Cj4gIAkJcmluZ19zZXRfcGF1c2VkKGVuZ2luZSwgMCk7Cj4gIAl9Cj4gLS0g
Cj4gMi4yMy4wLnJjMQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
