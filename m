Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C8E2F6C84
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 21:50:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C15A76E117;
	Thu, 14 Jan 2021 20:50:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C41A89F33
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 20:50:50 +0000 (UTC)
IronPort-SDR: 3N5qbjwbaQ83nnBE+fSnWorYEetM9ctxDAN9EkQXVqh10p9ysy9f22bjFgWJtlo3XfRT2Awt0C
 t0AXy0t+kTdA==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="239987266"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="239987266"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 12:50:49 -0800
IronPort-SDR: phYFq0kdVTjUH6sgzTvBrvc4GvcV8c3TLCoeVRBsbUbEihCiaVcLo9LdO03+q8COolezCEwl+B
 W79MjjAnk4ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="425064704"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 14 Jan 2021 12:50:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Jan 2021 22:50:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 22:50:39 +0200
Message-Id: <20210114205046.8247-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] drm/i915: Shuffle DP code around
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklu
IGtlZXBpbmcgd2l0aCBjdXJyZW50IHRyZW5kcywgbGV0J3MgdHJ5IHRvIGNsZWFuIHVwCmludGVs
X2RwLmMgYSBiaXQuCgpWaWxsZSBTeXJqw6Rsw6QgKDcpOgogIGRybS9pOTE1OiBGaXggdGhlIHRy
YWluaW5nIHBhdHRlcm4gZGVidWcgcHJpbnQKICBkcm0vaTkxNTogUmVtb3ZlIGRlYWQgVFBTMy0+
VFBTMiBmYWxsYmFjayBjb2RlCiAgZHJtL2k5MTU6IFJlbW92ZSBkZWFkIHNpZ25hbCBsZXZlbCBk
ZWJ1Z3MKICBkcm0vaTkxNTogUmVsb2NhdGUgaW50ZWxfZHBfcHJvZ3JhbV9saW5rX3RyYWluaW5n
X3BhdHRlcm4oKQogIGRybS9pOTE1OiBTcGxpdCBpbnRlbF9kZGlfZW5jb2Rlcl9yZXNldCgpIGZy
b20KICAgIGludGVsX2RwX2VuY29kZXJfcmVzZXQoKQogIGRybS9pOTE1OiBGaXggdGhlIFBIWSBj
b21wbGlhbmNlIHRlc3QgdnMuIGhvdHBsdWcgbWlzaGFwCiAgZHJtL2k5MTU6IEludHJvZHVjZSBn
NHhfZHAuYwoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8
ICAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9nNHhfZHAuYyAgICAgICAgIHwg
MTQzMSArKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2c0eF9k
cC5oICAgICAgICAgfCAgIDM2ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMgICAgICB8ICAgMTkgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jICB8ICAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jICAgICAgIHwgMTQ0MyArLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5oICAgICAgIHwgICAxNyArLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbGlua190cmFpbmluZy5jIHwgICAzMyArCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9saW5rX3RyYWluaW5nLmggfCAgICAzICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBpb19waHkuYyB8ICAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHBzLmMgICAgICB8ICAgIDEgKwogMTEgZmlsZXMgY2hhbmdlZCwgMTUyOCBp
bnNlcnRpb25zKCspLCAxNDU5IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvZzR4X2RwLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2c0eF9kcC5oCgotLSAKMi4yNi4yCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
