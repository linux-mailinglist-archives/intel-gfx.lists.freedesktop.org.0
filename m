Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B43A7229
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 20:02:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80FCB8972D;
	Tue,  3 Sep 2019 18:02:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2D788972D
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 18:02:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 11:02:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,463,1559545200"; d="scan'208";a="382212944"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by fmsmga005.fm.intel.com with ESMTP; 03 Sep 2019 11:02:46 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Sep 2019 23:29:33 +0530
Message-Id: <20190903175939.6741-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190903175939.6741-1-anshuman.gupta@intel.com>
References: <20190903175939.6741-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 1/7] drm/i915/tgl: Add DC3CO required
 register and bits
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkaW5nIGZvbGxvd2luZyBkZWZpbml0aW9uIHRvIGk5MTVfcmVnLmgKMS4gRENfU1RBVEVfRU4g
cmVnaXN0ZXIgREMzQ08gYml0IGZpZWxkcyBhbmQgbWFza3MuCjIuIFRyYW5zY29kZXIgRVhJVExJ
TkUgcmVnaXN0ZXIgYW5kIGl0cyBiaXQgZmllbGRzIGFuZCBtYXNrLgoKQ2M6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5j
b20+CkNjOiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgOCArKysrKysrKwogMSBmaWxlIGNoYW5nZWQs
IDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDZjNDNiOGM1ODNi
Yi4uZTFiZGQ1NGIxODE2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTQxMzUsNiArNDEz
NSw3IEBAIGVudW0gewogI2RlZmluZSBfVlRPVEFMX0EJMHg2MDAwYwogI2RlZmluZSBfVkJMQU5L
X0EJMHg2MDAxMAogI2RlZmluZSBfVlNZTkNfQQkweDYwMDE0CisjZGVmaW5lIF9FWElUTElORV9B
CTB4NjAwMTgKICNkZWZpbmUgX1BJUEVBU1JDCTB4NjAwMWMKICNkZWZpbmUgX0JDTFJQQVRfQQkw
eDYwMDIwCiAjZGVmaW5lIF9WU1lOQ1NISUZUX0EJMHg2MDAyOApAQCAtNDE4MSwxMSArNDE4Miwx
NiBAQCBlbnVtIHsKICNkZWZpbmUgVlRPVEFMKHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5zLCBf
VlRPVEFMX0EpCiAjZGVmaW5lIFZCTEFOSyh0cmFucykJCV9NTUlPX1RSQU5TMih0cmFucywgX1ZC
TEFOS19BKQogI2RlZmluZSBWU1lOQyh0cmFucykJCV9NTUlPX1RSQU5TMih0cmFucywgX1ZTWU5D
X0EpCisjZGVmaW5lIEVYSVRMSU5FKHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5zLCBfRVhJVExJ
TkVfQSkKICNkZWZpbmUgQkNMUlBBVCh0cmFucykJCV9NTUlPX1RSQU5TMih0cmFucywgX0JDTFJQ
QVRfQSkKICNkZWZpbmUgVlNZTkNTSElGVCh0cmFucykJX01NSU9fVFJBTlMyKHRyYW5zLCBfVlNZ
TkNTSElGVF9BKQogI2RlZmluZSBQSVBFU1JDKHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5zLCBf
UElQRUFTUkMpCiAjZGVmaW5lIFBJUEVfTVVMVCh0cmFucykJX01NSU9fVFJBTlMyKHRyYW5zLCBf
UElQRV9NVUxUX0EpCiAKKyNkZWZpbmUgIEVYSVRMSU5FX0VOQUJMRQkoMSA8PCAzMSkKKyNkZWZp
bmUgIEVYSVRMSU5FX01BU0sJCSgweDFmZmYpCisjZGVmaW5lICBFWElUTElORV9TSElGVAkJMAor
CiAvKgogICogSFNXKyBlRFAgUFNSIHJlZ2lzdGVycwogICoKQEAgLTEwMDk3LDYgKzEwMTAzLDgg
QEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAvKiBHRU45IERDICovCiAjZGVmaW5lIERDX1NUQVRF
X0VOCQkJX01NSU8oMHg0NTUwNCkKICNkZWZpbmUgIERDX1NUQVRFX0RJU0FCTEUJCTAKKyNkZWZp
bmUgIERDX1NUQVRFX0VOX0RDM0NPCQkoMSA8PCAzMCkKKyNkZWZpbmUgIERDX1NUQVRFX0RDM0NP
X1NUQVRVUwkJKDEgPDwgMjkpCiAjZGVmaW5lICBEQ19TVEFURV9FTl9VUFRPX0RDNQkJKDEgPDwg
MCkKICNkZWZpbmUgIERDX1NUQVRFX0VOX0RDOQkJKDEgPDwgMykKICNkZWZpbmUgIERDX1NUQVRF
X0VOX1VQVE9fREM2CQkoMiA8PCAwKQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
