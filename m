Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 272252229A4
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 19:21:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 788C46EC98;
	Thu, 16 Jul 2020 17:21:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FB556EC9C
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 17:21:36 +0000 (UTC)
IronPort-SDR: gZztk7+zcOcxrj7IGM8fPwoVy1gzceFsWJprKO15+/Tju9arucl/sKv0gUqD7of06IPAkM9eDM
 rzpm65rWqExQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="149435029"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="149435029"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:21:35 -0700
IronPort-SDR: tmML8yISb2lJny5GCXYmEbpf7H+RyqfQNkdZ4l+PrvkRA9t1h/xGiWx0sahrCYUw5xv4qoG53Y
 TX3uOE4Po3Vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="286551317"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 16 Jul 2020 10:21:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jul 2020 20:21:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 20:21:01 +0300
Message-Id: <20200716172106.2656-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/14] drm/i915: Sort KBL PCI IDs
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNv
cnQgdGhlIEtCTCBQQ0kgSURzIG51bWVyaWNhbGx5LiBTb21lIG9yZGVyIHNlZW1zIGJldHRlciB0
aGFuCnJhbmRvbW5lc3MuCgpDYzogQWxleGVpIFBvZHRlbGV6aG5pa292IDxhcG9kdGVsZUBnbWFp
bC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCB8IDggKysrKy0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRz
LmgKaW5kZXggNTE4NWFjNzg5MDM4Li5kYjQwOTE3MWQ5YzMgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUv
ZHJtL2k5MTVfcGNpaWRzLmgKKysrIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaApAQCAtNDA2
LDggKzQwNiw4IEBACiAJSU5URUxfS0JMX1VMWF9HVDFfSURTKGluZm8pLCBcCiAJSU5URUxfVkdB
X0RFVklDRSgweDU5MDIsIGluZm8pLCAvKiBEVCAgR1QxICovIFwKIAlJTlRFTF9WR0FfREVWSUNF
KDB4NTkwOCwgaW5mbyksIC8qIEhhbG8gR1QxICovIFwKLQlJTlRFTF9WR0FfREVWSUNFKDB4NTkw
QiwgaW5mbyksIC8qIEhhbG8gR1QxICovIFwKLQlJTlRFTF9WR0FfREVWSUNFKDB4NTkwQSwgaW5m
bykgLyogU1JWIEdUMSAqLworCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1OTBBLCBpbmZvKSwgLyogU1JW
IEdUMSAqLyBcCisJSU5URUxfVkdBX0RFVklDRSgweDU5MEIsIGluZm8pIC8qIEhhbG8gR1QxICov
CiAKICNkZWZpbmUgSU5URUxfS0JMX1VMVF9HVDJfSURTKGluZm8pIFwKIAlJTlRFTF9WR0FfREVW
SUNFKDB4NTkxNiwgaW5mbyksIC8qIFVMVCBHVDIgKi8gXApAQCAtNDE5LDEwICs0MTksMTAgQEAK
ICNkZWZpbmUgSU5URUxfS0JMX0dUMl9JRFMoaW5mbykJXAogCUlOVEVMX0tCTF9VTFRfR1QyX0lE
UyhpbmZvKSwgXAogCUlOVEVMX0tCTF9VTFhfR1QyX0lEUyhpbmZvKSwgXAotCUlOVEVMX1ZHQV9E
RVZJQ0UoMHg1OTE3LCBpbmZvKSwgLyogTW9iaWxlIEdUMiAqLyBcCiAJSU5URUxfVkdBX0RFVklD
RSgweDU5MTIsIGluZm8pLCAvKiBEVCAgR1QyICovIFwKLQlJTlRFTF9WR0FfREVWSUNFKDB4NTkx
QiwgaW5mbyksIC8qIEhhbG8gR1QyICovIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4NTkxNywgaW5m
byksIC8qIE1vYmlsZSBHVDIgKi8gXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1OTFBLCBpbmZvKSwg
LyogU1JWIEdUMiAqLyBcCisJSU5URUxfVkdBX0RFVklDRSgweDU5MUIsIGluZm8pLCAvKiBIYWxv
IEdUMiAqLyBcCiAJSU5URUxfVkdBX0RFVklDRSgweDU5MUQsIGluZm8pIC8qIFdLUyBHVDIgKi8K
IAogI2RlZmluZSBJTlRFTF9LQkxfVUxUX0dUM19JRFMoaW5mbykgXAotLSAKMi4yNi4yCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
