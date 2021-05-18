Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5161A387435
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 10:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47FCA6EAC2;
	Tue, 18 May 2021 08:41:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 621516EAC2;
 Tue, 18 May 2021 08:41:49 +0000 (UTC)
IronPort-SDR: a6LigDQcntkbhFynoIzCenVW5T/MW9vK29sAt1kTX6bLcIQTzGWOrgS5/4Jq63XKyahCA8D3fU
 MQFzApq3wZaQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="187786280"
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="187786280"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 01:41:48 -0700
IronPort-SDR: 5WxAx+goKbshjG779q/WsomqGUkJGOI0Qv20rYeXYw5OSnnAYtUNKcwHQysx+uV1RnJtD4SFBS
 wAiL2Q0H7a1A==
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="466311548"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO [10.249.254.195])
 ([10.249.254.195])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 01:41:47 -0700
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-13-thomas.hellstrom@linux.intel.com>
Message-ID: <73279712-3997-9d2d-b5d4-d5371b58ab94@linux.intel.com>
Date: Tue, 18 May 2021 10:41:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210518082701.997251-13-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 12/15] drm/i915: Disable mmap ioctl for
 gen12+
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

Ck9uIDUvMTgvMjEgMTA6MjYgQU0sIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOgo+IEZyb206IE1h
YXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4KPiBU
aGUgcGFsdGZvcm0gc2hvdWxkIGV4Y2x1c2l2ZWx5IHVzZSBtbWFwX29mZnNldCwgb25lIGxlc3Mg
cGF0aCB0byB3b3JyeQo+IGFib3V0IGZvciBkaXNjcmV0ZS4Kcy9wYWx0Zm9ybS9wbGF0Zm9ybS8K
Pgo+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb20+CgpPdGhlcndpc2UsCgpSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLD
tm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgoKCj4gLS0tCj4gICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIHwgNyArKysrKysrCj4gICAxIGZpbGUg
Y2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9tbWFuLmMKPiBpbmRleCA4NTk4YTFjNzhhNGMuLjY1ZGIyOTBlZmQxNiAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwo+IEBAIC01NiwxMCArNTYsMTcg
QEAgaW50Cj4gICBpOTE1X2dlbV9tbWFwX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZv
aWQgKmRhdGEsCj4gICAJCSAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCj4gICB7Cj4gKwlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGV2KTsKPiAgIAlzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX21tYXAgKmFyZ3MgPSBkYXRhOwo+ICAgCXN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmo7Cj4gICAJdW5zaWduZWQgbG9uZyBhZGRyOwo+ICAgCj4gKwkvKiBtbWFwIGlvY3Rs
IGlzIGRpc2FsbG93ZWQgZm9yIGFsbCBwbGF0Zm9ybXMgYWZ0ZXIgVEdMLUxQLiAgVGhpcyBhbHNv
Cj4gKwkgKiBjb3ZlcnMgYWxsIHBsYXRmb3JtcyB3aXRoIGxvY2FsIG1lbW9yeS4KPiArCSAqLwo+
ICsJaWYgKElOVEVMX0dFTihpOTE1KSA+PSAxMiAmJiAhSVNfVElHRVJMQUtFKGk5MTUpKQo+ICsJ
CXJldHVybiAtRU9QTk9UU1VQUDsKPiArCj4gICAJaWYgKGFyZ3MtPmZsYWdzICYgfihJOTE1X01N
QVBfV0MpKQo+ICAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgIApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
