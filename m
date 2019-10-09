Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 757FFD1C5E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 01:04:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5CE46EA67;
	Wed,  9 Oct 2019 23:04:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1E7B6EA67
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 23:04:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 16:04:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="200284104"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Oct 2019 16:04:33 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Oct 2019 16:04:23 -0700
Message-Id: <20191009230424.6507-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: the BCS engine supports
 relative MMIO
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

VGhlIHNwZWNzIGRvbid0IG1lbnRpb24gYW55IHNwZWNpZmljIEhXIGxpbWl0YXRpb24gb24gdGhl
IGJsaXR0ZXIgYW5kCm1hbnVhbCBpbnNwZWN0aW9uIHNob3dzIHRoYXQgdGhlIEhXIGRvZXMgc2V0
IHRoZSByZWxhdGl2ZSBNTUlPIGJpdCBpbgp0aGUgTFJJIG9mIHRoZSBibGl0dGVyIGNvbnRleHQg
aW1hZ2UsIHNvIHdlIGNhbiByZW1vdmUgb3VyIGxpbWl0YXRpb25zLgoKU2lnbmVkLW9mZi1ieTog
RGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4K
Q2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogSm9obiBIYXJy
aXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eu
a3VvcHBhbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCA2ZGI3NjJjNTA5Yjgu
Ljc4YTEzNmMxMjM4NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTM0NDgs
NyArMzQ0OCw3IEBAIHZvaWQgaW50ZWxfZXhlY2xpc3RzX3NldF9kZWZhdWx0X3N1Ym1pc3Npb24o
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCQkJZW5naW5lLT5mbGFncyB8PSBJOTE1
X0VOR0lORV9IQVNfUFJFRU1QVElPTjsKIAl9CiAKLQlpZiAoZW5naW5lLT5jbGFzcyAhPSBDT1BZ
X0VOR0lORV9DTEFTUyAmJiBJTlRFTF9HRU4oZW5naW5lLT5pOTE1KSA+PSAxMikKKwlpZiAoSU5U
RUxfR0VOKGVuZ2luZS0+aTkxNSkgPj0gMTIpCiAJCWVuZ2luZS0+ZmxhZ3MgfD0gSTkxNV9FTkdJ
TkVfSEFTX1JFTEFUSVZFX01NSU87CiB9CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
