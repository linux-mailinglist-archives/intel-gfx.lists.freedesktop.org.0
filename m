Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E45220F3EA
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 13:56:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B09B6E0EC;
	Tue, 30 Jun 2020 11:56:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11DCD6E0EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 11:56:42 +0000 (UTC)
IronPort-SDR: bAmZ/3MbmVmF8zIK3CP046HjehAwhiw3mQprx7SPQ6mQUsqnPzKppxsqYVm1y6xMC4IGM0lo4Q
 2Z5sv3dbLZTA==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="143700664"
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="143700664"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 04:56:41 -0700
IronPort-SDR: JyF0Rt0nhcBlPBm0h/Qiq6m9g9jrmH0z3hvjafLe1hjYMxUiUS2ds9+0MVtvA3hzk3mfCK3h44
 o+uhYrxS7x0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="277402218"
Received: from pozo-mobl1.ger.corp.intel.com (HELO [10.252.54.227])
 ([10.252.54.227])
 by orsmga003.jf.intel.com with ESMTP; 30 Jun 2020 04:56:40 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
 <20200623142843.423594-8-maarten.lankhorst@linux.intel.com>
 <48435be5-d827-d785-9395-0d69a2b061a5@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <4d8e453a-e524-860f-594e-b59bf871d3fc@linux.intel.com>
Date: Tue, 30 Jun 2020 13:56:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <48435be5-d827-d785-9395-0d69a2b061a5@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/26] drm/i915/gem: Make eb_add_lut
 interruptible wait on object lock.
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

T3AgMjktMDYtMjAyMCBvbSAxNzoxNCBzY2hyZWVmIFR2cnRrbyBVcnN1bGluOgo+Cj4gT24gMjMv
MDYvMjAyMCAxNToyOCwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+IFRoZSBsb2NrIGhlcmUg
c2hvdWxkIGJlIGludGVycnVwdGlibGUsIHNvIHdlIGNhbiBiYWNrb2ZmIGlmIG5lZWRlZC4KPgo+
IEkgc3BpZWQgQ2hyaXMgcG9zdGluZyAiZHJtL2k5MTUvZ2VtOiBNb3ZlIG9iai0+bHV0X2xpc3Qg
dW5kZXIgaXRzIG93biBsb2NrIiBzbyBtYXliZSBoYXZlIGEgbG9vayBhdCB0aGF0Lgo+Cj4gTXkg
cXVlc3Rpb24gaGVyZSBpcy4uCj4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9y
c3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgfCA4ICsrKysrKystCj4+
IMKgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVy
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4+IGlu
ZGV4IDI2MzZhMTMwZmI1Ny4uYWE0NDFhZjgxNDMxIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPj4gQEAgLTc3NCw3ICs3NzQsMTIg
QEAgc3RhdGljIGludCBfX2ViX2FkZF9sdXQoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoZXJyID09IDApIHsgLyogQW5kIG5vciBoYXMgdGhpcyBo
YW5kbGUgKi8KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaiA9IHZtYS0+b2JqOwo+PiDCoCAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBp
OTE1X2dlbV9vYmplY3RfbG9jayhvYmosIE5VTEwpOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBlcnIgPSBpOTE1X2dlbV9vYmplY3RfbG9ja19pbnRlcnJ1cHRpYmxlKG9iaiwgTlVMTCk7Cj4K
PiAuLiBkb2VzIHRoaXMgbG9jay11bmxvY2sgc3Vydml2ZSB0byB0aGUgZW5kIG9mIHlvdXIgc2Vy
aWVzIG9yIGdldHMgY29tcGxldGVseSBzdWJzdW1lZCBieSB0aGUgY3R4IGxvY2tpbmc/Cj4KPiBS
ZWdhcmRzLAo+Cj4gVHZydGtvCj4KWWVhaCBpdCBzdXJ2aXZlcywgaXQncyB0b28gZWFybHkgdG8g
dXNlIHd3IHdhaXRpbmcuIFNlcGFyYXRlIGx1dCBsb2NrIGlzIGZpbmUgYXMgd2VsbCBhcyByZS11
c2luZyB3dyBpcyBhIGJpdCBvdmVya2lsbC4KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYg
KGVycikgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJhZGl4X3RyZWVfZGVs
ZXRlKCZjdHgtPmhhbmRsZXNfdm1hLCBoYW5kbGUpOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGdvdG8gdW5sb2NrOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+ICsK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGlkcl9maW5kKCZlYi0+ZmlsZS0+b2Jq
ZWN0X2lkciwgaGFuZGxlKSA9PSBvYmopIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBsaXN0X2FkZCgmbHV0LT5vYmpfbGluaywgJm9iai0+bHV0X2xpc3QpOwo+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9IGVsc2Ugewo+PiBAQCAtNzgzLDYgKzc4OCw3IEBAIHN0
YXRpYyBpbnQgX19lYl9hZGRfbHV0KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAo+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGk5
MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4gK3Vu
bG9jazoKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIG11dGV4X3VubG9jaygmY3R4LT5tdXRleCk7Cj4+
IMKgwqDCoMKgwqAgfQo+PiDCoMKgwqDCoMKgIGlmICh1bmxpa2VseShlcnIpKQo+PgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
