Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7FA96050
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 15:40:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C1DF6E7C6;
	Tue, 20 Aug 2019 13:40:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FADF6E7C6
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 13:40:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 06:40:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="195772700"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2019 06:40:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Aug 2019 16:40:18 +0300
Message-Id: <20190820134019.13229-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190820134019.13229-1-jani.nikula@intel.com>
References: <20190820134019.13229-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/hdmi: stylistic cleanup around
 hdcp2_msg_data
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

U3BsaXQgc3RydWN0IGRlY2xhcmF0aW9uIGFuZCBhcnJheSBkZWZpbml0aW9uLiBGaXggaW5kZW50
cyBhbmQKd2hpdGVzcGFjZS4gTm8gZnVuY3Rpb25hbCBjaGFuZ2VzLgoKQ2M6IFJhbWFsaW5nYW0g
QyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hkbWkuYyB8IDM5ICsrKysrKysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MTkgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2hkbWkuYwppbmRleCBiMWNhOGU1YmRiNTYuLmQzMGM4MzE0ZWFhZiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKQEAgLTE1MTQsMjkgKzE1
MTQsMjggQEAgYm9vbCBpbnRlbF9oZG1pX2hkY3BfY2hlY2tfbGluayhzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCkKIAlyZXR1cm4gdHJ1ZTsKIH0KIAotc3RhdGljIHN0
cnVjdCBoZGNwMl9oZG1pX21zZ19kYXRhIHsKK3N0cnVjdCBoZGNwMl9oZG1pX21zZ19kYXRhIHsK
IAl1OCBtc2dfaWQ7CiAJdTMyIHRpbWVvdXQ7CiAJdTMyIHRpbWVvdXQyOwotCX0gaGRjcDJfbXNn
X2RhdGFbXSA9IHsKLQkJe0hEQ1BfMl8yX0FLRV9JTklULCAwLCAwfSwKLQkJe0hEQ1BfMl8yX0FL
RV9TRU5EX0NFUlQsIEhEQ1BfMl8yX0NFUlRfVElNRU9VVF9NUywgMH0sCi0JCXtIRENQXzJfMl9B
S0VfTk9fU1RPUkVEX0tNLCAwLCAwfSwKLQkJe0hEQ1BfMl8yX0FLRV9TVE9SRURfS00sIDAsIDB9
LAotCQl7SERDUF8yXzJfQUtFX1NFTkRfSFBSSU1FLCBIRENQXzJfMl9IUFJJTUVfUEFJUkVEX1RJ
TUVPVVRfTVMsCi0JCQkJSERDUF8yXzJfSFBSSU1FX05PX1BBSVJFRF9USU1FT1VUX01TfSwKLQkJ
e0hEQ1BfMl8yX0FLRV9TRU5EX1BBSVJJTkdfSU5GTywgSERDUF8yXzJfUEFJUklOR19USU1FT1VU
X01TLAotCQkJCTB9LAotCQl7SERDUF8yXzJfTENfSU5JVCwgMCwgMH0sCi0JCXtIRENQXzJfMl9M
Q19TRU5EX0xQUklNRSwgSERDUF8yXzJfSERNSV9MUFJJTUVfVElNRU9VVF9NUywgMH0sCi0JCXtI
RENQXzJfMl9TS0VfU0VORF9FS1MsIDAsIDB9LAotCQl7SERDUF8yXzJfUkVQX1NFTkRfUkVDVklE
X0xJU1QsCi0JCQkJSERDUF8yXzJfUkVDVklEX0xJU1RfVElNRU9VVF9NUywgMH0sCi0JCXtIRENQ
XzJfMl9SRVBfU0VORF9BQ0ssIDAsIDB9LAotCQl7SERDUF8yXzJfUkVQX1NUUkVBTV9NQU5BR0Us
IDAsIDB9LAotCQl7SERDUF8yXzJfUkVQX1NUUkVBTV9SRUFEWSwgSERDUF8yXzJfU1RSRUFNX1JF
QURZX1RJTUVPVVRfTVMsCi0JCQkJMH0sCi0JfTsKK307CisKK3N0YXRpYyBzdHJ1Y3QgaGRjcDJf
aGRtaV9tc2dfZGF0YSBoZGNwMl9tc2dfZGF0YVtdID0geworCXsgSERDUF8yXzJfQUtFX0lOSVQs
IDAsIDAgfSwKKwl7IEhEQ1BfMl8yX0FLRV9TRU5EX0NFUlQsIEhEQ1BfMl8yX0NFUlRfVElNRU9V
VF9NUywgMCB9LAorCXsgSERDUF8yXzJfQUtFX05PX1NUT1JFRF9LTSwgMCwgMCB9LAorCXsgSERD
UF8yXzJfQUtFX1NUT1JFRF9LTSwgMCwgMCB9LAorCXsgSERDUF8yXzJfQUtFX1NFTkRfSFBSSU1F
LCBIRENQXzJfMl9IUFJJTUVfUEFJUkVEX1RJTUVPVVRfTVMsCisJICBIRENQXzJfMl9IUFJJTUVf
Tk9fUEFJUkVEX1RJTUVPVVRfTVMgfSwKKwl7IEhEQ1BfMl8yX0FLRV9TRU5EX1BBSVJJTkdfSU5G
TywgSERDUF8yXzJfUEFJUklOR19USU1FT1VUX01TLCAwIH0sCisJeyBIRENQXzJfMl9MQ19JTklU
LCAwLCAwIH0sCisJeyBIRENQXzJfMl9MQ19TRU5EX0xQUklNRSwgSERDUF8yXzJfSERNSV9MUFJJ
TUVfVElNRU9VVF9NUywgMCB9LAorCXsgSERDUF8yXzJfU0tFX1NFTkRfRUtTLCAwLCAwIH0sCisJ
eyBIRENQXzJfMl9SRVBfU0VORF9SRUNWSURfTElTVCwgSERDUF8yXzJfUkVDVklEX0xJU1RfVElN
RU9VVF9NUywgMCB9LAorCXsgSERDUF8yXzJfUkVQX1NFTkRfQUNLLCAwLCAwIH0sCisJeyBIRENQ
XzJfMl9SRVBfU1RSRUFNX01BTkFHRSwgMCwgMCB9LAorCXsgSERDUF8yXzJfUkVQX1NUUkVBTV9S
RUFEWSwgSERDUF8yXzJfU1RSRUFNX1JFQURZX1RJTUVPVVRfTVMsIDAgfSwKK307CiAKIHN0YXRp
YwogaW50IGludGVsX2hkbWlfaGRjcDJfcmVhZF9yeF9zdGF0dXMoc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQsCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
