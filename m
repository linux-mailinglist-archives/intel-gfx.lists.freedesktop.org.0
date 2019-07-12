Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E763670D0
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 15:59:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 841076E11E;
	Fri, 12 Jul 2019 13:59:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A33986E0F7;
 Fri, 12 Jul 2019 13:59:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 06:59:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,482,1557212400"; d="scan'208";a="168323459"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga007.fm.intel.com with ESMTP; 12 Jul 2019 06:59:23 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Pekka Paalanen <ppaalanen@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 12 Jul 2019 12:30:26 +0530
Message-Id: <20190712070026.13088-7-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190712070026.13088-1-ramalingam.c@intel.com>
References: <20190712070026.13088-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 6/6] drm/hdcp: reference for srm file format
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

SW4gdGhlIGtlcm5lbCBkb2N1bWVudGF0aW9uLCBIRENQIHNwZWNpZmljYXRpb25zIGxpbmtzIGFy
ZSBzaGFyZWQgYXMgYQpyZWZlcmVuY2UgZm9yIFNSTSB0YWJsZSBmb3JtYXQuCgpTaWduZWQtb2Zm
LWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2RybV9oZGNwLmMgfCA3ICsrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2hkY3AuYyBiL2RyaXZlcnMv
Z3B1L2RybS9kcm1faGRjcC5jCmluZGV4IDc3NDMzZWUzZDY1Mi4uODAzYmY4MjgzYjgzIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2hkY3AuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
ZHJtX2hkY3AuYwpAQCAtMjcxLDYgKzI3MSwxMyBAQCBzdGF0aWMgdm9pZCBkcm1faGRjcF9yZXF1
ZXN0X3NybShzdHJ1Y3QgZHJtX2RldmljZSAqZHJtX2RldikKICAqCiAgKiBTUk0gc2hvdWxkIGJl
IHByZXNlbnRlZCBpbiB0aGUgbmFtZSBvZiAiZGlzcGxheV9oZGNwX3NybS5iaW4iLgogICoKKyAq
IEZvcm1hdCBvZiB0aGUgU1JNIHRhYmxlIHRoYXQgdXNlcnNwYWNlIG5lZWRzIHRvIHdyaXRlIGlu
dG8gdGhlIGJpbmFyeSBmaWxlCisgKiBpcyBkZWZpbmVkIGF0CisgKiAxLiBSZW5ld2FiaWxpdHkg
Y2hhcHRlciBvbiA1NXRoIHBhZ2Ugb2YgSERDUCAxLjQgc3BlY2lmaWNhdGlvbgorICogaHR0cHM6
Ly93d3cuZGlnaXRhbC1jcC5jb20vc2l0ZXMvZGVmYXVsdC9maWxlcy9zcGVjaWZpY2F0aW9ucy9I
RENQJTIwU3BlY2lmaWNhdGlvbiUyMFJldjFfNF9TZWN1cmUucGRmCisgKiAyLiBSZW5ld2FiaWxp
dHkgY2hhcHRlciBvbiA2M3JkIHBhZ2Ugb2YgSERDUCAyLjIgc3BlY2lmaWNhdGlvbgorICogaHR0
cHM6Ly93d3cuZGlnaXRhbC1jcC5jb20vc2l0ZXMvZGVmYXVsdC9maWxlcy9zcGVjaWZpY2F0aW9u
cy9IRENQJTIwb24lMjBIRE1JJTIwU3BlY2lmaWNhdGlvbiUyMFJldjJfMl9GaW5hbDEucGRmCisg
KgogICogUmV0dXJuczoKICAqIFRSVUUgb24gYW55IG9mIHRoZSBLU1YgaXMgcmV2b2tlZCwgZWxz
ZSBGQUxTRS4KICAqLwotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
