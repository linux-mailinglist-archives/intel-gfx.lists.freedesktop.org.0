Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5DD304F5B
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 04:06:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58EA46E4E8;
	Wed, 27 Jan 2021 03:06:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4BB76E4E6
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 03:06:12 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-487-AoC3UJaKO_eFGmKE-RuykQ-1; Tue, 26 Jan 2021 22:06:07 -0500
X-MC-Unique: AoC3UJaKO_eFGmKE-RuykQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 027E4107ACE4;
 Wed, 27 Jan 2021 03:06:06 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.32.209])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 29E1660C05;
 Wed, 27 Jan 2021 03:06:02 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 13:05:44 +1000
Message-Id: <20210127030548.29296-7-airlied@gmail.com>
In-Reply-To: <20210127030548.29296-1-airlied@gmail.com>
References: <20210127030548.29296-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Subject: [Intel-gfx] [PATCH 06/10] drm/i915: move is_ccs_modifier to an
 inline
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
Cc: Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KClRoZXJlIGlzIG5vIG5lZWQg
Zm9yIHRoaXMgdG8gYmUgb3V0IG9mIGxpbmUuCgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogRGF2ZSBBaXJs
aWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyAgICAgICB8IDkgLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCAgICAgICB8IDEgLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCA5ICsrKysrKysrKwogMyBmaWxlcyBj
aGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggYjczOGM4ZDU4ZmY0Li45YzJm
ZWUwMTc4ZjggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCkBAIC0xODIxLDE1ICsxODIxLDYgQEAgaW50ZWxfZ2V0X2Zvcm1hdF9pbmZvKGNvbnN0IHN0
cnVjdCBkcm1fbW9kZV9mYl9jbWQyICpjbWQpCiAJfQogfQogCi1ib29sIGlzX2Njc19tb2RpZmll
cih1NjQgbW9kaWZpZXIpCi17Ci0JcmV0dXJuIG1vZGlmaWVyID09IEk5MTVfRk9STUFUX01PRF9Z
X1RJTEVEX0dFTjEyX1JDX0NDUyB8fAotCSAgICAgICBtb2RpZmllciA9PSBJOTE1X0ZPUk1BVF9N
T0RfWV9USUxFRF9HRU4xMl9SQ19DQ1NfQ0MgfHwKLQkgICAgICAgbW9kaWZpZXIgPT0gSTkxNV9G
T1JNQVRfTU9EX1lfVElMRURfR0VOMTJfTUNfQ0NTIHx8Ci0JICAgICAgIG1vZGlmaWVyID09IEk5
MTVfRk9STUFUX01PRF9ZX1RJTEVEX0NDUyB8fAotCSAgICAgICBtb2RpZmllciA9PSBJOTE1X0ZP
Uk1BVF9NT0RfWWZfVElMRURfQ0NTOwotfQotCiBzdGF0aWMgaW50IGdlbjEyX2Njc19hdXhfc3Ry
aWRlKHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLCBpbnQgY2NzX3BsYW5lKQogewogCXJldHVy
biBESVZfUk9VTkRfVVAoZmItPnBpdGNoZXNbc2tsX2Njc190b19tYWluX3BsYW5lKGZiLCBjY3Nf
cGxhbmUpXSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgK
aW5kZXggMjUxMzk4MTI4MzQ5Li5jMTc2YzMxYzNlYzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCkBAIC01MDgsNyArNTA4LDYgQEAgdm9pZCBpbnRl
bF9saW5rX2NvbXB1dGVfbV9uKHUxNiBicHAsIGludCBubGFuZXMsCiAJCQkgICAgaW50IHBpeGVs
X2Nsb2NrLCBpbnQgbGlua19jbG9jaywKIAkJCSAgICBzdHJ1Y3QgaW50ZWxfbGlua19tX24gKm1f
biwKIAkJCSAgICBib29sIGNvbnN0YW50X24sIGJvb2wgZmVjX2VuYWJsZSk7Ci1ib29sIGlzX2Nj
c19tb2RpZmllcih1NjQgbW9kaWZpZXIpOwogdm9pZCBscHRfZGlzYWJsZV9jbGtvdXRfZHAoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIHUzMiBpbnRlbF9wbGFuZV9mYl9tYXhf
c3RyaWRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCSAgICAgIHUzMiBw
aXhlbF9mb3JtYXQsIHU2NCBtb2RpZmllcik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IDIzYTc0NDk2YzE3Mi4uOTIyMmU0
ZjkzNDhmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaApAQCAtMTg5NSw2ICsxODk1LDE1IEBAIHN0YXRpYyBpbmxpbmUgdTMyIGlu
dGVsX2ZkaV9saW5rX2ZyZXEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQly
ZXR1cm4gZGV2X3ByaXYtPmZkaV9wbGxfZnJlcTsKIH0KIAorc3RhdGljIGlubGluZSBib29sIGlz
X2Njc19tb2RpZmllcih1NjQgbW9kaWZpZXIpCit7CisJcmV0dXJuIG1vZGlmaWVyID09IEk5MTVf
Rk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDUyB8fAorCSAgICAgICBtb2RpZmllciA9PSBJ
OTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1NfQ0MgfHwKKwkgICAgICAgbW9kaWZp
ZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfTUNfQ0NTIHx8CisJICAgICAgIG1v
ZGlmaWVyID09IEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0NDUyB8fAorCSAgICAgICBtb2RpZmll
ciA9PSBJOTE1X0ZPUk1BVF9NT0RfWWZfVElMRURfQ0NTOworfQorCiBzdGF0aWMgaW5saW5lIGJv
b2wgaXNfY2NzX3BsYW5lKGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLCBpbnQgcGxh
bmUpCiB7CiAJaWYgKCFpc19jY3NfbW9kaWZpZXIoZmItPm1vZGlmaWVyKSkKLS0gCjIuMjcuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
