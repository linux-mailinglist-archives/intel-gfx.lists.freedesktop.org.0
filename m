Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5774DAC801
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 19:21:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C34D89DB2;
	Sat,  7 Sep 2019 17:21:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F219389DB4
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2019 17:21:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Sep 2019 10:21:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,478,1559545200"; d="scan'208";a="191111429"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Sep 2019 10:21:31 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Sep 2019 22:44:37 +0530
Message-Id: <20190907171443.16181-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190907171443.16181-1-anshuman.gupta@intel.com>
References: <20190907171443.16181-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 1/7] drm/i915/tgl: Add DC3CO required
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
cmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDAwNmNmZmQ1NmJl
Mi4uMjczYTRlZDhiM2U5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
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
CiAvKgogICogSFNXKyBlRFAgUFNSIHJlZ2lzdGVycwogICoKQEAgLTEwMTE0LDYgKzEwMTIwLDgg
QEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAvKiBHRU45IERDICovCiAjZGVmaW5lIERDX1NUQVRF
X0VOCQkJX01NSU8oMHg0NTUwNCkKICNkZWZpbmUgIERDX1NUQVRFX0RJU0FCTEUJCTAKKyNkZWZp
bmUgIERDX1NUQVRFX0VOX0RDM0NPCQkoMSA8PCAzMCkKKyNkZWZpbmUgIERDX1NUQVRFX0RDM0NP
X1NUQVRVUwkJKDEgPDwgMjkpCiAjZGVmaW5lICBEQ19TVEFURV9FTl9VUFRPX0RDNQkJKDEgPDwg
MCkKICNkZWZpbmUgIERDX1NUQVRFX0VOX0RDOQkJKDEgPDwgMykKICNkZWZpbmUgIERDX1NUQVRF
X0VOX1VQVE9fREM2CQkoMiA8PCAwKQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
