Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E18810B732
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 21:12:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D22E66E11E;
	Wed, 27 Nov 2019 20:12:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB5106E11E
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 20:12:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 12:12:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="206875452"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 27 Nov 2019 12:12:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Nov 2019 22:12:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 22:12:08 +0200
Message-Id: <20191127201222.16669-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/14] drm/i915/fbc: Fix FBC for glk+
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
Cc: Jian-Hong Pan <jian-hong@endlessm.com>,
 Paulo Zanoni <paulo.r.zanoni@intel.com>, Daniel Drake <drake@endlessm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkNJ
IGdvdCBob3BlbGVzc2x5IGNvbmZ1c2VkIHdpdGggdGhlIHYxIHNlcmllcyBzbyByZXBvc3Rpbmcg
aW4gaXRzCmVudGlyZXR5LgoKSSBhbHNvIHNsYXBwZWQgb24gYW4gZXh0cmEgcGF0Y2ggYXQgdGhl
IGVuZCB3aGljaCBzaG91bGQgaG9wZWZ1bGx5CmF2b2lkIHRoZSBwcm9ibGVtcyB3aXRoIEZCQyBu
b3QgZ2V0dGluZyBlbmFibGVkIHdpdGggZmFzdGJvb3QuCgpGb3JjZSBwdXNoZWQgdG8KZ2l0Oi8v
Z2l0aHViLmNvbS92c3lyamFsYS9saW51eC5naXQgZ2xrX2ZiY193YQoKQ2M6IERhbmllbCBEcmFr
ZSA8ZHJha2VAZW5kbGVzc20uY29tPgpDYzogUGF1bG8gWmFub25pIDxwYXVsby5yLnphbm9uaUBp
bnRlbC5jb20+CkNjOiBKaWFuLUhvbmcgUGFuIDxqaWFuLWhvbmdAZW5kbGVzc20uY29tPgpDYzog
TWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KClZp
bGxlIFN5cmrDpGzDpCAoMTQpOgogIGRybS9pOTE1L2ZiYzogRGlzYWJsZSBmYmMgYnkgZGVmYXVs
dCBvbiBhbGwgZ2xrKwogIGRybS9pOTE1L2ZiYzogTnVrZSBib2d1cyBzaW5nbGUgcGlwZSBmYmMx
IHJlc3RyaWN0aW9uCiAgZHJtL2k5MTU6IFJlbG9jYXRlIGludGVsX2NydGNfYWN0aXZlKCkKICBk
cm0vaTkxNS9mYmM6IFJlbW92ZSB0aGUgRkJDX1JUX0JBU0Ugc2V0dXAgZm9yIElMSy9TTkIKICBk
cm0vaTkxNS9mYmM6IFByZWNvbXB1dGUgZ2VuOSBjZmIgc3RyaWRlIHcvYQogIGRybS9pOTE1L2Zi
YzogVHJhY2sgcGxhbmUgdmlzaWJpbGl0eQogIGRybS9pOTE1L2ZiYzogU3RvcmUgZmVuY2VfaWQg
ZGlyZWN0aW9uIGluIGZiYyBjYWNoZS9wYXJhbXMKICBkcm0vaTkxNS9mYmM6IE1ha2UgZmVuY2Vf
aWQgb3B0aW9uYWwgZm9yIGk5NjVnbQogIGRybS9pOTE1L2ZiYzogcy9nZW45ICYmICFnbGsvZ2Vu
OV9iYyB8fCBieHQvCiAgZHJtL2k5MTUvZmJjOiBOdWtlIGZiYy5lbmFibGVkCiAgZHJtL2k5MTUv
ZmJjOiBTdGFydCB1c2luZyBmbGlwIG51a2UKICBkcm0vaTkxNS9mYmM6IFdhaXQgZm9yIHZibGFu
ayBhZnRlciBGQkMgZGlzYWJsZSBvbiBnbGsrCiAgZHJtL2k5MTUvZmJjOiBFbmFibGUgZmJjIGJ5
IGRlZmF1bHQgb24gZ2xrKyBvbmNlIGFnYWluCiAgZHJtL2k5MTUvZmJjOiBSZWFsbG9jYXRlIGNm
YiBpZiB3ZSBuZWVkIG1vcmUgb2YgaXQKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyB8ICAyNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmggfCAgIDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYyAgICAgfCAyNzQgKysrKysrKysrKy0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuaCAgICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmggICAgICAgICAgICAgIHwgIDE0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jICAgICAgICAgICAgICB8ICAxOSArKwogNiBmaWxlcyBjaGFuZ2VkLCAxNjkgaW5zZXJ0
aW9ucygrKSwgMTY3IGRlbGV0aW9ucygtKQoKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
