Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEBE649FB
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 17:46:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98E5C6E109;
	Wed, 10 Jul 2019 15:46:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57D1C6E109
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 15:46:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 08:46:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,475,1557212400"; d="scan'208";a="168345165"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 10 Jul 2019 08:46:08 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 62E935C1EC2; Wed, 10 Jul 2019 18:45:56 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156277305018.4055.17406529760725408398@skylake-alporthouse-com>
References: <20190710143054.610-1-chris@chris-wilson.co.uk>
 <874l3trji8.fsf@gaia.fi.intel.com>
 <156277305018.4055.17406529760725408398@skylake-alporthouse-com>
Date: Wed, 10 Jul 2019 18:45:56 +0300
Message-ID: <871ryxriyz.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTEwIDE2OjM0OjIzKQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBTcGVjaWZ5IHRoYXQgd2Ug
ZG8gd2FudCBhIDY0YiB2YWx1ZSBmb3Igc2l6ZW9mKHUzMikgYXMgd2Ugd2FudCB0bwo+PiA+IGNv
bXB1dGUgdGhlIG1hc2sgb2YgdGhlIHVwcGVyIDYyYml0cy4KPj4gPgo+PiA+IFNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiA+IENjOiBNaWth
IEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPj4gPiAtLS0KPj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgfCAy
ICstCj4+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+
PiA+Cj4+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMv
aTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9p
OTE1X2dlbV9jb250ZXh0LmMKPj4gPiBpbmRleCAzYWJlMTVhMDhiNmQuLjI3NWVjMWJmYzJiZSAx
MDA2NDQKPj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX2NvbnRleHQuYwo+PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVz
dHMvaTkxNV9nZW1fY29udGV4dC5jCj4+ID4gQEAgLTE1MzksNyArMTUzOSw3IEBAIHN0YXRpYyBp
bnQgaWd0X3ZtX2lzb2xhdGlvbih2b2lkICphcmcpCj4+ID4gIAo+PiA+ICAgICAgICAgICAgICAg
ICAgICAgICBkaXY2NF91NjRfcmVtKGk5MTVfcHJhbmRvbV91NjRfc3RhdGUoJnBybmcpLAo+PiA+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZtX3RvdGFsLCAmb2Zmc2V0KTsK
Pj4gPiAtICAgICAgICAgICAgICAgICAgICAgb2Zmc2V0ICY9IC1zaXplb2YodTMyKTsKPj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgb2Zmc2V0ICY9IC0odTY0KXNpemVvZih1MzIpOwo+PiAKPj4g
VGFraW5nIGEgc2l6ZW9mIG9mIHNvbWV0aGluZyB3ZSBrbm93IHRoZSBzaXplIG9mLgo+Cj4gdTMy
IGlzIGEgcHJveHkgZm9yIGR3b3JkLCBhbmQgSSB3YXMganVzdCB0cnlpbmcgdG8gYmUgbW9yZSBl
eHByZXNzaXZlCj4gdGhhdCB3ZSB3YW50IHRoZSBhZGRyZXNzIGFsaWduZWQgdG8gYSBkd29yZCBm
b3IgdGhlIE1JX1NUT1JFX0RXT1JEX0lNTQo+IHVzZWQuIGFsaWdub2ZfZHdvcmQgbWF5YmU/CgpJ
IHdhcyBiZWluZyBhIGJpdCBzbmFya3kuIEl0IGlzIG1vcmUgZXhwcmVzc2l2ZSB0aGFuIC00IGlu
ZGVlZC4KQ29tcHJvbWlzZSBhcyB3ZSBkb250IGhhdmUgYSBkZWZpbmUgZm9yIG5hdHVyYWwgYWxp
Z21lbnQgZm9yCmNvbW1hbmQgc3RyZWFtZXIgbWVtb3J5IGFjY2Vzcy4KCi1NaWthCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
