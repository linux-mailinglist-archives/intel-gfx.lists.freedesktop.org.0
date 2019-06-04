Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A75934B3D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 16:59:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66564899EA;
	Tue,  4 Jun 2019 14:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5687E899D6
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 14:59:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 07:59:53 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2019 07:59:51 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 17:58:26 +0300
Message-Id: <20190604145826.16424-24-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604145826.16424-1-imre.deak@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 23/23] drm/i915: WARN about invalid lane
 reversal in TBT-alt/DP-alt modes
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

TGFuZSByZXZlcnNhbCBoYXBwZW5zIG9ubHkgaW4gdGhlIEZJQSBtb2R1bGUgZm9yIFRCVC1hbHQv
RFAtYWx0IG1vZGUsIHNvCldBUk4gaWYgbGFuZSByZXZlcnNhbCBpcyBhdHRlbXB0ZWQgYXQgYSBk
aWZmZXJlbnQgbGV2ZWwuIFNlZSB0aGUKQlNwZWMgRERJX0JVRl9DVEwgcmVnaXN0ZXIgZGVzY3Jp
cHRpb24uCgpDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KQ2M6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpDYzogUm9kcmln
byBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsg
PGltcmUuZGVha0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGRp
LmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kZGkuYwppbmRleCA5YzE5OGYxYTNhOTEuLjVmNTM1ZjE3ZDdiMyAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZGRpLmMKQEAgLTM1OTEsNiArMzU5MSw4IEBAIHN0YXRpYyB2b2lkIGludGVsX2Rk
aV9zZXRfZmlhX2xhbmVfY291bnQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJdTMy
IHZhbCA9IEk5MTVfUkVBRChQT1JUX1RYX0RGTEVYRFBNTEUxKTsKIAlib29sIGxhbmVfcmV2ZXJz
YWwgPSBkaWdfcG9ydC0+c2F2ZWRfcG9ydF9iaXRzICYgRERJX0JVRl9QT1JUX1JFVkVSU0FMOwog
CisJV0FSTl9PTihsYW5lX3JldmVyc2FsICYmIGRpZ19wb3J0LT50Y19tb2RlICE9IFRDX1BPUlRf
TEVHQUNZKTsKKwogCXZhbCAmPSB+REZMRVhEUE1MRTFfRFBNTEVUQ19NQVNLKHRjX3BvcnQpOwog
CXN3aXRjaCAocGlwZV9jb25maWctPmxhbmVfY291bnQpIHsKIAljYXNlIDE6Ci0tIAoyLjE3LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
