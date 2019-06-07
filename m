Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DD138924
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 13:36:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8998089C93;
	Fri,  7 Jun 2019 11:36:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 301 seconds by postgrey-1.36 at gabe;
 Fri, 07 Jun 2019 11:36:23 UTC
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be
 [IPv6:2a02:1800:110:4::f00:19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C9A289C93
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 11:36:23 +0000 (UTC)
Received: from ramsan ([84.194.111.163]) by laurent.telenet-ops.be with bizsmtp
 id MnXK2000E3XaVaC01nXKXn; Fri, 07 Jun 2019 13:31:20 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hZD5b-0004FW-EB; Fri, 07 Jun 2019 13:31:19 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hZD5b-0003ow-CU; Fri, 07 Jun 2019 13:31:19 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Jiri Kosina <trivial@kernel.org>
Date: Fri,  7 Jun 2019 13:31:18 +0200
Message-Id: <20190607113118.14645-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH trivial] drm/i915: Grammar s/the its/its/
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
Cc: intel-gfx@lists.freedesktop.org,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2lnbmVkLW9mZi1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5i
ZT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcGxsX21nci5oIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHBsbF9tZ3IuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RwbGxfbWdyLmgKaW5kZXggODgzNWRkMjBmMWQyN2UwNS4uNzlhNTNjNTQzOWE4
ZTZkYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHBsbF9tZ3IuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcGxsX21nci5oCkBAIC0yOTMsNyArMjkz
LDcgQEAgc3RydWN0IGludGVsX3NoYXJlZF9kcGxsIHsKIAkvKioKIAkgKiBAc3RhdGU6CiAJICoK
LQkgKiBTdG9yZSB0aGUgc3RhdGUgZm9yIHRoZSBwbGwsIGluY2x1ZGluZyB0aGUgaXRzIGh3IHN0
YXRlCisJICogU3RvcmUgdGhlIHN0YXRlIGZvciB0aGUgcGxsLCBpbmNsdWRpbmcgaXRzIGh3IHN0
YXRlCiAJICogYW5kIENSVENzIHVzaW5nIGl0LgogCSAqLwogCXN0cnVjdCBpbnRlbF9zaGFyZWRf
ZHBsbF9zdGF0ZSBzdGF0ZTsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
