Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0756C7AA33
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 15:54:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76FB989AC3;
	Tue, 30 Jul 2019 13:54:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F7E789AC3
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 13:54:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 06:54:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,326,1559545200"; d="scan'208";a="200169747"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by fmsmga002.fm.intel.com with ESMTP; 30 Jul 2019 06:54:37 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 19:20:16 +0530
Message-Id: <20190730135024.31765-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190730135024.31765-1-anshuman.gupta@intel.com>
References: <20190730135024.31765-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/9] drm/i915/tgl: Add DC3CO required
 register and bits
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
Cc: Deak@freedesktop.org, jani.nikula@intel.com,
	Nikula@freedesktop.org, Manna@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkaW5nIGZvbGxvd2luZyBkZWZpbml0aW9uIHRvIGk5MTVfcmVnLmgKMS4gRENfU1RBVEVfRU4g
cmVnaXN0ZXIgREMzQ08gYml0IGZpZWxkcyBhbmQgbWFza3MuCjIuIFRyYW5zY29kZXIgRVhJVExJ
TkUgcmVnaXN0ZXIgYW5kIGl0cyBiaXQgZmllbGRzIGFuZCBtYXNrLgoKQ2M6IE5pa3VsYSwgSmFu
aSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogRGVhaywgSW1yZSA8aW1yZS5kZWFrQGludGVs
LmNvbT4KQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgOCArKysrKysrKwogMSBmaWxlIGNoYW5n
ZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGQyYjc2MTIx
ZDg2My4uZDQyZTk1ZGE1YjE0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTQxOTUsNiAr
NDE5NSw3IEBAIGVudW0gewogI2RlZmluZSBfVlRPVEFMX0EJMHg2MDAwYwogI2RlZmluZSBfVkJM
QU5LX0EJMHg2MDAxMAogI2RlZmluZSBfVlNZTkNfQQkweDYwMDE0CisjZGVmaW5lIF9FWElUTElO
RV9BCTB4NjAwMTgKICNkZWZpbmUgX1BJUEVBU1JDCTB4NjAwMWMKICNkZWZpbmUgX0JDTFJQQVRf
QQkweDYwMDIwCiAjZGVmaW5lIF9WU1lOQ1NISUZUX0EJMHg2MDAyOApAQCAtNDI0MSwxMSArNDI0
MiwxNiBAQCBlbnVtIHsKICNkZWZpbmUgVlRPVEFMKHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5z
LCBfVlRPVEFMX0EpCiAjZGVmaW5lIFZCTEFOSyh0cmFucykJCV9NTUlPX1RSQU5TMih0cmFucywg
X1ZCTEFOS19BKQogI2RlZmluZSBWU1lOQyh0cmFucykJCV9NTUlPX1RSQU5TMih0cmFucywgX1ZT
WU5DX0EpCisjZGVmaW5lIEVYSVRMSU5FKHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5zLCBfRVhJ
VExJTkVfQSkKICNkZWZpbmUgQkNMUlBBVCh0cmFucykJCV9NTUlPX1RSQU5TMih0cmFucywgX0JD
TFJQQVRfQSkKICNkZWZpbmUgVlNZTkNTSElGVCh0cmFucykJX01NSU9fVFJBTlMyKHRyYW5zLCBf
VlNZTkNTSElGVF9BKQogI2RlZmluZSBQSVBFU1JDKHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5z
LCBfUElQRUFTUkMpCiAjZGVmaW5lIFBJUEVfTVVMVCh0cmFucykJX01NSU9fVFJBTlMyKHRyYW5z
LCBfUElQRV9NVUxUX0EpCiAKKyNkZWZpbmUgIEVYSVRMSU5FX0VOQUJMRQkoMSA8PCAzMSkKKyNk
ZWZpbmUgIEVYSVRMSU5FX01BU0sJCSgweDFmZmYpCisjZGVmaW5lICBFWElUTElORV9TSElGVAkJ
MAorCiAvKiBIU1crIGVEUCBQU1IgcmVnaXN0ZXJzICovCiAjZGVmaW5lIEhTV19FRFBfUFNSX0JB
U0UJMHg2NDgwMAogI2RlZmluZSBCRFdfRURQX1BTUl9CQVNFCTB4NmY4MDAKQEAgLTk5OTYsNiAr
MTAwMDIsOCBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKIC8qIEdFTjkgREMgKi8KICNkZWZpbmUg
RENfU1RBVEVfRU4JCQlfTU1JTygweDQ1NTA0KQogI2RlZmluZSAgRENfU1RBVEVfRElTQUJMRQkJ
MAorI2RlZmluZSAgRENfU1RBVEVfRU5fREMzQ08JCSgxIDw8IDMwKQorI2RlZmluZSAgRENfU1RB
VEVfREMzQ09fU1RBVFVTCQkoMSA8PCAyOSkKICNkZWZpbmUgIERDX1NUQVRFX0VOX1VQVE9fREM1
CQkoMSA8PCAwKQogI2RlZmluZSAgRENfU1RBVEVfRU5fREM5CQkoMSA8PCAzKQogI2RlZmluZSAg
RENfU1RBVEVfRU5fVVBUT19EQzYJCSgyIDw8IDApCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
