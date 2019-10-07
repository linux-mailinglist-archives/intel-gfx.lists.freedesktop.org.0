Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D4FCDE7B
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 11:52:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB90C89E05;
	Mon,  7 Oct 2019 09:52:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77B6089E05
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 09:52:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 02:52:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,267,1566889200"; d="scan'208";a="183384990"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga007.jf.intel.com with ESMTP; 07 Oct 2019 02:52:05 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Oct 2019 15:16:07 +0530
Message-Id: <20191007094607.2111-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191003081738.22101-2-anshuman.gupta@intel.com>
References: <20191003081738.22101-2-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 1/6] drm/i915/tgl: Add DC3CO required
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkaW5nIGZvbGxvd2luZyBkZWZpbml0aW9uIHRvIGk5MTVfcmVnLmgKMS4gRENfU1RBVEVfRU4g
cmVnaXN0ZXIgREMzQ08gYml0IGZpZWxkcyBhbmQgbWFza3MuCiAgIERDM0NPIGVuYWJsZSBiaXQg
d2lsbCBiZSB1c2VkIGJ5IGRyaXZlciB0byBtYWtlIERDM0NPCiAgIHJlYWR5IGZvciBETUMgZi93
IGFuZCBzdGF0dXMgYml0IHdpbGwgYmUgdXNlZCBhcyBEQzNDTwogICBlbnRyeSBzdGF0dXMuCjIu
IFRyYW5zY29kZXIgRVhJVExJTkUgcmVnaXN0ZXIgYW5kIGl0cyBiaXQgZmllbGRzIGFuZCBtYXNr
LgogICBUcmFuc2NvZGVyIEVYSVRMSU5FIGVuYWJsZSBiaXQgcmVwcmVzZW50cyBQU1IyIGlkbGUg
ZnJhbWUKICAgcmVzZXQgc2hvdWxkIGJlIGFwcGxpZWQgYXQgZXhpdCBsaW5lIGFuZCBleGl0bGlu
ZXMgbWFzawogICByZXByZXNlbnQgcmVxdWlyZWQgbnVtYmVyIG9mIHNjYW5saW5lcyBhdCB3aGlj
aCBEQzNDTwogICBleGl0IGhhcHBlbnMuCgogICBCLlNwZWNzOjQ5MTk2Cgp2MTogVXNlIG9mIFJF
R19CSVQgYW5kIHVzaW5nIGV4dHJhIHNwYWNlIGZvciBFWElUTElORV8gbWFjcm8KICAgIGRlZmlu
aXRpb24uIFtBbmltZXNoXQp2MjogR3JvdXBpbmcgRVhJVExJTkUgcmVnIGJpdHMgd2l0aCBFWElU
TElORSh0cmFucykgZGVmaW5lLAogICAgbm8gZnVuY3Rpb25hbCBjaGFuZ2UuIFtWaWxsZV0KCkNj
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogSW1yZSBEZWFrIDxpbXJl
LmRlYWtAaW50ZWwuY29tPgpDYzogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+ClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4K
UmV2aWV3ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgOCArKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDgg
aW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGVlZmQ3ODliOWEyOC4u
M2QzNTgwZWEzOGY3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTQxNDQsNiArNDE0NCw3
IEBAIGVudW0gewogI2RlZmluZSBfVlRPVEFMX0EJMHg2MDAwYwogI2RlZmluZSBfVkJMQU5LX0EJ
MHg2MDAxMAogI2RlZmluZSBfVlNZTkNfQQkweDYwMDE0CisjZGVmaW5lIF9FWElUTElORV9BCTB4
NjAwMTgKICNkZWZpbmUgX1BJUEVBU1JDCTB4NjAwMWMKICNkZWZpbmUgX0JDTFJQQVRfQQkweDYw
MDIwCiAjZGVmaW5lIF9WU1lOQ1NISUZUX0EJMHg2MDAyOApAQCAtNDE5NSw2ICs0MTk2LDExIEBA
IGVudW0gewogI2RlZmluZSBQSVBFU1JDKHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5zLCBfUElQ
RUFTUkMpCiAjZGVmaW5lIFBJUEVfTVVMVCh0cmFucykJX01NSU9fVFJBTlMyKHRyYW5zLCBfUElQ
RV9NVUxUX0EpCiAKKyNkZWZpbmUgRVhJVExJTkUodHJhbnMpCQlfTU1JT19UUkFOUzIodHJhbnMs
IF9FWElUTElORV9BKQorI2RlZmluZSAgIEVYSVRMSU5FX0VOQUJMRQlSRUdfQklUKDMxKQorI2Rl
ZmluZSAgIEVYSVRMSU5FX01BU0sJCVJFR19HRU5NQVNLKDEyLCAwKQorI2RlZmluZSAgIEVYSVRM
SU5FX1NISUZUCTAKKwogLyoKICAqIEhTVysgZURQIFBTUiByZWdpc3RlcnMKICAqCkBAIC0xMDI4
OCw2ICsxMDI5NCw4IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewogLyogR0VOOSBEQyAqLwogI2Rl
ZmluZSBEQ19TVEFURV9FTgkJCV9NTUlPKDB4NDU1MDQpCiAjZGVmaW5lICBEQ19TVEFURV9ESVNB
QkxFCQkwCisjZGVmaW5lICBEQ19TVEFURV9FTl9EQzNDTwkJUkVHX0JJVCgzMCkKKyNkZWZpbmUg
IERDX1NUQVRFX0RDM0NPX1NUQVRVUwkJUkVHX0JJVCgyOSkKICNkZWZpbmUgIERDX1NUQVRFX0VO
X1VQVE9fREM1CQkoMSA8PCAwKQogI2RlZmluZSAgRENfU1RBVEVfRU5fREM5CQkoMSA8PCAzKQog
I2RlZmluZSAgRENfU1RBVEVfRU5fVVBUT19EQzYJCSgyIDw8IDApCi0tIAoyLjIxLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
