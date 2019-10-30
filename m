Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DE9E9731
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 08:33:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5730B6E8A2;
	Wed, 30 Oct 2019 07:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 465 seconds by postgrey-1.36 at gabe;
 Wed, 30 Oct 2019 07:33:31 UTC
Received: from ackle.nomi.cz (ackle.nomi.cz [IPv6:2a01:430:1:1::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89B926E8A2
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 07:33:31 +0000 (UTC)
Received: from localhost (unknown
 [IPv6:2a02:8308:a03d:b400:3f23:631f:7f50:8a55])
 by ackle.nomi.cz (Postfix) with ESMTPSA id 31BCEA05B1;
 Wed, 30 Oct 2019 08:25:41 +0100 (CET)
Date: Wed, 30 Oct 2019 08:25:40 +0100
From: Tomas Janousek <tomi@nomi.cz>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20191030072540.mfmpyfdsnmubkrxx@notes.lisk.in>
References: <20191028212527.24401-1-don.hiatt@intel.com>
 <op.0ae85w05xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <op.0ae85w05xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
User-Agent: NeoMutt/20180716
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=nomi.cz; s=201904; 
 t=1572420341; bh=v/3rf0C/YWfevv12zimRBPLfVvH355gQmOUZ/KwzlfI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K62ZnVI9obeplPTiW0Ss9wrhH96h83QJXt94P7dB+a7AEA+w7kTmYONexeLr3ATXO
 gA9vROwvk7eZlryv2j5NJ3nhBd+Gw4IcBKXMB1l9fSkWKve2yMgxR+kd3QBl1QR3yM
 qJwrSvNiF0Jduvr2N5jtyzms/1wCwKKELub57dtNStwI5QQT2krc+2onWUR1uf20w+
 G6u2C8nnugxFX4l81a44iI9X9AlHys+QDEC61HBhaXTTkpxnkgg/vDYspElm32q88/
 NvyLI726B5TNhW69Ua+9o9upWloiQRfvGOlzSzwOhiG/AA66tC2b86G0wgRVOMB2ds
 +a5cOVf9CFWbQ==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Skip suspend/resume GuC
 action on platforms w/o GuC submission
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBPY3QgMjksIDIwMTkgYXQgMDE6MzM6MjJQTSArMDEwMCwgTWljaGFsIFdhamRlY3pr
byB3cm90ZToKPiBPbiBNb24sIDI4IE9jdCAyMDE5IDIyOjI1OjI3ICswMTAwLCA8ZG9uLmhpYXR0
QGludGVsLmNvbT4gd3JvdGU6Cj4gPiArCSAqIHdlIGRvIG5vdCBuZWVkIHRvIHN1c3BlbmQgdGhl
IEd1QyBidXQgd2UgZG8gbmVlZCB0byBkaXNhYmxlIHRoZQo+ID4gKwkgKiBHdUMgY29tbXVuaWNh
dGlvbiBvbiBzdXNwZW5kLgo+ID4gKwkgKi8KPiA+ICsJaWYgKCFndWMtPnN1Ym1pc3Npb25fc3Vw
cG9ydGVkKQo+IAo+IFVzaW5nIHN1Ym1pc3Npb25fc3VwcG9ydGVkIGZsYWcgZGlyZWN0bHkgY2Fu
IGJlIHRyaWNreSwgYXMgdG9kYXkgaXQKPiBpcyBhbHdheXMgc2V0IHRvIGZhbHNlLCBidXQgaW4g
dGhlIGZ1dHVyZSBpdCBtYXkgaW5kaWNhdGUgZWl0aGVyIHRoYXQKPiBzdWJtaXNzaW9uIGlzIHN1
cHBvcnRlZCBieSB0aGUgZHJpdmVyL2Z3IGFuZC9vciBlbmFibGVkIGJ5IG1vZHBhcmFtLgo+IAo+
IFRoZXJlIGlzIG5vIGd1YXJhbnRlZSB0aGF0IGl0IHdpbGwgcmVmbGVjdCBhY3R1YWwgcnVudGlt
ZSBzdGF0dXMsCj4gYXMgZXZlbiBzdXBwb3J0ZWQvdW5ibG9ja2VkIGd1YyBzdWJtaXNzaW9uIG1h
eSBmYWxsYmFjayB0byBleGVjbGlzdHMuCj4gCj4gV2UgbWF5IG5lZWQgc29tZXRoaW5nIGxpa2Ug
aW50ZWxfZ3VjX3N1Ym1pc3Npb25faXNfYWN0aXZlKCkgdGhhdCB3aWxsCj4gcmVmbGVjdCBhY3R1
YWwgbW9kZSBvZiBzdWJtaXNzaW9uIGN1cnJlbnRseSB1c2VkIGJ5IHRoZSBkcml2ZXIuCgpXaGF0
IGFib3V0IHRoaXM6CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMKaW5kZXggYWU0NTY1MWFjNzNjLi5h
Y2RhMzhhOWZlYzUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYwpAQCAtNTIyLDEwICs1MjIsMTkg
QEAgdm9pZCBpbnRlbF91Y19ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCiAJaWYgKCFpbnRlbF9ndWNfaXNfbG9hZGVkKGd1YykpCiAJCXJldHVybjsKIAorCS8q
CisJICogSWYgR3VDIGNvbW11bmljYXRpb24gaXMgZW5hYmxlZCBidXQgc3VibWlzc2lvbiBpcyBu
b3Qgc3VwcG9ydGVkLAorCSAqIHdlIGRvIG5vdCBuZWVkIHRvIHN1c3BlbmQgdGhlIEd1QyBidXQg
d2UgZG8gbmVlZCB0byBkaXNhYmxlIHRoZQorCSAqIEd1QyBjb21tdW5pY2F0aW9uIG9uIHN1c3Bl
bmQuCisJICovCisJaWYgKCFVU0VTX0dVQ19TVUJNSVNTSU9OKGk5MTUpKQorCQlnb3RvIGd1Y19k
aXNhYmxlX2NvbW07CisKIAllcnIgPSBpbnRlbF9ndWNfc3VzcGVuZChndWMpOwogCWlmIChlcnIp
CiAJCURSTV9ERUJVR19EUklWRVIoIkZhaWxlZCB0byBzdXNwZW5kIEd1QywgZXJyPSVkIiwgZXJy
KTsKIAorZ3VjX2Rpc2FibGVfY29tbToKIAlndWNfZGlzYWJsZV9jb21tdW5pY2F0aW9uKGd1Yyk7
CiB9CiAKQEAgLTU1MSw2ICs1NjAsMTQgQEAgaW50IGludGVsX3VjX3Jlc3VtZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAogCWd1Y19lbmFibGVfY29tbXVuaWNhdGlvbihndWMpOwog
CisJLyoKKwkgKiBJZiBHdUMgY29tbXVuaWNhdGlvbiBpcyBlbmFibGVkIGJ1dCBzdWJtaXNzaW9u
IGlzIG5vdCBzdXBwb3J0ZWQsCisJICogd2UgZG8gbm90IG5lZWQgdG8gcmVzdW1lIHRoZSBHdUMg
YnV0IHdlIGRvIG5lZWQgdG8gZW5hYmxlIHRoZQorCSAqIEd1QyBjb21tdW5pY2F0aW9uIG9uIHJl
c3VtZSAoYWJvdmUpLgorCSAqLworCWlmICghVVNFU19HVUNfU1VCTUlTU0lPTihpOTE1KSkKKwkJ
cmV0dXJuIDA7CisKIAllcnIgPSBpbnRlbF9ndWNfcmVzdW1lKGd1Yyk7CiAJaWYgKGVycikgewog
CQlEUk1fREVCVUdfRFJJVkVSKCJGYWlsZWQgdG8gcmVzdW1lIEd1QywgZXJyPSVkIiwgZXJyKTsK
ClRoaXMgaXMgd2hhdCB0aGUgYmFja3BvcnQgdG8gc3RhYmxlLTUuMyB3aWxsIGxvb2sgbGlrZSBh
bnl3YXkgYXMgdGhlcmUncyBubwpzdWJtaXNzaW9uX3N1cHBvcnRlZCB0aGVyZS4gVGhlIG5hbWUg
IlVTRVNfR1VDX1NVQk1JU1NJT04iIGRvZXMgc3VnZ2VzdCBpdAptaWdodCByZWZsZWN0IGFjdHVh
bCBydW50aW1lIHN0YXR1cy4uLiA6LSkKCi0tIApUb23DocWhIEphbm91xaFlaywgYS5rLmEuIFBp
dm7DrWssIGEuay5hLiBMaXNrbmlfc2ksIGh0dHA6Ly93b3JrLmxpc2suaW4vCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
