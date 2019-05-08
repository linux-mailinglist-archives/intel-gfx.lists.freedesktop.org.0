Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0CD1790F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 14:07:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16D0C89686;
	Wed,  8 May 2019 12:07:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48D2E89686
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 12:07:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 05:07:26 -0700
X-ExtLoop1: 1
Received: from shashanks-u1804-dt.iind.intel.com ([10.223.74.135])
 by FMSMGA003.fm.intel.com with ESMTP; 08 May 2019 05:07:24 -0700
From: Shashank Sharma <shashank.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 May 2019 17:34:37 +0530
Message-Id: <20190508120437.12339-1-shashank.sharma@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Fix skl plane scaling for planner YUV
 buffers
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
Cc: Lukas Rusak <lorusak@gmail.com>,
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTHVrYXMgUnVzYWsgPGxvcnVzYWtAZ21haWwuY29tPgoKUGxhbmUgc2NhbGluZyBmb3Ig
WVVWIHBsYW5hciBmb3JtYXRzIHNob3VsZCBiZSBtYXggMiB0aW1lcy4KCkNjOiBNYWFydGVuIExh
bmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAaW50ZWwuY29tPgpDYzogSnVoYS1wZWtrYSBIZWlr
a2lsYSA8anVoYS1wZWtrYS5oZWlra2lsYUBpbnRlbC5jb20+CkNjOiBTaGFzaGFuayBTaGFybWEg
PHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+CgpTaWduZWQtb2ZmLWJ5OiBMdWthcyBSdXNhayA8
bG9ydXNha0BnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxh
eS5jIHwgMTMgKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwg
NSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
aXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggYTM1
MWM4ZTIxOWJhLi4yYWMwYTU1YTljOWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5
LmMKQEAgLTEzODk3LDcgKzEzODk3LDcgQEAgc2tsX21heF9zY2FsZShjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIHsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9
IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjKTsKIAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKLQlpbnQgbWF4X3Nj
YWxlLCBtdWx0OworCWludCBtYXhfc2NhbGUsIG11bHQsIHJlbWFpbmRlcjsKIAlpbnQgY3J0Y19j
bG9jaywgbWF4X2RvdGNsaywgdG1wY2xrMSwgdG1wY2xrMjsKIAogCWlmICghY3J0Y19zdGF0ZS0+
YmFzZS5lbmFibGUpCkBAIC0xMzkxNCwxMiArMTM5MTQsMTUgQEAgc2tsX21heF9zY2FsZShjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAogCS8qCiAJICogc2tsIG1h
eCBzY2FsZSBpcyBsb3dlciBvZjoKLQkgKiAgICBjbG9zZSB0byAzIGJ1dCBub3QgMywgLTEgaXMg
Zm9yIHRoYXQgcHVycG9zZQotCSAqICAgICAgICAgICAgb3IKLQkgKiAgICBjZGNsay9jcnRjX2Ns
b2NrCisJICogZm9yIHBsYW5hciBZVVYgZm9ybWF0czogMgorCSAqCW9yCisJICogZm9yIG90aGVy
IGZvcm1hdHM6IGNsb3NlIHRvIDMgYnV0IG5vdCAzLCAtMSBpcyBmb3IgdGhhdCBwdXJwb3NlCisJ
ICoJb3IKKwkgKiBjZGNsay9jcnRjX2Nsb2NrCiAJICovCiAJbXVsdCA9IGlzX3BsYW5hcl95dXZf
Zm9ybWF0KHBpeGVsX2Zvcm1hdCkgPyAyIDogMzsKLQl0bXBjbGsxID0gKDEgPDwgMTYpICogbXVs
dCAtIDE7CisJcmVtYWluZGVyID0gaXNfcGxhbmFyX3l1dl9mb3JtYXQocGl4ZWxfZm9ybWF0KSA/
IDAgOiAxOworCXRtcGNsazEgPSAoMSA8PCAxNikgKiBtdWx0IC0gcmVtYWluZGVyOwogCXRtcGNs
azIgPSAoMSA8PCA4KSAqICgobWF4X2RvdGNsayA8PCA4KSAvIGNydGNfY2xvY2spOwogCW1heF9z
Y2FsZSA9IG1pbih0bXBjbGsxLCB0bXBjbGsyKTsKIAotLSAKMi4xNy4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
