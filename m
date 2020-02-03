Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0280215063C
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 13:36:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51DBE6E323;
	Mon,  3 Feb 2020 12:36:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66B8D6E323
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 12:36:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 04:36:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,397,1574150400"; d="scan'208";a="263401571"
Received: from swatish2-mobl1.gar.corp.intel.com (HELO [10.66.115.214])
 ([10.66.115.214])
 by fmsmga002.fm.intel.com with ESMTP; 03 Feb 2020 04:36:01 -0800
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
 <20200129182034.26138-3-ville.syrjala@linux.intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <4d56b764-96e0-8f0c-4d08-894e1843e947@intel.com>
Date: Mon, 3 Feb 2020 18:06:01 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200129182034.26138-3-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915/dsb: Turn the "DSB is busy"
 into an error
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

CgpPbiAyOS1KYW4tMjAgMTE6NTAgUE0sIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiBUaGUgRFNC
IHNob3VsZCBuZXZlciBiZSBidXN5IGhlcmUgb3Igd2UgbWVzc2VkIHVwIHNvbWV3aGVyZSBlbHNl
Lgo+IE1ha2UgdGhpcyBhIERSTV9FUlJPUigpLgoKVGhpcyBpcyByZXF1aXJlZCwgYXQtbGVhc3Qg
dG8gY2F0Y2ggdGhlIGlzc3VlIGluIENJLgoKUmV2aWV3ZWQtYnk6IFN3YXRpIFNoYXJtYSA8c3dh
dGkyLnNoYXJtYUBpbnRlbC5jb20+Cgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgMiArLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5jCj4gaW5kZXggYTE2YTc4Y2QwZWJlLi41YmI0YWMxNjEwYTUgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPiBAQCAtNTIsNyArNTIs
NyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfZHNiX2VuYWJsZV9lbmdpbmUoc3RydWN0IGlu
dGVsX2RzYiAqZHNiKQo+ICAgCj4gICAJZHNiX2N0cmwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2
LCBEU0JfQ1RSTChwaXBlLCBkc2ItPmlkKSk7Cj4gICAJaWYgKERTQl9TVEFUVVMgJiBkc2JfY3Ry
bCkgewo+IC0JCURSTV9ERUJVR19LTVMoIkRTQiBlbmdpbmUgaXMgYnVzeS5cbiIpOwo+ICsJCURS
TV9FUlJPUigiRFNCIGVuZ2luZSBpcyBidXN5LlxuIik7Cj4gICAJCXJldHVybiBmYWxzZTsKPiAg
IAl9Cj4gICAKPiAKCi0tIAp+U3dhdGkgU2hhcm1hCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
