Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B3DE706A
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 12:31:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D700D6E5E1;
	Mon, 28 Oct 2019 11:30:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DCC86E5E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 11:30:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 04:30:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,239,1569308400"; d="scan'208";a="205157059"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 28 Oct 2019 04:30:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2019 13:30:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 13:30:36 +0200
Message-Id: <20191028113036.27553-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191028113036.27553-1-ville.syrjala@linux.intel.com>
References: <20191028113036.27553-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915: Protect overlay colorkey macro
 arguments
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClB1
dCB0aGUgY3VzdG9tYXJ5ICgpIGFyb3VuZCB0aGUgbWFjcm8gYXJndW1lbnQgaW4gdGhlIG92ZXJs
YXkKY29sb3JrZXkgbWFjcm9zLiBBbmQgd2hpbGUgYXQgc3dpdGNoIHRvIHVzaW5nIGEgY29uc2lz
dGVudApjYXNlIGZvciB0aGUgaGV4IGNvbnN0YW50cy4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5LmMgfCA4ICsrKystLS0tCiAxIGZpbGUgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ZlcmxheS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5LmMKaW5kZXggMzI0MWNjOThlMjUxLi40YmMwN2Mx
MDU3ZTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3Zl
cmxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ZlcmxheS5j
CkBAIC0xMDMsMTMgKzEwMywxMyBAQAogI2RlZmluZSBDTEtfUkdCMTVfTUFTSwkJMHgwNzA3MDcK
IAogI2RlZmluZSBSR0IzMF9UT19DT0xPUktFWShjKSBcCi0JKCgoYyAmIDB4M0ZDMDAwMDApID4+
IDYpIHwgKChjICYgMHgwMDBGRjAwMCkgPj4gNCkgfCAoKGMgJiAweDAwMDAwM0ZDKSA+PiAyKSkK
KwkoKCgoYykgJiAweDNmYzAwMDAwKSA+PiA2KSB8ICgoKGMpICYgMHgwMDBmZjAwMCkgPj4gNCkg
fCAoKChjKSAmIDB4MDAwMDAzZmMpID4+IDIpKQogI2RlZmluZSBSR0IxNl9UT19DT0xPUktFWShj
KSBcCi0JKCgoYyAmIDB4RjgwMCkgPDwgOCkgfCAoKGMgJiAweDA3RTApIDw8IDUpIHwgKChjICYg
MHgwMDFGKSA8PCAzKSkKKwkoKCgoYykgJiAweGY4MDApIDw8IDgpIHwgKCgoYykgJiAweDA3ZTAp
IDw8IDUpIHwgKCgoYykgJiAweDAwMWYpIDw8IDMpKQogI2RlZmluZSBSR0IxNV9UT19DT0xPUktF
WShjKSBcCi0JKCgoYyAmIDB4N2MwMCkgPDwgOSkgfCAoKGMgJiAweDAzRTApIDw8IDYpIHwgKChj
ICYgMHgwMDFGKSA8PCAzKSkKKwkoKCgoYykgJiAweDdjMDApIDw8IDkpIHwgKCgoYykgJiAweDAz
ZTApIDw8IDYpIHwgKCgoYykgJiAweDAwMWYpIDw8IDMpKQogI2RlZmluZSBSR0I4SV9UT19DT0xP
UktFWShjKSBcCi0JKCgoYyAmIDB4RkYpIDw8IDE2KSB8ICgoYyAmIDBYRkYpIDw8IDgpIHwgKChj
ICYgMHhGRikgPDwgMCkpCisJKCgoKGMpICYgMHhmZikgPDwgMTYpIHwgKCgoYykgJiAweGZmKSA8
PCA4KSB8ICgoKGMpICYgMHhmZikgPDwgMCkpCiAKIC8qIG92ZXJsYXkgZmxpcCBhZGRyIGZsYWcg
Ki8KICNkZWZpbmUgT0ZDX1VQREFURQkJMHgxCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
