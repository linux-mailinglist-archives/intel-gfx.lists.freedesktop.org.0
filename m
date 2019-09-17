Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B38DBB46FE
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 07:48:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 152976E11B;
	Tue, 17 Sep 2019 05:48:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E7116E119;
 Tue, 17 Sep 2019 05:48:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Sep 2019 22:48:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,515,1559545200"; d="scan'208";a="386441223"
Received: from xzhan34-mobl3.bj.intel.com ([10.238.154.70])
 by fmsmga005.fm.intel.com with ESMTP; 16 Sep 2019 22:48:49 -0700
From: Xiaolin Zhang <xiaolin.zhang@intel.com>
To: intel-gvt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 17 Sep 2019 13:48:14 +0800
Message-Id: <1568699301-2799-4-git-send-email-xiaolin.zhang@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568699301-2799-1-git-send-email-xiaolin.zhang@intel.com>
References: <1568699301-2799-1-git-send-email-xiaolin.zhang@intel.com>
Subject: [Intel-gfx] [PATCH v10 3/9] drm/i915: vgpu pv command buffer support
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
Cc: zhenyu.z.wang@intel.com, hang.yuan@intel.com, zhiyuan.lv@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

YmFzZWQgb24gdGhlIHNoYXJlZCBtZW1vcnkgc2V0dXAgYmV0d2VlbiBndWVzdCBhbmQgR1ZULCB0
aGUgc2ltcGxlCnB2IGNvbW1hbmQgYnVmZmVyIHJpbmcgd2FzIGludHJvZHVjZWQgYnkgdGhpcyBw
YXRjaCB1c2VkIHRvIHBlcmZvcm0KZ3Vlc3QtMi1ndnQgc2luZ2xlIGRpcmVjdGlvbiBjb21tdW5p
Y2F0aW9uLgoKdjE6IGluaXRpYWwgc3VwcG9ydCwgYWRkZWQgdG8gYWRkcmVzcyBpOTE1IFBWIHY2
IHBhdGNoIHNldCBjb21tZW50LgoKU2lnbmVkLW9mZi1ieTogWGlhb2xpbiBaaGFuZyA8eGlhb2xp
bi56aGFuZ0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wdmluZm8u
aCB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuYyAgIHwgMTkzICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfdmdwdS5oICAgfCAgNjYgKysrKysrKysrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCAyNjAgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcHZpbmZv
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3B2aW5mby5oCmluZGV4IDNjNjM2MDMuLmRi
OWVlYmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcHZpbmZvLmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wdmluZm8uaApAQCAtNDksNiArNDksNyBAQCBl
bnVtIHZndF9nMnZfdHlwZSB7CiAJVkdUX0cyVl9FWEVDTElTVF9DT05URVhUX0NSRUFURSwKIAlW
R1RfRzJWX0VYRUNMSVNUX0NPTlRFWFRfREVTVFJPWSwKIAlWR1RfRzJWX1NIQVJFRF9QQUdFX1NF
VFVQLAorCVZHVF9HMlZfUFZfU0VORF9UUklHR0VSLAogCVZHVF9HMlZfTUFYLAogfTsKIApkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92Z3B1LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3ZncHUuYwppbmRleCA2OGZlY2ZkLi42ZTI5YTUyIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3ZncHUuYwpAQCAtMzIyLDYgKzMyMiwxODcgQEAgaW50IGludGVsX3ZndF9iYWxsb29u
KHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCiAgKiBpOTE1IHZncHUgUFYgc3VwcG9ydCBmb3IgTGlu
dXgKICAqLwogCisvKioKKyAqIHdhaXRfZm9yX2Rlc2NfdXBkYXRlIC0gV2FpdCBmb3IgdGhlIGNv
bW1hbmQgYnVmZmVyIGRlc2NyaXB0b3IgdXBkYXRlLgorICogQGRlc2M6CWJ1ZmZlciBkZXNjcmlw
dG9yCisgKiBAZmVuY2U6CXJlc3BvbnNlIGZlbmNlCisgKiBAc3RhdHVzOglwbGFjZWhvbGRlciBm
b3Igc3RhdHVzCisgKgorICogR1ZUIHdpbGwgdXBkYXRlIGNvbW1hbmQgYnVmZmVyIGRlc2NyaXB0
b3Igd2l0aCBuZXcgZmVuY2UgYW5kIHN0YXR1cworICogYWZ0ZXIgcHJvY2Vzc2luZyB0aGUgY29t
bWFuZCBpZGVudGlmaWVkIGJ5IHRoZSBmZW5jZS4gV2FpdCBmb3IKKyAqIHNwZWNpZmllZCBmZW5j
ZSBhbmQgdGhlbiByZWFkIGZyb20gdGhlIGRlc2NyaXB0b3Igc3RhdHVzIG9mIHRoZQorICogY29t
bWFuZC4KKyAqCisgKiBSZXR1cm46CisgKiAqCTAgcmVzcG9uc2UgcmVjZWl2ZWQgKHN0YXR1cyBp
cyB2YWxpZCkKKyAqICoJLUVUSU1FRE9VVCBubyByZXNwb25zZSB3aXRoaW4gaGFyZGNvZGVkIHRp
bWVvdXQKKyAqICoJLUVQUk9UTyBubyByZXNwb25zZSwgQ1QgYnVmZmVyIGlzIGluIGVycm9yCisg
Ki8KK3N0YXRpYyBpbnQgd2FpdF9mb3JfZGVzY191cGRhdGUoc3RydWN0IHZncHVfcHZfY3RfYnVm
ZmVyX2Rlc2MgKmRlc2MsCisJCXUzMiBmZW5jZSwgdTMyICpzdGF0dXMpCit7CisJaW50IGVycjsK
KworI2RlZmluZSBkb25lIChSRUFEX09OQ0UoZGVzYy0+ZmVuY2UpID09IGZlbmNlKQorCWVyciA9
IHdhaXRfZm9yX3VzKGRvbmUsIDUpOworCWlmIChlcnIpCisJCWVyciA9IHdhaXRfZm9yKGRvbmUs
IDEwKTsKKyN1bmRlZiBkb25lCisKKwlpZiAodW5saWtlbHkoZXJyKSkgeworCQlEUk1fRVJST1Io
IkNUOiBmZW5jZSAldSBmYWlsZWQ7IHJlcG9ydGVkIGZlbmNlPSV1XG4iLAorCQkJCWZlbmNlLCBk
ZXNjLT5mZW5jZSk7CisJfQorCisJKnN0YXR1cyA9IGRlc2MtPnN0YXR1czsKKwlyZXR1cm4gZXJy
OworfQorCisvKioKKyAqIERPQzogQ1RCIEd1ZXN0IHRvIEdWVCByZXF1ZXN0CisgKgorICogRm9y
bWF0IG9mIHRoZSBDVEIgR3Vlc3QgdG8gR1ZUIHJlcXVlc3QgbWVzc2FnZSBpcyBhcyBmb2xsb3dz
OjoKKyAqCisgKiAgICAgICstLS0tLS0tLS0tLS0rLS0tLS0tLS0tKy0tLS0tLS0tLSstLS0tLS0t
LS0rLS0tLS0tLS0tKworICogICAgICB8ICAgbXNnWzBdICAgfCAgIFsxXSAgIHwgICBbMl0gICB8
ICAgLi4uICAgfCAgW24tMV0gIHwKKyAqICAgICAgKy0tLS0tLS0tLS0tLSstLS0tLS0tLS0rLS0t
LS0tLS0tKy0tLS0tLS0tLSstLS0tLS0tLS0rCisgKiAgICAgIHwgICBNRVNTQUdFICB8ICAgICAg
IE1FU1NBR0UgUEFZTE9BRCAgICAgICAgICAgICAgICAgfAorICogICAgICArICAgSEVBREVSICAg
Ky0tLS0tLS0tLSstLS0tLS0tLS0rLS0tLS0tLS0tKy0tLS0tLS0tLSsKKyAqICAgICAgfCAgICAg
ICAgICAgIHwgICAgMCAgICB8ICAgIDEgICAgfCAgIC4uLiAgIHwgICAgbiAgICB8CisgKiAgICAg
ICs9PT09PT09PT09PT0rPT09PT09PT09Kz09PT09PT09PSs9PT09PT09PT0rPT09PT09PT09Kwor
ICogICAgICB8ICBsZW4gPj0gMSAgfCAgRkVOQ0UgIHwgICAgIHJlcXVlc3Qgc3BlY2lmaWMgZGF0
YSAgIHwKKyAqICAgICAgKy0tLS0tLSstLS0tLSstLS0tLS0tLS0rLS0tLS0tLS0tKy0tLS0tLS0t
LSstLS0tLS0tLS0rCisgKgorICogICAgICAgICAgICAgICAgICAgXi0tLS0tLS0tLS0tLS0tLS0t
bGVuLS0tLS0tLS0tLS0tLS0tLS0tLV4KKyAqLworc3RhdGljIGludCBwdl9jb21tYW5kX2J1ZmZl
cl93cml0ZShzdHJ1Y3QgaTkxNV92aXJ0dWFsX2dwdV9wdiAqcHYsCisJCWNvbnN0IHUzMiAqYWN0
aW9uLCB1MzIgbGVuIC8qIGluIGR3b3JkcyAqLywgdTMyIGZlbmNlKQoreworCXN0cnVjdCB2Z3B1
X3B2X2N0X2J1ZmZlcl9kZXNjICpkZXNjID0gcHYtPmN0Yi5kZXNjOworCXUzMiBoZWFkID0gZGVz
Yy0+aGVhZCAvIDQ7CS8qIGluIGR3b3JkcyAqLworCXUzMiB0YWlsID0gZGVzYy0+dGFpbCAvIDQ7
CS8qIGluIGR3b3JkcyAqLworCXUzMiBzaXplID0gZGVzYy0+c2l6ZSAvIDQ7CS8qIGluIGR3b3Jk
cyAqLworCXUzMiB1c2VkOwkJCS8qIGluIGR3b3JkcyAqLworCXUzMiBoZWFkZXI7CisJdTMyICpj
bWRzID0gcHYtPmN0Yi5jbWRzOworCXVuc2lnbmVkIGludCBpOworCisJR0VNX0JVR19PTihkZXNj
LT5zaXplICUgNCk7CisJR0VNX0JVR19PTihkZXNjLT5oZWFkICUgNCk7CisJR0VNX0JVR19PTihk
ZXNjLT50YWlsICUgNCk7CisJR0VNX0JVR19PTih0YWlsID49IHNpemUpOworCisJLyoKKwkgKiB0
YWlsID09IGhlYWQgY29uZGl0aW9uIGluZGljYXRlcyBlbXB0eS4KKwkgKi8KKwlpZiAodGFpbCA8
IGhlYWQpCisJCXVzZWQgPSAoc2l6ZSAtIGhlYWQpICsgdGFpbDsKKwllbHNlCisJCXVzZWQgPSB0
YWlsIC0gaGVhZDsKKworCS8qIG1ha2Ugc3VyZSB0aGVyZSBpcyBhIHNwYWNlIGluY2x1ZGluZyBl
eHRyYSBkdyBmb3IgdGhlIGZlbmNlICovCisJaWYgKHVubGlrZWx5KHVzZWQgKyBsZW4gKyAxID49
IHNpemUpKQorCQlyZXR1cm4gLUVOT1NQQzsKKworCS8qCisJICogV3JpdGUgdGhlIG1lc3NhZ2Uu
IFRoZSBmb3JtYXQgaXMgdGhlIGZvbGxvd2luZzoKKwkgKiBEVzA6IGhlYWRlciAoaW5jbHVkaW5n
IGFjdGlvbiBjb2RlKQorCSAqIERXMTogZmVuY2UKKwkgKiBEVzIrOiBhY3Rpb24gZGF0YQorCSAq
LworCWhlYWRlciA9IChsZW4gPDwgUFZfQ1RfTVNHX0xFTl9TSElGVCkgfAorCQkgKFBWX0NUX01T
R19XUklURV9GRU5DRV9UT19ERVNDKSB8CisJCSAoYWN0aW9uWzBdIDw8IFBWX0NUX01TR19BQ1RJ
T05fU0hJRlQpOworCisJY21kc1t0YWlsXSA9IGhlYWRlcjsKKwl0YWlsID0gKHRhaWwgKyAxKSAl
IHNpemU7CisKKwljbWRzW3RhaWxdID0gZmVuY2U7CisJdGFpbCA9ICh0YWlsICsgMSkgJSBzaXpl
OworCisJZm9yIChpID0gMTsgaSA8IGxlbjsgaSsrKSB7CisJCWNtZHNbdGFpbF0gPSBhY3Rpb25b
aV07CisJCXRhaWwgPSAodGFpbCArIDEpICUgc2l6ZTsKKwl9CisKKwkvKiBub3cgdXBkYXRlIGRl
c2MgdGFpbCAoYmFjayBpbiBieXRlcykgKi8KKwlkZXNjLT50YWlsID0gdGFpbCAqIDQ7CisJR0VN
X0JVR19PTihkZXNjLT50YWlsID4gZGVzYy0+c2l6ZSk7CisKKwlyZXR1cm4gMDsKK30KKworc3Rh
dGljIHUzMiBwdl9nZXRfbmV4dF9mZW5jZShzdHJ1Y3QgaTkxNV92aXJ0dWFsX2dwdV9wdiAqcHYp
Cit7CisJLyogRm9yIG5vdyBpdCdzIHRyaXZpYWwgKi8KKwlyZXR1cm4gKytwdi0+bmV4dF9mZW5j
ZTsKK30KKworc3RhdGljIGludCBwdl9zZW5kKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwKKwkJY29uc3QgdTMyICphY3Rpb24sIHUzMiBsZW4sIHUzMiAqc3RhdHVzKQoreworCXN0
cnVjdCBpOTE1X3ZpcnR1YWxfZ3B1ICp2Z3B1ID0gJmRldl9wcml2LT52Z3B1OworCXN0cnVjdCBp
OTE1X3ZpcnR1YWxfZ3B1X3B2ICpwdiA9IHZncHUtPnB2OworCisJc3RydWN0IHZncHVfcHZfY3Rf
YnVmZmVyX2Rlc2MgKmRlc2MgPSBwdi0+Y3RiLmRlc2M7CisKKwl1MzIgZmVuY2U7CisJaW50IGVy
cjsKKworCUdFTV9CVUdfT04oIXB2LT5lbmFibGVkKTsKKwlHRU1fQlVHX09OKCFsZW4pOworCUdF
TV9CVUdfT04obGVuICYgflBWX0NUX01TR19MRU5fTUFTSyk7CisKKwlmZW5jZSA9IHB2X2dldF9u
ZXh0X2ZlbmNlKHB2KTsKKwllcnIgPSBwdl9jb21tYW5kX2J1ZmZlcl93cml0ZShwdiwgYWN0aW9u
LCBsZW4sIGZlbmNlKTsKKwlpZiAodW5saWtlbHkoZXJyKSkKKwkJZ290byB1bmxpbms7CisKKwlp
bnRlbF92Z3B1X3B2X25vdGlmeShkZXZfcHJpdik7CisKKwllcnIgPSB3YWl0X2Zvcl9kZXNjX3Vw
ZGF0ZShkZXNjLCBmZW5jZSwgc3RhdHVzKTsKKwlpZiAodW5saWtlbHkoZXJyKSkKKwkJZ290byB1
bmxpbms7CisKKwlpZiAoKCpzdGF0dXMpKSB7CisJCWVyciA9IC1FSU87CisJCWdvdG8gdW5saW5r
OworCX0KKworCWVyciA9ICgqc3RhdHVzKTsKK3VubGluazoKKwlyZXR1cm4gZXJyOworfQorCitz
dGF0aWMgaW50IGludGVsX3ZncHVfcHZfc2VuZF9jb21tYW5kX2J1ZmZlcigKKwkJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQl1MzIgKmFjdGlvbiwgdTMyIGxlbikKK3sKKwlz
dHJ1Y3QgaTkxNV92aXJ0dWFsX2dwdSAqdmdwdSA9ICZkZXZfcHJpdi0+dmdwdTsKKworCXUzMiBz
dGF0dXMgPSB+MDsgLyogdW5kZWZpbmVkICovCisJaW50IHJldDsKKworCW11dGV4X2xvY2soJnZn
cHUtPnB2LT5zZW5kX211dGV4KTsKKworCXJldCA9IHB2X3NlbmQoZGV2X3ByaXYsIGFjdGlvbiwg
bGVuLCAmc3RhdHVzKTsKKwlpZiAodW5saWtlbHkocmV0IDwgMCkpIHsKKwkJRFJNX0VSUk9SKCJQ
Vjogc2VuZCBhY3Rpb24gJSNYIGZhaWxlZDsgZXJyPSVkIHN0YXR1cz0lI1hcbiIsCisJCQkgIGFj
dGlvblswXSwgcmV0LCBzdGF0dXMpOworCX0gZWxzZSBpZiAodW5saWtlbHkocmV0KSkgeworCQlE
Uk1fRVJST1IoIlBWOiBzZW5kIGFjdGlvbiAlI3ggcmV0dXJuZWQgJWQgKCUjeClcbiIsCisJCQkJ
YWN0aW9uWzBdLCByZXQsIHJldCk7CisJfQorCisJbXV0ZXhfdW5sb2NrKCZ2Z3B1LT5wdi0+c2Vu
ZF9tdXRleCk7CisJcmV0dXJuIHJldDsKK30KKworc3RhdGljIHZvaWQgaW50ZWxfdmdwdV9wdl9u
b3RpZnlfbW1pbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCit7CisJSTkxNV9X
UklURSh2Z3RpZl9yZWcoZzJ2X25vdGlmeSksIFZHVF9HMlZfUFZfU0VORF9UUklHR0VSKTsKK30K
KwogLyoKICAqIHNoYXJlZF9wYWdlIHNldHVwIGZvciBWR1BVIFBWIGZlYXR1cmVzCiAgKi8KQEAg
LTM5NCw2ICs1NzUsMTggQEAgc3RhdGljIGludCBpbnRlbF92Z3B1X3NldHVwX3NoYXJlZF9wYWdl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlkZXZfcHJpdi0+dmdwdS5wdiA9
IHB2OwogCXB2LT5zaGFyZWRfcGFnZSA9IGJhc2U7CiAJcHYtPmVuYWJsZWQgPSB0cnVlOworCisJ
Lyogc2V0dXAgUFYgY29tbWFuZCBidWZmZXIgcHRyICovCisJcHYtPmN0Yi5jbWRzID0gKHZvaWQg
KiliYXNlICsgUFZfQ01EX09GRjsKKwlwdi0+Y3RiLmRlc2MgPSAodm9pZCAqKWJhc2UgKyBQVl9E
RVNDX09GRjsKKwlwdi0+Y3RiLmRlc2MtPnNpemUgPSBQQUdFX1NJWkUvMjsKKwlwdi0+Y3RiLmRl
c2MtPmFkZHIgPSBQVl9DTURfT0ZGOworCisJLyogc2V0dXAgUFYgY29tbWFuZCBidWZmZXIgY2Fs
bGJhY2sgKi8KKwlwdi0+c2VuZCA9IGludGVsX3ZncHVfcHZfc2VuZF9jb21tYW5kX2J1ZmZlcjsK
Kwlwdi0+bm90aWZ5ID0gaW50ZWxfdmdwdV9wdl9ub3RpZnlfbW1pbzsKKwltdXRleF9pbml0KCZw
di0+c2VuZF9tdXRleCk7CisKIAlyZXR1cm4gcmV0OwogZXJyOgogCV9fZnJlZV9wYWdlKHZpcnRf
dG9fcGFnZShiYXNlKSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Zn
cHUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5oCmluZGV4IDQwMWFmMjQuLmM0
OTRiZWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5oCkBAIC0yOSw2ICsyOSw4IEBACiAKICNk
ZWZpbmUgUFZfTUFKT1IJCTEKICNkZWZpbmUgUFZfTUlOT1IJCTAKKyNkZWZpbmUgUFZfREVTQ19P
RkYJCShQQUdFX1NJWkUvNCkKKyNkZWZpbmUgUFZfQ01EX09GRgkJKFBBR0VfU0laRS8yKQogCiAv
KgogICogQSBzaGFyZWQgcGFnZSg0S0IpIGJldHdlZW4gZ3Z0IGFuZCBWTSwgY291bGQgYmUgYWxs
b2NhdGVkIGJ5IGd1ZXN0IGRyaXZlcgpAQCAtMzksOSArNDEsNjAgQEAgc3RydWN0IGd2dF9zaGFy
ZWRfcGFnZSB7CiAJdTE2IHZlcl9taW5vcjsKIH07CiAKKy8qCisgKiBEZWZpbml0aW9uIG9mIHRo
ZSBjb21tYW5kIHRyYW5zcG9ydCBtZXNzYWdlIGhlYWRlciAoRFcwKQorICoKKyAqIGJpdFs0Li4w
XQltZXNzYWdlIGxlbiAoaW4gZHdvcmRzKQorICogYml0WzcuLjVdCXJlc2VydmVkCisgKiBiaXRb
OF0JCXdyaXRlIGZlbmNlIHRvIGRlc2MKKyAqIGJpdFs5Li4xMV0JcmVzZXJ2ZWQKKyAqIGJpdFsz
MS4uMTZdCWFjdGlvbiBjb2RlCisgKi8KKyNkZWZpbmUgUFZfQ1RfTVNHX0xFTl9TSElGVAkJCQkw
CisjZGVmaW5lIFBWX0NUX01TR19MRU5fTUFTSwkJCQkweDFGCisjZGVmaW5lIFBWX0NUX01TR19X
UklURV9GRU5DRV9UT19ERVNDCSgxIDw8IDgpCisjZGVmaW5lIFBWX0NUX01TR19BQ1RJT05fU0hJ
RlQJCQkxNgorI2RlZmluZSBQVl9DVF9NU0dfQUNUSU9OX01BU0sJCQkweEZGRkYKKworLyogUFYg
Y29tbWFuZCB0cmFuc3BvcnQgYnVmZmVyIGRlc2NyaXB0b3IgKi8KK3N0cnVjdCB2Z3B1X3B2X2N0
X2J1ZmZlcl9kZXNjIHsKKwl1MzIgYWRkcjsJCS8qIGdmeCBhZGRyZXNzICovCisJdTMyIHNpemU7
CQkvKiBzaXplIGluIGJ5dGVzICovCisJdTMyIGhlYWQ7CQkvKiBvZmZzZXQgdXBkYXRlZCBieSBH
VlQgKi8KKwl1MzIgdGFpbDsJCS8qIG9mZnNldCB1cGRhdGVkIGJ5IG93bmVyICovCisKKwl1MzIg
ZmVuY2U7CQkvKiBmZW5jZSB1cGRhdGVkIGJ5IEdWVCAqLworCXUzMiBzdGF0dXM7CQkvKiBzdGF0
dXMgdXBkYXRlZCBieSBHVlQgKi8KK30gX19wYWNrZWQ7CisKKy8qKiBQViBzaW5nbGUgY29tbWFu
ZCB0cmFuc3BvcnQgYnVmZmVyLgorICoKKyAqIEEgc2luZ2xlIGNvbW1hbmQgdHJhbnNwb3J0IGJ1
ZmZlciBjb25zaXN0cyBvZiB0d28gcGFydHMsIHRoZSBoZWFkZXIKKyAqIHJlY29yZCAoY29tbWFu
ZCB0cmFuc3BvcnQgYnVmZmVyIGRlc2NyaXB0b3IpIGFuZCB0aGUgYWN0dWFsIGJ1ZmZlciB3aGlj
aAorICogaG9sZHMgdGhlIGNvbW1hbmRzLgorICoKKyAqIEBkZXNjOiBwb2ludGVyIHRvIHRoZSBi
dWZmZXIgZGVzY3JpcHRvcgorICogQGNtZHM6IHBvaW50ZXIgdG8gdGhlIGNvbW1hbmRzIGJ1ZmZl
cgorICovCitzdHJ1Y3QgdmdwdV9wdl9jdF9idWZmZXIgeworCXN0cnVjdCB2Z3B1X3B2X2N0X2J1
ZmZlcl9kZXNjICpkZXNjOworCXUzMiAqY21kczsKK307CisKIHN0cnVjdCBpOTE1X3ZpcnR1YWxf
Z3B1X3B2IHsKIAlzdHJ1Y3QgZ3Z0X3NoYXJlZF9wYWdlICpzaGFyZWRfcGFnZTsKIAlib29sIGVu
YWJsZWQ7CisKKwkvKiBQViBjb21tYW5kIGJ1ZmZlciBzdXBwb3J0ICovCisJc3RydWN0IHZncHVf
cHZfY3RfYnVmZmVyIGN0YjsKKwl1MzIgbmV4dF9mZW5jZTsKKworCS8qIFRvIHNlcmlhbGl6ZSB0
aGUgdmdwdSBQViBzZW5kIGFjdGlvbnMgKi8KKwlzdHJ1Y3QgbXV0ZXggc2VuZF9tdXRleDsKKwor
CS8qIFZHUFUncyBQViBzcGVjaWZpYyBzZW5kIGZ1bmN0aW9uICovCisJaW50ICgqc2VuZCkoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgKmRhdGEsIHUzMiBsZW4pOworCXZv
aWQgKCpub3RpZnkpKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CiB9OwogCiB2
b2lkIGk5MTVfZGV0ZWN0X3ZncHUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsK
QEAgLTY3LDYgKzEyMCwxOSBAQCBzdHJ1Y3QgaTkxNV92aXJ0dWFsX2dwdV9wdiB7CiAJcmV0dXJu
IGRldl9wcml2LT52Z3B1LmNhcHMgJiBWR1RfQ0FQU19QVjsKIH0KIAorc3RhdGljIGlubGluZSB2
b2lkCitpbnRlbF92Z3B1X3B2X25vdGlmeShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCit7CisJZGV2X3ByaXYtPnZncHUucHYtPm5vdGlmeShkZXZfcHJpdik7Cit9CisKK3N0YXRp
YyBpbmxpbmUgaW50CitpbnRlbF92Z3B1X3B2X3NlbmQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LAorCQl1MzIgKmFjdGlvbiwgdTMyIGxlbikKK3sKKwlyZXR1cm4gZGV2X3ByaXYt
PnZncHUucHYtPnNlbmQoZGV2X3ByaXYsIGFjdGlvbiwgbGVuKTsKK30KKwogaW50IGludGVsX3Zn
dF9iYWxsb29uKHN0cnVjdCBpOTE1X2dndHQgKmdndHQpOwogdm9pZCBpbnRlbF92Z3RfZGViYWxs
b29uKHN0cnVjdCBpOTE1X2dndHQgKmdndHQpOwogCi0tIAoxLjguMy4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
