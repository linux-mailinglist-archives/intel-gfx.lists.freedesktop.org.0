Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 646C255A35
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 23:49:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA6036E255;
	Tue, 25 Jun 2019 21:49:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF4616E255
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 21:49:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 14:49:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,417,1557212400"; d="scan'208";a="313216651"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga004.jf.intel.com with ESMTP; 25 Jun 2019 14:49:01 -0700
To: Matt Roper <matthew.d.roper@intel.com>,
 =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>
References: <20190614213749.15870-1-jose.souza@intel.com>
 <20190614221739.GF32200@mdroper-desk.amr.corp.intel.com>
 <20190625152648.GF24125@mdroper-desk.amr.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <1acd81a6-e891-01e8-dcfe-e6912670bdbb@intel.com>
Date: Tue, 25 Jun 2019 14:48:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190625152648.GF24125@mdroper-desk.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Add missing VECS engine
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA2LzI1LzE5IDg6MjYgQU0sIE1hdHQgUm9wZXIgd3JvdGU6Cj4gT24gRnJpLCBKdW4gMTQs
IDIwMTkgYXQgMDM6MTc6MzlQTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90ZToKPj4gT24gRnJpLCBK
dW4gMTQsIDIwMTkgYXQgMDI6Mzc6NDlQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3
cm90ZToKPj4+IEVITCBjYW4gaGF2ZSB1cCB0byBvbmUgVkVDUyh2aWRlbyBlbmhhbmNlbWVudCkg
ZW5naW5lLCBzbyBhZGQgaXQgdG8KPj4+IHRoZSBkZXZpY2VfaW5mby4KPj4KPj4gQnNwZWMgMjkx
NTAgaGFzIGEgZm9vdG5vdGUgb24gVkVib3ggdGhhdCBpbmRpY2F0ZXMgIlBhc3MtdGhyb3VnaCBv
bmx5LAo+PiBubyBWRWJveCBwcm9jZXNzaW5nIGxvZ2ljLiIgIFRoYXQgbm90ZSBzZWVtcyBhIGJp
dCB2YWd1ZSwgYnV0IEkgdGhpbmsgSQo+PiBzYXcgc29tZSBtb3JlIGRldGFpbGVkIGluZm8gaW4g
dGhlIHBhc3Qgc29tZXdoZXJlIHRoYXQgaW5kaWNhdGVkIHRoZQo+PiBWRUNTIGNvbW1hbmQgc3Ry
ZWFtZXIgaXMgc3RpbGwgdGVjaG5pY2FsbHkgcHJlc2VudCBidXQgZG9lc24ndCBhY3R1YWxseQo+
PiBkbyBhbnkgdmlkZW8gZW5oYW5jZW1lbnQgb24gRUhMOyBpdCBqdXN0IHBhc3NlcyBjb250ZW50
IHRocm91Z2ggdG8gU0ZDLgo+Pgo+PiBJJ20gbm90IHRlcnJpYmx5IHBsdWdnZWQgaW50byB0aGUg
bWVkaWEgc2lkZSBvZiB0aGUgd29ybGQsIHNvIEknbSBub3QKPj4gc3VyZSBpZiB3ZSB3YW50IHRv
IGV4cG9zZSBWRUNTIHRvIHVzZXJzcGFjZSBpZiBpdCdzIGJhc2ljYWxseSBhIG5vb3AgYW5kCj4+
IGRvZXNuJ3QgZG8gd2hhdCBpdCBub3JtYWxseSBkb2VzIG9uIG90aGVyIHBsYXRmb3Jtcy4gIEJz
cGVjIHBhZ2UgNTIyOQo+PiBpbXBsaWVzIHRoYXQgU0ZDIGNhbiBiZSBmZWQgZGlyZWN0bHkgYnkg
dGhlIGRlY29kZSBlbmdpbmUgd2l0aG91dCBnb2luZwo+PiB0aHJvdWdoIFZFQk9YLCBzbyBJJ20g
bm90IHN1cmUgaWYgbWVkaWEgdXNlcnNwYWNlIHdvdWxkIGV2ZXIgaGF2ZSBhIHVzZQo+PiBmb3Ig
dGhlIHBhc3N0aHJvdWdoLW9ubHkgVkVDUyBzdHJlYW1lci4KPj4KPj4gV2Ugc2hvdWxkIHByb2Jh
Ymx5IGFzayBzb21lb25lIG9uIHRoZSBtZWRpYSB0ZWFtIHdoYXQgdGhlaXIgdGhvdWdodHMgYXJl
Cj4+IG9uIHRoaXMuCj4gCj4gU2luY2UgdGhlIG1lZGlhIHRlYW0gY29uZmlybWVkIHRoYXQgdGhl
cmUgaXMgaW5kZWVkIGEgdXNlIGNhc2UgZm9yIGEKPiBwYXNzdGhyb3VnaC1vbmx5IFZFQ1MsCj4g
Cj4gUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4g
CgpBIGJpdCBsYXRlIGZvciBhIHF1ZXN0aW9uLCBidXQgaG93IGRvZXMgdXNlcnNwYWNlIGtub3cg
dGhhdCB0aGlzIGlzIGp1c3QgCmEgcGFzcy10aHJvdWdoIFZFQ1M/IEFyZSB3ZSBleHBlY3Rpbmcg
dGhlbSB0byBzd2l0Y2ggYmFzZWQgb24gcGxhdGZvcm0gCmluc3RlYWQgb2YganVzdCB1c2luZyB0
aGUga2VybmVsIEFQST8gSU1PIGl0J2QgYmUgYmV0dGVyIHRvIGhpZGUgdGhlIAplbmdpbmUgaW4g
dGhlIHF1ZXJ5IGlvY3RsIGJ5IGRlZmF1bHQgYW5kIG9ubHkgc2hvdyBpdCBpZiB1c2Vyc3BhY2Ug
CnBhc3NlcyBhbiBhcHByb3ByaWF0ZSBmbGFnLCBvdGhlcndpc2UgbGVnYWN5IGFwcHMgY291bGQg
dHJ5IHRvIHN1Ym1pdCAKVkVDUy1zcGVjaWZpYyBjb21tYW5kcyB0byB0aGUgZW5naW5lLgoKRGFu
aWVsZQoKPiAKPj4KPj4KPj4gTWF0dAo+Pgo+Pj4KPj4+IEJTcGVjOiAyOTE1Mgo+Pj4gQ2M6IFJv
ZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPj4+IENjOiBCb2IgUGFhdXdlIDxi
b2Iuai5wYWF1d2VAaW50ZWwuY29tPgo+Pj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3Bl
ckBpbnRlbC5jb20+Cj4+PiBDYzogQ2xpbnQgVGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVs
LmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPgo+Pj4gLS0tCj4+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNp
LmMgfCAyICstCj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwo+Pj4gaW5kZXggNDgyZjFkMGYxNzcw
Li4yYzVmNjRjY2FkYjUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BjaS5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCj4+PiBAQCAt
NzYwLDcgKzc2MCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50
ZWxfZWxraGFydGxha2VfaW5mbyA9IHsKPj4+ICAgCUdFTjExX0ZFQVRVUkVTLAo+Pj4gICAJUExB
VEZPUk0oSU5URUxfRUxLSEFSVExBS0UpLAo+Pj4gICAJLnJlcXVpcmVfZm9yY2VfcHJvYmUgPSAx
LAo+Pj4gLQkuZW5naW5lX21hc2sgPSBCSVQoUkNTMCkgfCBCSVQoQkNTMCkgfCBCSVQoVkNTMCks
Cj4+PiArCS5lbmdpbmVfbWFzayA9IEJJVChSQ1MwKSB8IEJJVChCQ1MwKSB8IEJJVChWQ1MwKSB8
IEJJVChWRUNTMCksCj4+PiAgIAkucHBndHRfc2l6ZSA9IDM2LAo+Pj4gICB9Owo+Pj4gICAKPj4+
IC0tIAo+Pj4gMi4yMi4wCj4+Pgo+Pgo+PiAtLSAKPj4gTWF0dCBSb3Blcgo+PiBHcmFwaGljcyBT
b2Z0d2FyZSBFbmdpbmVlcgo+PiBJb1RHIFBsYXRmb3JtIEVuYWJsaW5nICYgRGV2ZWxvcG1lbnQK
Pj4gSW50ZWwgQ29ycG9yYXRpb24KPj4gKDkxNikgMzU2LTI3OTUKPj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dAo+PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+IGh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4gCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
