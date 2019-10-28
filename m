Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66027E726B
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 14:11:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDCB96E860;
	Mon, 28 Oct 2019 13:11:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF1DC6E85F
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 13:11:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 06:11:35 -0700
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="193252670"
Received: from jkrzyszt-desk.ger.corp.intel.com ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 06:11:34 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Date: Mon, 28 Oct 2019 14:11:27 +0100
Message-ID: <1823626.nVfmqq2VgK@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20191028125703.29872-1-michal.wajdeczko@intel.com>
References: <20191028125703.29872-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Use vfunc to check
 engine submission mode
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

SGkgTWljaGHFgiwKCk9uIE1vbmRheSwgT2N0b2JlciAyOCwgMjAxOSAxOjU3OjAzIFBNIENFVCBN
aWNoYWwgV2FqZGVjemtvIHdyb3RlOgo+IFdoaWxlIHByb2Nlc3NpbmcgQ1NCIHRoZXJlIGlzIG5v
IG5lZWQgdG8gbG9vayBhdCBHdUMgc3VibWlzc2lvbgo+IHNldHRpbmdzLCBqdXN0IGNoZWNrIGlm
IGVuZ2luZSBpcyBjb25maWd1cmVkIGZvciBleGVjbGlzdHMgbW9kZS4KPiAKPiBXaGlsZSB0b2Rh
eSBHdUMgc3VibWlzc2lvbiBpcyBkaXNhYmxlZCBpdCdzIHNldHRpbmdzIGFyZSBzdGlsbAo+IGJh
c2VkIG9uIG1vZHBhcmFtIHZhbHVlcyB0aGF0IG1pZ2h0IG5vdCBjb3JyZWN0bHkgcmVmbGVjdCBh
Y3R1YWwKPiBzdWJtaXNzaW9uIHN0YXR1cyBpbiBjYXNlIG9mIGFueSBmYWxsYmFjay4gVW50aWwg
dGhhdCBpcyBmdWxseQo+IGZpeGVkLCB1c2UgYWx0ZXJuYXRlIG1ldGhvZCB0byBjb25maXJtIHRo
YXQgZW5naW5lIHJlYWxseSBydW5zIGluCj4gZXhlY2xpc3RzIG1vZGUgYnkgY29tcGFyaW5nIHNl
dF9kZWZhdWx0X3N1Ym1pc3Npb24gdmZ1bmMuCj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRl
Y3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5r
cnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jIHwgOCArKysrKysrLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuaCB8IDIgKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC8KaW50ZWxfbHJjLmMKPiBpbmRleCAx
NjM0MDc0MDEzOWQuLmMwZDU2NGIyOGJlYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCj4gQEAgLTIwMjIsNyArMjAyMiw3IEBAIHN0YXRpYyB2b2lkIHByb2Nlc3NfY3NiKHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgCiplbmdpbmUpCj4gIAkgKi8KPiAgCUdFTV9CVUdfT04oIXRh
c2tsZXRfaXNfbG9ja2VkKCZleGVjbGlzdHMtPnRhc2tsZXQpICYmCj4gIAkJICAgIXJlc2V0X2lu
X3Byb2dyZXNzKGV4ZWNsaXN0cykpOwo+IC0JR0VNX0JVR19PTihVU0VTX0dVQ19TVUJNSVNTSU9O
KGVuZ2luZS0+aTkxNSkpOwo+ICsJR0VNX0JVR19PTighaW50ZWxfZW5naW5lX2luX2V4ZWNsaXN0
c19zdWJtaXNzaW9uX21vZGUoZW5naW5lKSk7Cj4gIAo+ICAJLyoKPiAgCSAqIE5vdGUgdGhhdCBj
c2Jfd3JpdGUsIGNzYl9zdGF0dXMgbWF5IGJlIGVpdGhlciBpbiBIV1NQIG9yIG1taW8uCj4gQEAg
LTQ3MTEsNiArNDcxMSwxMiBAQCB2b2lkIGludGVsX2xyX2NvbnRleHRfcmVzZXQoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAKKmVuZ2luZSwKPiAgCV9fZXhlY2xpc3RzX3VwZGF0ZV9yZWdfc3RhdGUo
Y2UsIGVuZ2luZSk7Cj4gIH0KPiAgCj4gK2Jvb2wgaW50ZWxfZW5naW5lX2luX2V4ZWNsaXN0c19z
dWJtaXNzaW9uX21vZGUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAKKmVuZ2luZSkKPiArewo+ICsJ
cmV0dXJuIGVuZ2luZS0+c2V0X2RlZmF1bHRfc3VibWlzc2lvbiA9PQo+ICsJICAgICAgIGludGVs
X2V4ZWNsaXN0c19zZXRfZGVmYXVsdF9zdWJtaXNzaW9uOwo+ICt9Cj4gKwo+ICAjaWYgSVNfRU5B
QkxFRChDT05GSUdfRFJNX0k5MTVfU0VMRlRFU1QpCj4gICNpbmNsdWRlICJzZWxmdGVzdF9scmMu
YyIKPiAgI2VuZGlmCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvCmludGVsX2xyYy5oCj4gaW5kZXggOTlk
YzU3NmE0ZTI1Li4yM2RkZTkwODMzNDkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuaAo+IEBAIC0xNDUsNCArMTQ1LDYgQEAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqCj4gIGlu
dGVsX3ZpcnR1YWxfZW5naW5lX2dldF9zaWJsaW5nKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSwKPiAgCQkJCSB1bnNpZ25lZCBpbnQgc2libGluZyk7Cj4gIAo+ICtib29sIGludGVsX2Vu
Z2luZV9pbl9leGVjbGlzdHNfc3VibWlzc2lvbl9tb2RlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
CiplbmdpbmUpOwoKTEdUTS4KTklUOiBJJ20gd29uZGVyaW5nIGlmIHRoZSBmdW5jdGlvbiBzaG91
bGQgYmUgbWFkZSBzdGF0aWMgaWYgdGhlcmUgaXMgb25seSBvbmUgCmxvY2FsIHVzZXIuCgpSZXZp
ZXdlZC1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXgsaW50
ZWwuY29tPgoKVGhhbmtzLApKYW51c3oKCj4gKwo+ICAjZW5kaWYgLyogX0lOVEVMX0xSQ19IXyAq
Lwo+IAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
