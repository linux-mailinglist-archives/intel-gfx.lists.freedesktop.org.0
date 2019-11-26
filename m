Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 414EA109F6A
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 14:43:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79CBD6E3CE;
	Tue, 26 Nov 2019 13:43:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F7E26E3CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 13:43:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 05:43:40 -0800
X-IronPort-AV: E=Sophos;i="5.69,245,1571727600"; d="scan'208";a="206462685"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 05:43:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 15:42:43 +0200
Message-Id: <545d639dd91beececd6a85c6e39864ad41718151.1574775655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1574775655.git.jani.nikula@intel.com>
References: <cover.1574775655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v3 08/13] drm/i915/dsi: abstract afe_clk
 calculation
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

V2UnbGwgbWFrZSBtb3JlIHVzZSBvZiBpdCBpbiB0aGUgZnV0dXJlLgoKQ2M6IFZhbmRpdGEgS3Vs
a2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ljbF9kc2kuYyB8IDE4ICsrKysrKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEzIGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lj
bF9kc2kuYwppbmRleCBlZjUzZWQ2ZDNlY2YuLmRlMzc0MzIzM2RjYiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKQEAgLTMwMSwxOCArMzAxLDI2IEBAIHN0YXRpYyB2b2lk
IGNvbmZpZ3VyZV9kdWFsX2xpbmtfbW9kZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwK
IAlJOTE1X1dSSVRFKERTU19DVEwxLCBkc3NfY3RsMSk7CiB9CiAKKy8qIGFrYSBEU0kgOFggY2xv
Y2sgKi8KK3N0YXRpYyBpbnQgYWZlX2NsayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikK
K3sKKwlzdHJ1Y3QgaW50ZWxfZHNpICppbnRlbF9kc2kgPSBlbmNfdG9faW50ZWxfZHNpKCZlbmNv
ZGVyLT5iYXNlKTsKKwlpbnQgYnBwOworCisJYnBwID0gbWlwaV9kc2lfcGl4ZWxfZm9ybWF0X3Rv
X2JwcChpbnRlbF9kc2ktPnBpeGVsX2Zvcm1hdCk7CisKKwlyZXR1cm4gRElWX1JPVU5EX0NMT1NF
U1QoaW50ZWxfZHNpLT5wY2xrICogYnBwLCBpbnRlbF9kc2ktPmxhbmVfY291bnQpOworfQorCiBz
dGF0aWMgdm9pZCBnZW4xMV9kc2lfcHJvZ3JhbV9lc2NfY2xrX2RpdihzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlcikKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKIAlzdHJ1Y3QgaW50ZWxfZHNpICppbnRlbF9kc2kg
PSBlbmNfdG9faW50ZWxfZHNpKCZlbmNvZGVyLT5iYXNlKTsKIAllbnVtIHBvcnQgcG9ydDsKLQl1
MzIgYnBwID0gbWlwaV9kc2lfcGl4ZWxfZm9ybWF0X3RvX2JwcChpbnRlbF9kc2ktPnBpeGVsX2Zv
cm1hdCk7Ci0JdTMyIGFmZV9jbGtfa2h6OyAvKiA4WCBDbG9jayAqLworCWludCBhZmVfY2xrX2to
ejsKIAl1MzIgZXNjX2Nsa19kaXZfbTsKIAotCWFmZV9jbGtfa2h6ID0gRElWX1JPVU5EX0NMT1NF
U1QoaW50ZWxfZHNpLT5wY2xrICogYnBwLAotCQkJCQlpbnRlbF9kc2ktPmxhbmVfY291bnQpOwot
CisJYWZlX2Nsa19raHogPSBhZmVfY2xrKGVuY29kZXIpOwogCWVzY19jbGtfZGl2X20gPSBESVZf
Uk9VTkRfVVAoYWZlX2Nsa19raHosIERTSV9NQVhfRVNDX0NMSyk7CiAKIAlmb3JfZWFjaF9kc2lf
cG9ydChwb3J0LCBpbnRlbF9kc2ktPnBvcnRzKSB7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
