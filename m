Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF49B5B18
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 07:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 130B96EDF2;
	Wed, 18 Sep 2019 05:50:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D34EA6EDF2
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 05:50:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 22:50:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,519,1559545200"; d="scan'208";a="177615425"
Received: from gksingh.iind.intel.com ([10.66.179.29])
 by orsmga007.jf.intel.com with ESMTP; 17 Sep 2019 22:50:46 -0700
From: Gaurav K Singh <gaurav.k.singh@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Sep 2019 11:23:53 +0530
Message-Id: <1568786033-1434-1-git-send-email-gaurav.k.singh@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [PATCH] drm/i915: Fix S0ix/S3 suspend stress issue
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RHVyaW5nIFMwaXgvUzMgc3VzcGVuZCBzdHJlc3MgdGVzdCBvbiBDb21ldGxha2UgY2hyb21lYm9v
aywKYWZ0ZXIgZmV3IGl0ZXJhdGlvbnMgd2UgYXJlIHNlZWluZyBmYWlsdXJlIHdydCBQU1IgbGlu
ayBDUkMKRXJyb3IgYW5kIHN0cmVzcyB0ZXN0IHN0b3BzLiBUaGlzIFMwaXggdGVzdCBpcyBmYWls
aW5nIG9ubHkKd2hlbiB0aGVyZSBpcyBhIENSQyBtaXNtYXRjaC4gSW4gY2FzZSBvZiBDUkMgbWlz
bWF0Y2gsIHBhbmVsCmdlbmVyYXRlcyBJUlFfSEQgYW5kIHdoZW5ldmVyIHRoZXJlIGlzIENSQyBt
aXNtYXRjaCwgd2UgYXJlCmRpc2FibGluZyBQU1IyIGluIGRyaXZlci4KCkJ5IG5vdCBkaXNhYmxp
bmcgUFNSMiBpbiBkcml2ZXIgYW5kIG9ubHkgYnkgd3JpdGluZyAxIHRvIGNsZWFyCnN0aWNreSBi
aXQgMCBpbiBEUENEIDB4MjAwNiBpbiBwYW5lbCxpc3N1ZSBnb2VzIGF3YXkuCkNvbXBsZXRlZCAy
NTAwIFMwaXgvUzMgdGVzdCBjeWNsZXMgb24gbXVsdGlwbGUgQ01MIGNocm9tZWJvb2tzLgoKQXMg
cGVyIEVEUCBzcGVjIGZvciBDUkMgbWlzbWF0Y2gsIG5vdGhpbmcgaGFzIGJlZW4gbWVudGlvbmVk
CmV4cGxpY2l0bHkgZm9yIFNvdXJjZSBkZXZpY2UsIG9ubHkgYnkgd3JpdGluZyAxIHRvIGNsZWFy
CnN0aWNreSBiaXQgMCBpbiBEUENEIDB4MjAwNiBpbiBzaW5rIGlzIG1lbnRpb25lZC4KClNpZ25l
ZC1vZmYtYnk6IEdhdXJhdiBLIFNpbmdoIDxnYXVyYXYuay5zaW5naEBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDYgKy0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5kZXggYjNjN2VlZjUzYmYzLi41MDJlMjlkYmJl
YTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwpAQCAtMTMyNSwx
NSArMTMyNSwxMSBAQCB2b2lkIGludGVsX3Bzcl9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKQogCWlmICh2YWwgJiBEUF9QU1JfVlNDX1NEUF9VTkNPUlJFQ1RBQkxFX0VSUk9S
KQogCQlEUk1fREVCVUdfS01TKCJQU1IgVlNDIFNEUCB1bmNvcnJlY3RhYmxlIGVycm9yLCBkaXNh
YmxpbmcgUFNSXG4iKTsKIAlpZiAodmFsICYgRFBfUFNSX0xJTktfQ1JDX0VSUk9SKQotCQlEUk1f
RVJST1IoIlBTUiBMaW5rIENSQyBlcnJvciwgZGlzYWJsaW5nIFBTUlxuIik7CisJCURSTV9ERUJV
R19LTVMoIlBTUiBMaW5rIENSQyBlcnJvciwgY2xlYXJpbmcgUFNSIGVycm9yIHN0YXR1cyBEUENE
XG4iKTsKIAogCWlmICh2YWwgJiB+ZXJyb3JzKQogCQlEUk1fRVJST1IoIlBTUl9FUlJPUl9TVEFU
VVMgdW5oYW5kbGVkIGVycm9ycyAleFxuIiwKIAkJCSAgdmFsICYgfmVycm9ycyk7Ci0JaWYgKHZh
bCAmIGVycm9ycykgewotCQlpbnRlbF9wc3JfZGlzYWJsZV9sb2NrZWQoaW50ZWxfZHApOwotCQlw
c3ItPnNpbmtfbm90X3JlbGlhYmxlID0gdHJ1ZTsKLQl9CiAJLyogY2xlYXIgc3RhdHVzIHJlZ2lz
dGVyICovCiAJZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfRVJST1Jf
U1RBVFVTLCB2YWwpOwogZXhpdDoKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
