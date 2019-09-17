Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A96FB50F4
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 17:04:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DC476ECD0;
	Tue, 17 Sep 2019 15:04:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75CE46ECD0
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 15:04:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 08:04:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,516,1559545200"; d="scan'208";a="186168629"
Received: from mseifert-mobl.ger.corp.intel.com (HELO [10.252.54.177])
 ([10.252.54.177])
 by fmsmga008.fm.intel.com with ESMTP; 17 Sep 2019 08:04:29 -0700
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190909034325.20006-1-manasi.d.navare@intel.com>
 <20190909034325.20006-6-manasi.d.navare@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <156576de-c2a0-bbdc-7434-209df041e97c@linux.intel.com>
Date: Tue, 17 Sep 2019 17:04:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190909034325.20006-6-manasi.d.navare@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/display/icl: Disable
 transcoder port sync as part of crtc_disable() sequence
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMDktMDktMjAxOSBvbSAwNTo0MyBzY2hyZWVmIE1hbmFzaSBOYXZhcmU6Cj4gVGhpcyBjbGVh
cnMgdGhlIHRyYW5zY29kZXIgcG9ydCBzeW5jIGJpdHMgb2YgdGhlIFRSQU5TX0RESV9GVU5DX0NU
TDIKPiByZWdpc3RlciBkdXJpbmcgY3J0Y19kaXNhYmxlKCkuCj4KPiBDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWFhcnRlbiBMYW5raG9y
c3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWF0dCBSb3BlciA8
bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZh
cmVAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyB8IDIzICsrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAy
MyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwo+IGluZGV4IDM1MWM5MGFkNzA1OS4uMDdkZWIwYjkzZjVjIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtNDQzOCw2
ICs0NDM4LDI2IEBAIHN0YXRpYyB2b2lkIGljbF9lbmFibGVfdHJhbnNfcG9ydF9zeW5jKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlCj4gIAkJICAgdHJhbnNfZGRpX2Z1
bmNfY3RsMl92YWwpOwo+ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZCBpY2xfZGlzYWJsZV90cmFuc2Nv
ZGVyX3BvcnRfc3luYyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3Rh
dGUpCj4gK3sKPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhvbGRf
Y3J0Y19zdGF0ZS0+YmFzZS5jcnRjKTsKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+ICsJaTkxNV9yZWdfdCByZWc7Cj4gKwl1
MzIgdHJhbnNfZGRpX2Z1bmNfY3RsMl92YWw7Cj4gKwo+ICsJaWYgKG9sZF9jcnRjX3N0YXRlLT5t
YXN0ZXJfdHJhbnNjb2RlciA9PSBJTlZBTElEX1RSQU5TQ09ERVIpCj4gKwkJcmV0dXJuOwo+ICsK
PiArCURSTV9ERUJVR19LTVMoIkRpc2FibGluZyBUcmFuc2NvZGVyIFBvcnQgU3luYyBvbiBTbGF2
ZSBUcmFuc2NvZGVyICVzXG4iLAo+ICsJCSAgICAgIHRyYW5zY29kZXJfbmFtZShvbGRfY3J0Y19z
dGF0ZS0+Y3B1X3RyYW5zY29kZXIpKTsKPiArCj4gKwlyZWcgPSBUUkFOU19ERElfRlVOQ19DVEwy
KG9sZF9jcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2Rlcik7Cj4gKwl0cmFuc19kZGlfZnVuY19jdGwy
X3ZhbCA9IEk5MTVfUkVBRChyZWcpOwo+ICsJdHJhbnNfZGRpX2Z1bmNfY3RsMl92YWwgJj0gfihQ
T1JUX1NZTkNfTU9ERV9FTkFCTEUgfAo+ICsJCQkJICAgICBQT1JUX1NZTkNfTU9ERV9NQVNURVJf
U0VMRUNUX01BU0spOwo+ICsJSTkxNV9XUklURShyZWcsIHRyYW5zX2RkaV9mdW5jX2N0bDJfdmFs
KTsKPiArfQo+ICsKV291bGQgYW55dGhpbmcgYnJlYWsgaWYgd2UganVzdCB3cm90ZSAwIGhlcmU/
Cj4gIHN0YXRpYyB2b2lkIGludGVsX3VwZGF0ZV9waXBlX2NvbmZpZyhjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCj4gIAkJCQkgICAgIGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkKPiAgewo+IEBAIC02Njg3LDYgKzY3MDcs
OSBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX2NydGNfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqb2xkX2NydGNfc3RhdGUsCj4gIAlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShvbGRfY3J0
Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0RQX01TVCkpCj4gIAkJaW50ZWxfZGRpX3NldF92Y19wYXls
b2FkX2FsbG9jKG9sZF9jcnRjX3N0YXRlLCBmYWxzZSk7Cj4gIAo+ICsJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gMTEpCj4gKwkJaWNsX2Rpc2FibGVfdHJhbnNjb2Rlcl9wb3J0X3N5bmMob2xk
X2NydGNfc3RhdGUpOwo+ICsKPiAgCWlmICghdHJhbnNjb2Rlcl9pc19kc2koY3B1X3RyYW5zY29k
ZXIpKQo+ICAJCWludGVsX2RkaV9kaXNhYmxlX3RyYW5zY29kZXJfZnVuYyhvbGRfY3J0Y19zdGF0
ZSk7Cj4gIAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
