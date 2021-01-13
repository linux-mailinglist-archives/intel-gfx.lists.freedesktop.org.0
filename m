Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 377512F54C7
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 23:05:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C5F86EC7B;
	Wed, 13 Jan 2021 22:05:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8CAC6EC78
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 22:05:34 +0000 (UTC)
IronPort-SDR: +PZ06LL2uNjrtNvCH3s3Gj+zX172w6n/+f/a2UskYveGZ1/hC8jgmdbCOssAyb+Yw7Zabh57JQ
 L/dY5d6kKBAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="239817538"
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="239817538"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 14:05:33 -0800
IronPort-SDR: 0IiFd4Ac4N87xZkiLh6wVSkRrnEcs/yT9ZdHl9tgcJ7L2S9t3BjY8i4O0/9+v/dy0gssQHYMrT
 gPksHoGNY1jA==
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="400696586"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 13 Jan 2021 14:05:33 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 14:09:34 -0800
Message-Id: <20210113220935.4151-18-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210113220935.4151-1-manasi.d.navare@intel.com>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 17/18] drm/i915: Fix vblank timestamps with
 VRR
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRv
IGdldCBzZW5zaWJsZSB2YmxhbmsgdGltZXN0YW1waW5nIGJlaGF2aW91ciB3ZSBuZWVkIHRvIGZl
ZWQKdGhlIHZtYXggYmFzZWQgdGltaW5ncyB0byB0aGUgdmJsYW5rIGNvZGUsIG90aGVyd2lzZSBp
dCdsbCBjaG9wCm9mZiB0aGUgc2NhbmxpbmUgY291bnRlciB3aGVuIGl0IGV4Y2VlZHMgdGhlIG1p
bnVtdW0gdnRvdGFsLgoKQWRkaXRpb25hbGx5IHdpdGggVlJSIHdlIGhhdmUgdGhyZWUgY2FzZXMg
dG8gY29uc2lkZXIgd2hlbiB3ZQpnZW5lcmF0ZSB0aGUgdmJsYW5rIHRpbWVzdGFtcDoKMSkgd2Ug
YXJlIGluIHZlcnRpY2FsIGFjdGl2ZQogIC0+IG5vdGhpbmcgc3BlY2lhbCBuZWVkcyB0byBiZSBk
b25lLCBqdXN0IHJldHVybiB0aGUgY3VycmVudAogICAgIHNjYW5vdXQgcG9zaXRpb24gYW5kIHRo
ZSBjb3JlIHdpbGwgY2FsY3VsYXRlIHRoZSB0aW1lc3RhbXAKICAgICBjb3JyZXNwb25kaW5nIHRv
IHRoZSBwYXN0IHRpbWUgd2hlbiB0aGUgY3VycmVudCB2ZXJ0aWNhbAogICAgIGFjdGl2ZSBzdGFy
dGVkCjIpIHdlIGFyZSBpbiB2ZXJ0aWNhbCBibGFuayBhbmQgbm8gcHVzaCBoYXMgYmVlbiBzZW50
CiAgLT4gdGhlIGhhcmR3YXJlIHdpbGwga2VlcCBleHRlbmRpbmcgdGhlIHZibGFuayBwcmVzdW1h
Ymx5CiAgICAgdG8gaXRzIG1heGltdW0gbGVuZ3RoLCBzbyB3ZSBtYWtlIHRoZSB0aW1lc3RtYXAg
bWF0Y2ggdGhlCiAgICAgZXhwZWN0ZWQgdGltZSB3aGVuIHRoZSBtYXggbGVuZ3RoIHZibGFuayB3
aWxsIGVuZC4gU2luY2UKICAgICB0aGUgdGltaW5ncyB1c2VkIGZvciB0aGlzIGFyZSBub3cgYmFz
ZWQgb24gdm1heCBub3RoaW5nCiAgICAgc3BlY2lhbCBhY3R1YWxseSBuZWVkcyB0byBiZSBkb25l
CjMpIHdlIGFyZSBpbiB2YmxhbmsgYW5kIGEgcHVzaCBoYXMgYmVlbiBzZW50IHNvIHRoZSB2Ymxh
bmsgaXMKICAgYWJvdXQgdG8gdGVybWluYXRlCiAgLT4gcHJlc3VtYWJseSB3ZSB3YW50IHRoZSB0
aW1lc3RtYXAgdG8gYWNjdXJhdGVseSByZWZsZWN0CiAgICAgd2hlbiB0aGUgdmJsYW5rIHdpbGwg
dGVybWluYXRlLCBzbyB3ZSB1c2UgdGhlIHNhbXBsZWQKICAgICBmcmFtZSB0aW1lc3RhbXAgdnMu
IGN1cnJlbnQgdGltZXN0YW1wIHRvIGd1ZXNzdGltYXRlCiAgICAgaG93IGZhciBhbG9uZyB0aGUg
dmJsYW5rIGV4aXQgd2UgYXJlLCBhbmQgdGhlbiB3ZQogICAgIGFkanVzdCB0aGUgcmVwb3J0ZWQg
c2Nhbm91dCBwb3NpdGlvbiBhY2NvcmRpbmdseSBzbwogICAgIHRoYXQgdGhlIGNvcmUgd2lsbCBz
ZWUgdGhhdCB0aGUgdmJsYW5rIGlzIGNsb3NlIHRvCiAgICAgZW5kaW5nLgoKU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgICB8IDE3ICsrKysr
KysrKysrKy0tLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oICB8ICA0ICsrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMg
ICAgICAgIHwgIDQgKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAgICAg
ICAgICAgICAgfCAxNSArKysrKysrKysrKysrKy0KIDQgZmlsZXMgY2hhbmdlZCwgMzQgaW5zZXJ0
aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCmluZGV4IDRlZDI3OWYwMzRiZS4uZDk4OWJhYTQ0YzM3IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTM4MzUsMTAg
KzEzODM1LDE3IEBAIGludGVsX2NydGNfdXBkYXRlX2FjdGl2ZV90aW1pbmdzKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewogCXN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOwogCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwotCWNvbnN0
IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0KLQkJJmNydGNfc3RhdGUt
Pmh3LmFkanVzdGVkX21vZGU7CisJc3RydWN0IGRybV9kaXNwbGF5X21vZGUgYWRqdXN0ZWRfbW9k
ZSA9CisJCWNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGU7CisKKwlpZiAoY3J0Y19zdGF0ZS0+
dnJyLmVuYWJsZSkgeworCQlhZGp1c3RlZF9tb2RlLmNydGNfdnRvdGFsID0gY3J0Y19zdGF0ZS0+
dnJyLnZtYXg7CisJCWFkanVzdGVkX21vZGUuY3J0Y192YmxhbmtfZW5kID0gY3J0Y19zdGF0ZS0+
dnJyLnZtYXg7CisJCWFkanVzdGVkX21vZGUuY3J0Y192Ymxhbmtfc3RhcnQgPSBpbnRlbF92cnJf
dm1pbl92Ymxhbmtfc3RhcnQoY3J0Y19zdGF0ZSk7CisJCWNydGMtPnZtYXhfdmJsYW5rX3N0YXJ0
ID0gaW50ZWxfdnJyX3ZtYXhfdmJsYW5rX3N0YXJ0KGNydGNfc3RhdGUpOworCX0KIAotCWRybV9j
YWxjX3RpbWVzdGFtcGluZ19jb25zdGFudHMoJmNydGMtPmJhc2UsIGFkanVzdGVkX21vZGUpOwor
CWRybV9jYWxjX3RpbWVzdGFtcGluZ19jb25zdGFudHMoJmNydGMtPmJhc2UsICZhZGp1c3RlZF9t
b2RlKTsKIAogCWNydGMtPm1vZGVfZmxhZ3MgPSBjcnRjX3N0YXRlLT5tb2RlX2ZsYWdzOwogCkBA
IC0xMzg3Miw4ICsxMzg3OSw4IEBAIGludGVsX2NydGNfdXBkYXRlX2FjdGl2ZV90aW1pbmdzKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCWlmIChJU19HRU4oZGV2
X3ByaXYsIDIpKSB7CiAJCWludCB2dG90YWw7CiAKLQkJdnRvdGFsID0gYWRqdXN0ZWRfbW9kZS0+
Y3J0Y192dG90YWw7Ci0JCWlmIChhZGp1c3RlZF9tb2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdf
SU5URVJMQUNFKQorCQl2dG90YWwgPSBhZGp1c3RlZF9tb2RlLmNydGNfdnRvdGFsOworCQlpZiAo
YWRqdXN0ZWRfbW9kZS5mbGFncyAmIERSTV9NT0RFX0ZMQUdfSU5URVJMQUNFKQogCQkJdnRvdGFs
IC89IDI7CiAKIAkJY3J0Yy0+c2NhbmxpbmVfb2Zmc2V0ID0gdnRvdGFsIC0gMTsKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKaW5kZXgg
YWEwODQyMDI4NDE0Li4zZmVlNjEzNjE3ZjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCkBAIC02NzksNiArNjc5LDggQEAgc3Ry
dWN0IGludGVsX2NydGNfc2NhbGVyX3N0YXRlIHsKICNkZWZpbmUgSTkxNV9NT0RFX0ZMQUdfRFNJ
X1VTRV9URTEgKDE8PDQpCiAvKiBGbGFnIHRvIGluZGljYXRlIG1pcGkgZHNpIHBlcmlvZGljIGNv
bW1hbmQgbW9kZSB3aGVyZSB3ZSBkbyBub3QgZ2V0IFRFICovCiAjZGVmaW5lIEk5MTVfTU9ERV9G
TEFHX0RTSV9QRVJJT0RJQ19DTURfTU9ERSAoMTw8NSkKKy8qIERvIHRyaWNrcyB0byBtYWtlIHZi
bGFuayB0aW1lc3RhbXBzIHNhbmUgd2l0aCBWUlI/ICovCisjZGVmaW5lIEk5MTVfTU9ERV9GTEFH
X1ZSUiAoMTw8NikKIAogc3RydWN0IGludGVsX3dtX2xldmVsIHsKIAlib29sIGVuYWJsZTsKQEAg
LTExODYsNiArMTE4OCw4IEBAIHN0cnVjdCBpbnRlbF9jcnRjIHsKIAkvKiBJOTE1X01PREVfRkxB
R18qICovCiAJdTggbW9kZV9mbGFnczsKIAorCXUxNiB2bWF4X3ZibGFua19zdGFydDsKKwogCXN0
cnVjdCBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbl9zZXQgZW5hYmxlZF9wb3dlcl9kb21haW5z
OwogCXN0cnVjdCBpbnRlbF9vdmVybGF5ICpvdmVybGF5OwogCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF92cnIuYwppbmRleCA5YTE4YzM2ZTRhOWEuLmE0OTRkM2VjYjFiNSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jCkBAIC0xMzQsNiArMTM0LDgg
QEAgaW50ZWxfdnJyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlLAogCSAqLwogCWNydGNfc3RhdGUtPnZyci5waXBlbGluZV9mdWxsID0KIAkJbWluKDI1
NSwgY3J0Y19zdGF0ZS0+dnJyLnZtaW4gLSBhZGp1c3RlZF9tb2RlLT5jcnRjX3ZkaXNwbGF5IC0g
NCAtIDEpOworCisJY3J0Y19zdGF0ZS0+bW9kZV9mbGFncyB8PSBJOTE1X01PREVfRkxBR19WUlI7
CiB9CiAKIHZvaWQgaW50ZWxfdnJyX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwKQEAgLTIwMiw0ICsyMDQsNiBAQCB2b2lkIGludGVsX3Zycl9nZXRfY29uZmlnKHN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjLAogCQljcnRjX3N0YXRlLT52cnIuZmxpcGxpbmUgPSBpbnRlbF9kZV9y
ZWFkKGRldl9wcml2LCBUUkFOU19WUlJfRkxJUExJTkUoY3B1X3RyYW5zY29kZXIpKSArIDE7CiAJ
Y3J0Y19zdGF0ZS0+dnJyLnZtYXggPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBUUkFOU19WUlJf
Vk1BWChjcHVfdHJhbnNjb2RlcikpICsgMTsKIAljcnRjX3N0YXRlLT52cnIudm1pbiA9IGludGVs
X2RlX3JlYWQoZGV2X3ByaXYsIFRSQU5TX1ZSUl9WTUlOKGNwdV90cmFuc2NvZGVyKSkgKyAxOwor
CisJY3J0Y19zdGF0ZS0+bW9kZV9mbGFncyB8PSBJOTE1X01PREVfRkxBR19WUlI7CiB9CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9pcnEuYwppbmRleCA4NTA1Y2VjYTg3ZDUuLmU4MWFmY2IyZjQzZSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2lycS5jCkBAIC04OTMsNyArODkzLDIwIEBAIHN0YXRpYyBib29sIGk5MTVf
Z2V0X2NydGNfc2Nhbm91dHBvcyhzdHJ1Y3QgZHJtX2NydGMgKl9jcnRjLAogCWlmIChzdGltZSkK
IAkJKnN0aW1lID0ga3RpbWVfZ2V0KCk7CiAKLQlpZiAodXNlX3NjYW5saW5lX2NvdW50ZXIpIHsK
KwlpZiAoY3J0Yy0+bW9kZV9mbGFncyAmIEk5MTVfTU9ERV9GTEFHX1ZSUikgeworCQlpbnQgc2Nh
bmxpbmVzID0gaW50ZWxfY3J0Y19zY2FubGluZXNfc2luY2VfZnJhbWVfdGltZXN0YW1wKGNydGMp
OworCisJCXBvc2l0aW9uID0gX19pbnRlbF9nZXRfY3J0Y19zY2FubGluZShjcnRjKTsKKworCQkv
KgorCQkgKiBBbHJlYWR5IGV4aXRpbmcgdmJsYW5rPyBJZiBzbywgc2hpZnQgb3VyIHBvc2l0aW9u
CisJCSAqIHNvIGl0IGxvb2tzIGxpa2Ugd2UncmUgYWxyZWFkeSBhcHBvcmFjaGluZyB0aGUgZnVs
bAorCQkgKiB2YmxhbmsgZW5kLiBUaGlzIHNob3VsZCBtYWtlIHRoZSBnZW5lcmF0ZWQgdGltZXN0
YW1wCisJCSAqIG1vcmUgb3IgbGVzcyBtYXRjaCB3aGVuIHRoZSBhY3RpdmUgcG9ydGlvbiB3aWxs
IHN0YXJ0LgorCQkgKi8KKwkJaWYgKHBvc2l0aW9uID49IHZibF9zdGFydCAmJiBzY2FubGluZXMg
PCBwb3NpdGlvbikKKwkJCXBvc2l0aW9uID0gbWluKGNydGMtPnZtYXhfdmJsYW5rX3N0YXJ0ICsg
c2NhbmxpbmVzLCB2dG90YWwgLSAxKTsKKwl9IGlmICh1c2Vfc2NhbmxpbmVfY291bnRlcikgewog
CQkvKiBObyBvYnZpb3VzIHBpeGVsY291bnQgcmVnaXN0ZXIuIE9ubHkgcXVlcnkgdmVydGljYWwK
IAkJICogc2Nhbm91dCBwb3NpdGlvbiBmcm9tIERpc3BsYXkgc2NhbiBsaW5lIHJlZ2lzdGVyLgog
CQkgKi8KLS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
