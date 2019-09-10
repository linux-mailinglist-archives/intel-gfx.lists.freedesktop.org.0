Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C8DAE4C0
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 09:40:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 267BA6E842;
	Tue, 10 Sep 2019 07:40:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 983F46E842
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 07:40:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 00:40:04 -0700
X-IronPort-AV: E=Sophos;i="5.64,487,1559545200"; d="scan'208";a="178594818"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 00:40:02 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Tue, 10 Sep 2019 09:39:51 +0200
Message-ID: <1575262.euYTv8qN2F@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20190909225536.7037-2-chris@chris-wilson.co.uk>
References: <20190909225536.7037-1-chris@chris-wilson.co.uk>
 <20190909225536.7037-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Only unwedge if we can
 reset first
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

SGkgQ2hyaXMsCgpPbiBUdWVzZGF5LCBTZXB0ZW1iZXIgMTAsIDIwMTkgMTI6NTU6MzYgQU0gQ0VT
VCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gVW53ZWRnaW5nIHRoZSBHUFUgcmVxdWlyZXMgYSBzdWNj
ZXNzZnVsIEdQVSByZXNldCBiZWZvcmUgd2UgcmVzdG9yZSB0aGUKPiBkZWZhdWx0IHN1Ym1pc3Np
b24sIG9yIGVsc2Ugd2UgbWF5IHNlZSByZXNpZHVhbCBjb250ZXh0IHN3aXRjaCBldmVudHMKPiB0
aGF0IHdlIHdlcmUgbm90IGV4cGVjdGluZy4KPiAKPiBSZXBvcnRlZC1ieTogSmFudXN6IEtyenlz
enRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBKYW51c3og
S3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IERh
bmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgfCA3ICsrKysrKy0K
PiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvCmd0L2ludGVsX3Jlc2V0LmMKPiBpbmRleCBmZTU3Mjk2Yjc5MGMuLjUy
NDI0OTZhODkzYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9y
ZXNldC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+IEBA
IC04MDksNiArODA5LDcgQEAgc3RhdGljIGJvb2wgX19pbnRlbF9ndF91bnNldF93ZWRnZWQoc3Ry
dWN0IGludGVsX2d0ICpndCkKPiAgCXN0cnVjdCBpbnRlbF9ndF90aW1lbGluZXMgKnRpbWVsaW5l
cyA9ICZndC0+dGltZWxpbmVzOwo+ICAJc3RydWN0IGludGVsX3RpbWVsaW5lICp0bDsKPiAgCXVu
c2lnbmVkIGxvbmcgZmxhZ3M7Cj4gKwlib29sIG9rOwo+ICAKPiAgCWlmICghdGVzdF9iaXQoSTkx
NV9XRURHRUQsICZndC0+cmVzZXQuZmxhZ3MpKQo+ICAJCXJldHVybiB0cnVlOwo+IEBAIC04NTQs
NyArODU1LDExIEBAIHN0YXRpYyBib29sIF9faW50ZWxfZ3RfdW5zZXRfd2VkZ2VkKHN0cnVjdCBp
bnRlbF9ndCAKKmd0KQo+ICAJfQo+ICAJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmdGltZWxpbmVz
LT5sb2NrLCBmbGFncyk7Cj4gIAo+IC0JaW50ZWxfZ3Rfc2FuaXRpemUoZ3QsIGZhbHNlKTsKPiAr
CW9rID0gZmFsc2U7Cj4gKwlpZiAoIXJlc2V0X2Nsb2JiZXJzX2Rpc3BsYXkoZ3QtPmk5MTUpKQo+
ICsJCW9rID0gX19pbnRlbF9ndF9yZXNldChndCwgQUxMX0VOR0lORVMpID09IDA7Cj4gKwlpZiAo
IW9rKQo+ICsJCXJldHVybiBmYWxzZTsKCkJlZm9yZSB5b3VyIGNoYW5nZSwgdGhhdCBjb2RlIHdh
cyBleGVjdXRlZCBpbnNpZGUgaW50ZWxfZ3Rfc2FuaXRpemUoZ3QsIGZhbHNlKSAKd2hpY2ggdW5m
b3J0dW5hdGVseSBkaWRuJ3QgcmV0dXJuIGFueSByZXN1bHQuICBUaGUgc2FtZSBvdXRjb21lIGNv
dWxkIGJlIAphY2hpZXZlZCBieSByZWRlZmluaW5nIGludGVsX2d0X3Nhbml0aXplKCkgdG8gcmV0
dXJuIHRoYXQgcmVzdWx0IGFuZCBzYXlpbmc6CgoJaWYgKCFpbnRlbF9ndF9zYW5pdGl6ZShndCwg
ZmFsc2UpCgkJcmV0dXJuIGZhbHNlOwoKSXMgdGhlcmUgYW55IHNwZWNpZmljIHJlYXNvbiBmb3Ig
aW50ZWxfZ3Rfc2FuaXRpemUoKSByZXR1cm5pbmcgdm9pZD8KClRoYW5rcywKSmFudXN6Cgo+ICAK
PiAgCS8qCj4gIAkgKiBVbmRvIG5vcF9zdWJtaXRfcmVxdWVzdC4gV2UgcHJldmVudCBhbGwgbmV3
IGk5MTUgcmVxdWVzdHMgZnJvbQo+IAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
