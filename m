Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C85811BEE6
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 22:13:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A16056EBE8;
	Wed, 11 Dec 2019 21:13:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9781A6EBE0
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 21:13:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 13:13:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="210894642"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by fmsmga008.fm.intel.com with ESMTP; 11 Dec 2019 13:13:09 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 13:14:25 -0800
Message-Id: <20191211211425.17821-4-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20191211211425.17821-1-manasi.d.navare@intel.com>
References: <20191211211425.17821-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/dp: Disable Port sync mode
 correctly on teardown
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hpbGUgY2xlYXJpbmcgdGhlIFBvcnRzIHluYyBtb2RlIGVuYWJsZSBhbmQgbWFzdGVyIHNlbGVj
dCBiaXRzCndlIG5lZWQgdG8gbWFrZSBzdXJlIHRoYXQgd2UgcGVyZm9ybSBhIFJNVyBmb3IgZGlz
YWJsZSBlbHNlCml0IHNldHMgdGhlIG90aGVyIGJpdHMgY2FzdWluZyB1bndhbnRlZCBzaWRlZWZm
ZWN0cy4KCkJ1Z3ppbGxhOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVs
L2lzc3Vlcy81CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KRml4ZXM6IDUxNTI4
YWZlN2M1ZSAoImRybS9pOTE1L2Rpc3BsYXkvaWNsOiBEaXNhYmxlIHRyYW5zY29kZXIgcG9ydCBz
eW5jIGFzIHBhcnQgb2YgY3J0Y19kaXNhYmxlKCkgc2VxdWVuY2UiKQpTaWduZWQtb2ZmLWJ5OiBN
YW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGMwYTJkYWIzZmU2Ny4uM2ZjY2RhMGYxZjM2
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAt
NDU5OSw3ICs0NTk5LDggQEAgc3RhdGljIHZvaWQgaWNsX2Rpc2FibGVfdHJhbnNjb2Rlcl9wb3J0
X3N5bmMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF8KIAkJICAgICAgdHJhbnNj
b2Rlcl9uYW1lKG9sZF9jcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcikpOwogCiAJcmVnID0gVFJB
TlNfRERJX0ZVTkNfQ1RMMihvbGRfY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpOwotCXRyYW5z
X2RkaV9mdW5jX2N0bDJfdmFsID0gfihQT1JUX1NZTkNfTU9ERV9FTkFCTEUgfAorCXRyYW5zX2Rk
aV9mdW5jX2N0bDJfdmFsID0gSTkxNV9SRUFEKHJlZyk7CisJdHJhbnNfZGRpX2Z1bmNfY3RsMl92
YWwgJj0gfihQT1JUX1NZTkNfTU9ERV9FTkFCTEUgfAogCQkJCSAgICBQT1JUX1NZTkNfTU9ERV9N
QVNURVJfU0VMRUNUX01BU0spOwogCUk5MTVfV1JJVEUocmVnLCB0cmFuc19kZGlfZnVuY19jdGwy
X3ZhbCk7CiB9Ci0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
