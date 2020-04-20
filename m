Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9BF1B13DC
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 20:04:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88D0B6E7EC;
	Mon, 20 Apr 2020 18:04:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04B146E7EC
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 18:04:51 +0000 (UTC)
IronPort-SDR: WaDL+M56nirId2kWccBGfmWBldsme2LxwbhKlbYyLFWOdY+SIBwrtbiqfJyh3qg7F2lC6t5kBC
 pkfuwmt/Bj/g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 11:04:51 -0700
IronPort-SDR: 5cKmD2P9eqkOu2bt9mrzCLNu8iVfK3XbNilw9muOe6iCvRZZI72y0tuKu0yd+GzqFVgpYdccGD
 O/WH1FNC5seA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,407,1580803200"; d="scan'208";a="290595149"
Received: from przanoni-mobl.amr.corp.intel.com ([10.255.228.119])
 by orsmga008.jf.intel.com with ESMTP; 20 Apr 2020 11:04:48 -0700
Message-ID: <4286a25810b146a370e3b1ef32dc6c54b7cf0275.camel@intel.com>
From: Paulo Zanoni <paulo.r.zanoni@intel.com>
To: Karthik B S <karthik.b.s@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 20 Apr 2020 11:04:48 -0700
In-Reply-To: <20200420094746.20409-4-karthik.b.s@intel.com>
References: <20200420094746.20409-1-karthik.b.s@intel.com>
 <20200420094746.20409-4-karthik.b.s@intel.com>
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW0gc2VnLCAyMDIwLTA0LTIwIMOgcyAxNToxNyArMDUzMCwgS2FydGhpayBCIFMgZXNjcmV2ZXU6
Cj4gRW5hYmxlIGFzeW5jaHJvbm91cyBmbGlwcyBpbiBpOTE1IGZvciBnZW45KyBwbGF0Zm9ybXMu
Cj4gCj4gdjI6IC1Bc3luYyBmbGlwIGVuYWJsZW1lbnQgc2hvdWxkIGJlIGEgc3RhbmQgYWxvbmUg
cGF0Y2ggKFBhdWxvKQoKLi4uIGFuZCBhdCB0aGUgdmVyeSBlbmQgb2YgdGhlIHNlcmllcy4KCklm
IHNvbWVvbmUgaXMgYmlzZWN0aW5nIHRoZSBLZXJuZWwgZm9yIHNvbWUgcHJvYmxlbSB1bnJlbGF0
ZWQgdG8gYXN5bmMKZmxpcHMsIGFuZCB0aGV5IGVuZCB1cCBleGFjdGx5IGF0IHRoaXMgY29tbWl0
LCBhbmQgdGhlaXIgdXNlciBzcGFjZQpoYXBwZW5zIHRvIHRyeSB0byBkbyBhc3luYyBmbGlwcywg
d2lsbCB0aGVpciBzeXN0ZW0gYmUgYnJva2VuPyBBIHF1aWNrCmNoZWNrIGF0IHBhdGNoZXMgNCwg
NSBhbmQgNiBzdWdnZXN0cyB0aGV5IGFyZSBuZWNlc3NhcnkgZm9yIHRoZSBmZWF0dXJlCnRvIHdv
cmssIHNvIGhlcmUgd2UncmUgZW5hYmxpbmcgYSBmZWF0dXJlIHRoYXQgd2Uga25vdyB3b24ndCB3
b3JrCmJlY2F1c2UgaXRzIHN1cHBvcnQgaXMgbm90IGZ1bGx5IG1lcmdlZCB5ZXQuCgpBIHBhdGNo
IHNlcmllcyBpcyBub3QgYWxsb3dlZCB0byBicmVhayB0aGUgS2VybmVsIGluIHRoZSBtaWRkbGUg
YW5kCnRoZW4gZml4IGl0IGxhdGVyLgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBLYXJ0aGlrIEIgUyA8
a2FydGhpay5iLnNAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyB8IDMgKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Ywo+IGluZGV4IGNmOGY1Nzc5ZGVlNC4uODYwMWIxNTlmNDI1IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMTc1NzQsNiArMTc1NzQs
OSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tb2RlX2NvbmZpZ19pbml0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KQo+ICAKPiAgCW1vZGVfY29uZmlnLT5mdW5jcyA9ICZpbnRlbF9tb2RlX2Z1
bmNzOwo+ICAKPiArCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gOSkKPiArCQltb2RlX2NvbmZpZy0+
YXN5bmNfcGFnZV9mbGlwID0gdHJ1ZTsKPiArCj4gIAkvKgo+ICAJICogTWF4aW11bSBmcmFtZWJ1
ZmZlciBkaW1lbnNpb25zLCBjaG9zZW4gdG8gbWF0Y2gKPiAgCSAqIHRoZSBtYXhpbXVtIHJlbmRl
ciBlbmdpbmUgc3VyZmFjZSBzaXplIG9uIGdlbjQrLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
