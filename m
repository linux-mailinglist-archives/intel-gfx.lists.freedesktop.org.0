Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DD61E7539
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 07:13:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BCEB6E85B;
	Fri, 29 May 2020 05:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 075CB6E85B
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 05:13:18 +0000 (UTC)
IronPort-SDR: EQOaS4Vt/qbj3CMsWcs4jdzIafDyhiHd+sqXBilaZAnnezXDsL+bDevQacxmV6u2KsiLHQOtyL
 S/J4yO4gh34w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 22:13:18 -0700
IronPort-SDR: vTewb3ELdmo80yhNV+4n6aGsOF0P6HsQIYgEnL2GjTjCFP8himw2e6pPDb00+iPJVrpxBa6GNF
 h2p0RheBqGsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,447,1583222400"; d="scan'208";a="292251475"
Received: from kbs1-mobl1.gar.corp.intel.com (HELO [10.213.66.141])
 ([10.213.66.141])
 by fmsmga004.fm.intel.com with ESMTP; 28 May 2020 22:13:16 -0700
To: Paulo Zanoni <paulo.r.zanoni@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200528053931.29282-1-karthik.b.s@intel.com>
 <98b06b60080abbfc178fad96ffbe9757ae0e8d53.camel@intel.com>
From: Karthik B S <karthik.b.s@intel.com>
Message-ID: <8f6f8164-8370-cb42-6232-67f45b16e3c5@intel.com>
Date: Fri, 29 May 2020 10:43:15 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <98b06b60080abbfc178fad96ffbe9757ae0e8d53.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 0/5] Asynchronous flip implementation for
 i915
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

CgpPbiA1LzI4LzIwMjAgMTE6MTcgUE0sIFBhdWxvIFphbm9uaSB3cm90ZToKPiBFbSBxdWksIDIw
MjAtMDUtMjggw6BzIDExOjA5ICswNTMwLCBLYXJ0aGlrIEIgUyBlc2NyZXZldToKPj4gV2l0aG91
dCBhc3luYyBmbGlwIHN1cHBvcnQgaW4gdGhlIGtlcm5lbCwgZnVsbHNjcmVlbiBhcHBzIHdoZXJl
IGdhbWUKPj4gcmVzb2x1dGlvbiBpcyBlcXVhbCB0byB0aGUgc2NyZWVuIHJlc29sdXRpb24sIG11
c3QgcGVyZm9ybSBhbiBleHRyYSBibGl0Cj4+IHBlciBmcmFtZSBwcmlvciB0byBmbGlwcGluZy4K
Pj4KPj4gQXN5bmNocm9ub3VzIHBhZ2UgZmxpcHMgd2lsbCBhbHNvIGJvb3N0IHRoZSBGUFMgb2Yg
TWVzYSBiZW5jaG1hcmtzLgo+Pgo+PiB2MjogRmV3IHBhdGNoZXMgaGF2ZSBiZWVuIHNxdWFzaGVk
IGFuZCBwYXRjaGVzIGhhdmUgYmVlbiBzaHVmZmxlZCBhcwo+PiAgICAgIHBlciB0aGUgcmV2aWV3
cyBvbiB0aGUgcHJldmlvdXMgdmVyc2lvbi4KPj4KPj4gdjM6IEZldyBwYXRjaGVzIGhhdmUgYmVl
biBzcXVhc2hlZCBhbmQgcGF0Y2hlcyBoYXZlIGJlZW4gc2h1ZmZsZWQgYXMKPj4gICAgICBwZXIg
dGhlIHJldmlld3Mgb24gdGhlIHByZXZpb3VzIHZlcnNpb24uCj4gCj4gSGVsbG8KPiAKPiBJIGFz
a2VkIHF1aXRlIGEgZmV3IHF1ZXN0aW9ucyBpbiB0aGUgcmV2aWV3IG9mIHYyLCBidXQgbmV2ZXIg
Z290IGFueQo+IHJlcGxpZXMuIEkgc2VlIHNvbWUgdGhpbmdzIHJlZ2FyZGluZyB0aG9zZSBxdWVz
dGlvbnMgYXJlIGRpZmZlcmVudCBpbgo+IHYzLCBidXQgSSBzdGlsbCB3b3VsZCByZWFsbHkgbGlr
ZSB0byBoYXZlIHRob3NlIGFuc3dlcnMgaW4gZGlyZWN0Cj4gdGV4dC9lbWFpbCBmb3JtIGluIG9y
ZGVyIHRvIGNsYXJpZnkgbXkgdW5kZXJzdGFuZGluZyBvZiB5b3VyIG9yaWdpbmFsCj4gaW50ZW50
IChhbmQgYWxzbyBoZWxwIG1lIHVuZGVyc3RhbmQgd2h5IHRoaW5ncyBhcmUgZGlmZmVyZW50IGlu
IHYzKS4KPiBXb3VsZCB5b3UgbWluZCByZXBseWluZyB0byB0aG9zZSBlbWFpbHM/CgpIaSwKClNv
cnJ5IGZvciBub3QgZG9pbmcgdGhpcyBlYXJsaWVyLiBJJ3ZlIG5vdyByZXNwb25kZWQgdG8gdGhl
IHF1ZXN0aW9ucyBvbiAKdGhlIHYyIG9mIHRoaXMgc2VyaWVzLgoKVGhhbmsgeW91IGZvciBhbGwg
dGhlIHJldmlld3MuCgpUaGFua3MsCkthcnRoaWsuQi5TCj4gCj4gVGhhbmtzLAo+IFBhdWxvCj4g
Cj4+Cj4+IEthcnRoaWsgQiBTICg1KToKPj4gICAgZHJtL2k5MTU6IEFkZCBlbmFibGUvZGlzYWJs
ZSBmbGlwIGRvbmUgYW5kIGZsaXAgZG9uZSBoYW5kbGVyCj4+ICAgIGRybS9pOTE1OiBBZGQgc3Vw
cG9ydCBmb3IgYXN5bmMgZmxpcHMgaW4gSTkxNQo+PiAgICBkcm0vaTkxNTogQWRkIGNoZWNrcyBz
cGVjaWZpYyB0byBhc3luYyBmbGlwcwo+PiAgICBkcm0vaTkxNTogRG8gbm90IGNhbGwgZHJtX2Ny
dGNfYXJtX3ZibGFua19ldmVudCBpbiBhc3luYyBmbGlwcwo+PiAgICBkcm0vaTkxNTogRW5hYmxl
IGFzeW5jIGZsaXBzIGluIGk5MTUKPj4KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyB8IDcxICsrKysrKysrKysrKysrKysrKysrCj4+ICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyAgfCAgOCArKy0KPj4gICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jICAgICAgICAgICAgICB8IDUyICsrKysrKysrKysrKysr
Cj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuaCAgICAgICAgICAgICAgfCAgMiAr
Cj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgfCAgMSAr
Cj4+ICAgNSBmaWxlcyBjaGFuZ2VkLCAxMzMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+
Pgo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
