Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B81518F35
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 19:35:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 163AF89F2D;
	Thu,  9 May 2019 17:35:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 875F689F1B
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 17:35:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 10:35:07 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 09 May 2019 10:35:05 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 May 2019 20:34:35 +0300
Message-Id: <20190509173446.31095-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 00/11] drm/i915: Add support for asynchronous
 display power disabling
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

VGhpcyBpcyB2MyBvZiBbMV0gYWRkcmVzc2luZyB0aGUgY29tbWVudHMgZnJvbSBDaHJpcyBhbmQg
VmlsbGUgYW5kCmZpeGluZyBzb21lIGNoZWNrcGF0Y2ggZXJyb3JzLgoKWzFdIGh0dHBzOi8vcGF0
Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjAyNDIvCgpDYzogVmlsbGUgU3lyamFsYSA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNv
bT4KQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgoKSW1y
ZSBEZWFrICgxMSk6CiAgZHJtL2k5MTU6IEFkZCBzdXBwb3J0IGZvciB0cmFja2luZyB3YWtlcmVm
cyB3L28gcG93ZXItb24gZ3VhcmFudGVlCiAgZHJtL2k5MTU6IEZvcmNlIHByaW50aW5nIHdha2Vy
ZWYgdGFja2luZyBkdXJpbmcgcG1fY2xlYW51cAogIGRybS9pOTE1OiBWZXJpZnkgcG93ZXIgZG9t
YWlucyBzdGF0ZSBkdXJpbmcgc3VzcGVuZCBpbiBhbGwgY2FzZXMKICBkcm0vaTkxNTogQWRkIHN1
cHBvcnQgZm9yIGFzeW5jaHJvbm91cyBkaXNwbGF5IHBvd2VyIGRpc2FibGluZwogIGRybS9pOTE1
OiBEaXNhYmxlIHBvd2VyIGFzeW5jaHJvbm91c2x5IGR1cmluZyBEUCBBVVggdHJhbnNmZXJzCiAg
ZHJtL2k5MTU6IFdBUk4gZm9yIGVEUCBlbmNvZGVycyBpbiBpbnRlbF9kcF9kZXRlY3RfZHBjZCgp
CiAgZHJtL2k5MTU6IFJlbW92ZSB0aGUgdW5uZWVkZWQgQVVYIHBvd2VyIHJlZiBmcm9tIGludGVs
X2RwX2RldGVjdCgpCiAgZHJtL2k5MTU6IFJlbW92ZSB0aGUgdW5uZWVkZWQgQVVYIHBvd2VyIHJl
ZiBmcm9tIGludGVsX2RwX2hwZF9wdWxzZSgpCiAgZHJtL2k5MTU6IFJlcGxhY2UgdXNlIG9mIFBM
TFMgcG93ZXIgZG9tYWluIHdpdGggRElTUExBWV9DT1JFIGRvbWFpbgogIGRybS9pOTE1OiBBdm9p
ZCB0YWtpbmcgdGhlIFBQUyBsb2NrIGZvciBub24tZURQL1ZMVi9DSFYKICBkcm0vaTkxNTogQXNz
ZXJ0IHRoYXQgVHlwZUMgcG9ydHMgYXJlIG5vdCB1c2VkIGZvciBlRFAKCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgfCAgIDUgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV91dGlscy5oICAgICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
aXNwbGF5LmMgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXku
aCAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYyAgICAgICAgIHwg
IDgzICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwbGxfbWdyLmMgICB8ICAzNiAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmggICAgICAgIHwgIDUyICsrLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jIHwgNTk4ICsrKysrKysrKysrKysr
KysrKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5oIHwgIDEz
ICsKIDkgZmlsZXMgY2hhbmdlZCwgNjYzIGluc2VydGlvbnMoKyksIDEzMiBkZWxldGlvbnMoLSkK
Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
