Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 135BF17EC92
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 00:19:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74B7D6E5B9;
	Mon,  9 Mar 2020 23:19:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC17E6E5B9
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 23:19:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 16:19:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="321601311"
Received: from przanoni-mobl.jf.intel.com ([10.24.15.100])
 by orsmga001.jf.intel.com with ESMTP; 09 Mar 2020 16:19:22 -0700
Message-ID: <6931b691b2a49878110f308ad16230a07b260842.camel@intel.com>
From: Paulo Zanoni <paulo.r.zanoni@intel.com>
To: Karthik B S <karthik.b.s@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 09 Mar 2020 16:19:22 -0700
In-Reply-To: <20200306113927.16904-6-karthik.b.s@intel.com>
References: <20200306113927.16904-1-karthik.b.s@intel.com>
 <20200306113927.16904-6-karthik.b.s@intel.com>
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 5/7] drm/i915: Add flip_done_handler definition
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

RW0gc2V4LCAyMDIwLTAzLTA2IMOgcyAxNzowOSArMDUzMCwgS2FydGhpayBCIFMgZXNjcmV2ZXU6
Cj4gU2VuZCB0aGUgZmxpcCBkb25lIGV2ZW50IGluIHRoZSBoYW5kbGVyIGFuZCBkaXNhYmxlIHRo
ZSBpbnRlcnJ1cHQuCj4gCj4gU2lnbmVkLW9mZi1ieTogS2FydGhpayBCIFMgPGthcnRoaWsuYi5z
QGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDE4
ICsrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+IGluZGV4IDU5NTVlNzM3YTQ1ZC4uMWZlZGE5YWVj
ZjRhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj4gQEAgLTEyNDMsNiArMTI0MywyNCBA
QCBkaXNwbGF5X3BpcGVfY3JjX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKPiAgCQkJICAgICB1MzIgY3JjNCkge30KPiAgI2VuZGlmCj4gIAo+ICtzdGF0aWMg
dm9pZCBmbGlwX2RvbmVfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
Cj4gKwkJCSAgICAgIHVuc2lnbmVkIGludCBwaXBlKQoKVGhlIGNvbXBpbGVyIGlzIGdvaW5nIHRv
IGNvbXBsYWluIHRoYXQgd2UgYWRkZWQgYSBzdGF0aWMgZnVuY3Rpb24gd2l0aApubyBjYWxsZXIu
CgpTZWUgbXkgY29tbWVudCBvbiBjb21taXQgMTogcGxlYXNlIHNxdWFzaCB0aGlzIHBhdGNoIHdp
dGggdGhlIG9uZSB0aGF0Cm1ha2VzIHVzZSBvZiB0aGUgbmV3IGZ1bmN0aW9uLgoKPiArewo+ICsJ
c3RydWN0IGludGVsX2NydGMgKmNydGMgPSBpbnRlbF9nZXRfY3J0Y19mb3JfcGlwZShkZXZfcHJp
diwgcGlwZSk7Cj4gKwlzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPSBjcnRjLT5i
YXNlLnN0YXRlOwo+ICsJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9ICZkZXZfcHJpdi0+ZHJtOwo+
ICsJdW5zaWduZWQgbG9uZyBpcnFmbGFnczsKPiArCj4gKwlzcGluX2xvY2tfaXJxc2F2ZSgmZGV2
LT5ldmVudF9sb2NrLCBpcnFmbGFncyk7Cj4gKwo+ICsJaWYgKGNydGNfc3RhdGUtPmV2ZW50LT5i
YXNlLmV2ZW50LT50eXBlID09IERSTV9FVkVOVF9GTElQX0NPTVBMRVRFKSB7Cj4gKwkJZHJtX2Ny
dGNfc2VuZF92YmxhbmtfZXZlbnQoJmNydGMtPmJhc2UsIGNydGNfc3RhdGUtPmV2ZW50KTsKPiAr
CQljcnRjX3N0YXRlLT5ldmVudCA9IE5VTEw7Cj4gKwl9Cj4gKwo+ICsJc3Bpbl91bmxvY2tfaXJx
cmVzdG9yZSgmZGV2LT5ldmVudF9sb2NrLCBpcnFmbGFncyk7Cj4gKwlpY2xfZGlzYWJsZV9mbGlw
X2RvbmUoJmNydGMtPmJhc2UpOwo+ICt9Cj4gIAo+ICBzdGF0aWMgdm9pZCBoc3dfcGlwZV9jcmNf
aXJxX2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJCQkJICAg
ICBlbnVtIHBpcGUgcGlwZSkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
