Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5DD4D054
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 16:26:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01F466E5AD;
	Thu, 20 Jun 2019 14:26:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DB226E5AD;
 Thu, 20 Jun 2019 14:26:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 07:26:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="154127759"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 20 Jun 2019 07:26:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Jun 2019 17:26:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 20 Jun 2019 17:26:36 +0300
Message-Id: <20190620142639.17518-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190620142639.17518-1-ville.syrjala@linux.intel.com>
References: <20190620142639.17518-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm: Do not accept garbage mode aspect
 ratio flags
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
Cc: intel-gfx@lists.freedesktop.org, Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRv
bid0IGxldCB1c2Vyc3BhY2UgZmVlZCB1cyBhbnkgb2xkIGdhcmJhZ2UgaW4gdGhlIG1vZGUgYXNw
ZWN0IHJhdGlvCmZsYWdzLgoKQ2M6IElsaWEgTWlya2luIDxpbWlya2luQGFsdW0ubWl0LmVkdT4K
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX21vZGVzLmMgfCA0ICsrKy0KIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vZHJtX21vZGVzLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX21vZGVzLmMKaW5k
ZXggNTNhY2M2NzU2ZWUwLi44NDcwNDhkZWUwNDggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9kcm1fbW9kZXMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX21vZGVzLmMKQEAgLTE5Nzcs
OSArMTk3NywxMSBAQCBpbnQgZHJtX21vZGVfY29udmVydF91bW9kZShzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LAogCWNhc2UgRFJNX01PREVfRkxBR19QSUNfQVJfMjU2XzEzNToKIAkJb3V0LT5waWN0
dXJlX2FzcGVjdF9yYXRpbyA9IEhETUlfUElDVFVSRV9BU1BFQ1RfMjU2XzEzNTsKIAkJYnJlYWs7
Ci0JZGVmYXVsdDoKKwljYXNlIERSTV9NT0RFX0ZMQUdfUElDX0FSX05PTkU6CiAJCW91dC0+cGlj
dHVyZV9hc3BlY3RfcmF0aW8gPSBIRE1JX1BJQ1RVUkVfQVNQRUNUX05PTkU7CiAJCWJyZWFrOwor
CWRlZmF1bHQ6CisJCXJldHVybiAtRUlOVkFMOwogCX0KIAogCW91dC0+c3RhdHVzID0gZHJtX21v
ZGVfdmFsaWRhdGVfZHJpdmVyKGRldiwgb3V0KTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
