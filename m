Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EF0B1088
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 16:00:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1EFD6ED7B;
	Thu, 12 Sep 2019 14:00:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AD236ED7B
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 14:00:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 07:00:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,497,1559545200"; d="scan'208";a="192429869"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Sep 2019 07:00:09 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 3E4445C1E05; Thu, 12 Sep 2019 16:59:54 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190912132313.12751-1-chris@chris-wilson.co.uk>
References: <20190912131800.12420-1-chris@chris-wilson.co.uk>
 <20190912132313.12751-1-chris@chris-wilson.co.uk>
Date: Thu, 12 Sep 2019 16:59:54 +0300
Message-ID: <87ftl1sjhh.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Disable preemption while
 being debugged
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gV2Ugc2Vl
IGZhaWx1cmVzIHdoZXJlIHRoZSBjb250ZXh0IGNvbnRpbnVlcyBleGVjdXRpbmcgcGFzdCBhCj4g
cHJlZW1wdGlvbiBldmVudCwgZXZlbnR1YWxseSBsZWFkaW5nIHRvIHNpdHVhdGlvbnMgd2hlcmUg
YSByZXF1ZXN0IGhhcwo+IGV4ZWN1dGVkIGJlZm9yZSB3ZSBoYXZlIGV2ZW50IHN1Ym1pdHRlZCBp
dCB0byBIVyEgSXQgc2VlbXMgbGlrZSB0Z2wgaXMKPiBpZ25vcmluZyBvdXIgUklOR19UQUlMIHVw
ZGF0ZXMsIGJ1dCBtb3JlIGxpa2VseSBpcyB0aGF0IHRoZXJlIGlzIGEKPiBtaXNzaW5nIHVwZGF0
ZSByZXF1aXJlZCBmb3Igb3VyIHNlbWFwaG9yZSB3YWl0cyBhcm91bmQgcHJlZW1wdGlvbi4KPgo+
IHYyOiBBbmQgZGlzYWJsZSBpbnRlcm5hbCBzZW1hcGhvcmUgdXNhZ2UKPgo+IFNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNaWthIEt1
b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCkFja2VkLWJ5OiBNaWthIEt1
b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgMyArKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYyAgICAgfCAxICsKPiAgMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gaW5kZXggNDdkNzY2Y2NlYTcx
Li5hM2YwZTQ5OTk3NDQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IEBA
IC0yOTM5LDYgKzI5MzksOSBAQCB2b2lkIGludGVsX2V4ZWNsaXN0c19zZXRfZGVmYXVsdF9zdWJt
aXNzaW9uKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiAgCQkJZW5naW5lLT5mbGFn
cyB8PSBJOTE1X0VOR0lORV9IQVNfUFJFRU1QVElPTjsKPiAgCX0KPiAgCj4gKwlpZiAoSU5URUxf
R0VOKGVuZ2luZS0+aTkxNSkgPj0gMTIpIC8qIFhYWCBkaXNhYmxlZCBmb3IgZGVidWdnaW5nICov
Cj4gKwkJZW5naW5lLT5mbGFncyAmPSB+STkxNV9FTkdJTkVfSEFTX1NFTUFQSE9SRVM7Cj4gKwo+
ICAJaWYgKGVuZ2luZS0+Y2xhc3MgIT0gQ09QWV9FTkdJTkVfQ0xBU1MgJiYgSU5URUxfR0VOKGVu
Z2luZS0+aTkxNSkgPj0gMTIpCj4gIAkJZW5naW5lLT5mbGFncyB8PSBJOTE1X0VOR0lORV9IQVNf
UkVMQVRJVkVfTU1JTzsKPiAgfQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwo+IGluZGV4IGIzY2M4
NTYwNjk2Yi4uMmNhMzRhNWNmN2QzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGNpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCj4gQEAg
LTc5OCw2ICs3OTgsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIGlu
dGVsX3RpZ2VybGFrZV8xMl9pbmZvID0gewo+ICAJLmVuZ2luZV9tYXNrID0KPiAgCQlCSVQoUkNT
MCkgfCBCSVQoQkNTMCkgfCBCSVQoVkVDUzApIHwgQklUKFZDUzApIHwgQklUKFZDUzIpLAo+ICAJ
Lmhhc19yYzYgPSBmYWxzZSwgLyogWFhYIGRpc2FibGVkIGZvciBkZWJ1Z2dpbmcgKi8KPiArCS5o
YXNfbG9naWNhbF9yaW5nX3ByZWVtcHRpb24gPSBmYWxzZSwgLyogWFhYIGRpc2FibGVkIGZvciBk
ZWJ1Z2dpbmcgKi8KPiAgfTsKPiAgCj4gICN1bmRlZiBHRU4KPiAtLSAKPiAyLjIzLjAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
