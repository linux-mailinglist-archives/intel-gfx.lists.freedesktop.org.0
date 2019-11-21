Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 610C7104784
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 01:27:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE8D76EAA4;
	Thu, 21 Nov 2019 00:27:25 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E914A6EAA4
 for <Intel-GFX@lists.freedesktop.org>; Thu, 21 Nov 2019 00:27:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 16:27:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,223,1571727600"; d="scan'208";a="204904310"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga008.fm.intel.com with ESMTP; 20 Nov 2019 16:27:23 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 20 Nov 2019 16:27:23 -0800
Message-Id: <20191121002723.33133-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH] drm/i915/uc: Extra info notice about FW version
 mis-match vs overrides
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

RnJvbTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KCklmIGEgRlcg
b3ZlcnJpZGUgaXMgcHJlc2VudCB0aGVuIGEgdmVyc2lvbiBtaXMtbWF0Y2ggaXMgYWN0dWFsbHkK
aWdub3JlZC4gVGhlIHdhcm5pbmcgbWVzc2FnZSB3YXMgc3RpbGwgYmVpbmcgcHJpbnRlZCwgdGhv
dWdoLiBXaGljaApjb3VsZCBjb25mdXNlIHBlb3BsZSBieSBpbXBseWluZyB0aGF0IHRoZSBsb2Fk
IGhhZCBmYWlsZWQgZHVlIHRvIHRoZQptaXMtbWF0Y2ggd2hlbiBhY3R1YWxseSBzb21ldGhpbmcg
ZWxzZSBoYWQgZmFpbGVkLgoKVGhpcyBwYXRjaCBhZGRzIGFuIGV4dHJhIG1lc3NhZ2UgdG8gc2F5
IHRoYXQgdGhlIG1pcy1tYXRjaCBpcyBiZWluZwppZ25vcmVkIGlmIGFuIG92ZXJyaWRlIGlzIHBy
ZXNlbnQuCgpTaWduZWQtb2ZmLWJ5OiBKb2huIEhhcnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgfCAz
ICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF91Y19mdy5jCmluZGV4IDY2YTMwYWI3MDQ0YS4uYzFhZTgwN2IwN2FlIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKQEAgLTM2MSw2ICszNjEs
OSBAQCBpbnQgaW50ZWxfdWNfZndfZmV0Y2goc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdywgc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCQllcnIgPSAtRU5PRVhFQzsKIAkJCWdvdG8g
ZmFpbDsKIAkJfQorCisJCWRldl9ub3RpY2UoZGV2LCAiJXMgZmlybXdhcmUgJXM6IEZpcm13YXJl
IG92ZXJyaWRlIHNvIGlnbm9yaW5nIHZlcnNpb24gbWlzLW1hdGNoXG4iLAorCQkJICAgaW50ZWxf
dWNfZndfdHlwZV9yZXByKHVjX2Z3LT50eXBlKSwgdWNfZnctPnBhdGgpOwogCX0KIAogCW9iaiA9
IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW1fZnJvbV9kYXRhKGk5MTUsIGZ3LT5kYXRhLCBm
dy0+c2l6ZSk7Ci0tIAoyLjIxLjAuNS5nYWViNTgyYTk4MwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
