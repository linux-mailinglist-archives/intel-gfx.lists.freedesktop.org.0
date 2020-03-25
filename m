Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 565A3192F6E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 18:35:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7813897E8;
	Wed, 25 Mar 2020 17:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD052897E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 17:35:46 +0000 (UTC)
IronPort-SDR: PSous4YWjxnnSyCVtI7cN9k/6Qt6wwQbx8zV3nO8MUUnb1ejQybPe+PiStbWg07zv/eMbFF40v
 HZLIZGDievDQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 10:35:46 -0700
IronPort-SDR: zoJAJwZ+6BwFXBMsK5d+7v1upvFKhRiu67amVW1hFPQbLpLAw5td5U7y0VwJYJd2lIDXBLPMva
 aTuSXNwL/upQ==
X-IronPort-AV: E=Sophos;i="5.72,305,1580803200"; d="scan'208";a="446695521"
Received: from johnharr-mobl3.ger.corp.intel.com (HELO [10.212.150.155])
 ([10.212.150.155])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 10:35:45 -0700
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200312011631.15262-1-daniele.ceraolospurio@intel.com>
 <20200312011631.15262-5-daniele.ceraolospurio@intel.com>
 <a594751e-db07-867f-d851-ab059b161d74@Intel.com>
 <83af4518-a3cb-5066-7eff-cf1f2dacf3ab@intel.com>
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <c90f5adb-f527-728c-49f8-75ad54a7d48e@Intel.com>
Date: Wed, 25 Mar 2020 10:35:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <83af4518-a3cb-5066-7eff-cf1f2dacf3ab@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 4/6] drm/i915/debugfs: move uC printers
 and update debugfs file names
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMy8yNS8yMDIwIDEwOjE0LCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIHdyb3RlOgo+IE9uIDMv
MjUvMjAgMTA6MDUgQU0sIEpvaG4gSGFycmlzb24gd3JvdGU6Cj4+IE9uIDMvMTEvMjAyMCAxODox
NiwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyB3cm90ZToKPj4+IE1vdmUgdGhlIHByaW50ZXJzIHRv
IHRoZSByZXNwZWN0aXZlIGZpbGVzIGZvciBjbGFyaXR5LiBUaGUKPj4+IGd1Y19sb2FkX3N0YXR1
cyBkZWJ1Z2ZzIGhhcyBiZWVuIHNxdWFzaGVkIGluIHRoZSBndWNfaW5mbyBvbmUsIGhhcwo+Pj4g
aGF2aW5nIHNlcGFyYXRlIG9uZXMgd2Fzbid0IHZlcnkgdXNlZnVsLiBUaGUgSHVDIGRlYnVnZnMg
aGFzIGJlZW4KPj4+IHJlbmFtZWQgaHVjX2luZm8gdG8gbWF0Y2guCj4+Pgo+Pj4gdjI6IGtlZXAg
cHJpbnRpbmcgSFVDX1NUQVRVUzIgKFRvbnkpLCBhdm9pZCBjb25zdC0+bm9uLWNvbnN0Cj4+PiDC
oMKgwqDCoCBjb250YWluZXJfb2YgKEphbmkpCj4+Pgo+Pj4gU3VnZ2VzdGVkLWJ5OiBNaWNoYWwg
V2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6
IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+
Cj4+PiBDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4+
PiBDYzogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KPj4+IENjOiBN
YXR0aGV3IEJyb3N0IDxtYXR0aGV3LmJyb3N0QGludGVsLmNvbT4KPj4+IENjOiBUb255IFllIDx0
b255LnllQGludGVsLmNvbT4KPj4+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXgu
aW50ZWwuY29tPgo+Pj4gLS0tCj4+PiA8c25pcD4KPj4+Cj4+PiArc3RhdGljIGludCBpOTE1X2h1
Y19pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKPj4+IMKgIHsKPj4+IMKgwqDC
oMKgwqAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gbm9kZV90b19pOTE1KG0t
PnByaXZhdGUpOwo+Pj4gLcKgwqDCoCBpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKPj4+IC3CoMKg
wqAgc3RydWN0IGRybV9wcmludGVyIHA7Cj4+PiAtCj4+PiAtwqDCoMKgIGlmICghSEFTX0dUX1VD
KGRldl9wcml2KSkKPj4+IC3CoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT0RFVjsKPj4+IC0KPj4+
IC3CoMKgwqAgcCA9IGRybV9zZXFfZmlsZV9wcmludGVyKG0pOwo+Pj4gLcKgwqDCoCBpbnRlbF91
Y19md19kdW1wKCZkZXZfcHJpdi0+Z3QudWMuaHVjLmZ3LCAmcCk7Cj4+PiAtCj4+PiAtwqDCoMKg
IHdpdGhfaW50ZWxfcnVudGltZV9wbSgmZGV2X3ByaXYtPnJ1bnRpbWVfcG0sIHdha2VyZWYpCj4+
PiAtwqDCoMKgwqDCoMKgwqAgc2VxX3ByaW50ZihtLCAiXG5IdUMgc3RhdHVzIDB4JTA4eDpcbiIs
IAo+Pj4gSTkxNV9SRUFEKEhVQ19TVEFUVVMyKSk7Cj4+PiAtCj4+PiAtwqDCoMKgIHJldHVybiAw
Owo+Pj4gLX0KPj4+IC0KPj4+IC1zdGF0aWMgaW50IGk5MTVfZ3VjX2xvYWRfc3RhdHVzX2luZm8o
c3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQo+Pj4gLXsKPj4+IC3CoMKgwqAgc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gbm9kZV90b19pOTE1KG0tPnByaXZhdGUpOwo+
Pj4gLcKgwqDCoCBpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKPj4+IC3CoMKgwqAgc3RydWN0IGRy
bV9wcmludGVyIHA7Cj4+PiArwqDCoMKgIHN0cnVjdCBpbnRlbF9odWMgKmh1YyA9ICZkZXZfcHJp
di0+Z3QudWMuaHVjOwo+Pj4gK8KgwqDCoCBzdHJ1Y3QgZHJtX3ByaW50ZXIgcCA9IGRybV9zZXFf
ZmlsZV9wcmludGVyKG0pOwo+Pj4gLcKgwqDCoCBpZiAoIUhBU19HVF9VQyhkZXZfcHJpdikpCj4+
PiArwqDCoMKgIGlmICghaW50ZWxfaHVjX2lzX3N1cHBvcnRlZChodWMpKQo+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgIHJldHVybiAtRU5PREVWOwo+PiBJc24ndCB0aGlzIHRlc3QgZHVwbGljYXRlZCBp
bnNpZGUgaW50ZWxfaHVjX2xvYWRfc3RhdHVzKCkgd2l0aCBhIAo+PiBwcmludCBvZiAnSHVDIG5v
dCBzdXBwb3J0ZWQnPyBTbyBubyBuZWVkIHRvIGZhaWwgdGhlIGNhbGwgaGVyZT8KPj4KPgo+IGlu
dGVsX2h1Y19sb2FkX3N0YXR1cyBpcyBub3cgYSBnZW5lcmljIHByaW50ZXIgd2hpY2ggY2FuIGJl
IGNhbGxlZCAKPiBmcm9tIG90aGVyIHBsYWNlcywgc28gaXQgbmVlZHMgdG8gcHJpbnQgdXNlZnVs
IG1lc3NhZ2VzIGluIGFsbCBjYXNlcy4gCj4gRnJvbSB0aGUgZGVidWdmcyBQT1YsIEkgZGlkbid0
IHdhbnQgdG8gY2hhbmdlIHRoZSBsZWdhY3kgYmVoYXZpb3Igb2YgCj4gcmV0dXJuaW5nIC1FTk9E
RVYgb24gcGxhdGZvcm1zIHRoYXQgZG9uJ3Qgc3VwcG9ydCB0aGUgYmxvYiwgd2hpY2ggSU1PIAo+
IGlzIGEgY2xlYXIgZW91Z2ggaW5kaWNhdGlvbiBvZiB0aGUgbGFjayBvZiBzdXBwb3J0LiBOb3Rl
IHRoYXQgaW4gdGhlIAo+IG5leHQgcGF0Y2ggdGhlIGNvZGUgaXMgY2hhbmdlZCBzbyB0aGF0IHRo
ZSBkZWJndWZzIGZpbGVzIGFyZSBub3QgZXZlbiAKPiBjcmVhdGVkIGlmIHRoZXJlIGlzIG5vIHVD
IHN1cHBvcnQgb24gdGhlIHBsYXRmb3JtcyAodGhpcyBpcyBpbiBsaW5lIAo+IHdpdGggd2hhdCB3
ZSBkbyBmb3Igb3RoZXIgR1QgZmVhdHVyZXMpLgo+Cj4gRGFuaWVsZQo+Ck9rYXkuIFRoYXQgbWFr
ZXMgc2Vuc2UuCgpSZXZpZXdlZC1ieTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQElu
dGVsLmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
