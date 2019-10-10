Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 638B4D2669
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 11:32:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B53436EADF;
	Thu, 10 Oct 2019 09:32:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2436D6EADF
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 09:32:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 02:32:51 -0700
X-IronPort-AV: E=Sophos;i="5.67,279,1566889200"; d="scan'208";a="223888814"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 02:32:49 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Thu, 10 Oct 2019 11:32:43 +0200
Message-ID: <104744162.NRhtLZrnHc@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20191002160034.5121-1-chris@chris-wilson.co.uk>
References: <20191002160034.5121-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Warn CI about an unrecoverable
 wedge
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

SGkgQ2hyaXMsCgpPbiBXZWRuZXNkYXksIE9jdG9iZXIgMiwgMjAxOSA2OjAwOjM0IFBNIENFU1Qg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+IElmIHdlIGhhdmUgYSB3ZWRnZWQgR1BVIHRoYXQgd2UgbmVl
ZCB0byByZWNvdmVyLCBidXQgZmFpbCwgYWRkIGEgdGFpbnQKPiBmb3IgQ0kgdG8gcGlja3VwIGFu
ZCBzY2hlZHVsZSBhIHJlYm9vdC4KCkFzIHlvdXIgYXBwcm9hY2ggaGFzIGJlZW4gY2hvc2VuIGJ5
IENJLCBGV0lXOgoKUmV2aWV3ZWQtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6Lmtyenlz
enRvZmlrQGxpbnV4LmludGVsLmNvbT4KClRoYW5rcywKSmFudXN6Cgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPgo+IENjOiBQZXRyaSBMYXR2
YWxhIDxwZXRyaS5sYXR2YWxhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmVzZXQuYyB8IDggKysrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmVzZXQuYwo+IGluZGV4IGUxODk4OTdlODc5Ny4uYmMxYjUxMzQ5NDM4IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCj4gQEAgLTg3Miw4ICs4NzIsMTQgQEAgc3RhdGlj
IGJvb2wgX19pbnRlbF9ndF91bnNldF93ZWRnZWQoc3RydWN0IGludGVsX2d0ICpndCkKPiAgCW9r
ID0gIUhBU19FWEVDTElTVFMoZ3QtPmk5MTUpOyAvKiBYWFggYmV0dGVyIGFnbm9zdGljaXNtIGRl
c2lyZWQgKi8KPiAgCWlmICghSU5URUxfSU5GTyhndC0+aTkxNSktPmdwdV9yZXNldF9jbG9iYmVy
c19kaXNwbGF5KQo+ICAJCW9rID0gX19pbnRlbF9ndF9yZXNldChndCwgQUxMX0VOR0lORVMpID09
IDA7Cj4gLQlpZiAoIW9rKQo+ICsJaWYgKCFvaykgewo+ICsJCS8qCj4gKwkJICogV2FybiBDSSBh
Ym91dCB0aGUgdW5yZWNvdmVyYWJsZSB3ZWRnZWQgY29uZGl0aW9uLgo+ICsJCSAqIFRpbWUgZm9y
IGEgcmVib290Lgo+ICsJCSAqLwo+ICsJCWFkZF90YWludF9mb3JfQ0koVEFJTlRfV0FSTik7Cj4g
IAkJcmV0dXJuIGZhbHNlOwo+ICsJfQo+ICAKPiAgCS8qCj4gIAkgKiBVbmRvIG5vcF9zdWJtaXRf
cmVxdWVzdC4gV2UgcHJldmVudCBhbGwgbmV3IGk5MTUgcmVxdWVzdHMgZnJvbQo+IAoKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
