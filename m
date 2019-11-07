Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98373F3343
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 16:33:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D96956F71B;
	Thu,  7 Nov 2019 15:33:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92CC26F71B
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 15:33:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 07:33:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,278,1569308400"; d="scan'208";a="227862401"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga004.fm.intel.com with ESMTP; 07 Nov 2019 07:33:21 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Nov 2019 17:30:36 +0200
Message-Id: <20191107153037.17640-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191107153037.17640-1-stanislav.lisovskiy@intel.com>
References: <20191107153037.17640-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 1/2] drm/i915: Refactor intel_can_enable_sagv
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
U2lnbmVkLW9mZi1ieTogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBp
bnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAaW50ZWwuY29tPgpD
YzogSmFtZXMgQXVzbXVzIDxqYW1lcy5hdXNtdXNAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICAgNCArCiAuLi4vZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgIDkgKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgICA2ICsKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMgICAgICAgICAgICAgICB8IDI5NiArKysrKysrKysrKysrKysrKy0KIDQg
ZmlsZXMgY2hhbmdlZCwgMzAzIGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggODc2ZmMyNTk2
OGJmLi43ZWExZTc1MThhYjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCkBAIC0xNDg1NSw2ICsxNDg1NSwxMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9h
dG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJCWlm
IChkZXZfcHJpdi0+ZGlzcGxheS5vcHRpbWl6ZV93YXRlcm1hcmtzKQogCQkJZGV2X3ByaXYtPmRp
c3BsYXkub3B0aW1pemVfd2F0ZXJtYXJrcyhzdGF0ZSwKIAkJCQkJCQkgICAgICBuZXdfY3J0Y19z
dGF0ZSk7CisJCWlmIChzdGF0ZS0+Y3J0Y19zYWd2X21hc2sgJiBCSVQoY3J0Yy0+cGlwZSkpCisJ
CQlkZXZfcHJpdi0+Y3J0Y19zYWd2X21hc2sgfD0gQklUKGNydGMtPnBpcGUpOworCQllbHNlCisJ
CQlkZXZfcHJpdi0+Y3J0Y19zYWd2X21hc2sgJj0gfkJJVChjcnRjLT5waXBlKTsKIAl9CiAKIAlm
b3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNf
c3RhdGUsIG5ld19jcnRjX3N0YXRlLCBpKSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IGZhZGQ5ODUzZjk2Ni4uZmIyNzQ1
MzhhZjIzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaApAQCAtNDkwLDYgKzQ5MCwxNCBAQCBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlIHsKIAkgKi8KIAl1OCBhY3RpdmVfcGlwZV9jaGFuZ2VzOwogCisJLyoKKwkgKiBDb250YWlu
cyBhIG1hc2sgd2hpY2ggcmVmbGVjdHMgd2hldGhlciBjb3JyZXNwb25kZW50IHBpcGUKKwkgKiBj
YW4gdG9sZXJhdGUgU0FHViBvciBub3QsIHNvIHRoYXQgd2UgY2FuIG1ha2UgYSBkZWNpc2lvbgor
CSAqIGF0IGF0b21pY19jb21taXRfdGFpbCBzdGFnZSwgd2hldGhlciB3ZSBlbmFibGUgaXQgb3Ig
bm90CisJICogYmFzZWQgb24gZ2xvYmFsIHN0YXRlIGluIGRldl9wcml2LgorCSAqLworCXUzMiBj
cnRjX3NhZ3ZfbWFzazsKKwogCXU4IGFjdGl2ZV9waXBlczsKIAkvKiBtaW5pbXVtIGFjY2VwdGFi
bGUgY2RjbGsgZm9yIGVhY2ggcGlwZSAqLwogCWludCBtaW5fY2RjbGtbSTkxNV9NQVhfUElQRVNd
OwpAQCAtNjcwLDYgKzY3OCw3IEBAIHN0cnVjdCBza2xfcGxhbmVfd20gewogCXN0cnVjdCBza2xf
d21fbGV2ZWwgd21bOF07CiAJc3RydWN0IHNrbF93bV9sZXZlbCB1dl93bVs4XTsKIAlzdHJ1Y3Qg
c2tsX3dtX2xldmVsIHRyYW5zX3dtOworCXN0cnVjdCBza2xfd21fbGV2ZWwgc2Fndl93bTA7CiAJ
Ym9vbCBpc19wbGFuYXI7CiB9OwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCA3ZTBmNjdi
YWJlMjAuLjRmNGUyZTgzOTUxMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0xMTc2LDYg
KzExNzYsMTIgQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgewogCiAJdTMyIHNhZ3ZfYmxvY2tf
dGltZV91czsKIAorCS8qCisJICogQ29udGFpbnMgYSBiaXQgbWFzaywgd2hldGhlciBjb3JyZXNw
b25kZW50CisJICogcGlwZSBhbGxvd3MgU0FHViBvciBub3QuCisJICovCisJdTMyIGNydGNfc2Fn
dl9tYXNrOworCiAJc3RydWN0IHsKIAkJLyoKIAkJICogUmF3IHdhdGVybWFyayBsYXRlbmN5IHZh
bHVlczoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IDJkMzg5ZTQzN2U4Ny4uYzc5MmRkMTY4
NzQyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTM3NDAsNyArMzc0MCw3IEBAIGludGVs
X2Rpc2FibGVfc2FndihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJcmV0dXJu
IDA7CiB9CiAKLWJvb2wgaW50ZWxfY2FuX2VuYWJsZV9zYWd2KHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlKQorc3RhdGljIHZvaWQgc2tsX3NldF9zYWd2X21hc2soc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUpCiB7CiAJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IHN0YXRl
LT5iYXNlLmRldjsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGRldik7CkBAIC0zNzUwLDIxICszNzUwLDIzIEBAIGJvb2wgaW50ZWxfY2FuX2VuYWJsZV9zYWd2
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCWVudW0gcGlwZSBwaXBlOwogCWlu
dCBsZXZlbCwgbGF0ZW5jeTsKIAorCXN0YXRlLT5jcnRjX3NhZ3ZfbWFzayA9IDA7CisKIAlpZiAo
IWludGVsX2hhc19zYWd2KGRldl9wcml2KSkKLQkJcmV0dXJuIGZhbHNlOworCQlyZXR1cm47CiAK
IAkvKgogCSAqIElmIHRoZXJlIGFyZSBubyBhY3RpdmUgQ1JUQ3MsIG5vIGFkZGl0aW9uYWwgY2hl
Y2tzIG5lZWQgYmUgcGVyZm9ybWVkCiAJICovCiAJaWYgKGh3ZWlnaHQ4KHN0YXRlLT5hY3RpdmVf
cGlwZXMpID09IDApCi0JCXJldHVybiB0cnVlOworCQlyZXR1cm47CiAKIAkvKgogCSAqIFNLTCsg
d29ya2Fyb3VuZDogYnNwZWMgcmVjb21tZW5kcyB3ZSBkaXNhYmxlIFNBR1Ygd2hlbiB3ZSBoYXZl
CiAJICogbW9yZSB0aGVuIG9uZSBwaXBlIGVuYWJsZWQKIAkgKi8KIAlpZiAoaHdlaWdodDgoc3Rh
dGUtPmFjdGl2ZV9waXBlcykgPiAxKQotCQlyZXR1cm4gZmFsc2U7CisJCXJldHVybjsKIAogCS8q
IFNpbmNlIHdlJ3JlIG5vdyBndWFyYW50ZWVkIHRvIG9ubHkgaGF2ZSBvbmUgYWN0aXZlIENSVEMu
Li4gKi8KIAlwaXBlID0gZmZzKHN0YXRlLT5hY3RpdmVfcGlwZXMpIC0gMTsKQEAgLTM3NzIsNyAr
Mzc3NCw3IEBAIGJvb2wgaW50ZWxfY2FuX2VuYWJsZV9zYWd2KHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlKQogCWNydGNfc3RhdGUgPSB0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPmJh
c2Uuc3RhdGUpOwogCiAJaWYgKGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUuZmxhZ3MgJiBE
Uk1fTU9ERV9GTEFHX0lOVEVSTEFDRSkKLQkJcmV0dXJuIGZhbHNlOworCQlyZXR1cm47CiAKIAlm
b3JfZWFjaF9pbnRlbF9wbGFuZV9vbl9jcnRjKGRldiwgY3J0YywgcGxhbmUpIHsKIAkJc3RydWN0
IHNrbF9wbGFuZV93bSAqd20gPQpAQCAtMzgwMCw5ICszODAyLDEyNyBAQCBib29sIGludGVsX2Nh
bl9lbmFibGVfc2FndihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAkJICogY2Fu
J3QgZW5hYmxlIFNBR1YuCiAJCSAqLwogCQlpZiAobGF0ZW5jeSA8IGRldl9wcml2LT5zYWd2X2Js
b2NrX3RpbWVfdXMpCi0JCQlyZXR1cm4gZmFsc2U7CisJCQlyZXR1cm47CiAJfQogCisJc3RhdGUt
PmNydGNfc2Fndl9tYXNrIHw9IEJJVChjcnRjLT5waXBlKTsKK30KKworc3RhdGljIHZvaWQgdGds
X3NldF9zYWd2X21hc2soc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOworCitzdGF0
aWMgdm9pZCBpY2xfc2V0X3NhZ3ZfbWFzayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSkKK3sKKwlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gc3RhdGUtPmJhc2UuZGV2OworCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKKwlzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YzsKKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGU7
CisJaW50IGxldmVsLCBsYXRlbmN5OworCWludCBpOworCWludCBwbGFuZV9pZDsKKworCXN0YXRl
LT5jcnRjX3NhZ3ZfbWFzayA9IDA7CisKKwlpZiAoIWludGVsX2hhc19zYWd2KGRldl9wcml2KSkK
KwkJcmV0dXJuOworCisJLyoKKwkgKiBJZiB0aGVyZSBhcmUgbm8gYWN0aXZlIENSVENzLCBubyBh
ZGRpdGlvbmFsIGNoZWNrcyBuZWVkIGJlIHBlcmZvcm1lZAorCSAqLworCWlmIChod2VpZ2h0OChz
dGF0ZS0+YWN0aXZlX3BpcGVzKSA9PSAwKQorCQlyZXR1cm47CisKKwlmb3JfZWFjaF9uZXdfaW50
ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywKKwkJCQkJICAgICBuZXdfY3J0Y19zdGF0ZSwg
aSkgeworCQl1bnNpZ25lZCBpbnQgZmxhZ3MgPSBjcnRjLT5iYXNlLnN0YXRlLT5hZGp1c3RlZF9t
b2RlLmZsYWdzOworCQlib29sIGNhbl9zYWd2OworCisJCWlmIChmbGFncyAmIERSTV9NT0RFX0ZM
QUdfSU5URVJMQUNFKQorCQkJY29udGludWU7CisKKwkJaWYgKCFuZXdfY3J0Y19zdGF0ZS0+YmFz
ZS5hY3RpdmUpCisJCQljb250aW51ZTsKKworCQljYW5fc2FndiA9IHRydWU7CisJCWZvcl9lYWNo
X3BsYW5lX2lkX29uX2NydGMoY3J0YywgcGxhbmVfaWQpIHsKKwkJCXN0cnVjdCBza2xfcGxhbmVf
d20gKndtID0KKwkJCQkmbmV3X2NydGNfc3RhdGUtPndtLnNrbC5vcHRpbWFsLnBsYW5lc1twbGFu
ZV9pZF07CisKKwkJCS8qIFNraXAgdGhpcyBwbGFuZSBpZiBpdCdzIG5vdCBlbmFibGVkICovCisJ
CQlpZiAoIXdtLT53bVswXS5wbGFuZV9lbikKKwkJCQljb250aW51ZTsKKworCQkJLyogRmluZCB0
aGUgaGlnaGVzdCBlbmFibGVkIHdtIGxldmVsIGZvciB0aGlzIHBsYW5lICovCisJCQlmb3IgKGxl
dmVsID0gaWxrX3dtX21heF9sZXZlbChkZXZfcHJpdik7CisJCQkgICAgICF3bS0+d21bbGV2ZWxd
LnBsYW5lX2VuOyAtLWxldmVsKSB7CisJCQl9CisKKwkJCWxhdGVuY3kgPSBkZXZfcHJpdi0+d20u
c2tsX2xhdGVuY3lbbGV2ZWxdOworCisJCQkvKgorCQkJICogSWYgYW55IG9mIHRoZSBwbGFuZXMg
b24gdGhpcyBwaXBlIGRvbid0IGVuYWJsZQorCQkJICogd20gbGV2ZWxzIHRoYXQgaW5jdXIgbWVt
b3J5IGxhdGVuY2llcyBoaWdoZXIgdGhhbgorCQkJICogc2Fndl9ibG9ja190aW1lX3VzIHdlIGNh
bid0IGVuYWJsZSBTQUdWLgorCQkJICovCisJCQlpZiAobGF0ZW5jeSA8IGRldl9wcml2LT5zYWd2
X2Jsb2NrX3RpbWVfdXMpIHsKKwkJCQljYW5fc2FndiA9IGZhbHNlOworCQkJCWJyZWFrOworCQkJ
fQorCQl9CisJCWlmIChjYW5fc2FndikKKwkJCXN0YXRlLT5jcnRjX3NhZ3ZfbWFzayB8PSBCSVQo
Y3J0Yy0+cGlwZSk7CisJfQorfQorCitib29sIGludGVsX2Nhbl9lbmFibGVfc2FndihzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKK3sKKwlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0g
c3RhdGUtPmJhc2UuZGV2OworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoZGV2KTsKKwllbnVtIHBpcGUgcGlwZTsKKworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDEyKQorCQl0Z2xfc2V0X3NhZ3ZfbWFzayhzdGF0ZSk7CisJZWxzZSBpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA9PSAxMSkKKwkJaWNsX3NldF9zYWd2X21hc2soc3RhdGUpOworCWVsc2UKKwkJ
c2tsX3NldF9zYWd2X21hc2soc3RhdGUpOworCisJLyoKKwkgKiBGb3IgU0FHViB3ZSBuZWVkIHRv
IGFjY291bnQgYWxsIHRoZSBwaXBlcywKKwkgKiBub3Qgb25seSB0aGUgb25lcyB3aGljaCBhcmUg
aW4gc3RhdGUgY3VycmVudGx5LgorCSAqLworCWZvcl9lYWNoX3BpcGUoZGV2X3ByaXYsIHBpcGUp
IHsKKwkJdW5zaWduZWQgaW50IGFjdGl2ZV9waXBlczsKKwkJLyoKKwkJICogRmlndXJlIG91dCBp
ZiB3ZSBhcmUgY2hhbmdpbmcgYWN0aXZlIHBpcGVzIGhlcmUKKwkJICogdGhlbiBhZnRlciBjb21t
aXQgZGV2X3ByaXYtPmFjdGl2ZV9waXBlcyB3aWxsCisJCSAqIGFueXdheSBiZSBhc3NpZ25lZCB0
byBzdGF0ZS0+YWN0aXZlX3BpcGVzLgorCQkgKi8KKwkJaWYgKHN0YXRlLT5hY3RpdmVfcGlwZV9j
aGFuZ2VzKQorCQkJYWN0aXZlX3BpcGVzID0gc3RhdGUtPmFjdGl2ZV9waXBlczsKKwkJZWxzZQor
CQkJYWN0aXZlX3BpcGVzID0gZGV2X3ByaXYtPmFjdGl2ZV9waXBlczsKKworCQkvKiBTa2lwIGlm
IHBpcGUgaXMgaW5hY3RpdmUgKi8KKwkJaWYgKCEoQklUKHBpcGUpICYgYWN0aXZlX3BpcGVzKSkK
KwkJCWNvbnRpbnVlOworCisJCS8qCisJCSAqIFBpcGUgY2FuIGJlIGFjdGl2ZSBpbiB0aGlzIHN0
YXRlIG9yIGluIGRldl9wcml2CisJCSAqIGFzIHdlIGhhdmVuJ3QgY29tbWl0dGVkIHRoaXNlIGNo
YW5nZXMgeWV0KGFuZCB3ZSBzaG91bGRuJ3QpCisJCSAqIC0gd2UgbmVlZCB0byBjaGVjayBib3Ro
LgorCQkgKi8KKwkJaWYgKHN0YXRlLT5hY3RpdmVfcGlwZV9jaGFuZ2VzICYgQklUKHBpcGUpKSB7
CisJCQlib29sIHN0YXRlX3NhZ3ZfbWFza2VkID0gXAorCQkJCShCSVQocGlwZSkgJiBzdGF0ZS0+
Y3J0Y19zYWd2X21hc2spID09IDA7CisJCQlpZiAoc3RhdGVfc2Fndl9tYXNrZWQpCisJCQkJcmV0
dXJuIGZhbHNlOworCQl9IGVsc2UgeworCQkJYm9vbCBzYWd2X21hc2tlZCA9IFwKKwkJCQkoQklU
KHBpcGUpICYgZGV2X3ByaXYtPmNydGNfc2Fndl9tYXNrKSA9PSAwOworCQkJaWYgKHNhZ3ZfbWFz
a2VkKQorCQkJCXJldHVybiBmYWxzZTsKKwkJfQorCX0KIAlyZXR1cm4gdHJ1ZTsKIH0KIApAQCAt
MzkyNSw2ICs0MDQ1LDcgQEAgc3RhdGljIGludCBza2xfY29tcHV0ZV93bV9wYXJhbXMoY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQkJIGludCBjb2xvcl9wbGFu
ZSk7CiBzdGF0aWMgdm9pZCBza2xfY29tcHV0ZV9wbGFuZV93bShjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJCQkgaW50IGxldmVsLAorCQkJCSB1MzIgbGF0ZW5j
eSwKIAkJCQkgY29uc3Qgc3RydWN0IHNrbF93bV9wYXJhbXMgKndwLAogCQkJCSBjb25zdCBzdHJ1
Y3Qgc2tsX3dtX2xldmVsICpyZXN1bHRfcHJldiwKIAkJCQkgc3RydWN0IHNrbF93bV9sZXZlbCAq
cmVzdWx0IC8qIG91dCAqLyk7CkBAIC0zOTQ3LDcgKzQwNjgsMTAgQEAgc2tsX2N1cnNvcl9hbGxv
Y2F0aW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCVdBUk5f
T04ocmV0KTsKIAogCWZvciAobGV2ZWwgPSAwOyBsZXZlbCA8PSBtYXhfbGV2ZWw7IGxldmVsKysp
IHsKLQkJc2tsX2NvbXB1dGVfcGxhbmVfd20oY3J0Y19zdGF0ZSwgbGV2ZWwsICZ3cCwgJndtLCAm
d20pOworCQl1MzIgbGF0ZW5jeSA9IGRldl9wcml2LT53bS5za2xfbGF0ZW5jeVtsZXZlbF07CisK
KwkJc2tsX2NvbXB1dGVfcGxhbmVfd20oY3J0Y19zdGF0ZSwgbGV2ZWwsIGxhdGVuY3ksICZ3cCwg
JndtLCAmd20pOworCiAJCWlmICh3bS5taW5fZGRiX2FsbG9jID09IFUxNl9NQVgpCiAJCQlicmVh
azsKIApAQCAtNDIxMiw2ICs0MzM2LDY4IEBAIGljbF9nZXRfdG90YWxfcmVsYXRpdmVfZGF0YV9y
YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCXJldHVybiB0b3RhbF9k
YXRhX3JhdGU7CiB9CiAKK3N0YXRpYyBpbnQKK3RnbF9jaGVja19waXBlX2ZpdHNfc2Fndl93bShz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJICAgICAgc3RydWN0IHNrbF9k
ZGJfYWxsb2NhdGlvbiAqZGRiIC8qIG91dCAqLykKK3sKKwlzdHJ1Y3QgZHJtX2NydGMgKmNydGMg
PSBjcnRjX3N0YXRlLT5iYXNlLmNydGM7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gdG9faTkxNShjcnRjLT5kZXYpOworCXN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9jcnRj
ID0gdG9faW50ZWxfY3J0YyhjcnRjKTsKKwlzdHJ1Y3Qgc2tsX2RkYl9lbnRyeSAqYWxsb2MgPSAm
Y3J0Y19zdGF0ZS0+d20uc2tsLmRkYjsKKwl1MTYgYWxsb2Nfc2l6ZTsKKwl1MTYgdG90YWxbSTkx
NV9NQVhfUExBTkVTXSA9IHt9OworCXU2NCB0b3RhbF9kYXRhX3JhdGU7CisJZW51bSBwbGFuZV9p
ZCBwbGFuZV9pZDsKKwlpbnQgbnVtX2FjdGl2ZTsKKwl1NjQgcGxhbmVfZGF0YV9yYXRlW0k5MTVf
TUFYX1BMQU5FU10gPSB7fTsKKwl1MzIgYmxvY2tzOworCisJLyoKKwkgKiBObyBuZWVkIHRvIGNo
ZWNrIGdlbiBoZXJlLCB3ZSBjYWxsIHRoaXMgb25seSBmb3IgZ2VuMTIKKwkgKi8KKwl0b3RhbF9k
YXRhX3JhdGUgPQorCQlpY2xfZ2V0X3RvdGFsX3JlbGF0aXZlX2RhdGFfcmF0ZShjcnRjX3N0YXRl
LAorCQkJCQkJIHBsYW5lX2RhdGFfcmF0ZSk7CisKKwlza2xfZGRiX2dldF9waXBlX2FsbG9jYXRp
b25fbGltaXRzKGRldl9wcml2LCBjcnRjX3N0YXRlLAorCQkJCQkgICB0b3RhbF9kYXRhX3JhdGUs
CisJCQkJCSAgIGRkYiwgYWxsb2MsICZudW1fYWN0aXZlKTsKKwlhbGxvY19zaXplID0gc2tsX2Rk
Yl9lbnRyeV9zaXplKGFsbG9jKTsKKwlpZiAoYWxsb2Nfc2l6ZSA9PSAwKQorCQlyZXR1cm4gLUVO
T1NQQzsKKworCS8qIEFsbG9jYXRlIGZpeGVkIG51bWJlciBvZiBibG9ja3MgZm9yIGN1cnNvci4g
Ki8KKwl0b3RhbFtQTEFORV9DVVJTT1JdID0gc2tsX2N1cnNvcl9hbGxvY2F0aW9uKGNydGNfc3Rh
dGUsIG51bV9hY3RpdmUpOworCWFsbG9jX3NpemUgLT0gdG90YWxbUExBTkVfQ1VSU09SXTsKKwlj
cnRjX3N0YXRlLT53bS5za2wucGxhbmVfZGRiX3lbUExBTkVfQ1VSU09SXS5zdGFydCA9CisJCWFs
bG9jLT5lbmQgLSB0b3RhbFtQTEFORV9DVVJTT1JdOworCWNydGNfc3RhdGUtPndtLnNrbC5wbGFu
ZV9kZGJfeVtQTEFORV9DVVJTT1JdLmVuZCA9IGFsbG9jLT5lbmQ7CisKKwkvKgorCSAqIERvIGNo
ZWNrIGlmIHdlIGNhbiBmaXQgTDAgKyBzYWd2X2Jsb2NrX3RpbWUgYW5kCisJICogZGlzYWJsZSBT
QUdWIGlmIHdlIGNhbid0LgorCSAqLworCWJsb2NrcyA9IDA7CisJZm9yX2VhY2hfcGxhbmVfaWRf
b25fY3J0YyhpbnRlbF9jcnRjLCBwbGFuZV9pZCkgeworCQljb25zdCBzdHJ1Y3Qgc2tsX3BsYW5l
X3dtICp3bSA9CisJCQkmY3J0Y19zdGF0ZS0+d20uc2tsLm9wdGltYWwucGxhbmVzW3BsYW5lX2lk
XTsKKworCQlpZiAocGxhbmVfaWQgPT0gUExBTkVfQ1VSU09SKSB7CisJCQlpZiAoV0FSTl9PTih3
bS0+c2Fndl93bTAubWluX2RkYl9hbGxvYyA+CisJCQkJICAgIHRvdGFsW1BMQU5FX0NVUlNPUl0p
KSB7CisJCQkJYmxvY2tzID0gVTMyX01BWDsKKwkJCQlicmVhazsKKwkJCX0KKwkJCWNvbnRpbnVl
OworCQl9CisKKwkJYmxvY2tzICs9IHdtLT5zYWd2X3dtMC5taW5fZGRiX2FsbG9jOworCQlpZiAo
YmxvY2tzID4gYWxsb2Nfc2l6ZSkKKwkJCXJldHVybiAtRU5PU1BDOworCX0KKwlyZXR1cm4gMDsK
K30KKwogc3RhdGljIGludAogc2tsX2FsbG9jYXRlX3BpcGVfZGRiKHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlLAogCQkgICAgICBzdHJ1Y3Qgc2tsX2RkYl9hbGxvY2F0aW9uICpk
ZGIgLyogb3V0ICovKQpAQCAtNDY0MSw2ICs0ODI3LDcgQEAgc3RhdGljIGJvb2wgc2tsX3dtX2hh
c19saW5lcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGludCBsZXZlbCkKIAog
c3RhdGljIHZvaWQgc2tsX2NvbXB1dGVfcGxhbmVfd20oY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUsCiAJCQkJIGludCBsZXZlbCwKKwkJCQkgdTMyIGxhdGVuY3ksCiAJ
CQkJIGNvbnN0IHN0cnVjdCBza2xfd21fcGFyYW1zICp3cCwKIAkJCQkgY29uc3Qgc3RydWN0IHNr
bF93bV9sZXZlbCAqcmVzdWx0X3ByZXYsCiAJCQkJIHN0cnVjdCBza2xfd21fbGV2ZWwgKnJlc3Vs
dCAvKiBvdXQgKi8pCkBAIC00NzY3LDIwICs0OTU0LDQ1IEBAIHN0YXRpYyB2b2lkIHNrbF9jb21w
dXRlX3BsYW5lX3dtKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAog
c3RhdGljIHZvaWQKIHNrbF9jb21wdXRlX3dtX2xldmVscyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJICAgICAgY29uc3Qgc3RydWN0IHNrbF93bV9wYXJhbXMg
KndtX3BhcmFtcywKLQkJICAgICAgc3RydWN0IHNrbF93bV9sZXZlbCAqbGV2ZWxzKQorCQkgICAg
ICBzdHJ1Y3Qgc2tsX3BsYW5lX3dtICpwbGFuZV93bSwKKwkJICAgICAgYm9vbCB5dXYpCiB7CiAJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjX3N0YXRlLT51
YXBpLmNydGMtPmRldik7CiAJaW50IGxldmVsLCBtYXhfbGV2ZWwgPSBpbGtfd21fbWF4X2xldmVs
KGRldl9wcml2KTsKKwkvKgorCSAqIENoZWNrIHdoaWNoIGtpbmQgb2YgcGxhbmUgaXMgaXQgYW5k
IGJhc2VkIG9uIHRoYXQgY2FsY3VsYXRlCisJICogY29ycmVzcG9uZGVudCBXTSBsZXZlbHMuCisJ
ICovCisJc3RydWN0IHNrbF93bV9sZXZlbCAqbGV2ZWxzID0geXV2ID8gcGxhbmVfd20tPnV2X3dt
IDogcGxhbmVfd20tPndtOwogCXN0cnVjdCBza2xfd21fbGV2ZWwgKnJlc3VsdF9wcmV2ID0gJmxl
dmVsc1swXTsKIAogCWZvciAobGV2ZWwgPSAwOyBsZXZlbCA8PSBtYXhfbGV2ZWw7IGxldmVsKysp
IHsKIAkJc3RydWN0IHNrbF93bV9sZXZlbCAqcmVzdWx0ID0gJmxldmVsc1tsZXZlbF07CisJCXUz
MiBsYXRlbmN5ID0gZGV2X3ByaXYtPndtLnNrbF9sYXRlbmN5W2xldmVsXTsKIAotCQlza2xfY29t
cHV0ZV9wbGFuZV93bShjcnRjX3N0YXRlLCBsZXZlbCwgd21fcGFyYW1zLAotCQkJCSAgICAgcmVz
dWx0X3ByZXYsIHJlc3VsdCk7CisJCXNrbF9jb21wdXRlX3BsYW5lX3dtKGNydGNfc3RhdGUsIGxl
dmVsLCBsYXRlbmN5LAorCQkJCSAgICAgd21fcGFyYW1zLCByZXN1bHRfcHJldiwgcmVzdWx0KTsK
IAogCQlyZXN1bHRfcHJldiA9IHJlc3VsdDsKIAl9CisJLyoKKwkgKiBGb3IgR2VuMTIgaWYgaXQg
aXMgYW4gTDAgd2UgbmVlZCB0byBhbHNvCisJICogY29uc2lkZXIgc2Fndl9ibG9ja190aW1lIHdo
ZW4gY2FsY3VsYXRpbmcKKwkgKiBMMCB3YXRlcm1hcmsgLSB3ZSB3aWxsIG5lZWQgdGhhdCB3aGVu
IG1ha2luZworCSAqIGEgZGVjaXNpb24gd2hldGhlciBlbmFibGUgU0FHViBvciBub3QuCisJICog
Rm9yIG9sZGVyIGdlbnMgd2UgYWdyZWVkIHRvIGNvcHkgTDAgdmFsdWUgZm9yCisJICogY29tcGF0
aWJpbGl0eS4KKwkgKi8KKwlpZiAoKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpKSB7CisJCXUz
MiBsYXRlbmN5ID0gZGV2X3ByaXYtPndtLnNrbF9sYXRlbmN5WzBdOworCisJCWxhdGVuY3kgKz0g
ZGV2X3ByaXYtPnNhZ3ZfYmxvY2tfdGltZV91czsKKwkJc2tsX2NvbXB1dGVfcGxhbmVfd20oY3J0
Y19zdGF0ZSwgMCwgbGF0ZW5jeSwKKwkJICAgICB3bV9wYXJhbXMsICZsZXZlbHNbMF0sCisJCSAg
ICAmcGxhbmVfd20tPnNhZ3Zfd20wKTsKKwl9IGVsc2UKKwkJbWVtY3B5KCZwbGFuZV93bS0+c2Fn
dl93bTAsICZsZXZlbHNbMF0sCisJCQlzaXplb2Yoc3RydWN0IHNrbF93bV9sZXZlbCkpOwogfQog
CiBzdGF0aWMgdTMyCkBAIC00ODczLDcgKzUwODUsNyBAQCBzdGF0aWMgaW50IHNrbF9idWlsZF9w
bGFuZV93bV9zaW5nbGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJaWYg
KHJldCkKIAkJcmV0dXJuIHJldDsKIAotCXNrbF9jb21wdXRlX3dtX2xldmVscyhjcnRjX3N0YXRl
LCAmd21fcGFyYW1zLCB3bS0+d20pOworCXNrbF9jb21wdXRlX3dtX2xldmVscyhjcnRjX3N0YXRl
LCAmd21fcGFyYW1zLCB3bSwgZmFsc2UpOwogCXNrbF9jb21wdXRlX3RyYW5zaXRpb25fd20oY3J0
Y19zdGF0ZSwgJndtX3BhcmFtcywgd20pOwogCiAJcmV0dXJuIDA7CkBAIC00ODk1LDcgKzUxMDcs
NyBAQCBzdGF0aWMgaW50IHNrbF9idWlsZF9wbGFuZV93bV91dihzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSwKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCi0Jc2tsX2NvbXB1
dGVfd21fbGV2ZWxzKGNydGNfc3RhdGUsICZ3bV9wYXJhbXMsIHdtLT51dl93bSk7CisJc2tsX2Nv
bXB1dGVfd21fbGV2ZWxzKGNydGNfc3RhdGUsICZ3bV9wYXJhbXMsIHdtLCB0cnVlKTsKIAogCXJl
dHVybiAwOwogfQpAQCAtNTE2Nyw2ICs1Mzc5LDggQEAgc2tsX2RkYl9hZGRfYWZmZWN0ZWRfcGxh
bmVzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKIAlyZXR1
cm4gMDsKIH0KIAorc3RhdGljIHZvaWQgdGdsX3NldF9zYWd2X3dtMChzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSk7CisKIHN0YXRpYyBpbnQKIHNrbF9jb21wdXRlX2RkYihzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIHsKQEAgLTUxNzcsNiArNTM5MSwxMSBAQCBza2xf
Y29tcHV0ZV9kZGIoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJc3RydWN0IGlu
dGVsX2NydGMgKmNydGM7CiAJaW50IHJldCwgaTsKIAorCS8qIEZvciBHZW4xMisgZm9yIFNBR1Yg
d2UgaGF2ZSBhIHNwZWNpYWwgTDAgd20gdmFsdWVzICovCisJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTIpCisJCWlmIChpbnRlbF9jYW5fZW5hYmxlX3NhZ3Yoc3RhdGUpKQorCQkJdGdsX3Nl
dF9zYWd2X3dtMChzdGF0ZSk7CisKIAltZW1jcHkoZGRiLCAmZGV2X3ByaXYtPndtLnNrbF9ody5k
ZGIsIHNpemVvZigqZGRiKSk7CiAKIAlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0
ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsCkBAIC01NDQzLDYgKzU2NjIsNTYgQEAgc3Rh
dGljIGludCBza2xfd21fYWRkX2FmZmVjdGVkX3BsYW5lcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSwKIAlyZXR1cm4gMDsKIH0KIAordm9pZCB0Z2xfc2V0X3NhZ3Zfd20wKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQoreworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
OworCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZTsKKwlzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGU7CisJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9
IHN0YXRlLT5iYXNlLmRldjsKKwljb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSB0b19pOTE1KGRldik7CisJaW50IGk7CisKKwkvKgorCSAqIElmIHdlIGRldGVybWluZWQg
dGhhdCB3ZSBjYW4gYWN0dWFsbHkgZW5hYmxlIFNBR1YsIHRoZW4KKwkgKiBhY3R1YWxseSB1c2Ug
dGhvc2UgbGV2ZWxzIHRnbF9jaGVja19waXBlX2ZpdHNfc2Fndl93bQorCSAqIGhhcyBhbHJlYWR5
IHRha2VuIGNhcmUgb2YgY2hlY2tpbmcgaWYgTDAgKyBzYWd2IGJsb2NrIHRpbWUKKwkgKiBmaXRz
IGludG8gZGRiLgorCSAqLworCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0
YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwKKwkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsK
KwkJc3RydWN0IGludGVsX3BsYW5lICpwbGFuZTsKKworCQlmb3JfZWFjaF9pbnRlbF9wbGFuZV9v
bl9jcnRjKCZkZXZfcHJpdi0+ZHJtLCBjcnRjLCBwbGFuZSkgeworCQkJZW51bSBwbGFuZV9pZCBw
bGFuZV9pZCA9IHBsYW5lLT5pZDsKKworCQkJc3RydWN0IHNrbF9wbGFuZV93bSAqcGxhbmVfd20g
PSBcCisJCQkgICAgJm5ld19jcnRjX3N0YXRlLT53bS5za2wub3B0aW1hbC5wbGFuZXNbcGxhbmVf
aWRdOworCQkJc3RydWN0IHNrbF93bV9sZXZlbCAqc2Fndl93bTAgPSAmcGxhbmVfd20tPnNhZ3Zf
d20wOworCQkJc3RydWN0IHNrbF93bV9sZXZlbCAqbDBfd20wID0gJnBsYW5lX3dtLT53bVswXTsK
KworCQkJbWVtY3B5KGwwX3dtMCwgc2Fndl93bTAsIHNpemVvZihzdHJ1Y3Qgc2tsX3dtX2xldmVs
KSk7CisJCX0KKwl9Cit9CisKK3N0YXRpYyB2b2lkIHRnbF9zZXRfc2Fndl9tYXNrKHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQoreworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwor
CXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZTsKKwlzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGU7CisJc3RydWN0IHNrbF9kZGJfYWxsb2NhdGlvbiAq
ZGRiID0gJnN0YXRlLT53bV9yZXN1bHRzLmRkYjsKKwlpbnQgcmV0LCBpOworCisJZm9yX2VhY2hf
b2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLAor
CQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsKKwkJcmV0ID0gdGdsX2NoZWNrX3BpcGVfZml0
c19zYWd2X3dtKG5ld19jcnRjX3N0YXRlLCBkZGIpOworCQlpZiAoIXJldCkgeworCQkJaW50IHBp
cGVfYml0ID0gQklUKGNydGMtPnBpcGUpOworCQkJc3RhdGUtPmNydGNfc2Fndl9tYXNrIHw9IHBp
cGVfYml0OworCQl9CisJfQorfQorCiBzdGF0aWMgaW50CiBza2xfY29tcHV0ZV93bShzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIHsKQEAgLTU0NTUsNiArNTcyNCw5IEBAIHNrbF9j
b21wdXRlX3dtKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCS8qIENsZWFyIGFs
bCBkaXJ0eSBmbGFncyAqLwogCXJlc3VsdHMtPmRpcnR5X3BpcGVzID0gMDsKIAorCS8qIElmIHdl
IGV4aXQgYmVmb3JlIGNoZWNrIGlzIGRvbmUgKi8KKwlzdGF0ZS0+Y3J0Y19zYWd2X21hc2sgPSAw
OworCiAJcmV0ID0gc2tsX2RkYl9hZGRfYWZmZWN0ZWRfcGlwZXMoc3RhdGUpOwogCWlmIChyZXQp
CiAJCXJldHVybiByZXQ7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
