Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0F63A1735
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 16:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7DE36E059;
	Wed,  9 Jun 2021 14:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F7506E059
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 14:27:12 +0000 (UTC)
IronPort-SDR: xunw4ifE7jzyigXR/Hy8UHbMpZKWWyVnffHAsxrjgqdbFTjZN19R5S7GqDwdPyF8w/wOb8q9Hq
 3E88sMi7Gfpg==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="205109220"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="205109220"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 07:26:55 -0700
IronPort-SDR: YJjGg7Rc4tZm4fCqW8mn7PnRgJ21ogpPKbfiW5SCZfMWcY/EREYf5a+vwgON1ezD7rJF/MRrKo
 JHm6ih+UylXw==
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="482404246"
Received: from ochaldek-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.34.111])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 07:26:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210527110106.21434-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210527110106.21434-1-stanislav.lisovskiy@intel.com>
Date: Wed, 09 Jun 2021 17:26:50 +0300
Message-ID: <87v96nyuz9.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_p: Same slices mask is not
 same Dbuf state
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

T24gVGh1LCAyNyBNYXkgMjAyMSwgU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292
c2tpeUBpbnRlbC5jb20+IHdyb3RlOgo+IFdlIGN1cnJlbnRseSB0cmVhdCBzYW1lIHNsaWNlIG1h
c2sgYXMgYSBzYW1lIERCdWYgc3RhdGUgYW5kIHNraXAKPiB1cGRhdGluZyB0aGUgRGJ1ZiBzbGlj
ZXMsIGlmIHdlIGRldGVjdCB0aGF0Lgo+IFRoaXMgaXMgd3JvbmcgYXMgaWYgd2UgaGF2ZSBhIG11
bHRpIHRvIHNpbmdsZSBwaXBlIGNoYW5nZSBvcgo+IHZpY2UgdmVyc2EsIHRoYXQgd291bGQgYmUg
dHJlYXRlZCBhcyBhIHNhbWUgRGJ1ZiBzdGF0ZSBhbmQgdGh1cwo+IG5vIGNoYW5nZXMgcmVxdWly
ZWQsIHNvIHdlIGRvbid0IGdldCBNYnVzIHVwZGF0ZWQsIGNhdXNpbmcgaXNzdWVzLgo+IFNvbHV0
aW9uOiBjaGVjayBhbHNvIG1idXNfam9pbiwgaW4gYWRkaXRpb24gdG8gc2xpY2VzIG1hc2suCj4K
PiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGlu
dGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDYgKysr
Ky0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3BtLmMKPiBpbmRleCAwMGYzZGVhZDIwYWQuLjgwNGQ4MzQ4NmU4
MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwo+IEBAIC04MDkzLDcgKzgwOTMsOCBAQCB2
b2lkIGludGVsX2RidWZfcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSkKPiAgCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9kYnVmX3N0YXRlKHN0YXRlKTsKPiAg
Cj4gIAlpZiAoIW5ld19kYnVmX3N0YXRlIHx8Cj4gLQkgICAgbmV3X2RidWZfc3RhdGUtPmVuYWJs
ZWRfc2xpY2VzID09IG9sZF9kYnVmX3N0YXRlLT5lbmFibGVkX3NsaWNlcykKPiArCSAgICAoKG5l
d19kYnVmX3N0YXRlLT5lbmFibGVkX3NsaWNlcyA9PSBvbGRfZGJ1Zl9zdGF0ZS0+ZW5hYmxlZF9z
bGljZXMpCj4gKwkgICAgJiYgKG5ld19kYnVmX3N0YXRlLT5qb2luZWRfbWJ1cyA9PSBvbGRfZGJ1
Zl9zdGF0ZS0+am9pbmVkX21idXMpKSkKPiAgCQlyZXR1cm47Cj4gIAo+ICAJV0FSTl9PTighbmV3
X2RidWZfc3RhdGUtPmJhc2UuY2hhbmdlZCk7Cj4gQEAgLTgxMTMsNyArODExNCw4IEBAIHZvaWQg
aW50ZWxfZGJ1Zl9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSkKPiAgCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9kYnVmX3N0YXRlKHN0YXRlKTsKPiAgCj4g
IAlpZiAoIW5ld19kYnVmX3N0YXRlIHx8Cj4gLQkgICAgbmV3X2RidWZfc3RhdGUtPmVuYWJsZWRf
c2xpY2VzID09IG9sZF9kYnVmX3N0YXRlLT5lbmFibGVkX3NsaWNlcykKPiArCSAgICAoKG5ld19k
YnVmX3N0YXRlLT5lbmFibGVkX3NsaWNlcyA9PSBvbGRfZGJ1Zl9zdGF0ZS0+ZW5hYmxlZF9zbGlj
ZXMpCj4gKwkgICAgJiYgKG5ld19kYnVmX3N0YXRlLT5qb2luZWRfbWJ1cyA9PSBvbGRfZGJ1Zl9z
dGF0ZS0+am9pbmVkX21idXMpKSkKPiAgCQlyZXR1cm47CgpJJ3ZlIHB1c2hlZCB0aGlzIHRvIGRp
biBiZWNhdXNlIHN1cHBvc2VkbHkgdGhpcyBpcyB1cmdlbnQuCgpIb3dldmVyLCB0aGUgJiYgaXMg
c3VwcG9zZWQgdG8gYmUgYXQgdGhlIGVuZCBvZiB0aGUgcHJldmlvdXMgbGluZSwgYW5kCnRoZXJl
IHdhcyBhIGNoZWNrcGF0Y2ggZW1haWwgcmVwbHkgYWJvdXQgdGhpcy4gQWxzbywgdGhlcmUgYXJl
IGV4Y2Vzc2l2ZQpwYXJlbnRoZXNpcyBoZXJlLiBQbGVhc2UgZml4IHRoaXMuCgpCUiwKSmFuaS4K
Cj4gIAo+ICAJV0FSTl9PTighbmV3X2RidWZfc3RhdGUtPmJhc2UuY2hhbmdlZCk7CgotLSAKSmFu
aSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
