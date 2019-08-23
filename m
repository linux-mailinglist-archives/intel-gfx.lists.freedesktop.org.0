Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD879ABEF
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 11:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F8E36EC5D;
	Fri, 23 Aug 2019 09:52:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E3E06EC5A;
 Fri, 23 Aug 2019 09:52:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 02:52:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="330673495"
Received: from helsinki.fi.intel.com ([10.237.66.174])
 by orsmga004.jf.intel.com with ESMTP; 23 Aug 2019 02:52:43 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 12:52:32 +0300
Message-Id: <20190823095232.28908-7-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823095232.28908-1-gwan-gyeong.mun@intel.com>
References: <20190823095232.28908-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 6/6] drm/i915/dp: Attach HDR metadata
 property to DP connector
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQgYXR0YWNoZXMgSERSIG1ldGFkYXRhIHByb3BlcnR5IHRvIERQIGNvbm5lY3RvciBvbiBHTEsr
LgpJdCBlbmFibGVzIEhEUiBtZXRhZGF0YSBpbmZvZnJhbWUgc2RwIG9uIEdMSysgdG8gYmUgdXNl
ZCB0byBzZW5kCkhEUiBtZXRhZGF0YSB0byBEUCBzaW5rLgoKdjI6IE1pbm9yIHN0eWxlIGZpeAoK
U2lnbmVkLW9mZi1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDUgKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMKaW5kZXggMDBkYTgyMjFlYWJhLi44OTk5MjNlY2QxYzkgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTY0OTUsNiArNjQ5NSwxMSBAQCBp
bnRlbF9kcF9hZGRfcHJvcGVydGllcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBzdHJ1Y3Qg
ZHJtX2Nvbm5lY3RvciAqY29ubmVjdAogCiAJaW50ZWxfYXR0YWNoX2NvbG9yc3BhY2VfcHJvcGVy
dHkoY29ubmVjdG9yKTsKIAorCWlmIChJU19HRU1JTklMQUtFKGRldl9wcml2KSB8fCBJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDExKQorCQlkcm1fb2JqZWN0X2F0dGFjaF9wcm9wZXJ0eSgmY29ubmVj
dG9yLT5iYXNlLAorCQkJCQkgICBjb25uZWN0b3ItPmRldi0+bW9kZV9jb25maWcuaGRyX291dHB1
dF9tZXRhZGF0YV9wcm9wZXJ0eSwKKwkJCQkJICAgMCk7CisKIAlpZiAoaW50ZWxfZHBfaXNfZWRw
KGludGVsX2RwKSkgewogCQl1MzIgYWxsb3dlZF9zY2FsZXJzOwogCi0tIAoyLjIyLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
