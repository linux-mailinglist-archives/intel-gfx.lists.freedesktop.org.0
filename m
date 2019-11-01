Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D909EEC2CE
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 13:38:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D3576F7C4;
	Fri,  1 Nov 2019 12:38:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C76C56F7C4
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 12:38:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 05:38:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,255,1569308400"; d="scan'208";a="212767457"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by orsmga002.jf.intel.com with ESMTP; 01 Nov 2019 05:38:18 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Nov 2019 14:35:57 +0200
Message-Id: <20191101123557.1117-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191101123557.1117-1-stanislav.lisovskiy@intel.com>
References: <20191101123557.1117-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 2/2] drm/i915: Restrict qgv points which
 don't have enough bandwidth.
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

QWNjb3JkaW5nIHRvIEJTcGVjIDUzOTk4LCB3ZSBzaG91bGQgdHJ5IHRvCnJlc3RyaWN0IHFndiBw
b2ludHMsIHdoaWNoIGNhbid0IHByb3ZpZGUKZW5vdWdoIGJhbmR3aWR0aCBmb3IgZGVzaXJlZCBk
aXNwbGF5IGNvbmZpZ3VyYXRpb24uCgpDdXJyZW50bHkgd2UgYXJlIGp1c3QgY29tcGFyaW5nIGFn
YWluc3QgYWxsIG9mCnRob3NlIGFuZCB0YWtlIG1pbmltdW0od29yc3QgY2FzZSkuCgp2MjogRml4
ZWQgd3JvbmcgUENvZGUgcmVwbHkgbWFzaywgcmVtb3ZlZCBoYXJkY29kZWQKICAgIHZhbHVlcy4K
CnYzOiBGb3JiaWQgc2ltdWx0YW5lb3VzIGxlZ2FjeSBTQUdWIFBDb2RlIHJlcXVlc3RzIGFuZAog
ICAgcmVzdHJpY3RpbmcgcWd2IHBvaW50cy4gUHV0IHRoZSBhY3R1YWwgcmVzdHJpY3Rpb24KICAg
IHRvIGNvbW1pdCBmdW5jdGlvbiwgYWRkZWQgc2VyaWFsaXphdGlvbih0aGFua3MgdG8gVmlsbGUp
CiAgICB0byBwcmV2ZW50IGNvbW1pdCBiZWluZyBhcHBsaWVkIG91dCBvZiBvcmRlciBpbiBjYXNl
IG9mCiAgICBub25ibG9ja2luZyBhbmQvb3Igbm9tb2Rlc2V0IGNvbW1pdHMuCgp2NDoKICAgIC0g
TWlub3IgY29kZSByZWZhY3RvcmluZywgZml4ZWQgZmV3IHR5cG9zKHRoYW5rcyB0byBKYW1lcyBB
dXNtdXMpCiAgICAtIENoYW5nZSB0aGUgbmFtaW5nIG9mIHFndiBwb2ludAogICAgICBtYXNraW5n
L3VubWFza2luZyBmdW5jdGlvbnMoSmFtZXMgQXVzbXVzKS4KICAgIC0gU2ltcGxpZnkgdGhlIG1h
c2tpbmcvdW5tYXNraW5nIG9wZXJhdGlvbiBpdHNlbGYsCiAgICAgIGFzIHdlIGRvbid0IG5lZWQg
dG8gbWFzayBvbmx5IHNpbmdsZSBwb2ludCBwZXIgcmVxdWVzdChKYW1lcyBBdXNtdXMpCiAgICAt
IFJlamVjdCBhbmQgc3RpY2sgdG8gaGlnaGVzdCBiYW5kd2lkdGggcG9pbnQgaWYgU0FHVgogICAg
ICBjYW4ndCBiZSBlbmFibGVkKEJTcGVjKQoKdjU6CiAgICAtIEFkZCBuZXcgbWFpbGJveCByZXBs
eSBjb2Rlcywgd2hpY2ggc2VlbXMgdG8gaGFwcGVuIGR1cmluZyBib290CiAgICAgIHRpbWUgZm9y
IFRHTCBhbmQgaW5kaWNhdGUgdGhhdCBRR1Ygc2V0dGluZyBpcyBub3QgeWV0IGF2YWlsYWJsZS4K
CnY2OgogICAgLSBJbmNyZWFzZSBudW1iZXIgb2Ygc3VwcG9ydGVkIFFHViBwb2ludHMgdG8gYmUg
aW4gc3luYyB3aXRoIEJTcGVjLgoKdjc6IC0gUmViYXNlZCBhbmQgcmVzb2x2ZWQgY29uZmxpY3Qg
dG8gZml4IGJ1aWxkIGZhaWx1cmUuCiAgICAtIEZpeCBOVU1fUUdWX1BPSU5UUyB0byA4IGFuZCBt
b3ZlZCB0aGF0IHRvIGhlYWRlciBmaWxlKEphbWVzIEF1c211cykKClJldmlld2VkLWJ5OiBKYW1l
cyBBdXNtdXMgPGphbWVzLmF1c211c0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFN0YW5pc2xh
diBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgpDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGludGVsLmNvbT4KQ2M6IEphbWVzIEF1c211cyA8amFtZXMu
YXVzbXVzQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2F0b21pYy5oICAgfCAgIDMgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
dy5jICAgICAgIHwgMTA4ICsrKysrKysrKysrKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9idy5oICAgICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICA1NyArKysrKysrKy0KIC4uLi9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICAgOCArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfc2lkZWJhbmQuYyAgICAgICAgIHwgIDI3ICsrKystCiA4IGZpbGVzIGNoYW5nZWQsIDE4
MyBpbnNlcnRpb25zKCspLCAyOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hdG9taWMuaAppbmRleCA0OWQ1Y2IxYjllMGEuLjNhYjk5NzA0ZTViOCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5oCkBAIC03LDYg
KzcsNyBAQAogI2RlZmluZSBfX0lOVEVMX0FUT01JQ19IX18KIAogI2luY2x1ZGUgPGxpbnV4L3R5
cGVzLmg+CisjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIgogCiBzdHJ1Y3QgZHJtX2F0
b21pY19zdGF0ZTsKIHN0cnVjdCBkcm1fY29ubmVjdG9yOwpAQCAtMzksNiArNDAsOCBAQCB2b2lk
IGludGVsX2NydGNfZGVzdHJveV9zdGF0ZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCiBzdHJ1Y3Qg
ZHJtX2F0b21pY19zdGF0ZSAqaW50ZWxfYXRvbWljX3N0YXRlX2FsbG9jKHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYpOwogdm9pZCBpbnRlbF9hdG9taWNfc3RhdGVfY2xlYXIoc3RydWN0IGRybV9hdG9t
aWNfc3RhdGUgKnN0YXRlKTsKIAoraW50IGludGVsX2F0b21pY19zZXJpYWxpemVfZ2xvYmFsX3N0
YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKTsKKwogc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKgogaW50ZWxfYXRvbWljX2dldF9jcnRjX3N0YXRlKHN0cnVjdCBkcm1fYXRvbWlj
X3N0YXRlICpzdGF0ZSwKIAkJCSAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKaW5kZXggMjJlODNmODU3ZGU4Li5jMDFiMmU4
ZjRmODggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKQEAgLTgsMTQg
KzgsMTcgQEAKICNpbmNsdWRlICJpbnRlbF9idy5oIgogI2luY2x1ZGUgImludGVsX2Rpc3BsYXlf
dHlwZXMuaCIKICNpbmNsdWRlICJpbnRlbF9zaWRlYmFuZC5oIgorI2luY2x1ZGUgImludGVsX2F0
b21pYy5oIgorI2luY2x1ZGUgImludGVsX3BtLmgiCiAKIC8qIFBhcmFtZXRlcnMgZm9yIFFjbGsg
R2V5c2VydmlsbGUgKFFHVikgKi8KIHN0cnVjdCBpbnRlbF9xZ3ZfcG9pbnQgewogCXUxNiBkY2xr
LCB0X3JwLCB0X3JkcHJlLCB0X3JjLCB0X3JhcywgdF9yY2Q7CiB9OwogCisKIHN0cnVjdCBpbnRl
bF9xZ3ZfaW5mbyB7Ci0Jc3RydWN0IGludGVsX3Fndl9wb2ludCBwb2ludHNbM107CisJc3RydWN0
IGludGVsX3Fndl9wb2ludCBwb2ludHNbTlVNX1NBR1ZfUE9JTlRTXTsKIAl1OCBudW1fcG9pbnRz
OwogCXU4IG51bV9jaGFubmVsczsKIAl1OCB0X2JsOwpAQCAtMTEzLDYgKzExNiwyNyBAQCBzdGF0
aWMgaW50IGljbF9wY29kZV9yZWFkX3Fndl9wb2ludF9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAlyZXR1cm4gMDsKIH0KIAoraW50IGljbF9wY29kZV9yZXN0cmljdF9x
Z3ZfcG9pbnRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJCQkgIHUzMiBw
b2ludHNfbWFzaykKK3sKKwlpbnQgcmV0OworCisJLyogYnNwZWMgc2F5cyB0byBrZWVwIHJldHJ5
aW5nIGZvciBhdCBsZWFzdCAxIG1zICovCisJcmV0ID0gc2tsX3Bjb2RlX3JlcXVlc3QoZGV2X3By
aXYsIElDTF9QQ09ERV9TQUdWX0RFX01FTV9TU19DT05GSUcsCisJCQkJcG9pbnRzX21hc2ssCisJ
CQkJR0VOMTFfUENPREVfUE9JTlRTX1JFU1RSSUNURURfTUFTSywKKwkJCQlHRU4xMV9QQ09ERV9Q
T0lOVFNfUkVTVFJJQ1RFRCwKKwkJCQkxKTsKKworCWlmIChyZXQgPCAwKSB7CisJCURSTV9FUlJP
UigiRmFpbGVkIHRvIGRpc2FibGUgcWd2IHBvaW50cyAoJWQpXG4iLCByZXQpOworCQlyZXR1cm4g
cmV0OworCX0KKworCXJldHVybiAwOworfQorCisKIHN0YXRpYyBpbnQgaWNsX2dldF9xZ3ZfcG9p
bnRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCSAgICAgIHN0cnVjdCBp
bnRlbF9xZ3ZfaW5mbyAqcWkpCiB7CkBAIC0yNzAsMjIgKzI5NCw2IEBAIHZvaWQgaW50ZWxfYndf
aW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCWljbF9nZXRfYndf
aW5mbyhkZXZfcHJpdiwgJmljbF9zYV9pbmZvKTsKIH0KIAotc3RhdGljIHVuc2lnbmVkIGludCBp
bnRlbF9tYXhfZGF0YV9yYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKLQkJ
CQkJaW50IG51bV9wbGFuZXMpCi17Ci0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCi0J
CS8qCi0JCSAqIEZJWE1FIHdpdGggU0FHViBkaXNhYmxlZCBtYXliZSB3ZSBjYW4gYXNzdW1lCi0J
CSAqIHBvaW50IDEgd2lsbCBhbHdheXMgYmUgdXNlZD8gU2VlbXMgdG8gbWF0Y2gKLQkJICogdGhl
IGJlaGF2aW91ciBvYnNlcnZlZCBpbiB0aGUgd2lsZC4KLQkJICovCi0JCXJldHVybiBtaW4zKGlj
bF9tYXhfYncoZGV2X3ByaXYsIG51bV9wbGFuZXMsIDApLAotCQkJICAgIGljbF9tYXhfYncoZGV2
X3ByaXYsIG51bV9wbGFuZXMsIDEpLAotCQkJICAgIGljbF9tYXhfYncoZGV2X3ByaXYsIG51bV9w
bGFuZXMsIDIpKTsKLQllbHNlCi0JCXJldHVybiBVSU5UX01BWDsKLX0KLQogc3RhdGljIHVuc2ln
bmVkIGludCBpbnRlbF9id19jcnRjX251bV9hY3RpdmVfcGxhbmVzKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewogCS8qCkBAIC0zNzcsNyArMzg1LDEwIEBAIGlu
dCBpbnRlbF9id19hdG9taWNfY2hlY2soc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUp
CiAJdW5zaWduZWQgaW50IGRhdGFfcmF0ZSwgbWF4X2RhdGFfcmF0ZTsKIAl1bnNpZ25lZCBpbnQg
bnVtX2FjdGl2ZV9wbGFuZXM7CiAJc3RydWN0IGludGVsX2NydGMgKmNydGM7Ci0JaW50IGk7CisJ
aW50IGksIHJldDsKKwlzdHJ1Y3QgaW50ZWxfcWd2X2luZm8gcWkgPSB7fTsKKwl1MzIgYWxsb3dl
ZF9wb2ludHMgPSAwOworCXVuc2lnbmVkIGludCBtYXhfYndfcG9pbnQgPSAwLCBtYXhfYncgPSAw
OwogCiAJLyogRklYTUUgZWFybGllciBnZW5zIG5lZWQgc29tZSBjaGVja3MgdG9vICovCiAJaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPCAxMSkKQEAgLTQyMSwxNiArNDMyLDY3IEBAIGludCBpbnRl
bF9id19hdG9taWNfY2hlY2soc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJZGF0
YV9yYXRlID0gaW50ZWxfYndfZGF0YV9yYXRlKGRldl9wcml2LCBid19zdGF0ZSk7CiAJbnVtX2Fj
dGl2ZV9wbGFuZXMgPSBpbnRlbF9id19udW1fYWN0aXZlX3BsYW5lcyhkZXZfcHJpdiwgYndfc3Rh
dGUpOwogCi0JbWF4X2RhdGFfcmF0ZSA9IGludGVsX21heF9kYXRhX3JhdGUoZGV2X3ByaXYsIG51
bV9hY3RpdmVfcGxhbmVzKTsKLQogCWRhdGFfcmF0ZSA9IERJVl9ST1VORF9VUChkYXRhX3JhdGUs
IDEwMDApOwogCi0JaWYgKGRhdGFfcmF0ZSA+IG1heF9kYXRhX3JhdGUpIHsKLQkJRFJNX0RFQlVH
X0tNUygiQmFuZHdpZHRoICV1IE1CL3MgZXhjZWVkcyBtYXggYXZhaWxhYmxlICVkIE1CL3MgKCVk
IGFjdGl2ZSBwbGFuZXMpXG4iLAotCQkJICAgICAgZGF0YV9yYXRlLCBtYXhfZGF0YV9yYXRlLCBu
dW1fYWN0aXZlX3BsYW5lcyk7CisJcmV0ID0gaWNsX2dldF9xZ3ZfcG9pbnRzKGRldl9wcml2LCAm
cWkpOworCWlmIChyZXQgPCAwKQorCQlyZXR1cm4gMDsKKworCWZvciAoaSA9IDA7IGkgPCBxaS5u
dW1fcG9pbnRzOyBpKyspIHsKKwkJbWF4X2RhdGFfcmF0ZSA9IGljbF9tYXhfYncoZGV2X3ByaXYs
IG51bV9hY3RpdmVfcGxhbmVzLCBpKTsKKwkJLyoKKwkJICogV2UgbmVlZCB0byBrbm93IHdoaWNo
IHFndiBwb2ludCBnaXZlcyB1cworCQkgKiBtYXhpbXVtIGJhbmR3aWR0aCBpbiBvcmRlciB0byBk
aXNhYmxlIFNBR1YKKwkJICogaWYgd2UgZmluZCB0aGF0IHdlIGV4Y2VlZCBTQUdWIGJsb2NrIHRp
bWUKKwkJICogd2l0aCB3YXRlcm1hcmtzLiBCeSB0aGF0IG1vbWVudCB3ZSBhbHJlYWR5CisJCSAq
IGhhdmUgdGhvc2UsIGFzIGl0IGlzIGNhbGN1bGF0ZWQgZWFybGllciBpbgorCQkgKiBpbnRlbF9h
dG9taWNfY2hlY2ssCisJCSAqLworCQlpZiAobWF4X2RhdGFfcmF0ZSA+IG1heF9idykgeworCQkJ
bWF4X2J3X3BvaW50ID0gaTsKKwkJCW1heF9idyA9IG1heF9kYXRhX3JhdGU7CisJCX0KKwkJaWYg
KG1heF9kYXRhX3JhdGUgPj0gZGF0YV9yYXRlKQorCQkJYWxsb3dlZF9wb2ludHMgfD0gMSA8PCBp
OworCQlEUk1fREVCVUdfS01TKCJRR1YgcG9pbnQgJWQ6IG1heCBidyAlZCByZXF1aXJlZCAlZFxu
IiwKKwkJCSAgICAgIGksIG1heF9kYXRhX3JhdGUsIGRhdGFfcmF0ZSk7CisJfQorCisJLyoKKwkg
KiBCU3BlYyBzdGF0ZXMgdGhhdCB3ZSBhbHdheXMgc2hvdWxkIGhhdmUgYXQgbGVhc3Qgb25lIGFs
bG93ZWQgcG9pbnQKKwkgKiBsZWZ0LCBzbyBpZiB3ZSBjb3VsZG4ndCAtIHNpbXBseSByZWplY3Qg
dGhlIGNvbmZpZ3VyYXRpb24gZm9yIG9idmlvdXMKKwkgKiByZWFzb25zLgorCSAqLworCWlmIChh
bGxvd2VkX3BvaW50cyA9PSAwKSB7CisJCURSTV9ERUJVR19LTVMoIkNvdWxkIG5vdCBmaW5kIGFu
eSBzdWl0YWJsZSBRR1YgcG9pbnRzXG4iKTsKIAkJcmV0dXJuIC1FSU5WQUw7CiAJfQogCisJLyoK
KwkgKiBMZWF2ZSBvbmx5IHNpbmdsZSBwb2ludCB3aXRoIGhpZ2hlc3QgYmFuZHdpZHRoLCBpZgor
CSAqIHdlIGNhbid0IGVuYWJsZSBTQUdWIGFjY29yZGluZyB0byBCU3BlYy4KKwkgKi8KKwlpZiAo
IWludGVsX2Nhbl9lbmFibGVfc2FndihzdGF0ZSkpCisJCWFsbG93ZWRfcG9pbnRzID0gMSA8PCBt
YXhfYndfcG9pbnQ7CisKKwkvKgorCSAqIFdlIHN0b3JlIHRoZSBvbmVzIHdoaWNoIG5lZWQgdG8g
YmUgbWFza2VkIGFzIHRoYXQgaXMgd2hhdCBQQ29kZQorCSAqIGFjdHVhbGx5IGFjY2VwdHMgYXMg
YSBwYXJhbWV0ZXIuCisJICovCisJc3RhdGUtPnFndl9wb2ludHNfbWFzayA9ICh+YWxsb3dlZF9w
b2ludHMpICYgKCgxIDw8IHFpLm51bV9wb2ludHMpIC0gMSk7CisKKwkvKgorCSAqIElmIHRoZSBh
Y3R1YWwgbWFzayBoYWQgY2hhbmdlZCB3ZSBuZWVkIHRvIG1ha2Ugc3VyZSB0aGF0CisJICogdGhl
IGNvbW1pdHMgYXJlIHNlcmlhbGl6ZWQoaW4gY2FzZSB0aGlzIGlzIGEgbm9tb2Rlc2V0LCBub25i
bG9ja2luZykKKwkgKi8KKwlpZiAoc3RhdGUtPnFndl9wb2ludHNfbWFzayAhPSBkZXZfcHJpdi0+
cWd2X3BvaW50c19tYXNrKSB7CisJCXJldCA9IGludGVsX2F0b21pY19zZXJpYWxpemVfZ2xvYmFs
X3N0YXRlKHN0YXRlKTsKKwkJaWYgKHJldCkgeworCQkJRFJNX0RFQlVHX0tNUygiQ291bGQgbm90
IHNlcmlhbGl6ZSBnbG9iYWwgc3RhdGVcbiIpOworCQkJcmV0dXJuIHJldDsKKwkJfQorCX0KKwog
CXJldHVybiAwOwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2J3LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmgKaW5k
ZXggOWRiMTBhZjAxMmY0Li42NmJmOWJjMTBiNzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2J3LmgKQEAgLTI4LDUgKzI4LDcgQEAgaW50IGludGVsX2J3X2luaXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIGludCBpbnRlbF9id19hdG9taWNfY2hlY2so
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOwogdm9pZCBpbnRlbF9id19jcnRjX3Vw
ZGF0ZShzdHJ1Y3QgaW50ZWxfYndfc3RhdGUgKmJ3X3N0YXRlLAogCQkJICBjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CitpbnQgaWNsX3Bjb2RlX3Jlc3RyaWN0X3Fn
dl9wb2ludHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQkJCSAgdTMyIHBv
aW50c19tYXNrKTsKIAogI2VuZGlmIC8qIF9fSU5URUxfQldfSF9fICovCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDhkMTg4MWRlMGJhYi4uY2Ix
YWY1MmYzODE2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwpAQCAtMTQ2MTksNiArMTQ2MTksNDggQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2Ns
ZWFudXBfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCiAJaW50ZWxfYXRvbWljX2hlbHBl
cl9mcmVlX3N0YXRlKGk5MTUpOwogfQogCitzdGF0aWMgdm9pZCBpbnRlbF9xZ3ZfcG9pbnRzX21h
c2soc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCit7CisJc3RydWN0IGRybV9kZXZp
Y2UgKmRldiA9IHN0YXRlLT5iYXNlLmRldjsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KGRldik7CisJaW50IHJldDsKKwl1MzIgbmV3X21hc2sgPSBkZXZfcHJp
di0+cWd2X3BvaW50c19tYXNrIHwgc3RhdGUtPnFndl9wb2ludHNfbWFzazsKKworCS8qCisJICog
UmVzdHJpY3QgcmVxdWlyZWQgcWd2IHBvaW50cyBiZWZvcmUgdXBkYXRpbmcgdGhlIGNvbmZpZ3Vy
YXRpb24uCisJICogQWNjb3JkaW5nIHRvIEJTcGVjIHdlIGNhbid0IG1hc2sgYW5kIHVubWFzayBx
Z3YgcG9pbnRzIGF0IHRoZSBzYW1lCisJICogdGltZS4gQWxzbyBtYXNraW5nIHNob3VsZCBiZSBk
b25lIGJlZm9yZSB1cGRhdGluZyB0aGUgY29uZmlndXJhdGlvbgorCSAqIGFuZCB1bm1hc2tpbmcg
YWZ0ZXJ3YXJkcy4KKwkgKi8KKwlyZXQgPSBpY2xfcGNvZGVfcmVzdHJpY3RfcWd2X3BvaW50cyhk
ZXZfcHJpdiwgbmV3X21hc2spOworCWlmIChyZXQgPCAwKQorCQlEUk1fREVCVUdfS01TKCJDb3Vs
ZCBub3QgcmVzdHJpY3QgcmVxdWlyZWQgcWd2IHBvaW50cyglZClcbiIsCisJCQkgICAgICByZXQp
OworCWVsc2UKKwkJZGV2X3ByaXYtPnFndl9wb2ludHNfbWFzayA9IG5ld19tYXNrOworfQorCitz
dGF0aWMgdm9pZCBpbnRlbF9xZ3ZfcG9pbnRzX3VubWFzayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSkKK3sKKwlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gc3RhdGUtPmJhc2UuZGV2
OworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKKwlp
bnQgcmV0OworCXUzMiBuZXdfbWFzayA9IGRldl9wcml2LT5xZ3ZfcG9pbnRzX21hc2sgJiBzdGF0
ZS0+cWd2X3BvaW50c19tYXNrOworCisJLyoKKwkgKiBBbGxvdyByZXF1aXJlZCBxZ3YgcG9pbnRz
IGFmdGVyIHVwZGF0aW5nIHRoZSBjb25maWd1cmF0aW9uLgorCSAqIEFjY29yZGluZyB0byBCU3Bl
YyB3ZSBjYW4ndCBtYXNrIGFuZCB1bm1hc2sgcWd2IHBvaW50cyBhdCB0aGUgc2FtZQorCSAqIHRp
bWUuIEFsc28gbWFza2luZyBzaG91bGQgYmUgZG9uZSBiZWZvcmUgdXBkYXRpbmcgdGhlIGNvbmZp
Z3VyYXRpb24KKwkgKiBhbmQgdW5tYXNraW5nIGFmdGVyd2FyZHMuCisJICovCisJcmV0ID0gaWNs
X3Bjb2RlX3Jlc3RyaWN0X3Fndl9wb2ludHMoZGV2X3ByaXYsIG5ld19tYXNrKTsKKwlpZiAocmV0
IDwgMCkKKwkJRFJNX0RFQlVHX0tNUygiQ291bGQgbm90IHJlc3RyaWN0IHJlcXVpcmVkIHFndiBw
b2ludHMoJWQpXG4iLAorCQkJICAgICAgcmV0KTsKKwllbHNlCisJCWRldl9wcml2LT5xZ3ZfcG9p
bnRzX21hc2sgPSBuZXdfbWFzazsKK30KKwogc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NvbW1p
dF90YWlsKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogewogCXN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYgPSBzdGF0ZS0+YmFzZS5kZXY7CkBAIC0xNDY0Niw2ICsxNDY4OCw5IEBAIHN0
YXRpYyB2b2lkIGludGVsX2F0b21pY19jb21taXRfdGFpbChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSkKIAkJfQogCX0KIAorCWlmICgoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkp
CisJCWludGVsX3Fndl9wb2ludHNfbWFzayhzdGF0ZSk7CisKIAlpbnRlbF9jb21taXRfbW9kZXNl
dF9kaXNhYmxlcyhzdGF0ZSk7CiAKIAkvKiBGSVhNRTogRXZlbnR1YWxseSBnZXQgcmlkIG9mIG91
ciBjcnRjLT5jb25maWcgcG9pbnRlciAqLwpAQCAtMTQ2NjQsOCArMTQ3MDksOSBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUpCiAJCSAqIFNLTCB3b3JrYXJvdW5kOiBic3BlYyByZWNvbW1lbmRzIHdlIGRpc2FibGUg
dGhlIFNBR1Ygd2hlbiB3ZQogCQkgKiBoYXZlIG1vcmUgdGhlbiBvbmUgcGlwZSBlbmFibGVkCiAJ
CSAqLwotCQlpZiAoIWludGVsX2Nhbl9lbmFibGVfc2FndihzdGF0ZSkpCi0JCQlpbnRlbF9kaXNh
YmxlX3NhZ3YoZGV2X3ByaXYpOworCQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDExKQorCQkJ
aWYgKCFpbnRlbF9jYW5fZW5hYmxlX3NhZ3Yoc3RhdGUpKQorCQkJCWludGVsX2Rpc2FibGVfc2Fn
dihkZXZfcHJpdik7CiAKIAkJaW50ZWxfbW9kZXNldF92ZXJpZnlfZGlzYWJsZWQoZGV2X3ByaXYs
IHN0YXRlKTsKIAl9CkBAIC0xNDc0Nyw4ICsxNDc5MywxMSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9h
dG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJaWYg
KHN0YXRlLT5tb2Rlc2V0KQogCQlpbnRlbF92ZXJpZnlfcGxhbmVzKHN0YXRlKTsKIAotCWlmIChz
dGF0ZS0+bW9kZXNldCAmJiBpbnRlbF9jYW5fZW5hYmxlX3NhZ3Yoc3RhdGUpKQotCQlpbnRlbF9l
bmFibGVfc2FndihkZXZfcHJpdik7CisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMSkgewor
CQlpZiAoc3RhdGUtPm1vZGVzZXQgJiYgaW50ZWxfY2FuX2VuYWJsZV9zYWd2KHN0YXRlKSkKKwkJ
CWludGVsX2VuYWJsZV9zYWd2KGRldl9wcml2KTsKKwl9IGVsc2UKKwkJaW50ZWxfcWd2X3BvaW50
c191bm1hc2soc3RhdGUpOwogCiAJZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X2h3X2RvbmUoJnN0
YXRlLT5iYXNlKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaAppbmRleCAzOGNiYWJjNzliMmYuLjllOTcxMGY1ZTExNSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgK
QEAgLTUyOCw2ICs1MjgsOSBAQCBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlIHsKIAlzdHJ1Y3Qg
aTkxNV9zd19mZW5jZSBjb21taXRfcmVhZHk7CiAKIAlzdHJ1Y3QgbGxpc3Rfbm9kZSBmcmVlZDsK
KworCS8qIEdlbjExKyBvbmx5ICovCisJdTMyIHFndl9wb2ludHNfbWFzazsKIH07CiAKIHN0cnVj
dCBpbnRlbF9wbGFuZV9zdGF0ZSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCA2MGYxYzRj
YzNlZWIuLjY1OTg1YTQ1ZWQ4ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0xMjM5LDEx
ICsxMjM5LDEzIEBAIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlIHsKIAl9IGRyYW1faW5mbzsKIAog
CXN0cnVjdCBpbnRlbF9id19pbmZvIHsKLQkJdW5zaWduZWQgaW50IGRlcmF0ZWRid1szXTsgLyog
Zm9yIGVhY2ggUUdWIHBvaW50ICovCisJCXVuc2lnbmVkIGludCBkZXJhdGVkYndbTlVNX1NBR1Zf
UE9JTlRTXTsgLyogZm9yIGVhY2ggUUdWIHBvaW50ICovCiAJCXU4IG51bV9xZ3ZfcG9pbnRzOwog
CQl1OCBudW1fcGxhbmVzOwogCX0gbWF4X2J3WzZdOwogCisJdTMyIHFndl9wb2ludHNfbWFzazsK
KwogCXN0cnVjdCBkcm1fcHJpdmF0ZV9vYmogYndfb2JqOwogCiAJc3RydWN0IGludGVsX3J1bnRp
bWVfcG0gcnVudGltZV9wbTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDUzYzI4MGM0ZTc0
MS4uY2M3ZmJmMjQzZjcyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTg5NDcsNiArODk0
Nyw5IEBAIGVudW0gewogI2RlZmluZSBWTFZfUkVOREVSX0MwX0NPVU5UCQkJX01NSU8oMHgxMzgx
MTgpCiAjZGVmaW5lIFZMVl9NRURJQV9DMF9DT1VOVAkJCV9NTUlPKDB4MTM4MTFDKQogCisvKiBC
U3BlYyBwcmVjaXNlbHkgZGVmaW5lcyB0aGlzICovCisjZGVmaW5lIE5VTV9TQUdWX1BPSU5UUyA4
CisKICNkZWZpbmUgR0VONl9QQ09ERV9NQUlMQk9YCQkJX01NSU8oMHgxMzgxMjQpCiAjZGVmaW5l
ICAgR0VONl9QQ09ERV9SRUFEWQkJCSgxIDw8IDMxKQogI2RlZmluZSAgIEdFTjZfUENPREVfRVJS
T1JfTUFTSwkJCTB4RkYKQEAgLTg5NTcsNiArODk2MCw4IEBAIGVudW0gewogI2RlZmluZSAgICAg
R0VONl9QQ09ERV9VTklNUExFTUVOVEVEX0NNRAkweEZGCiAjZGVmaW5lICAgICBHRU43X1BDT0RF
X1RJTUVPVVQJCQkweDIKICNkZWZpbmUgICAgIEdFTjdfUENPREVfSUxMRUdBTF9EQVRBCQkweDMK
KyNkZWZpbmUgICAgIEdFTjExX1BDT0RFX01BSUxfQk9YX0xPQ0tFRAkJMHg2CisjZGVmaW5lICAg
ICBHRU4xMV9QQ09ERV9SRUpFQ1RFRAkJMHgxMQogI2RlZmluZSAgICAgR0VON19QQ09ERV9NSU5f
RlJFUV9UQUJMRV9HVF9SQVRJT19PVVRfT0ZfUkFOR0UgMHgxMAogI2RlZmluZSAgIEdFTjZfUENP
REVfV1JJVEVfUkM2VklEUwkJMHg0CiAjZGVmaW5lICAgR0VONl9QQ09ERV9SRUFEX1JDNlZJRFMJ
CTB4NQpAQCAtODk3OCw2ICs4OTgzLDcgQEAgZW51bSB7CiAjZGVmaW5lICAgSUNMX1BDT0RFX01F
TV9TVUJTWVNZU1RFTV9JTkZPCTB4ZAogI2RlZmluZSAgICAgSUNMX1BDT0RFX01FTV9TU19SRUFE
X0dMT0JBTF9JTkZPCSgweDAgPDwgOCkKICNkZWZpbmUgICAgIElDTF9QQ09ERV9NRU1fU1NfUkVB
RF9RR1ZfUE9JTlRfSU5GTyhwb2ludCkJKCgocG9pbnQpIDw8IDE2KSB8ICgweDEgPDwgOCkpCisj
ZGVmaW5lICAgSUNMX1BDT0RFX1NBR1ZfREVfTUVNX1NTX0NPTkZJRwkweGUKICNkZWZpbmUgICBH
RU42X1BDT0RFX1JFQURfRF9DT01QCQkweDEwCiAjZGVmaW5lICAgR0VONl9QQ09ERV9XUklURV9E
X0NPTVAJCTB4MTEKICNkZWZpbmUgICBIU1dfUENPREVfREVfV1JJVEVfRlJFUV9SRVEJCTB4MTcK
QEAgLTg5OTAsNiArODk5Niw4IEBAIGVudW0gewogI2RlZmluZSAgICAgR0VOOV9TQUdWX0lTX0RJ
U0FCTEVECQkweDEKICNkZWZpbmUgICAgIEdFTjlfU0FHVl9FTkFCTEUJCQkweDMKICNkZWZpbmUg
R0VOMTJfUENPREVfUkVBRF9TQUdWX0JMT0NLX1RJTUVfVVMJMHgyMworI2RlZmluZSBHRU4xMV9Q
Q09ERV9QT0lOVFNfUkVTVFJJQ1RFRAkJMHgwCisjZGVmaW5lIEdFTjExX1BDT0RFX1BPSU5UU19S
RVNUUklDVEVEX01BU0sJMHgxCiAjZGVmaW5lIEdFTjZfUENPREVfREFUQQkJCQlfTU1JTygweDEz
ODEyOCkKICNkZWZpbmUgICBHRU42X1BDT0RFX0ZSRVFfSUFfUkFUSU9fU0hJRlQJOAogI2RlZmlu
ZSAgIEdFTjZfUENPREVfRlJFUV9SSU5HX1JBVElPX1NISUZUCTE2CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zaWRlYmFuZC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfc2lkZWJhbmQuYwppbmRleCBlMDZiMzViODQ0YTAuLmZmOWRiZWQwOTRkOCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2lkZWJhbmQuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9zaWRlYmFuZC5jCkBAIC0zNzEsNiArMzcxLDI5IEBAIHN0YXRp
YyBpbmxpbmUgaW50IGdlbjdfY2hlY2tfbWFpbGJveF9zdGF0dXModTMyIG1ib3gpCiAJfQogfQog
CitzdGF0aWMgaW5saW5lIGludCBnZW4xMV9jaGVja19tYWlsYm94X3N0YXR1cyh1MzIgbWJveCkK
K3sKKwlzd2l0Y2ggKG1ib3ggJiBHRU42X1BDT0RFX0VSUk9SX01BU0spIHsKKwljYXNlIEdFTjZf
UENPREVfU1VDQ0VTUzoKKwkJcmV0dXJuIDA7CisJY2FzZSBHRU42X1BDT0RFX0lMTEVHQUxfQ01E
OgorCQlyZXR1cm4gLUVOWElPOworCWNhc2UgR0VON19QQ09ERV9USU1FT1VUOgorCQlyZXR1cm4g
LUVUSU1FRE9VVDsKKwljYXNlIEdFTjdfUENPREVfSUxMRUdBTF9EQVRBOgorCQlyZXR1cm4gLUVJ
TlZBTDsKKwljYXNlIEdFTjdfUENPREVfTUlOX0ZSRVFfVEFCTEVfR1RfUkFUSU9fT1VUX09GX1JB
TkdFOgorCQlyZXR1cm4gLUVPVkVSRkxPVzsKKwljYXNlIEdFTjExX1BDT0RFX01BSUxfQk9YX0xP
Q0tFRDoKKwkJcmV0dXJuIC1FQUdBSU47CisJY2FzZSBHRU4xMV9QQ09ERV9SRUpFQ1RFRDoKKwkJ
cmV0dXJuIC1FQUNDRVM7CisJZGVmYXVsdDoKKwkJTUlTU0lOR19DQVNFKG1ib3ggJiBHRU42X1BD
T0RFX0VSUk9SX01BU0spOworCQlyZXR1cm4gMDsKKwl9Cit9CisKIHN0YXRpYyBpbnQgX19zYW5k
eWJyaWRnZV9wY29kZV9ydyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkJCQkgIHUz
MiBtYm94LCB1MzIgKnZhbCwgdTMyICp2YWwxLAogCQkJCSAgaW50IGZhc3RfdGltZW91dF91cywK
QEAgLTQwOCw3ICs0MzEsOSBAQCBzdGF0aWMgaW50IF9fc2FuZHlicmlkZ2VfcGNvZGVfcncoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJaWYgKGlzX3JlYWQgJiYgdmFsMSkKIAkJKnZh
bDEgPSBpbnRlbF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIEdFTjZfUENPREVfREFUQTEpOwogCi0J
aWYgKElOVEVMX0dFTihpOTE1KSA+IDYpCisJaWYgKElOVEVMX0dFTihpOTE1KSA+PSAxMSkKKwkJ
cmV0dXJuIGdlbjExX2NoZWNrX21haWxib3hfc3RhdHVzKG1ib3gpOworCWVsc2UgaWYgKElOVEVM
X0dFTihpOTE1KSA+IDYpCiAJCXJldHVybiBnZW43X2NoZWNrX21haWxib3hfc3RhdHVzKG1ib3gp
OwogCWVsc2UKIAkJcmV0dXJuIGdlbjZfY2hlY2tfbWFpbGJveF9zdGF0dXMobWJveCk7Ci0tIAoy
LjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
