Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 020C02229B2
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 19:21:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 427096EC9D;
	Thu, 16 Jul 2020 17:21:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB0826EC99
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 17:21:44 +0000 (UTC)
IronPort-SDR: SyQzhQmP8H9v5GtvytiWRxbD9i/e+rAAEEx6dnzH5Aaj7LGvVp0F6tJe8ai7WR2tbfGAtIKiKK
 5WrccbVaDT3Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="147438855"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="147438855"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:21:44 -0700
IronPort-SDR: iheoskARhWGyV8gvmlPQ5vV/DCOjGsjmn7dIFN+n7TOJ0CYqfch7haYnrnLnzlkT+Frq8hCN68
 RGwHfdPFva0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="300307216"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 16 Jul 2020 10:21:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jul 2020 20:21:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 20:21:04 +0300
Message-Id: <20200716172106.2656-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/14] drm/i915: Sort CNL PCI IDs
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNv
cnQgdGhlIENOTCBQQ0kgSURzIG51bWVyaWNhbGx5LiBTb21lIG9yZGVyIHNlZW1zIGJldHRlciB0
aGFuCnJhbmRvbW5lc3MuCgpDYzogQWxleGVpIFBvZHRlbGV6aG5pa292IDxhcG9kdGVsZUBnbWFp
bC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCB8IDE4ICsrKysrKysr
Ky0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIGIvaW5jbHVkZS9kcm0v
aTkxNV9wY2lpZHMuaAppbmRleCBjNDhjMmI3NmFhN2QuLjMzYTcyZTZlYWRkOCAxMDA2NDQKLS0t
IGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAorKysgYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlk
cy5oCkBAIC01NDMsMjMgKzU0MywyMyBAQAogCiAvKiBDTkwgKi8KICNkZWZpbmUgSU5URUxfQ05M
X1BPUlRfRl9JRFMoaW5mbykgXAotCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1QTU0LCBpbmZvKSwgXAot
CUlOVEVMX1ZHQV9ERVZJQ0UoMHg1QTVDLCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1
QTQ0LCBpbmZvKSwgXAotCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1QTRDLCBpbmZvKQorCUlOVEVMX1ZH
QV9ERVZJQ0UoMHg1QTRDLCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1QTU0LCBpbmZv
KSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1QTVDLCBpbmZvKQogCiAjZGVmaW5lIElOVEVMX0NO
TF9JRFMoaW5mbykgXAogCUlOVEVMX0NOTF9QT1JUX0ZfSURTKGluZm8pLCBcCi0JSU5URUxfVkdB
X0RFVklDRSgweDVBNTEsIGluZm8pLCBcCi0JSU5URUxfVkdBX0RFVklDRSgweDVBNTksIGluZm8p
LCBcCisJSU5URUxfVkdBX0RFVklDRSgweDVBNDAsIGluZm8pLCBcCiAJSU5URUxfVkdBX0RFVklD
RSgweDVBNDEsIGluZm8pLCBcCi0JSU5URUxfVkdBX0RFVklDRSgweDVBNDksIGluZm8pLCBcCi0J
SU5URUxfVkdBX0RFVklDRSgweDVBNTIsIGluZm8pLCBcCi0JSU5URUxfVkdBX0RFVklDRSgweDVB
NUEsIGluZm8pLCBcCiAJSU5URUxfVkdBX0RFVklDRSgweDVBNDIsIGluZm8pLCBcCisJSU5URUxf
VkdBX0RFVklDRSgweDVBNDksIGluZm8pLCBcCiAJSU5URUxfVkdBX0RFVklDRSgweDVBNEEsIGlu
Zm8pLCBcCiAJSU5URUxfVkdBX0RFVklDRSgweDVBNTAsIGluZm8pLCBcCi0JSU5URUxfVkdBX0RF
VklDRSgweDVBNDAsIGluZm8pCisJSU5URUxfVkdBX0RFVklDRSgweDVBNTEsIGluZm8pLCBcCisJ
SU5URUxfVkdBX0RFVklDRSgweDVBNTIsIGluZm8pLCBcCisJSU5URUxfVkdBX0RFVklDRSgweDVB
NTksIGluZm8pLCBcCisJSU5URUxfVkdBX0RFVklDRSgweDVBNUEsIGluZm8pCiAKIC8qIElDTCAq
LwogI2RlZmluZSBJTlRFTF9JQ0xfUE9SVF9GX0lEUyhpbmZvKSBcCi0tIAoyLjI2LjIKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
