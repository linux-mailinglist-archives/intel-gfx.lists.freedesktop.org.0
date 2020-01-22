Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F29E145810
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 15:44:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A007F6F568;
	Wed, 22 Jan 2020 14:44:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3009F6F568
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 14:44:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 06:44:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="220333339"
Received: from ahirstiu-mobl1.ger.corp.intel.com (HELO [10.252.51.148])
 ([10.252.51.148])
 by orsmga008.jf.intel.com with ESMTP; 22 Jan 2020 06:44:29 -0800
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
 <20200110183228.8199-2-ville.syrjala@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <68d28b06-8bca-5b6f-45d5-b134484167d1@linux.intel.com>
Date: Wed, 22 Jan 2020 15:44:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200110183228.8199-2-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Clear old hw.fb & co. from
 slave plane's state
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T3AgMTAtMDEtMjAyMCBvbSAxOTozMiBzY2hyZWVmIFZpbGxlIFN5cmphbGE6Cj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPgo+IExldCdzIGRv
IHRoZSBpbnRlbF9wbGFuZV9jb3B5X3VhcGlfdG9faHdfc3RhdGUoKSBiZWZvcmUgd2UgYmFpbCBv
dXQKPiBkdWUgdG8gYm90aCBvbGQgYW5kIG5ldyB1YXBpLmNydGMgYmVpbmcgTlVMTC4gVGhpcyB3
aWxsIGRyb3AgdGhlCj4gcmVmZXJlbmNlIHRvIHRoZSBvbGQgaHcuZmIgZm9yIHBsYW5lcyB0aGF0
IGFyZSB0cmFuc2l0aW9uaW5nIGZyb20KPiBiZWluZyBhIHNsYXZlIHBsYW5lIHRvIHNpbXBseSBi
ZWluZyBkaXNhYmxlZC4KPgo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMgfCA2ICsrLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgICAgIHwgMiArKwo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwo+IGluZGV4IDNlOTdhZjY4
MmIxYi4uN2M2OWIwNTMwMDViIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jCj4gQEAgLTIyNSwxMiArMjI1LDkgQEAgaW50IGlu
dGVsX3BsYW5lX2F0b21pY19jaGVja193aXRoX3N0YXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpvbGRfY3J0Y18KPiAgCQkJCQlzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm5ld19w
bGFuZV9zdGF0ZSkKPiAgewo+ICAJc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSA9IHRvX2ludGVs
X3BsYW5lKG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5wbGFuZSk7Cj4gLQljb25zdCBzdHJ1Y3QgZHJt
X2ZyYW1lYnVmZmVyICpmYjsKPiArCWNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiID0g
bmV3X3BsYW5lX3N0YXRlLT5ody5mYjsKPiAgCWludCByZXQ7Cj4gIAo+IC0JaW50ZWxfcGxhbmVf
Y29weV91YXBpX3RvX2h3X3N0YXRlKG5ld19wbGFuZV9zdGF0ZSwgbmV3X3BsYW5lX3N0YXRlKTsK
PiAtCWZiID0gbmV3X3BsYW5lX3N0YXRlLT5ody5mYjsKPiAtCj4gIAluZXdfY3J0Y19zdGF0ZS0+
YWN0aXZlX3BsYW5lcyAmPSB+QklUKHBsYW5lLT5pZCk7Cj4gIAluZXdfY3J0Y19zdGF0ZS0+bnYx
Ml9wbGFuZXMgJj0gfkJJVChwbGFuZS0+aWQpOwo+ICAJbmV3X2NydGNfc3RhdGUtPmM4X3BsYW5l
cyAmPSB+QklUKHBsYW5lLT5pZCk7Cj4gQEAgLTI5Miw2ICsyODksNyBAQCBpbnQgaW50ZWxfcGxh
bmVfYXRvbWljX2NoZWNrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ICAJY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlOwo+ICAJc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlOwo+ICAKPiArCWludGVsX3BsYW5lX2NvcHlf
dWFwaV90b19od19zdGF0ZShuZXdfcGxhbmVfc3RhdGUsIG5ld19wbGFuZV9zdGF0ZSk7Cj4gIAlu
ZXdfcGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSA9IGZhbHNlOwo+ICAJaWYgKCFjcnRjKQo+ICAJ
CXJldHVybiAwOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCj4gaW5kZXggZmFmYjY3Njg5ZGVlLi4wYTFmMjU2NGRlYTAgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0xNjAzOCw2ICsxNjAz
OCw4IEBAIGludGVsX2xlZ2FjeV9jdXJzb3JfdXBkYXRlKHN0cnVjdCBkcm1fcGxhbmUgKl9wbGFu
ZSwKPiAgCW5ld19wbGFuZV9zdGF0ZS0+dWFwaS5jcnRjX3cgPSBjcnRjX3c7Cj4gIAluZXdfcGxh
bmVfc3RhdGUtPnVhcGkuY3J0Y19oID0gY3J0Y19oOwo+ICAKPiArCWludGVsX3BsYW5lX2NvcHlf
dWFwaV90b19od19zdGF0ZShuZXdfcGxhbmVfc3RhdGUsIG5ld19wbGFuZV9zdGF0ZSk7Cj4gKwo+
ICAJcmV0ID0gaW50ZWxfcGxhbmVfYXRvbWljX2NoZWNrX3dpdGhfc3RhdGUoY3J0Y19zdGF0ZSwg
bmV3X2NydGNfc3RhdGUsCj4gIAkJCQkJCSAgb2xkX3BsYW5lX3N0YXRlLCBuZXdfcGxhbmVfc3Rh
dGUpOwo+ICAJaWYgKHJldCkKClJldmlld2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRl
bi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
