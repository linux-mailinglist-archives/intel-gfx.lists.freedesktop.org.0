Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E64483674ED
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 23:59:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CD956E037;
	Wed, 21 Apr 2021 21:59:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67BA06E037
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Apr 2021 21:59:50 +0000 (UTC)
IronPort-SDR: xfV1vpsqs9ckoSPh17pRzDXHVItiG+AKZX7gkacZe5SxqMatHpJWkn+Y4LFgSppf+kkoskObQn
 i3B4cPzy48Lw==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="192598195"
X-IronPort-AV: E=Sophos;i="5.82,241,1613462400"; d="scan'208";a="192598195"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 14:59:49 -0700
IronPort-SDR: MCtgTiNFRC7AVDzMaI5uf13Ma8XFdy6xZG+aKieokoBseeSQOYarZUdRMY+ChZL41+iVe5KtE3
 1QD7roqwlJkw==
X-IronPort-AV: E=Sophos;i="5.82,241,1613462400"; d="scan'208";a="401620990"
Received: from ftimarch-mobl2.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.254.35.91])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 14:59:48 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Apr 2021 15:02:24 -0700
Message-Id: <20210421220224.200729-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210421220224.200729-1-jose.souza@intel.com>
References: <20210421220224.200729-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display/xelpd: Do not program
 EDP_Y_COORDINATE_ENABLE
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

RURQX1lfQ09PUkRJTkFURV9FTkFCTEUgYmVjYW1lIGEgcmVzZXJ2ZWQgcmVnaXN0ZXIgaW4gZGlz
cGxheSAxMy4KRURQX1lfQ09PUkRJTkFURV9WQUxJRCBoYXZlIHRoZSBzYW1lIGZhdGUgYXMgRURQ
X1lfQ09PUkRJTkFURV9FTkFCTEUKYnV0IGFzIHdlIGRvbid0IG5lZWQgaXQsIHJlbW92aW5nIHRo
ZSBtYWNybyBkZWZpbml0aW9uIG9mIGl0LgoKQlNwZWM6IDUwNDIyCkNjOiBHd2FuLWd5ZW9uZyBN
dW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+CkNjOiBBbnVzaGEgU3JpdmF0c2EgPGFudXNo
YS5zcml2YXRzYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAg
ICAgICAgIHwgMyArLS0KIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IDRh
ZDc1NmUyMzhjNS4uNjYzMzVlYzZiN2QxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMKQEAgLTUyNCw3ICs1MjQsNyBAQCBzdGF0aWMgdm9pZCBoc3dfYWN0aXZhdGVf
cHNyMihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCXZhbCA9IHBzcl9jb21wdXRlX2lkbGVf
ZnJhbWVzKGludGVsX2RwKSA8PCBFRFBfUFNSMl9JRExFX0ZSQU1FX1NISUZUOwogCiAJdmFsIHw9
IEVEUF9QU1IyX0VOQUJMRSB8IEVEUF9TVV9UUkFDS19FTkFCTEU7Ci0JaWYgKERJU1BMQVlfVkVS
KGRldl9wcml2KSA+PSAxMCkKKwlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEwICYmIERJ
U1BMQVlfVkVSKGRldl9wcml2KSA8PSAxMikKIAkJdmFsIHw9IEVEUF9ZX0NPT1JESU5BVEVfRU5B
QkxFOwogCiAJdmFsIHw9IEVEUF9QU1IyX0ZSQU1FX0JFRk9SRV9TVShpbnRlbF9kcC0+cHNyLnNp
bmtfc3luY19sYXRlbmN5ICsgMSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA2NmE5MDJi
M2JiOGUuLmUxODU3NmM5NGNlZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC00NTY5LDgg
KzQ1NjksNyBAQCBlbnVtIHsKICNkZWZpbmUgICBFRFBfU1VfVFJBQ0tfRU5BQkxFCQkJKDEgPDwg
MzApCiAjZGVmaW5lICAgVEdMX0VEUF9QU1IyX0JMT0NLX0NPVU5UX05VTV8yCSgwIDw8IDI4KQog
I2RlZmluZSAgIFRHTF9FRFBfUFNSMl9CTE9DS19DT1VOVF9OVU1fMwkoMSA8PCAyOCkKLSNkZWZp
bmUgICBFRFBfWV9DT09SRElOQVRFX1ZBTElECQkoMSA8PCAyNikgLyogR0xLIGFuZCBDTkwrICov
Ci0jZGVmaW5lICAgRURQX1lfQ09PUkRJTkFURV9FTkFCTEUJCSgxIDw8IDI1KSAvKiBHTEsgYW5k
IENOTCsgKi8KKyNkZWZpbmUgICBFRFBfWV9DT09SRElOQVRFX0VOQUJMRQkJUkVHX0JJVCgyNSkg
LyogZGlzcGxheSAxMCwgMTEgYW5kIDEyICovCiAjZGVmaW5lICAgRURQX01BWF9TVV9ESVNBQkxF
X1RJTUUodCkJCSgodCkgPDwgMjApCiAjZGVmaW5lICAgRURQX01BWF9TVV9ESVNBQkxFX1RJTUVf
TUFTSwkJKDB4MWYgPDwgMjApCiAjZGVmaW5lICAgRURQX1BTUjJfSU9fQlVGRkVSX1dBS0VfTUFY
X0xJTkVTCTgKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
