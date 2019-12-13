Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9744B11E567
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 15:15:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25CF46E913;
	Fri, 13 Dec 2019 14:15:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F8A36E8ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 14:15:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 06:15:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="415648338"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga006.fm.intel.com with ESMTP; 13 Dec 2019 06:15:22 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2019 16:12:29 +0200
Message-Id: <20191213141231.7330-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191213141231.7330-1-stanislav.lisovskiy@intel.com>
References: <20191213141231.7330-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v12 1/3] drm/i915: Refactor intel_can_enable_sagv
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

Q3VycmVudGx5IGludGVsX2Nhbl9lbmFibGVfc2FndiBmdW5jdGlvbiBjb250YWlucwphIG1peCBv
ZiB3b3JrYXJvdW5kcyBmb3IgZGlmZmVyZW50IHBsYXRmb3Jtcwpzb21lIG9mIHRoZW0gYXJlIG5v
dCB2YWxpZCBmb3IgZ2VucyA+PSAxMSBhbHJlYWR5LApzbyBsZXRzIHNwbGl0IGl0IGludG8gc2Vw
YXJhdGUgZnVuY3Rpb25zLgoKdjI6CiAgICAtIFJld29yayB3YXRlcm1hcmsgY2FsY3VsYXRpb24g
YWxnb3JpdGhtIHRvCiAgICAgIGF0dGVtcHQgdG8gY2FsY3VsYXRlIExldmVsIDAgd2F0ZXJtYXJr
CiAgICAgIHdpdGggYWRkZWQgc2FndiBibG9jayB0aW1lIGxhdGVuY3kgYW5kCiAgICAgIGNoZWNr
IGlmIGl0IGZpdHMgaW4gREJ1ZiBpbiBvcmRlciB0bwogICAgICBkZXRlcm1pbmUgaWYgU0FHViBj
YW4gYmUgZW5hYmxlZCBhbHJlYWR5CiAgICAgIGF0IHRoaXMgc3RhZ2UsIGp1c3QgYXMgQlNwZWMg
NDkzMjUgc3RhdGVzLgogICAgICBpZiB0aGF0IGZhaWxzIHJvbGxiYWNrIHRvIHVzdWFsIExldmVs
IDAKICAgICAgbGF0ZW5jeSBhbmQgZGlzYWJsZSBTQUdWLgogICAgLSBSZW1vdmUgdW5uZWVkZWQg
dGFicyhKYW1lcyBBdXNtdXMpCgp2MzogUmViYXNlZCB0aGUgcGF0Y2gKCnY0OiAtIEFkZGVkIGJh
Y2sgaW50ZXJsYWNlZCBjaGVjayBmb3IgR2VuMTIgYW5kCiAgICAgIGFkZGVkIHNlcGFyYXRlIGZ1
bmN0aW9uIGZvciBUR0wgU0FHViBjaGVjawogICAgICAodGhhbmtzIHRvIEphbWVzIEF1c211cyBm
b3Igc3BvdHRpbmcpCiAgICAtIFJlbW92ZWQgdW5uZWVkZWQgZ2VuIGNoZWNrCiAgICAtIEV4dHJh
Y3RlZCBHZW4xMiBTQUdWIGRlY2lzaW9uIG1ha2luZyBjb2RlCiAgICAgIHRvIGEgc2VwYXJhdGUg
ZnVuY3Rpb24gZnJvbSBza2xfY29tcHV0ZV93bQoKdjU6IC0gQWRkZWQgU0FHViBnbG9iYWwgc3Rh
dGUgdG8gZGV2X3ByaXYsIGJlY2F1c2UKICAgICAgd2UgbmVlZCB0byB0cmFjayBhbGwgcGlwZXMs
IG5vdCBvbmx5IHRob3NlCiAgICAgIGluIGF0b21pYyBzdGF0ZS4gRWFjaCBwaXBlIGhhcyBub3cg
Y29ycmVzcG9uZGVudAogICAgICBiaXQgbWFzayByZWZsZWN0aW5nLCB3aGV0aGVyIGl0IGNhbiB0
b2xlcmF0ZQogICAgICBTQUdWIG9yIG5vdCh0aGFua3MgdG8gVmlsbGUgU3lyamFsYSBmb3Igc3Vn
Z2VzdGlvbnMpLgogICAgLSBOb3cgdXNpbmcgYWN0aXZlIGZsYWcgaW5zdGVhZCBvZiBlbmFibGUg
aW4gY3JjCiAgICAgIHVzYWdlIGNoZWNrLgoKdjY6IC0gRml4ZWQgcmViYXNlIGNvbmZsaWN0cwoK
djc6IC0ga21zX2N1cnNvcl9sZWdhY3kgc2VlbXMgdG8gZ2V0IGJyb2tlbiBiZWNhdXNlIG9mIG11
bHRpcGxlIG1lbWNweQogICAgICBjYWxscyB3aGVuIGNvcHlpbmcgbGV2ZWwgMCB3YXRlciBtYXJr
cyBmb3IgZW5hYmxlZCBTQUdWLCB0bwogICAgICBmaXggdGhpcyBub3cgc2ltcGx5IHVzaW5nIHRo
YXQgZmllbGQgcmlnaHQgYXdheSwgd2l0aG91dCBjb3B5aW5nLAogICAgICBmb3IgdGhhdCBpbnRy
b2R1Y2VkIGEgbmV3IHdtX2xldmVsIGFjY2Vzc29yIHdoaWNoIGRlY2lkZXMgd2hpY2gKICAgICAg
d21fbGV2ZWwgdG8gcmV0dXJuIGJhc2VkIG9uIFNBR1Ygc3RhdGUuCgp2ODogLSBQcm90ZWN0IGNy
dGNfc2Fndl9tYXNrIHNhbWUgd2F5IGFzIHdlIGRvIGZvciBvdGhlciBnbG9iYWwgc3RhdGUKICAg
ICAgY2hhbmdlczogaS5lIGNoZWNrIGlmIGNoYW5nZXMgYXJlIG5lZWRlZCwgdGhlbiBncmFiIGFs
bCBjcnRjIGxvY2tzCiAgICAgIHRvIHNlcmlhbGl6ZSB0aGUgY2hhbmdlcyhWaWxsZSBTeXJqw6Rs
w6QpCiAgICAtIEFkZCBjcnRjX3NhZ3ZfbWFzayBjYWNoaW5nIGluIG9yZGVyIHRvIGF2b2lkIG5l
ZWRsZXNzIHJlY2FsY3VsYXRpb25zCiAgICAgIChNYXR0aGV3IFJvcGVyKQogICAgLSBQdXQgYmFj
ayBHZW4xMiBTQUdWIHN3aXRjaCBpbiBvcmRlciB0byBnZXQgaXQgZW5hYmxlZCBpbiBzZXBhcmF0
ZQogICAgICBwYXRjaChNYXR0aGV3IFJvcGVyKQogICAgLSBSZW5hbWUgKl9zZXRfc2Fndl9tYXNr
IHRvICpfY29tcHV0ZV9zYWd2X21hc2soTWF0dGhldyBSb3BlcikKICAgIC0gQ2hlY2sgaWYgdGhl
cmUgYXJlIG5vIGFjdGl2ZSBwaXBlcyBpbiBpbnRlbF9jYW5fZW5hYmxlX3NhZ3YKICAgICAgaW5z
dGVhZCBvZiBwbGF0Zm9ybSBzcGVjaWZpYyBmdW5jdGlvbnMoTWF0dGhldyBSb3BlciksIHNhbWUK
ICAgICAgZm9yIGludGVsX2hhc19zYWd2IGNoZWNrLgoKU2lnbmVkLW9mZi1ieTogU3RhbmlzbGF2
IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAaW50ZWwuY29tPgpDYzogSmFtZXMgQXVzbXVzIDxqYW1lcy5h
dXNtdXNAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jICB8ICAxMiArLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oICAgIHwgICA5ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAg
ICAgICAgICB8ICAgNiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAg
ICAgICAgfCA0MTYgKysrKysrKysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5oICAgICAgICAgICAgICAgfCAgIDEgKwogNSBmaWxlcyBjaGFuZ2VkLCAzOTMgaW5zZXJ0
aW9ucygrKSwgNTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwppbmRleCAwZjM3ZjFkMjAyNmQuLmQ1OGM3MGZiYzA4ZSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTEzMzc5LDcg
KzEzMzc5LDEwIEBAIHN0YXRpYyB2b2lkIHZlcmlmeV93bV9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YywKIAkJLyogV2F0ZXJtYXJrcyAqLwogCQlmb3IgKGxldmVsID0gMDsgbGV2ZWwgPD0g
bWF4X2xldmVsOyBsZXZlbCsrKSB7CiAJCQlpZiAoc2tsX3dtX2xldmVsX2VxdWFscygmaHdfcGxh
bmVfd20tPndtW2xldmVsXSwKLQkJCQkJCSZzd19wbGFuZV93bS0+d21bbGV2ZWxdKSkKKwkJCQkJ
CSZzd19wbGFuZV93bS0+d21bbGV2ZWxdKSB8fAorCQkJICAgKHNrbF93bV9sZXZlbF9lcXVhbHMo
Jmh3X3BsYW5lX3dtLT53bVtsZXZlbF0sCisJCQkJCQkmc3dfcGxhbmVfd20tPnNhZ3Zfd20wKSAm
JgorCQkJICAgKGxldmVsID09IDApKSkKIAkJCQljb250aW51ZTsKIAogCQkJRFJNX0VSUk9SKCJt
aXNtYXRjaCBpbiBXTSBwaXBlICVjIHBsYW5lICVkIGxldmVsICVkIChleHBlY3RlZCBlPSVkIGI9
JXUgbD0ldSwgZ290IGU9JWQgYj0ldSBsPSV1KVxuIiwKQEAgLTEzNDMxLDcgKzEzNDM0LDEwIEBA
IHN0YXRpYyB2b2lkIHZlcmlmeV93bV9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkJ
LyogV2F0ZXJtYXJrcyAqLwogCQlmb3IgKGxldmVsID0gMDsgbGV2ZWwgPD0gbWF4X2xldmVsOyBs
ZXZlbCsrKSB7CiAJCQlpZiAoc2tsX3dtX2xldmVsX2VxdWFscygmaHdfcGxhbmVfd20tPndtW2xl
dmVsXSwKLQkJCQkJCSZzd19wbGFuZV93bS0+d21bbGV2ZWxdKSkKKwkJCQkJCSZzd19wbGFuZV93
bS0+d21bbGV2ZWxdKSB8fAorCQkJICAgKHNrbF93bV9sZXZlbF9lcXVhbHMoJmh3X3BsYW5lX3dt
LT53bVtsZXZlbF0sCisJCQkJCQkmc3dfcGxhbmVfd20tPnNhZ3Zfd20wKSAmJgorCQkJICAgKGxl
dmVsID09IDApKSkKIAkJCQljb250aW51ZTsKIAogCQkJRFJNX0VSUk9SKCJtaXNtYXRjaCBpbiBX
TSBwaXBlICVjIGN1cnNvciBsZXZlbCAlZCAoZXhwZWN0ZWQgZT0lZCBiPSV1IGw9JXUsIGdvdCBl
PSVkIGI9JXUgbD0ldSlcbiIsCkBAIC0xNDgwOCw2ICsxNDgxNCw4IEBAIHN0YXRpYyB2b2lkIGlu
dGVsX2F0b21pY19jb21taXRfdGFpbChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkK
IAkJCWRldl9wcml2LT5kaXNwbGF5Lm9wdGltaXplX3dhdGVybWFya3Moc3RhdGUsIGNydGMpOwog
CX0KIAorCWRldl9wcml2LT5jcnRjX3NhZ3ZfbWFzayA9IHN0YXRlLT5jcnRjX3NhZ3ZfbWFzazsK
KwogCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBvbGRf
Y3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUsIGkpIHsKIAkJaW50ZWxfcG9zdF9wbGFuZV91cGRh
dGUoc3RhdGUsIGNydGMpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IDgzZWEwNDE0OWI3Ny4uNTMwMWUxMDQyYjQwIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaApAQCAtNDkwLDYgKzQ5MCwxNCBAQCBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlIHsKIAkg
Ki8KIAl1OCBhY3RpdmVfcGlwZV9jaGFuZ2VzOwogCisJLyoKKwkgKiBDb250YWlucyBhIG1hc2sg
d2hpY2ggcmVmbGVjdHMgd2hldGhlciBjb3JyZXNwb25kZW50IHBpcGUKKwkgKiBjYW4gdG9sZXJh
dGUgU0FHViBvciBub3QsIHNvIHRoYXQgd2UgY2FuIG1ha2UgYSBkZWNpc2lvbgorCSAqIGF0IGF0
b21pY19jb21taXRfdGFpbCBzdGFnZSwgd2hldGhlciB3ZSBlbmFibGUgaXQgb3Igbm90CisJICog
YmFzZWQgb24gZ2xvYmFsIHN0YXRlIGluIGRldl9wcml2LgorCSAqLworCXUzMiBjcnRjX3NhZ3Zf
bWFzazsKKwogCXU4IGFjdGl2ZV9waXBlczsKIAkvKiBtaW5pbXVtIGFjY2VwdGFibGUgY2RjbGsg
Zm9yIGVhY2ggcGlwZSAqLwogCWludCBtaW5fY2RjbGtbSTkxNV9NQVhfUElQRVNdOwpAQCAtNjcw
LDYgKzY3OCw3IEBAIHN0cnVjdCBza2xfcGxhbmVfd20gewogCXN0cnVjdCBza2xfd21fbGV2ZWwg
d21bOF07CiAJc3RydWN0IHNrbF93bV9sZXZlbCB1dl93bVs4XTsKIAlzdHJ1Y3Qgc2tsX3dtX2xl
dmVsIHRyYW5zX3dtOworCXN0cnVjdCBza2xfd21fbGV2ZWwgc2Fndl93bTA7CiAJYm9vbCBpc19w
bGFuYXI7CiB9OwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCAwNzgxYjYzMjZiOGMuLmI4
NzdjNDIyMTNjNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0xMTcxLDYgKzExNzEsMTIg
QEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgewogCiAJdTMyIHNhZ3ZfYmxvY2tfdGltZV91czsK
IAorCS8qCisJICogQ29udGFpbnMgYSBiaXQgbWFzaywgd2hldGhlciBjb3JyZXNwb25kZW50CisJ
ICogcGlwZSBhbGxvd3MgU0FHViBvciBub3QuCisJICovCisJdTMyIGNydGNfc2Fndl9tYXNrOwor
CiAJc3RydWN0IHsKIAkJLyoKIAkJICogUmF3IHdhdGVybWFyayBsYXRlbmN5IHZhbHVlczoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IGNjYmJkZjRhNmFhYi4uZDcwYzMzZGYwYmJmIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTM2NDcsNyArMzY0Nyw3IEBAIHN0YXRpYyBib29sIHNr
bF9uZWVkc19tZW1vcnlfYndfd2Eoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQog
CXJldHVybiBJU19HRU45X0JDKGRldl9wcml2KSB8fCBJU19CUk9YVE9OKGRldl9wcml2KTsKIH0K
IAotc3RhdGljIGJvb2wKK2Jvb2wKIGludGVsX2hhc19zYWd2KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIHsKIAkvKiBIQUNLISAqLwpAQCAtMzc3MCw3ICszNzcwLDcgQEAgaW50
ZWxfZGlzYWJsZV9zYWd2KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlyZXR1
cm4gMDsKIH0KIAotYm9vbCBpbnRlbF9jYW5fZW5hYmxlX3NhZ3Yoc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUpCitzdGF0aWMgdm9pZCBza2xfY29tcHV0ZV9zYWd2X21hc2soc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiB7CiAJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9
IHN0YXRlLT5iYXNlLmRldjsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KGRldik7CkBAIC0zNzgwLDI5ICszNzgwLDE1IEBAIGJvb2wgaW50ZWxfY2FuX2VuYWJs
ZV9zYWd2KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCWVudW0gcGlwZSBwaXBl
OwogCWludCBsZXZlbCwgbGF0ZW5jeTsKIAotCWlmICghaW50ZWxfaGFzX3NhZ3YoZGV2X3ByaXYp
KQotCQlyZXR1cm4gZmFsc2U7Ci0KLQkvKgotCSAqIElmIHRoZXJlIGFyZSBubyBhY3RpdmUgQ1JU
Q3MsIG5vIGFkZGl0aW9uYWwgY2hlY2tzIG5lZWQgYmUgcGVyZm9ybWVkCi0JICovCi0JaWYgKGh3
ZWlnaHQ4KHN0YXRlLT5hY3RpdmVfcGlwZXMpID09IDApCi0JCXJldHVybiB0cnVlOwotCi0JLyoK
LQkgKiBTS0wrIHdvcmthcm91bmQ6IGJzcGVjIHJlY29tbWVuZHMgd2UgZGlzYWJsZSBTQUdWIHdo
ZW4gd2UgaGF2ZQotCSAqIG1vcmUgdGhlbiBvbmUgcGlwZSBlbmFibGVkCi0JICovCi0JaWYgKGh3
ZWlnaHQ4KHN0YXRlLT5hY3RpdmVfcGlwZXMpID4gMSkKLQkJcmV0dXJuIGZhbHNlOwotCiAJLyog
U2luY2Ugd2UncmUgbm93IGd1YXJhbnRlZWQgdG8gb25seSBoYXZlIG9uZSBhY3RpdmUgQ1JUQy4u
LiAqLwogCXBpcGUgPSBmZnMoc3RhdGUtPmFjdGl2ZV9waXBlcykgLSAxOwogCWNydGMgPSBpbnRl
bF9nZXRfY3J0Y19mb3JfcGlwZShkZXZfcHJpdiwgcGlwZSk7CiAJY3J0Y19zdGF0ZSA9IHRvX2lu
dGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFzZS5zdGF0ZSk7CisJc3RhdGUtPmNydGNfc2Fndl9tYXNr
ICY9IH5CSVQoY3J0Yy0+cGlwZSk7CiAKLQlpZiAoY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9k
ZS5mbGFncyAmIERSTV9NT0RFX0ZMQUdfSU5URVJMQUNFKQotCQlyZXR1cm4gZmFsc2U7CisJaWYg
KGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUuZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0lOVEVS
TEFDRSkgeworCQlyZXR1cm47CisJfQogCiAJZm9yX2VhY2hfaW50ZWxfcGxhbmVfb25fY3J0Yyhk
ZXYsIGNydGMsIHBsYW5lKSB7CiAJCXN0cnVjdCBza2xfcGxhbmVfd20gKndtID0KQEAgLTM4MzAs
NiArMzgxNiwxMzYgQEAgYm9vbCBpbnRlbF9jYW5fZW5hYmxlX3NhZ3Yoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUpCiAJCSAqIGNhbid0IGVuYWJsZSBTQUdWLgogCQkgKi8KIAkJaWYg
KGxhdGVuY3kgPCBkZXZfcHJpdi0+c2Fndl9ibG9ja190aW1lX3VzKQorCQkJcmV0dXJuOworCX0K
KworCXN0YXRlLT5jcnRjX3NhZ3ZfbWFzayB8PSBCSVQoY3J0Yy0+cGlwZSk7Cit9CisKK3N0YXRp
YyB2b2lkIHRnbF9jb21wdXRlX3NhZ3ZfbWFzayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSk7CisKK3N0YXRpYyB2b2lkIGljbF9jb21wdXRlX3NhZ3ZfbWFzayhzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSkKK3sKKwlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gc3RhdGUt
PmJhc2UuZGV2OworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUo
ZGV2KTsKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqbmV3X2NydGNfc3RhdGU7CisJaW50IGxldmVsLCBsYXRlbmN5OworCWludCBpOworCWludCBw
bGFuZV9pZDsKKworCWZvcl9lYWNoX25ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRj
LAorCQkJCQkgbmV3X2NydGNfc3RhdGUsIGkpIHsKKwkJdW5zaWduZWQgaW50IGZsYWdzID0gY3J0
Yy0+YmFzZS5zdGF0ZS0+YWRqdXN0ZWRfbW9kZS5mbGFnczsKKwkJYm9vbCBjYW5fc2FndjsKKwor
CQlpZiAoZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0lOVEVSTEFDRSkKKwkJCWNvbnRpbnVlOworCisJ
CWlmICghbmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSkKKwkJCWNvbnRpbnVlOworCisJCWNhbl9z
YWd2ID0gdHJ1ZTsKKwkJZm9yX2VhY2hfcGxhbmVfaWRfb25fY3J0YyhjcnRjLCBwbGFuZV9pZCkg
eworCQkJc3RydWN0IHNrbF9wbGFuZV93bSAqd20gPQorCQkJCSZuZXdfY3J0Y19zdGF0ZS0+d20u
c2tsLm9wdGltYWwucGxhbmVzW3BsYW5lX2lkXTsKKworCQkJLyogU2tpcCB0aGlzIHBsYW5lIGlm
IGl0J3Mgbm90IGVuYWJsZWQgKi8KKwkJCWlmICghd20tPndtWzBdLnBsYW5lX2VuKQorCQkJCWNv
bnRpbnVlOworCisJCQkvKiBGaW5kIHRoZSBoaWdoZXN0IGVuYWJsZWQgd20gbGV2ZWwgZm9yIHRo
aXMgcGxhbmUgKi8KKwkJCWZvciAobGV2ZWwgPSBpbGtfd21fbWF4X2xldmVsKGRldl9wcml2KTsK
KwkJCSAgICAgIXdtLT53bVtsZXZlbF0ucGxhbmVfZW47IC0tbGV2ZWwpIHsKKwkJCX0KKworCQkJ
bGF0ZW5jeSA9IGRldl9wcml2LT53bS5za2xfbGF0ZW5jeVtsZXZlbF07CisKKwkJCS8qCisJCQkg
KiBJZiBhbnkgb2YgdGhlIHBsYW5lcyBvbiB0aGlzIHBpcGUgZG9uJ3QgZW5hYmxlCisJCQkgKiB3
bSBsZXZlbHMgdGhhdCBpbmN1ciBtZW1vcnkgbGF0ZW5jaWVzIGhpZ2hlciB0aGFuCisJCQkgKiBz
YWd2X2Jsb2NrX3RpbWVfdXMgd2UgY2FuJ3QgZW5hYmxlIFNBR1YuCisJCQkgKi8KKwkJCWlmIChs
YXRlbmN5IDwgZGV2X3ByaXYtPnNhZ3ZfYmxvY2tfdGltZV91cykgeworCQkJCWNhbl9zYWd2ID0g
ZmFsc2U7CisJCQkJYnJlYWs7CisJCQl9CisJCX0KKwkJaWYgKGNhbl9zYWd2KQorCQkJc3RhdGUt
PmNydGNfc2Fndl9tYXNrIHw9IEJJVChjcnRjLT5waXBlKTsKKwkJZWxzZQorCQkJc3RhdGUtPmNy
dGNfc2Fndl9tYXNrICY9IH5CSVQoY3J0Yy0+cGlwZSk7CisJfQorfQorCitib29sIGludGVsX2Nh
bl9lbmFibGVfc2FndihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKK3sKKwlzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2ID0gc3RhdGUtPmJhc2UuZGV2OworCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKKwlpbnQgcmV0LCBpOworCXN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjOworCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0
ZTsKKworCWlmICghaW50ZWxfaGFzX3NhZ3YoZGV2X3ByaXYpKQorCQlyZXR1cm4gZmFsc2U7CisK
KwkvKgorCSAqIENoZWNrIGlmIHdlIGhhZCBhbHJlYWR5IGNhbGN1bGF0ZWQgdGhlIG1hc2suCisJ
ICogaWYgd2UgaGFkIC0gdGhlbiB3ZSBhbHJlYWR5IGhhdmUgZ2xvYmFsIHN0YXRlLAorCSAqIHNl
cmlhbGl6ZWQgYW5kIHRodXMgcHJvdGVjdGVkIGZyb20gY2hhbmdlcyBmcm9tCisJICogb3RoZXIg
Y29tbWl0cyBhbmQgYWJsZSB0byB1c2UgY2FjaGVkIHZlcnNpb24gaGVyZS4KKwkgKi8KKwlpZiAo
IXN0YXRlLT5jcnRjX3NhZ3ZfbWFzaykgeworCQkvKgorCQkgKiBJZiB0aGVyZSBhcmUgbm8gYWN0
aXZlIENSVENzLCBubyBhZGRpdGlvbmFsCisJCSAqIGNoZWNrcyBuZWVkIGJlIHBlcmZvcm1lZAor
CQkgKi8KKwkJaWYgKGh3ZWlnaHQ4KHN0YXRlLT5hY3RpdmVfcGlwZXMpID09IDApCisJCQlyZXR1
cm4gZmFsc2U7CisKKwkJLyoKKwkJICogTWFrZSBzdXJlIHdlIGFsd2F5cyBwaWNrIGdsb2JhbCBz
dGF0ZSBmaXJzdCwKKwkJICogdGhlcmUgc2hvdWxkbid0IGJlIGFueSBpc3N1ZSBhcyB3ZSBob2xk
IG9ubHkgbG9ja3MKKwkJICogdG8gY29ycmVzcG9uZGVudCBjcnRjcyBpbiBzdGF0ZSwgaG93ZXZl
ciBvbmNlCisJCSAqIHdlIGRldGVjdCB0aGF0IHdlIG5lZWQgdG8gY2hhbmdlIFNBR1YgbWFzawor
CQkgKiBpbiBnbG9iYWwgc3RhdGUsIHdlIHdpbGwgZ3JhYiBhbGwgdGhlIGNydGMgbG9ja3MKKwkJ
ICogaW4gb3JkZXIgdG8gZ2V0IHRoaXMgc2VyaWFsaXplZCwgdGh1cyBvdGhlcgorCQkgKiByYWNp
bmcgY29tbWl0cyBoYXZpbmcgb3RoZXIgY3J0YyBsb2Nrcywgd2lsbCBoYXZlCisJCSAqIHRvIHN0
YXJ0IG92ZXIgYWdhaW4sIGFzIHN0YXRlZCBieSBXb3VuZC1XYWl0CisJCSAqIGFsZ29yaXRobS4K
KwkJICovCisJCXN0YXRlLT5jcnRjX3NhZ3ZfbWFzayA9IGRldl9wcml2LT5jcnRjX3NhZ3ZfbWFz
azsKKworCQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKKwkJCXRnbF9jb21wdXRlX3Nh
Z3ZfbWFzayhzdGF0ZSk7CisJCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPT0gMTEpCisJ
CQlpY2xfY29tcHV0ZV9zYWd2X21hc2soc3RhdGUpOworCQllbHNlCisJCQlza2xfY29tcHV0ZV9z
YWd2X21hc2soc3RhdGUpOworCisJCS8qCisJCSAqIEZvciBTQUdWIHdlIG5lZWQgdG8gYWNjb3Vu
dCBhbGwgdGhlIHBpcGVzLAorCQkgKiBub3Qgb25seSB0aGUgb25lcyB3aGljaCBhcmUgaW4gc3Rh
dGUgY3VycmVudGx5LgorCQkgKiBHcmFiIGFsbCBsb2NrcyBpZiB3ZSBkZXRlY3QgdGhhdCB3ZSBh
cmUgYWN0dWFsbHkKKwkJICogZ29pbmcgdG8gZG8gc29tZXRoaW5nLgorCQkgKi8KKwkJaWYgKHN0
YXRlLT5jcnRjX3NhZ3ZfbWFzayAhPSBkZXZfcHJpdi0+Y3J0Y19zYWd2X21hc2spIHsKKwkJCXJl
dCA9IGludGVsX2F0b21pY19zZXJpYWxpemVfZ2xvYmFsX3N0YXRlKHN0YXRlKTsKKwkJCWlmIChy
ZXQpIHsKKwkJCQlEUk1fREVCVUdfS01TKCJDb3VsZCBub3Qgc2VyaWFsaXplIGdsb2JhbCBzdGF0
ZVxuIik7CisJCQkJcmV0dXJuIGZhbHNlOworCQkJfQorCQl9CisJfQorCisJZm9yX2VhY2hfbmV3
X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG5ld19jcnRjX3N0YXRlLCBpKSB7CisJ
CXUzMiBtYXNrID0gQklUKGNydGMtPnBpcGUpOworCQlib29sIHN0YXRlX3NhZ3ZfbWFza2VkID0g
KG1hc2sgJiBzdGF0ZS0+Y3J0Y19zYWd2X21hc2spID09IDA7CisKKwkJaWYgKCFuZXdfY3J0Y19z
dGF0ZS0+aHcuYWN0aXZlKQorCQkJY29udGludWU7CisKKwkJaWYgKHN0YXRlX3NhZ3ZfbWFza2Vk
KQogCQkJcmV0dXJuIGZhbHNlOwogCX0KIApAQCAtMzk1NSw2ICs0MDcxLDcgQEAgc3RhdGljIGlu
dCBza2xfY29tcHV0ZV93bV9wYXJhbXMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUsCiAJCQkJIGludCBjb2xvcl9wbGFuZSk7CiBzdGF0aWMgdm9pZCBza2xfY29tcHV0
ZV9wbGFuZV93bShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJ
CQkgaW50IGxldmVsLAorCQkJCSB1MzIgbGF0ZW5jeSwKIAkJCQkgY29uc3Qgc3RydWN0IHNrbF93
bV9wYXJhbXMgKndwLAogCQkJCSBjb25zdCBzdHJ1Y3Qgc2tsX3dtX2xldmVsICpyZXN1bHRfcHJl
diwKIAkJCQkgc3RydWN0IHNrbF93bV9sZXZlbCAqcmVzdWx0IC8qIG91dCAqLyk7CkBAIC0zOTc3
LDcgKzQwOTQsMTAgQEAgc2tsX2N1cnNvcl9hbGxvY2F0aW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCVdBUk5fT04ocmV0KTsKIAogCWZvciAobGV2ZWwgPSAw
OyBsZXZlbCA8PSBtYXhfbGV2ZWw7IGxldmVsKyspIHsKLQkJc2tsX2NvbXB1dGVfcGxhbmVfd20o
Y3J0Y19zdGF0ZSwgbGV2ZWwsICZ3cCwgJndtLCAmd20pOworCQl1MzIgbGF0ZW5jeSA9IGRldl9w
cml2LT53bS5za2xfbGF0ZW5jeVtsZXZlbF07CisKKwkJc2tsX2NvbXB1dGVfcGxhbmVfd20oY3J0
Y19zdGF0ZSwgbGV2ZWwsIGxhdGVuY3ksICZ3cCwgJndtLCAmd20pOworCiAJCWlmICh3bS5taW5f
ZGRiX2FsbG9jID09IFUxNl9NQVgpCiAJCQlicmVhazsKIApAQCAtNDI0Miw2ICs0MzYyLDk4IEBA
IGljbF9nZXRfdG90YWxfcmVsYXRpdmVfZGF0YV9yYXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLAogCXJldHVybiB0b3RhbF9kYXRhX3JhdGU7CiB9CiAKK3N0YXRpYyBpbnQK
K3RnbF9jaGVja19waXBlX2ZpdHNfc2Fndl93bShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSwKKwkJCSAgICBzdHJ1Y3Qgc2tsX2RkYl9hbGxvY2F0aW9uICpkZGIgLyogb3V0ICov
KQoreworCXN0cnVjdCBkcm1fY3J0YyAqY3J0YyA9IGNydGNfc3RhdGUtPnVhcGkuY3J0YzsKKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmRldik7CisJ
c3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMgPSB0b19pbnRlbF9jcnRjKGNydGMpOworCXN0
cnVjdCBza2xfZGRiX2VudHJ5ICphbGxvYyA9ICZjcnRjX3N0YXRlLT53bS5za2wuZGRiOworCXUx
NiBhbGxvY19zaXplOworCXUxNiB0b3RhbFtJOTE1X01BWF9QTEFORVNdID0ge307CisJdTY0IHRv
dGFsX2RhdGFfcmF0ZTsKKwllbnVtIHBsYW5lX2lkIHBsYW5lX2lkOworCWludCBudW1fYWN0aXZl
OworCXU2NCBwbGFuZV9kYXRhX3JhdGVbSTkxNV9NQVhfUExBTkVTXSA9IHt9OworCXUzMiBibG9j
a3M7CisKKwkvKgorCSAqIE5vIG5lZWQgdG8gY2hlY2sgZ2VuIGhlcmUsIHdlIGNhbGwgdGhpcyBv
bmx5IGZvciBnZW4xMgorCSAqLworCXRvdGFsX2RhdGFfcmF0ZSA9CisJCWljbF9nZXRfdG90YWxf
cmVsYXRpdmVfZGF0YV9yYXRlKGNydGNfc3RhdGUsCisJCQkJCQkgcGxhbmVfZGF0YV9yYXRlKTsK
KworCXNrbF9kZGJfZ2V0X3BpcGVfYWxsb2NhdGlvbl9saW1pdHMoZGV2X3ByaXYsIGNydGNfc3Rh
dGUsCisJCQkJCSAgIHRvdGFsX2RhdGFfcmF0ZSwKKwkJCQkJICAgZGRiLCBhbGxvYywgJm51bV9h
Y3RpdmUpOworCWFsbG9jX3NpemUgPSBza2xfZGRiX2VudHJ5X3NpemUoYWxsb2MpOworCWlmIChh
bGxvY19zaXplID09IDApCisJCXJldHVybiAtRU5PU1BDOworCisJLyogQWxsb2NhdGUgZml4ZWQg
bnVtYmVyIG9mIGJsb2NrcyBmb3IgY3Vyc29yLiAqLworCXRvdGFsW1BMQU5FX0NVUlNPUl0gPSBz
a2xfY3Vyc29yX2FsbG9jYXRpb24oY3J0Y19zdGF0ZSwgbnVtX2FjdGl2ZSk7CisJYWxsb2Nfc2l6
ZSAtPSB0b3RhbFtQTEFORV9DVVJTT1JdOworCWNydGNfc3RhdGUtPndtLnNrbC5wbGFuZV9kZGJf
eVtQTEFORV9DVVJTT1JdLnN0YXJ0ID0KKwkJYWxsb2MtPmVuZCAtIHRvdGFsW1BMQU5FX0NVUlNP
Ul07CisJY3J0Y19zdGF0ZS0+d20uc2tsLnBsYW5lX2RkYl95W1BMQU5FX0NVUlNPUl0uZW5kID0g
YWxsb2MtPmVuZDsKKworCS8qCisJICogRG8gY2hlY2sgaWYgd2UgY2FuIGZpdCBMMCArIHNhZ3Zf
YmxvY2tfdGltZSBhbmQKKwkgKiBkaXNhYmxlIFNBR1YgaWYgd2UgY2FuJ3QuCisJICovCisJYmxv
Y2tzID0gMDsKKwlmb3JfZWFjaF9wbGFuZV9pZF9vbl9jcnRjKGludGVsX2NydGMsIHBsYW5lX2lk
KSB7CisJCWNvbnN0IHN0cnVjdCBza2xfcGxhbmVfd20gKndtID0KKwkJCSZjcnRjX3N0YXRlLT53
bS5za2wub3B0aW1hbC5wbGFuZXNbcGxhbmVfaWRdOworCisJCWlmIChwbGFuZV9pZCA9PSBQTEFO
RV9DVVJTT1IpIHsKKwkJCWlmIChXQVJOX09OKHdtLT5zYWd2X3dtMC5taW5fZGRiX2FsbG9jID4K
KwkJCQkgICAgdG90YWxbUExBTkVfQ1VSU09SXSkpIHsKKwkJCQlibG9ja3MgPSBVMzJfTUFYOwor
CQkJCWJyZWFrOworCQkJfQorCQkJY29udGludWU7CisJCX0KKworCQlibG9ja3MgKz0gd20tPnNh
Z3Zfd20wLm1pbl9kZGJfYWxsb2M7CisJCWlmIChibG9ja3MgPiBhbGxvY19zaXplKQorCQkJcmV0
dXJuIC1FTk9TUEM7CisJfQorCXJldHVybiAwOworfQorCitzdGF0aWMgY29uc3Qgc3RydWN0IHNr
bF93bV9sZXZlbCAqCitza2xfcGxhbmVfd21fbGV2ZWwoc3RydWN0IGludGVsX3BsYW5lICpwbGFu
ZSwKKwkJICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCisJCSAg
IGludCBsZXZlbCwKKwkJICAgYm9vbCB5dXYpCit7CisJc3RydWN0IGRybV9hdG9taWNfc3RhdGUg
KnN0YXRlID0gY3J0Y19zdGF0ZS0+dWFwaS5zdGF0ZTsKKwllbnVtIHBsYW5lX2lkIHBsYW5lX2lk
ID0gcGxhbmUtPmlkOworCWNvbnN0IHN0cnVjdCBza2xfcGxhbmVfd20gKndtID0KKwkJJmNydGNf
c3RhdGUtPndtLnNrbC5vcHRpbWFsLnBsYW5lc1twbGFuZV9pZF07CisKKwkvKgorCSAqIExvb2tz
IHJpZGljaWxvdXMgYnV0IG5lZWQgdG8gY2hlY2sgaWYgc3RhdGUgaXMgbm90CisJICogTlVMTCBo
ZXJlIGFzIGl0IG1pZ2h0IGJlIGFzIHNvbWUgY3Vyc29yIHBsYW5lIG1hbmlwdWxhdGlvbnMKKwkg
KiBzZWVtIHRvIGhhcHBlbiB3aGVuIG5vIGF0b21pYyBzdGF0ZSBpcyBhY3R1YWxseSBwcmVzZW50
LAorCSAqIGRlc3BpdGUgY3J0Y19zdGF0ZSBpcyBhbGxvY2F0ZWQuIFJlbW92aW5nIHN0YXRlIGNo
ZWNrCisJICogZnJvbSBoZXJlIHdpbGwgcmVzdWx0IGluIGtlcm5lbCBwYW5pYyBvbiBib290Lgor
CSAqIEhvd2V2ZXIgd2Ugbm93IG5lZWQgdG8gY2hlY2sgd2hldGhlciBzaG91bGQgYmUgdXNlIFNB
R1YKKwkgKiB3bSBsZXZlbHMgaGVyZS4KKwkgKi8KKwlpZiAoc3RhdGUpIHsKKwkJc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqaW50ZWxfc3RhdGUgPQorCQkJdG9faW50ZWxfYXRvbWljX3N0YXRl
KHN0YXRlKTsKKwkJaWYgKGludGVsX2Nhbl9lbmFibGVfc2FndihpbnRlbF9zdGF0ZSkgJiYgIWxl
dmVsKQorCQkJcmV0dXJuICZ3bS0+c2Fndl93bTA7CisJfQorCisJcmV0dXJuIHl1diA/ICZ3bS0+
dXZfd21bbGV2ZWxdIDogJndtLT53bVtsZXZlbF07Cit9CisKIHN0YXRpYyBpbnQKIHNrbF9hbGxv
Y2F0ZV9waXBlX2RkYihzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJICAg
ICAgc3RydWN0IHNrbF9kZGJfYWxsb2NhdGlvbiAqZGRiIC8qIG91dCAqLykKQEAgLTQyNTYsNiAr
NDQ2OCw5IEBAIHNrbF9hbGxvY2F0ZV9waXBlX2RkYihzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwKIAl1MTYgdXZfdG90YWxbSTkxNV9NQVhfUExBTkVTXSA9IHt9OwogCXU2NCB0
b3RhbF9kYXRhX3JhdGU7CiAJZW51bSBwbGFuZV9pZCBwbGFuZV9pZDsKKwlzdHJ1Y3QgaW50ZWxf
cGxhbmUgKnBsYW5lOworCWNvbnN0IHN0cnVjdCBza2xfd21fbGV2ZWwgKndtX2xldmVsOworCWNv
bnN0IHN0cnVjdCBza2xfd21fbGV2ZWwgKndtX3V2X2xldmVsOwogCWludCBudW1fYWN0aXZlOwog
CXU2NCBwbGFuZV9kYXRhX3JhdGVbSTkxNV9NQVhfUExBTkVTXSA9IHt9OwogCXU2NCB1dl9wbGFu
ZV9kYXRhX3JhdGVbSTkxNV9NQVhfUExBTkVTXSA9IHt9OwpAQCAtNDMwNywxMiArNDUyMiwxNSBA
QCBza2xfYWxsb2NhdGVfcGlwZV9kZGIoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUsCiAJICovCiAJZm9yIChsZXZlbCA9IGlsa193bV9tYXhfbGV2ZWwoZGV2X3ByaXYpOyBsZXZl
bCA+PSAwOyBsZXZlbC0tKSB7CiAJCWJsb2NrcyA9IDA7Ci0JCWZvcl9lYWNoX3BsYW5lX2lkX29u
X2NydGMoaW50ZWxfY3J0YywgcGxhbmVfaWQpIHsKLQkJCWNvbnN0IHN0cnVjdCBza2xfcGxhbmVf
d20gKndtID0KLQkJCQkmY3J0Y19zdGF0ZS0+d20uc2tsLm9wdGltYWwucGxhbmVzW3BsYW5lX2lk
XTsKKwkJZm9yX2VhY2hfaW50ZWxfcGxhbmVfb25fY3J0YygmZGV2X3ByaXYtPmRybSwgaW50ZWxf
Y3J0YywgcGxhbmUpIHsKKwkJCXBsYW5lX2lkID0gcGxhbmUtPmlkOworCQkJd21fbGV2ZWwgPSBz
a2xfcGxhbmVfd21fbGV2ZWwocGxhbmUsIGNydGNfc3RhdGUsCisJCQkJCQkgICAgICBsZXZlbCwg
ZmFsc2UpOworCQkJd21fdXZfbGV2ZWwgPSBza2xfcGxhbmVfd21fbGV2ZWwocGxhbmUsIGNydGNf
c3RhdGUsCisJCQkJCQkJIGxldmVsLCB0cnVlKTsKIAogCQkJaWYgKHBsYW5lX2lkID09IFBMQU5F
X0NVUlNPUikgewotCQkJCWlmIChXQVJOX09OKHdtLT53bVtsZXZlbF0ubWluX2RkYl9hbGxvYyA+
CisJCQkJaWYgKFdBUk5fT04od21fbGV2ZWwtPm1pbl9kZGJfYWxsb2MgPgogCQkJCQkgICAgdG90
YWxbUExBTkVfQ1VSU09SXSkpIHsKIAkJCQkJYmxvY2tzID0gVTMyX01BWDsKIAkJCQkJYnJlYWs7
CkBAIC00MzIwLDggKzQ1MzgsOCBAQCBza2xfYWxsb2NhdGVfcGlwZV9kZGIoc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQkJY29udGludWU7CiAJCQl9CiAKLQkJCWJsb2Nr
cyArPSB3bS0+d21bbGV2ZWxdLm1pbl9kZGJfYWxsb2M7Ci0JCQlibG9ja3MgKz0gd20tPnV2X3dt
W2xldmVsXS5taW5fZGRiX2FsbG9jOworCQkJYmxvY2tzICs9IHdtX2xldmVsLT5taW5fZGRiX2Fs
bG9jOworCQkJYmxvY2tzICs9IHdtX3V2X2xldmVsLT5taW5fZGRiX2FsbG9jOwogCQl9CiAKIAkJ
aWYgKGJsb2NrcyA8PSBhbGxvY19zaXplKSB7CkBAIC00MzQyLDEyICs0NTYwLDE2IEBAIHNrbF9h
bGxvY2F0ZV9waXBlX2RkYihzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkg
KiB3YXRlcm1hcmsgbGV2ZWwsIHBsdXMgYW4gZXh0cmEgc2hhcmUgb2YgdGhlIGxlZnRvdmVyIGJs
b2NrcwogCSAqIHByb3BvcnRpb25hbCB0byBpdHMgcmVsYXRpdmUgZGF0YSByYXRlLgogCSAqLwot
CWZvcl9lYWNoX3BsYW5lX2lkX29uX2NydGMoaW50ZWxfY3J0YywgcGxhbmVfaWQpIHsKLQkJY29u
c3Qgc3RydWN0IHNrbF9wbGFuZV93bSAqd20gPQotCQkJJmNydGNfc3RhdGUtPndtLnNrbC5vcHRp
bWFsLnBsYW5lc1twbGFuZV9pZF07CisJZm9yX2VhY2hfaW50ZWxfcGxhbmVfb25fY3J0YygmZGV2
X3ByaXYtPmRybSwgaW50ZWxfY3J0YywgcGxhbmUpIHsKIAkJdTY0IHJhdGU7CiAJCXUxNiBleHRy
YTsKIAorCQlwbGFuZV9pZCA9IHBsYW5lLT5pZDsKKwkJd21fbGV2ZWwgPSBza2xfcGxhbmVfd21f
bGV2ZWwocGxhbmUsIGNydGNfc3RhdGUsCisJCQkJCSAgICAgIGxldmVsLCBmYWxzZSk7CisJCXdt
X3V2X2xldmVsID0gc2tsX3BsYW5lX3dtX2xldmVsKHBsYW5lLCBjcnRjX3N0YXRlLAorCQkJCQkJ
IGxldmVsLCB0cnVlKTsKKwogCQlpZiAocGxhbmVfaWQgPT0gUExBTkVfQ1VSU09SKQogCQkJY29u
dGludWU7CiAKQEAgLTQzNjIsNyArNDU4NCw3IEBAIHNrbF9hbGxvY2F0ZV9waXBlX2RkYihzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJZXh0cmEgPSBtaW5fdCh1MTYsIGFs
bG9jX3NpemUsCiAJCQkgICAgICBESVY2NF9VNjRfUk9VTkRfVVAoYWxsb2Nfc2l6ZSAqIHJhdGUs
CiAJCQkJCQkgdG90YWxfZGF0YV9yYXRlKSk7Ci0JCXRvdGFsW3BsYW5lX2lkXSA9IHdtLT53bVts
ZXZlbF0ubWluX2RkYl9hbGxvYyArIGV4dHJhOworCQl0b3RhbFtwbGFuZV9pZF0gPSB3bV9sZXZl
bC0+bWluX2RkYl9hbGxvYyArIGV4dHJhOwogCQlhbGxvY19zaXplIC09IGV4dHJhOwogCQl0b3Rh
bF9kYXRhX3JhdGUgLT0gcmF0ZTsKIApAQCAtNDM3Myw3ICs0NTk1LDcgQEAgc2tsX2FsbG9jYXRl
X3BpcGVfZGRiKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQlleHRyYSA9
IG1pbl90KHUxNiwgYWxsb2Nfc2l6ZSwKIAkJCSAgICAgIERJVjY0X1U2NF9ST1VORF9VUChhbGxv
Y19zaXplICogcmF0ZSwKIAkJCQkJCSB0b3RhbF9kYXRhX3JhdGUpKTsKLQkJdXZfdG90YWxbcGxh
bmVfaWRdID0gd20tPnV2X3dtW2xldmVsXS5taW5fZGRiX2FsbG9jICsgZXh0cmE7CisJCXV2X3Rv
dGFsW3BsYW5lX2lkXSA9IHdtX3V2X2xldmVsLT5taW5fZGRiX2FsbG9jICsgZXh0cmE7CiAJCWFs
bG9jX3NpemUgLT0gZXh0cmE7CiAJCXRvdGFsX2RhdGFfcmF0ZSAtPSByYXRlOwogCX0KQEAgLTQ0
MTQsOSArNDYzNiwxNCBAQCBza2xfYWxsb2NhdGVfcGlwZV9kZGIoc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUsCiAJICogdGhhdCBhcmVuJ3QgYWN0dWFsbHkgcG9zc2libGUuCiAJ
ICovCiAJZm9yIChsZXZlbCsrOyBsZXZlbCA8PSBpbGtfd21fbWF4X2xldmVsKGRldl9wcml2KTsg
bGV2ZWwrKykgewotCQlmb3JfZWFjaF9wbGFuZV9pZF9vbl9jcnRjKGludGVsX2NydGMsIHBsYW5l
X2lkKSB7CisJCWZvcl9lYWNoX2ludGVsX3BsYW5lX29uX2NydGMoJmRldl9wcml2LT5kcm0sIGlu
dGVsX2NydGMsIHBsYW5lKSB7CiAJCQlzdHJ1Y3Qgc2tsX3BsYW5lX3dtICp3bSA9Ci0JCQkJJmNy
dGNfc3RhdGUtPndtLnNrbC5vcHRpbWFsLnBsYW5lc1twbGFuZV9pZF07CisJCQkJJmNydGNfc3Rh
dGUtPndtLnNrbC5vcHRpbWFsLnBsYW5lc1twbGFuZS0+aWRdOworCisJCQl3bV9sZXZlbCA9IHNr
bF9wbGFuZV93bV9sZXZlbChwbGFuZSwgY3J0Y19zdGF0ZSwKKwkJCQkJCSAgICAgIGxldmVsLCBm
YWxzZSk7CisJCQl3bV91dl9sZXZlbCA9IHNrbF9wbGFuZV93bV9sZXZlbChwbGFuZSwgY3J0Y19z
dGF0ZSwKKwkJCQkJCQkgbGV2ZWwsIHRydWUpOwogCiAJCQkvKgogCQkJICogV2Ugb25seSBkaXNh
YmxlIHRoZSB3YXRlcm1hcmtzIGZvciBlYWNoIHBsYW5lIGlmCkBAIC00NDMwLDkgKzQ2NTcsMTAg
QEAgc2tsX2FsbG9jYXRlX3BpcGVfZGRiKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlLAogCQkJICogIHBsYW5lcyBtdXN0IGJlIGVuYWJsZWQgYmVmb3JlIHRoZSBsZXZlbCB3aWxs
IGJlIHVzZWQuIgogCQkJICogU28gdGhpcyBpcyBhY3R1YWxseSBzYWZlIHRvIGRvLgogCQkJICov
Ci0JCQlpZiAod20tPndtW2xldmVsXS5taW5fZGRiX2FsbG9jID4gdG90YWxbcGxhbmVfaWRdIHx8
Ci0JCQkgICAgd20tPnV2X3dtW2xldmVsXS5taW5fZGRiX2FsbG9jID4gdXZfdG90YWxbcGxhbmVf
aWRdKQotCQkJCW1lbXNldCgmd20tPndtW2xldmVsXSwgMCwgc2l6ZW9mKHdtLT53bVtsZXZlbF0p
KTsKKwkJCWlmICh3bV9sZXZlbC0+bWluX2RkYl9hbGxvYyA+IHRvdGFsW3BsYW5lLT5pZF0gfHwK
KwkJCSAgICB3bV91dl9sZXZlbC0+bWluX2RkYl9hbGxvYyA+IHV2X3RvdGFsW3BsYW5lLT5pZF0p
CisJCQkJbWVtc2V0KCZ3bS0+d21bbGV2ZWxdLCAwLAorCQkJCSAgICAgICBzaXplb2Yoc3RydWN0
IHNrbF93bV9sZXZlbCkpOwogCiAJCQkvKgogCQkJICogV2FfMTQwODk2MTAwODppY2wsIGVobApA
QCAtNDQ0MCw5ICs0NjY4LDE0IEBAIHNrbF9hbGxvY2F0ZV9waXBlX2RkYihzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJCSAqLwogCQkJaWYgKElTX0dFTihkZXZfcHJpdiwg
MTEpICYmCiAJCQkgICAgbGV2ZWwgPT0gMSAmJiB3bS0+d21bMF0ucGxhbmVfZW4pIHsKLQkJCQl3
bS0+d21bbGV2ZWxdLnBsYW5lX3Jlc19iID0gd20tPndtWzBdLnBsYW5lX3Jlc19iOwotCQkJCXdt
LT53bVtsZXZlbF0ucGxhbmVfcmVzX2wgPSB3bS0+d21bMF0ucGxhbmVfcmVzX2w7Ci0JCQkJd20t
PndtW2xldmVsXS5pZ25vcmVfbGluZXMgPSB3bS0+d21bMF0uaWdub3JlX2xpbmVzOworCQkJCXdt
X2xldmVsID0gc2tsX3BsYW5lX3dtX2xldmVsKHBsYW5lLCBjcnRjX3N0YXRlLAorCQkJCQkJCSAg
ICAgIDAsIGZhbHNlKTsKKwkJCQl3bS0+d21bbGV2ZWxdLnBsYW5lX3Jlc19iID0KKwkJCQkJd21f
bGV2ZWwtPnBsYW5lX3Jlc19iOworCQkJCXdtLT53bVtsZXZlbF0ucGxhbmVfcmVzX2wgPQorCQkJ
CQl3bV9sZXZlbC0+cGxhbmVfcmVzX2w7CisJCQkJd20tPndtW2xldmVsXS5pZ25vcmVfbGluZXMg
PQorCQkJCQl3bV9sZXZlbC0+aWdub3JlX2xpbmVzOwogCQkJfQogCQl9CiAJfQpAQCAtNDY3MSwx
MiArNDkwNCwxMiBAQCBzdGF0aWMgYm9vbCBza2xfd21faGFzX2xpbmVzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwgaW50IGxldmVsKQogCiBzdGF0aWMgdm9pZCBza2xfY29tcHV0
ZV9wbGFuZV93bShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJ
CQkgaW50IGxldmVsLAorCQkJCSB1MzIgbGF0ZW5jeSwKIAkJCQkgY29uc3Qgc3RydWN0IHNrbF93
bV9wYXJhbXMgKndwLAogCQkJCSBjb25zdCBzdHJ1Y3Qgc2tsX3dtX2xldmVsICpyZXN1bHRfcHJl
diwKIAkJCQkgc3RydWN0IHNrbF93bV9sZXZlbCAqcmVzdWx0IC8qIG91dCAqLykKIHsKIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGNfc3RhdGUtPnVhcGku
Y3J0Yy0+ZGV2KTsKLQl1MzIgbGF0ZW5jeSA9IGRldl9wcml2LT53bS5za2xfbGF0ZW5jeVtsZXZl
bF07CiAJdWludF9maXhlZF8xNl8xNl90IG1ldGhvZDEsIG1ldGhvZDI7CiAJdWludF9maXhlZF8x
Nl8xNl90IHNlbGVjdGVkX3Jlc3VsdDsKIAl1MzIgcmVzX2Jsb2NrcywgcmVzX2xpbmVzLCBtaW5f
ZGRiX2FsbG9jID0gMDsKQEAgLTQ3OTcsMjAgKzUwMzAsNDYgQEAgc3RhdGljIHZvaWQgc2tsX2Nv
bXB1dGVfcGxhbmVfd20oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUs
CiBzdGF0aWMgdm9pZAogc2tsX2NvbXB1dGVfd21fbGV2ZWxzKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkgICAgICBjb25zdCBzdHJ1Y3Qgc2tsX3dtX3BhcmFt
cyAqd21fcGFyYW1zLAotCQkgICAgICBzdHJ1Y3Qgc2tsX3dtX2xldmVsICpsZXZlbHMpCisJCSAg
ICAgIHN0cnVjdCBza2xfcGxhbmVfd20gKnBsYW5lX3dtLAorCQkgICAgICBib29sIHl1dikKIHsK
IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGNfc3RhdGUt
PnVhcGkuY3J0Yy0+ZGV2KTsKIAlpbnQgbGV2ZWwsIG1heF9sZXZlbCA9IGlsa193bV9tYXhfbGV2
ZWwoZGV2X3ByaXYpOworCS8qCisJICogQ2hlY2sgd2hpY2gga2luZCBvZiBwbGFuZSBpcyBpdCBh
bmQgYmFzZWQgb24gdGhhdCBjYWxjdWxhdGUKKwkgKiBjb3JyZXNwb25kZW50IFdNIGxldmVscy4K
KwkgKi8KKwlzdHJ1Y3Qgc2tsX3dtX2xldmVsICpsZXZlbHMgPSB5dXYgPyBwbGFuZV93bS0+dXZf
d20gOiBwbGFuZV93bS0+d207CiAJc3RydWN0IHNrbF93bV9sZXZlbCAqcmVzdWx0X3ByZXYgPSAm
bGV2ZWxzWzBdOwogCiAJZm9yIChsZXZlbCA9IDA7IGxldmVsIDw9IG1heF9sZXZlbDsgbGV2ZWwr
KykgewogCQlzdHJ1Y3Qgc2tsX3dtX2xldmVsICpyZXN1bHQgPSAmbGV2ZWxzW2xldmVsXTsKKwkJ
dTMyIGxhdGVuY3kgPSBkZXZfcHJpdi0+d20uc2tsX2xhdGVuY3lbbGV2ZWxdOwogCi0JCXNrbF9j
b21wdXRlX3BsYW5lX3dtKGNydGNfc3RhdGUsIGxldmVsLCB3bV9wYXJhbXMsCi0JCQkJICAgICBy
ZXN1bHRfcHJldiwgcmVzdWx0KTsKKwkJc2tsX2NvbXB1dGVfcGxhbmVfd20oY3J0Y19zdGF0ZSwg
bGV2ZWwsIGxhdGVuY3ksCisJCQkJICAgICB3bV9wYXJhbXMsIHJlc3VsdF9wcmV2LCByZXN1bHQp
OwogCiAJCXJlc3VsdF9wcmV2ID0gcmVzdWx0OwogCX0KKwkvKgorCSAqIEZvciBHZW4xMiBpZiBp
dCBpcyBhbiBMMCB3ZSBuZWVkIHRvIGFsc28KKwkgKiBjb25zaWRlciBzYWd2X2Jsb2NrX3RpbWUg
d2hlbiBjYWxjdWxhdGluZworCSAqIEwwIHdhdGVybWFyayAtIHdlIHdpbGwgbmVlZCB0aGF0IHdo
ZW4gbWFraW5nCisJICogYSBkZWNpc2lvbiB3aGV0aGVyIGVuYWJsZSBTQUdWIG9yIG5vdC4KKwkg
KiBGb3Igb2xkZXIgZ2VucyB3ZSBhZ3JlZWQgdG8gY29weSBMMCB2YWx1ZSBmb3IKKwkgKiBjb21w
YXRpYmlsaXR5LgorCSAqLworCWlmICgoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikpIHsKKwkJ
dTMyIGxhdGVuY3kgPSBkZXZfcHJpdi0+d20uc2tsX2xhdGVuY3lbMF07CisKKwkJbGF0ZW5jeSAr
PSBkZXZfcHJpdi0+c2Fndl9ibG9ja190aW1lX3VzOworCQlza2xfY29tcHV0ZV9wbGFuZV93bShj
cnRjX3N0YXRlLCAwLCBsYXRlbmN5LAorCQkJCSAgICAgd21fcGFyYW1zLCAmbGV2ZWxzWzBdLAor
CQkJCSAgICAgJnBsYW5lX3dtLT5zYWd2X3dtMCk7CisJfSBlbHNlIHsKKwkJbWVtY3B5KCZwbGFu
ZV93bS0+c2Fndl93bTAsICZsZXZlbHNbMF0sCisJCSAgICAgICBzaXplb2Yoc3RydWN0IHNrbF93
bV9sZXZlbCkpOworCX0KIH0KIAogc3RhdGljIHUzMgpAQCAtNDkwMyw3ICs1MTYyLDcgQEAgc3Rh
dGljIGludCBza2xfYnVpbGRfcGxhbmVfd21fc2luZ2xlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLAogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKLQlza2xfY29tcHV0ZV93
bV9sZXZlbHMoY3J0Y19zdGF0ZSwgJndtX3BhcmFtcywgd20tPndtKTsKKwlza2xfY29tcHV0ZV93
bV9sZXZlbHMoY3J0Y19zdGF0ZSwgJndtX3BhcmFtcywgd20sIGZhbHNlKTsKIAlza2xfY29tcHV0
ZV90cmFuc2l0aW9uX3dtKGNydGNfc3RhdGUsICZ3bV9wYXJhbXMsIHdtKTsKIAogCXJldHVybiAw
OwpAQCAtNDkyNSw3ICs1MTg0LDcgQEAgc3RhdGljIGludCBza2xfYnVpbGRfcGxhbmVfd21fdXYo
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJaWYgKHJldCkKIAkJcmV0dXJu
IHJldDsKIAotCXNrbF9jb21wdXRlX3dtX2xldmVscyhjcnRjX3N0YXRlLCAmd21fcGFyYW1zLCB3
bS0+dXZfd20pOworCXNrbF9jb21wdXRlX3dtX2xldmVscyhjcnRjX3N0YXRlLCAmd21fcGFyYW1z
LCB3bSwgdHJ1ZSk7CiAKIAlyZXR1cm4gMDsKIH0KQEAgLTUwNjIsMTAgKzUzMjEsMTMgQEAgdm9p
ZCBza2xfd3JpdGVfcGxhbmVfd20oc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKIAkJJmNydGNf
c3RhdGUtPndtLnNrbC5wbGFuZV9kZGJfeVtwbGFuZV9pZF07CiAJY29uc3Qgc3RydWN0IHNrbF9k
ZGJfZW50cnkgKmRkYl91diA9CiAJCSZjcnRjX3N0YXRlLT53bS5za2wucGxhbmVfZGRiX3V2W3Bs
YW5lX2lkXTsKKwljb25zdCBzdHJ1Y3Qgc2tsX3dtX2xldmVsICp3bV9sZXZlbDsKIAogCWZvciAo
bGV2ZWwgPSAwOyBsZXZlbCA8PSBtYXhfbGV2ZWw7IGxldmVsKyspIHsKKwkJd21fbGV2ZWwgPSBz
a2xfcGxhbmVfd21fbGV2ZWwocGxhbmUsIGNydGNfc3RhdGUsIGxldmVsLCBmYWxzZSk7CisKIAkJ
c2tsX3dyaXRlX3dtX2xldmVsKGRldl9wcml2LCBQTEFORV9XTShwaXBlLCBwbGFuZV9pZCwgbGV2
ZWwpLAotCQkJCSAgICZ3bS0+d21bbGV2ZWxdKTsKKwkJCQkgICB3bV9sZXZlbCk7CiAJfQogCXNr
bF93cml0ZV93bV9sZXZlbChkZXZfcHJpdiwgUExBTkVfV01fVFJBTlMocGlwZSwgcGxhbmVfaWQp
LAogCQkJICAgJndtLT50cmFuc193bSk7CkBAIC01MDk2LDEwICs1MzU4LDEzIEBAIHZvaWQgc2ts
X3dyaXRlX2N1cnNvcl93bShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAogCQkmY3J0Y19zdGF0
ZS0+d20uc2tsLm9wdGltYWwucGxhbmVzW3BsYW5lX2lkXTsKIAljb25zdCBzdHJ1Y3Qgc2tsX2Rk
Yl9lbnRyeSAqZGRiID0KIAkJJmNydGNfc3RhdGUtPndtLnNrbC5wbGFuZV9kZGJfeVtwbGFuZV9p
ZF07CisJY29uc3Qgc3RydWN0IHNrbF93bV9sZXZlbCAqd21fbGV2ZWw7CiAKIAlmb3IgKGxldmVs
ID0gMDsgbGV2ZWwgPD0gbWF4X2xldmVsOyBsZXZlbCsrKSB7CisJCXdtX2xldmVsID0gc2tsX3Bs
YW5lX3dtX2xldmVsKHBsYW5lLCBjcnRjX3N0YXRlLCBsZXZlbCwgZmFsc2UpOworCiAJCXNrbF93
cml0ZV93bV9sZXZlbChkZXZfcHJpdiwgQ1VSX1dNKHBpcGUsIGxldmVsKSwKLQkJCQkgICAmd20t
PndtW2xldmVsXSk7CisJCQkJICAgd21fbGV2ZWwpOwogCX0KIAlza2xfd3JpdGVfd21fbGV2ZWwo
ZGV2X3ByaXYsIENVUl9XTV9UUkFOUyhwaXBlKSwgJndtLT50cmFuc193bSk7CiAKQEAgLTU0NzMs
MTggKzU3MzgsNjggQEAgc3RhdGljIGludCBza2xfd21fYWRkX2FmZmVjdGVkX3BsYW5lcyhzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAlyZXR1cm4gMDsKIH0KIAorc3RhdGljIHZv
aWQgdGdsX2NvbXB1dGVfc2Fndl9tYXNrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
KQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoc3RhdGUt
PmJhc2UuZGV2KTsKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKKwlzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGU7CisJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9j
cnRjX3N0YXRlOworCXN0cnVjdCBza2xfZGRiX2FsbG9jYXRpb24gKmRkYiA9ICZzdGF0ZS0+d21f
cmVzdWx0cy5kZGI7CisJaW50IHJldDsKKwlpbnQgaTsKKwlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBs
YW5lOworCisJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMs
IG9sZF9jcnRjX3N0YXRlLAorCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsKKwkJaW50IHBp
cGVfYml0ID0gQklUKGNydGMtPnBpcGUpOworCQlib29sIHNraXAgPSB0cnVlOworCisJCS8qCisJ
CSAqIElmIHdlIGhhZCBzZXQgdGhpcyBtYXN0IGFscmVhZHkgb25jZSBmb3IgdGhpcyBzdGF0ZSwK
KwkJICogbm8gbmVlZCB0byB3YXN0ZSBDUFUgY3ljbGVzIGZvciBkb2luZyB0aGlzIGFnYWluLgor
CQkgKi8KKwkJZm9yX2VhY2hfaW50ZWxfcGxhbmVfb25fY3J0YygmZGV2X3ByaXYtPmRybSwgY3J0
YywgcGxhbmUpIHsKKwkJCWVudW0gcGxhbmVfaWQgcGxhbmVfaWQgPSBwbGFuZS0+aWQ7CisKKwkJ
CWlmICghc2tsX3BsYW5lX3dtX2VxdWFscyhkZXZfcHJpdiwKKwkJCQkJCSAmb2xkX2NydGNfc3Rh
dGUtPndtLnNrbC5vcHRpbWFsLnBsYW5lc1twbGFuZV9pZF0sCisJCQkJCQkgJm5ld19jcnRjX3N0
YXRlLT53bS5za2wub3B0aW1hbC5wbGFuZXNbcGxhbmVfaWRdKSkgeworCQkJCXNraXAgPSBmYWxz
ZTsKKwkJCQlicmVhazsKKwkJCX0KKwkJfQorCisJCS8qCisJCSAqIENoZWNrIGlmIHdtIGxldmVs
cyBhcmUgYWN0dWFsbHkgdGhlIHNhbWUgYXMgZm9yIHByZXZpb3VzCisJCSAqIHN0YXRlLCB3aGlj
aCBtZWFucyB3ZSBjYW4ganVzdCBza2lwIGRvaW5nIHRoaXMgbG9uZyBjaGVjaworCQkgKiBhbmQg
anVzdCAgY29weSBjb3JyZXNwb25kZW50IGJpdCBmcm9tIHByZXZpb3VzIHN0YXRlLgorCQkgKi8K
KwkJaWYgKHNraXApCisJCQljb250aW51ZTsKKworCQlyZXQgPSB0Z2xfY2hlY2tfcGlwZV9maXRz
X3NhZ3Zfd20obmV3X2NydGNfc3RhdGUsIGRkYik7CisJCWlmICghcmV0KQorCQkJc3RhdGUtPmNy
dGNfc2Fndl9tYXNrIHw9IHBpcGVfYml0OworCQllbHNlCisJCQlzdGF0ZS0+Y3J0Y19zYWd2X21h
c2sgJj0gfnBpcGVfYml0OworCX0KK30KKwogc3RhdGljIGludAogc2tsX2NvbXB1dGVfd20oc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiB7CiAJc3RydWN0IGludGVsX2NydGMgKmNy
dGM7CiAJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlOwogCXN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZTsKLQlzdHJ1Y3Qgc2tsX2RkYl92YWx1ZXMg
KnJlc3VsdHMgPSAmc3RhdGUtPndtX3Jlc3VsdHM7CiAJaW50IHJldCwgaTsKKwlzdHJ1Y3Qgc2ts
X2RkYl92YWx1ZXMgKnJlc3VsdHMgPSAmc3RhdGUtPndtX3Jlc3VsdHM7CiAKIAkvKiBDbGVhciBh
bGwgZGlydHkgZmxhZ3MgKi8KIAlyZXN1bHRzLT5kaXJ0eV9waXBlcyA9IDA7CiAKKwkvKiBObyBT
QUdWIHVudGlsIHdlIGNoZWNrIGlmIGl0J3MgcG9zc2libGUgKi8KKwlzdGF0ZS0+Y3J0Y19zYWd2
X21hc2sgPSAwOworCiAJcmV0ID0gc2tsX2RkYl9hZGRfYWZmZWN0ZWRfcGlwZXMoc3RhdGUpOwog
CWlmIChyZXQpCiAJCXJldHVybiByZXQ7CkBAIC01NjY0LDYgKzU5NzksOSBAQCB2b2lkIHNrbF9w
aXBlX3dtX2dldF9od19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkJCQl2YWwgPSBJ
OTE1X1JFQUQoQ1VSX1dNKHBpcGUsIGxldmVsKSk7CiAKIAkJCXNrbF93bV9sZXZlbF9mcm9tX3Jl
Z192YWwodmFsLCAmd20tPndtW2xldmVsXSk7CisJCQlpZiAobGV2ZWwgPT0gMCkKKwkJCQltZW1j
cHkoJndtLT5zYWd2X3dtMCwgJndtLT53bVtsZXZlbF0sCisJCQkJICAgICAgIHNpemVvZihzdHJ1
Y3Qgc2tsX3dtX2xldmVsKSk7CiAJCX0KIAogCQlpZiAocGxhbmVfaWQgIT0gUExBTkVfQ1VSU09S
KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3BtLmgKaW5kZXggYzA2YzZhODQ2ZDlhLi40MTM2ZDQ1MDhlNjMg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uaApAQCAtNDMsNiArNDMsNyBAQCB2b2lkIHNrbF9waXBl
X3dtX2dldF9od19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIHZvaWQgZzR4X3dtX3Nh
bml0aXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CiB2b2lkIHZsdl93bV9z
YW5pdGl6ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogYm9vbCBpbnRlbF9j
YW5fZW5hYmxlX3NhZ3Yoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOworYm9vbCBp
bnRlbF9oYXNfc2FndihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogaW50IGlu
dGVsX2VuYWJsZV9zYWd2KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CiBpbnQg
aW50ZWxfZGlzYWJsZV9zYWd2KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CiBi
b29sIHNrbF93bV9sZXZlbF9lcXVhbHMoY29uc3Qgc3RydWN0IHNrbF93bV9sZXZlbCAqbDEsCi0t
IAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
