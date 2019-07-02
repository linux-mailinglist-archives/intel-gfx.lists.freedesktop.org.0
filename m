Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F195CF71
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 14:30:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57D3889949;
	Tue,  2 Jul 2019 12:30:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 124DB89949
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 12:30:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 05:30:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,443,1557212400"; d="scan'208";a="174578458"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 02 Jul 2019 05:30:39 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 180995C166E; Tue,  2 Jul 2019 15:30:34 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20190628120720.21682-4-lionel.g.landwerlin@intel.com>
References: <20190628120720.21682-1-lionel.g.landwerlin@intel.com>
 <20190628120720.21682-4-lionel.g.landwerlin@intel.com>
Date: Tue, 02 Jul 2019 15:30:34 +0300
Message-ID: <87woh039g5.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v7 3/3] drm/i915/icl: whitelist
 PS_(DEPTH|INVOCATION)_COUNT
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPiB3cml0ZXM6
Cgo+IFRoZSBzYW1lIHRlc3RzIGZhaWxpbmcgb24gQ0ZMKyBwbGF0Zm9ybXMgYXJlIGFsc28gZmFp
bGluZyBvbiBJQ0wuCj4gRG9jdW1lbnRhdGlvbiBkb2Vzbid0IGxpc3QgdGhlCj4gV2FBbGxvd1BN
RGVwdGhBbmRJbnZvY2F0aW9uQ291bnRBY2Nlc3NGcm9tVU1EIHdvcmthcm91bmQgZm9yIElDTCBi
dXQKPiBhcHBseWluZyBpdCBmaXhlcyB0aGUgc2FtZSB0ZXN0cyBhcyBDRkwuCgpEaWRuJ3QgZmlu
ZCBtb3JlIGRvY3VtZW50YXRpb24gZWl0aGVyIGJ1dCBJIGhhdmUgYXNrZWQKZm9yIHRoZSB3YSBh
dXRob3IgZm9yIHVwZGF0ZS4KCj4KPiB2MjogVXNlIG9ubHkgb25lIHdoaXRlbGlzdCBlbnRyeSAo
TGlvbmVsKQo+Cj4gU2lnbmVkLW9mZi1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxh
bmR3ZXJsaW5AaW50ZWwuY29tPgo+IFRlc3RlZC1ieTogIEFudWogUGhvZ2F0IDxhbnVqLnBob2dh
dEBnbWFpbC5jb20+Cj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKClRoZSByZWdpc3RlciBv
ZmZzZXRzIGFyZSB0aGUgc2FtZSBzbyB3ZSBjYW4ndCByZWFsbHkgZG8KaGFybSB3aXRoIHRoaXMg
c28gd2UgZ28gd2l0aCB0aGUgZXZpZGVuY2UsCgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8
bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgMTMgKysrKysrKysrKysrKwo+ICAxIGZpbGUg
Y2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF93b3JrYXJvdW5kcy5jCj4gaW5kZXggYjExNzU4M2UzOGJiLi5hOTA4ZDgyOWQ2YmQgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBAQCAt
MTEzOCw2ICsxMTM4LDE5IEBAIHN0YXRpYyB2b2lkIGljbF93aGl0ZWxpc3RfYnVpbGQoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAKPiAgCQkvKiBXYUVuYWJsZVN0YXRlQ2FjaGVS
ZWRpcmVjdFRvQ1M6aWNsICovCj4gIAkJd2hpdGVsaXN0X3JlZyh3LCBHRU45X1NMSUNFX0NPTU1P
Tl9FQ09fQ0hJQ0tFTjEpOwo+ICsKPiArCQkvKgo+ICsJCSAqIFdhQWxsb3dQTURlcHRoQW5kSW52
b2NhdGlvbkNvdW50QWNjZXNzRnJvbVVNRDppY2wKPiArCQkgKgo+ICsJCSAqIFRoaXMgY292ZXJz
IDQgcmVnaXN0ZXIgd2hpY2ggYXJlIG5leHQgdG8gb25lIGFub3RoZXIgOgo+ICsJCSAqICAgLSBQ
U19JTlZPQ0FUSU9OX0NPVU5UCj4gKwkJICogICAtIFBTX0lOVk9DQVRJT05fQ09VTlRfVURXCj4g
KwkJICogICAtIFBTX0RFUFRIX0NPVU5UCj4gKwkJICogICAtIFBTX0RFUFRIX0NPVU5UX1VEVwo+
ICsJCSAqLwo+ICsJCXdoaXRlbGlzdF9yZWdfZXh0KHcsIFBTX0lOVk9DQVRJT05fQ09VTlQsCj4g
KwkJCQkgIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9SRCB8Cj4gKwkJCQkgIFJJTkdfRk9SQ0VfVE9f
Tk9OUFJJVl9SQU5HRV80KTsKPiAgCQlicmVhazsKPiAgCj4gIAljYXNlIFZJREVPX0RFQ09ERV9D
TEFTUzoKPiAtLSAKPiAyLjIxLjAuMzkyLmdmOGY2Nzg3MTU5ZQo+Cj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0
Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
