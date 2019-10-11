Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB3AD4183
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 15:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 032066EC34;
	Fri, 11 Oct 2019 13:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15A426E459
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 13:39:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 06:39:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="188320793"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 11 Oct 2019 06:39:41 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 4C7A8840761; Fri, 11 Oct 2019 16:39:15 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Oct 2019 16:39:10 +0300
Message-Id: <20191011133911.18621-2-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011133911.18621-1-mika.kuoppala@linux.intel.com>
References: <20191011133911.18621-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/tgl: Add HDC Pipeline Flush
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

QWRkIGhkYyBwaXBlbGluZSBmbHVzaCB0byBlbnN1cmUgbWVtb3J5IHN0YXRlIGlzIGNvaGVyZW50
CmluIEwzIHdoZW4gd2UgYXJlIGRvbmUuCgpTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxt
aWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ncHVfY29tbWFuZHMuaCB8IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMgICAgICAgICAgfCAxICsKIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRz
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaAppbmRleCA4
YzhlNmJmODI0YTkuLjY5NmI2NDk1YjBkYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3B1X2NvbW1hbmRzLmgKQEAgLTIzMiw2ICsyMzIsNyBAQAogI2RlZmluZSAgIFBJUEVf
Q09OVFJPTF9URVhUVVJFX0NBQ0hFX0lOVkFMSURBVEUJCSgxPDwxMCkgLyogR000NSsgb25seSAq
LwogI2RlZmluZSAgIFBJUEVfQ09OVFJPTF9MM19ST19DQUNIRV9JTlZBTElEQVRFCQkoMTw8MTAp
IC8qIGdlbjEyICovCiAjZGVmaW5lICAgUElQRV9DT05UUk9MX0lORElSRUNUX1NUQVRFX0RJU0FC
TEUJCSgxPDw5KQorI2RlZmluZSAgIFBJUEVfQ09OVFJPTF9IRENfUElQRUxJTkVfRkxVU0gJCSgx
PDw5KSAgLyogZ2VuIDEyICovCiAjZGVmaW5lICAgUElQRV9DT05UUk9MX05PVElGWQkJCQkoMTw8
OCkKICNkZWZpbmUgICBQSVBFX0NPTlRST0xfRkxVU0hfRU5BQkxFCQkJKDE8PDcpIC8qIGdlbjcr
ICovCiAjZGVmaW5lICAgUElQRV9DT05UUk9MX0RDX0ZMVVNIX0VOQUJMRQkJCSgxPDw1KQpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCBjNmZiYzcyMzU2NmYuLjk2N2U1YjJlNWU4
MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTMxODgsNiArMzE4OCw3IEBA
IHN0YXRpYyBpbnQgZ2VuMTJfZW1pdF9mbHVzaF9yZW5kZXIoc3RydWN0IGk5MTVfcmVxdWVzdCAq
cmVxdWVzdCwKIAkJZmxhZ3MgfD0gUElQRV9DT05UUk9MX0RFUFRIX0NBQ0hFX0ZMVVNIOwogCQlm
bGFncyB8PSBQSVBFX0NPTlRST0xfRENfRkxVU0hfRU5BQkxFOwogCQlmbGFncyB8PSBQSVBFX0NP
TlRST0xfRkxVU0hfRU5BQkxFOworCQlmbGFncyB8PSBQSVBFX0NPTlRST0xfSERDX1BJUEVMSU5F
X0ZMVVNIOwogCiAJCWZsYWdzIHw9IFBJUEVfQ09OVFJPTF9TVE9SRV9EQVRBX0lOREVYOwogCQlm
bGFncyB8PSBQSVBFX0NPTlRST0xfUVdfV1JJVEU7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
