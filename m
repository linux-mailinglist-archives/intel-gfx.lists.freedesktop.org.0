Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 054BC4D001
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 16:07:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F7566E5AE;
	Thu, 20 Jun 2019 14:07:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 188AD6E58E
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 14:06:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 07:06:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="162531475"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2019 07:06:44 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 17:06:00 +0300
Message-Id: <20190620140600.11357-24-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620140600.11357-1-imre.deak@intel.com>
References: <20190620140600.11357-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 23/23] drm/i915: WARN about invalid lane
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
PGltcmUuZGVha0BpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IDk3NjExYjNiZDMwMi4u
ZWE3MTIyMjA5ZGRkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMK
QEAgLTM2MDQsNiArMzYwNCw4IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9zZXRfZmlhX2xhbmVf
Y291bnQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJdTMyIHZhbCA9IEk5MTVfUkVB
RChQT1JUX1RYX0RGTEVYRFBNTEUxKTsKIAlib29sIGxhbmVfcmV2ZXJzYWwgPSBkaWdfcG9ydC0+
c2F2ZWRfcG9ydF9iaXRzICYgRERJX0JVRl9QT1JUX1JFVkVSU0FMOwogCisJV0FSTl9PTihsYW5l
X3JldmVyc2FsICYmIGRpZ19wb3J0LT50Y19tb2RlICE9IFRDX1BPUlRfTEVHQUNZKTsKKwogCXZh
bCAmPSB+REZMRVhEUE1MRTFfRFBNTEVUQ19NQVNLKHRjX3BvcnQpOwogCXN3aXRjaCAocGlwZV9j
b25maWctPmxhbmVfY291bnQpIHsKIAljYXNlIDE6Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
