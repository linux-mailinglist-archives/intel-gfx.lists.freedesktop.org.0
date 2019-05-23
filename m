Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CA528DC4
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 01:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01DDF6E091;
	Thu, 23 May 2019 23:31:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 819896E087
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 23:31:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 16:31:34 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga006.fm.intel.com with ESMTP; 23 May 2019 16:31:33 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.139.89])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4NNVN0e023503; Fri, 24 May 2019 00:31:32 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2019 23:30:34 +0000
Message-Id: <20190523233049.28020-8-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190523233049.28020-1-michal.wajdeczko@intel.com>
References: <20190523233049.28020-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 07/22] drm/i915/guc: Update GuC
 sample-forcewake command
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

TmV3IEd1QyBmaXJtd2FyZXMgdXNlIGRpZmZlcmVudCBhY3Rpb24gY29kZSB2YWx1ZSBmb3IgdGhp
cyBjb21tYW5kLgoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRl
Y3prb0BpbnRlbC5jb20+CkNjOiBKb2huIFNwb3Rzd29vZCA8am9obi5hLnNwb3Rzd29vZEBpbnRl
bC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9A
aW50ZWwuY29tPgpSZXZpZXdlZC1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5j
ZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvaG4gU3BvdHN3b29kIDxqb2hu
LmEuc3BvdHN3b29kQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9n
dWNfZndpZi5oIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3aWYu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19md2lmLmgKaW5kZXggNTkyYzc4YzFl
Y2M4Li45YjQ0MzZhY2JhMTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2d1Y19md2lmLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3aWYuaApA
QCAtNjA5LDcgKzYwOSw2IEBAIGVudW0gaW50ZWxfZ3VjX2FjdGlvbiB7CiAJSU5URUxfR1VDX0FD
VElPTl9ERUZBVUxUID0gMHgwLAogCUlOVEVMX0dVQ19BQ1RJT05fUkVRVUVTVF9QUkVFTVBUSU9O
ID0gMHgyLAogCUlOVEVMX0dVQ19BQ1RJT05fUkVRVUVTVF9FTkdJTkVfUkVTRVQgPSAweDMsCi0J
SU5URUxfR1VDX0FDVElPTl9TQU1QTEVfRk9SQ0VXQUtFID0gMHg2LAogCUlOVEVMX0dVQ19BQ1RJ
T05fQUxMT0NBVEVfRE9PUkJFTEwgPSAweDEwLAogCUlOVEVMX0dVQ19BQ1RJT05fREVBTExPQ0FU
RV9ET09SQkVMTCA9IDB4MjAsCiAJSU5URUxfR1VDX0FDVElPTl9MT0dfQlVGRkVSX0ZJTEVfRkxV
U0hfQ09NUExFVEUgPSAweDMwLApAQCAtNjE3LDYgKzYxNiw3IEBAIGVudW0gaW50ZWxfZ3VjX2Fj
dGlvbiB7CiAJSU5URUxfR1VDX0FDVElPTl9FTlRFUl9TX1NUQVRFID0gMHg1MDEsCiAJSU5URUxf
R1VDX0FDVElPTl9FWElUX1NfU1RBVEUgPSAweDUwMiwKIAlJTlRFTF9HVUNfQUNUSU9OX1NMUENf
UkVRVUVTVCA9IDB4MzAwMywKKwlJTlRFTF9HVUNfQUNUSU9OX1NBTVBMRV9GT1JDRVdBS0UgPSAw
eDMwMDUsCiAJSU5URUxfR1VDX0FDVElPTl9BVVRIRU5USUNBVEVfSFVDID0gMHg0MDAwLAogCUlO
VEVMX0dVQ19BQ1RJT05fUkVHSVNURVJfQ09NTUFORF9UUkFOU1BPUlRfQlVGRkVSID0gMHg0NTA1
LAogCUlOVEVMX0dVQ19BQ1RJT05fREVSRUdJU1RFUl9DT01NQU5EX1RSQU5TUE9SVF9CVUZGRVIg
PSAweDQ1MDYsCi0tIAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
