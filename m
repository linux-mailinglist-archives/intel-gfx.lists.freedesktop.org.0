Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A00FD49
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 17:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEA69891AF;
	Tue, 30 Apr 2019 15:55:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53571891AF
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 15:55:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 08:55:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,414,1549958400"; d="scan'208";a="342154530"
Received: from cataylo2-ubuntu18-10.jf.intel.com (HELO [10.7.199.54])
 ([10.7.199.54])
 by fmsmga005.fm.intel.com with ESMTP; 30 Apr 2019 08:55:22 -0700
To: Jani Nikula <jani.nikula@intel.com>,
 Aditya Swarup <aditya.swarup@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190402121440.20116-1-aditya.swarup@intel.com>
 <20190402121440.20116-2-aditya.swarup@intel.com>
 <20190405061448.GA3881@aswarup-desk> <878svrrgjl.fsf@intel.com>
From: Clinton Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <feae8a3d-95c2-68ba-dbe1-c46e4ec1bed2@intel.com>
Date: Tue, 30 Apr 2019 07:56:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <878svrrgjl.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: Add N & CTS values for
 10/12 bit deep color
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

Ck9uIDQvMzAvMTkgMjoyNSBBTSwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gT24gVGh1LCAwNCBBcHIg
MjAxOSwgQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+IHdyb3RlOgo+PiBP
biBUdWUsIEFwciAwMiwgMjAxOSBhdCAwNToxNDo0MEFNIC0wNzAwLCBBZGl0eWEgU3dhcnVwIHdy
b3RlOgo+Pj4gQWRkaW5nIE4gJiBDVFMgdmFsdWVzIGZvciAxMC8xMiBiaXQgZGVlcCBjb2xvciBm
cm9tIEFwcGVuZGl4IEMKPj4+IHRhYmxlIGluIEhETUkgMi4wIHNwZWMuIFRoZSBjb3JyZWN0IHZh
bHVlcyBmb3IgTiBpcyBub3QgY2hvc2VuCj4+PiBhdXRvbWF0aWNhbGx5IGJ5IGhhcmR3YXJlIGZv
ciBkZWVwIGNvbG9yIG1vZGVzLgo+Pj4KPj4+IHYyOiBSZW1vdmUgcmVkdW5kYW50IGNvZGUgYW5k
IG1ha2UgaXQgZ2VuZXJpYy4oSmFuaSkKPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBBZGl0eWEgU3dh
cnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4KPj4+IENjOiBDbGludCBUYXlsb3IgPENsaW50
b24uQS5UYXlsb3JAaW50ZWwuY29tPgo+Pj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Cj4+PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4KPj4+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29t
Pgo+Pj4gLS0tCj4+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2F1ZGlvLmMgfCA4MiAr
KysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0KPj4+ICAgMSBmaWxlIGNoYW5nZWQsIDY5IGlu
c2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9hdWRpby5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
YXVkaW8uYwo+Pj4gaW5kZXggNTAyYjU3Y2U3MmFiLi5hZDUzYjA0ZmE1YTIgMTAwNjQ0Cj4+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9hdWRpby5jCj4+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9hdWRpby5jCj4+PiBAQCAtNzAsNiArNzAsMTMgQEAgc3RydWN0
IGRwX2F1ZF9uX20gewo+Pj4gICAJdTE2IG47Cj4+PiAgIH07Cj4+PiAgIAo+Pj4gK3N0cnVjdCBo
ZG1pX2F1ZF9uY3RzX3RhYmxlIHsKPj4+ICsJaW50IHNhbXBsZV9yYXRlOwo+Pj4gKwlpbnQgY2xv
Y2s7Cj4+PiArCWludCBuOwo+Pj4gKwlpbnQgY3RzOwo+Pj4gK307Cj4+PiArCj4+PiAgIC8qIFZh
bHVlcyBhY2NvcmRpbmcgdG8gRFAgMS40IFRhYmxlIDItMTA0ICovCj4+PiAgIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZHBfYXVkX25fbSBkcF9hdWRfbl9tW10gPSB7Cj4+PiAgIAl7IDMyMDAwLCBMQ18x
NjJNLCAxMDI0LCAxMDEyNSB9LAo+Pj4gQEAgLTE0NiwxMiArMTUzLDcgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCB7Cj4+PiAgICNkZWZpbmUgVE1EU181OTRNIDU5NDAwMAo+Pj4gICAjZGVmaW5lIFRN
RFNfNTkzTSA1OTM0MDcKPj4+ICAgCj4+PiAtc3RhdGljIGNvbnN0IHN0cnVjdCB7Cj4+PiAtCWlu
dCBzYW1wbGVfcmF0ZTsKPj4+IC0JaW50IGNsb2NrOwo+Pj4gLQlpbnQgbjsKPj4+IC0JaW50IGN0
czsKPj4+IC19IGhkbWlfYXVkX25jdHNbXSA9IHsKPj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGhk
bWlfYXVkX25jdHNfdGFibGUgaGRtaV9hdWRfbmN0c18yNGJwcFtdID0gewo+Pj4gICAJeyAzMjAw
MCwgVE1EU18yOTZNLCA1ODI0LCA0MjE4NzUgfSwKPj4+ICAgCXsgMzIwMDAsIFRNRFNfMjk3TSwg
MzA3MiwgMjIyNzUwIH0sCj4+PiAgIAl7IDMyMDAwLCBUTURTXzU5M00sIDU4MjQsIDg0Mzc1MCB9
LAo+Pj4gQEAgLTE4Miw2ICsxODQsNDkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB7Cj4+PiAgIAl7
IDE5MjAwMCwgVE1EU181OTRNLCAyNDU3NiwgNTk0MDAwIH0sCj4+PiAgIH07Cj4+PiAgIAo+Pj4g
Ky8qIEFwcGVuZGl4IEMgLSBOICYgQ1RTIHZhbHVlcyBmb3IgZGVlcCBjb2xvciBmcm9tIEhETUkg
Mi4wIHNwZWMqLwo+Pj4gKy8qIEhETUkgTi9DVFMgdGFibGUgZm9yIDEwIGJpdCBkZWVwIGNvbG9y
KDMwIGJwcCkqLwo+Pj4gKyNkZWZpbmUgVE1EU18zNzFNIDM3MTI1MAo+Pj4gKyNkZWZpbmUgVE1E
U18zNzBNIDM3MDg3OAo+Pj4gKwo+Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaGRtaV9hdWRfbmN0
c190YWJsZSBoZG1pX2F1ZF9uY3RzXzMwYnBwW10gPSB7Cj4+PiArCXsgMzIwMDAsIFRNRFNfMzcw
TSwgNTgyNCwgNTI3MzQ0IH0sCj4+PiArCXsgMzIwMDAsIFRNRFNfMzcxTSwgNjE0NCwgNTU2ODc1
IH0sCj4+PiArCXsgNDQxMDAsIFRNRFNfMzcwTSwgODkxOCwgNTg1OTM4IH0sCj4+PiArCXsgNDQx
MDAsIFRNRFNfMzcxTSwgNDcwNCwgMzA5Mzc1IH0sCj4+PiArCXsgODgyMDAsIFRNRFNfMzcwTSwg
MTc4MzYsIDU4NTkzOCB9LAo+Pj4gKwl7IDg4MjAwLCBUTURTXzM3MU0sIDk0MDgsIDMwOTM3NSB9
LAo+Pj4gKwl7IDE3NjQwMCwgVE1EU18zNzBNLCAzNTY3MiwgNTg1OTM4IH0sCj4+PiArCXsgMTc2
NDAwLCBUTURTXzM3MU0sIDE4ODE2LCAzMDkzNzUgfSwKPj4+ICsJeyA0ODAwMCwgVE1EU18zNzBN
LCAxMTY0OCwgNzAzMTI1IH0sCj4+PiArCXsgNDgwMDAsIFRNRFNfMzcxTSwgNTEyMCwgMzA5Mzc1
IH0sCj4+PiArCXsgOTYwMDAsIFRNRFNfMzcwTSwgMjMyOTYsIDcwMzEyNSB9LAo+Pj4gKwl7IDk2
MDAwLCBUTURTXzM3MU0sIDEwMjQwLCAzMDkzNzUgfSwKPj4+ICsJeyAxOTIwMDAsIFRNRFNfMzcw
TSwgNDY1OTIsIDcwMzEyNSB9LAo+Pj4gKwl7IDE5MjAwMCwgVE1EU18zNzFNLCAyMDQ4MCwgMzA5
Mzc1IH0sCj4+PiArfTsKPj4+ICsKPj4+ICsvKiBIRE1JIE4vQ1RTIHRhYmxlIGZvciAxMiBiaXQg
ZGVlcCBjb2xvcigzNiBicHApKi8KPj4+ICsjZGVmaW5lIFRNRFNfNDQ1XzVNIDQ0NTUwMAo+Pj4g
KyNkZWZpbmUgVE1EU180NDVNIDQ0NTA1NAo+Pj4gKwo+Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
aGRtaV9hdWRfbmN0c190YWJsZSBoZG1pX2F1ZF9uY3RzXzM2YnBwW10gPSB7Cj4+PiArCXsgMzIw
MDAsIFRNRFNfNDQ1TSwgNTgyNCwgNjMyODEzIH0sCj4+PiArCXsgMzIwMDAsIFRNRFNfNDQ1XzVN
LCA0MDk2LCA0NDU1MDAgfSwKPj4+ICsJeyA0NDEwMCwgVE1EU180NDVNLCA4OTE4LCA3MDMxMjUg
fSwKPj4+ICsJeyA0NDEwMCwgVE1EU180NDVfNU0sIDQ3MDQsIDM3MTI1MCB9LAo+Pj4gKwl7IDg4
MjAwLCBUTURTXzQ0NU0sIDE3ODM2LCA3MDMxMjUgfSwKPj4+ICsJeyA4ODIwMCwgVE1EU180NDVf
NU0sIDk0MDgsIDM3MTI1MCB9LAo+Pj4gKwl7IDE3NjQwMCwgVE1EU180NDVNLCAzNTY3MiwgNzAz
MTI1IH0sCj4+PiArCXsgMTc2NDAwLCBUTURTXzQ0NV81TSwgMTg4MTYsIDM3MTI1MCB9LAo+Pj4g
Kwl7IDQ4MDAwLCBUTURTXzQ0NU0sIDU4MjQsIDQyMTg3NSB9LAo+Pj4gKwl7IDQ4MDAwLCBUTURT
XzQ0NV81TSwgNTEyMCwgMzcxMjUwIH0sCj4+PiArCXsgOTYwMDAsIFRNRFNfNDQ1TSwgMTE2NDgs
IDQyMTg3NSB9LAo+Pj4gKwl7IDk2MDAwLCBUTURTXzQ0NV81TSwgMTAyNDAsIDM3MTI1MCB9LAo+
Pj4gKwl7IDE5MjAwMCwgVE1EU180NDVNLCAyMzI5NiwgNDIxODc1IH0sCj4+PiArCXsgMTkyMDAw
LCBUTURTXzQ0NV81TSwgMjA0ODAsIDM3MTI1MCB9LAo+Pj4gK307Cj4+PiArCj4+PiAgIC8qIGdl
dCBBVURfQ09ORklHX1BJWEVMX0NMT0NLX0hETUlfKiB2YWx1ZSBmb3IgbW9kZSAqLwo+Pj4gICBz
dGF0aWMgdTMyIGF1ZGlvX2NvbmZpZ19oZG1pX3BpeGVsX2Nsb2NrKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+Pj4gICB7Cj4+PiBAQCAtMjEwLDE2ICsyNTUsMjcg
QEAgc3RhdGljIHUzMiBhdWRpb19jb25maWdfaGRtaV9waXhlbF9jbG9jayhjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGEKPj4+ICAgc3RhdGljIGludCBhdWRpb19jb25maWdf
aGRtaV9nZXRfbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPj4+
ICAgCQkJCSAgIGludCByYXRlKQo+Pj4gICB7Cj4+PiAtCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxh
eV9tb2RlICphZGp1c3RlZF9tb2RlID0KPj4+IC0JCSZjcnRjX3N0YXRlLT5iYXNlLmFkanVzdGVk
X21vZGU7Cj4+PiAtCWludCBpOwo+Pj4gKwljb25zdCBzdHJ1Y3QgaGRtaV9hdWRfbmN0c190YWJs
ZSAqaGRtaV9uY3RzX3RhYmxlOwo+Pj4gKwlpbnQgaSwgc2l6ZSA9IDA7Cj4+PiArCj4+PiArCWlm
IChjcnRjX3N0YXRlLT5waXBlX2JwcCA9PSAzNikgewo+Pj4gKwkJaGRtaV9uY3RzX3RhYmxlID0g
aGRtaV9hdWRfbmN0c18zNmJwcDsKPj4+ICsJCXNpemUgPSBBUlJBWV9TSVpFKGhkbWlfYXVkX25j
dHNfMzZicHApOwo+Pj4gKwl9IGVsc2UgaWYgKGNydGNfc3RhdGUtPnBpcGVfYnBwID09IDMwKSB7
Cj4+PiArCQloZG1pX25jdHNfdGFibGUgPSBoZG1pX2F1ZF9uY3RzXzMwYnBwOwo+Pj4gKwkJc2l6
ZSA9IEFSUkFZX1NJWkUoaGRtaV9hdWRfbmN0c18zMGJwcCk7Cj4+PiArCX0gZWxzZSB7Cj4+PiAr
CQloZG1pX25jdHNfdGFibGUgPSBoZG1pX2F1ZF9uY3RzXzI0YnBwOwo+Pj4gKwkJc2l6ZSA9IEFS
UkFZX1NJWkUoaGRtaV9hdWRfbmN0c18yNGJwcCk7Cj4+PiArCX0KPj4+ICAgCj4+PiAtCWZvciAo
aSA9IDA7IGkgPCBBUlJBWV9TSVpFKGhkbWlfYXVkX25jdHMpOyBpKyspIHsKPj4+IC0JCWlmIChy
YXRlID09IGhkbWlfYXVkX25jdHNbaV0uc2FtcGxlX3JhdGUgJiYKPj4+IC0JCSAgICBhZGp1c3Rl
ZF9tb2RlLT5jcnRjX2Nsb2NrID09IGhkbWlfYXVkX25jdHNbaV0uY2xvY2spIHsKPj4+IC0JCQly
ZXR1cm4gaGRtaV9hdWRfbmN0c1tpXS5uOwo+Pj4gKwlmb3IgKGkgPSAwOyAgaSA8IHNpemU7IGkr
Kykgewo+Pj4gKwkJaWYgKHJhdGUgPT0gaGRtaV9uY3RzX3RhYmxlW2ldLnNhbXBsZV9yYXRlICYm
Cj4+PiArCQkgICAgY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA9PSBoZG1pX25jdHNfdGFibGVbaV0u
Y2xvY2spIHsKPj4+ICsJCQlyZXR1cm4gaGRtaV9uY3RzX3RhYmxlW2ldLm47Cj4+PiAgIAkJfQo+
Pj4gICAJfQo+Pj4gKwo+Pj4gICAJcmV0dXJuIDA7Cj4+PiAgIH0KPj4+ICAgCj4+PiAtLSAKPj4+
IDIuMTcuMQo+Pj4KPj4gSmFuaQo+PiBEbyB5b3Ugd2FudCBtZSB0byBjaGFuZ2UgYW55dGhpbmcg
aW4gdGhpcyBwYXRjaD8KPiBIZXksIHBsZWFzZSBkb24ndCBkcm9wIHRoaW5ncyBvbiB0aGUgZmxv
b3IgaWYgeW91IGRvbid0IGhlYXIgZnJvbSBtZSEKPgo+IEkgZGlkbid0IGxvb2sgYXQgdGhlIHNw
ZWMsIGJ1dCBpdCBzZWVtcyBvZGQgdG8gbWUgdGhhdCB0aGUgYnBwIHdvdWxkCj4gbGltaXQgdXMg
dG8gc3BlY2lmaWMgcG9ydCBjbG9ja3MuIElzIHRoYXQgcmVhbGx5IHNvPyBXaGF0IGlmIHlvdSBo
YXZlLAo+IHNheSwgVE1EU181OTRNIGFuZCAzNiBicHAsIHRoaXMgd291bGRuJ3QgZmluZCB0aGUg
cGFyYW1zLgoKVE1EU181OTRNIGFuZCAzNmJwcCBpcyBub3QgcG9zc2libGUuIDU5NCB4IDEuNSAo
MzYgYml0KSB3b3VsZCByZXF1aXJlIGEgCjg5MU1IeiBUTURTIGNsb2NrIGFuZCB0aGUgTWF4IFRN
RFMgaW4gdGhlIEhETUkgc3BlYyBpcyA1OTQgTUh6LiAuCgotQ2xpbnQKCgo+Cj4gQlIsCj4gSmFu
aS4KPgo+Cj4+IFJlZ2FyZHMsCj4+IEFkaXR5YSBTd2FydXAKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
