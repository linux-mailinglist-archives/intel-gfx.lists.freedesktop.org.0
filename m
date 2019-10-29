Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC30FE8C71
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 17:10:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 667446EC40;
	Tue, 29 Oct 2019 16:10:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E6F96EC40
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 16:10:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 09:10:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="225022228"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga004.fm.intel.com with ESMTP; 29 Oct 2019 09:10:38 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 18:08:16 +0200
Message-Id: <20191029160817.5571-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029160817.5571-1-stanislav.lisovskiy@intel.com>
References: <20191029160817.5571-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 1/2] drm/i915: Refactor intel_can_enable_sagv
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
aW4gY3JjCiAgICAgIHVzYWdlIGNoZWNrLgoKU2lnbmVkLW9mZi1ieTogU3RhbmlzbGF2IExpc292
c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAaW50ZWwuY29tPgpDYzogSmFtZXMgQXVzbXVzIDxqYW1lcy5hdXNtdXNA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jICB8ICAgNiArCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgg
ICAgfCAgIDkgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAg
IHwgICA2ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgICAgICAgICAgICAgICB8
IDI5OSArKysrKysrKysrKysrKysrKy0KIDQgZmlsZXMgY2hhbmdlZCwgMzA2IGluc2VydGlvbnMo
KyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKaW5kZXggMjM2ZmRmMTIyZTQ3Li4wYjI5ZDc1OGQzMjUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNDU4MSw2ICsxNDU4
MSwxMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJCWlmIChkZXZfcHJpdi0+ZGlzcGxheS5vcHRpbWl6ZV93
YXRlcm1hcmtzKQogCQkJZGV2X3ByaXYtPmRpc3BsYXkub3B0aW1pemVfd2F0ZXJtYXJrcyhzdGF0
ZSwKIAkJCQkJCQkgICAgICBuZXdfY3J0Y19zdGF0ZSk7CisJCWlmIChzdGF0ZS0+Y3J0Y19zYWd2
X21hc2sgJiBCSVQoY3J0Yy0+cGlwZSkpCisJCQlkZXZfcHJpdi0+Y3J0Y19zYWd2X21hc2sgfD0g
QklUKGNydGMtPnBpcGUpOworCQllbHNlCisJCQlkZXZfcHJpdi0+Y3J0Y19zYWd2X21hc2sgJj0g
fkJJVChjcnRjLT5waXBlKTsKIAl9CiAKIAlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9z
dGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlLCBpKSB7CkBA
IC0xNDYwMCw2ICsxNDYwNCw4IEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19jb21taXRfdGFp
bChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAogCWRybV9hdG9taWNfaGVscGVy
X2NvbW1pdF9od19kb25lKCZzdGF0ZS0+YmFzZSk7CiAKKworCiAJaWYgKHN0YXRlLT5tb2Rlc2V0
KSB7CiAJCS8qIEFzIG9uZSBvZiB0aGUgcHJpbWFyeSBtbWlvIGFjY2Vzc29ycywgS01TIGhhcyBh
IGhpZ2gKIAkJICogbGlrZWxpaG9vZCBvZiB0cmlnZ2VyaW5nIGJ1Z3MgaW4gdW5jbGFpbWVkIGFj
Y2Vzcy4gQWZ0ZXIgd2UKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmgKaW5kZXggODM1ODE1MmU0MDNlLi5mODdmOThiN2VmMGQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
CkBAIC00OTAsNiArNDkwLDE0IEBAIHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgewogCSAqLwog
CXU4IGFjdGl2ZV9waXBlX2NoYW5nZXM7CiAKKwkvKgorCSAqIENvbnRhaW5zIGEgbWFzayB3aGlj
aCByZWZsZWN0cyB3aGV0aGVyIGNvcnJlc3BvbmRlbnQgcGlwZQorCSAqIGNhbiB0b2xlcmF0ZSBT
QUdWIG9yIG5vdCwgc28gdGhhdCB3ZSBjYW4gbWFrZSBhIGRlY2lzaW9uCisJICogYXQgYXRvbWlj
X2NvbW1pdF90YWlsIHN0YWdlLCB3aGV0aGVyIHdlIGVuYWJsZSBpdCBvciBub3QKKwkgKiBiYXNl
ZCBvbiBnbG9iYWwgc3RhdGUgaW4gZGV2X3ByaXYuCisJICovCisJdTMyIGNydGNfc2Fndl9tYXNr
OworCiAJdTggYWN0aXZlX3BpcGVzOwogCS8qIG1pbmltdW0gYWNjZXB0YWJsZSBjZGNsayBmb3Ig
ZWFjaCBwaXBlICovCiAJaW50IG1pbl9jZGNsa1tJOTE1X01BWF9QSVBFU107CkBAIC02NDIsNiAr
NjUwLDcgQEAgc3RydWN0IHNrbF9wbGFuZV93bSB7CiAJc3RydWN0IHNrbF93bV9sZXZlbCB3bVs4
XTsKIAlzdHJ1Y3Qgc2tsX3dtX2xldmVsIHV2X3dtWzhdOwogCXN0cnVjdCBza2xfd21fbGV2ZWwg
dHJhbnNfd207CisJc3RydWN0IHNrbF93bV9sZXZlbCBzYWd2X3dtMDsKIAlib29sIGlzX3BsYW5h
cjsKIH07CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDg4ODJjMDkwOGMzYi4uYWE4YmFi
ZTZiNzdkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTEyNjEsNiArMTI2MSwxMiBAQCBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7CiAKIAl1MzIgc2Fndl9ibG9ja190aW1lX3VzOwogCisJ
LyoKKwkgKiBDb250YWlucyBhIGJpdCBtYXNrLCB3aGV0aGVyIGNvcnJlc3BvbmRlbnQKKwkgKiBw
aXBlIGFsbG93cyBTQUdWIG9yIG5vdC4KKwkgKi8KKwl1MzIgY3J0Y19zYWd2X21hc2s7CisKIAlz
dHJ1Y3QgewogCQkvKgogCQkgKiBSYXcgd2F0ZXJtYXJrIGxhdGVuY3kgdmFsdWVzOgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMKaW5kZXggMzYyMjM0NDQ5MDg3Li5lNTM1YTEwZmMwOTMgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYwpAQCAtMzc1MSw3ICszNzUxLDcgQEAgaW50ZWxfZGlzYWJsZV9zYWd2
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlyZXR1cm4gMDsKIH0KIAotYm9v
bCBpbnRlbF9jYW5fZW5hYmxlX3NhZ3Yoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUp
CitzdGF0aWMgdm9pZCBza2xfc2V0X3NhZ3ZfbWFzayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSkKIHsKIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gc3RhdGUtPmJhc2UuZGV2Owog
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKQEAgLTM3
NjEsMjEgKzM3NjEsMjMgQEAgYm9vbCBpbnRlbF9jYW5fZW5hYmxlX3NhZ3Yoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJZW51bSBwaXBlIHBpcGU7CiAJaW50IGxldmVsLCBsYXRl
bmN5OwogCisJc3RhdGUtPmNydGNfc2Fndl9tYXNrID0gMDsKKwogCWlmICghaW50ZWxfaGFzX3Nh
Z3YoZGV2X3ByaXYpKQotCQlyZXR1cm4gZmFsc2U7CisJCXJldHVybjsKIAogCS8qCiAJICogSWYg
dGhlcmUgYXJlIG5vIGFjdGl2ZSBDUlRDcywgbm8gYWRkaXRpb25hbCBjaGVja3MgbmVlZCBiZSBw
ZXJmb3JtZWQKIAkgKi8KIAlpZiAoaHdlaWdodDgoc3RhdGUtPmFjdGl2ZV9waXBlcykgPT0gMCkK
LQkJcmV0dXJuIHRydWU7CisJCXJldHVybjsKIAogCS8qCiAJICogU0tMKyB3b3JrYXJvdW5kOiBi
c3BlYyByZWNvbW1lbmRzIHdlIGRpc2FibGUgU0FHViB3aGVuIHdlIGhhdmUKIAkgKiBtb3JlIHRo
ZW4gb25lIHBpcGUgZW5hYmxlZAogCSAqLwogCWlmIChod2VpZ2h0OChzdGF0ZS0+YWN0aXZlX3Bp
cGVzKSA+IDEpCi0JCXJldHVybiBmYWxzZTsKKwkJcmV0dXJuOwogCiAJLyogU2luY2Ugd2UncmUg
bm93IGd1YXJhbnRlZWQgdG8gb25seSBoYXZlIG9uZSBhY3RpdmUgQ1JUQy4uLiAqLwogCXBpcGUg
PSBmZnMoc3RhdGUtPmFjdGl2ZV9waXBlcykgLSAxOwpAQCAtMzc4Myw3ICszNzg1LDcgQEAgYm9v
bCBpbnRlbF9jYW5fZW5hYmxlX3NhZ3Yoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUp
CiAJY3J0Y19zdGF0ZSA9IHRvX2ludGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFzZS5zdGF0ZSk7CiAK
IAlpZiAoY3J0Yy0+YmFzZS5zdGF0ZS0+YWRqdXN0ZWRfbW9kZS5mbGFncyAmIERSTV9NT0RFX0ZM
QUdfSU5URVJMQUNFKQotCQlyZXR1cm4gZmFsc2U7CisJCXJldHVybjsKIAogCWZvcl9lYWNoX2lu
dGVsX3BsYW5lX29uX2NydGMoZGV2LCBjcnRjLCBwbGFuZSkgewogCQlzdHJ1Y3Qgc2tsX3BsYW5l
X3dtICp3bSA9CkBAIC0zODExLDkgKzM4MTMsMTI3IEBAIGJvb2wgaW50ZWxfY2FuX2VuYWJsZV9z
YWd2KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCQkgKiBjYW4ndCBlbmFibGUg
U0FHVi4KIAkJICovCiAJCWlmIChsYXRlbmN5IDwgZGV2X3ByaXYtPnNhZ3ZfYmxvY2tfdGltZV91
cykKLQkJCXJldHVybiBmYWxzZTsKKwkJCXJldHVybjsKKwl9CisKKwlzdGF0ZS0+Y3J0Y19zYWd2
X21hc2sgfD0gQklUKGNydGMtPnBpcGUpOworfQorCitzdGF0aWMgdm9pZCB0Z2xfc2V0X3NhZ3Zf
bWFzayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSk7CisKK3N0YXRpYyB2b2lkIGlj
bF9zZXRfc2Fndl9tYXNrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQoreworCXN0
cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBzdGF0ZS0+YmFzZS5kZXY7CisJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOworCXN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjOworCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZTsKKwlpbnQgbGV2
ZWwsIGxhdGVuY3k7CisJaW50IGk7CisJaW50IHBsYW5lX2lkOworCisJc3RhdGUtPmNydGNfc2Fn
dl9tYXNrID0gMDsKKworCWlmICghaW50ZWxfaGFzX3NhZ3YoZGV2X3ByaXYpKQorCQlyZXR1cm47
CisKKwkvKgorCSAqIElmIHRoZXJlIGFyZSBubyBhY3RpdmUgQ1JUQ3MsIG5vIGFkZGl0aW9uYWwg
Y2hlY2tzIG5lZWQgYmUgcGVyZm9ybWVkCisJICovCisJaWYgKGh3ZWlnaHQ4KHN0YXRlLT5hY3Rp
dmVfcGlwZXMpID09IDApCisJCXJldHVybjsKKworCWZvcl9lYWNoX25ld19pbnRlbF9jcnRjX2lu
X3N0YXRlKHN0YXRlLCBjcnRjLAorCQkJCQkgICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7CisJCXVu
c2lnbmVkIGludCBmbGFncyA9IGNydGMtPmJhc2Uuc3RhdGUtPmFkanVzdGVkX21vZGUuZmxhZ3M7
CisJCWJvb2wgY2FuX3NhZ3Y7CisKKwkJaWYgKGZsYWdzICYgRFJNX01PREVfRkxBR19JTlRFUkxB
Q0UpCisJCQljb250aW51ZTsKKworCQlpZiAoIW5ld19jcnRjX3N0YXRlLT5iYXNlLmFjdGl2ZSkK
KwkJCWNvbnRpbnVlOworCisJCWNhbl9zYWd2ID0gdHJ1ZTsKKwkJZm9yX2VhY2hfcGxhbmVfaWRf
b25fY3J0YyhjcnRjLCBwbGFuZV9pZCkgeworCQkJc3RydWN0IHNrbF9wbGFuZV93bSAqd20gPQor
CQkJCSZuZXdfY3J0Y19zdGF0ZS0+d20uc2tsLm9wdGltYWwucGxhbmVzW3BsYW5lX2lkXTsKKwor
CQkJLyogU2tpcCB0aGlzIHBsYW5lIGlmIGl0J3Mgbm90IGVuYWJsZWQgKi8KKwkJCWlmICghd20t
PndtWzBdLnBsYW5lX2VuKQorCQkJCWNvbnRpbnVlOworCisJCQkvKiBGaW5kIHRoZSBoaWdoZXN0
IGVuYWJsZWQgd20gbGV2ZWwgZm9yIHRoaXMgcGxhbmUgKi8KKwkJCWZvciAobGV2ZWwgPSBpbGtf
d21fbWF4X2xldmVsKGRldl9wcml2KTsKKwkJCSAgICAgIXdtLT53bVtsZXZlbF0ucGxhbmVfZW47
IC0tbGV2ZWwpIHsKKwkJCX0KKworCQkJbGF0ZW5jeSA9IGRldl9wcml2LT53bS5za2xfbGF0ZW5j
eVtsZXZlbF07CisKKwkJCS8qCisJCQkgKiBJZiBhbnkgb2YgdGhlIHBsYW5lcyBvbiB0aGlzIHBp
cGUgZG9uJ3QgZW5hYmxlCisJCQkgKiB3bSBsZXZlbHMgdGhhdCBpbmN1ciBtZW1vcnkgbGF0ZW5j
aWVzIGhpZ2hlciB0aGFuCisJCQkgKiBzYWd2X2Jsb2NrX3RpbWVfdXMgd2UgY2FuJ3QgZW5hYmxl
IFNBR1YuCisJCQkgKi8KKwkJCWlmIChsYXRlbmN5IDwgZGV2X3ByaXYtPnNhZ3ZfYmxvY2tfdGlt
ZV91cykgeworCQkJCWNhbl9zYWd2ID0gZmFsc2U7CisJCQkJYnJlYWs7CisJCQl9CisJCX0KKwkJ
aWYgKGNhbl9zYWd2KQorCQkJc3RhdGUtPmNydGNfc2Fndl9tYXNrIHw9IEJJVChjcnRjLT5waXBl
KTsKIAl9Cit9CisKK2Jvb2wgaW50ZWxfY2FuX2VuYWJsZV9zYWd2KHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlKQoreworCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBzdGF0ZS0+YmFz
ZS5kZXY7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYp
OworCWVudW0gcGlwZSBwaXBlOworCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCisJ
CXRnbF9zZXRfc2Fndl9tYXNrKHN0YXRlKTsKKwllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID09IDExKQorCQlpY2xfc2V0X3NhZ3ZfbWFzayhzdGF0ZSk7CisJZWxzZQorCQlza2xfc2V0X3Nh
Z3ZfbWFzayhzdGF0ZSk7CiAKKwkvKgorCSAqIEZvciBTQUdWIHdlIG5lZWQgdG8gYWNjb3VudCBh
bGwgdGhlIHBpcGVzLAorCSAqIG5vdCBvbmx5IHRoZSBvbmVzIHdoaWNoIGFyZSBpbiBzdGF0ZSBj
dXJyZW50bHkuCisJICovCisJZm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcGlwZSkgeworCQl1bnNp
Z25lZCBpbnQgYWN0aXZlX3BpcGVzOworCQkvKgorCQkgKiBGaWd1cmUgb3V0IGlmIHdlIGFyZSBj
aGFuZ2luZyBhY3RpdmUgcGlwZXMgaGVyZQorCQkgKiB0aGVuIGFmdGVyIGNvbW1pdCBkZXZfcHJp
di0+YWN0aXZlX3BpcGVzIHdpbGwKKwkJICogYW55d2F5IGJlIGFzc2lnbmVkIHRvIHN0YXRlLT5h
Y3RpdmVfcGlwZXMuCisJCSAqLworCQlpZiAoc3RhdGUtPmFjdGl2ZV9waXBlX2NoYW5nZXMpCisJ
CQlhY3RpdmVfcGlwZXMgPSBzdGF0ZS0+YWN0aXZlX3BpcGVzOworCQllbHNlCisJCQlhY3RpdmVf
cGlwZXMgPSBkZXZfcHJpdi0+YWN0aXZlX3BpcGVzOworCisJCS8qIFNraXAgaWYgcGlwZSBpcyBp
bmFjdGl2ZSAqLworCQlpZiAoIShCSVQocGlwZSkgJiBhY3RpdmVfcGlwZXMpKQorCQkJY29udGlu
dWU7CisKKwkJLyoKKwkJICogUGlwZSBjYW4gYmUgYWN0aXZlIGluIHRoaXMgc3RhdGUgb3IgaW4g
ZGV2X3ByaXYKKwkJICogYXMgd2UgaGF2ZW4ndCBjb21taXR0ZWQgdGhpc2UgY2hhbmdlcyB5ZXQo
YW5kIHdlIHNob3VsZG4ndCkKKwkJICogLSB3ZSBuZWVkIHRvIGNoZWNrIGJvdGguCisJCSAqLwor
CQlpZiAoc3RhdGUtPmFjdGl2ZV9waXBlX2NoYW5nZXMgJiBCSVQocGlwZSkpIHsKKwkJCWJvb2wg
c3RhdGVfc2Fndl9tYXNrZWQgPSBcCisJCQkJKEJJVChwaXBlKSAmIHN0YXRlLT5jcnRjX3NhZ3Zf
bWFzaykgPT0gMDsKKwkJCWlmIChzdGF0ZV9zYWd2X21hc2tlZCkKKwkJCQlyZXR1cm4gZmFsc2U7
CisJCX0gZWxzZSB7CisJCQlib29sIHNhZ3ZfbWFza2VkID0gXAorCQkJCShCSVQocGlwZSkgJiBk
ZXZfcHJpdi0+Y3J0Y19zYWd2X21hc2spID09IDA7CisJCQlpZiAoc2Fndl9tYXNrZWQpCisJCQkJ
cmV0dXJuIGZhbHNlOworCQl9CisJfQogCXJldHVybiB0cnVlOwogfQogCkBAIC0zOTEzLDcgKzQw
MzMsNyBAQCBza2xfZGRiX2dldF9waXBlX2FsbG9jYXRpb25fbGltaXRzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKIAkJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwogCQlp
bnQgaGRpc3BsYXksIHZkaXNwbGF5OwogCi0JCWlmICghY3J0Y19zdGF0ZS0+YmFzZS5lbmFibGUp
CisJCWlmICghY3J0Y19zdGF0ZS0+YmFzZS5hY3RpdmUpCiAJCQljb250aW51ZTsKIAogCQlkcm1f
bW9kZV9nZXRfaHZfdGltaW5nKGFkanVzdGVkX21vZGUsICZoZGlzcGxheSwgJnZkaXNwbGF5KTsK
QEAgLTM5MzYsNiArNDA1Niw3IEBAIHN0YXRpYyBpbnQgc2tsX2NvbXB1dGVfd21fcGFyYW1zKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJCSBpbnQgY29sb3Jf
cGxhbmUpOwogc3RhdGljIHZvaWQgc2tsX2NvbXB1dGVfcGxhbmVfd20oY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQkJIGludCBsZXZlbCwKKwkJCQkgdTMyIGxh
dGVuY3ksCiAJCQkJIGNvbnN0IHN0cnVjdCBza2xfd21fcGFyYW1zICp3cCwKIAkJCQkgY29uc3Qg
c3RydWN0IHNrbF93bV9sZXZlbCAqcmVzdWx0X3ByZXYsCiAJCQkJIHN0cnVjdCBza2xfd21fbGV2
ZWwgKnJlc3VsdCAvKiBvdXQgKi8pOwpAQCAtMzk1OCw3ICs0MDc5LDEwIEBAIHNrbF9jdXJzb3Jf
YWxsb2NhdGlvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAlX
QVJOX09OKHJldCk7CiAKIAlmb3IgKGxldmVsID0gMDsgbGV2ZWwgPD0gbWF4X2xldmVsOyBsZXZl
bCsrKSB7Ci0JCXNrbF9jb21wdXRlX3BsYW5lX3dtKGNydGNfc3RhdGUsIGxldmVsLCAmd3AsICZ3
bSwgJndtKTsKKwkJdTMyIGxhdGVuY3kgPSBkZXZfcHJpdi0+d20uc2tsX2xhdGVuY3lbbGV2ZWxd
OworCisJCXNrbF9jb21wdXRlX3BsYW5lX3dtKGNydGNfc3RhdGUsIGxldmVsLCBsYXRlbmN5LCAm
d3AsICZ3bSwgJndtKTsKKwogCQlpZiAod20ubWluX2RkYl9hbGxvYyA9PSBVMTZfTUFYKQogCQkJ
YnJlYWs7CiAKQEAgLTQzMTAsNiArNDQzNCw2OCBAQCBpY2xfZ2V0X3RvdGFsX3JlbGF0aXZlX2Rh
dGFfcmF0ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAlyZXR1cm4gdG90
YWxfZGF0YV9yYXRlOwogfQogCitzdGF0aWMgaW50Cit0Z2xfY2hlY2tfcGlwZV9maXRzX3NhZ3Zf
d20oc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCisJCSAgICAgIHN0cnVjdCBz
a2xfZGRiX2FsbG9jYXRpb24gKmRkYiAvKiBvdXQgKi8pCit7CisJc3RydWN0IGRybV9jcnRjICpj
cnRjID0gY3J0Y19zdGF0ZS0+YmFzZS5jcnRjOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+ZGV2KTsKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxf
Y3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Yyk7CisJc3RydWN0IHNrbF9kZGJfZW50cnkgKmFsbG9j
ID0gJmNydGNfc3RhdGUtPndtLnNrbC5kZGI7CisJdTE2IGFsbG9jX3NpemU7CisJdTE2IHRvdGFs
W0k5MTVfTUFYX1BMQU5FU10gPSB7fTsKKwl1NjQgdG90YWxfZGF0YV9yYXRlOworCWVudW0gcGxh
bmVfaWQgcGxhbmVfaWQ7CisJaW50IG51bV9hY3RpdmU7CisJdTY0IHBsYW5lX2RhdGFfcmF0ZVtJ
OTE1X01BWF9QTEFORVNdID0ge307CisJdTMyIGJsb2NrczsKKworCS8qCisJICogTm8gbmVlZCB0
byBjaGVjayBnZW4gaGVyZSwgd2UgY2FsbCB0aGlzIG9ubHkgZm9yIGdlbjEyCisJICovCisJdG90
YWxfZGF0YV9yYXRlID0KKwkJaWNsX2dldF90b3RhbF9yZWxhdGl2ZV9kYXRhX3JhdGUoY3J0Y19z
dGF0ZSwKKwkJCQkJCSBwbGFuZV9kYXRhX3JhdGUpOworCisJc2tsX2RkYl9nZXRfcGlwZV9hbGxv
Y2F0aW9uX2xpbWl0cyhkZXZfcHJpdiwgY3J0Y19zdGF0ZSwKKwkJCQkJICAgdG90YWxfZGF0YV9y
YXRlLAorCQkJCQkgICBkZGIsIGFsbG9jLCAmbnVtX2FjdGl2ZSk7CisJYWxsb2Nfc2l6ZSA9IHNr
bF9kZGJfZW50cnlfc2l6ZShhbGxvYyk7CisJaWYgKGFsbG9jX3NpemUgPT0gMCkKKwkJcmV0dXJu
IC1FTk9TUEM7CisKKwkvKiBBbGxvY2F0ZSBmaXhlZCBudW1iZXIgb2YgYmxvY2tzIGZvciBjdXJz
b3IuICovCisJdG90YWxbUExBTkVfQ1VSU09SXSA9IHNrbF9jdXJzb3JfYWxsb2NhdGlvbihjcnRj
X3N0YXRlLCBudW1fYWN0aXZlKTsKKwlhbGxvY19zaXplIC09IHRvdGFsW1BMQU5FX0NVUlNPUl07
CisJY3J0Y19zdGF0ZS0+d20uc2tsLnBsYW5lX2RkYl95W1BMQU5FX0NVUlNPUl0uc3RhcnQgPQor
CQlhbGxvYy0+ZW5kIC0gdG90YWxbUExBTkVfQ1VSU09SXTsKKwljcnRjX3N0YXRlLT53bS5za2wu
cGxhbmVfZGRiX3lbUExBTkVfQ1VSU09SXS5lbmQgPSBhbGxvYy0+ZW5kOworCisJLyoKKwkgKiBE
byBjaGVjayBpZiB3ZSBjYW4gZml0IEwwICsgc2Fndl9ibG9ja190aW1lIGFuZAorCSAqIGRpc2Fi
bGUgU0FHViBpZiB3ZSBjYW4ndC4KKwkgKi8KKwlibG9ja3MgPSAwOworCWZvcl9lYWNoX3BsYW5l
X2lkX29uX2NydGMoaW50ZWxfY3J0YywgcGxhbmVfaWQpIHsKKwkJY29uc3Qgc3RydWN0IHNrbF9w
bGFuZV93bSAqd20gPQorCQkJJmNydGNfc3RhdGUtPndtLnNrbC5vcHRpbWFsLnBsYW5lc1twbGFu
ZV9pZF07CisKKwkJaWYgKHBsYW5lX2lkID09IFBMQU5FX0NVUlNPUikgeworCQkJaWYgKFdBUk5f
T04od20tPnNhZ3Zfd20wLm1pbl9kZGJfYWxsb2MgPgorCQkJCSAgICB0b3RhbFtQTEFORV9DVVJT
T1JdKSkgeworCQkJCWJsb2NrcyA9IFUzMl9NQVg7CisJCQkJYnJlYWs7CisJCQl9CisJCQljb250
aW51ZTsKKwkJfQorCisJCWJsb2NrcyArPSB3bS0+c2Fndl93bTAubWluX2RkYl9hbGxvYzsKKwkJ
aWYgKGJsb2NrcyA+IGFsbG9jX3NpemUpCisJCQlyZXR1cm4gLUVOT1NQQzsKKwl9CisJcmV0dXJu
IDA7Cit9CisKIHN0YXRpYyBpbnQKIHNrbF9hbGxvY2F0ZV9waXBlX2RkYihzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJICAgICAgc3RydWN0IHNrbF9kZGJfYWxsb2NhdGlv
biAqZGRiIC8qIG91dCAqLykKQEAgLTQ3MzksMTIgKzQ5MjUsMTIgQEAgc3RhdGljIGJvb2wgc2ts
X3dtX2hhc19saW5lcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGludCBsZXZl
bCkKIAogc3RhdGljIHZvaWQgc2tsX2NvbXB1dGVfcGxhbmVfd20oY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQkJIGludCBsZXZlbCwKKwkJCQkgdTMyIGxhdGVu
Y3ksCiAJCQkJIGNvbnN0IHN0cnVjdCBza2xfd21fcGFyYW1zICp3cCwKIAkJCQkgY29uc3Qgc3Ry
dWN0IHNrbF93bV9sZXZlbCAqcmVzdWx0X3ByZXYsCiAJCQkJIHN0cnVjdCBza2xfd21fbGV2ZWwg
KnJlc3VsdCAvKiBvdXQgKi8pCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShjcnRjX3N0YXRlLT5iYXNlLmNydGMtPmRldik7Ci0JdTMyIGxhdGVuY3kgPSBk
ZXZfcHJpdi0+d20uc2tsX2xhdGVuY3lbbGV2ZWxdOwogCXVpbnRfZml4ZWRfMTZfMTZfdCBtZXRo
b2QxLCBtZXRob2QyOwogCXVpbnRfZml4ZWRfMTZfMTZfdCBzZWxlY3RlZF9yZXN1bHQ7CiAJdTMy
IHJlc19ibG9ja3MsIHJlc19saW5lcywgbWluX2RkYl9hbGxvYyA9IDA7CkBAIC00ODY1LDIwICs1
MDUxLDQ1IEBAIHN0YXRpYyB2b2lkIHNrbF9jb21wdXRlX3BsYW5lX3dtKGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogc3RhdGljIHZvaWQKIHNrbF9jb21wdXRlX3dt
X2xldmVscyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJICAg
ICAgY29uc3Qgc3RydWN0IHNrbF93bV9wYXJhbXMgKndtX3BhcmFtcywKLQkJICAgICAgc3RydWN0
IHNrbF93bV9sZXZlbCAqbGV2ZWxzKQorCQkgICAgICBzdHJ1Y3Qgc2tsX3BsYW5lX3dtICpwbGFu
ZV93bSwKKwkJICAgICAgYm9vbCB5dXYpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gdG9faTkxNShjcnRjX3N0YXRlLT5iYXNlLmNydGMtPmRldik7CiAJaW50IGxldmVs
LCBtYXhfbGV2ZWwgPSBpbGtfd21fbWF4X2xldmVsKGRldl9wcml2KTsKKwkvKgorCSAqIENoZWNr
IHdoaWNoIGtpbmQgb2YgcGxhbmUgaXMgaXQgYW5kIGJhc2VkIG9uIHRoYXQgY2FsY3VsYXRlCisJ
ICogY29ycmVzcG9uZGVudCBXTSBsZXZlbHMuCisJICovCisJc3RydWN0IHNrbF93bV9sZXZlbCAq
bGV2ZWxzID0geXV2ID8gcGxhbmVfd20tPnV2X3dtIDogcGxhbmVfd20tPndtOwogCXN0cnVjdCBz
a2xfd21fbGV2ZWwgKnJlc3VsdF9wcmV2ID0gJmxldmVsc1swXTsKIAogCWZvciAobGV2ZWwgPSAw
OyBsZXZlbCA8PSBtYXhfbGV2ZWw7IGxldmVsKyspIHsKIAkJc3RydWN0IHNrbF93bV9sZXZlbCAq
cmVzdWx0ID0gJmxldmVsc1tsZXZlbF07CisJCXUzMiBsYXRlbmN5ID0gZGV2X3ByaXYtPndtLnNr
bF9sYXRlbmN5W2xldmVsXTsKIAotCQlza2xfY29tcHV0ZV9wbGFuZV93bShjcnRjX3N0YXRlLCBs
ZXZlbCwgd21fcGFyYW1zLAotCQkJCSAgICAgcmVzdWx0X3ByZXYsIHJlc3VsdCk7CisJCXNrbF9j
b21wdXRlX3BsYW5lX3dtKGNydGNfc3RhdGUsIGxldmVsLCBsYXRlbmN5LAorCQkJCSAgICAgd21f
cGFyYW1zLCByZXN1bHRfcHJldiwgcmVzdWx0KTsKIAogCQlyZXN1bHRfcHJldiA9IHJlc3VsdDsK
IAl9CisJLyoKKwkgKiBGb3IgR2VuMTIgaWYgaXQgaXMgYW4gTDAgd2UgbmVlZCB0byBhbHNvCisJ
ICogY29uc2lkZXIgc2Fndl9ibG9ja190aW1lIHdoZW4gY2FsY3VsYXRpbmcKKwkgKiBMMCB3YXRl
cm1hcmsgLSB3ZSB3aWxsIG5lZWQgdGhhdCB3aGVuIG1ha2luZworCSAqIGEgZGVjaXNpb24gd2hl
dGhlciBlbmFibGUgU0FHViBvciBub3QuCisJICogRm9yIG9sZGVyIGdlbnMgd2UgYWdyZWVkIHRv
IGNvcHkgTDAgdmFsdWUgZm9yCisJICogY29tcGF0aWJpbGl0eS4KKwkgKi8KKwlpZiAoKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gMTIpKSB7CisJCXUzMiBsYXRlbmN5ID0gZGV2X3ByaXYtPndtLnNr
bF9sYXRlbmN5WzBdOworCisJCWxhdGVuY3kgKz0gZGV2X3ByaXYtPnNhZ3ZfYmxvY2tfdGltZV91
czsKKwkJc2tsX2NvbXB1dGVfcGxhbmVfd20oY3J0Y19zdGF0ZSwgMCwgbGF0ZW5jeSwKKwkJICAg
ICB3bV9wYXJhbXMsICZsZXZlbHNbMF0sCisJCSAgICAmcGxhbmVfd20tPnNhZ3Zfd20wKTsKKwl9
IGVsc2UKKwkJbWVtY3B5KCZwbGFuZV93bS0+c2Fndl93bTAsICZsZXZlbHNbMF0sCisJCQlzaXpl
b2Yoc3RydWN0IHNrbF93bV9sZXZlbCkpOwogfQogCiBzdGF0aWMgdTMyCkBAIC00OTcxLDcgKzUx
ODIsNyBAQCBzdGF0aWMgaW50IHNrbF9idWlsZF9wbGFuZV93bV9zaW5nbGUoc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAotCXNr
bF9jb21wdXRlX3dtX2xldmVscyhjcnRjX3N0YXRlLCAmd21fcGFyYW1zLCB3bS0+d20pOworCXNr
bF9jb21wdXRlX3dtX2xldmVscyhjcnRjX3N0YXRlLCAmd21fcGFyYW1zLCB3bSwgZmFsc2UpOwog
CXNrbF9jb21wdXRlX3RyYW5zaXRpb25fd20oY3J0Y19zdGF0ZSwgJndtX3BhcmFtcywgd20pOwog
CiAJcmV0dXJuIDA7CkBAIC00OTkzLDcgKzUyMDQsNyBAQCBzdGF0aWMgaW50IHNrbF9idWlsZF9w
bGFuZV93bV91dihzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAlpZiAocmV0
KQogCQlyZXR1cm4gcmV0OwogCi0Jc2tsX2NvbXB1dGVfd21fbGV2ZWxzKGNydGNfc3RhdGUsICZ3
bV9wYXJhbXMsIHdtLT51dl93bSk7CisJc2tsX2NvbXB1dGVfd21fbGV2ZWxzKGNydGNfc3RhdGUs
ICZ3bV9wYXJhbXMsIHdtLCB0cnVlKTsKIAogCXJldHVybiAwOwogfQpAQCAtNTI2NSw2ICs1NDc2
LDggQEAgc2tsX2RkYl9hZGRfYWZmZWN0ZWRfcGxhbmVzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKIAlyZXR1cm4gMDsKIH0KIAorc3RhdGljIHZvaWQgdGds
X3NldF9zYWd2X3dtMChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSk7CisKIHN0YXRp
YyBpbnQKIHNrbF9jb21wdXRlX2RkYihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkK
IHsKQEAgLTUyNzUsNiArNTQ4OCwxMSBAQCBza2xfY29tcHV0ZV9kZGIoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUpCiAJc3RydWN0IGludGVsX2NydGMgKmNydGM7CiAJaW50IHJldCwg
aTsKIAorCS8qIEZvciBHZW4xMisgZm9yIFNBR1Ygd2UgaGF2ZSBhIHNwZWNpYWwgTDAgd20gdmFs
dWVzICovCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCisJCWlmIChpbnRlbF9jYW5f
ZW5hYmxlX3NhZ3Yoc3RhdGUpKQorCQkJdGdsX3NldF9zYWd2X3dtMChzdGF0ZSk7CisKIAltZW1j
cHkoZGRiLCAmZGV2X3ByaXYtPndtLnNrbF9ody5kZGIsIHNpemVvZigqZGRiKSk7CiAKIAlmb3Jf
ZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3Rh
dGUsCkBAIC01NTQxLDYgKzU3NTksNTYgQEAgc3RhdGljIGludCBza2xfd21fYWRkX2FmZmVjdGVk
X3BsYW5lcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAlyZXR1cm4gMDsKIH0K
IAordm9pZCB0Z2xfc2V0X3NhZ3Zfd20wKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
KQoreworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOworCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpuZXdfY3J0Y19zdGF0ZTsKKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3Rh
dGU7CisJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IHN0YXRlLT5iYXNlLmRldjsKKwljb25zdCBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7CisJaW50IGk7
CisKKwkvKgorCSAqIElmIHdlIGRldGVybWluZWQgdGhhdCB3ZSBjYW4gYWN0dWFsbHkgZW5hYmxl
IFNBR1YsIHRoZW4KKwkgKiBhY3R1YWxseSB1c2UgdGhvc2UgbGV2ZWxzIHRnbF9jaGVja19waXBl
X2ZpdHNfc2Fndl93bQorCSAqIGhhcyBhbHJlYWR5IHRha2VuIGNhcmUgb2YgY2hlY2tpbmcgaWYg
TDAgKyBzYWd2IGJsb2NrIHRpbWUKKwkgKiBmaXRzIGludG8gZGRiLgorCSAqLworCWZvcl9lYWNo
X29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwK
KwkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsKKwkJc3RydWN0IGludGVsX3BsYW5lICpwbGFu
ZTsKKworCQlmb3JfZWFjaF9pbnRlbF9wbGFuZV9vbl9jcnRjKCZkZXZfcHJpdi0+ZHJtLCBjcnRj
LCBwbGFuZSkgeworCQkJZW51bSBwbGFuZV9pZCBwbGFuZV9pZCA9IHBsYW5lLT5pZDsKKworCQkJ
c3RydWN0IHNrbF9wbGFuZV93bSAqcGxhbmVfd20gPSBcCisJCQkgICAgJm5ld19jcnRjX3N0YXRl
LT53bS5za2wub3B0aW1hbC5wbGFuZXNbcGxhbmVfaWRdOworCQkJc3RydWN0IHNrbF93bV9sZXZl
bCAqc2Fndl93bTAgPSAmcGxhbmVfd20tPnNhZ3Zfd20wOworCQkJc3RydWN0IHNrbF93bV9sZXZl
bCAqbDBfd20wID0gJnBsYW5lX3dtLT53bVswXTsKKworCQkJbWVtY3B5KGwwX3dtMCwgc2Fndl93
bTAsIHNpemVvZihzdHJ1Y3Qgc2tsX3dtX2xldmVsKSk7CisJCX0KKwl9Cit9CisKK3N0YXRpYyB2
b2lkIHRnbF9zZXRfc2Fndl9tYXNrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQor
eworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOworCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpu
ZXdfY3J0Y19zdGF0ZTsKKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGU7
CisJc3RydWN0IHNrbF9kZGJfYWxsb2NhdGlvbiAqZGRiID0gJnN0YXRlLT53bV9yZXN1bHRzLmRk
YjsKKwlpbnQgcmV0LCBpOworCisJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUo
c3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLAorCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkp
IHsKKwkJcmV0ID0gdGdsX2NoZWNrX3BpcGVfZml0c19zYWd2X3dtKG5ld19jcnRjX3N0YXRlLCBk
ZGIpOworCQlpZiAoIXJldCkgeworCQkJaW50IHBpcGVfYml0ID0gQklUKGNydGMtPnBpcGUpOwor
CQkJc3RhdGUtPmNydGNfc2Fndl9tYXNrIHw9IHBpcGVfYml0OworCQl9CisJfQorfQorCiBzdGF0
aWMgaW50CiBza2xfY29tcHV0ZV93bShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkK
IHsKQEAgLTU1NTMsNiArNTgyMSw5IEBAIHNrbF9jb21wdXRlX3dtKHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlKQogCS8qIENsZWFyIGFsbCBkaXJ0eSBmbGFncyAqLwogCXJlc3VsdHMt
PmRpcnR5X3BpcGVzID0gMDsKIAorCS8qIElmIHdlIGV4aXQgYmVmb3JlIGNoZWNrIGlzIGRvbmUg
Ki8KKwlzdGF0ZS0+Y3J0Y19zYWd2X21hc2sgPSAwOworCiAJcmV0ID0gc2tsX2RkYl9hZGRfYWZm
ZWN0ZWRfcGlwZXMoc3RhdGUpOwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7Ci0tIAoyLjE3LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
