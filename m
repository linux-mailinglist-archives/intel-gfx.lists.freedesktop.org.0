Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD0E4F03E
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 23:02:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 650AB6E924;
	Fri, 21 Jun 2019 21:02:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99F056E924
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 21:02:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jun 2019 14:02:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,401,1557212400"; d="scan'208";a="182179007"
Received: from rmfosha-dev-1.fm.intel.com (HELO [10.19.83.123])
 ([10.19.83.123])
 by fmsmga001.fm.intel.com with ESMTP; 21 Jun 2019 14:02:55 -0700
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190621200940.32665-1-robert.m.fosha@intel.com>
 <op.z3q41qlaxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Robert Fosha <robert.m.fosha@intel.com>
Message-ID: <541ee423-d866-013c-95ad-5ced6c6d750e@intel.com>
Date: Fri, 21 Jun 2019 13:58:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <op.z3q41qlaxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Add debug capture of GuC
 exception
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMjEvMTkgMTo0MCBQTSwgTWljaGFsIFdhamRlY3prbyB3cm90ZToKPiBPbiBGcmksIDIx
IEp1biAyMDE5IDIyOjA5OjQwICswMjAwLCBSb2JlcnQgTS4gRm9zaGEgCj4gPHJvYmVydC5tLmZv
c2hhQGludGVsLmNvbT4gd3JvdGU6Cj4KPj4gRGV0ZWN0IEd1QyBmaXJtd2FyZSBsb2FkIGZhaWx1
cmUgZHVlIHRvIGFuIGV4Y2VwdGlvbiBkdXJpbmcgZXhlY3V0aW9uCj4+IGluIEd1QyBmaXJtd2Fy
ZS4gT3V0cHV0IHRoZSBHdUMgRUlQIHdoZXJlIGV4Y3BldGlvbiBvY2N1cmVkIHRvIGRtZXNnCj4K
PiB0d28gdHlwb3MgaGVyZQo+CkknbGwgY29ycmVjdCB0aGUgdHlwb3MuCgo+PiBmb3IgR3VDIGRl
YnVnIGluZm9ybWF0aW9uLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBSb2JlcnQgTS4gRm9zaGEgPHJv
YmVydC5tLmZvc2hhQGludGVsLmNvbT4KPj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRh
bmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxt
aWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPj4gLS0tCj4+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZ3VjX2Z3LmPCoCB8IDcgKysrKysrKwo+PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2d1Y19yZWcuaCB8IDEgKwo+PiDCoDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZncu
YyAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZncuYwo+PiBpbmRleCA3MmNk
YWZkOTYzNmEuLjkwY2I2NTY0MWQ2MCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZ3VjX2Z3LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3Vj
X2Z3LmMKPj4gQEAgLTE5Nyw2ICsxOTcsNyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgZ3VjX3JlYWR5
KHN0cnVjdCBpbnRlbF9ndWMgCj4+ICpndWMsIHUzMiAqc3RhdHVzKQo+PiBzdGF0aWMgaW50IGd1
Y193YWl0X3Vjb2RlKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPj4gwqB7Cj4+ICvCoMKgwqAgc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndWNfdG9faTkxNShndWMpOwo+PiDCoMKgwqDC
oCB1MzIgc3RhdHVzOwo+PiDCoMKgwqDCoCBpbnQgcmV0Owo+PiBAQCAtMjE2LDYgKzIxNywxMiBA
QCBzdGF0aWMgaW50IGd1Y193YWl0X3Vjb2RlKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPj4gwqDC
oMKgwqDCoMKgwqDCoCByZXQgPSAtRU5PRVhFQzsKPj4gwqDCoMKgwqAgfQo+PiArwqDCoMKgIGlm
ICgoc3RhdHVzICYgR1NfVUtFUk5FTF9NQVNLKSA9PSBHU19VS0VSTkVMX0VYQ0VQVElPTikgewo+
Cj4gSSBndWVzcyBHdUMgZXhjZXB0aW9uIGNvdWxkIGFsc28gaGFwcGVuIGFmdGVyIGZ3IGJvb3Qg
dGltZSwKPiBjYW4gd2UgYWRkIHN1cHBvcnQgdG8gZGV0ZWN0IGFuZCBsb2cgc3VjaCBleGNlcHRp
b25zPwo+IGFuZCBtYXliZSBzdWNoIHVuaWZpZWQgYXBwcm9hY2ggd2lsbCBjb3ZlciB0aGlzIGNh
c2UgYXMgd2VsbD8KPgpJbml0aWFsIHBsYW4gd2FzIHRvIGFkZCB0aGUgY2hlY2sgZHVyaW5nIGxv
YWQgYW5kIGJvb3QuIEFkZGl0aW9uYWwgCmNoZWNrcyBtYXkgYmUgYWRkZWQgbGF0ZXIuCgo+PiAr
wqDCoMKgwqDCoMKgwqAgRFJNX0VSUk9SKCJHdUMgZncgZXhjZXB0aW9uLiBHdUMgdUtlcm5lbCBF
SVA6ICUjeFxuIiwKPgo+IGRvIHdlIG5lZWQgdG8gdXNlIHR3byBuYW1lcyAiZnciIGFuZCAidUtl
cm5lbCIgaGVyZT8gbWF5YmUganVzdDoKPgpJJ2xsIGNoYW5nZSB0byB1c2UgeW91ciBzdWdnZXN0
aW9uLgo+IMKgwqDCoMKgRFJNX0VSUk9SKCJHdUMgZmlybXdhcmUgZXhjZXB0aW9uLiBFSVA6ICUj
eFxuIiwKPgo+PiArIGludGVsX3VuY29yZV9yZWFkKCZpOTE1LT51bmNvcmUsIFNPRlRfU0NSQVRD
SCgxMykpKTsKPj4gK8KgwqDCoMKgwqDCoMKgIHJldCA9IC1FTk9FWEVDOwo+Cj4gYXMgdGhpcyBp
cyBub3QgYSBibG9iIHByb2JsZW0sIG1heWJlIC1FTlhJTyB3aWxsIGZpdCBiZXR0ZXIgPwo+Ckdv
b2QgcXVlc3Rpb24uIEkgY2FuIGNoYW5nZSB0byAtRU5YSU8gaWYgeW91IHRoaW5rIGl0IG1ha2Vz
IG1vcmUgc2Vuc2UuCj4+ICvCoMKgwqAgfQo+PiArCj4+IMKgwqDCoMKgIGlmIChyZXQgPT0gMCAm
JiAhZ3VjX3hmZXJfY29tcGxldGVkKGd1YywgJnN0YXR1cykpIHsKPj4gwqDCoMKgwqDCoMKgwqDC
oCBEUk1fRVJST1IoIkd1QyBpcyByZWFkeSwgYnV0IHRoZSB4ZmVyICUwOHggaXMgaW5jb21wbGV0
ZVxuIiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdGF0dXMpOwo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3JlZy5oIAo+PiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2d1Y19yZWcuaAo+PiBpbmRleCBhMjE0ZjhiNzE5MjkuLmQ5MGI4
OGZhZGI1ZSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3Jl
Zy5oCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19yZWcuaAo+PiBAQCAt
MzcsNiArMzcsNyBAQAo+PiDCoCNkZWZpbmXCoMKgIEdTX1VLRVJORUxfTUFTS8KgwqDCoMKgwqDC
oMKgwqDCoCAoMHhGRiA8PCBHU19VS0VSTkVMX1NISUZUKQo+PiDCoCNkZWZpbmXCoMKgIEdTX1VL
RVJORUxfTEFQSUNfRE9ORcKgwqDCoMKgwqDCoMKgwqDCoCAoMHgzMCA8PCBHU19VS0VSTkVMX1NI
SUZUKQo+PiDCoCNkZWZpbmXCoMKgIEdTX1VLRVJORUxfRFBDX0VSUk9SwqDCoMKgwqDCoMKgwqDC
oMKgICgweDYwIDw8IEdTX1VLRVJORUxfU0hJRlQpCj4+ICsjZGVmaW5lwqDCoCBHU19VS0VSTkVM
X0VYQ0VQVElPTsKgwqDCoMKgwqDCoMKgwqDCoCAoMHg3MCA8PCBHU19VS0VSTkVMX1NISUZUKQo+
PiDCoCNkZWZpbmXCoMKgIEdTX1VLRVJORUxfUkVBRFnCoMKgwqDCoMKgwqDCoMKgwqAgKDB4RjAg
PDwgR1NfVUtFUk5FTF9TSElGVCkKPj4gwqAjZGVmaW5lwqDCoCBHU19NSUFfU0hJRlTCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIDE2Cj4+IMKgI2RlZmluZcKgwqAgR1NfTUlBX01BU0vCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAoMHgwNyA8PCBHU19NSUFfU0hJRlQpCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
