Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E223A2332
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 06:19:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D8566E479;
	Thu, 10 Jun 2021 04:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AAF76E453;
 Thu, 10 Jun 2021 04:19:01 +0000 (UTC)
IronPort-SDR: RkkwezSFFyH6nWGwo1mVa/2TYccTp2GQjbqXImaCOSLfPRi+Hpya4dyg8rb9AyxhFRxLucBJt5
 X203MMBF/UpQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="203373010"
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="203373010"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 21:19:00 -0700
IronPort-SDR: xbXsEk5RuWTe8pIvsNKnvA1SEWswG3XB6RhW70SLrVtIZTg6CGlLFdVSioFUic3QTgqF4oNyV+
 nbboVd0ULusw==
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="485997262"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 21:19:00 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Wed,  9 Jun 2021 21:36:41 -0700
Message-Id: <20210610043649.144416-6-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210610043649.144416-1-matthew.brost@intel.com>
References: <20210610043649.144416-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/13] drm/i915/guc: Add flag for mark broken CTB
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

RnJvbTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CgpPbmNl
IENUQiBkZXNjcmlwdG9yIGlzIGZvdW5kIGluIGVycm9yIHN0YXRlLCBlaXRoZXIgc2V0IGJ5IEd1
QwpvciB1cywgdGhlcmUgaXMgbm8gbmVlZCBjb250aW51ZSBjaGVja2luZyBkZXNjcmlwdG9yIGFu
eSBtb3JlLAp3ZSBjYW4gcmVseSBvbiBvdXIgaW50ZXJuYWwgZmxhZy4KClNpZ25lZC1vZmYtYnk6
IE1hdHRoZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBN
aWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IFBpb3RyIFBp
w7Nya293c2tpIDxwaW90ci5waW9ya293c2tpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY3QuYyB8IDEzICsrKysrKysrKysrLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jdC5oIHwgIDIgKysKIDIgZmlsZXMgY2hhbmdl
ZCwgMTMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2d1Y19jdC5jCmluZGV4IDNmN2Y0ODYxMTQ4Ny4uNjMwNTZlYTA2MzFlIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY3QuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY3QuYwpAQCAtMTIzLDYgKzEy
Myw3IEBAIHN0YXRpYyB2b2lkIGd1Y19jdF9idWZmZXJfZGVzY19pbml0KHN0cnVjdCBndWNfY3Rf
YnVmZmVyX2Rlc2MgKmRlc2MsCiAKIHN0YXRpYyB2b2lkIGd1Y19jdF9idWZmZXJfcmVzZXQoc3Ry
dWN0IGludGVsX2d1Y19jdF9idWZmZXIgKmN0YiwgdTMyIGNtZHNfYWRkcikKIHsKKwljdGItPmJy
b2tlbiA9IGZhbHNlOwogCWd1Y19jdF9idWZmZXJfZGVzY19pbml0KGN0Yi0+ZGVzYywgY21kc19h
ZGRyLCBjdGItPnNpemUpOwogfQogCkBAIC0zODcsOSArMzg4LDEyIEBAIHN0YXRpYyBpbnQgY3Rf
d3JpdGUoc3RydWN0IGludGVsX2d1Y19jdCAqY3QsCiAJdTMyICpjbWRzID0gY3RiLT5jbWRzOwog
CXVuc2lnbmVkIGludCBpOwogCi0JaWYgKHVubGlrZWx5KGRlc2MtPmlzX2luX2Vycm9yKSkKKwlp
ZiAodW5saWtlbHkoY3RiLT5icm9rZW4pKQogCQlyZXR1cm4gLUVQSVBFOwogCisJaWYgKHVubGlr
ZWx5KGRlc2MtPmlzX2luX2Vycm9yKSkKKwkJZ290byBjb3JydXB0ZWQ7CisKIAlpZiAodW5saWtl
bHkoIUlTX0FMSUdORUQoaGVhZCB8IHRhaWwsIDQpIHx8CiAJCSAgICAgKHRhaWwgfCBoZWFkKSA+
PSBzaXplKSkKIAkJZ290byBjb3JydXB0ZWQ7CkBAIC00NTEsNiArNDU1LDcgQEAgc3RhdGljIGlu
dCBjdF93cml0ZShzdHJ1Y3QgaW50ZWxfZ3VjX2N0ICpjdCwKIAlDVF9FUlJPUihjdCwgIkNvcnJ1
cHRlZCBkZXNjcmlwdG9yIGFkZHI9JSN4IGhlYWQ9JXUgdGFpbD0ldSBzaXplPSV1XG4iLAogCQkg
ZGVzYy0+YWRkciwgZGVzYy0+aGVhZCwgZGVzYy0+dGFpbCwgZGVzYy0+c2l6ZSk7CiAJZGVzYy0+
aXNfaW5fZXJyb3IgPSAxOworCWN0Yi0+YnJva2VuID0gdHJ1ZTsKIAlyZXR1cm4gLUVQSVBFOwog
fQogCkBAIC02MzIsOSArNjM3LDEyIEBAIHN0YXRpYyBpbnQgY3RfcmVhZChzdHJ1Y3QgaW50ZWxf
Z3VjX2N0ICpjdCwgc3RydWN0IGN0X2luY29taW5nX21zZyAqKm1zZykKIAl1bnNpZ25lZCBpbnQg
aTsKIAl1MzIgaGVhZGVyOwogCi0JaWYgKHVubGlrZWx5KGRlc2MtPmlzX2luX2Vycm9yKSkKKwlp
ZiAodW5saWtlbHkoY3RiLT5icm9rZW4pKQogCQlyZXR1cm4gLUVQSVBFOwogCisJaWYgKHVubGlr
ZWx5KGRlc2MtPmlzX2luX2Vycm9yKSkKKwkJZ290byBjb3JydXB0ZWQ7CisKIAlpZiAodW5saWtl
bHkoIUlTX0FMSUdORUQoaGVhZCB8IHRhaWwsIDQpIHx8CiAJCSAgICAgKHRhaWwgfCBoZWFkKSA+
PSBzaXplKSkKIAkJZ290byBjb3JydXB0ZWQ7CkBAIC02OTgsNiArNzA2LDcgQEAgc3RhdGljIGlu
dCBjdF9yZWFkKHN0cnVjdCBpbnRlbF9ndWNfY3QgKmN0LCBzdHJ1Y3QgY3RfaW5jb21pbmdfbXNn
ICoqbXNnKQogCUNUX0VSUk9SKGN0LCAiQ29ycnVwdGVkIGRlc2NyaXB0b3IgYWRkcj0lI3ggaGVh
ZD0ldSB0YWlsPSV1IHNpemU9JXVcbiIsCiAJCSBkZXNjLT5hZGRyLCBkZXNjLT5oZWFkLCBkZXNj
LT50YWlsLCBkZXNjLT5zaXplKTsKIAlkZXNjLT5pc19pbl9lcnJvciA9IDE7CisJY3RiLT5icm9r
ZW4gPSB0cnVlOwogCXJldHVybiAtRVBJUEU7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jdC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfZ3VjX2N0LmgKaW5kZXggY2IyMjJmMjAyMzAxLi43ZDNjZDM3NWQ2YTcgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jdC5oCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jdC5oCkBAIC0zMiwxMiArMzIsMTQg
QEAgc3RydWN0IGludGVsX2d1YzsKICAqIEBkZXNjOiBwb2ludGVyIHRvIHRoZSBidWZmZXIgZGVz
Y3JpcHRvcgogICogQGNtZHM6IHBvaW50ZXIgdG8gdGhlIGNvbW1hbmRzIGJ1ZmZlcgogICogQHNp
emU6IHNpemUgb2YgdGhlIGNvbW1hbmRzIGJ1ZmZlcgorICogQGJyb2tlbjogZmxhZyB0byBpbmRp
Y2F0ZSBpZiBkZXNjcmlwdG9yIGRhdGEgaXMgYnJva2VuCiAgKi8KIHN0cnVjdCBpbnRlbF9ndWNf
Y3RfYnVmZmVyIHsKIAlzcGlubG9ja190IGxvY2s7CiAJc3RydWN0IGd1Y19jdF9idWZmZXJfZGVz
YyAqZGVzYzsKIAl1MzIgKmNtZHM7CiAJdTMyIHNpemU7CisJYm9vbCBicm9rZW47CiB9OwogCiAK
LS0gCjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
