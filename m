Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E6214DD31
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 15:48:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E9136E85C;
	Thu, 30 Jan 2020 14:48:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D7246E85C
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 14:48:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 06:48:50 -0800
X-IronPort-AV: E=Sophos;i="5.70,382,1574150400"; d="scan'208";a="218297886"
Received: from lodierna-mobl.ger.corp.intel.com (HELO [10.252.22.225])
 ([10.252.22.225])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 30 Jan 2020 06:48:49 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200130142109.1896498-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c4959ae2-3290-9d43-f86f-2a746d5b1a80@linux.intel.com>
Date: Thu, 30 Jan 2020 14:48:47 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200130142109.1896498-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Skip rmw for masked registers
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

Ck9uIDMwLzAxLzIwMjAgMTQ6MjEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBBIG1hc2tlZCByZWdp
c3RlciBkb2VzIG5vdCBuZWVkIHJtdyB0byB1cGRhdGUsIGFuZCBpdCBpcyBiZXN0IG5vdCB0byB1
c2UKPiBzdWNoIGEgc2VxdWVuY2UuCj4gCj4gUmVwb3J0ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28u
dXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jIHwgMjkgKysrKysrKysrKysrKystLS0tLS0tCj4gICAxIGZpbGUgY2hh
bmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gaW5kZXggNWE3ZGIyNzlmNzAyLi44
OTQ3NGE0ZmE5YjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
d29ya2Fyb3VuZHMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMKPiBAQCAtMTY3LDEyICsxNjcsNiBAQCB3YV93cml0ZV9tYXNrZWRfb3Ioc3RydWN0
IGk5MTVfd2FfbGlzdCAqd2FsLCBpOTE1X3JlZ190IHJlZywgdTMyIG1hc2ssCj4gICAJd2FfYWRk
KHdhbCwgcmVnLCBtYXNrLCB2YWwsIG1hc2spOwo+ICAgfQo+ICAgCj4gLXN0YXRpYyB2b2lkCj4g
LXdhX21hc2tlZF9lbihzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVnLCB1
MzIgdmFsKQo+IC17Cj4gLQl3YV93cml0ZV9tYXNrZWRfb3Iod2FsLCByZWcsIHZhbCwgX01BU0tF
RF9CSVRfRU5BQkxFKHZhbCkpOwo+IC19Cj4gLQo+ICAgc3RhdGljIHZvaWQKPiAgIHdhX3dyaXRl
KHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgaTkxNV9yZWdfdCByZWcsIHUzMiB2YWwpCj4gICB7
Cj4gQEAgLTE4NSwxNCArMTc5LDI2IEBAIHdhX3dyaXRlX29yKHN0cnVjdCBpOTE1X3dhX2xpc3Qg
KndhbCwgaTkxNV9yZWdfdCByZWcsIHUzMiB2YWwpCj4gICAJd2Ffd3JpdGVfbWFza2VkX29yKHdh
bCwgcmVnLCB2YWwsIHZhbCk7Cj4gICB9Cj4gICAKPiArc3RhdGljIHZvaWQKPiArd2FfbWFza2Vk
X2VuKHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgaTkxNV9yZWdfdCByZWcsIHUzMiB2YWwpCj4g
K3sKPiArCXdhX2FkZCh3YWwsIHJlZywgMCwgX01BU0tFRF9CSVRfRU5BQkxFKHZhbCksIHZhbCk7
Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkCj4gK3dhX21hc2tlZF9kaXMoc3RydWN0IGk5MTVfd2Ff
bGlzdCAqd2FsLCBpOTE1X3JlZ190IHJlZywgdTMyIHZhbCkKPiArewo+ICsJd2FfYWRkKHdhbCwg
cmVnLCAwLCBfTUFTS0VEX0JJVF9ESVNBQkxFKHZhbCksIHZhbCk7Cj4gK30KPiArCj4gICAjZGVm
aW5lIFdBX1NFVF9CSVRfTUFTS0VEKGFkZHIsIG1hc2spIFwKPiAtCXdhX3dyaXRlX21hc2tlZF9v
cih3YWwsIChhZGRyKSwgKG1hc2spLCBfTUFTS0VEX0JJVF9FTkFCTEUobWFzaykpCj4gKwl3YV9t
YXNrZWRfZW4od2FsLCAoYWRkciksIG1hc2spCj4gICAKPiAgICNkZWZpbmUgV0FfQ0xSX0JJVF9N
QVNLRUQoYWRkciwgbWFzaykgXAo+IC0Jd2Ffd3JpdGVfbWFza2VkX29yKHdhbCwgKGFkZHIpLCAo
bWFzayksIF9NQVNLRURfQklUX0RJU0FCTEUobWFzaykpCj4gKwl3YV9tYXNrZWRfZGlzKHdhbCwg
KGFkZHIpLCBtYXNrKQo+ICAgCj4gICAjZGVmaW5lIFdBX1NFVF9GSUVMRF9NQVNLRUQoYWRkciwg
bWFzaywgdmFsdWUpIFwKPiAtCXdhX3dyaXRlX21hc2tlZF9vcih3YWwsIChhZGRyKSwgKG1hc2sp
LCBfTUFTS0VEX0ZJRUxEKChtYXNrKSwgKHZhbHVlKSkpCj4gKwl3YV93cml0ZV9tYXNrZWRfb3Io
d2FsLCAoYWRkciksIDAsIF9NQVNLRURfRklFTEQoKG1hc2spLCAodmFsdWUpKSkKPiAgIAo+ICAg
c3RhdGljIHZvaWQgZ2VuOF9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUsCj4gICAJCQkJICAgICAgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQo+IEBA
IC0xMDIwLDcgKzEwMjYsMTAgQEAgd2FfbGlzdF9hcHBseShzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1
bmNvcmUsIGNvbnN0IHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKPiAgIAlpbnRlbF91bmNvcmVf
Zm9yY2V3YWtlX2dldF9fbG9ja2VkKHVuY29yZSwgZncpOwoKSW4gdGhlIHJlYWxtIG9mIHBvaW50
bGVzcyB3ZSBjb3VsZCBhbHNvIGNvbnNpZGVyIHRoZSBybXcgdnMgd3Igd2hlbiAKY2FsY3VsYXRp
bmcgdGhlIHJlcXVpcmVkIGZvcmNld2FrZSBkb21haW5zLgoKPiAgIAo+ICAgCWZvciAoaSA9IDAs
IHdhID0gd2FsLT5saXN0OyBpIDwgd2FsLT5jb3VudDsgaSsrLCB3YSsrKSB7Cj4gLQkJaW50ZWxf
dW5jb3JlX3Jtd19mdyh1bmNvcmUsIHdhLT5yZWcsIHdhLT5tYXNrLCB3YS0+dmFsKTsKPiArCQlp
ZiAod2EtPm1hc2spCj4gKwkJCWludGVsX3VuY29yZV9ybXdfZncodW5jb3JlLCB3YS0+cmVnLCB3
YS0+bWFzaywgd2EtPnZhbCk7Cj4gKwkJZWxzZQo+ICsJCQlpbnRlbF91bmNvcmVfd3JpdGUodW5j
b3JlLCB3YS0+cmVnLCB3YS0+dmFsKTsKPiAgIAkJaWYgKElTX0VOQUJMRUQoQ09ORklHX0RSTV9J
OTE1X0RFQlVHX0dFTSkpCj4gICAJCQl3YV92ZXJpZnkod2EsCj4gICAJCQkJICBpbnRlbF91bmNv
cmVfcmVhZF9mdyh1bmNvcmUsIHdhLT5yZWcpLAo+IAoKTG9va3MgY29ycmVjdC4KClJldmlld2Vk
LWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKV2hhdCB3ZXJl
IHRoZSByZWFsIHdvcmxkIGNvbnNlcXVlbmNlcyBvZiBnZXR0aW5nIGl0IHdyb25nPwoKUmVnYXJk
cywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
