Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC812C4F05
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 08:00:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 677AC6E593;
	Thu, 26 Nov 2020 07:00:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E1C46E593
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 07:00:51 +0000 (UTC)
IronPort-SDR: yOH+AzUw1czIXtMEVuatZgZ3uw+bM9Wq3a8XK0u3v+pdLN4Hx0A0f9KQ76Og0I998zwka5ozj4
 BV8Aob2u87aw==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="151503705"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="151503705"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:00:50 -0800
IronPort-SDR: h1k/i/PPdFprO1mlg09MjB5yPWFd4e+bmwsZ5ZURuvmSKMPM7wJpakeTfsCqqkLGi9Acc8L5wb
 0HxP2TWJmFdA==
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="362700095"
Received: from sbhattar-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.21.231])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:00:50 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Nov 2020 23:00:40 -0800
Message-Id: <20201126070041.369530-1-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Fix REVID macros for TGL to
 fetch correct stepping
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rml4IFRHTCBSRVZJRCBtYWNyb3MgdG8gZmV0Y2ggY29ycmVjdCBkaXNwbGF5L2d0IHN0ZXBwaW5n
IGJhc2VkCm9uIFNPQyByZXYgaWQgZnJvbSBJTlRFTF9SRVZJRCgpIG1hY3JvLiBQcmV2aW91c2x5
LCB3ZSB3ZXJlIGp1c3QKcmV0dXJuaW5nIHRoZSBmaXJzdCBlbGVtZW50IG9mIHRoZSByZXZpZCBh
cnJheSBpbnN0ZWFkIG9mIHVzaW5nCnRoZSBjb3JyZWN0IGluZGV4IGJhc2VkIG9uIFNPQyByZXYg
aWQuCgpGaXhlczogKCJkcm0vaTkxNS90Z2w6IEZpeCBzdGVwcGluZyBXQSBtYXRjaGluZyIpCkNj
OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KQ2M6IE1hdHQg
Um9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIHwgMTIgKysrKysrLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oCmluZGV4IDE1YmU4ZGViYWU1NC4uMGEzZWU0ZjlkYzBhIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmgKQEAgLTE1NzksOSArMTU3OSw5IEBAIHN0YXRpYyBpbmxpbmUgY29uc3Qg
c3RydWN0IGk5MTVfcmV2X3N0ZXBwaW5ncyAqCiB0Z2xfcmV2aWRzX2dldChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJaWYgKElTX1RHTF9VKGRldl9wcml2KSB8fCBJU19U
R0xfWShkZXZfcHJpdikpCi0JCXJldHVybiB0Z2xfdXlfcmV2aWRzOworCQlyZXR1cm4gJnRnbF91
eV9yZXZpZHNbSU5URUxfUkVWSUQoZGV2X3ByaXYpXTsKIAllbHNlCi0JCXJldHVybiB0Z2xfcmV2
aWRzOworCQlyZXR1cm4gJnRnbF9yZXZpZHNbSU5URUxfUkVWSUQoZGV2X3ByaXYpXTsKIH0KIAog
I2RlZmluZSBJU19UR0xfRElTUF9SRVZJRChwLCBzaW5jZSwgdW50aWwpIFwKQEAgLTE1OTEsMTQg
KzE1OTEsMTQgQEAgdGdsX3Jldmlkc19nZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQogCiAjZGVmaW5lIElTX1RHTF9VWV9HVF9SRVZJRChwLCBzaW5jZSwgdW50aWwpIFwKIAko
KElTX1RHTF9VKHApIHx8IElTX1RHTF9ZKHApKSAmJiBcCi0JIHRnbF91eV9yZXZpZHMtPmd0X3N0
ZXBwaW5nID49IChzaW5jZSkgJiYgXAotCSB0Z2xfdXlfcmV2aWRzLT5ndF9zdGVwcGluZyA8PSAo
dW50aWwpKQorCSB0Z2xfdXlfcmV2aWRzW0lOVEVMX1JFVklEKHApXS5ndF9zdGVwcGluZyA+PSAo
c2luY2UpICYmIFwKKwkgdGdsX3V5X3Jldmlkc1tJTlRFTF9SRVZJRChwKV0uZ3Rfc3RlcHBpbmcg
PD0gKHVudGlsKSkKIAogI2RlZmluZSBJU19UR0xfR1RfUkVWSUQocCwgc2luY2UsIHVudGlsKSBc
CiAJKElTX1RJR0VSTEFLRShwKSAmJiBcCiAJICEoSVNfVEdMX1UocCkgfHwgSVNfVEdMX1kocCkp
ICYmIFwKLQkgdGdsX3Jldmlkcy0+Z3Rfc3RlcHBpbmcgPj0gKHNpbmNlKSAmJiBcCi0JIHRnbF9y
ZXZpZHMtPmd0X3N0ZXBwaW5nIDw9ICh1bnRpbCkpCisJIHRnbF9yZXZpZHNbSU5URUxfUkVWSUQo
cCldLmd0X3N0ZXBwaW5nID49IChzaW5jZSkgJiYgXAorCSB0Z2xfcmV2aWRzW0lOVEVMX1JFVklE
KHApXS5ndF9zdGVwcGluZyA8PSAodW50aWwpKQogCiAjZGVmaW5lIFJLTF9SRVZJRF9BMAkJMHgw
CiAjZGVmaW5lIFJLTF9SRVZJRF9CMAkJMHgxCi0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
