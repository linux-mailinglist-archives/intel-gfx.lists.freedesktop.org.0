Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 877EFD804A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 21:30:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 776836E3AA;
	Tue, 15 Oct 2019 19:30:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A23E589B33
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 19:30:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 12:30:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="207655464"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 15 Oct 2019 12:30:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Oct 2019 22:30:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 22:30:23 +0300
Message-Id: <20191015193035.25982-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191015193035.25982-1-ville.syrjala@linux.intel.com>
References: <20191015193035.25982-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 01/13] drm/i915: Add debugs to distingiush a
 cd2x update from a full cdclk pll update
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRv
IG1ha2UgdGhlIGxvZ3MgYSBiaXQgbGVzcyBjb25mdXNpbmcgbGV0J3MgdG9zcyBpbiBzb21lCmRl
YnVnIHByaW50cyB0byBpbmRpY2F0ZSB3aGV0aGVyIHRoZSBjZGNsayByZXByb2dyYW1taW5nCmlz
IGdvaW5nIHRvIGhhcHBlbiB3aXRoIGEgc2luZ2xlIHBpcGUgYWN0aXZlIG9yIHdoZXRoZXIgd2UK
bmVlZCB0byB0dXJuIGFsbCBwaXBlcyBvZmYgZm9yIHRoZSBkdXJhdGlvbi4KClNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgNSArKysrKwogMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY2RjbGsuYwppbmRleCAzZDg2Nzk2M2E2ZDEuLjZlYWViYzM4ZWUwMSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwpAQCAtMjM0Myw2ICsyMzQz
LDkgQEAgaW50IGludGVsX21vZGVzZXRfY2FsY19jZGNsayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSkKIAkJCXJldHVybiByZXQ7CiAKIAkJc3RhdGUtPmNkY2xrLnBpcGUgPSBwaXBl
OworCisJCURSTV9ERUJVR19LTVMoIkNhbiBjaGFuZ2UgY2RjbGsgd2l0aCBwaXBlICVjIGFjdGl2
ZVxuIiwKKwkJCSAgICAgIHBpcGVfbmFtZShwaXBlKSk7CiAJfSBlbHNlIGlmIChpbnRlbF9jZGNs
a19uZWVkc19tb2Rlc2V0KCZkZXZfcHJpdi0+Y2RjbGsuYWN0dWFsLAogCQkJCQkgICAgICZzdGF0
ZS0+Y2RjbGsuYWN0dWFsKSkgewogCQlyZXQgPSBpbnRlbF9tb2Rlc2V0X2FsbF9waXBlcyhzdGF0
ZSk7CkBAIC0yMzUwLDYgKzIzNTMsOCBAQCBpbnQgaW50ZWxfbW9kZXNldF9jYWxjX2NkY2xrKHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCQkJcmV0dXJuIHJldDsKIAogCQlzdGF0
ZS0+Y2RjbGsucGlwZSA9IElOVkFMSURfUElQRTsKKworCQlEUk1fREVCVUdfS01TKCJNb2Rlc2V0
IHJlcXVpcmVkIGZvciBjZGNsayBjaGFuZ2VcbiIpOwogCX0KIAogCURSTV9ERUJVR19LTVMoIk5l
dyBjZGNsayBjYWxjdWxhdGVkIHRvIGJlIGxvZ2ljYWwgJXUga0h6LCBhY3R1YWwgJXUga0h6XG4i
LAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
