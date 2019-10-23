Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC65E13E9
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 10:19:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 642B56E9C5;
	Wed, 23 Oct 2019 08:19:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E201A6E9C5
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 08:19:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 01:19:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,220,1569308400"; d="scan'208";a="372806354"
Received: from kamal-nuc.iind.intel.com ([10.66.179.24])
 by orsmga005.jf.intel.com with ESMTP; 23 Oct 2019 01:19:05 -0700
From: kamal.ap@intel.com
To: intel-gfx@lists.freedesktop.org, jose.souza@intel.com,
 jani.nikula@linux.intel.com
Date: Wed, 23 Oct 2019 13:55:28 +0530
Message-Id: <1571819128-3264-1-git-send-email-kamal.ap@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-gfx] [PATCH] drm/i915: Making loglevel of PSR2/SU logs same.
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
Cc: Ap Kamal <kamal.ap@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogIkFwIEthbWFsIiA8a2FtYWwuYXBAaW50ZWwuY29tPgoKJ0xpbmsgQ1JDIGVycm9yJyB3
aWxsIG5vdyBoYXZlIHNhbWUgZXJyb3IgbGV2ZWwgYXMKb3RoZXIgUFNSMiBlcnJvcnMgbGlrZSAn
UkZCIHN0b3JhZ2UgZXJyb3InIGFuZAonVlNDIFNEUCB1bmNvcnJlY3RhYmxlIGVycm9yJy4KClNp
Z25lZC1vZmYtYnk6IEFwIEthbWFsIDxrYW1hbC5hcEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jCmluZGV4IDUwZjIyYWJjZDMwZS4uYTZhOTkyNzI5Y2Y1IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKQEAgLTE0MzcsNyArMTQzNyw3IEBAIHZv
aWQgaW50ZWxfcHNyX3Nob3J0X3B1bHNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJaWYg
KHZhbCAmIERQX1BTUl9WU0NfU0RQX1VOQ09SUkVDVEFCTEVfRVJST1IpCiAJCURSTV9ERUJVR19L
TVMoIlBTUiBWU0MgU0RQIHVuY29ycmVjdGFibGUgZXJyb3IsIGRpc2FibGluZyBQU1JcbiIpOwog
CWlmICh2YWwgJiBEUF9QU1JfTElOS19DUkNfRVJST1IpCi0JCURSTV9FUlJPUigiUFNSIExpbmsg
Q1JDIGVycm9yLCBkaXNhYmxpbmcgUFNSXG4iKTsKKwkJRFJNX0RFQlVHX0tNUygiUFNSIExpbmsg
Q1JDIGVycm9yLCBkaXNhYmxpbmcgUFNSXG4iKTsKIAogCWlmICh2YWwgJiB+ZXJyb3JzKQogCQlE
Uk1fRVJST1IoIlBTUl9FUlJPUl9TVEFUVVMgdW5oYW5kbGVkIGVycm9ycyAleFxuIiwKLS0gCjIu
Ny40CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
