Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA267116BB
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 11:52:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7656D8901E;
	Thu,  2 May 2019 09:52:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B68B8901E
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 09:52:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 02:52:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="140626788"
Received: from shashanks-u1804-dt.iind.intel.com ([10.223.74.135])
 by orsmga006.jf.intel.com with ESMTP; 02 May 2019 02:52:19 -0700
From: Shashank Sharma <shashank.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 May 2019 15:19:42 +0530
Message-Id: <20190502094942.21115-1-shashank.sharma@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/GLK: Properly handle plane CSC for
 BT2020 framebuffers
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
Cc: Ville Syrjala <ville.syrjala@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJhbWVidWZmZXIgZm9ybWF0cyBQMDF4IGFyZSBzdXBwb3J0ZWQgYnkgR0xLLCBidXQgdGhlIGZ1
bmN0aW9uIHdoaWNoCmhhbmRsZXMgQ1NDIG9uIHBsYW5lIGNvbG9yIGNvbnRyb2wgcmVnaXN0ZXIs
IHN0aWxsIGV4cGVjdGVzIHRoZSBpbnB1dApidWZmZXIgdG8gYmUgUkVDNzA5LiBUaGlzIGNhbiBj
YXVzZSBpbmFjY3VyYXRlIG91dHB1dCBmb3IgZGlyZWN0IFAwMXgKZmxpcHMuCgpUaGlzIHBhdGNo
IGNoZWNrcyBpZiB0aGUgY29sb3JfZW5jb2RpbmcgcHJvcGVydHkgaXMgc2V0IHRvIFlDQkNSXzIw
MjAsCmFuZCBlbmFibGVzIHRoZSBjb3JyZXNwb25kaW5nIGNvbG9yIGNvbnZlcnNpb24gbW9kZSBv
biBwbGFuZSBDU0MuCgpQUzogcmVuYW1lZCB2YXJpYWJsZSBwbGFuZV9jb2xvcl9jdGwgdG8gY29s
b3JfY3RsIGZvciA4MCBjaGFyIHN0dWZmLgoKQ2M6IFZpbGxlIFN5cmphbGEgPHZpbGxlLnN5cmph
bGFAaW50ZWwuY29tPgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGlu
dGVsLmNvbT4KQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgfCAyNiArKysrKysrKysrKysrKysr
LS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwppbmRleCBkZDY1ZDdjNTIxYzEu
LjJkNGQzMTI4YmYxZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlz
cGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwpAQCAtMzg2
OCwyNCArMzg2OCwzMCBAQCB1MzIgZ2xrX3BsYW5lX2NvbG9yX2N0bChjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJdG9faTkxNShwbGFuZV9zdGF0ZS0+YmFzZS5w
bGFuZS0+ZGV2KTsKIAljb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IHBsYW5lX3N0
YXRlLT5iYXNlLmZiOwogCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUgPSB0b19pbnRlbF9wbGFu
ZShwbGFuZV9zdGF0ZS0+YmFzZS5wbGFuZSk7Ci0JdTMyIHBsYW5lX2NvbG9yX2N0bCA9IDA7CisJ
dTMyIGNvbG9yX2N0bCA9IDA7CiAKLQlwbGFuZV9jb2xvcl9jdGwgfD0gUExBTkVfQ09MT1JfUExB
TkVfR0FNTUFfRElTQUJMRTsKLQlwbGFuZV9jb2xvcl9jdGwgfD0gZ2xrX3BsYW5lX2NvbG9yX2N0
bF9hbHBoYShwbGFuZV9zdGF0ZSk7CisJY29sb3JfY3RsIHw9IFBMQU5FX0NPTE9SX1BMQU5FX0dB
TU1BX0RJU0FCTEU7CisJY29sb3JfY3RsIHw9IGdsa19wbGFuZV9jb2xvcl9jdGxfYWxwaGEocGxh
bmVfc3RhdGUpOwogCiAJaWYgKGZiLT5mb3JtYXQtPmlzX3l1diAmJiAhaWNsX2lzX2hkcl9wbGFu
ZShkZXZfcHJpdiwgcGxhbmUtPmlkKSkgewotCQlpZiAocGxhbmVfc3RhdGUtPmJhc2UuY29sb3Jf
ZW5jb2RpbmcgPT0gRFJNX0NPTE9SX1lDQkNSX0JUNzA5KQotCQkJcGxhbmVfY29sb3JfY3RsIHw9
IFBMQU5FX0NPTE9SX0NTQ19NT0RFX1lVVjcwOV9UT19SR0I3MDk7Ci0JCWVsc2UKLQkJCXBsYW5l
X2NvbG9yX2N0bCB8PSBQTEFORV9DT0xPUl9DU0NfTU9ERV9ZVVY2MDFfVE9fUkdCNzA5OworCQlz
d2l0Y2ggKHBsYW5lX3N0YXRlLT5iYXNlLmNvbG9yX2VuY29kaW5nKSB7CisJCWNhc2UgRFJNX0NP
TE9SX1lDQkNSX0JUNzA5OgorCQkJY29sb3JfY3RsIHw9IFBMQU5FX0NPTE9SX0NTQ19NT0RFX1lV
VjcwOV9UT19SR0I3MDk7CisJCQlicmVhazsKKwkJY2FzZSBEUk1fQ09MT1JfWUNCQ1JfQlQyMDIw
OgorCQkJY29sb3JfY3RsIHw9IFBMQU5FX0NPTE9SX0NTQ19NT0RFX1lVVjIwMjBfVE9fUkdCMjAy
MDsKKwkJCWJyZWFrOworCQlkZWZhdWx0OgorCQkJY29sb3JfY3RsIHw9IFBMQU5FX0NPTE9SX0NT
Q19NT0RFX1lVVjYwMV9UT19SR0I3MDk7CisJCX0KIAogCQlpZiAocGxhbmVfc3RhdGUtPmJhc2Uu
Y29sb3JfcmFuZ2UgPT0gRFJNX0NPTE9SX1lDQkNSX0ZVTExfUkFOR0UpCi0JCQlwbGFuZV9jb2xv
cl9jdGwgfD0gUExBTkVfQ09MT1JfWVVWX1JBTkdFX0NPUlJFQ1RJT05fRElTQUJMRTsKKwkJCWNv
bG9yX2N0bCB8PSBQTEFORV9DT0xPUl9ZVVZfUkFOR0VfQ09SUkVDVElPTl9ESVNBQkxFOwogCX0g
ZWxzZSBpZiAoZmItPmZvcm1hdC0+aXNfeXV2KSB7Ci0JCXBsYW5lX2NvbG9yX2N0bCB8PSBQTEFO
RV9DT0xPUl9JTlBVVF9DU0NfRU5BQkxFOworCQljb2xvcl9jdGwgfD0gUExBTkVfQ09MT1JfSU5Q
VVRfQ1NDX0VOQUJMRTsKIAl9CiAKLQlyZXR1cm4gcGxhbmVfY29sb3JfY3RsOworCXJldHVybiBj
b2xvcl9jdGw7CiB9CiAKIHN0YXRpYyBpbnQKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
