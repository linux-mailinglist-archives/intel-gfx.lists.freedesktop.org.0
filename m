Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 071AE675D4
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 22:20:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 798C96E391;
	Fri, 12 Jul 2019 20:20:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC0276E391
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 20:20:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 13:20:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; d="scan'208";a="250226730"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by orsmga001.jf.intel.com with ESMTP; 12 Jul 2019 13:20:39 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 13:22:13 -0700
Message-Id: <20190712202214.3906-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 1/2] drm/i915/display/icl: Bump up the
 hdisplay and vdisplay as per transcoder limits
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

T24gSUNMKywgdGhlIHZlcnRpY2FsIGxpbWl0cyBmb3IgdGhlIHRyYW5zY29kZXJzIGFyZSBpbmNy
ZWFzZWQgdG8gODE5MgphbmQgaG9yaXpvbnRhbCBsaW1pdHMgYXJlIGJ1bXBlZCB0byAxNksgc28g
YnVtcCB1cApsaW1pdHMgaW4gaW50ZWxfbW9kZV92YWxpZCgpCgp2NDoKKiBJbmNyZWFzZSB0aGUg
aGRpc3BsYXkgdG8gMTZLIChWaWxsZSkKdjM6CiogU3VwcG9ydGVkIHN0YXJ0aW5nIElDTCAoVmls
bGUpCiogVXNlIHRoZSBoaWdoZXIgbGltaXRzIGZyb20gVFJBTlNfVlRPVEFMIHJlZ2lzdGVyIChW
aWxsZSkKdjI6CiogQ2hlY2twYXRjaCB3YXJuaW5nIChNYW5hc2kpCgpDYzogTWFhcnRlbiBMYW5r
aG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hbmFz
aSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA5ICsrKysrKystLQogMSBmaWxlIGNoYW5n
ZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGYwNzA4MTgxNWI4MC4uMTUwMDY3NjQ4
NjJiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpA
QCAtMTU3NjQsOCArMTU3NjQsMTMgQEAgaW50ZWxfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LAogCQkJICAgRFJNX01PREVfRkxBR19DTEtESVYyKSkKIAkJcmV0dXJuIE1PREVfQkFE
OwogCi0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSB8fAotCSAgICBJU19CUk9BRFdFTEwo
ZGV2X3ByaXYpIHx8IElTX0hBU1dFTEwoZGV2X3ByaXYpKSB7CisJaWYgKElOVEVMX0dFTihkZXZf
cHJpdikgPj0gMTEpIHsKKwkJaGRpc3BsYXlfbWF4ID0gMTYzODQ7CisJCXZkaXNwbGF5X21heCA9
IDgxOTI7CisJCWh0b3RhbF9tYXggPSAxNjM4NDsKKwkJdnRvdGFsX21heCA9IDgxOTI7CisJfSBl
bHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkgfHwKKwkJICAgSVNfQlJPQURXRUxMKGRl
dl9wcml2KSB8fCBJU19IQVNXRUxMKGRldl9wcml2KSkgewogCQloZGlzcGxheV9tYXggPSA4MTky
OyAvKiBGREkgbWF4IDQwOTYgaGFuZGxlZCBlbHNld2hlcmUgKi8KIAkJdmRpc3BsYXlfbWF4ID0g
NDA5NjsKIAkJaHRvdGFsX21heCA9IDgxOTI7Ci0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
