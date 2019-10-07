Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D08CE7C8
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 17:39:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 746396E075;
	Mon,  7 Oct 2019 15:39:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EE68989216;
 Mon,  7 Oct 2019 15:39:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E7D4EA0096;
 Mon,  7 Oct 2019 15:39:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 07 Oct 2019 15:39:12 -0000
Message-ID: <20191007153912.14085.54886@emeril.freedesktop.org>
References: <cover.1570460714.git.jani.nikula@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <cover.1570460714.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_modeset_probe/remove_cleanup?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IG1vZGVzZXQgcHJvYmUvcmVt
b3ZlIGNsZWFudXAKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2Vy
aWVzLzY3NjkxLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0
Y2ggb3JpZ2luL2RybS10aXAKNGY0ODVhY2U3ZjQ2IGRybS9pOTE1OiByZWdpc3RlciB2Z2Egc3dp
dGNoZXJvbyBsYXRlciwgdW5yZWdpc3RlciBlYXJsaWVyCjRjZWE2M2QyNGI1YyBkcm0vaTkxNTog
c3dpdGNoIGk5MTVfZHJpdmVyX3Byb2JlKCkgdG8gdXNlIGk5MTUgbG9jYWwgdmFyaWFibGUKMmE3
M2JiMjdmYmM0IGRybS9pOTE1OiBrZWVwIHBvd2VyIGRvbWFpbnMgaW5pdC9yZW1vdmUgY2FsbHMg
YXQgdGhlIHNhbWUgbGV2ZWwKMjQ3MzYwYmFhMDdlIGRybS9pOTE1OiBzcGxpdCBpbnRlbF9tb2Rl
c2V0X2RyaXZlcl9yZW1vdmUoKSB0byBwcmUvcG9zdCBpcnEgdW5pbnN0YWxsCjUwMzJkNjhjNjU2
ZCBkcm0vaTkxNTogc3BsaXQgaTkxNV9kcml2ZXJfbW9kZXNldF9yZW1vdmUoKSB0byBwcmUvcG9z
dCBpcnEgdW5pbnN0YWxsCmU4M2QwODVjZWQ5YSBkcm0vaTkxNTogc3BsaXQgaTkxNV9kcml2ZXJf
bW9kZXNldF9wcm9iZSgpIHRvIHByZS9wb3N0IGlycSBpbnN0YWxsCjZkNjY2NDYzMzA5MCBkcm0v
aTkxNTogc3BsaXQgaW50ZWxfbW9kZXNldF9pbml0KCkgdG8gcHJlL3Bvc3QgaXJxIGluc3RhbGwK
NjljODlhNmJiNDBkIGRybS9pOTE1OiBzcGxpdCBpbnRlbF9tb2Rlc2V0X2luaXQoKSBwcmUvcG9z
dCBnZW0gaW5pdAo1MjhmYjJhNGIwMDEgZHJtL2k5MTU6IG1vdmUgbW9yZSBkaXNwbGF5IHJlbGF0
ZWQgcHJvYmUvcmVtb3ZlIHN0dWZmIHRvIGRpc3BsYXkKNDk5NTA5NzE2YzU5IGRybS9pOTE1OiBt
b3ZlIG1vZGVzZXQgcHJvYmUgZmFpbHVyZXMgZG93biB0byBpbnRlbF9kaXNwbGF5LmMKNWQ1M2U1
NjUyMWU4IGRybS9pOTE1OiByZW1vdmUgdGhlIG5vdyByZWR1bmRhbnQgaTkxNV9kcml2ZXJfbW9k
ZXNldF8qIGNhbGwgbGF5ZXIKLTo5MTogV0FSTklORzpCTE9DS19DT01NRU5UX1NUWUxFOiBCbG9j
ayBjb21tZW50cyB1c2UgYSB0cmFpbGluZyAqLyBvbiBhIHNlcGFyYXRlIGxpbmUKIzkxOiBGSUxF
OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jOjE0MjY6CisJICogd29ya2luZyBpcnFz
IGZvciBlLmcuIGdtYnVzIGFuZCBkcCBhdXggdHJhbnNmZXJzLiAqLwoKdG90YWw6IDAgZXJyb3Jz
LCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMTExIGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
