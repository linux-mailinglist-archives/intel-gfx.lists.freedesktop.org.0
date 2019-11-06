Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A146F0BB8
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 02:45:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 351FD6E11D;
	Wed,  6 Nov 2019 01:45:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C06D6E11D
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 01:45:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 17:45:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,272,1569308400"; d="scan'208";a="196037945"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga008.jf.intel.com with ESMTP; 05 Nov 2019 17:45:09 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Nov 2019 17:45:03 -0800
Message-Id: <20191106014504.167656-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191106014504.167656-1-jose.souza@intel.com>
References: <20191106014504.167656-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/psr: Check if sink PSR capability
 changed
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

ZURQIHNwZWNpZmljYXRpb24gc3RhdGVzIHRoYXQgc2luayBjYW4gaGF2ZSBpdHMgUFNSIGNhcGFi
aWxpdHkKY2hhbmdlZCwgSSBoYXZlIG5ldmVyIGZvdW5kIGFueSBwYW5lbCBkb2luZyB0aGF0IGJ1
dCBsZXRzIGFkZCB0aGF0CmZvciBjb21wbGV0ZW5lc3MuCkZvciBub3cgaXQgaXMgbm90IHJlYWRp
bmcgYmFjayB0aGUgUFNSIGNhcGFiaWxpdGllcyBhbmQgaWYgcG9zc2libGUKcmUtZW5hYmxpbmcg
UFNSLCB0aGlzIHdpbGwgYmUgYWRkZWQgaWYgYSBwYW5lbCBpcyBmb3VuZCB1c2luZyB0aGlzCmZl
YXR1cmUuCgpDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMjEgKysr
KysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IGM3MDNhMTBkMmZkNy4u
Y2RkOWMyNzBiNDJjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMK
QEAgLTE0MzcsNiArMTQzNywyNiBAQCBzdGF0aWMgdm9pZCBwc3JfYWxwbV9jaGVjayhzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwKQogCX0KIH0KIAorc3RhdGljIHZvaWQgcHNyX2NhcGFiaWxpdHlf
Y2hhbmdlZF9jaGVjayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQoreworCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOworCXN0cnVjdCBp
OTE1X3BzciAqcHNyID0gJmRldl9wcml2LT5wc3I7CisJdTggdmFsOworCWludCByOworCisJciA9
IGRybV9kcF9kcGNkX3JlYWRiKCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfRVNJLCAmdmFsKTsKKwlp
ZiAociAhPSAxKSB7CisJCURSTV9FUlJPUigiRXJyb3IgcmVhZGluZyBEUF9QU1JfRVNJXG4iKTsK
KwkJcmV0dXJuOworCX0KKworCWlmICh2YWwgJiBEUF9QU1JfQ0FQU19DSEFOR0UpIHsKKwkJaW50
ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKGludGVsX2RwKTsKKwkJcHNyLT5zaW5rX25vdF9yZWxpYWJs
ZSA9IHRydWU7CisJCURSTV9ERUJVR19LTVMoIlNpbmsgUFNSIGNhcGFiaWxpdHkgY2hhbmdlZCwg
ZGlzYWJsaW5nIFBTUlxuIik7CisJfQorfQorCiB2b2lkIGludGVsX3Bzcl9zaG9ydF9wdWxzZShz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwpAQCAtMTQ4MCw2ICsxNTAwLDcgQEAgdm9p
ZCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAlkcm1f
ZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsIERQX1BTUl9FUlJPUl9TVEFUVVMsIGVycm9y
X3N0YXR1cyk7CiAKIAlwc3JfYWxwbV9jaGVjayhpbnRlbF9kcCk7CisJcHNyX2NhcGFiaWxpdHlf
Y2hhbmdlZF9jaGVjayhpbnRlbF9kcCk7CiAKIGV4aXQ6CiAJbXV0ZXhfdW5sb2NrKCZwc3ItPmxv
Y2spOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
