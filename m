Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA19580E0
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 12:50:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CC506E0C5;
	Thu, 27 Jun 2019 10:50:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D2D16E0C4
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 10:50:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 03:50:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="189017962"
Received: from lswidere-mobl.ger.corp.intel.com (HELO [10.249.140.121])
 ([10.249.140.121])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jun 2019 03:49:58 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190627080045.8814-1-lionel.g.landwerlin@intel.com>
 <20190627080045.8814-7-lionel.g.landwerlin@intel.com>
 <156162694988.20851.13994445934808199507@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <16ebcbdf-4358-62ca-9aad-a6d5dfe573e0@intel.com>
Date: Thu, 27 Jun 2019 13:49:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156162694988.20851.13994445934808199507@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5 06/10] drm/i915: add syncobj timeline
 support
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

VGhhbmtzIGEgbG90IGZvciB5b3VyIGNvbW1lbnRzLgoKT24gMjcvMDYvMjAxOSAxMjoxNSwgQ2hy
aXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTktMDYtMjcg
MDk6MDA6NDEpCj4+IEludHJvZHVjZXMgYSBuZXcgcGFyYW1ldGVycyB0byBleGVjYnVmIHNvIHRo
YXQgd2UgY2FuIHNwZWNpZnkgc3luY29iago+PiBoYW5kbGVzIGFzIHdlbGwgYXMgdGltZWxpbmUg
cG9pbnRzLgo+Pgo+PiB2MjogUmV1c2UgaTkxNV91c2VyX2V4dGVuc2lvbl9mbgo+Pgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5j
b20+Cj4+IC0tLQo+PiAgIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIu
YyAgICB8IDI4MCArKysrKysrKysrKysrKy0tLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jICAgICAgICAgICAgICAgfCAgIDIgKwo+PiAgIGluY2x1ZGUvdWFwaS9kcm0vaTkx
NV9kcm0uaCAgICAgICAgICAgICAgICAgICB8ICAzNyArKysKPj4gICAzIGZpbGVzIGNoYW5nZWQs
IDI2MyBpbnNlcnRpb25zKCspLCA1NiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4+IGluZGV4IDE5NzBkZDhjYmFj
My4uNDc2ZmFkZTZmY2FiIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9leGVjYnVmZmVyLmMKPj4gQEAgLTIxMyw2ICsyMTMsMTMgQEAgZW51bSB7Cj4+ICAg
ICogdGhlIGJhdGNoYnVmZmVyIGluIHRydXN0ZWQgbW9kZSwgb3RoZXJ3aXNlIHRoZSBpb2N0bCBp
cyByZWplY3RlZC4KPj4gICAgKi8KPj4gICAKPj4gK3N0cnVjdCBpOTE1X2RybV9kbWFfZmVuY2Vz
IHsKPiBpOTE1X2V4ZWNidWZmZXJfZmVuY2VzIG9yIGViX2ZlbmNlcyBhcyBpdCBpcyBwcml2YXRl
IHRvIHRoZSBpbXBsLgoKClN1cmUuCgoKPgo+PiArICAgICAgIHN0cnVjdCBkcm1fc3luY29iaiAq
c3luY29iajsgLyogVXNlIHdpdGggcHRyX21hc2tfYml0cygpICovCj4+ICsgICAgICAgc3RydWN0
IGRtYV9mZW5jZSAqZG1hX2ZlbmNlOwo+PiArICAgICAgIHU2NCB2YWx1ZTsKPj4gKyAgICAgICBz
dHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpjaGFpbl9mZW5jZTsKPj4gK307Cj4+ICsKPj4gICBzdHJ1
Y3QgaTkxNV9leGVjYnVmZmVyIHsKPj4gICAgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTU7IC8qKiBpOTE1IGJhY2twb2ludGVyICovCj4+ICAgICAgICAgIHN0cnVjdCBkcm1fZmls
ZSAqZmlsZTsgLyoqIHBlci1maWxlIGxvb2t1cCB0YWJsZXMgYW5kIGxpbWl0cyAqLwo+PiBAQCAt
Mjc1LDYgKzI4Miw3IEBAIHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgewo+PiAgIAo+PiAgICAgICAg
ICBzdHJ1Y3Qgewo+PiAgICAgICAgICAgICAgICAgIHU2NCBmbGFnczsgLyoqIEF2YWlsYWJsZSBl
eHRlbnNpb25zIHBhcmFtZXRlcnMgKi8KPj4gKyAgICAgICAgICAgICAgIHN0cnVjdCBkcm1faTkx
NV9nZW1fZXhlY2J1ZmZlcl9leHRfdGltZWxpbmVfZmVuY2VzIHRpbWVsaW5lX2ZlbmNlczsKPiBB
bm90aGVyIDQwYiBvbiBzdGFjay4gR2V0dGluZyBjbG9zZXIgdG8gdGhvc2Ugd2FybmluZyBiZWxs
cyBiZWluZyBzZXQgb2ZmLgo+Cj4+ICAgICAgICAgIH0gZXh0ZW5zaW9uczsKPj4gICB9Owo+PiAg
IAo+PiBAQCAtMjIyNCw2NyArMjIzMiwxOTMgQEAgZWJfc2VsZWN0X2VuZ2luZShzdHJ1Y3QgaTkx
NV9leGVjYnVmZmVyICplYiwKPj4gICB9Cj4+ICAgCj4+ICAgc3RhdGljIHZvaWQKPj4gLV9fZnJl
ZV9mZW5jZV9hcnJheShzdHJ1Y3QgZHJtX3N5bmNvYmogKipmZW5jZXMsIHVuc2lnbmVkIGludCBu
KQo+PiArX19mcmVlX2ZlbmNlX2FycmF5KHN0cnVjdCBpOTE1X2RybV9kbWFfZmVuY2VzICpmZW5j
ZXMsIHVuc2lnbmVkIGludCBuKQo+PiAgIHsKPj4gLSAgICAgICB3aGlsZSAobi0tKQo+PiAtICAg
ICAgICAgICAgICAgZHJtX3N5bmNvYmpfcHV0KHB0cl9tYXNrX2JpdHMoZmVuY2VzW25dLCAyKSk7
Cj4+ICsgICAgICAgd2hpbGUgKG4tLSkgewo+PiArICAgICAgICAgICAgICAgZHJtX3N5bmNvYmpf
cHV0KHB0cl9tYXNrX2JpdHMoZmVuY2VzW25dLnN5bmNvYmosIDIpKTsKPj4gKyAgICAgICAgICAg
ICAgIGRtYV9mZW5jZV9wdXQoZmVuY2VzW25dLmRtYV9mZW5jZSk7Cj4+ICsgICAgICAgICAgICAg
ICBrZnJlZShmZW5jZXNbbl0uY2hhaW5fZmVuY2UpOwo+PiArICAgICAgIH0KPj4gICAgICAgICAg
a3ZmcmVlKGZlbmNlcyk7Cj4+ICAgfQo+PiAgIAo+PiAtc3RhdGljIHN0cnVjdCBkcm1fc3luY29i
aiAqKgo+PiAtZ2V0X2ZlbmNlX2FycmF5KHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcjIg
KmFyZ3MsCj4+IC0gICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCj4+ICtzdGF0
aWMgc3RydWN0IGk5MTVfZHJtX2RtYV9mZW5jZXMgKgo+PiArZ2V0X3RpbWVsaW5lX2ZlbmNlX2Fy
cmF5KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLCBpbnQgKm91dF9uX2ZlbmNlcykKPj4gICB7
Cj4+IC0gICAgICAgY29uc3QgdW5zaWduZWQgbG9uZyBuZmVuY2VzID0gYXJncy0+bnVtX2NsaXBy
ZWN0czsKPj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNidWZmZXJfZXh0X3RpbWVs
aW5lX2ZlbmNlcyAqdGltZWxpbmVfZmVuY2VzID0KPj4gKyAgICAgICAgICAgICAgICZlYi0+ZXh0
ZW5zaW9ucy50aW1lbGluZV9mZW5jZXM7Cj4+ICsgICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9l
eGVjX2ZlbmNlIF9fdXNlciAqdXNlcl9mZW5jZXM7Cj4+ICsgICAgICAgc3RydWN0IGk5MTVfZHJt
X2RtYV9mZW5jZXMgKmZlbmNlczsKPj4gKyAgICAgICB1NjQgX191c2VyICp1c2VyX3ZhbHVlczsK
Pj4gKyAgICAgICB1bnNpZ25lZCBsb25nIG47Cj4+ICsgICAgICAgaW50IGVycjsKPj4gKwo+PiAr
ICAgICAgICpvdXRfbl9mZW5jZXMgPSB0aW1lbGluZV9mZW5jZXMtPmhhbmRsZV9jb3VudDsKPiBJ
J2QgZW5jb3VyYWdlIHVzaW5nIGEgY29uc3QgbnVtX2ZlbmNlcyA9IHRpbWVsaW5lX2ZlbmNlcy0+
aGFuZGxlX2NvdW50Cj4gZm9yIHJlYWRhYmlsaXR5IHdpdGhpbiB0aGUgZnVuY3Rpb24gYW5kIHRo
ZW4gYXNzaWduaW5nCj4gCSpvdXRfbl9mZW5jZXMgPSBudW1fZmVuY2VzOwo+IHJpZ2h0IGJlZm9y
ZSB0aGUgc3VjY2Vzc2Z1bCByZXR1cm4gZmVuY2VzOwoKCkRvbmUuCgoKPgo+PiArICAgICAgIC8q
IENoZWNrIG11bHRpcGxpY2F0aW9uIG92ZXJmbG93IGZvciBhY2Nlc3Nfb2soKSBhbmQga3ZtYWxs
b2NfYXJyYXkoKSAqLwo+PiArICAgICAgIEJVSUxEX0JVR19PTihzaXplb2Yoc2l6ZV90KSA+IHNp
emVvZih1bnNpZ25lZCBsb25nKSk7Cj4+ICsgICAgICAgaWYgKCpvdXRfbl9mZW5jZXMgPiBtaW5f
dCh1bnNpZ25lZCBsb25nLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgVUxP
TkdfTUFYIC8gc2l6ZW9mKCp1c2VyX2ZlbmNlcyksCj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBTSVpFX01BWCAvIHNpemVvZigqZmVuY2VzKSkpCj4+ICsgICAgICAgICAgICAg
ICByZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPj4gKwo+PiArICAgICAgIHVzZXJfZmVuY2VzID0g
dTY0X3RvX3VzZXJfcHRyKHRpbWVsaW5lX2ZlbmNlcy0+aGFuZGxlc19wdHIpOwo+PiArICAgICAg
IGlmICghYWNjZXNzX29rKHVzZXJfZmVuY2VzLCAqb3V0X25fZmVuY2VzICogc2l6ZW9mKCp1c2Vy
X2ZlbmNlcykpKQo+PiArICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVGQVVMVCk7Cj4+
ICsKPj4gKyAgICAgICB1c2VyX3ZhbHVlcyA9IHU2NF90b191c2VyX3B0cih0aW1lbGluZV9mZW5j
ZXMtPnZhbHVlc19wdHIpOwo+PiArICAgICAgIGlmICghYWNjZXNzX29rKHVzZXJfdmFsdWVzLCAq
b3V0X25fZmVuY2VzICogc2l6ZW9mKCp1c2VyX3ZhbHVlcykpKQo+PiArICAgICAgICAgICAgICAg
cmV0dXJuIEVSUl9QVFIoLUVGQVVMVCk7Cj4+ICsgICAgICAgZmVuY2VzID0ga3ZtYWxsb2NfYXJy
YXkoKm91dF9uX2ZlbmNlcywgc2l6ZW9mKCpmZW5jZXMpLAo+PiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIF9fR0ZQX05PV0FSTiB8IEdGUF9LRVJORUwpOwo+PiArICAgICAgIGlmICgh
ZmVuY2VzKQo+PiArICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7Cj4+ICsK
Pj4gKyAgICAgICBCVUlMRF9CVUdfT04ofihBUkNIX0tNQUxMT0NfTUlOQUxJR04gLSAxKSAmCj4+
ICsgICAgICAgICAgICAgICAgICAgIH5fX0k5MTVfRVhFQ19GRU5DRV9VTktOT1dOX0ZMQUdTKTsK
Pj4gKwo+PiArICAgICAgIGZvciAobiA9IDA7IG4gPCAqb3V0X25fZmVuY2VzOyBuKyspIHsKPj4g
KyAgICAgICAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19mZW5jZSB1c2VyX2ZlbmNl
Owo+PiArICAgICAgICAgICAgICAgc3RydWN0IGRybV9zeW5jb2JqICpzeW5jb2JqOwo+PiArICAg
ICAgICAgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UgPSBOVUxMOwo+PiArICAgICAgICAg
ICAgICAgdTY0IHBvaW50Owo+PiArCj4+ICsgICAgICAgICAgICAgICBpZiAoX19jb3B5X2Zyb21f
dXNlcigmdXNlcl9mZW5jZSwgdXNlcl9mZW5jZXMrKywgc2l6ZW9mKHVzZXJfZmVuY2UpKSkgewo+
PiArICAgICAgICAgICAgICAgICAgICAgICBlcnIgPSAtRUZBVUxUOwo+PiArICAgICAgICAgICAg
ICAgICAgICAgICBnb3RvIGVycjsKPj4gKyAgICAgICAgICAgICAgIH0KPj4gKwo+PiArICAgICAg
ICAgICAgICAgaWYgKHVzZXJfZmVuY2UuZmxhZ3MgJiBfX0k5MTVfRVhFQ19GRU5DRV9VTktOT1dO
X0ZMQUdTKSB7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGVyciA9IC1FSU5WQUw7Cj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+PiArICAgICAgICAgICAgICAgfQo+PiAr
Cj4+ICsgICAgICAgICAgICAgICBpZiAoX19nZXRfdXNlcihwb2ludCwgdXNlcl92YWx1ZXMrKykp
IHsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgZXJyID0gLUVGQVVMVDsKPj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgZ290byBlcnI7Cj4+ICsgICAgICAgICAgICAgICB9Cj4+ICsKPj4gKyAg
ICAgICAgICAgICAgIHN5bmNvYmogPSBkcm1fc3luY29ial9maW5kKGViLT5maWxlLCB1c2VyX2Zl
bmNlLmhhbmRsZSk7Cj4+ICsgICAgICAgICAgICAgICBpZiAoIXN5bmNvYmopIHsKPj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgRFJNX0RFQlVHKCJJbnZhbGlkIHN5bmNvYmogaGFuZGxlIHByb3Zp
ZGVkXG4iKTsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgZXJyID0gLUVJTlZBTDsKPj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgZ290byBlcnI7Cj4+ICsgICAgICAgICAgICAgICB9Cj4+ICsK
Pj4gKyAgICAgICAgICAgICAgIGlmICh1c2VyX2ZlbmNlLmZsYWdzICYgSTkxNV9FWEVDX0ZFTkNF
X1dBSVQpIHsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgZmVuY2UgPSBkcm1fc3luY29ial9m
ZW5jZV9nZXQoc3luY29iaik7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmICghZmVuY2Up
IHsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEUk1fREVCVUcoIlN5bmNvYmog
aGFuZGxlIGhhcyBubyBmZW5jZVxuIik7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgZHJtX3N5bmNvYmpfcHV0KHN5bmNvYmopOwo+PiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGVyciA9IC1FSU5WQUw7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Z290byBlcnI7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIH0KPj4gKwo+PiArICAgICAgICAg
ICAgICAgICAgICAgICBlcnIgPSBkbWFfZmVuY2VfY2hhaW5fZmluZF9zZXFubygmZmVuY2UsIHBv
aW50KTsKPiBJcyBhbiBpbXBvcnRlZCBzeW5jb2JqIGFsd2F5cyBhIGZlbmNlLWNoYWluPwo+Cj4g
ZHJtX3N5bmNvYmpfaW1wb3J0X3N5bmNfZmlsZV9mZW5jZSgpIHNheXMgbm8uCgoKZHJtX3N5bmNv
YmpfaW1wb3J0X3N5bmNfZmlsZV9mZW5jZSgpIHdvdWxkIHR1cm4gYSB0aW1lbGluZSBzZW1hcGhv
cmUgCmludG8gYSBiaW5hcnkgc2VtYXBob3JlIGJ5IGJyZWFraW5nIHRoZSBjaGFpbi4KCmRybV9z
eW5jb2JqX3RyYW5zZmVyX3RvX3RpbWVsaW5lKCkgaXMgd2hhdCB5b3Ugc2hvdWxkIHVzZSBpZiB5
b3Ugd2lzaCB0byAKaW1wb3J0IGEgZmVuY2UgaW50byB0aGUgdGltZWxpbmUuCgoKPgo+IFNpbWls
YXJseSwgd2UgcHV0IG9yZGluYXJ5IGZlbmNlcyBpbnRvIHRoZSBzeW5jb2JqIG91cnNlbHZlcyBp
Zgo+IHBvaW50PT0wLCBvciB0aGUgdXNlciB1c2VzIHRoZSBvbGQgcGF0aC4KPgo+IEkgdGhpbmsg
eW91IG5lZWQgc29tZXRoaW5nIGxpa2UKPgo+IGlmIChkbWFfZmVuY2VfaXNfY2hhaW4oKSB8fCBw
b2ludCkgewo+IAllcnIgPSBkbWFfZmVuY2VfY2hhaW5fZmluZF9zZXFubygmZmVuY2UsIHBvaW50
KTsKPiAJaWYgKGVycikgewo+IAl9Cj4gfQoKCmRtYV9mZW5jZV9jaGFpbl9maW5kX3NlcW5vKCkg
YWxyZWFkeSBkZWFscyB3aXRoIHBvaW50ID09IDAuCklmIHRoZSBmZW5jZSBpcyBub3QgYSBkbWFf
ZmVuY2VfY2hhaW4gdGhlbiB0aGUgYXBwbGljYXRpb24gc2NyZXdlZCB1cCBzb21ld2hlcmUuCgoK
Pgo+PiArICAgICAgICAgICAgICAgICAgICAgICBpZiAoZXJyKSB7Cj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgRFJNX0RFQlVHKCJTeW5jb2JqIGhhbmRsZSBtaXNzaW5nIHJlcXVl
c3RlZCBwb2ludFxuIik7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ290byBl
cnI7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIH0KPj4gKyAgICAgICAgICAgICAgIH0KPj4g
Kwo+PiArICAgICAgICAgICAgICAgLyoKPj4gKyAgICAgICAgICAgICAgICAqIEZvciB0aW1lbGlu
ZSBzeW5jb2JqcyB3ZSBuZWVkIHRvIGNyZWF0ZSBhIGNoYWluLgo+ICJuZWVkIHRvIHByZWFsbG9j
YXRlIGNoYWlucyBmb3IgbGF0ZXIgc2lnbmFsaW5nCgoKU3VyZS4KCgo+Cj4+ICsgICAgICAgICAg
ICAgICAgKi8KPj4gKyAgICAgICAgICAgICAgIGlmIChwb2ludCAhPSAwICYmIHVzZXJfZmVuY2Uu
ZmxhZ3MgJiBJOTE1X0VYRUNfRkVOQ0VfU0lHTkFMKSB7Cj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGZlbmNlc1tuXS5jaGFpbl9mZW5jZSA9Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAga21hbGxvYyhzaXplb2YoKmZlbmNlc1tuXS5jaGFpbl9mZW5jZSksCj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBHRlBfS0VSTkVMKTsKPj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgaWYgKCFmZW5jZXNbbl0uY2hhaW5fZmVuY2UpIHsKPj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBkbWFfZmVuY2VfcHV0KGZlbmNlKTsKPj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBkcm1fc3luY29ial9wdXQoc3luY29iaik7Cj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgZXJyID0gLUVOT01FTTsKPj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBEUk1fREVCVUcoIlVuYWJsZSB0byBhbGxvYyBjaGFpbl9mZW5j
ZVxuIik7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ290byBlcnI7Cj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgIH0KPj4gKyAgICAgICAgICAgICAgIH0gZWxzZSB7Cj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgIGZlbmNlc1tuXS5jaGFpbl9mZW5jZSA9IE5VTEw7Cj4+ICsg
ICAgICAgICAgICAgICB9Cj4+ICsKPj4gKyAgICAgICAgICAgICAgIGZlbmNlc1tuXS5zeW5jb2Jq
ID0gcHRyX3BhY2tfYml0cyhzeW5jb2JqLCB1c2VyX2ZlbmNlLmZsYWdzLCAyKTsKPj4gKyAgICAg
ICAgICAgICAgIGZlbmNlc1tuXS5kbWFfZmVuY2UgPSBmZW5jZTsKPj4gKyAgICAgICAgICAgICAg
IGZlbmNlc1tuXS52YWx1ZSA9IHBvaW50Owo+PiArICAgICAgIH0KPj4gKwo+PiArICAgICAgIHJl
dHVybiBmZW5jZXM7Cj4+ICsKPj4gK2VycjoKPj4gKyAgICAgICBfX2ZyZWVfZmVuY2VfYXJyYXko
ZmVuY2VzLCBuKTsKPj4gKyAgICAgICByZXR1cm4gRVJSX1BUUihlcnIpOwo+PiArfQo+PiArCj4+
ICtzdGF0aWMgc3RydWN0IGk5MTVfZHJtX2RtYV9mZW5jZXMgKgo+PiArZ2V0X2xlZ2FjeV9mZW5j
ZV9hcnJheShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKPj4gKyAgICAgICAgICAgICAgICAg
ICAgICBpbnQgKm91dF9uX2ZlbmNlcykKPj4gK3sKPj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX2V4ZWNidWZmZXIyICphcmdzID0gZWItPmFyZ3M7Cj4+ICAgICAgICAgIHN0cnVjdCBkcm1f
aTkxNV9nZW1fZXhlY19mZW5jZSBfX3VzZXIgKnVzZXI7Cj4+IC0gICAgICAgc3RydWN0IGRybV9z
eW5jb2JqICoqZmVuY2VzOwo+PiArICAgICAgIHN0cnVjdCBpOTE1X2RybV9kbWFfZmVuY2VzICpm
ZW5jZXM7Cj4+ICAgICAgICAgIHVuc2lnbmVkIGxvbmcgbjsKPj4gICAgICAgICAgaW50IGVycjsK
Pj4gICAKPj4gLSAgICAgICBpZiAoIShhcmdzLT5mbGFncyAmIEk5MTVfRVhFQ19GRU5DRV9BUlJB
WSkpCj4+IC0gICAgICAgICAgICAgICByZXR1cm4gTlVMTDsKPj4gKyAgICAgICAqb3V0X25fZmVu
Y2VzID0gYXJncy0+bnVtX2NsaXByZWN0czsKPiBTYW1lIHN1Z2dlc3Rpb24gYXMgZWFybGllciBm
b3IgYSBsb2NhbCBudW1fZmVuY2VzLgoKCkRvbmUuCgoKPgo+PiArc3RhdGljIHN0cnVjdCBpOTE1
X2RybV9kbWFfZmVuY2VzICoKPj4gK2dldF9mZW5jZV9hcnJheShzdHJ1Y3QgaTkxNV9leGVjYnVm
ZmVyICplYiwgaW50ICpvdXRfbl9mZW5jZXMpCj4+ICt7Cj4+ICsgICAgICAgaWYgKGViLT5hcmdz
LT5mbGFncyAmIEk5MTVfRVhFQ19GRU5DRV9BUlJBWSkKPj4gKyAgICAgICAgICAgICAgIHJldHVy
biBnZXRfbGVnYWN5X2ZlbmNlX2FycmF5KGViLCBvdXRfbl9mZW5jZXMpOwo+IEJsYW5rIGxpbmUu
CgoKT29wcy4KCgo+Cj4+ICsgICAgICAgaWYgKGViLT5leHRlbnNpb25zLmZsYWdzICYgQklUKERS
TV9JOTE1X0dFTV9FWEVDQlVGRkVSX0VYVF9USU1FTElORV9GRU5DRVMpKQo+PiArICAgICAgICAg
ICAgICAgcmV0dXJuIGdldF90aW1lbGluZV9mZW5jZV9hcnJheShlYiwgb3V0X25fZmVuY2VzKTsK
Pj4gKwo+PiArICAgICAgICpvdXRfbl9mZW5jZXMgPSAwOwo+PiArCj4gTm8gYmxhbmsgbGluZSwg
bXkgYXJndW1lbnQgaXMgdGhhdCBib3RoIGFyZSBwYXJ0IG9mIHRoZSByZXR1cm4gdmFsdWUgZm9y
Cj4gdGhlIGZ1bmN0aW9uLgoKCk9rYXkuCgoKPj4gKyAgICAgICByZXR1cm4gTlVMTDsKPj4gK30K
Pj4gKwo+PiAgIHN0YXRpYyB2b2lkCj4+IC1wdXRfZmVuY2VfYXJyYXkoc3RydWN0IGRybV9pOTE1
X2dlbV9leGVjYnVmZmVyMiAqYXJncywKPj4gLSAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fc3lu
Y29iaiAqKmZlbmNlcykKPj4gK3B1dF9mZW5jZV9hcnJheShzdHJ1Y3QgaTkxNV9kcm1fZG1hX2Zl
bmNlcyAqZmVuY2VzLCBpbnQgbmZlbmNlcykKPj4gICB7Cj4+ICAgICAgICAgIGlmIChmZW5jZXMp
Cj4+IC0gICAgICAgICAgICAgICBfX2ZyZWVfZmVuY2VfYXJyYXkoZmVuY2VzLCBhcmdzLT5udW1f
Y2xpcHJlY3RzKTsKPj4gKyAgICAgICAgICAgICAgIF9fZnJlZV9mZW5jZV9hcnJheShmZW5jZXMs
IG5mZW5jZXMpOwo+PiAgIH0KPj4gICAKPj4gICBzdGF0aWMgaW50Cj4+ICAgYXdhaXRfZmVuY2Vf
YXJyYXkoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4+IC0gICAgICAgICAgICAgICAgIHN0
cnVjdCBkcm1fc3luY29iaiAqKmZlbmNlcykKPj4gKyAgICAgICAgICAgICAgICAgc3RydWN0IGk5
MTVfZHJtX2RtYV9mZW5jZXMgKmZlbmNlcywKPj4gKyAgICAgICAgICAgICAgICAgaW50IG5mZW5j
ZXMpCj4+ICAgewo+PiAtICAgICAgIGNvbnN0IHVuc2lnbmVkIGludCBuZmVuY2VzID0gZWItPmFy
Z3MtPm51bV9jbGlwcmVjdHM7Cj4+ICAgICAgICAgIHVuc2lnbmVkIGludCBuOwo+PiAgICAgICAg
ICBpbnQgZXJyOwo+PiAgIAo+PiAgICAgICAgICBmb3IgKG4gPSAwOyBuIDwgbmZlbmNlczsgbisr
KSB7Cj4+ICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9zeW5jb2JqICpzeW5jb2JqOwo+PiAt
ICAgICAgICAgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Cj4+ICAgICAgICAgICAgICAg
ICAgdW5zaWduZWQgaW50IGZsYWdzOwo+PiAgIAo+PiAtICAgICAgICAgICAgICAgc3luY29iaiA9
IHB0cl91bnBhY2tfYml0cyhmZW5jZXNbbl0sICZmbGFncywgMik7Cj4+ICsgICAgICAgICAgICAg
ICBzeW5jb2JqID0gcHRyX3VucGFja19iaXRzKGZlbmNlc1tuXS5zeW5jb2JqLCAmZmxhZ3MsIDIp
Owo+PiAgICAgICAgICAgICAgICAgIGlmICghKGZsYWdzICYgSTkxNV9FWEVDX0ZFTkNFX1dBSVQp
KQo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4+ICAgCj4+IC0gICAgICAg
ICAgICAgICBmZW5jZSA9IGRybV9zeW5jb2JqX2ZlbmNlX2dldChzeW5jb2JqKTsKPj4gLSAgICAg
ICAgICAgICAgIGlmICghZmVuY2UpCj4+IC0gICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAt
RUlOVkFMOwo+PiAtCj4+IC0gICAgICAgICAgICAgICBlcnIgPSBpOTE1X3JlcXVlc3RfYXdhaXRf
ZG1hX2ZlbmNlKGViLT5yZXF1ZXN0LCBmZW5jZSk7Cj4+IC0gICAgICAgICAgICAgICBkbWFfZmVu
Y2VfcHV0KGZlbmNlKTsKPj4gKyAgICAgICAgICAgICAgIGVyciA9IGk5MTVfcmVxdWVzdF9hd2Fp
dF9kbWFfZmVuY2UoZWItPnJlcXVlc3QsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGZlbmNlc1tuXS5kbWFfZmVuY2UpOwo+PiAgICAgICAgICAg
ICAgICAgIGlmIChlcnIgPCAwKQo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGVy
cjsKPj4gICAgICAgICAgfQo+PiBAQCAtMjMzNCw5ICsyNDc1LDkgQEAgYXdhaXRfZmVuY2VfYXJy
YXkoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4+ICAgCj4+ICAgc3RhdGljIHZvaWQKPj4g
ICBzaWduYWxfZmVuY2VfYXJyYXkoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4+IC0gICAg
ICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX3N5bmNvYmogKipmZW5jZXMpCj4+ICsgICAgICAgICAg
ICAgICAgICBzdHJ1Y3QgaTkxNV9kcm1fZG1hX2ZlbmNlcyAqZmVuY2VzLAo+PiArICAgICAgICAg
ICAgICAgICAgaW50IG5mZW5jZXMpCj4+ICAgewo+PiAtICAgICAgIGNvbnN0IHVuc2lnbmVkIGlu
dCBuZmVuY2VzID0gZWItPmFyZ3MtPm51bV9jbGlwcmVjdHM7Cj4+ICAgICAgICAgIHN0cnVjdCBk
bWFfZmVuY2UgKiBjb25zdCBmZW5jZSA9ICZlYi0+cmVxdWVzdC0+ZmVuY2U7Cj4+ICAgICAgICAg
IHVuc2lnbmVkIGludCBuOwo+PiAgIAo+PiBAQCAtMjM0NCwxNSArMjQ4NSw0MyBAQCBzaWduYWxf
ZmVuY2VfYXJyYXkoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4+ICAgICAgICAgICAgICAg
ICAgc3RydWN0IGRybV9zeW5jb2JqICpzeW5jb2JqOwo+PiAgICAgICAgICAgICAgICAgIHVuc2ln
bmVkIGludCBmbGFnczsKPj4gICAKPj4gLSAgICAgICAgICAgICAgIHN5bmNvYmogPSBwdHJfdW5w
YWNrX2JpdHMoZmVuY2VzW25dLCAmZmxhZ3MsIDIpOwo+PiArICAgICAgICAgICAgICAgc3luY29i
aiA9IHB0cl91bnBhY2tfYml0cyhmZW5jZXNbbl0uc3luY29iaiwgJmZsYWdzLCAyKTsKPj4gICAg
ICAgICAgICAgICAgICBpZiAoIShmbGFncyAmIEk5MTVfRVhFQ19GRU5DRV9TSUdOQUwpKQo+PiAg
ICAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4+ICAgCj4+IC0gICAgICAgICAgICAg
ICBkcm1fc3luY29ial9yZXBsYWNlX2ZlbmNlKHN5bmNvYmosIGZlbmNlKTsKPj4gKyAgICAgICAg
ICAgICAgIGlmIChmZW5jZXNbbl0uY2hhaW5fZmVuY2UpIHsKPj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgZHJtX3N5bmNvYmpfYWRkX3BvaW50KHN5bmNvYmosIGZlbmNlc1tuXS5jaGFpbl9mZW5j
ZSwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZlbmNl
LCBmZW5jZXNbbl0udmFsdWUpOwo+PiArICAgICAgICAgICAgICAgICAgICAgICAvKgo+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgKiBUaGUgY2hhaW4ncyBvd25lcnNoaXAgaXMgdHJhbnNmZXJl
ZCB0byB0aGUKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICogdGltZWxpbmUuCj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAqLwo+PiArICAgICAgICAgICAgICAgICAgICAgICBmZW5jZXNb
bl0uY2hhaW5fZmVuY2UgPSBOVUxMOwo+PiArICAgICAgICAgICAgICAgfSBlbHNlIHsKPj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgZHJtX3N5bmNvYmpfcmVwbGFjZV9mZW5jZShzeW5jb2JqLCBm
ZW5jZSk7Cj4+ICsgICAgICAgICAgICAgICB9Cj4+ICAgICAgICAgIH0KPj4gICB9Cj4+ICAgCj4+
ICtzdGF0aWMgaW50IHBhcnNlX3RpbWVsaW5lX2ZlbmNlcyhzdHJ1Y3QgaTkxNV91c2VyX2V4dGVu
c2lvbiBfX3VzZXIgKmV4dCwgdm9pZCAqZGF0YSkKPj4gK3sKPj4gKyAgICAgICBzdHJ1Y3QgaTkx
NV9leGVjYnVmZmVyICplYiA9IGRhdGE7Cj4+ICsKPj4gKyAgICAgICAvKiBUaW1lbGluZSBmZW5j
ZXMgYXJlIGluY29tcGF0aWJsZSB3aXRoIHRoZSBmZW5jZSBhcnJheSBmbGFnLiAqLwo+PiArICAg
ICAgIGlmIChlYi0+YXJncy0+ZmxhZ3MgJiBJOTE1X0VYRUNfRkVOQ0VfQVJSQVkpCj4+ICsgICAg
ICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiBBbHNvIHlvdSBvbmx5IGFsbG93IG9uZSB0aW1l
bGluZV9mZW5jZSBleHRlbnNpb24gc3RydWN0LgoKCldlbGwgc3BvdHRlZCwgdGhhbmtzLgoKCj4K
Pj4gKwo+PiArICAgICAgIGlmIChjb3B5X2Zyb21fdXNlcigmZWItPmV4dGVuc2lvbnMudGltZWxp
bmVfZmVuY2VzLCBleHQsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIHNpemVvZihlYi0+
ZXh0ZW5zaW9ucy50aW1lbGluZV9mZW5jZXMpKSkKPj4gKyAgICAgICAgICAgICAgIHJldHVybiAt
RUZBVUxUOwo+PiArCj4+ICsgICAgICAgZWItPmV4dGVuc2lvbnMuZmxhZ3MgfD0gQklUKERSTV9J
OTE1X0dFTV9FWEVDQlVGRkVSX0VYVF9USU1FTElORV9GRU5DRVMpOwo+PiArCj4+ICsgICAgICAg
cmV0dXJuIDA7Cj4+ICt9Cj4+ICsKPj4gICBzdGF0aWMgY29uc3QgaTkxNV91c2VyX2V4dGVuc2lv
bl9mbiBleGVjYnVmX2V4dGVuc2lvbnNbXSA9IHsKPj4gKyAgICAgICAgW0RSTV9JOTE1X0dFTV9F
WEVDQlVGRkVSX0VYVF9USU1FTElORV9GRU5DRVNdID0gcGFyc2VfdGltZWxpbmVfZmVuY2VzLAo+
PiAgIH07Cj4+ICAgCj4+ICAgc3RhdGljIGludAo+PiBAQCAtMjM3MiwxNCArMjU0MSwxNSBAQCBz
dGF0aWMgaW50Cj4+ICAgaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LAo+PiAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCj4+
ICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcjIg
KmFyZ3MsCj4+IC0gICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9leGVj
X29iamVjdDIgKmV4ZWMsCj4+IC0gICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9zeW5j
b2JqICoqZmVuY2VzKQo+PiArICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9n
ZW1fZXhlY19vYmplY3QyICpleGVjKQo+PiAgIHsKPj4gICAgICAgICAgc3RydWN0IGk5MTVfZXhl
Y2J1ZmZlciBlYjsKPj4gICAgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqaW5fZmVuY2UgPSBOVUxM
Owo+PiAgICAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpleGVjX2ZlbmNlID0gTlVMTDsKPj4gICAg
ICAgICAgc3RydWN0IHN5bmNfZmlsZSAqb3V0X2ZlbmNlID0gTlVMTDsKPj4gKyAgICAgICBzdHJ1
Y3QgaTkxNV9kcm1fZG1hX2ZlbmNlcyAqZmVuY2VzID0gTlVMTDsKPj4gICAgICAgICAgaW50IG91
dF9mZW5jZV9mZCA9IC0xOwo+PiArICAgICAgIGludCBuZmVuY2VzID0gMDsKPj4gICAgICAgICAg
aW50IGVycjsKPj4gICAKPj4gICAgICAgICAgQlVJTERfQlVHX09OKF9fRVhFQ19JTlRFUk5BTF9G
TEFHUyAmIH5fX0k5MTVfRVhFQ19JTExFR0FMX0ZMQUdTKTsKPj4gQEAgLTI0MjEsMTAgKzI1OTEs
MTYgQEAgaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+PiAg
ICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGVycjsKPj4gICAgICAgICAgfQo+PiAgIAo+
PiArICAgICAgIGZlbmNlcyA9IGdldF9mZW5jZV9hcnJheSgmZWIsICZuZmVuY2VzKTsKPj4gKyAg
ICAgICBpZiAoSVNfRVJSKGZlbmNlcykpCj4+ICsgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VS
UihmZW5jZXMpOwo+PiArCj4+ICAgICAgICAgIGlmIChhcmdzLT5mbGFncyAmIEk5MTVfRVhFQ19G
RU5DRV9JTikgewo+PiAgICAgICAgICAgICAgICAgIGluX2ZlbmNlID0gc3luY19maWxlX2dldF9m
ZW5jZShsb3dlcl8zMl9iaXRzKGFyZ3MtPnJzdmQyKSk7Cj4+IC0gICAgICAgICAgICAgICBpZiAo
IWluX2ZlbmNlKQo+PiAtICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPj4g
KyAgICAgICAgICAgICAgIGlmICghaW5fZmVuY2UpIHsKPj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgZXJyID0gLUVJTlZBTDsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgZ290byBlcnJfZmVu
Y2VzOwo+PiArICAgICAgICAgICAgICAgfQo+PiAgICAgICAgICB9Cj4+ICAgCj4+ICAgICAgICAg
IGlmIChhcmdzLT5mbGFncyAmIEk5MTVfRVhFQ19GRU5DRV9TVUJNSVQpIHsKPj4gQEAgLTI1ODIs
NyArMjc1OCw3IEBAIGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwKPj4gICAgICAgICAgfQo+PiAgIAo+PiAgICAgICAgICBpZiAoZmVuY2VzKSB7Cj4+IC0gICAg
ICAgICAgICAgICBlcnIgPSBhd2FpdF9mZW5jZV9hcnJheSgmZWIsIGZlbmNlcyk7Cj4+ICsgICAg
ICAgICAgICAgICBlcnIgPSBhd2FpdF9mZW5jZV9hcnJheSgmZWIsIGZlbmNlcywgbmZlbmNlcyk7
Cj4+ICAgICAgICAgICAgICAgICAgaWYgKGVycikKPj4gICAgICAgICAgICAgICAgICAgICAgICAg
IGdvdG8gZXJyX3JlcXVlc3Q7Cj4+ICAgICAgICAgIH0KPj4gQEAgLTI2MTEsNyArMjc4Nyw3IEBA
IGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPj4gICAgICAg
ICAgaTkxNV9yZXF1ZXN0X2FkZChlYi5yZXF1ZXN0KTsKPj4gICAKPj4gICAgICAgICAgaWYgKGZl
bmNlcykKPj4gLSAgICAgICAgICAgICAgIHNpZ25hbF9mZW5jZV9hcnJheSgmZWIsIGZlbmNlcyk7
Cj4+ICsgICAgICAgICAgICAgICBzaWduYWxfZmVuY2VfYXJyYXkoJmViLCBmZW5jZXMsIG5mZW5j
ZXMpOwo+PiAgIAo+PiAgICAgICAgICBpZiAob3V0X2ZlbmNlKSB7Cj4+ICAgICAgICAgICAgICAg
ICAgaWYgKGVyciA9PSAwKSB7Cj4+IEBAIC0yNjQ2LDYgKzI4MjIsOCBAQCBpOTE1X2dlbV9kb19l
eGVjYnVmZmVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4+ICAgICAgICAgIGRtYV9mZW5jZV9w
dXQoZXhlY19mZW5jZSk7Cj4+ICAgZXJyX2luX2ZlbmNlOgo+PiAgICAgICAgICBkbWFfZmVuY2Vf
cHV0KGluX2ZlbmNlKTsKPj4gK2Vycl9mZW5jZXM6Cj4+ICsgICAgICAgcHV0X2ZlbmNlX2FycmF5
KGZlbmNlcywgbmZlbmNlcyk7Cj4+ICAgICAgICAgIHJldHVybiBlcnI7Cj4+ICAgfQo+PiAgIAo+
PiBAQCAtMjczOSw3ICsyOTE3LDcgQEAgaTkxNV9nZW1fZXhlY2J1ZmZlcl9pb2N0bChzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAg
ZXhlYzJfbGlzdFtpXS5mbGFncyA9IDA7Cj4+ICAgICAgICAgIH0KPj4gICAKPj4gLSAgICAgICBl
cnIgPSBpOTE1X2dlbV9kb19leGVjYnVmZmVyKGRldiwgZmlsZSwgJmV4ZWMyLCBleGVjMl9saXN0
LCBOVUxMKTsKPj4gKyAgICAgICBlcnIgPSBpOTE1X2dlbV9kb19leGVjYnVmZmVyKGRldiwgZmls
ZSwgJmV4ZWMyLCBleGVjMl9saXN0KTsKPj4gICAgICAgICAgaWYgKGV4ZWMyLmZsYWdzICYgX19F
WEVDX0hBU19SRUxPQykgewo+PiAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1f
ZXhlY19vYmplY3QgX191c2VyICp1c2VyX2V4ZWNfbGlzdCA9Cj4+ICAgICAgICAgICAgICAgICAg
ICAgICAgICB1NjRfdG9fdXNlcl9wdHIoYXJncy0+YnVmZmVyc19wdHIpOwo+PiBAQCAtMjc3MCw3
ICsyOTQ4LDYgQEAgaTkxNV9nZW1fZXhlY2J1ZmZlcjJfaW9jdGwoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwgdm9pZCAqZGF0YSwKPj4gICB7Cj4+ICAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1f
ZXhlY2J1ZmZlcjIgKmFyZ3MgPSBkYXRhOwo+PiAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X2V4ZWNfb2JqZWN0MiAqZXhlYzJfbGlzdDsKPj4gLSAgICAgICBzdHJ1Y3QgZHJtX3N5bmNvYmog
KipmZW5jZXMgPSBOVUxMOwo+PiAgICAgICAgICBjb25zdCBzaXplX3QgY291bnQgPSBhcmdzLT5i
dWZmZXJfY291bnQ7Cj4+ICAgICAgICAgIGludCBlcnI7Cj4+ICAgCj4+IEBAIC0yNzk4LDE1ICsy
OTc1LDcgQEAgaTkxNV9nZW1fZXhlY2J1ZmZlcjJfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwgdm9pZCAqZGF0YSwKPj4gICAgICAgICAgICAgICAgICByZXR1cm4gLUVGQVVMVDsKPj4gICAg
ICAgICAgfQo+PiAgIAo+PiAtICAgICAgIGlmIChhcmdzLT5mbGFncyAmIEk5MTVfRVhFQ19GRU5D
RV9BUlJBWSkgewo+PiAtICAgICAgICAgICAgICAgZmVuY2VzID0gZ2V0X2ZlbmNlX2FycmF5KGFy
Z3MsIGZpbGUpOwo+PiAtICAgICAgICAgICAgICAgaWYgKElTX0VSUihmZW5jZXMpKSB7Cj4+IC0g
ICAgICAgICAgICAgICAgICAgICAgIGt2ZnJlZShleGVjMl9saXN0KTsKPj4gLSAgICAgICAgICAg
ICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIoZmVuY2VzKTsKPj4gLSAgICAgICAgICAgICAgIH0K
Pj4gLSAgICAgICB9Cj4+IC0KPj4gLSAgICAgICBlcnIgPSBpOTE1X2dlbV9kb19leGVjYnVmZmVy
KGRldiwgZmlsZSwgYXJncywgZXhlYzJfbGlzdCwgZmVuY2VzKTsKPj4gKyAgICAgICBlcnIgPSBp
OTE1X2dlbV9kb19leGVjYnVmZmVyKGRldiwgZmlsZSwgYXJncywgZXhlYzJfbGlzdCk7Cj4+ICAg
Cj4+ICAgICAgICAgIC8qCj4+ICAgICAgICAgICAqIE5vdyB0aGF0IHdlIGhhdmUgYmVndW4gZXhl
Y3V0aW9uIG9mIHRoZSBiYXRjaGJ1ZmZlciwgd2UgaWdub3JlCj4+IEBAIC0yODQ2LDcgKzMwMTUs
NiBAQCBlbmQ6Owo+PiAgICAgICAgICB9Cj4+ICAgCj4+ICAgICAgICAgIGFyZ3MtPmZsYWdzICY9
IH5fX0k5MTVfRVhFQ19VTktOT1dOX0ZMQUdTOwo+PiAtICAgICAgIHB1dF9mZW5jZV9hcnJheShh
cmdzLCBmZW5jZXMpOwo+PiAgICAgICAgICBrdmZyZWUoZXhlYzJfbGlzdCk7Cj4+ICAgICAgICAg
IHJldHVybiBlcnI7Cj4+ICAgfQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPj4gaW5kZXggN2Mz
YzNiOGFiMzM5Li40OGY5MDA5YTYzMTggMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+
PiBAQCAtNDU2LDYgKzQ1Niw3IEBAIHN0YXRpYyBpbnQgaTkxNV9nZXRwYXJhbV9pb2N0bChzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+PiAgICAgICAgICBjYXNlIEk5MTVfUEFS
QU1fSEFTX0VYRUNfQkFUQ0hfRklSU1Q6Cj4+ICAgICAgICAgIGNhc2UgSTkxNV9QQVJBTV9IQVNf
RVhFQ19GRU5DRV9BUlJBWToKPj4gICAgICAgICAgY2FzZSBJOTE1X1BBUkFNX0hBU19FWEVDX1NV
Qk1JVF9GRU5DRToKPj4gKyAgICAgICBjYXNlIEk5MTVfUEFSQU1fSEFTX0VYRUNfVElNRUxJTkVf
RkVOQ0VTOgo+PiAgICAgICAgICAgICAgICAgIC8qIEZvciB0aGUgdGltZSBiZWluZyBhbGwgb2Yg
dGhlc2UgYXJlIGFsd2F5cyB0cnVlOwo+PiAgICAgICAgICAgICAgICAgICAqIGlmIHNvbWUgc3Vw
cG9ydGVkIGhhcmR3YXJlIGRvZXMgbm90IGhhdmUgb25lIG9mIHRoZXNlCj4+ICAgICAgICAgICAg
ICAgICAgICogZmVhdHVyZXMgdGhpcyB2YWx1ZSBuZWVkcyB0byBiZSBwcm92aWRlZCBmcm9tCj4+
IEBAIC0zMjIwLDYgKzMyMjEsNyBAQCBzdGF0aWMgc3RydWN0IGRybV9kcml2ZXIgZHJpdmVyID0g
ewo+PiAgICAgICAgICAuZHJpdmVyX2ZlYXR1cmVzID0KPj4gICAgICAgICAgICAgIERSSVZFUl9H
RU0gfAo+PiAgICAgICAgICAgICAgRFJJVkVSX1JFTkRFUiB8IERSSVZFUl9NT0RFU0VUIHwgRFJJ
VkVSX0FUT01JQyB8IERSSVZFUl9TWU5DT0JKLAo+PiArICAgICAgICAgICBEUklWRVJfU1lOQ09C
Sl9USU1FTElORSwKPiBXaXRoIGEgY29tbWEgPyBpLmUuIC5pb2N0bHMgPSBEUklWRVJfU1lOQ09C
Sl9USU1FTElORQoKCldhYWFhdC4gSG93IGFtIEkgcnVubmluZyBhIHRoaXMgYW5kIGl0IHdvcmtz
Li4uLj8KCgo+Cj4+ICAgICAgICAgIC5yZWxlYXNlID0gaTkxNV9kcml2ZXJfcmVsZWFzZSwKPj4g
ICAgICAgICAgLm9wZW4gPSBpOTE1X2RyaXZlcl9vcGVuLAo+PiAgICAgICAgICAubGFzdGNsb3Nl
ID0gaTkxNV9kcml2ZXJfbGFzdGNsb3NlLAo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2Ry
bS9pOTE1X2RybS5oIGIvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oCj4+IGluZGV4IGVmYTE5
NWQ2OTk0ZS4uYjdmZTE5MTVlMzRkIDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL3VhcGkvZHJtL2k5
MTVfZHJtLmgKPj4gKysrIGIvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oCj4+IEBAIC02MTcs
NiArNjE3LDEyIEBAIHR5cGVkZWYgc3RydWN0IGRybV9pOTE1X2lycV93YWl0IHsKPj4gICAgKi8K
Pj4gICAjZGVmaW5lIEk5MTVfUEFSQU1fUEVSRl9SRVZJU0lPTiAgICAgICA1NAo+PiAgIAo+PiAr
LyogUXVlcnkgd2hldGhlciBEUk1fSTkxNV9HRU1fRVhFQ0JVRkZFUjIgc3VwcG9ydHMgc3VwcGx5
aW5nIGFuIGFycmF5IG9mCj4+ICsgKiB0aW1lbGluZSBzeW5jb2JqIHRocm91Z2ggZHJtX2k5MTVf
Z2VtX2V4ZWNidWZfZXh0X3RpbWVsaW5lX2ZlbmNlcy4gU2VlCj4+ICsgKiBJOTE1X0VYRUNfRVhU
Lgo+PiArICovCj4+ICsjZGVmaW5lIEk5MTVfUEFSQU1fSEFTX0VYRUNfVElNRUxJTkVfRkVOQ0VT
IDU1Cj4+ICsKPj4gICAvKiBNdXN0IGJlIGtlcHQgY29tcGFjdCAtLSBubyBob2xlcyBhbmQgd2Vs
bCBkb2N1bWVudGVkICovCj4+ICAgCj4+ICAgdHlwZWRlZiBzdHJ1Y3QgZHJtX2k5MTVfZ2V0cGFy
YW0gewo+PiBAQCAtMTAxNCw5ICsxMDIwLDQwIEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19m
ZW5jZSB7Cj4+ICAgfTsKPj4gICAKPj4gICBlbnVtIGRybV9pOTE1X2dlbV9leGVjYnVmZmVyX2V4
dCB7Cj4+ICsgICAgICAgLyoqCj4+ICsgICAgICAgICogVGhpcyBpZGVudGlmaWVyIGlzIGFzc29j
aWF0ZWQgd2l0aAo+PiArICAgICAgICAqIGRybV9pOTE1X2dlbV9leGVjYnVmX2V4dF90aW1lbGlu
ZV9mZW5jZXMuCj4gT3IganVzdCAiU2VlIGRybV9pOTE1X2dlbV9leGVjYnVmX2V4dF90aW1lbGlu
ZV9mZW5jZXMKPj4gKyAgICAgICAgKi8KPj4gKyAgICAgICBEUk1fSTkxNV9HRU1fRVhFQ0JVRkZF
Ul9FWFRfVElNRUxJTkVfRkVOQ0VTLAo+ICAgPSAwCj4gZG9uJ3QgbGVhdmUgaXQgdXAgdG8gdGhl
IGNvbXBpbGVyLgoKClNob3VsZCB3ZSBzZXQgZXZlcnkgc2luZ2xlIGl0ZW0gaW4gdGhlIGVudW0g
b3IganVzdCB0aGUgZmlyc3Qgb25lPwoKCj4+ICsKPj4gICAgICAgICAgRFJNX0k5MTVfR0VNX0VY
RUNCVUZGRVJfRVhUX01BWCAvKiBub24tQUJJICovCj4+ICAgfTsKPj4gICAKPj4gKy8qKgo+PiAr
ICogVGhpcyBzdHJ1Y3R1cmUgZGVzY3JpYmVzIGFuIGFycmF5IG9mIGRybV9zeW5jb2JqIGFuZCBh
c3NvY2lhdGVkIHBvaW50cyBmb3IKPj4gKyAqIHRpbWVsaW5lIHZhcmlhbnRzIG9mIGRybV9zeW5j
b2JqLiBJdCBpcyBpbnZhbGlkIHRvIGFwcGVuZCB0aGlzIHN0cnVjdHVyZSB0bwo+PiArICogdGhl
IGV4ZWNidWYgaWYgSTkxNV9FWEVDX0ZFTkNFX0FSUkFZIGlzIHNldC4KPj4gKyAqLwo+PiArc3Ry
dWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyX2V4dF90aW1lbGluZV9mZW5jZXMgewo+PiArICAg
ICAgIHN0cnVjdCBpOTE1X3VzZXJfZXh0ZW5zaW9uIGJhc2U7Cj4+ICsKPj4gKyAgICAgICAvKioK
Pj4gKyAgICAgICAgKiBOdW1iZXIgb2YgZWxlbWVudCBpbiB0aGUgaGFuZGxlc19wdHIgJiB2YWx1
ZV9wdHIgYXJyYXlzLgo+PiArICAgICAgICAqLwo+PiArICAgICAgIF9fdTY0IGhhbmRsZV9jb3Vu
dDsKPiBTaW5jZSBpdCBpcyB1c2VkIGZvciBib3RoLCBJIHdvdWxkIHVzZSBzb21ldGhpbmcgbGlr
ZSBmZW5jZV9jb3VudCwgb3IKPiBudW1fZmVuY2VzIChhbHRob3VnaCBfY291bnQgaXMgaW4gdGhl
IG1ham9yaXR5KS4KCgpEb25lLgoKCj4KPj4gKyAgICAgICAvKioKPj4gKyAgICAgICAgKiBQb2lu
dGVyIHRvIGFuIGFycmF5IG9mIHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19mZW5jZSBvZiBzaXpl
IGhhbmRsZV9jb3VudC4KPiBzL3NpemUvbGVuZ3RoLwo+Cj4gSSB0aGluayB3ZSB0eXBpY2FsbHkg
dXNlIHNpemUgZm9yIGJ5dGUgc2l6ZXMgYXJvdW5kIHRoZSB1QVBJLgoKClN1cmUuCgoKPgo+PiAr
ICAgICAgICAqLwo+PiArICAgICAgIF9fdTY0IGhhbmRsZXNfcHRyOwo+PiArCj4+ICsgICAgICAg
LyoqCj4+ICsgICAgICAgICogUG9pbnRlciB0byBhbiBhcnJheSBvZiB1NjQgdmFsdWVzIG9mIHNp
emUgaGFuZGxlX2NvdW50LiBWYWx1ZXMgbXVzdAo+PiArICAgICAgICAqIGJlIDAgZm9yIGEgYmlu
YXJ5IGRybV9zeW5jb2JqLgo+PiArICAgICAgICAqLwo+PiArICAgICAgIF9fdTY0IHZhbHVlc19w
dHI7Cj4+ICt9Owo+PiArCj4+ICAgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiB7Cj4+
ICAgICAgICAgIC8qKgo+PiAgICAgICAgICAgKiBMaXN0IG9mIGdlbV9leGVjX29iamVjdDIgc3Ry
dWN0cwo+PiAtLSAKPj4gMi4yMS4wLjM5Mi5nZjhmNjc4NzE1OWUKPj4KPj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdAo+PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+IGh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
