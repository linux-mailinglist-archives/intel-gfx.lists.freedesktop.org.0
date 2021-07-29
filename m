Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 006D43DAE89
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 23:51:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0A106EE83;
	Thu, 29 Jul 2021 21:51:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 477216EE7B
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 21:51:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="192578353"
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="192578353"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 14:51:24 -0700
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="664570776"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 14:51:23 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Jul 2021 14:55:43 -0700
Message-Id: <20210729215545.192606-8-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210729215545.192606-1-jose.souza@intel.com>
References: <20210729215545.192606-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 08/10] drm/i915/bios: Nuke panel_type
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxsIHRoZSB1c2VycyB3ZXJlIGNvbnZlcnRlZCwgbm93IHdlIGNhbiBkcm9wIGl0LgoKUmV2aWV3
ZWQtYnk6IE1hdHQgQXR3b29kIDxtYXR0aGV3LnMuYXR3b29kQGludGVsLmNvbT4KQ2M6IEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Jpb3MuYyB8IDM2IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICB8ICAxIC0KIDIgZmlsZXMgY2hhbmdl
ZCwgMzcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jp
b3MuYwppbmRleCBhYTk4YmVmNGI4YTU3Li5kZWQwNGU1Yjc3NzJiIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwpAQCAtMjExLDQxICsyMTEsNiBAQCBnZXRfbHZk
c19mcF90aW1pbmcoY29uc3Qgc3RydWN0IGJkYl9oZWFkZXIgKmJkYiwKIAlyZXR1cm4gKGNvbnN0
IHN0cnVjdCBsdmRzX2ZwX3RpbWluZyAqKSgoY29uc3QgdTggKiliZGIgKyBvZnMpOwogfQogCi0v
KgotICogUGFyc2UgYW5kIHNldCB2YnQucGFuZWxfdHlwZSwgaXQgd2lsbCBiZSB1c2VkIGJ5IHRo
ZSBWQlQgYmxvY2tzIHRoYXQgYXJlCi0gKiBub3QgYmVpbmcgY2FsbGVkIGZyb20gcGFyc2VfaW50
ZWdyYXRlZF9wYW5lbCgpIHlldC4KLSAqLwotc3RhdGljIHZvaWQgcGFyc2VfcGFuZWxfdHlwZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKLQkJCSAgICAgY29uc3Qgc3RydWN0IGJkYl9o
ZWFkZXIgKmJkYikKLXsKLQljb25zdCBzdHJ1Y3QgYmRiX2x2ZHNfb3B0aW9ucyAqbHZkc19vcHRp
b25zOwotCWludCByZXQsIHBhbmVsX3R5cGU7Ci0KLQlsdmRzX29wdGlvbnMgPSBmaW5kX3NlY3Rp
b24oYmRiLCBCREJfTFZEU19PUFRJT05TKTsKLQlpZiAoIWx2ZHNfb3B0aW9ucykKLQkJcmV0dXJu
OwotCi0JcmV0ID0gaW50ZWxfb3ByZWdpb25fZ2V0X3BhbmVsX3R5cGUoaTkxNSk7Ci0JaWYgKHJl
dCA+PSAwKSB7Ci0JCWRybV9XQVJOX09OKCZpOTE1LT5kcm0sIHJldCA+IDB4Zik7Ci0JCXBhbmVs
X3R5cGUgPSByZXQ7Ci0JCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJQYW5lbCB0eXBlOiAlZCAo
T3BSZWdpb24pXG4iLAotCQkJICAgIHBhbmVsX3R5cGUpOwotCX0gZWxzZSB7Ci0JCWlmIChsdmRz
X29wdGlvbnMtPnBhbmVsX3R5cGUgPiAweGYpIHsKLQkJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0s
Ci0JCQkJICAgICJJbnZhbGlkIFZCVCBwYW5lbCB0eXBlIDB4JXhcbiIsCi0JCQkJICAgIGx2ZHNf
b3B0aW9ucy0+cGFuZWxfdHlwZSk7Ci0JCQlyZXR1cm47Ci0JCX0KLQkJcGFuZWxfdHlwZSA9IGx2
ZHNfb3B0aW9ucy0+cGFuZWxfdHlwZTsKLQkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIlBhbmVs
IHR5cGU6ICVkIChWQlQpXG4iLAotCQkJICAgIHBhbmVsX3R5cGUpOwotCX0KLQotCWk5MTUtPnZi
dC5wYW5lbF90eXBlID0gcGFuZWxfdHlwZTsKLX0KLQogLyogUGFyc2UgZ2VuZXJhbCBwYW5lbCBv
cHRpb25zICovCiBzdGF0aWMgdm9pZAogcGFyc2VfcGFuZWxfb3B0aW9ucyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwKQEAgLTI0OTAsNyArMjQ1NSw2IEBAIHZvaWQgaW50ZWxfYmlvc19p
bml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCS8qIEdyYWIgdXNlZnVsIGdlbmVy
YWwgZGVmaW5pdGlvbnMgKi8KIAlwYXJzZV9nZW5lcmFsX2ZlYXR1cmVzKGk5MTUsIGJkYik7CiAJ
cGFyc2VfZ2VuZXJhbF9kZWZpbml0aW9ucyhpOTE1LCBiZGIpOwotCXBhcnNlX3BhbmVsX3R5cGUo
aTkxNSwgYmRiKTsKIAlwYXJzZV9zZHZvX3BhbmVsX2RhdGEoaTkxNSwgYmRiKTsKIAlwYXJzZV9k
cml2ZXJfZmVhdHVyZXMoaTkxNSwgYmRiKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXgg
MzUzNTc1OTc5NjAzMy4uYWQ4YzgzOGI3ZGY0MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBA
IC03MjMsNyArNzIzLDYgQEAgc3RydWN0IGludGVsX3ZidF9kYXRhIHsKIAl1bnNpZ25lZCBpbnQg
aW50X2x2ZHNfc3VwcG9ydDoxOwogCXVuc2lnbmVkIGludCBkaXNwbGF5X2Nsb2NrX21vZGU6MTsK
IAl1bnNpZ25lZCBpbnQgZmRpX3J4X3BvbGFyaXR5X2ludmVydGVkOjE7Ci0JdW5zaWduZWQgaW50
IHBhbmVsX3R5cGU6NDsKIAlpbnQgbHZkc19zc2NfZnJlcTsKIAl1bnNpZ25lZCBpbnQgYmlvc19s
dmRzX3ZhbDsgLyogaW5pdGlhbCBbUENIX11MVkRTIHJlZyB2YWwgaW4gVkJJT1MgKi8KIAllbnVt
IGRybV9wYW5lbF9vcmllbnRhdGlvbiBvcmllbnRhdGlvbjsKLS0gCjIuMzIuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
