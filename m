Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E63B0FBB
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 15:22:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB6136ED56;
	Thu, 12 Sep 2019 13:21:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26F226ED56
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 13:21:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 06:21:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="385064163"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.66.116.93])
 ([10.66.116.93])
 by fmsmga005.fm.intel.com with ESMTP; 12 Sep 2019 06:21:55 -0700
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190911191133.23383-1-animesh.manna@intel.com>
 <20190911191133.23383-6-animesh.manna@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <65408441-53da-1348-8cdc-2f18c1bd49e3@intel.com>
Date: Thu, 12 Sep 2019 18:51:54 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190911191133.23383-6-animesh.manna@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 05/10] drm/i915/dsb: Check DSB engine
 status.
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gOS8xMi8yMDE5IDEyOjQxIEFNLCBBbmltZXNoIE1hbm5hIHdyb3RlOgo+IEFzIHBlciBic3Bl
YyBjaGVjayBmb3IgRFNCIHN0YXR1cyBiZWZvcmUgcHJvZ3JhbW1pbmcgYW55Cj4gb2YgaXRzIHJl
Z2lzdGVyLiBJbmxpbmUgZnVuY3Rpb24gYWRkZWQgdG8gY2hlY2sgdGhlIGRzYiBzdGF0dXMuCj4K
PiBDYzogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KPiBDYzogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2Ry
aWdvLnZpdmlAaW50ZWwuY29tPgo+IENjOiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJt
YUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5u
YUBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RzYi5jIHwgOSArKysrKysrKysKPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
ICAgICAgICAgfCA3ICsrKysrKysKPiAgIDIgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygr
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNi
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCj4gaW5kZXggOWUy
OTI3Zjg2OWI5Li5iMWRhMmIwNjI2M2EgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiLmMKPiBAQCAtMTcsNiArMTcsMTUgQEAKPiAgICNkZWZpbmUgRFNCX0JZVEVf
RU5fU0hJRlQJCTIwCj4gICAjZGVmaW5lIERTQl9SRUdfVkFMVUVfTUFTSwkJMHhmZmZmZgo+ICAg
Cj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBpc19kc2JfYnVzeShzdHJ1Y3QgaW50ZWxfZHNiICpkc2Ip
Cj4gK3sKPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gY29udGFpbmVyX29mKGRzYiwgdHlw
ZW9mKCpjcnRjKSwgZHNiKTsKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+ICsJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBl
Owo+ICsKPiArCXJldHVybiBEU0JfU1RBVFVTICYgSTkxNV9SRUFEKERTQl9DVFJMKHBpcGUsIGRz
Yi0+aWQpKTsKPiArfQo+ICsKPiAgIHN0cnVjdCBpbnRlbF9kc2IgKgo+ICAgaW50ZWxfZHNiX2dl
dChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPiAgIHsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
PiBpbmRleCBiZjM3ZWNlYmM4MmYuLjkxODhhMGI1MzUzOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAo+IEBAIC0xMTY4Myw0ICsxMTY4MywxMSBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsK
PiAgICNkZWZpbmUgUE9SVF9UWF9ERkxFWERQQ1NTUyhmaWEpCQlfTU1JT19GSUEoKGZpYSksIDB4
MDA4OTQpCj4gICAjZGVmaW5lICAgRFBfUEhZX01PREVfU1RBVFVTX05PVF9TQUZFKHRjX3BvcnQp
CQkoMSA8PCAodGNfcG9ydCkpCj4gICAKPiArLyogVGhpcyByZWdpc3RlciBjb250cm9scyB0aGUg
RGlzcGxheSBTdGF0ZSBCdWZmZXIgKERTQikgZW5naW5lcy4gKi8KPiArI2RlZmluZSBfRFNCU0xf
SU5TVEFOQ0VfQkFTRQkJMHg3MEIwMAo+ICsjZGVmaW5lIERTQlNMX0lOU1RBTkNFKHBpcGUsIGlk
KQkoX0RTQlNMX0lOU1RBTkNFX0JBU0UgKyBcCj4gKwkJCQkJIChwaXBlKSAqIDB4MTAwMCArIChp
ZCkgKiAxMDApCj4gKyNkZWZpbmUgRFNCX0NUUkwocGlwZSwgaWQpCQlfTU1JTyhEU0JTTF9JTlNU
QU5DRShwaXBlLCBpZCkgKyAweDgpCj4gKyNkZWZpbmUgICBEU0JfU1RBVFVTCQkJKDEgPDwgMCkK
PiArCj4gICAjZW5kaWYgLyogX0k5MTVfUkVHX0hfICovCgpMb29rcyBnb29kIHRvIG1lLAoKUGxl
YXNlIGZlZWwgZnJlZSB0byB1c2UgUmV2aWV3ZWQtYnk6IFNoYXNoYW5rIFNoYXJtYSAKPHNoYXNo
YW5rLnNoYXJtYUBpbnRlbC5jb20+CgotIFNoYXNoYW5rCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
