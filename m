Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2542315949D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 17:15:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D7696EEA2;
	Tue, 11 Feb 2020 16:15:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99F0A6EEA3
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 16:15:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 08:14:57 -0800
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="226551609"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 08:14:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Feb 2020 18:14:50 +0200
Message-Id: <20200211161451.6867-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: move intel_csr.[ch] under
 display/
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIERNQyBmaXJtd2FyZSBpcyBhYm91dCBkaXNwbGF5LiBNb3ZlIHRoZSBoYW5kbGluZyB1bmRl
ciBkaXNwbGF5LiBObwpmdW5jdGlvbmFsIGNoYW5nZXMuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmls
ZSAgICAgICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUveyA9PiBkaXNw
bGF5fS9pbnRlbF9jc3IuYyB8IDAKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3sgPT4gZGlzcGxheX0v
aW50ZWxfY3NyLmggfCAwCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAg
ICAgICAgIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAg
ICAgICB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgICAgICAg
ICAgfCAyICstCiA2IGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkKIHJlbmFtZSBkcml2ZXJzL2dwdS9kcm0vaTkxNS97ID0+IGRpc3BsYXl9L2ludGVsX2Nzci5j
ICgxMDAlKQogcmVuYW1lIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3sgPT4gZGlzcGxheX0vaW50ZWxf
Y3NyLmggKDEwMCUpCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQppbmRleCA0OWVlZDUwZWYwYTQuLmEyZmFi
M2M0MzU2MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKQEAgLTQ2LDcgKzQ2LDYgQEAgaTkxNS15ICs9
IGk5MTVfZHJ2Lm8gXAogCSAgaTkxNV9zd2l0Y2hlcm9vLm8gXAogCSAgaTkxNV9zeXNmcy5vIFwK
IAkgIGk5MTVfdXRpbHMubyBcCi0JICBpbnRlbF9jc3IubyBcCiAJICBpbnRlbF9kZXZpY2VfaW5m
by5vIFwKIAkgIGludGVsX21lbW9yeV9yZWdpb24ubyBcCiAJICBpbnRlbF9wY2gubyBcCkBAIC0x
ODMsNiArMTgyLDcgQEAgaTkxNS15ICs9IFwKIAlkaXNwbGF5L2ludGVsX2NvbG9yLm8gXAogCWRp
c3BsYXkvaW50ZWxfY29tYm9fcGh5Lm8gXAogCWRpc3BsYXkvaW50ZWxfY29ubmVjdG9yLm8gXAor
CWRpc3BsYXkvaW50ZWxfY3NyLm8gXAogCWRpc3BsYXkvaW50ZWxfZGlzcGxheS5vIFwKIAlkaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIubyBcCiAJZGlzcGxheS9pbnRlbF9kcGlvX3BoeS5vIFwK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jc3IuYwpzaW1pbGFyaXR5IGluZGV4IDEwMCUKcmVu
YW1lIGZyb20gZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMKcmVuYW1lIHRvIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3NyLmMKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Nzci5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jc3IuaApzaW1pbGFyaXR5IGluZGV4IDEwMCUKcmVuYW1lIGZyb20gZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfY3NyLmgKcmVuYW1lIHRvIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3NyLmgKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVi
dWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXggM2NhZTE4
ZDFkMjBjLi44M2RhZTRkOGFjMGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCkBA
IC0zMiw2ICszMiw3IEBACiAjaW5jbHVkZSA8ZHJtL2RybV9kZWJ1Z2ZzLmg+CiAjaW5jbHVkZSA8
ZHJtL2RybV9mb3VyY2MuaD4KIAorI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfY3NyLmgiCiAjaW5j
bHVkZSAiZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgiCiAjaW5jbHVkZSAiZGlzcGxheS9p
bnRlbF9kcC5oIgogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZmJjLmgiCkBAIC01MSw3ICs1Miw2
IEBACiAjaW5jbHVkZSAiaTkxNV9kZWJ1Z2ZzX3BhcmFtcy5oIgogI2luY2x1ZGUgImk5MTVfaXJx
LmgiCiAjaW5jbHVkZSAiaTkxNV90cmFjZS5oIgotI2luY2x1ZGUgImludGVsX2Nzci5oIgogI2lu
Y2x1ZGUgImludGVsX3BtLmgiCiAjaW5jbHVkZSAiaW50ZWxfc2lkZWJhbmQuaCIKIApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMKaW5kZXggNTE2NTM2MjM0ZTk3Li40ZTQzYTY3MWYyYzAgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuYwpAQCAtNTAsNiArNTAsNyBAQAogI2luY2x1ZGUgImRpc3BsYXkvaW50
ZWxfYXVkaW8uaCIKICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2J3LmgiCiAjaW5jbHVkZSAiZGlz
cGxheS9pbnRlbF9jZGNsay5oIgorI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfY3NyLmgiCiAjaW5j
bHVkZSAiZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgiCiAjaW5jbHVkZSAiZGlzcGxheS9p
bnRlbF9kcC5oIgogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZmJkZXYuaCIKQEAgLTc3LDcgKzc4
LDYgQEAKICNpbmNsdWRlICJpOTE1X3N5c2ZzLmgiCiAjaW5jbHVkZSAiaTkxNV90cmFjZS5oIgog
I2luY2x1ZGUgImk5MTVfdmdwdS5oIgotI2luY2x1ZGUgImludGVsX2Nzci5oIgogI2luY2x1ZGUg
ImludGVsX21lbW9yeV9yZWdpb24uaCIKICNpbmNsdWRlICJpbnRlbF9wbS5oIgogCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwppbmRleCA1YTE1MTdkMGJmM2IuLmIyZWQ5NzdlZDk3
MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jCkBAIC0zNyw2ICszNyw3IEBA
CiAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPgogCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9h
dG9taWMuaCIKKyNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2Nzci5oIgogI2luY2x1ZGUgImRpc3Bs
YXkvaW50ZWxfb3ZlcmxheS5oIgogCiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaCIK
QEAgLTQ3LDcgKzQ4LDYgQEAKICNpbmNsdWRlICJpOTE1X2dwdV9lcnJvci5oIgogI2luY2x1ZGUg
Imk5MTVfbWVtY3B5LmgiCiAjaW5jbHVkZSAiaTkxNV9zY2F0dGVybGlzdC5oIgotI2luY2x1ZGUg
ImludGVsX2Nzci5oIgogCiAjZGVmaW5lIEFMTE9XX0ZBSUwgKEdGUF9LRVJORUwgfCBfX0dGUF9S
RVRSWV9NQVlGQUlMIHwgX19HRlBfTk9XQVJOKQogI2RlZmluZSBBVE9NSUNfTUFZRkFJTCAoR0ZQ
X0FUT01JQyB8IF9fR0ZQX05PV0FSTikKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
