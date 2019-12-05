Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 696C2113B74
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 06:49:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FC876F560;
	Thu,  5 Dec 2019 05:49:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18E396F560
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 05:49:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Dec 2019 21:49:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,279,1571727600"; d="scan'208";a="219114852"
Received: from gksingh.iind.intel.com ([10.66.179.29])
 by fmsmga001.fm.intel.com with ESMTP; 04 Dec 2019 21:49:42 -0800
From: Gaurav K Singh <gaurav.k.singh@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Dec 2019 11:22:50 +0530
Message-Id: <1575525170-20284-1-git-send-email-gaurav.k.singh@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1574611468-3319-1-git-send-email-gaurav.k.singh@intel.com>
References: <1574611468-3319-1-git-send-email-gaurav.k.singh@intel.com>
Subject: [Intel-gfx] [PATCH] [v2] drm/i915: Do not mark as sink as not
 reliable to PSR runtime errors
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

SW4gY2FzZSBvZiBDUkMgbWlzbWF0Y2gsIHBhbmVsIGdlbmVyYXRlcyBJUlFfSEQgYW5kClBTUjIg
Z2V0cyBkaXNhYmxlZCBieSBpOTE1IGRyaXZlci4gRHVlIHRvIHRoaXMsIFBTUjIgd2lsbApvbmx5
IGJlIGVuYWJsZWQgYmFjayBvbmx5IGlmIHN5c3RlbSBpcyByZWJvb3RlZCBvciBjb2xkIGJvb3Qu
ClNvLCBpbiBjYXNlcyBvZiBzdXNwZW5kIHJlc3VtZSBzdHJlc3MgdGVzdCBhbmQgUzBpeCBzdHJl
c3MgdGVzdCwKd2hlbiB3ZSBlbmNvdW50ZXIgdGhpcyBDUkMgaXNzdWUgb24gYSBwYXJ0aWN1bGFy
IGl0ZXJhdGlvbiwKb25jZSBQU1IyIGlzIGRpc2FibGVkLGl0IHJlbWFpbnMgZGlzYWJsZWQgdGhy
b3VnaG91dCBhbGwgdGhlCmN5Y2xpbmcgaXRlcmF0aW9ucyB1bnRpbCB0aGUgc3lzdGVtIGlzIHJl
Ym9vdGVkLgoKS2VlcGluZyB0aGlzIGluIG1pbmQsIG1hbnkgdGltZXMgdXNlcnMgZG8gbm90IHJl
Ym9vdCB0aGVpciBzeXN0ZW0gYW5kCnRoZXkganVzdCBrZWVwIGxpZCBvZmYvb24gb3Igc3VzcGVu
ZC9yZXN1bWUuIEluIHRoZXNlIHNjZW5hcmlvcwppbiBjYXNlIG9mIENSQyBpc3N1ZSwgcGFuZWwg
d2lsbCBiZWNvbWUgbm9uLVBTUjIgd2hpY2ggd2lsbCBldmVudHVhbGx5CmRyYWluIG91dCBiYXR0
ZXJ5LgoKSW4gb3JkZXIgdG8gZml4IHRoaXMgYmVoYXZpb3IsIGRpZCBub3Qgc2V0IHRoZSAic2lu
a19ub3RfcmVsaWFibGUiIGZsYWcKdG8gYmUgdHJ1ZSwgc28gdGhhdCBpbnRlbF9wc3JfY29tcHV0
ZV9jb25maWcoKSBjYW4gcGFzcyBpbiBjYXNlIG9mIGEKbm9ybWFsIG1vZGVzZXQgd2hpY2ggd2ls
bCBsZWFkIHRvIGVuYWJsaW5nIFBTUjIgYWdhaW4gaW4gbmV4dCBpdGVyYXRpb24Kb2Ygc3VzcGVu
ZC9yZXN1bWUgb3IgUzBpeCBjeWNsZSh3aXRob3V0IHJlYm9vdCkuCgpUZXN0ZWQgdGhpcyBwYXRj
aCBhbmQgd29ya3MgZmluZSBvbiBHZW45IEludGVsIGNocm9tZWJvb2ssIFBTUjIgd2FzCmVuYWJs
ZWQgYmFjayBpbiBuZXh0IGl0ZXJhdGlvbiwgbm8gb3RoZXIgc2lkZWVmZmVjdHMgb2JzZXJ2ZWQu
Cgp2MjoKKiBDaGFuZ2UgdGhlIGNvbW1pdCBoZWFkZXIgaW5kaWNhdGluZyBmaXggZm9yClBTUiBy
dW50aW1lIGVycm9zKEpvc2UsIFNvdXphKQoqIEFsbG93IHNpbmtfbm90X3JlbGlhYmxlIHRvIGJl
IHNldCBmb3Igb3RoZXIgZXJyb3JzCmV4Y2VwdCBDUkMgZXJyb3IgKEpvc2UsIFNvdXphKQoKU2ln
bmVkLW9mZi1ieTogR2F1cmF2IEsgU2luZ2ggPGdhdXJhdi5rLnNpbmdoQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNCArKystCiAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5kZXggMTZlOWZmNDdkNTE5Li4xMDM3YjcxNmMx
YzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwpAQCAtMTQ4NCw3
ICsxNDg0LDkgQEAgdm9pZCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCkKIAogCWlmIChzdGF0dXMgPT0gRFBfUFNSX1NJTktfSU5URVJOQUxfRVJST1IgfHwg
KGVycm9yX3N0YXR1cyAmIGVycm9ycykpIHsKIAkJaW50ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKGlu
dGVsX2RwKTsKLQkJcHNyLT5zaW5rX25vdF9yZWxpYWJsZSA9IHRydWU7CisJCWlmICgoZXJyb3Jf
c3RhdHVzICYgRFBfUFNSX1JGQl9TVE9SQUdFX0VSUk9SKSB8fAorCQkJKGVycm9yX3N0YXR1cyAm
IERQX1BTUl9WU0NfU0RQX1VOQ09SUkVDVEFCTEVfRVJST1IpKQorCQkJcHNyLT5zaW5rX25vdF9y
ZWxpYWJsZSA9IHRydWU7CiAJfQogCiAJaWYgKHN0YXR1cyA9PSBEUF9QU1JfU0lOS19JTlRFUk5B
TF9FUlJPUiAmJiAhZXJyb3Jfc3RhdHVzKQotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
