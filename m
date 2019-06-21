Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D706C4DEEC
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 04:01:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04D806E7EC;
	Fri, 21 Jun 2019 02:01:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 835136E7EC
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 02:01:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 19:01:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="183272163"
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jun 2019 19:01:49 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 19:01:27 -0700
Message-Id: <20190621020132.1164-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] EHL port programming
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

RUhMIGlzIGEgYml0IHVuaXF1ZSBiZWNhdXNlIGl0J3MgdGhlIG9ubHkgcGxhdGZvcm0gd2hlcmUg
bXVsdGlwbGUgRERJJ3MKY2FuIHNoYXJlIHRoZSBzYW1lIFBIWS4gIFRoaXMgbWFrZXMgc29tZSBv
ZiB0aGUgb3V0cHV0IHByb2dyYW1taW5nIGEgYml0CmNvbmZ1c2luZyBnaXZlbiB0aGF0IHdlIHRl
bmQgdG8gdXNlIHRoZSB0ZXJtICdwb3J0JyB0b2RheSB3aGVuIHRhbGtpbmcKYWJvdXQgYm90aCBE
REkncyBhbmQgUEhZJ3MuICBUaGUgZm91cnRoIHBhdGNoIGhlcmUgc3RhcnRzIHRvIHRyeSB0bwpz
ZXBhcmF0ZSB0aG9zZSB0d28gY29uY2VwdHMuCgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+CgpNYXR0IFJvcGVyICg1KToKICBkcm0vaTkxNS9pY2w6IERy
b3AgcG9ydCBwYXJhbWV0ZXIgdG8gaWNsX2dldF9jb21ib19idWZfdHJhbnMoKQogIGRybS9pOTE1
L2VobDogQWRkIHRoaXJkIGNvbWJvIFBIWSBvZmZzZXQKICBkcm0vaTkxNS9laGw6IERvbid0IHBy
b2dyYW0gUEhZX01JU0Mgb24gRUhMIFBIWSBDCiAgZHJtL2k5MTUvZ2VuMTE6IFN0YXJ0IGRpc3Rp
bmd1aXNoaW5nICdwaHknIGZyb20gJ3BvcnQnCiAgZHJtL2k5MTUvZWhsOiBFbmFibGUgRERJLUQK
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyAgICAgICAgfCAgMTcgKyst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyAgICAgfCAgIDQgKy0K
IC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19waHkuYyAgICB8IDEzMiArKysr
KysrKysrLS0tLS0tLS0KIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19waHku
aCAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAg
ICAgIHwgMTA3ICsrKysrKystLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyAgfCAgMzcgKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5oICB8ICAxNiArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYyAgICAgICB8ICAxMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcGxsX21nci5jIHwgICA4ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
ICAgICAgICAgICAgICAgfCAgMjIgKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYu
aCAgICAgICAgICAgICAgfCAgIDQgKy0KIDExIGZpbGVzIGNoYW5nZWQsIDIxNyBpbnNlcnRpb25z
KCspLCAxNDUgZGVsZXRpb25zKC0pCgotLSAKMi4xNy4yCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
