Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D516D48D8
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 22:09:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 876386EC8B;
	Fri, 11 Oct 2019 20:09:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F12CA6EC8B
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 20:09:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 13:09:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,285,1566889200"; d="scan'208";a="200889758"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 11 Oct 2019 13:09:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Oct 2019 23:09:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Oct 2019 23:09:41 +0300
Message-Id: <20191011200949.7839-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/8] drm/i915: Some cleanup near the SKL wm/ddb
 area
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1h
ZGUgdGhlIG1pc3Rha2Ugb2YgbG9va2luZyBhdCBzb21lIHNrbCsgd20vZGRiIHN0dWZmLAphbmQg
dGhlbiBwcm9jZWVkZWQgdG8gdGhyb3cgb3V0IGEgYnVuY2ggb2YgdXNlbGVzcyB0aGluZ3MuCgpJ
IHN0b3BwZWQgd2hlbiBJIHNhdyBzdHJ1Y3Qgc2tsX2RkYl9hbGxvY2F0aW9uIGFuZCBkZWNpZGVk
CnRoYXQgbWF5YmUgdGhhdCBzdGFydHMgdG8gY3V0IGEgYml0IHRvbyBjbG9zZSB0byB0aGUgZGJ1
ZgpzbGljZSBzdHVmZi4KClZpbGxlIFN5cmrDpGzDpCAoOCk6CiAgZHJtL2k5MTU6IE51a2UgdGhl
IHVzZWxlc3MgY2hhbmdlZCBwYXJhbSBmcm9tCiAgICBza2xfZGRiX2FkZF9hZmZlY3RlZF9waXBl
cygpCiAgZHJtL2k5MTU6IE51a2UgJ3JlYWxsb2NfcGlwZXMnCiAgZHJtL2k5MTU6IE1ha2UgZGly
dHlfcGlwZXMgcmVmZXIgdG8gcGlwZXMKICBkcm0vaTkxNTogRG9uJ3Qgc2V0IHVuZGVmaW5lZCBi
aXRzIGluIGRpcnR5X3BpcGVzCiAgZHJtL2k5MTU6IFN0cmVhbWxpbmUgc2tsX2NvbW1pdF9tb2Rl
c2V0X2VuYWJsZXMoKQogIGRybS9pOTE1OiBQb2xpc2ggV01fTElORVRJTUUgcmVnaXN0ZXIgc3R1
ZmYKICBkcm0vaTkxNTogTW92ZSBsaW5ldGltZSB3bXMgaW50byB0aGUgY3J0YyBzdGF0ZQogIGRy
bS9pOTE1OiBOdWtlIHNrbCB3bS5kaXJ0eV9waXBlcyBiaXRtYXNrCgogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgMTM4ICsrKysrKysrLS0tCiAuLi4vZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgIDYgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAgMiAtCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgMTQgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmMgICAgICAgICAgICAgICB8IDIyOCArKystLS0tLS0tLS0tLS0t
LS0KIDUgZmlsZXMgY2hhbmdlZCwgMTUwIGluc2VydGlvbnMoKyksIDIzOCBkZWxldGlvbnMoLSkK
Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
