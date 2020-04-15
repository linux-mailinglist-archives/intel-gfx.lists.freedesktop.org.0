Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C5F1AB442
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 01:34:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05BF06EAAE;
	Wed, 15 Apr 2020 23:34:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 571E16EAAE
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 23:34:49 +0000 (UTC)
IronPort-SDR: 7vl8NLQy6dhiiAzi5i9hM4ZVtlbZspQxy4IsVTPqqTY4DhGhVYClSQuT62Pe+dvjhfIq+J6GGs
 W8IwqXwk9KPQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 16:34:48 -0700
IronPort-SDR: S3XdQUFIcCrgNCBz+cGT9GarEI4aQ9efev4U8vUgp4jMwhuL8enJ3alG9qbzQFMTM7/Jvpdj8P
 Qa9OnzIMGmOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,388,1580803200"; d="scan'208";a="242468971"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga007.jf.intel.com with ESMTP; 15 Apr 2020 16:34:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Apr 2020 16:34:34 -0700
Message-Id: <20200415233435.3064257-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: TBT AUX should use TC power
 well ops
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

QXMgb24gSUNMLCB3ZSB3YW50IHRvIHVzZSB0aGUgVHlwZS1DIGF1eCBoYW5kbGVycyBmb3IgdGhl
IFRCVCBhdXggd2VsbHMKdG8gZW5zdXJlIHRoZSBEUF9BVVhfQ0hfQ1RMX1RCVF9JTyBmbGFnIGlz
IHNldCBwcm9wZXJseS4KCkZpeGVzOiA2NTY0MDliYmFmODcgKCJkcm0vaTkxNS90Z2w6IEFkZCBw
b3dlciB3ZWxsIHN1cHBvcnQiKQpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+CkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCAxMiArKysrKyst
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIu
YwppbmRleCA2Y2MwZTIzY2E1NjYuLjAzYmRkZTE5YzhjOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKQEAgLTQxNDcsNyArNDE0
Nyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsX2Rlc2MgdGdsX3Bvd2Vy
X3dlbGxzW10gPSB7CiAJewogCQkubmFtZSA9ICJBVVggRCBUQlQxIiwKIAkJLmRvbWFpbnMgPSBU
R0xfQVVYX0RfVEJUMV9JT19QT1dFUl9ET01BSU5TLAotCQkub3BzID0gJmhzd19wb3dlcl93ZWxs
X29wcywKKwkJLm9wcyA9ICZpY2xfdGNfcGh5X2F1eF9wb3dlcl93ZWxsX29wcywKIAkJLmlkID0g
RElTUF9QV19JRF9OT05FLAogCQl7CiAJCQkuaHN3LnJlZ3MgPSAmaWNsX2F1eF9wb3dlcl93ZWxs
X3JlZ3MsCkBAIC00MTU4LDcgKzQxNTgsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfcG93
ZXJfd2VsbF9kZXNjIHRnbF9wb3dlcl93ZWxsc1tdID0gewogCXsKIAkJLm5hbWUgPSAiQVVYIEUg
VEJUMiIsCiAJCS5kb21haW5zID0gVEdMX0FVWF9FX1RCVDJfSU9fUE9XRVJfRE9NQUlOUywKLQkJ
Lm9wcyA9ICZoc3dfcG93ZXJfd2VsbF9vcHMsCisJCS5vcHMgPSAmaWNsX3RjX3BoeV9hdXhfcG93
ZXJfd2VsbF9vcHMsCiAJCS5pZCA9IERJU1BfUFdfSURfTk9ORSwKIAkJewogCQkJLmhzdy5yZWdz
ID0gJmljbF9hdXhfcG93ZXJfd2VsbF9yZWdzLApAQCAtNDE2OSw3ICs0MTY5LDcgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGxfZGVzYyB0Z2xfcG93ZXJfd2VsbHNbXSA9IHsK
IAl7CiAJCS5uYW1lID0gIkFVWCBGIFRCVDMiLAogCQkuZG9tYWlucyA9IFRHTF9BVVhfRl9UQlQz
X0lPX1BPV0VSX0RPTUFJTlMsCi0JCS5vcHMgPSAmaHN3X3Bvd2VyX3dlbGxfb3BzLAorCQkub3Bz
ID0gJmljbF90Y19waHlfYXV4X3Bvd2VyX3dlbGxfb3BzLAogCQkuaWQgPSBESVNQX1BXX0lEX05P
TkUsCiAJCXsKIAkJCS5oc3cucmVncyA9ICZpY2xfYXV4X3Bvd2VyX3dlbGxfcmVncywKQEAgLTQx
ODAsNyArNDE4MCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsX2Rlc2Mg
dGdsX3Bvd2VyX3dlbGxzW10gPSB7CiAJewogCQkubmFtZSA9ICJBVVggRyBUQlQ0IiwKIAkJLmRv
bWFpbnMgPSBUR0xfQVVYX0dfVEJUNF9JT19QT1dFUl9ET01BSU5TLAotCQkub3BzID0gJmhzd19w
b3dlcl93ZWxsX29wcywKKwkJLm9wcyA9ICZpY2xfdGNfcGh5X2F1eF9wb3dlcl93ZWxsX29wcywK
IAkJLmlkID0gRElTUF9QV19JRF9OT05FLAogCQl7CiAJCQkuaHN3LnJlZ3MgPSAmaWNsX2F1eF9w
b3dlcl93ZWxsX3JlZ3MsCkBAIC00MTkxLDcgKzQxOTEsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IGk5MTVfcG93ZXJfd2VsbF9kZXNjIHRnbF9wb3dlcl93ZWxsc1tdID0gewogCXsKIAkJLm5hbWUg
PSAiQVVYIEggVEJUNSIsCiAJCS5kb21haW5zID0gVEdMX0FVWF9IX1RCVDVfSU9fUE9XRVJfRE9N
QUlOUywKLQkJLm9wcyA9ICZoc3dfcG93ZXJfd2VsbF9vcHMsCisJCS5vcHMgPSAmaWNsX3RjX3Bo
eV9hdXhfcG93ZXJfd2VsbF9vcHMsCiAJCS5pZCA9IERJU1BfUFdfSURfTk9ORSwKIAkJewogCQkJ
Lmhzdy5yZWdzID0gJmljbF9hdXhfcG93ZXJfd2VsbF9yZWdzLApAQCAtNDIwMiw3ICs0MjAyLDcg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGxfZGVzYyB0Z2xfcG93ZXJfd2Vs
bHNbXSA9IHsKIAl7CiAJCS5uYW1lID0gIkFVWCBJIFRCVDYiLAogCQkuZG9tYWlucyA9IFRHTF9B
VVhfSV9UQlQ2X0lPX1BPV0VSX0RPTUFJTlMsCi0JCS5vcHMgPSAmaHN3X3Bvd2VyX3dlbGxfb3Bz
LAorCQkub3BzID0gJmljbF90Y19waHlfYXV4X3Bvd2VyX3dlbGxfb3BzLAogCQkuaWQgPSBESVNQ
X1BXX0lEX05PTkUsCiAJCXsKIAkJCS5oc3cucmVncyA9ICZpY2xfYXV4X3Bvd2VyX3dlbGxfcmVn
cywKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
