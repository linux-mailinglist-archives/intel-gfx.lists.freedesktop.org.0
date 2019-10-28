Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FE5E7065
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 12:30:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C00C6E5E3;
	Mon, 28 Oct 2019 11:30:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 214B56E5E1
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 11:30:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 04:30:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,239,1569308400"; d="scan'208";a="203239792"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 28 Oct 2019 04:30:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2019 13:30:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 13:30:31 +0200
Message-Id: <20191028113036.27553-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Fix i845/i865 cursor width
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBjaGFuZ2UgZnJvbSB0aGUgdWFwaSBjb29yZGluYXRlcyB0byB0aGUgaW50ZXJuYWwgY29vcmRp
bmF0ZXMKYnJva2UgdGhlIGN1cnNvciBvbiBpODQ1L2k4NjUgZHVlIHRvIHNyYyBhbmQgZHN0IGdl
dHRpbmcgc3dhcHBlZC4KRml4IGl0LgoKQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxh
bmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkZpeGVzOiAzYTYxMjc2NWY0MjMgKCJkcm0vaTkxNTog
UmVtb3ZlIGN1cnNvciB1c2Ugb2YgcHJvcGVydGllcyBmb3IgY29vcmRpbmF0ZXMiKQpTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMiArLQog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAwZjBjNTgyYTU2ZDUu
LjQ3YTNhZWYwZmI2MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKQEAgLTEwOTQ3LDcgKzEwOTQ3LDcgQEAgc3RhdGljIHZvaWQgaTg0NV91cGRhdGVf
Y3Vyc29yKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCiAJdW5zaWduZWQgbG9uZyBpcnFmbGFn
czsKIAogCWlmIChwbGFuZV9zdGF0ZSAmJiBwbGFuZV9zdGF0ZS0+YmFzZS52aXNpYmxlKSB7Ci0J
CXVuc2lnbmVkIGludCB3aWR0aCA9IGRybV9yZWN0X3dpZHRoKCZwbGFuZV9zdGF0ZS0+YmFzZS5z
cmMpOworCQl1bnNpZ25lZCBpbnQgd2lkdGggPSBkcm1fcmVjdF93aWR0aCgmcGxhbmVfc3RhdGUt
PmJhc2UuZHN0KTsKIAkJdW5zaWduZWQgaW50IGhlaWdodCA9IGRybV9yZWN0X2hlaWdodCgmcGxh
bmVfc3RhdGUtPmJhc2UuZHN0KTsKIAogCQljbnRsID0gcGxhbmVfc3RhdGUtPmN0bCB8Ci0tIAoy
LjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
