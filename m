Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 455ACFAEC8
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 11:46:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35B4A6ECC9;
	Wed, 13 Nov 2019 10:46:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF8A06E1BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 10:46:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 02:46:19 -0800
X-IronPort-AV: E=Sophos;i="5.68,300,1569308400"; d="scan'208";a="198405702"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 02:46:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	intel-gfx@lists.freedesktop.org
Date: Wed, 13 Nov 2019 12:46:12 +0200
Message-Id: <20191113104612.11402-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1573227240.git.jani.nikula@intel.com>
References: <cover.1573227240.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: conn_state->max_requested_bpc is
 not a thing on DSI
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

RklYVVAgdG8gImRybS9pOTE1L2RzaTogYWRkIHN1cHBvcnQgZm9yIERTQyIuCgpTaWduZWQtb2Zm
LWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIHwgNyArKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pY2xfZHNpLmMKaW5kZXggODIzZGJkOWQ0ZDA2Li41MmJiNzVmZWIwYmUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCkBAIC0xMjcwLDggKzEyNzAsNyBAQCBzdGF0aWMg
dm9pZCBnZW4xMV9kc2lfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwK
IH0KIAogc3RhdGljIGludCBnZW4xMV9kc2lfZHNjX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLAotCQkJCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9j
b25maWcsCi0JCQkJCXN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKQorCQkJ
CQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcpCiB7CiAJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CiAJc3Ry
dWN0IGRybV9kc2NfY29uZmlnICp2ZHNjX2NmZyA9ICZwaXBlX2NvbmZpZy0+ZHNjLmNvbmZpZzsK
QEAgLTEyODAsOCArMTI3OSw2IEBAIHN0YXRpYyBpbnQgZ2VuMTFfZHNpX2RzY19jb21wdXRlX2Nv
bmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAlib29sIHVzZV9kc2M7CiAJaW50
IHJldDsKIAotCWRzY19tYXhfYnBjID0gbWluX3QoaW50LCBkc2NfbWF4X2JwYywgY29ubl9zdGF0
ZS0+bWF4X3JlcXVlc3RlZF9icGMpOwotCiAJdXNlX2RzYyA9IGludGVsX2Jpb3NfZ2V0X2RzY19w
YXJhbXMoZW5jb2RlciwgcGlwZV9jb25maWcsIGRzY19tYXhfYnBjKTsKIAlpZiAoIXVzZV9kc2Mp
CiAJCXJldHVybiAwOwpAQCAtMTM0Nyw3ICsxMzQ0LDcgQEAgc3RhdGljIGludCBnZW4xMV9kc2lf
Y29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJcGlwZV9jb25m
aWctPmNsb2NrX3NldCA9IHRydWU7CiAJcGlwZV9jb25maWctPnBvcnRfY2xvY2sgPSBpbnRlbF9k
c2lfYml0cmF0ZShpbnRlbF9kc2kpIC8gNTsKIAotCWlmIChnZW4xMV9kc2lfZHNjX2NvbXB1dGVf
Y29uZmlnKGVuY29kZXIsIHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKSkKKwlpZiAoZ2VuMTFfZHNp
X2RzY19jb21wdXRlX2NvbmZpZyhlbmNvZGVyLCBwaXBlX2NvbmZpZykpCiAJCURSTV9ERUJVR19L
TVMoIkF0dGVtcHRpbmcgdG8gdXNlIERTQyBmYWlsZWRcbiIpOwogCiAJcmV0dXJuIDA7Ci0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
