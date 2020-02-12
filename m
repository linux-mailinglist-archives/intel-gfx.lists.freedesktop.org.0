Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 138AF15AB9D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 16:01:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D74B56F51F;
	Wed, 12 Feb 2020 15:01:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4128C6F51B
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 15:01:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 07:01:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="237729914"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 12 Feb 2020 07:01:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2020 17:01:02 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2020 17:01:02 +0200
Message-Id: <20200212150102.7600-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Force state->modeset=true when
 distrust_bios_wm==true
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkN1
cnJlbnRseSB3aGVuIHdlIGxvYWQgdGhlIGRyaXZlciB3ZSBzZXQgZGlzdHJ1c3RfYmlvc193bT10
cnVlLCB3aGljaAp3aWxsIGNhdXNlIGFjdGl2ZV9waXBlX2NoYW5nZXMgdG8gZ2V0IGZsYWdnZWQg
ZXZlbiB3aGVuIHdlJ3JlIG5vdAp0b2dnbGluZyBhbnkgcGlwZXMgb24vb2ZmLiBUaGUgcmVhc29u
IGJlaW5nIHRoYXQgd2Ugd2FudCB0byBmdWxseQpyZWRpc3RyaWJ1dGUgdGhlIGRidWYgYW1vbmcg
dGhlIGFjdGl2ZSBwaXBlcyBhbmQgaWdub3JlIHdoYXRldmVyCnN0YXRlIHRoZSBmaXJtd2FyZSBs
ZWZ0IGJlaGluZC4KClVuZm9ydHVuYXRlbHkgd2hlbiB0aGUgY29kZSBmbGFncyBhY3RpdmVfcGlw
ZV9jaGFuZ2VzIGl0IGRvZXNuJ3QKc2V0IHN0YXRlLT5tb2Rlc2V0IHRvIHRydWUsIHdoaWNoIG1l
YW5zIHRoZSBoYXJkd2FyZSBkYnVmIHN0YXRlCndvbid0IGFjdHVhbGx5IGdldCB1cGRhdGVkLiBI
ZW5jZSB0aGUgaGFyZHdhcmUgYW5kIHNvZnR3YXJlCnN0YXRlcyBnbyBvdXQgb2Ygc3luYywgd2hp
Y2ggY2FuIHJlc3VsdCBpbiBwbGFuZXMgdHJ5aW5nIHRvIHVzZSBhCmRpc2FibGVkIGRidWYgc2xp
Y2UuIFN1cHJpc2luZ2x5IHRoYXQgb25seSBzZWVtcyB0byBjb3JydXB0IHRoZQpkaXNwbGF5IHJh
dGhlciB0aGFuIG1ha2luZyB0aGUgd2hvbGUgZGlzcGxheSBlbmdpbmUga2VlbCBvdmVyLgoKTGV0
J3MgZml4IHRoaXMgZm9yIG5vdyBieSBmbGFnZ2luZyBzdGF0ZS0+bW9kZXNldCB3aGVuZXZlcgpk
aXN0cnVzdF9iaW9zX3dtIGlzIHNldC4KCkV2ZW50dWFsbHkgd2UnbGwgbGlrZWx5IHdhbnQgdG8g
cmlwIG91dCBhbGwgb2YgdGhpcyBtZXNzIGFuZAppbnRyb2R1Y2UgcHJvcGVyIHN0YXR5ZSB0cmFj
a2luZyBmb3IgZGJ1Zi4gQnV0IHRoYXQgcmVxdWlyZXMKbW9yZSB3b3JrLiBUb3NzIGluIGEgRklY
TUUgdG8gdGhhdCBlZmZlY3QuCgpDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxp
c292c2tpeUBpbnRlbC5jb20+CkZpeGVzOiBmZjJjZDg2MzVlNDEgKCJkcm0vaTkxNTogQ29ycmVj
dGx5IG1hcCBEQlVGIHNsaWNlcyB0byBwaXBlcyIpClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxNCArKysrKysrKysrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDYxYmExZjIyNTZhMC4uOWU0Zjk5YWU4MWZiIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTUwMjcs
NiArMTUwMjcsMjAgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9k
ZXZpY2UgKmRldiwKIAlpZiAobmV3X2NkY2xrX3N0YXRlICYmIG5ld19jZGNsa19zdGF0ZS0+Zm9y
Y2VfbWluX2NkY2xrX2NoYW5nZWQpCiAJCWFueV9tcyA9IHRydWU7CiAKKwkvKgorCSAqIGRpc3Ry
dXN0X2Jpb3Nfd20gd2lsbCBmb3JjZSBhIGZ1bGwgZGJ1ZiByZWNvbXB1dGF0aW9uCisJICogYnV0
IHRoZSBoYXJkd2FyZSBzdGF0ZSB3aWxsIG9ubHkgZ2V0IHVwZGF0ZWQgYWNjb3JkaW5nbHkKKwkg
KiBpZiBzdGF0ZS0+bW9kZXNldD09dHJ1ZS4gSGVuY2UgZGlzdHJ1c3RfYmlvc193bT09dHJ1ZSAm
JgorCSAqIHN0YXRlLT5tb2Rlc2V0PT1mYWxzZSBpcyBhbiBpbnZhbGlkIGNvbWJpbmF0aW9uIHdo
aWNoCisJICogd291bGQgY2F1c2UgdGhlIGhhcmR3YXJlIGFuZCBzb2Z0d2FyZSBkYnVmIHN0YXRl
IHRvIGdldAorCSAqIG91dCBvZiBzeW5jLiBXZSBtdXN0IHByZXZlbnQgdGhhdC4KKwkgKgorCSAq
IEZJWE1FIGNsZWFuIHVwIHRoaXMgbWVzcyBhbmQgaW50cm9kdWNlIGJldHRlcgorCSAqIHN0YXRl
IHRyYWNraW5nIGZvciBkYnVmLgorCSAqLworCWlmIChkZXZfcHJpdi0+d20uZGlzdHJ1c3RfYmlv
c193bSkKKwkJYW55X21zID0gdHJ1ZTsKKwogCWlmIChhbnlfbXMpIHsKIAkJcmV0ID0gaW50ZWxf
bW9kZXNldF9jaGVja3Moc3RhdGUpOwogCQlpZiAocmV0KQotLSAKMi4yNC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
