Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4574E2CD053
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 08:24:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 286DE6E098;
	Thu,  3 Dec 2020 07:24:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 982E96E096
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 07:24:08 +0000 (UTC)
IronPort-SDR: gLPFH8LSGdyQhzthikBlu8yeDIWEh4d0h+poSa6nva3bDNdih7CstWAFv7C6FkHHxtCVRAwjSo
 raeperP4Hqgg==
X-IronPort-AV: E=McAfee;i="6000,8403,9823"; a="191375285"
X-IronPort-AV: E=Sophos;i="5.78,388,1599548400"; d="scan'208";a="191375285"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2020 23:24:08 -0800
IronPort-SDR: 678jmeNZbnzPf47MuNTZfuVsjZ4BtXddPvFmBxKf8FJcYpazBh8uM8LxVXf6dRi1v5HNCU1C7v
 Khn/J6e68nbg==
X-IronPort-AV: E=Sophos;i="5.78,388,1599548400"; d="scan'208";a="361698250"
Received: from bgersten-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.252.132.63])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2020 23:24:08 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Dec 2020 23:23:59 -0800
Message-Id: <20201203072359.156682-2-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201203072359.156682-1-aditya.swarup@intel.com>
References: <20201203072359.156682-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/tgl: Add bound checks and
 simplify TGL REVID macros
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

QWRkIGJvdW5kIGNoZWNrcyBmb3IgVEdMIFJFViBJRCBhcnJheS4gU2luY2UsIHRoZXJlIG1pZ2h0
CmJlIGEgcG9zc2liaWxpdHkgb2YgdXNpbmcgb2xkZXIga2VybmVscyBvbiBsYXRlc3QgcGxhdGZv
cm0KcmV2aXNpb25zLCByZXN1bHRpbmcgaW4gb3V0IG9mIGJvdW5kcyBhY2Nlc3MgZm9yIHJldiBJ
RCBhcnJheS4KSW4gdGhpcyBzY2VuYXJpbywgdXNlIHRoZSBsYXRlc3QgcmV2IElEIGF2YWlsYWJs
ZSBhbmQgYXBwbHkKdGhvc2UgV0FzLgoKQWxzbywgc2ltcGxpZnkgR1QgbWFjcm9zIGZvciBUR0wg
cmV2IElEIHRvIHJldXNlIHRnbF9yZXZpZHNfZ2V0KCkuCgpDYzogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9w
ZXJAaW50ZWwuY29tPgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5j
b20+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQWRp
dHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCB8IDM0ICsrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oCmluZGV4IDJlMjE0OWM5YTJmNC4uMzdjMmRmMTljZTUyIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTE1NzMsMTYgKzE1NzMsMzAgQEAgZW51bSB7CiAJVEdMX1JF
VklEX0QwLAogfTsKIAotZXh0ZXJuIGNvbnN0IHN0cnVjdCBpOTE1X3Jldl9zdGVwcGluZ3MgdGds
X3V5X3Jldmlkc1tdOwotZXh0ZXJuIGNvbnN0IHN0cnVjdCBpOTE1X3Jldl9zdGVwcGluZ3MgdGds
X3Jldmlkc1tdOworI2RlZmluZSBUR0xfVVlfUkVWSURTX1NJWkUJNAorI2RlZmluZSBUR0xfUkVW
SURTX1NJWkUJCTIKKworZXh0ZXJuIGNvbnN0IHN0cnVjdCBpOTE1X3Jldl9zdGVwcGluZ3MgdGds
X3V5X3Jldmlkc1tUR0xfVVlfUkVWSURTX1NJWkVdOworZXh0ZXJuIGNvbnN0IHN0cnVjdCBpOTE1
X3Jldl9zdGVwcGluZ3MgdGdsX3Jldmlkc1tUR0xfUkVWSURTX1NJWkVdOwogCiBzdGF0aWMgaW5s
aW5lIGNvbnN0IHN0cnVjdCBpOTE1X3Jldl9zdGVwcGluZ3MgKgogdGdsX3Jldmlkc19nZXQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewotCWlmIChJU19UR0xfVShkZXZfcHJp
dikgfHwgSVNfVEdMX1koZGV2X3ByaXYpKQotCQlyZXR1cm4gJnRnbF91eV9yZXZpZHNbSU5URUxf
UkVWSUQoZGV2X3ByaXYpXTsKLQllbHNlCi0JCXJldHVybiAmdGdsX3Jldmlkc1tJTlRFTF9SRVZJ
RChkZXZfcHJpdildOworCXU4IHJldmlkID0gSU5URUxfUkVWSUQoZGV2X3ByaXYpOworCXU4IHNp
emU7CisJY29uc3Qgc3RydWN0IGk5MTVfcmV2X3N0ZXBwaW5ncyAqdGdsX3JldmlkX3RibDsKKwor
CWlmIChJU19UR0xfVShkZXZfcHJpdikgfHwgSVNfVEdMX1koZGV2X3ByaXYpKSB7CisJCXRnbF9y
ZXZpZF90YmwgPSB0Z2xfdXlfcmV2aWRzOworCQlzaXplID0gQVJSQVlfU0laRSh0Z2xfdXlfcmV2
aWRzKTsKKwl9IGVsc2UgeworCQl0Z2xfcmV2aWRfdGJsID0gdGdsX3JldmlkczsKKwkJc2l6ZSA9
IEFSUkFZX1NJWkUodGdsX3Jldmlkcyk7CisJfQorCisJcmV2aWQgPSBtaW5fdCh1OCwgcmV2aWQs
IHNpemUgLSAxKTsKKworCXJldHVybiAmdGdsX3JldmlkX3RibFtyZXZpZF07CiB9CiAKICNkZWZp
bmUgSVNfVEdMX0RJU1BfUkVWSUQocCwgc2luY2UsIHVudGlsKSBcCkBAIC0xNTkyLDE0ICsxNjA2
LDE0IEBAIHRnbF9yZXZpZHNfZ2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
IAogI2RlZmluZSBJU19UR0xfVVlfR1RfUkVWSUQocCwgc2luY2UsIHVudGlsKSBcCiAJKChJU19U
R0xfVShwKSB8fCBJU19UR0xfWShwKSkgJiYgXAotCSB0Z2xfdXlfcmV2aWRzW0lOVEVMX1JFVklE
KHApXS5ndF9zdGVwcGluZyA+PSAoc2luY2UpICYmIFwKLQkgdGdsX3V5X3Jldmlkc1tJTlRFTF9S
RVZJRChwKV0uZ3Rfc3RlcHBpbmcgPD0gKHVudGlsKSkKKwkgdGdsX3Jldmlkc19nZXQocCktPmd0
X3N0ZXBwaW5nID49IChzaW5jZSkgJiYgXAorCSB0Z2xfcmV2aWRzX2dldChwKS0+Z3Rfc3RlcHBp
bmcgPD0gKHVudGlsKSkKIAogI2RlZmluZSBJU19UR0xfR1RfUkVWSUQocCwgc2luY2UsIHVudGls
KSBcCiAJKElTX1RJR0VSTEFLRShwKSAmJiBcCiAJICEoSVNfVEdMX1UocCkgfHwgSVNfVEdMX1ko
cCkpICYmIFwKLQkgdGdsX3Jldmlkc1tJTlRFTF9SRVZJRChwKV0uZ3Rfc3RlcHBpbmcgPj0gKHNp
bmNlKSAmJiBcCi0JIHRnbF9yZXZpZHNbSU5URUxfUkVWSUQocCldLmd0X3N0ZXBwaW5nIDw9ICh1
bnRpbCkpCisJIHRnbF9yZXZpZHNfZ2V0KHApLT5ndF9zdGVwcGluZyA+PSAoc2luY2UpICYmIFwK
KwkgdGdsX3Jldmlkc19nZXQocCktPmd0X3N0ZXBwaW5nIDw9ICh1bnRpbCkpCiAKICNkZWZpbmUg
UktMX1JFVklEX0EwCQkweDAKICNkZWZpbmUgUktMX1JFVklEX0IwCQkweDEKLS0gCjIuMjcuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
