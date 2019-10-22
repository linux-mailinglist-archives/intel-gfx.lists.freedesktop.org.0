Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE394E0A7F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 19:21:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A3E86E8A6;
	Tue, 22 Oct 2019 17:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 615D66E8A1
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 17:21:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 10:21:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,217,1569308400"; d="scan'208";a="227799679"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga002.fm.intel.com with ESMTP; 22 Oct 2019 10:21:28 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 20:18:57 +0300
Message-Id: <20191022171857.19327-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191022171857.19327-1-stanislav.lisovskiy@intel.com>
References: <20191022171857.19327-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 2/2] drm/i915: Restrict qgv points which
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
Cc: martin.peres@intel.com
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
ICBjYW4ndCBiZSBlbmFibGVkKEJTcGVjKQoKUmV2aWV3ZWQtYnk6IEphbWVzIEF1c211cyA8amFt
ZXMuYXVzbXVzQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogU3RhbmlzbGF2IExpc292c2tpeSA8
c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAaW50ZWwuY29tPgpDYzogSmFtZXMgQXVzbXVzIDxqYW1lcy5hdXNtdXNAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMgICB8
ICAxNiArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmggICB8
ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgICAgICAgfCAx
MDUgKysrKysrKysrKysrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2J3LmggICAgICAgfCAgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgIHwgIDU4ICsrKysrKysrKy0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaCAgICB8ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
ICAgICAgICAgICAgICAgfCAgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAg
ICAgICAgICAgICAgIHwgICAzICsKIDggZmlsZXMgY2hhbmdlZCwgMTY2IGluc2VydGlvbnMoKyks
IDI2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYXRvbWljLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0
b21pYy5jCmluZGV4IGM1YTU1MmE2OTc1Mi4uYjNmNGYwMmYzODBiIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMKQEAgLTIwNyw2ICsyMDcsMjIgQEAgaW50
ZWxfY3J0Y19kdXBsaWNhdGVfc3RhdGUoc3RydWN0IGRybV9jcnRjICpjcnRjKQogCXJldHVybiAm
Y3J0Y19zdGF0ZS0+YmFzZTsKIH0KIAoraW50IGludGVsX2F0b21pY19zZXJpYWxpemVfZ2xvYmFs
X3N0YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQoreworCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsKKwlzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YzsKKworCWZvcl9lYWNoX2ludGVsX2NydGMoJmRldl9wcml2LT5k
cm0sIGNydGMpIHsKKwkJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7CisKKwkJ
Y3J0Y19zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfY3J0Y19zdGF0ZSgmc3RhdGUtPmJhc2UsIGNy
dGMpOworCQlpZiAoSVNfRVJSKGNydGNfc3RhdGUpKQorCQkJcmV0dXJuIFBUUl9FUlIoY3J0Y19z
dGF0ZSk7CisJfQorCisJcmV0dXJuIDA7Cit9CisKIC8qKgogICogaW50ZWxfY3J0Y19kZXN0cm95
X3N0YXRlIC0gZGVzdHJveSBjcnRjIHN0YXRlCiAgKiBAY3J0YzogZHJtIGNydGMKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5oCmluZGV4IDU4MDY1ZDMxNjFhMy4u
ZmQxN2IzY2EyNTdmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2F0b21pYy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRv
bWljLmgKQEAgLTcsNiArNyw3IEBACiAjZGVmaW5lIF9fSU5URUxfQVRPTUlDX0hfXwogCiAjaW5j
bHVkZSA8bGludXgvdHlwZXMuaD4KKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiCiAK
IHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlOwogc3RydWN0IGRybV9jb25uZWN0b3I7CkBAIC0zOCw2
ICszOSw4IEBAIHZvaWQgaW50ZWxfY3J0Y19kZXN0cm95X3N0YXRlKHN0cnVjdCBkcm1fY3J0YyAq
Y3J0YywKIHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICppbnRlbF9hdG9taWNfc3RhdGVfYWxsb2Mo
c3RydWN0IGRybV9kZXZpY2UgKmRldik7CiB2b2lkIGludGVsX2F0b21pY19zdGF0ZV9jbGVhcihz
dHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpOwogCitpbnQgaW50ZWxfYXRvbWljX3Nlcmlh
bGl6ZV9nbG9iYWxfc3RhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOworCiBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqCiBpbnRlbF9hdG9taWNfZ2V0X2NydGNfc3RhdGUoc3Ry
dWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlLAogCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwppbmRleCAyMmU4M2Y4
NTdkZTguLjA5Zjc4NmNmZGZhYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9idy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YncuYwpAQCAtOCw2ICs4LDggQEAKICNpbmNsdWRlICJpbnRlbF9idy5oIgogI2luY2x1ZGUgImlu
dGVsX2Rpc3BsYXlfdHlwZXMuaCIKICNpbmNsdWRlICJpbnRlbF9zaWRlYmFuZC5oIgorI2luY2x1
ZGUgImludGVsX2F0b21pYy5oIgorI2luY2x1ZGUgImludGVsX3BtLmgiCiAKIC8qIFBhcmFtZXRl
cnMgZm9yIFFjbGsgR2V5c2VydmlsbGUgKFFHVikgKi8KIHN0cnVjdCBpbnRlbF9xZ3ZfcG9pbnQg
ewpAQCAtMTEzLDYgKzExNSwyNyBAQCBzdGF0aWMgaW50IGljbF9wY29kZV9yZWFkX3Fndl9wb2lu
dF9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlyZXR1cm4gMDsKIH0K
IAoraW50IGljbF9wY29kZV9yZXN0cmljdF9xZ3ZfcG9pbnRzKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKKwkJCQkgIHUzMiBwb2ludHNfbWFzaykKK3sKKwlpbnQgcmV0OworCisJ
LyogYnNwZWMgc2F5cyB0byBrZWVwIHJldHJ5aW5nIGZvciBhdCBsZWFzdCAxIG1zICovCisJcmV0
ID0gc2tsX3Bjb2RlX3JlcXVlc3QoZGV2X3ByaXYsIElDTF9QQ09ERV9TQUdWX0RFX01FTV9TU19D
T05GSUcsCisJCQkJcG9pbnRzX21hc2ssCisJCQkJR0VOMTFfUENPREVfUE9JTlRTX1JFU1RSSUNU
RURfTUFTSywKKwkJCQlHRU4xMV9QQ09ERV9QT0lOVFNfUkVTVFJJQ1RFRCwKKwkJCQkxKTsKKwor
CWlmIChyZXQgPCAwKSB7CisJCURSTV9FUlJPUigiRmFpbGVkIHRvIGRpc2FibGUgcWd2IHBvaW50
cyAoJWQpXG4iLCByZXQpOworCQlyZXR1cm4gcmV0OworCX0KKworCXJldHVybiAwOworfQorCisK
IHN0YXRpYyBpbnQgaWNsX2dldF9xZ3ZfcG9pbnRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKIAkJCSAgICAgIHN0cnVjdCBpbnRlbF9xZ3ZfaW5mbyAqcWkpCiB7CkBAIC0yNzAs
MjIgKzI5Myw2IEBAIHZvaWQgaW50ZWxfYndfaW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpCiAJCWljbF9nZXRfYndfaW5mbyhkZXZfcHJpdiwgJmljbF9zYV9pbmZvKTsK
IH0KIAotc3RhdGljIHVuc2lnbmVkIGludCBpbnRlbF9tYXhfZGF0YV9yYXRlKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKLQkJCQkJaW50IG51bV9wbGFuZXMpCi17Ci0JaWYgKElO
VEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCi0JCS8qCi0JCSAqIEZJWE1FIHdpdGggU0FHViBkaXNh
YmxlZCBtYXliZSB3ZSBjYW4gYXNzdW1lCi0JCSAqIHBvaW50IDEgd2lsbCBhbHdheXMgYmUgdXNl
ZD8gU2VlbXMgdG8gbWF0Y2gKLQkJICogdGhlIGJlaGF2aW91ciBvYnNlcnZlZCBpbiB0aGUgd2ls
ZC4KLQkJICovCi0JCXJldHVybiBtaW4zKGljbF9tYXhfYncoZGV2X3ByaXYsIG51bV9wbGFuZXMs
IDApLAotCQkJICAgIGljbF9tYXhfYncoZGV2X3ByaXYsIG51bV9wbGFuZXMsIDEpLAotCQkJICAg
IGljbF9tYXhfYncoZGV2X3ByaXYsIG51bV9wbGFuZXMsIDIpKTsKLQllbHNlCi0JCXJldHVybiBV
SU5UX01BWDsKLX0KLQogc3RhdGljIHVuc2lnbmVkIGludCBpbnRlbF9id19jcnRjX251bV9hY3Rp
dmVfcGxhbmVzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewog
CS8qCkBAIC0zNzcsNyArMzg0LDEwIEBAIGludCBpbnRlbF9id19hdG9taWNfY2hlY2soc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJdW5zaWduZWQgaW50IGRhdGFfcmF0ZSwgbWF4
X2RhdGFfcmF0ZTsKIAl1bnNpZ25lZCBpbnQgbnVtX2FjdGl2ZV9wbGFuZXM7CiAJc3RydWN0IGlu
dGVsX2NydGMgKmNydGM7Ci0JaW50IGk7CisJaW50IGksIHJldDsKKwlzdHJ1Y3QgaW50ZWxfcWd2
X2luZm8gcWkgPSB7fTsKKwl1MzIgYWxsb3dlZF9wb2ludHMgPSAwOworCXVuc2lnbmVkIGludCBt
YXhfYndfcG9pbnQgPSAwLCBtYXhfYncgPSAwOwogCiAJLyogRklYTUUgZWFybGllciBnZW5zIG5l
ZWQgc29tZSBjaGVja3MgdG9vICovCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMSkKQEAg
LTQyMSwxNiArNDMxLDY3IEBAIGludCBpbnRlbF9id19hdG9taWNfY2hlY2soc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJZGF0YV9yYXRlID0gaW50ZWxfYndfZGF0YV9yYXRlKGRl
dl9wcml2LCBid19zdGF0ZSk7CiAJbnVtX2FjdGl2ZV9wbGFuZXMgPSBpbnRlbF9id19udW1fYWN0
aXZlX3BsYW5lcyhkZXZfcHJpdiwgYndfc3RhdGUpOwogCi0JbWF4X2RhdGFfcmF0ZSA9IGludGVs
X21heF9kYXRhX3JhdGUoZGV2X3ByaXYsIG51bV9hY3RpdmVfcGxhbmVzKTsKLQogCWRhdGFfcmF0
ZSA9IERJVl9ST1VORF9VUChkYXRhX3JhdGUsIDEwMDApOwogCi0JaWYgKGRhdGFfcmF0ZSA+IG1h
eF9kYXRhX3JhdGUpIHsKLQkJRFJNX0RFQlVHX0tNUygiQmFuZHdpZHRoICV1IE1CL3MgZXhjZWVk
cyBtYXggYXZhaWxhYmxlICVkIE1CL3MgKCVkIGFjdGl2ZSBwbGFuZXMpXG4iLAotCQkJICAgICAg
ZGF0YV9yYXRlLCBtYXhfZGF0YV9yYXRlLCBudW1fYWN0aXZlX3BsYW5lcyk7CisJcmV0ID0gaWNs
X2dldF9xZ3ZfcG9pbnRzKGRldl9wcml2LCAmcWkpOworCWlmIChyZXQgPCAwKQorCQlyZXR1cm4g
MDsKKworCWZvciAoaSA9IDA7IGkgPCBxaS5udW1fcG9pbnRzOyBpKyspIHsKKwkJbWF4X2RhdGFf
cmF0ZSA9IGljbF9tYXhfYncoZGV2X3ByaXYsIG51bV9hY3RpdmVfcGxhbmVzLCBpKTsKKwkJLyoK
KwkJICogV2UgbmVlZCB0byBrbm93IHdoaWNoIHFndiBwb2ludCBnaXZlcyB1cworCQkgKiBtYXhp
bXVtIGJhbmR3aWR0aCBpbiBvcmRlciB0byBkaXNhYmxlIFNBR1YKKwkJICogaWYgd2UgZmluZCB0
aGF0IHdlIGV4Y2VlZCBTQUdWIGJsb2NrIHRpbWUKKwkJICogd2l0aCB3YXRlcm1hcmtzLiBCeSB0
aGF0IG1vbWVudCB3ZSBhbHJlYWR5CisJCSAqIGhhdmUgdGhvc2UsIGFzIGl0IGlzIGNhbGN1bGF0
ZWQgZWFybGllciBpbgorCQkgKiBpbnRlbF9hdG9taWNfY2hlY2ssCisJCSAqLworCQlpZiAobWF4
X2RhdGFfcmF0ZSA+IG1heF9idykgeworCQkJbWF4X2J3X3BvaW50ID0gaTsKKwkJCW1heF9idyA9
IG1heF9kYXRhX3JhdGU7CisJCX0KKwkJaWYgKG1heF9kYXRhX3JhdGUgPj0gZGF0YV9yYXRlKQor
CQkJYWxsb3dlZF9wb2ludHMgfD0gMSA8PCBpOworCQlEUk1fREVCVUdfS01TKCJRR1YgcG9pbnQg
JWQ6IG1heCBidyAlZCByZXF1aXJlZCAlZFxuIiwKKwkJCSAgICAgIGksIG1heF9kYXRhX3JhdGUs
IGRhdGFfcmF0ZSk7CisJfQorCisJLyoKKwkgKiBCU3BlYyBzdGF0ZXMgdGhhdCB3ZSBhbHdheXMg
c2hvdWxkIGhhdmUgYXQgbGVhc3Qgb25lIGFsbG93ZWQgcG9pbnQKKwkgKiBsZWZ0LCBzbyBpZiB3
ZSBjb3VsZG4ndCAtIHNpbXBseSByZWplY3QgdGhlIGNvbmZpZ3VyYXRpb24gZm9yIG9idmlvdXMK
KwkgKiByZWFzb25zLgorCSAqLworCWlmIChhbGxvd2VkX3BvaW50cyA9PSAwKSB7CisJCURSTV9E
RUJVR19LTVMoIkNvdWxkIG5vdCBmaW5kIGFueSBzdWl0YWJsZSBRR1YgcG9pbnRzXG4iKTsKIAkJ
cmV0dXJuIC1FSU5WQUw7CiAJfQogCisJLyoKKwkgKiBMZWF2ZSBvbmx5IHNpbmdsZSBwb2ludCB3
aXRoIGhpZ2hlc3QgYmFuZHdpZHRoLCBpZgorCSAqIHdlIGNhbid0IGVuYWJsZSBTQUdWIGFjY29y
ZGluZyB0byBCU3BlYy4KKwkgKi8KKwlpZiAoIWludGVsX2Nhbl9lbmFibGVfc2FndihzdGF0ZSkp
CisJCWFsbG93ZWRfcG9pbnRzID0gMSA8PCBtYXhfYndfcG9pbnQ7CisKKwkvKgorCSAqIFdlIHN0
b3JlIHRoZSBvbmVzIHdoaWNoIG5lZWQgdG8gYmUgbWFza2VkIGFzIHRoYXQgaXMgd2hhdCBQQ29k
ZQorCSAqIGFjdHVhbGx5IGFjY2VwdHMgYXMgYSBwYXJhbWV0ZXIuCisJICovCisJc3RhdGUtPnFn
dl9wb2ludHNfbWFzayA9ICh+YWxsb3dlZF9wb2ludHMpICYgKCgxIDw8IHFpLm51bV9wb2ludHMp
IC0gMSk7CisKKwkvKgorCSAqIElmIHRoZSBhY3R1YWwgbWFzayBoYWQgY2hhbmdlZCB3ZSBuZWVk
IHRvIG1ha2Ugc3VyZSB0aGF0CisJICogdGhlIGNvbW1pdHMgYXJlIHNlcmlhbGl6ZWQoaW4gY2Fz
ZSB0aGlzIGlzIGEgbm9tb2Rlc2V0LCBub25ibG9ja2luZykKKwkgKi8KKwlpZiAoc3RhdGUtPnFn
dl9wb2ludHNfbWFzayAhPSBkZXZfcHJpdi0+cWd2X3BvaW50c19tYXNrKSB7CisJCXJldCA9IGlu
dGVsX2F0b21pY19zZXJpYWxpemVfZ2xvYmFsX3N0YXRlKHN0YXRlKTsKKwkJaWYgKHJldCkgewor
CQkJRFJNX0RFQlVHX0tNUygiQ291bGQgbm90IHNlcmlhbGl6ZSBnbG9iYWwgc3RhdGVcbiIpOwor
CQkJcmV0dXJuIHJldDsKKwkJfQorCX0KKwogCXJldHVybiAwOwogfQogCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2J3LmgKaW5kZXggOWRiMTBhZjAxMmY0Li42NmJmOWJjMTBiNzMg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuaAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmgKQEAgLTI4LDUgKzI4LDcg
QEAgaW50IGludGVsX2J3X2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsK
IGludCBpbnRlbF9id19hdG9taWNfY2hlY2soc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUpOwogdm9pZCBpbnRlbF9id19jcnRjX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYndfc3RhdGUgKmJ3
X3N0YXRlLAogCQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7
CitpbnQgaWNsX3Bjb2RlX3Jlc3RyaWN0X3Fndl9wb2ludHMoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LAorCQkJCSAgdTMyIHBvaW50c19tYXNrKTsKIAogI2VuZGlmIC8qIF9fSU5U
RUxfQldfSF9fICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCmluZGV4IGE4MTY4ZTJhYWNkNS4uNGFhZjY2OTU1MTQ5IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTQwMDMsNiArMTQwMDMsNDggQEAg
c3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NsZWFudXBfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3Qg
KndvcmspCiAJaW50ZWxfYXRvbWljX2hlbHBlcl9mcmVlX3N0YXRlKGk5MTUpOwogfQogCitzdGF0
aWMgdm9pZCBpbnRlbF9xZ3ZfcG9pbnRzX21hc2soc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUpCit7CisJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IHN0YXRlLT5iYXNlLmRldjsKKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7CisJaW50IHJl
dDsKKwl1MzIgbmV3X21hc2sgPSBkZXZfcHJpdi0+cWd2X3BvaW50c19tYXNrIHwgc3RhdGUtPnFn
dl9wb2ludHNfbWFzazsKKworCS8qCisJICogUmVzdHJpY3QgcmVxdWlyZWQgcWd2IHBvaW50cyBi
ZWZvcmUgdXBkYXRpbmcgdGhlIGNvbmZpZ3VyYXRpb24uCisJICogQWNjb3JkaW5nIHRvIEJTcGVj
IHdlIGNhbid0IG1hc2sgYW5kIHVubWFzayBxZ3YgcG9pbnRzIGF0IHRoZSBzYW1lCisJICogdGlt
ZS4gQWxzbyBtYXNraW5nIHNob3VsZCBiZSBkb25lIGJlZm9yZSB1cGRhdGluZyB0aGUgY29uZmln
dXJhdGlvbgorCSAqIGFuZCB1bm1hc2tpbmcgYWZ0ZXJ3YXJkcy4KKwkgKi8KKwlyZXQgPSBpY2xf
cGNvZGVfcmVzdHJpY3RfcWd2X3BvaW50cyhkZXZfcHJpdiwgbmV3X21hc2spOworCWlmIChyZXQg
PCAwKQorCQlEUk1fREVCVUdfS01TKCJDb3VsZCBub3QgcmVzdHJpY3QgcmVxdWlyZWQgcWd2IHBv
aW50cyglZClcbiIsCisJCQkgICAgICByZXQpOworCWVsc2UKKwkJZGV2X3ByaXYtPnFndl9wb2lu
dHNfbWFzayA9IG5ld19tYXNrOworfQorCitzdGF0aWMgdm9pZCBpbnRlbF9xZ3ZfcG9pbnRzX3Vu
bWFzayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKK3sKKwlzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2ID0gc3RhdGUtPmJhc2UuZGV2OworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKKwlpbnQgcmV0OworCXUzMiBuZXdfbWFzayA9IGRldl9w
cml2LT5xZ3ZfcG9pbnRzX21hc2sgJiBzdGF0ZS0+cWd2X3BvaW50c19tYXNrOworCisJLyoKKwkg
KiBBbGxvdyByZXF1aXJlZCBxZ3YgcG9pbnRzIGFmdGVyIHVwZGF0aW5nIHRoZSBjb25maWd1cmF0
aW9uLgorCSAqIEFjY29yZGluZyB0byBCU3BlYyB3ZSBjYW4ndCBtYXNrIGFuZCB1bm1hc2sgcWd2
IHBvaW50cyBhdCB0aGUgc2FtZQorCSAqIHRpbWUuIEFsc28gbWFza2luZyBzaG91bGQgYmUgZG9u
ZSBiZWZvcmUgdXBkYXRpbmcgdGhlIGNvbmZpZ3VyYXRpb24KKwkgKiBhbmQgdW5tYXNraW5nIGFm
dGVyd2FyZHMuCisJICovCisJcmV0ID0gaWNsX3Bjb2RlX3Jlc3RyaWN0X3Fndl9wb2ludHMoZGV2
X3ByaXYsIG5ld19tYXNrKTsKKwlpZiAocmV0IDwgMCkKKwkJRFJNX0RFQlVHX0tNUygiQ291bGQg
bm90IHJlc3RyaWN0IHJlcXVpcmVkIHFndiBwb2ludHMoJWQpXG4iLAorCQkJICAgICAgcmV0KTsK
KwllbHNlCisJCWRldl9wcml2LT5xZ3ZfcG9pbnRzX21hc2sgPSBuZXdfbWFzazsKK30KKwogc3Rh
dGljIHZvaWQgaW50ZWxfYXRvbWljX2NvbW1pdF90YWlsKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlKQogewogCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBzdGF0ZS0+YmFzZS5kZXY7
CkBAIC0xNDAzMCw2ICsxNDA3Miw5IEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19jb21taXRf
dGFpbChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAkJfQogCX0KIAorCWlmICgo
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkpCisJCWludGVsX3Fndl9wb2ludHNfbWFzayhzdGF0
ZSk7CisKIAlpbnRlbF9jb21taXRfbW9kZXNldF9kaXNhYmxlcyhzdGF0ZSk7CiAKIAkvKiBGSVhN
RTogRXZlbnR1YWxseSBnZXQgcmlkIG9mIG91ciBjcnRjLT5jb25maWcgcG9pbnRlciAqLwpAQCAt
MTQwNDgsOCArMTQwOTMsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfY29tbWl0X3RhaWwo
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJCSAqIFNLTCB3b3JrYXJvdW5kOiBi
c3BlYyByZWNvbW1lbmRzIHdlIGRpc2FibGUgdGhlIFNBR1Ygd2hlbiB3ZQogCQkgKiBoYXZlIG1v
cmUgdGhlbiBvbmUgcGlwZSBlbmFibGVkCiAJCSAqLwotCQlpZiAoIWludGVsX2Nhbl9lbmFibGVf
c2FndihzdGF0ZSkpCi0JCQlpbnRlbF9kaXNhYmxlX3NhZ3YoZGV2X3ByaXYpOworCQlpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA8IDExKQorCQkJaWYgKCFpbnRlbF9jYW5fZW5hYmxlX3NhZ3Yoc3Rh
dGUpKQorCQkJCWludGVsX2Rpc2FibGVfc2FndihkZXZfcHJpdik7CiAKIAkJaW50ZWxfbW9kZXNl
dF92ZXJpZnlfZGlzYWJsZWQoZGV2X3ByaXYsIHN0YXRlKTsKIAl9CkBAIC0xNDEyNyw4ICsxNDE3
MywxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJaWYgKHN0YXRlLT5tb2Rlc2V0KQogCQlpbnRlbF92ZXJp
ZnlfcGxhbmVzKHN0YXRlKTsKIAotCWlmIChzdGF0ZS0+bW9kZXNldCAmJiBpbnRlbF9jYW5fZW5h
YmxlX3NhZ3Yoc3RhdGUpKQotCQlpbnRlbF9lbmFibGVfc2FndihkZXZfcHJpdik7CisJaWYgKElO
VEVMX0dFTihkZXZfcHJpdikgPCAxMSkgeworCQlpZiAoc3RhdGUtPm1vZGVzZXQgJiYgaW50ZWxf
Y2FuX2VuYWJsZV9zYWd2KHN0YXRlKSkKKwkJCWludGVsX2VuYWJsZV9zYWd2KGRldl9wcml2KTsK
Kwl9CisJZWxzZQorCQlpbnRlbF9xZ3ZfcG9pbnRzX3VubWFzayhzdGF0ZSk7CiAKIAlkcm1fYXRv
bWljX2hlbHBlcl9jb21taXRfaHdfZG9uZSgmc3RhdGUtPmJhc2UpOwogCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IDg5MWUw
NmFmMjI4ZC4uYzk5ZjU2MWU5ZmE1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtNTE5LDYgKzUxOSw5IEBAIHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgewogCXN0cnVjdCBpOTE1X3N3X2ZlbmNlIGNvbW1pdF9yZWFkeTsK
IAogCXN0cnVjdCBsbGlzdF9ub2RlIGZyZWVkOworCisJLyogR2VuMTErIG9ubHkgKi8KKwl1MzIg
cWd2X3BvaW50c19tYXNrOwogfTsKIAogc3RydWN0IGludGVsX3BsYW5lX3N0YXRlIHsKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oCmluZGV4IGM0NmIzMzkwNjRjMC4uMGIxYjY0MWEyODBmIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTEzMzUsNiArMTMzNSw4IEBAIHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlIHsKIAkJdTggbnVtX3BsYW5lczsKIAl9IG1heF9id1s2XTsKIAorCXUzMiBxZ3ZfcG9p
bnRzX21hc2s7CisKIAlzdHJ1Y3QgZHJtX3ByaXZhdGVfb2JqIGJ3X29iajsKIAogCXN0cnVjdCBp
bnRlbF9ydW50aW1lX3BtIHJ1bnRpbWVfcG07CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBl
MjQ5OTFlNTQ4OTcuLjFmMzQwMjU0N2JhNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC04
ODY5LDYgKzg4NjksNyBAQCBlbnVtIHsKICNkZWZpbmUgICBJQ0xfUENPREVfTUVNX1NVQlNZU1lT
VEVNX0lORk8JMHhkCiAjZGVmaW5lICAgICBJQ0xfUENPREVfTUVNX1NTX1JFQURfR0xPQkFMX0lO
Rk8JKDB4MCA8PCA4KQogI2RlZmluZSAgICAgSUNMX1BDT0RFX01FTV9TU19SRUFEX1FHVl9QT0lO
VF9JTkZPKHBvaW50KQkoKChwb2ludCkgPDwgMTYpIHwgKDB4MSA8PCA4KSkKKyNkZWZpbmUgICBJ
Q0xfUENPREVfU0FHVl9ERV9NRU1fU1NfQ09ORklHCTB4ZQogI2RlZmluZSAgIEdFTjZfUENPREVf
UkVBRF9EX0NPTVAJCTB4MTAKICNkZWZpbmUgICBHRU42X1BDT0RFX1dSSVRFX0RfQ09NUAkJMHgx
MQogI2RlZmluZSAgIEhTV19QQ09ERV9ERV9XUklURV9GUkVRX1JFUQkJMHgxNwpAQCAtODg4MSw2
ICs4ODgyLDggQEAgZW51bSB7CiAjZGVmaW5lICAgICBHRU45X1NBR1ZfSVNfRElTQUJMRUQJCTB4
MQogI2RlZmluZSAgICAgR0VOOV9TQUdWX0VOQUJMRQkJCTB4MwogI2RlZmluZSBHRU4xMl9QQ09E
RV9SRUFEX1NBR1ZfQkxPQ0tfVElNRV9VUwkweDIzCisjZGVmaW5lIEdFTjExX1BDT0RFX1BPSU5U
U19SRVNUUklDVEVECQkweDAKKyNkZWZpbmUgR0VOMTFfUENPREVfUE9JTlRTX1JFU1RSSUNURURf
TUFTSwkweDEKICNkZWZpbmUgR0VONl9QQ09ERV9EQVRBCQkJCV9NTUlPKDB4MTM4MTI4KQogI2Rl
ZmluZSAgIEdFTjZfUENPREVfRlJFUV9JQV9SQVRJT19TSElGVAk4CiAjZGVmaW5lICAgR0VONl9Q
Q09ERV9GUkVRX1JJTkdfUkFUSU9fU0hJRlQJMTYKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
