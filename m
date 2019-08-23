Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CC19A7E8
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 08:57:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE7BF6E55D;
	Fri, 23 Aug 2019 06:57:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99F2C6E03F;
 Fri, 23 Aug 2019 06:57:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 23:57:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="179091192"
Received: from xzhan34-mobl3.bj.intel.com ([10.238.154.72])
 by fmsmga008.fm.intel.com with ESMTP; 22 Aug 2019 23:57:39 -0700
From: Xiaolin Zhang <xiaolin.zhang@intel.com>
To: intel-gvt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 14:57:31 +0800
Message-Id: <1566543451-13955-1-git-send-email-xiaolin.zhang@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-gfx] [PATCH v2] drm/i915: to make vgpu ppgtt notificaiton as
 atomic operation
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
Cc: stable@vger.kernel.org, zhenyu.z.wang@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

dmdwdSBwcGd0dCBub3RpZmljYXRpb24gd2FzIHNwbGl0IGludG8gMiBzdGVwcywgdGhlIGZpcnN0
IHN0ZXAgaXMgdG8KdXBkYXRlIFBWSU5GTydzIHBkcCByZWdpc3RlciBhbmQgdGhlbiB3cml0ZSBQ
VklORk8ncyBnMnZfbm90aWZ5IHJlZ2lzdGVyCndpdGggYWN0aW9uIGNvZGUgdG8gdGlyZ2dlciBw
cGd0dCBub3RpZmljYXRpb24gdG8gR1ZUIHNpZGUuCgpjdXJyZW50bHkgdGhlc2Ugc3RlcHMgd2Vy
ZSBub3QgYXRvbWljIG9wZXJhdGlvbnMgZHVlIHRvIG5vIGFueSBwcm90ZWN0aW9uLApzbyBpdCBp
cyBlYXN5IHRvIGVudGVyIHJhY2UgY29uZGl0aW9uIHN0YXRlIGR1cmluZyB0aGUgTVRCRiwgc3Ry
ZXNzIGFuZApJR1QgdGVzdCB0byBjYXVzZSBHUFUgaGFuZy4KCnRoZSBzb2x1dGlvbiBpcyB0byBh
ZGQgYSBsb2NrIHRvIG1ha2UgdmdwdSBwcGd0dCBub3RpY2F0aW9uIGFzIGF0b21pYwpvcGVyYXRp
b24uCgpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwpTaWduZWQtb2ZmLWJ5OiBYaWFvbGluIFpo
YW5nIDx4aWFvbGluLnpoYW5nQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oICAgICB8IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMg
fCA0ICsrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5jICAgIHwgMSArCiAzIGZp
bGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4
IGViMzFjMTYuLjMyZTE3YzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtOTYxLDYgKzk2
MSw3IEBAIHN0cnVjdCBpOTE1X2Zyb250YnVmZmVyX3RyYWNraW5nIHsKIH07CiAKIHN0cnVjdCBp
OTE1X3ZpcnR1YWxfZ3B1IHsKKwlzdHJ1Y3QgbXV0ZXggbG9jazsKIAlib29sIGFjdGl2ZTsKIAl1
MzIgY2FwczsKIH07CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCmluZGV4IDJjZDJkYWIu
LmZmMGIxNzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC04MzMsNiArODMz
LDggQEAgc3RhdGljIGludCBnZW44X3BwZ3R0X25vdGlmeV92Z3Qoc3RydWN0IGk5MTVfcHBndHQg
KnBwZ3R0LCBib29sIGNyZWF0ZSkKIAllbnVtIHZndF9nMnZfdHlwZSBtc2c7CiAJaW50IGk7CiAK
KwltdXRleF9sb2NrKCZkZXZfcHJpdi0+dmdwdS5sb2NrKTsKKwogCWlmIChjcmVhdGUpCiAJCWF0
b21pY19pbmMocHhfdXNlZChwcGd0dC0+cGQpKTsgLyogbmV2ZXIgcmVtb3ZlICovCiAJZWxzZQpA
QCAtODYwLDYgKzg2Miw4IEBAIHN0YXRpYyBpbnQgZ2VuOF9wcGd0dF9ub3RpZnlfdmd0KHN0cnVj
dCBpOTE1X3BwZ3R0ICpwcGd0dCwgYm9vbCBjcmVhdGUpCiAKIAlJOTE1X1dSSVRFKHZndGlmX3Jl
ZyhnMnZfbm90aWZ5KSwgbXNnKTsKIAorCW11dGV4X3VubG9jaygmZGV2X3ByaXYtPnZncHUubG9j
ayk7CisKIAlyZXR1cm4gMDsKIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV92Z3B1LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuYwppbmRleCBiZjJi
ODM3Li43NDkzNTQ0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuYwpAQCAtOTQsNiArOTQsNyBA
QCB2b2lkIGk5MTVfZGV0ZWN0X3ZncHUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQogCWRldl9wcml2LT52Z3B1LmNhcHMgPSByZWFkbChzaGFyZWRfYXJlYSArIHZndGlmX29mZnNl
dCh2Z3RfY2FwcykpOwogCiAJZGV2X3ByaXYtPnZncHUuYWN0aXZlID0gdHJ1ZTsKKwltdXRleF9p
bml0KCZkZXZfcHJpdi0+dmdwdS5sb2NrKTsKIAlEUk1fSU5GTygiVmlydHVhbCBHUFUgZm9yIElu
dGVsIEdWVC1nIGRldGVjdGVkLlxuIik7CiAKIG91dDoKLS0gCjIuNy40CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
