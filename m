Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD41441F22
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 10:32:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FD34892D8;
	Wed, 12 Jun 2019 08:32:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EC95892D8
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 08:32:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jun 2019 01:32:06 -0700
X-ExtLoop1: 1
Received: from jdarius-mobl.ger.corp.intel.com (HELO [10.252.48.231])
 ([10.252.48.231])
 by orsmga008.jf.intel.com with ESMTP; 12 Jun 2019 01:32:05 -0700
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190423154901.15222-1-manasi.d.navare@intel.com>
 <20190423154901.15222-4-manasi.d.navare@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <db47851d-8ee7-0e01-c39f-44da70c1b1e1@linux.intel.com>
Date: Wed, 12 Jun 2019 10:32:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190423154901.15222-4-manasi.d.navare@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/dp: Trigger modeset if
 master_crtc or slaves bitmask changes
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjMtMDQtMjAxOSBvbSAxNzo0OSBzY2hyZWVmIE1hbmFzaSBOYXZhcmU6Cj4gQWRkIHRoZSBj
b21wYXJpc29uIGJldHdlZW4gdGhlIGN1cnJlbnQgc3RhdGUgYW5kIG5ld19jcnRjX3N0YXRlIGZv
cgo+IG5ld2x5IGFkZGVkIG1hc3Rlcl9jcnRjIHBvaW50ZXIgYW5kIHNsYXZlIGJpdG1hc2sgc28g
dGhhdAo+IGlmIGFueSBvZiB0aG9zZSBjaGFuZ2UgdGhlbiB0aGUgY3VyZXJudCBtYXN0ZXItc2xh
dmUgbGlua3MgaGF2ZQo+IGNoYW5nZWQgYW5kIHdlIG5lZWQgdG8gcmVjb25maWd1cmUgdGhlIHRy
YW5zY29kZXIgcG9ydCBzeW5jIHJlZ2lzdGVyCj4gYW5kIGhlbmNlIHRyaWdnZXIgYSBmdWxsIG1v
ZGVzZXQuCj4KPiBTdWdnZXN0ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Cj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5j
b20+Cj4gU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIHwgNSAr
KysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggODFlOGNiOWZlMjIxLi40YmQyM2U2MWM2ZmQgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTEyNTI0LDYgKzEyNTI0
LDExIEBAIGludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LAo+ICAJUElQRV9DT05GX0NIRUNLX0lORk9GUkFNRShzcGQpOwo+ICAJUElQRV9D
T05GX0NIRUNLX0lORk9GUkFNRShoZG1pKTsKPiAgCj4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMSkgewo+ICsJCVBJUEVfQ09ORl9DSEVDS19JKHRyYW5zX3BvcnRfc3luY19zbGF2ZXMp
Owo+ICsJCVBJUEVfQ09ORl9DSEVDS19QKG1hc3Rlcl9jcnRjKTsKPiArCX0KPiArCj4gICN1bmRl
ZiBQSVBFX0NPTkZfQ0hFQ0tfWAo+ICAjdW5kZWYgUElQRV9DT05GX0NIRUNLX0kKPiAgI3VuZGVm
IFBJUEVfQ09ORl9DSEVDS19CT09MCgpTaG91bGQgcHJvYmFibHkgYmUgbWVyZ2VkIHdpdGggcGF0
Y2ggMS80CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
