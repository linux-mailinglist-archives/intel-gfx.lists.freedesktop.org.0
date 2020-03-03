Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA8A177471
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 11:44:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A69046E593;
	Tue,  3 Mar 2020 10:44:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A3566E593
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 10:44:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 02:44:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="438675671"
Received: from swatish2-mobl1.gar.corp.intel.com (HELO [10.66.115.214])
 ([10.66.115.214])
 by fmsmga005.fm.intel.com with ESMTP; 03 Mar 2020 02:43:59 -0800
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>
References: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <f9773cea-1617-7dda-c4c3-65382f0e0fa0@intel.com>
Date: Tue, 3 Mar 2020 16:13:58 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915/dsb: Replace HAS_DSB check
 with dsb->cmd_buf check
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

SGkgVmlsbGUsCgpDYW4geW91IHBsZWFzZSByZWJhc2Ugb24gY3VycmVudCBkcm0tdGlwIGFuZCBz
dWJtaXQgbmV3IHJldmlzaW9uIHNvIHRoYXQgCm5ldyBydW4gY2FuIGJlIGV4ZWN1dGVkPyBCQVQg
ZmFpbHVyZSB3YXMgb2JzZXJ2ZWQgd2l0aCB0aGUgbGFzdCByZXZpc2lvbgpzdWJtaXR0ZWQuCgpP
biAyOS1KYW4tMjAgMTE6NTAgUE0sIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gRnJvbTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiBXZSBtYXkgd2Fu
dCB0byBub3QgdXNlIHRoZSBEU0IgZXZlbiBpZiB0aGUgcGxhdGZvcm0gaGFzIG9uZS4KPiBTbyBy
ZXBsYWNlIHRoZSBIQVNfRFNCIGNoZWNrIGluIHRoZSBfcHV0KCkgd2l0aCBhIGNtZF9idWYgY2hl
Y2sKPiB0aGF0IHdpbGwgd29yayBpbiBlaXRoZXIgY2FzZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8IDMgKy0tCj4gICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCj4gaW5kZXggOWRkMTgxNDRhNjY0Li4xMjc3
NmYwOWYyMjcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kc2IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMK
PiBAQCAtMTYwLDkgKzE2MCw4IEBAIGludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMgKmNy
dGMpCj4gICB2b2lkIGludGVsX2RzYl9wdXQoc3RydWN0IGludGVsX2RzYiAqZHNiKQo+ICAgewo+
ICAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gY29udGFpbmVyX29mKGRzYiwgdHlwZW9mKCpj
cnRjKSwgZHNiKTsKPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShj
cnRjLT5iYXNlLmRldik7Cj4gICAKPiAtCWlmICghSEFTX0RTQihpOTE1KSkKPiArCWlmICghZHNi
LT5jbWRfYnVmKQo+ICAgCQlyZXR1cm47Cj4gICAKPiAgIAlpZiAoV0FSTl9PTihkc2ItPnJlZmNv
dW50ID09IDApKQo+IAoKLS0gCn5Td2F0aSBTaGFybWEKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
