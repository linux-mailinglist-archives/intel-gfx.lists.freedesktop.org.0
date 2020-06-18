Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C36F1FDA7C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 02:43:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E9F16EA1D;
	Thu, 18 Jun 2020 00:43:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C43F6E25B
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 00:42:51 +0000 (UTC)
IronPort-SDR: Q7H89qPYn7DYRVGOrgmC0hxVm6kLh0GlaiWbir/wNdK3JSqR4uvdwgEpGwYXfXbuECMlmUfIAC
 7g84APnw/8yQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 17:42:51 -0700
IronPort-SDR: ncfoTvhAQyb5yGqSyso8F328T6gxkNWVX/LLJxaM3ApQnWKuJGINRib/nmfzKq0mCAALXhy20B
 bC7eBdXzKQ5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,524,1583222400"; d="scan'208";a="477011859"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2020 17:42:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:42:18 -0700
Message-Id: <20200618004240.16263-11-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200618004240.16263-1-lucas.demarchi@intel.com>
References: <20200618004240.16263-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 10/32] drm/i915/dg1: Remove SHPD_FILTER_CNT
 register programming
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

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKQnNwZWMg
YXNrcyB1cyB0byByZW1vdmUgdGhlIHNwZWNpYWwgcHJvZ3JhbW1pbmcgb2YgdGhlClNIUERfRklM
VEVSX0NOVCByZWdpc3RlciB3aGljaCB3ZSBoYXZlIGJlZW4gZG9pbmcgc2luY2UgQ05QKy4KCkJz
cGVjOiA0OTMwNQoKQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
ClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgMyArKy0KIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9p
cnEuYwppbmRleCA4NjUyZTFlNjlkYjcyLi40OGUxNjg2ZGYzNDE2IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfaXJxLmMKQEAgLTMxMTYsNyArMzExNiw4IEBAIHN0YXRpYyB2b2lkIGljcF9ocGRfaXJxX3Nl
dHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlob3RwbHVnX2lycXMgPSBz
ZGVfZGRpX21hc2sgfCBzZGVfdGNfbWFzazsKIAllbmFibGVkX2lycXMgPSBpbnRlbF9ocGRfZW5h
YmxlZF9pcnFzKGRldl9wcml2LCBkZXZfcHJpdi0+aG90cGx1Zy5wY2hfaHBkKTsKIAotCUk5MTVf
V1JJVEUoU0hQRF9GSUxURVJfQ05ULCBTSFBEX0ZJTFRFUl9DTlRfNTAwX0FESik7CisJaWYgKElO
VEVMX1BDSF9UWVBFKGRldl9wcml2KSA8PSBQQ0hfVEdQKQorCQlJOTE1X1dSSVRFKFNIUERfRklM
VEVSX0NOVCwgU0hQRF9GSUxURVJfQ05UXzUwMF9BREopOwogCiAJaWJ4X2Rpc3BsYXlfaW50ZXJy
dXB0X3VwZGF0ZShkZXZfcHJpdiwgaG90cGx1Z19pcnFzLCBlbmFibGVkX2lycXMpOwogCi0tIAoy
LjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
