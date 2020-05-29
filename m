Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA22A1E7459
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 06:10:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 940EB6E093;
	Fri, 29 May 2020 04:10:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC4C16E093
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 04:10:53 +0000 (UTC)
IronPort-SDR: MA65w5je4yvS+gSWciaZSuSU0+vUuDYFdHmzqbhpiL62GTFEsmRmJKB3j62ZfK/GDGuFdWKe3w
 9mVSfPj6kUDg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 21:10:53 -0700
IronPort-SDR: pDPGH19Ioh6kuHQLv2mHVgUsy/cnaNCbLVa3FmVr8L1QWS1XnEmHQIu+80Z9dU6aH9MSxZXT3q
 KVs0uBZcMglQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,447,1583222400"; d="scan'208";a="292239104"
Received: from kbs1-mobl1.gar.corp.intel.com (HELO [10.213.66.141])
 ([10.213.66.141])
 by fmsmga004.fm.intel.com with ESMTP; 28 May 2020 21:10:51 -0700
To: Paulo Zanoni <paulo.r.zanoni@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200420094746.20409-1-karthik.b.s@intel.com>
 <20200420094746.20409-4-karthik.b.s@intel.com>
 <4286a25810b146a370e3b1ef32dc6c54b7cf0275.camel@intel.com>
From: Karthik B S <karthik.b.s@intel.com>
Message-ID: <22da3fc3-cd1d-9eeb-092f-95fc5230ef90@intel.com>
Date: Fri, 29 May 2020 09:40:50 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <4286a25810b146a370e3b1ef32dc6c54b7cf0275.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 3/6] drm/i915: Enable async flips in i915
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

CgpPbiA0LzIwLzIwMjAgMTE6MzQgUE0sIFBhdWxvIFphbm9uaSB3cm90ZToKPiBFbSBzZWcsIDIw
MjAtMDQtMjAgw6BzIDE1OjE3ICswNTMwLCBLYXJ0aGlrIEIgUyBlc2NyZXZldToKPj4gRW5hYmxl
IGFzeW5jaHJvbm91cyBmbGlwcyBpbiBpOTE1IGZvciBnZW45KyBwbGF0Zm9ybXMuCj4+Cj4+IHYy
OiAtQXN5bmMgZmxpcCBlbmFibGVtZW50IHNob3VsZCBiZSBhIHN0YW5kIGFsb25lIHBhdGNoIChQ
YXVsbykKPiAKPiAuLi4gYW5kIGF0IHRoZSB2ZXJ5IGVuZCBvZiB0aGUgc2VyaWVzLgo+IAo+IElm
IHNvbWVvbmUgaXMgYmlzZWN0aW5nIHRoZSBLZXJuZWwgZm9yIHNvbWUgcHJvYmxlbSB1bnJlbGF0
ZWQgdG8gYXN5bmMKPiBmbGlwcywgYW5kIHRoZXkgZW5kIHVwIGV4YWN0bHkgYXQgdGhpcyBjb21t
aXQsIGFuZCB0aGVpciB1c2VyIHNwYWNlCj4gaGFwcGVucyB0byB0cnkgdG8gZG8gYXN5bmMgZmxp
cHMsIHdpbGwgdGhlaXIgc3lzdGVtIGJlIGJyb2tlbj8gQSBxdWljawo+IGNoZWNrIGF0IHBhdGNo
ZXMgNCwgNSBhbmQgNiBzdWdnZXN0cyB0aGV5IGFyZSBuZWNlc3NhcnkgZm9yIHRoZSBmZWF0dXJl
Cj4gdG8gd29yaywgc28gaGVyZSB3ZSdyZSBlbmFibGluZyBhIGZlYXR1cmUgdGhhdCB3ZSBrbm93
IHdvbid0IHdvcmsKPiBiZWNhdXNlIGl0cyBzdXBwb3J0IGlzIG5vdCBmdWxseSBtZXJnZWQgeWV0
Lgo+IAo+IEEgcGF0Y2ggc2VyaWVzIGlzIG5vdCBhbGxvd2VkIHRvIGJyZWFrIHRoZSBLZXJuZWwg
aW4gdGhlIG1pZGRsZSBhbmQKPiB0aGVuIGZpeCBpdCBsYXRlci4KPiAKClVuZGVyc3Rvb2QuCk1v
dmVkIHRoaXMgcGF0Y2ggdG8gdGhlIGVuZCBvZiB0aGUgc2VyaWVzLgoKVGhhbmtzLApLYXJ0aGlr
LkIuUwo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBLYXJ0aGlrIEIgUyA8a2FydGhpay5iLnNAaW50ZWwu
Y29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyB8IDMgKysrCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+PiBpbmRleCBj
ZjhmNTc3OWRlZTQuLjg2MDFiMTU5ZjQyNSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPj4gQEAgLTE3NTc0LDYgKzE3NTc0LDkgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfbW9kZV9jb25maWdfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkKPj4gICAKPj4gICAJbW9kZV9jb25maWctPmZ1bmNzID0gJmludGVsX21vZGVfZnVuY3M7
Cj4+ICAgCj4+ICsJaWYgKElOVEVMX0dFTihpOTE1KSA+PSA5KQo+PiArCQltb2RlX2NvbmZpZy0+
YXN5bmNfcGFnZV9mbGlwID0gdHJ1ZTsKPj4gKwo+PiAgIAkvKgo+PiAgIAkgKiBNYXhpbXVtIGZy
YW1lYnVmZmVyIGRpbWVuc2lvbnMsIGNob3NlbiB0byBtYXRjaAo+PiAgIAkgKiB0aGUgbWF4aW11
bSByZW5kZXIgZW5naW5lIHN1cmZhY2Ugc2l6ZSBvbiBnZW40Ky4KPiAKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
