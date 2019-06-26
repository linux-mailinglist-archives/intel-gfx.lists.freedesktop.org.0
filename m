Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5B057039
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 20:03:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9D6A6E4B6;
	Wed, 26 Jun 2019 18:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 696416E4B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 18:03:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 11:03:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="167122061"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 26 Jun 2019 11:03:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Jun 2019 21:03:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2019 21:03:39 +0300
Message-Id: <20190626180344.26314-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/5] Finish the ack+handler split for irq
 handler
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
YmFzZWQgdmVyc2lvbiBvZiB0aGUgaXJxIGFjaytoYW5kbGUgc3BsaXQgc2VyaWVzLiBUcmllZCB0
bwphY2NvbW1vZGF0ZSBDaHJpcydzIHJldmlldyBmZWVkYmFjay4KCkkgYWxzbyB0b3NzZWQgaW4g
YSBwYXRjaCBhdCB0aGUgZW5kIHRvIHNocmluayB0aGUgY29kZSBieQp1c2luZyB0aGUgcmF3IHJl
YWQvd3JpdGUgc3R1ZmYuIEEgYml0IHNjYXJlZCBvZiB0aGF0IG9uZSBkdWUKdG8gdGhlIHNhbWUg
Y2FjaGVsaW5lIHJlZyBhY2Nlc3Mgc3lzdGVtIGhhbmdzLCBzbyB0cmllZCB0bwpwcm90ZWN0IGFn
YWluc3QgaXQgd2l0aCBpcnFfbG9jay4KClZpbGxlIFN5cmrDpGzDpCAoNSk6CiAgZHJtL2k5MTU6
IEFkZCBnZW44X2RlX3BpcGVfZmF1bHRfbWFzaygpCiAgZHJtL2k5MTU6IEludHJvZHVjZSBzdHJ1
Y3QgaHBkX2lycV9yZWdzCiAgZHJtL2k5MTU6IFNwbGl0IHBjaCBpcnEgaGFuZGxpbmcgdG8gYWNr
K2hhbmRsZXIKICBkcm0vaTkxNTogRmluaXNoIHRoZSBpcnEgYWNrK2hhbmRsZXIgc3BsaXQgZm9y
IGlsaysKICBkcm0vaTkxNTogVXNlIHJhd19yZWdfcmVhZCgpL3dyaXRlKCkgaW4gaWxrKyBpcnEg
aGFuZGxlcnMKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgNzE3ICsrKysrKysr
KysrKysrKysrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNDkwIGluc2VydGlvbnMo
KyksIDIyNyBkZWxldGlvbnMoLSkKCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
