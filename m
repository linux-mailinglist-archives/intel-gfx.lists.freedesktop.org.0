Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F56A10B308
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 17:14:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2852D6E31E;
	Wed, 27 Nov 2019 16:14:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F10A56E31E;
 Wed, 27 Nov 2019 16:14:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E553BA00E8;
 Wed, 27 Nov 2019 16:14:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 27 Nov 2019 16:14:48 -0000
Message-ID: <157487128891.9109.8917671870669346716@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191126170911.23253-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191126170911.23253-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915/fbc=3A_Fix_FBC_for_glk+_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZmJjOiBGaXggRkJDIGZvciBn
bGsrIChyZXYzKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvNzAwNjIvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQXBwbHlpbmc6IGRybS9p
OTE1L2ZiYzogRGlzYWJsZSBmYmMgYnkgZGVmYXVsdCBvbiBhbGwgZ2xrKwpBcHBseWluZzogZHJt
L2k5MTUvZmJjOiBOdWtlIGJvZ3VzIHNpbmdsZSBwaXBlIGZiYzEgcmVzdHJpY3Rpb24KQXBwbHlp
bmc6IGRybS9pOTE1OiBSZWxvY2F0ZSBpbnRlbF9jcnRjX2FjdGl2ZSgpCkFwcGx5aW5nOiBkcm0v
aTkxNS9mYmM6IFJlbW92ZSB0aGUgRkJDX1JUX0JBU0Ugc2V0dXAgZm9yIElMSy9TTkIKQXBwbHlp
bmc6IGRybS9pOTE1L2ZiYzogUHJlY29tcHV0ZSBnZW45IGNmYiBzdHJpZGUgdy9hCkFwcGx5aW5n
OiBkcm0vaTkxNS9mYmM6IFRyYWNrIHBsYW5lIHZpc2liaWxpdHkKQXBwbHlpbmc6IGRybS9pOTE1
L2ZiYzogU3RvcmUgZmVuY2VfaWQgZGlyZWN0aW9uIGluIGZiYyBjYWNoZS9wYXJhbXMKQXBwbHlp
bmc6IGRybS9pOTE1L2ZiYzogTWFrZSBmZW5jZV9pZCBvcHRpb25hbCBmb3IgaTk2NWdtCkFwcGx5
aW5nOiBkcm0vaTkxNS9mYmM6IHMvZ2VuOSAmJiAhZ2xrL2dlbjlfYmMgfHwgYnh0LwpBcHBseWlu
ZzogZHJtL2k5MTUvZmJjOiBOdWtlIGZiYy5lbmFibGVkCmVycm9yOiBzaGExIGluZm9ybWF0aW9u
IGlzIGxhY2tpbmcgb3IgdXNlbGVzcyAoZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCku
CmVycm9yOiBjb3VsZCBub3QgYnVpbGQgZmFrZSBhbmNlc3RvcgpoaW50OiBVc2UgJ2dpdCBhbSAt
LXNob3ctY3VycmVudC1wYXRjaCcgdG8gc2VlIHRoZSBmYWlsZWQgcGF0Y2gKUGF0Y2ggZmFpbGVk
IGF0IDAwMTAgZHJtL2k5MTUvZmJjOiBOdWtlIGZiYy5lbmFibGVkCldoZW4geW91IGhhdmUgcmVz
b2x2ZWQgdGhpcyBwcm9ibGVtLCBydW4gImdpdCBhbSAtLWNvbnRpbnVlIi4KSWYgeW91IHByZWZl
ciB0byBza2lwIHRoaXMgcGF0Y2gsIHJ1biAiZ2l0IGFtIC0tc2tpcCIgaW5zdGVhZC4KVG8gcmVz
dG9yZSB0aGUgb3JpZ2luYWwgYnJhbmNoIGFuZCBzdG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAt
LWFib3J0Ii4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
