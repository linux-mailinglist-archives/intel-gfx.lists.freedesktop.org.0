Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A38285DB
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 20:22:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D59A66E049;
	Thu, 23 May 2019 18:22:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 000926E049
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 18:22:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 11:22:42 -0700
X-ExtLoop1: 1
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by orsmga006.jf.intel.com with ESMTP; 23 May 2019 11:22:42 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.171]) by
 ORSMSX102.amr.corp.intel.com ([169.254.3.72]) with mapi id 14.03.0415.000;
 Thu, 23 May 2019 11:22:42 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 06/10] drm/i915/dmc: extract function to parse dmc_header
Thread-Index: AQHVEUDzRjEY6MO1q0uTOf/MNVi8BKZ5Bkig
Date: Thu, 23 May 2019 18:22:40 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073480B5145@ORSMSX108.amr.corp.intel.com>
References: <20190523082420.10352-1-lucas.demarchi@intel.com>
 <20190523082420.10352-6-lucas.demarchi@intel.com>
In-Reply-To: <20190523082420.10352-6-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDViZDk4MzctNDlmYS00MjcwLWIwM2MtNzAzYTA0NjQyYWU1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRXhlRjkrZVRuOUZROVlcL0cyMTEzYkN4ZVwvZGNuM3J2UzVIMWxUVzJwZDhXUCtFXC90OVg2SXZcL09jZmc2cEhueVIifQ==
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 06/10] drm/i915/dmc: extract function to
 parse dmc_header
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

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IERlIE1hcmNoaSwgTHVjYXMKPlNl
bnQ6IFRodXJzZGF5LCBNYXkgMjMsIDIwMTkgMToyNCBBTQo+VG86IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwu
Y29tPjsgU3JpdmF0c2EsIEFudXNoYQo+PGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+OyBWaXZp
LCBSb2RyaWdvIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPjsgRGUKPk1hcmNoaSwgTHVjYXMgPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPlN1YmplY3Q6IFtQQVRDSCAwNi8xMF0gZHJtL2k5MTUv
ZG1jOiBleHRyYWN0IGZ1bmN0aW9uIHRvIHBhcnNlIGRtY19oZWFkZXIKPgo+Q29tcGxldGUgdGhl
IGV4dHJhY3Rpb24gb2YgZnVuY3Rpb25zIHRvIHBhcnNlIHNwZWNpZmljIHBhcnRzIG9mIHRoZSBm
aXJtd2FyZS4gVGhlCj5yZXR1cm4gb2YgdGhlIGZ1bmN0aW9uIHBhcnNlX2Nzcl9mdygpIGlzIG5v
dyByZWR1bmRhbnQgc2luY2UgaXQgYWxyZWFkeSBzZXRzIHRoZQo+ZG1jX3BheWxvYWQgZmllbGQu
IENoYW5naW5nIGl0IGlzIGxlZnQgZm9yIGxhdGVyIHRvIGF2b2lkIG5vaXNlIGluIHRoZSBjb21t
aXQuCj4KPlNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgpSZXZpZXdlZC1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50
ZWwuY29tPgoKPi0tLQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jIHwgMTAyICsr
KysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0KPiAxIGZpbGUgY2hhbmdlZCwgNjAgaW5zZXJ0
aW9ucygrKSwgNDIgZGVsZXRpb25zKC0pCj4KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9jc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jCj5pbmRl
eCBiMTk3NDJiZWNiOTguLjIwZGQ0YmQ1ZmVhZSAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2Nzci5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3Iu
Ywo+QEAgLTMzMiw2ICszMzIsNjEgQEAgc3RhdGljIHUzMiBmaW5kX2RtY19md19vZmZzZXQoY29u
c3Qgc3RydWN0Cj5pbnRlbF9md19pbmZvICpmd19pbmZvLAo+IAlyZXR1cm4gZG1jX29mZnNldDsK
PiB9Cj4KPitzdGF0aWMgdTMyIHBhcnNlX2Nzcl9md19kbWMoc3RydWN0IGludGVsX2NzciAqY3Ny
LAo+KwkJCSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfZG1jX2hlYWRlciAqZG1jX2hlYWRlcikgewo+
Kwl1bnNpZ25lZCBpbnQgaSwgcGF5bG9hZF9zaXplOwo+Kwl1MzIgcjsKPisJdTggKnBheWxvYWQ7
Cj4rCj4rCWlmIChzaXplb2Yoc3RydWN0IGludGVsX2RtY19oZWFkZXIpICE9IGRtY19oZWFkZXIt
PmhlYWRlcl9sZW4pIHsKPisJCURSTV9FUlJPUigiRE1DIGZpcm13YXJlIGhhcyB3cm9uZyBkbWMg
aGVhZGVyIGxlbmd0aCAiCj4rCQkJICAiKCV1IGJ5dGVzKVxuIiwKPisJCQkgIChkbWNfaGVhZGVy
LT5oZWFkZXJfbGVuKSk7Cj4rCQlyZXR1cm4gMDsKPisJfQo+Kwo+KwkvKiBDYWNoZSB0aGUgZG1j
IGhlYWRlciBpbmZvLiAqLwo+KwlpZiAoZG1jX2hlYWRlci0+bW1pb19jb3VudCA+IEFSUkFZX1NJ
WkUoY3NyLT5tbWlvYWRkcikpIHsKPisJCURSTV9FUlJPUigiRE1DIGZpcm13YXJlIGhhcyB3cm9u
ZyBtbWlvIGNvdW50ICV1XG4iLAo+KwkJCSAgZG1jX2hlYWRlci0+bW1pb19jb3VudCk7Cj4rCQly
ZXR1cm4gMDsKPisJfQo+Kwo+Kwljc3ItPm1taW9fY291bnQgPSBkbWNfaGVhZGVyLT5tbWlvX2Nv
dW50Owo+Kwlmb3IgKGkgPSAwOyBpIDwgZG1jX2hlYWRlci0+bW1pb19jb3VudDsgaSsrKSB7Cj4r
CQlpZiAoZG1jX2hlYWRlci0+bW1pb2FkZHJbaV0gPCBDU1JfTU1JT19TVEFSVF9SQU5HRSB8fAo+
KwkJICAgIGRtY19oZWFkZXItPm1taW9hZGRyW2ldID4gQ1NSX01NSU9fRU5EX1JBTkdFKSB7Cj4r
CQkJRFJNX0VSUk9SKCJETUMgZmlybXdhcmUgaGFzIHdyb25nIG1taW8gYWRkcmVzcwo+MHgleFxu
IiwKPisJCQkJICBkbWNfaGVhZGVyLT5tbWlvYWRkcltpXSk7Cj4rCQkJcmV0dXJuIDA7Cj4rCQl9
Cj4rCQljc3ItPm1taW9hZGRyW2ldID0gX01NSU8oZG1jX2hlYWRlci0+bW1pb2FkZHJbaV0pOwo+
KwkJY3NyLT5tbWlvZGF0YVtpXSA9IGRtY19oZWFkZXItPm1taW9kYXRhW2ldOwo+Kwl9Cj4rCj4r
CS8qIGZ3X3NpemUgaXMgaW4gZHdvcmRzLCBzbyBtdWx0aXBsaWVkIGJ5IDQgdG8gY29udmVydCBp
bnRvIGJ5dGVzLiAqLwo+KwlwYXlsb2FkX3NpemUgPSBkbWNfaGVhZGVyLT5md19zaXplICogNDsK
PisJaWYgKHBheWxvYWRfc2l6ZSA+IGNzci0+bWF4X2Z3X3NpemUpIHsKPisJCURSTV9FUlJPUigi
RE1DIEZXIHRvbyBiaWcgKCV1IGJ5dGVzKVxuIiwgcGF5bG9hZF9zaXplKTsKPisJCXJldHVybiAw
Owo+Kwl9Cj4rCWNzci0+ZG1jX2Z3X3NpemUgPSBkbWNfaGVhZGVyLT5md19zaXplOwo+Kwo+Kwlj
c3ItPmRtY19wYXlsb2FkID0ga21hbGxvYyhwYXlsb2FkX3NpemUsIEdGUF9LRVJORUwpOwo+Kwlp
ZiAoIWNzci0+ZG1jX3BheWxvYWQpIHsKPisJCURSTV9FUlJPUigiTWVtb3J5IGFsbG9jYXRpb24g
ZmFpbGVkIGZvciBkbWMgcGF5bG9hZFxuIik7Cj4rCQlyZXR1cm4gMDsKPisJfQo+Kwo+KwlyID0g
c2l6ZW9mKHN0cnVjdCBpbnRlbF9kbWNfaGVhZGVyKTsKPisJcGF5bG9hZCA9ICh1OCAqKShkbWNf
aGVhZGVyKSArIHI7Cj4rCW1lbWNweShjc3ItPmRtY19wYXlsb2FkLCBwYXlsb2FkLCBwYXlsb2Fk
X3NpemUpOwo+KwlyICs9IHBheWxvYWRfc2l6ZTsKPisKPisJcmV0dXJuIHI7Cj4rfQo+Kwo+IHN0
YXRpYyB1MzIKPiBwYXJzZV9jc3JfZndfcGFja2FnZShzdHJ1Y3QgaW50ZWxfY3NyICpjc3IsCj4g
CQkgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wYWNrYWdlX2hlYWRlciAqcGFja2FnZV9oZWFkZXIs
IEBAIC0KPjQxOCw5ICs0NzMsOCBAQCBzdGF0aWMgdTMyICpwYXJzZV9jc3JfZncoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+IAlzdHJ1Y3QgaW50ZWxfZG1jX2hlYWRlciAqZG1j
X2hlYWRlcjsKPiAJc3RydWN0IGludGVsX2NzciAqY3NyID0gJmRldl9wcml2LT5jc3I7Cj4gCWNv
bnN0IHN0cnVjdCBzdGVwcGluZ19pbmZvICpzaSA9IGludGVsX2dldF9zdGVwcGluZ19pbmZvKGRl
dl9wcml2KTsKPi0JdTMyIHJlYWRjb3VudCA9IDAsIG5ieXRlczsKPi0JdTMyIGksIHI7Cj4tCXUz
MiAqZG1jX3BheWxvYWQ7Cj4rCXUzMiByZWFkY291bnQgPSAwOwo+Kwl1MzIgcjsKPgo+IAlpZiAo
IWZ3KQo+IAkJcmV0dXJuIE5VTEw7Cj5AQCAtNDQzLDQ3ICs0OTcsMTEgQEAgc3RhdGljIHUzMiAq
cGFyc2VfY3NyX2Z3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlCj4qZGV2X3ByaXYsCj4KPiAJLyog
RXh0cmFjdCBkbWNfaGVhZGVyIGluZm9ybWF0aW9uLiAqLwo+IAlkbWNfaGVhZGVyID0gKHN0cnVj
dCBpbnRlbF9kbWNfaGVhZGVyICopJmZ3LT5kYXRhW3JlYWRjb3VudF07Cj4tCWlmIChzaXplb2Yo
c3RydWN0IGludGVsX2RtY19oZWFkZXIpICE9IChkbWNfaGVhZGVyLT5oZWFkZXJfbGVuKSkgewo+
LQkJRFJNX0VSUk9SKCJETUMgZmlybXdhcmUgaGFzIHdyb25nIGRtYyBoZWFkZXIgbGVuZ3RoICIK
Pi0JCQkgICIoJXUgYnl0ZXMpXG4iLAo+LQkJCSAgKGRtY19oZWFkZXItPmhlYWRlcl9sZW4pKTsK
Pi0JCXJldHVybiBOVUxMOwo+LQl9Cj4tCXJlYWRjb3VudCArPSBzaXplb2Yoc3RydWN0IGludGVs
X2RtY19oZWFkZXIpOwo+LQo+LQkvKiBDYWNoZSB0aGUgZG1jIGhlYWRlciBpbmZvLiAqLwo+LQlp
ZiAoZG1jX2hlYWRlci0+bW1pb19jb3VudCA+IEFSUkFZX1NJWkUoY3NyLT5tbWlvYWRkcikpIHsK
Pi0JCURSTV9FUlJPUigiRE1DIGZpcm13YXJlIGhhcyB3cm9uZyBtbWlvIGNvdW50ICV1XG4iLAo+
LQkJCSAgZG1jX2hlYWRlci0+bW1pb19jb3VudCk7Cj4tCQlyZXR1cm4gTlVMTDsKPi0JfQo+LQlj
c3ItPm1taW9fY291bnQgPSBkbWNfaGVhZGVyLT5tbWlvX2NvdW50Owo+LQlmb3IgKGkgPSAwOyBp
IDwgZG1jX2hlYWRlci0+bW1pb19jb3VudDsgaSsrKSB7Cj4tCQlpZiAoZG1jX2hlYWRlci0+bW1p
b2FkZHJbaV0gPCBDU1JfTU1JT19TVEFSVF9SQU5HRSB8fAo+LQkJICAgIGRtY19oZWFkZXItPm1t
aW9hZGRyW2ldID4gQ1NSX01NSU9fRU5EX1JBTkdFKSB7Cj4tCQkJRFJNX0VSUk9SKCJETUMgZmly
bXdhcmUgaGFzIHdyb25nIG1taW8gYWRkcmVzcwo+MHgleFxuIiwKPi0JCQkJICBkbWNfaGVhZGVy
LT5tbWlvYWRkcltpXSk7Cj4tCQkJcmV0dXJuIE5VTEw7Cj4tCQl9Cj4tCQljc3ItPm1taW9hZGRy
W2ldID0gX01NSU8oZG1jX2hlYWRlci0+bW1pb2FkZHJbaV0pOwo+LQkJY3NyLT5tbWlvZGF0YVtp
XSA9IGRtY19oZWFkZXItPm1taW9kYXRhW2ldOwo+LQl9Cj4tCj4tCS8qIGZ3X3NpemUgaXMgaW4g
ZHdvcmRzLCBzbyBtdWx0aXBsaWVkIGJ5IDQgdG8gY29udmVydCBpbnRvIGJ5dGVzLiAqLwo+LQlu
Ynl0ZXMgPSBkbWNfaGVhZGVyLT5md19zaXplICogNDsKPi0JaWYgKG5ieXRlcyA+IGNzci0+bWF4
X2Z3X3NpemUpIHsKPi0JCURSTV9FUlJPUigiRE1DIEZXIHRvbyBiaWcgKCV1IGJ5dGVzKVxuIiwg
bmJ5dGVzKTsKPi0JCXJldHVybiBOVUxMOwo+LQl9Cj4tCWNzci0+ZG1jX2Z3X3NpemUgPSBkbWNf
aGVhZGVyLT5md19zaXplOwo+LQo+LQlkbWNfcGF5bG9hZCA9IGttYWxsb2MobmJ5dGVzLCBHRlBf
S0VSTkVMKTsKPi0JaWYgKCFkbWNfcGF5bG9hZCkgewo+LQkJRFJNX0VSUk9SKCJNZW1vcnkgYWxs
b2NhdGlvbiBmYWlsZWQgZm9yIGRtYyBwYXlsb2FkXG4iKTsKPisJciA9IHBhcnNlX2Nzcl9md19k
bWMoY3NyLCBkbWNfaGVhZGVyKTsKPisJaWYgKCFyKQo+IAkJcmV0dXJuIE5VTEw7Cj4tCX0KPgo+
LQlyZXR1cm4gbWVtY3B5KGRtY19wYXlsb2FkLCAmZnctPmRhdGFbcmVhZGNvdW50XSwgbmJ5dGVz
KTsKPisJcmV0dXJuIGNzci0+ZG1jX3BheWxvYWQ7Cj4gfQo+Cj4gc3RhdGljIHZvaWQgaW50ZWxf
Y3NyX3J1bnRpbWVfcG1fZ2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPi0t
Cj4yLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
