Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C11B10A318
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 18:09:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3C7F6E44D;
	Tue, 26 Nov 2019 17:09:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 602FE6E447
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 17:09:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 09:09:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="217201342"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 26 Nov 2019 09:09:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Nov 2019 19:09:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 19:09:02 +0200
Message-Id: <20191126170911.23253-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191126170911.23253-1-ville.syrjala@linux.intel.com>
References: <20191126170911.23253-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/13] drm/i915/fbc: Remove the FBC_RT_BASE
 setup for ILK/SNB
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGRvbid0IHdhbnQgdG8gdXNlIHRoZSBGQkMgaGFyZHdhcmUgcmVuZGVyIHRyYWNraW5nIHNvIGxl
dCdzIG5vdAplbmFibGUgaXQuIFRvIHVzZSB0aGUgaHcgdHJhY2tpbmcgcHJvcGVybHkgd2UnZCBh
bnl3YXkgbmVlZCB0bwppbnRlZ3JhdGUgdGhpcyBpbnRvIHRoZSBjb21tYW5kIHN1Ym1pc3Npbmcg
cGF0aCBhcyB0aGUgcmVnaXN0ZXIgaXMKY29udGV4dCBzYXZlZCwgYW5kIGlmIHJlbmRlcmluZyBo
YXBwZW5zIHZpYSB0aGUgcHBndHQgd2UnZCBoYXZlCnRvIGNvbmZpZ3VyZSBpdCB3aXRoIHRoZSBw
cGd0dCBhZGRyZXNzIGluc3RlYWQgb2YgdGhlIGdndHQgYWRkcmVzcy4KRWFzaWVyIHRvIHVzZSBz
b2Z0d2FyZSB0cmFja2luZyBpbnN0ZWFkLgoKTm90ZSB0aGF0IG9uIHByZS1pbGsgd2UgY2FuJ3Qg
YWN0dWFsbHkgZGlzYWJsZSByZW5kZXIgdHJhY2tpbmcuCkhvd2V2ZXIgd2UgY2FuJ3QgcmVseSBv
biBpdCBiZWNhdXNlIGl0IHJlcXVpcmVzIHRoYXQgRFNQU1VSRiB0bwptYXRjaCB0aGUgcmVuZGVy
IHRhcmdldCBhZGRyZXNzLCBhbmQgc2luY2Ugd2UgcGxheSB0cmlja3MKd2l0aCBEU1BTVVJGIHRo
YXQgbWF5IG5vdCBiZSB0aGUgY2FzZS4gSGVuY2Ugd2Ugc2hhbGwgcmVseSBvbgpzb2Z0d2FyZSBy
ZW5kZXIgdHJhY2tpbmcgb24gYWxsIHBsYXRmb3Jtcy4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCmluZGV4
IDJiNjRiMTcyNDA3ZC4uZWVmYTVhODhiMzA0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJjLmMKQEAgLTI0OCw4ICsyNDgsNiBAQCBzdGF0aWMgdm9pZCBpbGtfZmJjX2Fj
dGl2YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAl9CiAKIAlJOTE1X1dS
SVRFKElMS19EUEZDX0ZFTkNFX1lPRkYsIHBhcmFtcy0+Y3J0Yy5mZW5jZV95X29mZnNldCk7Ci0J
STkxNV9XUklURShJTEtfRkJDX1JUX0JBU0UsCi0JCSAgIGk5MTVfZ2d0dF9vZmZzZXQocGFyYW1z
LT52bWEpIHwgSUxLX0ZCQ19SVF9WQUxJRCk7CiAJLyogZW5hYmxlIGl0Li4uICovCiAJSTkxNV9X
UklURShJTEtfRFBGQ19DT05UUk9MLCBkcGZjX2N0bCB8IERQRkNfQ1RMX0VOKTsKIAotLSAKMi4y
My4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
