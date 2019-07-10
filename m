Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6EE6484C
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 16:25:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BE406E0E1;
	Wed, 10 Jul 2019 14:25:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADAE46E0E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 14:25:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 07:25:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,474,1557212400"; d="scan'208";a="173874496"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Jul 2019 07:25:51 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id C7F175C1EC2; Wed, 10 Jul 2019 17:25:38 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156274712436.11940.4326721010127255446@skylake-alporthouse-com>
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
 <20190707210024.26192-5-chris@chris-wilson.co.uk>
 <8736je1ey0.fsf@gaia.fi.intel.com>
 <156274712436.11940.4326721010127255446@skylake-alporthouse-com>
Date: Wed, 10 Jul 2019 17:25:38 +0300
Message-ID: <87imsaq84d.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915/gtt: Markup i915_ppgtt depth
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
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTEwIDA5OjE3OjI3KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBUaGlzIHdpbGwgYmUgdXNl
ZnVsIHRvIGNvbnNvbGlkYXRlIHJlY3Vyc2l2ZSBjb2RlLgo+PiA+Cj4+ID4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+ID4gLS0tCj4+ID4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgMyArKysKPj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggfCAxICsKPj4gPiAgMiBmaWxlcyBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKykKPj4gPgo+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
Cj4+ID4gaW5kZXggZGE0ZGI3NmNlMDU0Li4yZmM2MGU4YWNkOWEgMTAwNjQ0Cj4+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+PiA+IEBAIC0xNTM3LDYgKzE1MzcsOCBAQCBzdGF0
aWMgdm9pZCBwcGd0dF9pbml0KHN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCwgc3RydWN0IGludGVs
X2d0ICpndCkKPj4gPiAgICAgICBwcGd0dC0+dm0udm1hX29wcy51bmJpbmRfdm1hICA9IHBwZ3R0
X3VuYmluZF92bWE7Cj4+ID4gICAgICAgcHBndHQtPnZtLnZtYV9vcHMuc2V0X3BhZ2VzICAgPSBw
cGd0dF9zZXRfcGFnZXM7Cj4+ID4gICAgICAgcHBndHQtPnZtLnZtYV9vcHMuY2xlYXJfcGFnZXMg
PSBjbGVhcl9wYWdlczsKPj4gPiArCj4+ID4gKyAgICAgcHBndHQtPnZtLnRvcCA9IGk5MTVfdm1f
aXNfNGx2bCgmcHBndHQtPnZtKSA/IDMgOiAyOwo+PiAKPj4gUGVyaGFwcyBpdCBiZWNvbWVzIGV2
aWRlbnQgbGF0ZXIgaW4gdGhlIHNlcmllcyB3aHkgdG9wIGFuZAo+PiBub3QgbGV2ZWwsIHNvIHRo
ZXNlIHdvdWxkIGJlIDQgYW5kIDMgaGVyZS4KPgo+IEJlY2F1c2Ugd2UgdXNlIHRvcCBhbmQgbm90
IGxldmVsIDopCgpZb3UgbWFrZSBtZSBzdWJzdHJhY3Qgb25lIHdpdGggbXkgYmlvbG9naWNhbCBw
cm9jZXNzb3IuCkl0IGlzIGhhcmQuCgpQbGVhc2UgZG8gcmVtYWtlIHRoZSBpOTE1X3ZtX2lzXzRs
dmwoKSBhbmQgaW5jbHVkZS4KLU1pa2EKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
