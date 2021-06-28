Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA81B3B5CD3
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 12:59:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83E7A6E427;
	Mon, 28 Jun 2021 10:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 321F26E42C;
 Mon, 28 Jun 2021 10:59:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10028"; a="207968636"
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="207968636"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 03:59:15 -0700
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="419126181"
Received: from vipulcha-mobl.ger.corp.intel.com (HELO [10.213.225.54])
 ([10.213.225.54])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 03:59:13 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210628092106.55270-1-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <15bf15c2-3a0c-00b2-e1bc-7b329964e60b@intel.com>
Date: Mon, 28 Jun 2021 11:59:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210628092106.55270-1-thomas.hellstrom@linux.intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Reinstate the mmap ioctl for
 some platforms
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjgvMDYvMjAyMSAxMDoyMSwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4gUmVpbnN0YXRl
IHRoZSBtbWFwIGlvY3RsIGZvciBhbGwgY3VycmVudCBpbnRlZ3JhdGVkIHBsYXRmb3Jtcy4KPiBU
aGUgaW50ZW50aW9uIHdhcyByZWFsbHkgdG8gaGF2ZSBpdCBkaXNhYmxlZCBmb3IgZGlzY3JldGUg
Z3JhcGhpY3MKPiB3aGVyZSB3ZSBlbmZvcmNlIGEgc2luZ2xlIG1tYXAgbW9kZS4KPiAKPiBUaGlz
IGZpeGVzIG1lZGlhIG9uIHJrbC9hZGwuCj4gCj4gdjI6Cj4gLSBBZGRlZCBhIFItQi4KPiAtIEZp
eGVkIHVwIHRoZSBjb2RlIGNvbW1lbnQgYSBiaXQuCj4gdjM6Cj4gLSBBZGRlZCBhbiBBLUIuCj4g
LSBQb2ludCBvdXQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlIHRoYXQgdGhlcmUgd2FzIGFuIGlzc3Vl
IHdpdGggbWVkaWEgb24KPiAgICBya2wvYWRsLgo+IAo+IEZpeGVzOiAzNWNiZDkxZWI1NDEgKCJk
cm0vaTkxNTogRGlzYWJsZSBtbWFwIGlvY3RsIGZvciBnZW4xMisiKQo+IFNpZ25lZC1vZmYtYnk6
IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPiBS
ZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IEFja2Vk
LWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgoKSSBhbHJlYWR5IHB1
c2hlZCB2MiBvZiB0aGlzIGxhc3Qgd2VlayB3aXRoIHRoZSBmb2xsb3dpbmcgYW1lbmRlZDoKCiJU
aGlzIHdhcyByZXBvcnRlZCB0byBicmVhayBBREwtUCB3aXRoIHRoZSBtZWRpYSBzdGFjaywgd2hp
Y2ggd2FzIG5vdCAKdGhlIGludGVudGlvbi4gQWx0aG91Z2ggbG9uZ2VyIHRlcm0gd2UgZG8gc3Rp
bGwgcGxhbiB0byBzdW5zZXQgdGhpcyAKaW9jdGwgZXZlbiBmb3IgaW50ZWdyYXRlZCwgaW4gZmF2
b3VyIG9mIHVzaW5nIG1tYXBfb2Zmc2V0IGluc3RlYWQuIgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgfCA3ICsrKystLS0KPiAgIDEgZmlsZSBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCj4gaW5kZXggNjQ5N2EyZGJkYWI5Li5hOTBmNzk2ZTg1
YzAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4u
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKPiBAQCAt
NjIsMTAgKzYyLDExIEBAIGk5MTVfZ2VtX21tYXBfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwgdm9pZCAqZGF0YSwKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwo+ICAg
CXVuc2lnbmVkIGxvbmcgYWRkcjsKPiAgIAo+IC0JLyogbW1hcCBpb2N0bCBpcyBkaXNhbGxvd2Vk
IGZvciBhbGwgcGxhdGZvcm1zIGFmdGVyIFRHTC1MUC4gIFRoaXMgYWxzbwo+IC0JICogY292ZXJz
IGFsbCBwbGF0Zm9ybXMgd2l0aCBsb2NhbCBtZW1vcnkuCj4gKwkvKgo+ICsJICogbW1hcCBpb2N0
bCBpcyBkaXNhbGxvd2VkIGZvciBhbGwgZGlzY3JldGUgcGxhdGZvcm1zLAo+ICsJICogYW5kIGZv
ciBhbGwgcGxhdGZvcm1zIHdpdGggR1JBUEhJQ1NfVkVSID4gMTIuCj4gICAJICovCj4gLQlpZiAo
R1JBUEhJQ1NfVkVSKGk5MTUpID49IDEyICYmICFJU19USUdFUkxBS0UoaTkxNSkpCj4gKwlpZiAo
SVNfREdGWChpOTE1KSB8fCBHUkFQSElDU19WRVIoaTkxNSkgPiAxMikKPiAgIAkJcmV0dXJuIC1F
T1BOT1RTVVBQOwo+ICAgCj4gICAJaWYgKGFyZ3MtPmZsYWdzICYgfihJOTE1X01NQVBfV0MpKQo+
IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
