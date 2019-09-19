Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9935B8005
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 19:30:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B9B26F7D7;
	Thu, 19 Sep 2019 17:30:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D90E46F7D7
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 17:30:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 10:30:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="212302913"
Received: from swatish2-mobl.gar.corp.intel.com (HELO [10.252.164.21])
 ([10.252.164.21])
 by fmsmga004.fm.intel.com with ESMTP; 19 Sep 2019 10:30:53 -0700
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <1568724525-19275-1-git-send-email-swati2.sharma@intel.com>
 <1568724525-19275-3-git-send-email-swati2.sharma@intel.com>
 <87y2ylx6s1.fsf@intel.com> <3ae3fa32-8050-574d-5942-5e38796cc21d@intel.com>
 <878sqkwjqh.fsf@intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <281c51de-c63b-3cbc-d634-c25ce8a9e5f9@intel.com>
Date: Thu, 19 Sep 2019 23:00:52 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <878sqkwjqh.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [v2][PATCH 2/3] drm/i915/display: Extract
 icl_read_luts()
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
Cc: daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTktU2VwLTE5IDY6MDEgUE0sIEphbmkgTmlrdWxhIHdyb3RlOgo+IE9uIFdlZCwgMTggU2Vw
IDIwMTksICJTaGFybWEsIFN3YXRpMiIgPHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPiB3cm90ZToK
Pj4gT24gMTgtU2VwLTE5IDM6MzEgUE0sIEphbmkgTmlrdWxhIHdyb3RlOgo+Pj4gT24gVHVlLCAx
NyBTZXAgMjAxOSwgU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4gd3JvdGU6
Cj4+Pj4gRm9yIGljbCssIGhhdmUgaHcgcmVhZCBvdXQgdG8gY3JlYXRlIGh3IGJsb2Igb2YgZ2Ft
bWEKPj4+PiBsdXQgdmFsdWVzLiBpY2wrIHBsYXRmb3JtcyBzdXBwb3J0cyBtdWx0aSBzZWdtZW50
ZWQgZ2FtbWEKPj4+PiBtb2RlLCBhZGQgaHcgbHV0IGNyZWF0aW9uIGZvciB0aGlzIG1vZGUuCj4+
Pj4KPj4+PiBUaGlzIHdpbGwgYmUgdXNlZCB0byB2YWxpZGF0ZSBnYW1tYSBwcm9ncmFtbWluZyB1
c2luZyBkc2IKPj4+PiAoZGlzcGxheSBzdGF0ZSBidWZmZXIpIHdoaWNoIGlzIGEgdGdsIGZlYXR1
cmUuCj4+Pj4KPj4+PiB2MjogLXJlYWRvdXQgY29kZSBmb3IgbXVsdGlzZWdtZW50ZWQgZ2FtbWEg
aGFzIHRvIGNvbWUKPj4+PiAgICAgICAgdXAgd2l0aCBzb21lIGludGVybWVkaWF0ZSBlbnRyaWVz
IHRoYXQgYXJlbid0IHByZXNlcnZlZAo+Pj4+ICAgICAgICBpbiBoYXJkd2FyZSAoSmFuaSBOKQo+
Pj4+ICAgICAgIC1saW5lYXIgaW50ZXJwb2xhdGlvbiAoVmlsbGUpCj4+Pj4gICAgICAgLW1vdmVk
IGNvbW1vbiBjb2RlIHRvIGNoZWNrIGdhbW1hX2VuYWJsZSB0byBzcGVjaWZpYyBmdW5jcywKPj4+
PiAgICAgICAgc2luY2UgaWNsIGRvZXNuJ3Qgc3VwcG9ydCB0aGF0Cj4+Pj4KPj4+PiBTaWduZWQt
b2ZmLWJ5OiBTd2F0aSBTaGFybWEgPHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPgo+Pj4+IC0tLQo+
Pj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDI0MyAr
KysrKysrKysrKysrKysrKysrKysrKysrKy0tLQo+Pj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggICAgICAgICAgICB8ICAgNyArCj4+Pj4gICAgMiBmaWxlcyBjaGFuZ2VkLCAy
MzAgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCj4+Pj4gaW5kZXggYjFmMGY3ZS4uMDAwODAx
MSAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nv
bG9yLmMKPj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9y
LmMKPj4+PiBAQCAtMTM3MCw2ICsxMzcwLDkgQEAgc3RhdGljIGludCBpY2xfY29sb3JfY2hlY2so
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4+Pj4gICAgCj4+Pj4gICAgc3Rh
dGljIGludCBpOXh4X2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKPj4+PiAgICB7Cj4+Pj4gKwlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2Vu
YWJsZSkKPj4+PiArCQlyZXR1cm4gMDsgICAgPj4gKwo+Pj4KPj4+IFdoeSBhcmUgeW91IG1vdmlu
ZyB0aGVzZSBjaGVja3MgYmFjayB0byB0aGUgaW5kaXZpZHVhbCBmdW5jdGlvbnM/Cj4+IEFzIHN0
YXRlZCBpbiBjb21taXQgbWVzc2FnZSwgbW92ZWQgY29tbW9uIGNvZGUgdG8gY2hlY2sgZ2FtbWFf
ZW5hYmxlIHRvCj4+IHNwZWNpZmljIGZ1bmNzLCBzaW5jZSBpY2wgZG9lc24ndCBzdXBwb3J0IGdh
bW1hX2VuYWJsZSBhbmQgY29kZSB3aWxsCj4+IHJldHVybiAwLiBJZiBpIG5lZWQgdG8gbWFrZSBp
dCBnZW5lcmljLCBpIG5lZWQgdG8gbWFrZSBnYW1tYV9lbmFibGUgdHJ1ZQo+PiBpbiBpY2xfY29s
b3JfY2hlY2soKSBmdW5jLiBJcyBpdCBmaW5lPyBJQ0wgZW5hYmxlcyBnYW1tYSB0aHJvdWdoCj4+
IGdhbW1hX21vZGUgdW5saWtlIG90aGVyIHBsYXRmb3Jtcy4KPiAKPiBBcmdoLiBSaWdodC4gT2th
eSwgbGV0J3MgZ28gd2l0aCB3aGF0IHlvdSBoYXZlIGluIHRoaXMgcGF0Y2guIFdlIGNhbgo+IGNs
ZWFuIHRoaXMgc3R1ZmYgdXAgbGF0ZXIuCj4gCj4gUGxlYXNlIHdyaXRlIHRoZSBtYWluIHBhcnQg
b2YgdGhlIGNvbW1pdCBtZXNzYWdlIHN1Y2ggdGhhdCBpdCBpcwo+IGluZGVwZW5kZW50IG9mIHRo
ZSBjaGFuZ2Vsb2cuIFRoZSBjaGFuZ2Vsb2cgaXMgZ29vZCwgYnV0IHRoZSBhY3R1YWwKPiBjaGFu
Z2VzIG5lZWQgdG8gYmUgZXZpZGVudCBmcm9tIHRoZSBtZXNzYWdlIHBhcnQuCnN1cmUuCj4gCj4g
QlIsCj4gSmFuaS4KPiAKCgotLSAKflN3YXRpIFNoYXJtYQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
