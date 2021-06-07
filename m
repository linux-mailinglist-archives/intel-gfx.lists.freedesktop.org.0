Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAAE39E698
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 20:24:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C8E96E9C2;
	Mon,  7 Jun 2021 18:24:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A51AD6E9BF;
 Mon,  7 Jun 2021 18:24:09 +0000 (UTC)
IronPort-SDR: c+zi5GOH92YaLq551nQmONfnIMdJr/d7f8sgyfo3c3sK17T25nQ8n8lUS+1vbqL6xvevr/BefK
 x8ZWi0mBxHPg==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="185051967"
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="185051967"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 11:24:09 -0700
IronPort-SDR: k3L5fanQQbQhncu9SFU5ZrluGGMuj1NZcLBHbNTCV+vW2ocAGI7KXGiQ0oqi0ae5ycJ+ITOCzR
 4OP1FmHq0fFw==
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="476295065"
Received: from iwilsonx-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.28.48])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 11:24:08 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Jun 2021 19:22:10 +0100
Message-Id: <20210607182210.99036-7-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210607182210.99036-1-matthew.auld@intel.com>
References: <20210607182210.99036-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/ttm: restore min_page_size
 behaviour
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2Ugbm93IGhhdmUgYm8tPnBhZ2VfYWxpZ25tZW50IHdoaWNoIHBlcmZlY3RseSBkZXNjcmliZXMg
d2hhdCB3ZSBuZWVkIGlmCndlIGhhdmUgbWluIHBhZ2Ugc2l6ZSByZXN0cmljdGlvbnMgZm9yIGxt
ZW0uIFdlIGNhbiBhbHNvIGRyb3AgdGhlIGZsYWcKaGVyZSwgc2luY2UgdGhpcyBpcyB0aGUgZGVm
YXVsdCBiZWhhdmlvdXIgZm9yIGFsbCBvYmplY3RzLgoKU2lnbmVkLW9mZi1ieTogTWF0dGhldyBB
dWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21h
cy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV90dG0uYyAgICAgIHwgMyArLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X21lbW9yeV9yZWdpb24uaCAgIHwgMyArLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Jl
Z2lvbl90dG0uYyAgICAgIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21v
Y2tfcmVnaW9uLmMgfCAyICstCiA0IGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fdHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKaW5kZXgg
M2Y1NjI0ZjM2YWZjLi5lZGE2YzI1OGVhOTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV90dG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fdHRtLmMKQEAgLTY4NCw5ICs2ODQsOCBAQCBpbnQgX19pOTE1X2dlbV90dG1fb2JqZWN0
X2luaXQoc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKIAkgKi8KIAlvYmotPmJhc2Uu
dm1hX25vZGUuZHJpdmVyX3ByaXZhdGUgPSBpOTE1X2dlbV90b190dG0ob2JqKTsKIAlyZXQgPSB0
dG1fYm9faW5pdCgmaTkxNS0+YmRldiwgaTkxNV9nZW1fdG9fdHRtKG9iaiksIHNpemUsCi0JCQkg
IGJvX3R5cGUsICZpOTE1X3N5c19wbGFjZW1lbnQsIFBBR0VfU0laRSwKKwkJCSAgYm9fdHlwZSwg
Jmk5MTVfc3lzX3BsYWNlbWVudCwgbWVtLT5taW5fcGFnZV9zaXplLAogCQkJICB0cnVlLCBOVUxM
LCBOVUxMLCBpOTE1X3R0bV9ib19kZXN0cm95KTsKLQogCWlmICghcmV0KQogCQlvYmotPnR0bS5j
cmVhdGVkID0gdHJ1ZTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
bWVtb3J5X3JlZ2lvbi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lv
bi5oCmluZGV4IGIwNGZiMjI3MjZkOS4uMmJlODQzM2QzNzNhIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5oCkBAIC00MCw4ICs0MCw3IEBAIGVudW0gaW50ZWxf
cmVnaW9uX2lkIHsKICNkZWZpbmUgUkVHSU9OX1NUT0xFTl9TTUVNICAgQklUKElOVEVMX1JFR0lP
Tl9TVE9MRU5fU01FTSkKICNkZWZpbmUgUkVHSU9OX1NUT0xFTl9MTUVNICAgQklUKElOVEVMX1JF
R0lPTl9TVE9MRU5fTE1FTSkKIAotI2RlZmluZSBJOTE1X0FMTE9DX01JTl9QQUdFX1NJWkUgIEJJ
VCgwKQotI2RlZmluZSBJOTE1X0FMTE9DX0NPTlRJR1VPVVMgICAgIEJJVCgxKQorI2RlZmluZSBJ
OTE1X0FMTE9DX0NPTlRJR1VPVVMgICAgIEJJVCgwKQogCiAjZGVmaW5lIGZvcl9lYWNoX21lbW9y
eV9yZWdpb24obXIsIGk5MTUsIGlkKSBcCiAJZm9yIChpZCA9IDA7IGlkIDwgQVJSQVlfU0laRSgo
aTkxNSktPm1tLnJlZ2lvbnMpOyBpZCsrKSBcCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9yZWdpb25fdHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdp
b25fdHRtLmMKaW5kZXggMjNhZjk5NWY3YjY3Li41OWZhNzgyMjU4NTIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl90dG0uYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9yZWdpb25fdHRtLmMKQEAgLTE1Myw3ICsxNTMsNyBAQCBpbnRlbF9yZWdp
b25fdHRtX25vZGVfYWxsb2Moc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKIAlpbnQg
cmV0OwogCiAJbW9ja19iby5iYXNlLnNpemUgPSBzaXplOwotCW1vY2tfYm8ucGFnZV9hbGlnbm1l
bnQgPSBQQUdFX1NJWkU7CisJbW9ja19iby5wYWdlX2FsaWdubWVudCA9IG1lbS0+bWluX3BhZ2Vf
c2l6ZTsKIAlwbGFjZS5mbGFncyA9IGZsYWdzOwogCiAJcmV0ID0gbWFuLT5mdW5jLT5hbGxvYyht
YW4sICZtb2NrX2JvLCAmcGxhY2UsICZyZXMpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvc2VsZnRlc3RzL21vY2tfcmVnaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxm
dGVzdHMvbW9ja19yZWdpb24uYwppbmRleCBkM2U0ZTY1NzNjYjkuLjZjZTBmOWRhY2FkNyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfcmVnaW9uLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfcmVnaW9uLmMKQEAgLTI4LDcg
KzI4LDcgQEAgc3RhdGljIGludCBtb2NrX3JlZ2lvbl9nZXRfcGFnZXMoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaikKIAlzdHJ1Y3Qgc2dfdGFibGUgKnBhZ2VzOwogCWludCBlcnI7CiAK
LQlmbGFncyA9IEk5MTVfQUxMT0NfTUlOX1BBR0VfU0laRTsKKwlmbGFncyA9IDA7CiAJaWYgKG9i
ai0+ZmxhZ3MgJiBJOTE1X0JPX0FMTE9DX0NPTlRJR1VPVVMpCiAJCWZsYWdzIHw9IFRUTV9QTF9G
TEFHX0NPTlRJR1VPVVM7CiAKLS0gCjIuMjYuMwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
