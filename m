Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EA1F0BB9
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 02:45:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59C336EBB9;
	Wed,  6 Nov 2019 01:45:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 767836EBB9
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 01:45:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 17:45:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,272,1569308400"; d="scan'208";a="196037949"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga008.jf.intel.com with ESMTP; 05 Nov 2019 17:45:09 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Nov 2019 17:45:04 -0800
Message-Id: <20191106014504.167656-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191106014504.167656-1-jose.souza@intel.com>
References: <20191106014504.167656-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/vbt: Parse power conservation
 features block
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

U2luY2UgVkJUIDIyOCBpcyBmcm9tIHRoaXMgYmxvY2sgdGhhdCBQU1IgYW5kIG90aGVyIHBvd2Vy
IHNhdmluZwpmZWF0dXJlcyBjb25maWd1cmF0aW9uIHNob3VsZCBiZSByZWFkIGZyb20uCgpDYzog
R3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyAgICAgfCAxOSArKysrKysrKysr
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaCB8IDI5ICsr
KysrKysrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKaW5k
ZXggYTAzZjU2YjdiNGVmLi5iZjc5ZTk4NThiZDggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jCkBAIC01NjEsNyArNTYxLDIzIEBAIHBhcnNlX2RyaXZlcl9mZWF0
dXJlcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJICovCiAJaWYgKCFkcml2
ZXItPmRycnNfZW5hYmxlZCkKIAkJZGV2X3ByaXYtPnZidC5kcnJzX3R5cGUgPSBEUlJTX05PVF9T
VVBQT1JURUQ7Ci0JZGV2X3ByaXYtPnZidC5wc3IuZW5hYmxlID0gZHJpdmVyLT5wc3JfZW5hYmxl
ZDsKKwlpZiAoYmRiLT52ZXJzaW9uIDwgMjI4KQorCQlkZXZfcHJpdi0+dmJ0LnBzci5lbmFibGUg
PSBkcml2ZXItPnBzcl9lbmFibGVkOworfQorCitzdGF0aWMgdm9pZAorcGFyc2VfcG93ZXJfY29u
c2VydmF0aW9uX2ZlYXR1cmVzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJ
CQkgIGNvbnN0IHN0cnVjdCBiZGJfaGVhZGVyICpiZGIpCit7CisJY29uc3Qgc3RydWN0IGJkYl9s
ZnBfcG93ZXIgKnBvd2VyOworCXU4IHBhbmVsX3R5cGUgPSBkZXZfcHJpdi0+dmJ0LnBhbmVsX3R5
cGU7CisKKwlwb3dlciA9IGZpbmRfc2VjdGlvbihiZGIsIEJEQl9MVkRTX1BPV0VSKTsKKwlpZiAo
IXBvd2VyKQorCQlyZXR1cm47CisKKwlpZiAoYmRiLT52ZXJzaW9uID49IDIyOCkKKwkJZGV2X3By
aXYtPnZidC5wc3IuZW5hYmxlID0gcG93ZXItPnBzciAmICgxIDw8IHBhbmVsX3R5cGUpOwogfQog
CiBzdGF0aWMgdm9pZApAQCAtMTg3OCw2ICsxODk0LDcgQEAgdm9pZCBpbnRlbF9iaW9zX2luaXQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXBhcnNlX2xmcF9iYWNrbGlnaHQo
ZGV2X3ByaXYsIGJkYik7CiAJcGFyc2Vfc2R2b19wYW5lbF9kYXRhKGRldl9wcml2LCBiZGIpOwog
CXBhcnNlX2RyaXZlcl9mZWF0dXJlcyhkZXZfcHJpdiwgYmRiKTsKKwlwYXJzZV9wb3dlcl9jb25z
ZXJ2YXRpb25fZmVhdHVyZXMoZGV2X3ByaXYsIGJkYik7CiAJcGFyc2VfZWRwKGRldl9wcml2LCBi
ZGIpOwogCXBhcnNlX3BzcihkZXZfcHJpdiwgYmRiKTsKIAlwYXJzZV9taXBpX2NvbmZpZyhkZXZf
cHJpdiwgYmRiKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdmJ0X2RlZnMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2Rl
ZnMuaAppbmRleCA2OWE3Y2IxZmExMjEuLjMxZjQ3Y2U1NjU4NyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaApAQCAtNzkyLDYgKzc5MiwzNSBAQCBz
dHJ1Y3QgYmRiX2xmcF9iYWNrbGlnaHRfZGF0YSB7CiAJc3RydWN0IGxmcF9iYWNrbGlnaHRfY29u
dHJvbF9tZXRob2QgYmFja2xpZ2h0X2NvbnRyb2xbMTZdOwogfSBfX3BhY2tlZDsKIAorLyoKKyAq
IEJsb2NrIDQ0IC0gTEZQIFBvd2VyIENvbnNlcnZhdGlvbiBGZWF0dXJlcyBCbG9jaworICovCisK
K3N0cnVjdCBhbHNfZGF0YV9lbnRyeSB7CisJdTE2IGJhY2tsaWdodF9hZGp1c3Q7CisJdTE2IGx1
eDsKK30gX19wYWNrZWQ7CisKK3N0cnVjdCBhZ3Jlc3NpdmVuZXNzX3Byb2ZpbGVfZW50cnkgewor
CXU4IGRwc3RfYWdyZXNzaXZlbmVzcyA6IDQ7CisJdTggbGFjZV9hZ3Jlc3NpdmVuZXNzIDogNDsK
K30gX19wYWNrZWQ7CisKK3N0cnVjdCBiZGJfbGZwX3Bvd2VyIHsKKwl1OCBsZnBfZmVhdHVyZV9i
aXRzOworCXN0cnVjdCBhbHNfZGF0YV9lbnRyeSBhbHNbNV07CisJdTggbGFjZV9hZ2dyZXNzaXZl
bmVzc19wcm9maWxlOworCXUxNiBkcHN0OworCXUxNiBwc3I7CisJdTE2IGRycnM7CisJdTE2IGxh
Y2Vfc3VwcG9ydDsKKwl1MTYgYWR0OworCXUxNiBkbXJyczsKKwl1MTYgYWRiOworCXUxNiBsYWNl
X2VuYWJsZWRfc3RhdHVzOworCXN0cnVjdCBhZ3Jlc3NpdmVuZXNzX3Byb2ZpbGVfZW50cnkgYWdn
cmVzc2l2ZW5lc1sxNl07Cit9IF9fcGFja2VkOworCiAvKgogICogQmxvY2sgNTIgLSBNSVBJIENv
bmZpZ3VyYXRpb24gQmxvY2sKICAqLwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
