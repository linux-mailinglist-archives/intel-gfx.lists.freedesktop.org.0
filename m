Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5AB2AF832
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 19:36:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BB316E0CF;
	Wed, 11 Nov 2020 18:36:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FC566E0B9
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Nov 2020 18:36:33 +0000 (UTC)
IronPort-SDR: MdmnBaN8ItEEA2fXXEGf0sEgaXyJoYJTYgkejjtOaXwLt+srloMbuKVbokmD4eZV1oGCTq2Cp8
 ZrllgOGVGqYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="157973142"
X-IronPort-AV: E=Sophos;i="5.77,470,1596524400"; d="scan'208";a="157973142"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 10:36:32 -0800
IronPort-SDR: OYf413l+q6mhJjuoMowcVV4bfDpLhXGjmvadWkGqkSe+0KSq5AJjjpHbKQqUYxua9GL4xcDcJ3
 IKuTO82aduKw==
X-IronPort-AV: E=Sophos;i="5.77,470,1596524400"; d="scan'208";a="473948841"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 11 Nov 2020 10:36:32 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Nov 2020 10:38:47 -0800
Message-Id: <20201111183847.23966-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201111000819.29809-4-manasi.d.navare@intel.com>
References: <20201111000819.29809-4-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 4/7] drm/i915: Add hw.pipe_mode to allow
 bigjoiner pipe/transcoder split
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

RnJvbTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4KCldpdGggYmlnam9pbmVyLCB0aGVyZSB3aWxsIGJlIDIgcGlwZXMgZHJpdmluZyAyIGhhbHZl
cyBvZiAxIHRyYW5zY29kZXIsCmJlY2F1c2Ugb2YgdGhpcywgd2UgbmVlZCBhIHBpcGVfbW9kZSBm
b3IgdmFyaW91cyBjYWxjdWxhdGlvbnMsIGluY2x1ZGluZwpmb3IgZXhhbXBsZSB3YXRlcm1hcmtz
LCBwbGFuZSBjbGlwcGluZywgZXRjLgoKdjExOgoqIHNldCBwaXBlIG1vZGUgb25seSBpZiBhY3Rp
dmUgKE1hbmFzaSkKdjEwOgoqIHJlbW92ZSByZWR1bmRhbnQgcGlwZV9tb2RlIGFzc2lnbm1lbnQg
KFZpbGxlKQp2OToKKiBwaXBlX21vZGUgaW4gc3RhdGUgZHVtcCBuZCBzdGF0ZSBjaGVjayAoVmls
bGUpCnY4OgoqIEFkZCBwaXBlX21vZGUgaW4gcmVhZG91dCBpbiB2ZXJpZnlfY3J0Y19zdGF0ZSAo
VmlsbGUpCnY3OgoqIFJlbW92ZSByZWR1bmRhbnQgY29tbWVudCAoVmlsbGUpCiogSnVzdCBrZWVw
IG1vZGUgaW5zdGVhZCBvZiBwaXBlX21vZGUgKFZpbGxlKQp2NjoKKiByZW5hbWluZyBpbiBzZXBh
cmF0ZSBmdW5jdGlvbiwgb25seSBwaXBlX21vZGUgaGVyZSAoVmlsbGUpCiogQWRkIGRlc2NyaXB0
aW9uIChNYWFydGVuKQp2NToKKiBSZWJhc2UgKE1hbmFzaSkKdjQ6CiogTWFudWFsIHJlYmFzZSAo
TWFuYXNpKQp2MzoKKiBDaGFuZ2Ugc3RhdGUgdG8gY3J0Y19zdGF0ZSwgZml4IHJlYmFzZSBlcnIg
IChNYW5hc2kpCnYyOgoqIE1hbnVhbCBSZWJhc2UgKE1hbmFzaSkKClNpZ25lZC1vZmYtYnk6IE1h
YXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KUmV2aWV3ZWQt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgNTYgKysrKysr
KysrLS0tLS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8
IDExICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgIHwg
NzYgKysrKysrKysrLS0tLS0tLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCA4NSBpbnNlcnRpb25zKCsp
LCA1OCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCmluZGV4IDA0ZGRhODJkNjEzMi4uYzMyODM1ZTM3ZjBmIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNjA2NywxOCArNjA2Nywx
NiBAQCBza2xfdXBkYXRlX3NjYWxlcihzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSwgYm9vbCBmb3JjZV9kZXRhY2gsCiAKIHN0YXRpYyBpbnQgc2tsX3VwZGF0ZV9zY2FsZXJfY3J0
YyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKLQljb25zdCBzdHJ1Y3Qg
ZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9Ci0JCSZjcnRjX3N0YXRlLT5ody5hZGp1
c3RlZF9tb2RlOworCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICpwaXBlX21vZGUgPSAm
Y3J0Y19zdGF0ZS0+aHcucGlwZV9tb2RlOwogCWludCB3aWR0aCwgaGVpZ2h0OwogCiAJaWYgKGNy
dGNfc3RhdGUtPnBjaF9wZml0LmVuYWJsZWQpIHsKIAkJd2lkdGggPSBkcm1fcmVjdF93aWR0aCgm
Y3J0Y19zdGF0ZS0+cGNoX3BmaXQuZHN0KTsKIAkJaGVpZ2h0ID0gZHJtX3JlY3RfaGVpZ2h0KCZj
cnRjX3N0YXRlLT5wY2hfcGZpdC5kc3QpOwogCX0gZWxzZSB7Ci0JCXdpZHRoID0gYWRqdXN0ZWRf
bW9kZS0+Y3J0Y19oZGlzcGxheTsKLQkJaGVpZ2h0ID0gYWRqdXN0ZWRfbW9kZS0+Y3J0Y192ZGlz
cGxheTsKKwkJd2lkdGggPSBwaXBlX21vZGUtPmNydGNfaGRpc3BsYXk7CisJCWhlaWdodCA9IHBp
cGVfbW9kZS0+Y3J0Y192ZGlzcGxheTsKIAl9Ci0KIAlyZXR1cm4gc2tsX3VwZGF0ZV9zY2FsZXIo
Y3J0Y19zdGF0ZSwgIWNydGNfc3RhdGUtPmh3LmFjdGl2ZSwKIAkJCQkgU0tMX0NSVENfSU5ERVgs
CiAJCQkJICZjcnRjX3N0YXRlLT5zY2FsZXJfc3RhdGUuc2NhbGVyX2lkLApAQCAtODA5Miw3ICs4
MDkwLDcgQEAgc3RhdGljIGJvb2wgaW50ZWxfY3J0Y19zdXBwb3J0c19kb3VibGVfd2lkZShjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAogc3RhdGljIHUzMiBpbGtfcGlwZV9waXhlbF9y
YXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewotCXUzMiBw
aXhlbF9yYXRlID0gY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX2Nsb2NrOworCXUz
MiBwaXhlbF9yYXRlID0gY3J0Y19zdGF0ZS0+aHcucGlwZV9tb2RlLmNydGNfY2xvY2s7CiAJdW5z
aWduZWQgaW50IHBpcGVfdywgcGlwZV9oLCBwZml0X3csIHBmaXRfaDsKIAogCS8qCkBAIC04MTI1
LDcgKzgxMjMsMTEgQEAgc3RhdGljIHUzMiBpbGtfcGlwZV9waXhlbF9yYXRlKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogc3RhdGljIHZvaWQgaW50ZWxfZW5jb2Rl
cl9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJCSAgICAgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CisJc3RydWN0IGRybV9kaXNwbGF5
X21vZGUgKnBpcGVfbW9kZSA9ICZjcnRjX3N0YXRlLT5ody5waXBlX21vZGU7CisKIAllbmNvZGVy
LT5nZXRfY29uZmlnKGVuY29kZXIsIGNydGNfc3RhdGUpOworCisJKnBpcGVfbW9kZSA9IGNydGNf
c3RhdGUtPmh3LmFkanVzdGVkX21vZGU7CiB9CiAKIHN0YXRpYyB2b2lkIGludGVsX2NydGNfY29t
cHV0ZV9waXhlbF9yYXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQpAQCAt
ODEzNSw3ICs4MTM3LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfY3J0Y19jb21wdXRlX3BpeGVsX3Jh
dGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJaWYgKEhBU19HTUNIKGRl
dl9wcml2KSkKIAkJLyogRklYTUUgY2FsY3VsYXRlIHByb3BlciBwaXBlIHBpeGVsIHJhdGUgZm9y
IEdNQ0ggcGZpdCAqLwogCQljcnRjX3N0YXRlLT5waXhlbF9yYXRlID0KLQkJCWNydGNfc3RhdGUt
Pmh3LmFkanVzdGVkX21vZGUuY3J0Y19jbG9jazsKKwkJCWNydGNfc3RhdGUtPmh3LnBpcGVfbW9k
ZS5jcnRjX2Nsb2NrOwogCWVsc2UKIAkJY3J0Y19zdGF0ZS0+cGl4ZWxfcmF0ZSA9CiAJCQlpbGtf
cGlwZV9waXhlbF9yYXRlKGNydGNfc3RhdGUpOwpAQCAtODE0NSw5ICs4MTQ3LDExIEBAIHN0YXRp
YyBpbnQgaW50ZWxfY3J0Y19jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywK
IAkJCQkgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykKIHsKIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsK
LQljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9ICZwaXBlX2Nv
bmZpZy0+aHcuYWRqdXN0ZWRfbW9kZTsKKwlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqcGlwZV9t
b2RlID0gJnBpcGVfY29uZmlnLT5ody5waXBlX21vZGU7CiAJaW50IGNsb2NrX2xpbWl0ID0gZGV2
X3ByaXYtPm1heF9kb3RjbGtfZnJlcTsKIAorCSpwaXBlX21vZGUgPSBwaXBlX2NvbmZpZy0+aHcu
YWRqdXN0ZWRfbW9kZTsKKwogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgNCkgewogCQljbG9j
a19saW1pdCA9IGRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSAqIDkgLyAxMDsKIApAQCAtODE1Niwx
NiArODE2MCwxNiBAQCBzdGF0aWMgaW50IGludGVsX2NydGNfY29tcHV0ZV9jb25maWcoc3RydWN0
IGludGVsX2NydGMgKmNydGMsCiAJCSAqIGlzID4gOTAlIG9mIHRoZSAoZGlzcGxheSkgY29yZSBz
cGVlZC4KIAkJICovCiAJCWlmIChpbnRlbF9jcnRjX3N1cHBvcnRzX2RvdWJsZV93aWRlKGNydGMp
ICYmCi0JCSAgICBhZGp1c3RlZF9tb2RlLT5jcnRjX2Nsb2NrID4gY2xvY2tfbGltaXQpIHsKKwkJ
ICAgIHBpcGVfbW9kZS0+Y3J0Y19jbG9jayA+IGNsb2NrX2xpbWl0KSB7CiAJCQljbG9ja19saW1p
dCA9IGRldl9wcml2LT5tYXhfZG90Y2xrX2ZyZXE7CiAJCQlwaXBlX2NvbmZpZy0+ZG91YmxlX3dp
ZGUgPSB0cnVlOwogCQl9CiAJfQogCi0JaWYgKGFkanVzdGVkX21vZGUtPmNydGNfY2xvY2sgPiBj
bG9ja19saW1pdCkgeworCWlmIChwaXBlX21vZGUtPmNydGNfY2xvY2sgPiBjbG9ja19saW1pdCkg
ewogCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwKIAkJCSAgICAicmVxdWVzdGVkIHBpeGVs
IGNsb2NrICglZCBrSHopIHRvbyBoaWdoIChtYXg6ICVkIGtIeiwgZG91YmxlIHdpZGU6ICVzKVxu
IiwKLQkJCSAgICBhZGp1c3RlZF9tb2RlLT5jcnRjX2Nsb2NrLCBjbG9ja19saW1pdCwKKwkJCSAg
ICBwaXBlX21vZGUtPmNydGNfY2xvY2ssIGNsb2NrX2xpbWl0LAogCQkJICAgIHllc25vKHBpcGVf
Y29uZmlnLT5kb3VibGVfd2lkZSkpOwogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CkBAIC04MjA4LDcg
KzgyMTIsNyBAQCBzdGF0aWMgaW50IGludGVsX2NydGNfY29tcHV0ZV9jb25maWcoc3RydWN0IGlu
dGVsX2NydGMgKmNydGMsCiAJICogV2FQcnVuZU1vZGVXaXRoSW5jb3JyZWN0SHN5bmNPZmZzZXQ6
Y3RnLGVsayxpbGssc25iLGl2Yix2bHYsaHN3LgogCSAqLwogCWlmICgoSU5URUxfR0VOKGRldl9w
cml2KSA+IDQgfHwgSVNfRzRYKGRldl9wcml2KSkgJiYKLQkJYWRqdXN0ZWRfbW9kZS0+Y3J0Y19o
c3luY19zdGFydCA9PSBhZGp1c3RlZF9tb2RlLT5jcnRjX2hkaXNwbGF5KQorCSAgICBwaXBlX21v
ZGUtPmNydGNfaHN5bmNfc3RhcnQgPT0gcGlwZV9tb2RlLT5jcnRjX2hkaXNwbGF5KQogCQlyZXR1
cm4gLUVJTlZBTDsKIAogCWludGVsX2NydGNfY29tcHV0ZV9waXhlbF9yYXRlKHBpcGVfY29uZmln
KTsKQEAgLTExNDA2LDcgKzExNDEwLDEyIEBAIHN0YXRpYyBib29sIGludGVsX2NydGNfZ2V0X3Bp
cGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogewogCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwogCi0JcmV0dXJuIGRl
dl9wcml2LT5kaXNwbGF5LmdldF9waXBlX2NvbmZpZyhjcnRjLCBwaXBlX2NvbmZpZyk7CisJaWYg
KCFkZXZfcHJpdi0+ZGlzcGxheS5nZXRfcGlwZV9jb25maWcoY3J0YywgcGlwZV9jb25maWcpKQor
CQlyZXR1cm4gZmFsc2U7CisKKwlwaXBlX2NvbmZpZy0+aHcucGlwZV9tb2RlID0gcGlwZV9jb25m
aWctPmh3LmFkanVzdGVkX21vZGU7CisKKwlyZXR1cm4gdHJ1ZTsKIH0KIAogc3RhdGljIHUzMiBp
bnRlbF9jdXJzb3JfYmFzZShjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0
YXRlKQpAQCAtMTI3NTcsMTUgKzEyNzY2LDE1IEBAIHN0YXRpYyBib29sIGM4X3BsYW5lc19jaGFu
Z2VkKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkKIAogc3Rh
dGljIHUxNiBoc3dfbGluZXRpbWVfd20oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpCiB7Ci0JY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21v
ZGUgPQotCQkmY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZTsKKwljb25zdCBzdHJ1Y3QgZHJt
X2Rpc3BsYXlfbW9kZSAqcGlwZV9tb2RlID0KKwkJJmNydGNfc3RhdGUtPmh3LnBpcGVfbW9kZTsK
IAlpbnQgbGluZXRpbWVfd207CiAKIAlpZiAoIWNydGNfc3RhdGUtPmh3LmVuYWJsZSkKIAkJcmV0
dXJuIDA7CiAKLQlsaW5ldGltZV93bSA9IERJVl9ST1VORF9DTE9TRVNUKGFkanVzdGVkX21vZGUt
PmNydGNfaHRvdGFsICogMTAwMCAqIDgsCi0JCQkJCWFkanVzdGVkX21vZGUtPmNydGNfY2xvY2sp
OworCWxpbmV0aW1lX3dtID0gRElWX1JPVU5EX0NMT1NFU1QocGlwZV9tb2RlLT5jcnRjX2h0b3Rh
bCAqIDEwMDAgKiA4LAorCQkJCQlwaXBlX21vZGUtPmNydGNfY2xvY2spOwogCiAJcmV0dXJuIG1p
bihsaW5ldGltZV93bSwgMHgxZmYpOwogfQpAQCAtMTMyNTIsNyArMTMyNjEsMTAgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfZHVtcF9waXBlX2NvbmZpZyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqcGlwZV9jb25maWcsCiAJZHJtX21vZGVfZGVidWdfcHJpbnRtb2RlbGluZSgmcGlwZV9jb25m
aWctPmh3Lm1vZGUpOwogCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiYWRqdXN0ZWQgbW9k
ZTpcbiIpOwogCWRybV9tb2RlX2RlYnVnX3ByaW50bW9kZWxpbmUoJnBpcGVfY29uZmlnLT5ody5h
ZGp1c3RlZF9tb2RlKTsKKwlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgInBpcGUgbW9kZTpc
biIpOworCWRybV9tb2RlX2RlYnVnX3ByaW50bW9kZWxpbmUoJnBpcGVfY29uZmlnLT5ody5waXBl
X21vZGUpOwogCWludGVsX2R1bXBfY3J0Y190aW1pbmdzKGRldl9wcml2LCAmcGlwZV9jb25maWct
Pmh3LmFkanVzdGVkX21vZGUpOworCWludGVsX2R1bXBfY3J0Y190aW1pbmdzKGRldl9wcml2LCAm
cGlwZV9jb25maWctPmh3LnBpcGVfbW9kZSk7CiAJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0s
CiAJCSAgICAicG9ydCBjbG9jazogJWQsIHBpcGUgc3JjIHNpemU6ICVkeCVkLCBwaXhlbCByYXRl
ICVkXG4iLAogCQkgICAgcGlwZV9jb25maWctPnBvcnRfY2xvY2ssCkBAIC0xMzM5NSw4ICsxMzQw
Nyw5IEBAIGludGVsX2NydGNfY29weV91YXBpX3RvX2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQogCWNydGNfc3RhdGUtPmh3LmVuYWJsZSA9IGNydGNfc3RhdGUt
PnVhcGkuZW5hYmxlOwogCWNydGNfc3RhdGUtPmh3LmFjdGl2ZSA9IGNydGNfc3RhdGUtPnVhcGku
YWN0aXZlOwogCWNydGNfc3RhdGUtPmh3Lm1vZGUgPSBjcnRjX3N0YXRlLT51YXBpLm1vZGU7Ci0J
Y3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZSA9IGNydGNfc3RhdGUtPnVhcGkuYWRqdXN0ZWRf
bW9kZTsKKwljcnRjX3N0YXRlLT5ody5waXBlX21vZGUgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3Rl
ZF9tb2RlID0gY3J0Y19zdGF0ZS0+dWFwaS5hZGp1c3RlZF9tb2RlOwogCWNydGNfc3RhdGUtPmh3
LnNjYWxpbmdfZmlsdGVyID0gY3J0Y19zdGF0ZS0+dWFwaS5zY2FsaW5nX2ZpbHRlcjsKKwogCWlu
dGVsX2NydGNfY29weV91YXBpX3RvX2h3X3N0YXRlX25vbW9kZXNldChjcnRjX3N0YXRlKTsKIH0K
IApAQCAtMTM1OTMsNiArMTM2MDYsOSBAQCBpbnRlbF9tb2Rlc2V0X3BpcGVfY29uZmlnKHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykKIAkJICAgICJodyBtYXggYnBwOiAlaSwg
cGlwZSBicHA6ICVpLCBkaXRoZXJpbmc6ICVpXG4iLAogCQkgICAgYmFzZV9icHAsIHBpcGVfY29u
ZmlnLT5waXBlX2JwcCwgcGlwZV9jb25maWctPmRpdGhlcik7CiAKKwkvKiB3aXRob3V0IGJpZ2pv
aW5lciwgcGlwZV9tb2RlID09IGFkanVzdGVkX21vZGUgKi8KKwlwaXBlX2NvbmZpZy0+aHcucGlw
ZV9tb2RlID0gcGlwZV9jb25maWctPmh3LmFkanVzdGVkX21vZGU7CisKIAlyZXR1cm4gMDsKIH0K
IApAQCAtMTQwMDEsNiArMTQwMTcsMTAgQEAgaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3VycmVudF9jb25maWcsCiAKIAlQSVBFX0NPTkZf
Q0hFQ0tfWChvdXRwdXRfdHlwZXMpOwogCisJUElQRV9DT05GX0NIRUNLX0koaHcucGlwZV9tb2Rl
LmNydGNfaGRpc3BsYXkpOworCVBJUEVfQ09ORl9DSEVDS19JKGh3LnBpcGVfbW9kZS5jcnRjX2hk
aXNwbGF5KTsKKwlQSVBFX0NPTkZfQ0hFQ0tfSShody5waXBlX21vZGUuY3J0Y19oZGlzcGxheSk7
CisJUElQRV9DT05GX0NIRUNLX0koaHcucGlwZV9tb2RlLmNydGNfaGRpc3BsYXkpOwogCVBJUEVf
Q09ORl9DSEVDS19JKGh3LmFkanVzdGVkX21vZGUuY3J0Y19oZGlzcGxheSk7CiAJUElQRV9DT05G
X0NIRUNLX0koaHcuYWRqdXN0ZWRfbW9kZS5jcnRjX2h0b3RhbCk7CiAJUElQRV9DT05GX0NIRUNL
X0koaHcuYWRqdXN0ZWRfbW9kZS5jcnRjX2hibGFua19zdGFydCk7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IDZlNzJjOWQ1
Mjg0My4uYTliZWUyMmNkNTQ2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtODE3LDE1ICs4MTcsMjIgQEAgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgewogCSAqIFRoZSBmb2xsb3dpbmcgbWVtYmVycyBhcmUgdXNlZCB0byB2
ZXJpZnkgdGhlIGhhcmR3YXJlIHN0YXRlOgogCSAqIC0gZW5hYmxlCiAJICogLSBhY3RpdmUKLQkg
KiAtIG1vZGUgLyBhZGp1c3RlZF9tb2RlCisJICogLSBtb2RlL2FkanVzdGVkX21vZGUKIAkgKiAt
IGNvbG9yIHByb3BlcnR5IGJsb2JzLgogCSAqCiAJICogRHVyaW5nIGluaXRpYWwgaHcgcmVhZG91
dCwgdGhleSBuZWVkIHRvIGJlIGNvcGllZCB0byB1YXBpLgorCSAqCisJICogQmlnam9pbmVyIHdp
bGwgYWxsb3cgYSB0cmFuc2NvZGVyIG1vZGUgdGhhdCBzcGFucyAyIHBpcGVzOworCSAqIFVzZSB0
aGUgcGlwZV9tb2RlIGZvciBjYWxjdWxhdGlvbnMgbGlrZSB3YXRlcm1hcmtzLCBwaXBlCisJICog
c2NhbGVyLCBhbmQgYmFuZHdpZHRoLgorCSAqCisJICogVXNlIGFkanVzdGVkX21vZGUgZm9yIHRo
aW5ncyB0aGF0IG5lZWQgdG8ga25vdyB0aGUgZnVsbAorCSAqIG1vZGUgb24gdGhlIHRyYW5zY29k
ZXIsIHdoaWNoIHNwYW5zIGFsbCBwaXBlcy4KIAkgKi8KIAlzdHJ1Y3QgewogCQlib29sIGFjdGl2
ZSwgZW5hYmxlOwogCQlzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmRlZ2FtbWFfbHV0LCAqZ2Ft
bWFfbHV0LCAqY3RtOwotCQlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSBtb2RlLCBhZGp1c3RlZF9t
b2RlOworCQlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSBtb2RlLCBwaXBlX21vZGUsIGFkanVzdGVk
X21vZGU7CiAJCWVudW0gZHJtX3NjYWxpbmdfZmlsdGVyIHNjYWxpbmdfZmlsdGVyOwogCX0gaHc7
CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IGJiZWM1NmY5NzgzMi4uNGQ5YzY5YWUwMzli
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTg5OSwxMiArODk5LDEyIEBAIHN0YXRpYyB2
b2lkIHBudl91cGRhdGVfd20oc3RydWN0IGludGVsX2NydGMgKnVudXNlZF9jcnRjKQogCiAJY3J0
YyA9IHNpbmdsZV9lbmFibGVkX2NydGMoZGV2X3ByaXYpOwogCWlmIChjcnRjKSB7Ci0JCWNvbnN0
IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0KLQkJCSZjcnRjLT5jb25m
aWctPmh3LmFkanVzdGVkX21vZGU7CisJCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICpw
aXBlX21vZGUgPQorCQkJJmNydGMtPmNvbmZpZy0+aHcucGlwZV9tb2RlOwogCQljb25zdCBzdHJ1
Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9CiAJCQljcnRjLT5iYXNlLnByaW1hcnktPnN0YXRlLT5m
YjsKIAkJaW50IGNwcCA9IGZiLT5mb3JtYXQtPmNwcFswXTsKLQkJaW50IGNsb2NrID0gYWRqdXN0
ZWRfbW9kZS0+Y3J0Y19jbG9jazsKKwkJaW50IGNsb2NrID0gcGlwZV9tb2RlLT5jcnRjX2Nsb2Nr
OwogCiAJCS8qIERpc3BsYXkgU1IgKi8KIAkJd20gPSBpbnRlbF9jYWxjdWxhdGVfd20oY2xvY2ss
ICZwbnZfZGlzcGxheV93bSwKQEAgLTExMzUsOCArMTEzNSw4IEBAIHN0YXRpYyB1MTYgZzR4X2Nv
bXB1dGVfd20oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiB7CiAJ
c3RydWN0IGludGVsX3BsYW5lICpwbGFuZSA9IHRvX2ludGVsX3BsYW5lKHBsYW5lX3N0YXRlLT51
YXBpLnBsYW5lKTsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KHBsYW5lLT5iYXNlLmRldik7Ci0JY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVz
dGVkX21vZGUgPQotCQkmY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZTsKKwljb25zdCBzdHJ1
Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqcGlwZV9tb2RlID0KKwkJJmNydGNfc3RhdGUtPmh3LnBpcGVf
bW9kZTsKIAl1bnNpZ25lZCBpbnQgbGF0ZW5jeSA9IGRldl9wcml2LT53bS5wcmlfbGF0ZW5jeVts
ZXZlbF0gKiAxMDsKIAl1bnNpZ25lZCBpbnQgY2xvY2ssIGh0b3RhbCwgY3BwLCB3aWR0aCwgd207
CiAKQEAgLTExNjMsOCArMTE2Myw4IEBAIHN0YXRpYyB1MTYgZzR4X2NvbXB1dGVfd20oY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJICAgIGxldmVsICE9IEc0WF9X
TV9MRVZFTF9OT1JNQUwpCiAJCWNwcCA9IG1heChjcHAsIDR1KTsKIAotCWNsb2NrID0gYWRqdXN0
ZWRfbW9kZS0+Y3J0Y19jbG9jazsKLQlodG90YWwgPSBhZGp1c3RlZF9tb2RlLT5jcnRjX2h0b3Rh
bDsKKwljbG9jayA9IHBpcGVfbW9kZS0+Y3J0Y19jbG9jazsKKwlodG90YWwgPSBwaXBlX21vZGUt
PmNydGNfaHRvdGFsOwogCiAJd2lkdGggPSBkcm1fcmVjdF93aWR0aCgmcGxhbmVfc3RhdGUtPnVh
cGkuZHN0KTsKIApAQCAtMTY2MCw4ICsxNjYwLDggQEAgc3RhdGljIHUxNiB2bHZfY29tcHV0ZV93
bV9sZXZlbChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIHsKIAlz
dHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lID0gdG9faW50ZWxfcGxhbmUocGxhbmVfc3RhdGUtPnVh
cGkucGxhbmUpOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUo
cGxhbmUtPmJhc2UuZGV2KTsKLQljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0
ZWRfbW9kZSA9Ci0JCSZjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlOworCWNvbnN0IHN0cnVj
dCBkcm1fZGlzcGxheV9tb2RlICpwaXBlX21vZGUgPQorCQkmY3J0Y19zdGF0ZS0+aHcucGlwZV9t
b2RlOwogCXVuc2lnbmVkIGludCBjbG9jaywgaHRvdGFsLCBjcHAsIHdpZHRoLCB3bTsKIAogCWlm
IChkZXZfcHJpdi0+d20ucHJpX2xhdGVuY3lbbGV2ZWxdID09IDApCkBAIC0xNjcxLDggKzE2NzEs
OCBAQCBzdGF0aWMgdTE2IHZsdl9jb21wdXRlX3dtX2xldmVsKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQlyZXR1cm4gMDsKIAogCWNwcCA9IHBsYW5lX3N0YXRl
LT5ody5mYi0+Zm9ybWF0LT5jcHBbMF07Ci0JY2xvY2sgPSBhZGp1c3RlZF9tb2RlLT5jcnRjX2Ns
b2NrOwotCWh0b3RhbCA9IGFkanVzdGVkX21vZGUtPmNydGNfaHRvdGFsOworCWNsb2NrID0gcGlw
ZV9tb2RlLT5jcnRjX2Nsb2NrOworCWh0b3RhbCA9IHBpcGVfbW9kZS0+Y3J0Y19odG90YWw7CiAJ
d2lkdGggPSBjcnRjX3N0YXRlLT5waXBlX3NyY193OwogCiAJaWYgKHBsYW5lLT5pZCA9PSBQTEFO
RV9DVVJTT1IpIHsKQEAgLTIyNjEsMTIgKzIyNjEsMTIgQEAgc3RhdGljIHZvaWQgaTk2NV91cGRh
dGVfd20oc3RydWN0IGludGVsX2NydGMgKnVudXNlZF9jcnRjKQogCWlmIChjcnRjKSB7CiAJCS8q
IHNlbGYtcmVmcmVzaCBoYXMgbXVjaCBoaWdoZXIgbGF0ZW5jeSAqLwogCQlzdGF0aWMgY29uc3Qg
aW50IHNyX2xhdGVuY3lfbnMgPSAxMjAwMDsKLQkJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21v
ZGUgKmFkanVzdGVkX21vZGUgPQotCQkJJmNydGMtPmNvbmZpZy0+aHcuYWRqdXN0ZWRfbW9kZTsK
KwkJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKnBpcGVfbW9kZSA9CisJCQkmY3J0Yy0+
Y29uZmlnLT5ody5waXBlX21vZGU7CiAJCWNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZi
ID0KIAkJCWNydGMtPmJhc2UucHJpbWFyeS0+c3RhdGUtPmZiOwotCQlpbnQgY2xvY2sgPSBhZGp1
c3RlZF9tb2RlLT5jcnRjX2Nsb2NrOwotCQlpbnQgaHRvdGFsID0gYWRqdXN0ZWRfbW9kZS0+Y3J0
Y19odG90YWw7CisJCWludCBjbG9jayA9IHBpcGVfbW9kZS0+Y3J0Y19jbG9jazsKKwkJaW50IGh0
b3RhbCA9IHBpcGVfbW9kZS0+Y3J0Y19odG90YWw7CiAJCWludCBoZGlzcGxheSA9IGNydGMtPmNv
bmZpZy0+cGlwZV9zcmNfdzsKIAkJaW50IGNwcCA9IGZiLT5mb3JtYXQtPmNwcFswXTsKIAkJaW50
IGVudHJpZXM7CkBAIC0yMzQ1LDggKzIzNDUsOCBAQCBzdGF0aWMgdm9pZCBpOXh4X3VwZGF0ZV93
bShzdHJ1Y3QgaW50ZWxfY3J0YyAqdW51c2VkX2NydGMpCiAJZmlmb19zaXplID0gZGV2X3ByaXYt
PmRpc3BsYXkuZ2V0X2ZpZm9fc2l6ZShkZXZfcHJpdiwgUExBTkVfQSk7CiAJY3J0YyA9IGludGVs
X2dldF9jcnRjX2Zvcl9wbGFuZShkZXZfcHJpdiwgUExBTkVfQSk7CiAJaWYgKGludGVsX2NydGNf
YWN0aXZlKGNydGMpKSB7Ci0JCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3Rl
ZF9tb2RlID0KLQkJCSZjcnRjLT5jb25maWctPmh3LmFkanVzdGVkX21vZGU7CisJCWNvbnN0IHN0
cnVjdCBkcm1fZGlzcGxheV9tb2RlICpwaXBlX21vZGUgPQorCQkJJmNydGMtPmNvbmZpZy0+aHcu
cGlwZV9tb2RlOwogCQljb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9CiAJCQljcnRj
LT5iYXNlLnByaW1hcnktPnN0YXRlLT5mYjsKIAkJaW50IGNwcDsKQEAgLTIzNTYsNyArMjM1Niw3
IEBAIHN0YXRpYyB2b2lkIGk5eHhfdXBkYXRlX3dtKHN0cnVjdCBpbnRlbF9jcnRjICp1bnVzZWRf
Y3J0YykKIAkJZWxzZQogCQkJY3BwID0gZmItPmZvcm1hdC0+Y3BwWzBdOwogCi0JCXBsYW5lYV93
bSA9IGludGVsX2NhbGN1bGF0ZV93bShhZGp1c3RlZF9tb2RlLT5jcnRjX2Nsb2NrLAorCQlwbGFu
ZWFfd20gPSBpbnRlbF9jYWxjdWxhdGVfd20ocGlwZV9tb2RlLT5jcnRjX2Nsb2NrLAogCQkJCQkg
ICAgICAgd21faW5mbywgZmlmb19zaXplLCBjcHAsCiAJCQkJCSAgICAgICBwZXNzaW1hbF9sYXRl
bmN5X25zKTsKIAkJZW5hYmxlZCA9IGNydGM7CkBAIC0yMzcyLDggKzIzNzIsOCBAQCBzdGF0aWMg
dm9pZCBpOXh4X3VwZGF0ZV93bShzdHJ1Y3QgaW50ZWxfY3J0YyAqdW51c2VkX2NydGMpCiAJZmlm
b19zaXplID0gZGV2X3ByaXYtPmRpc3BsYXkuZ2V0X2ZpZm9fc2l6ZShkZXZfcHJpdiwgUExBTkVf
Qik7CiAJY3J0YyA9IGludGVsX2dldF9jcnRjX2Zvcl9wbGFuZShkZXZfcHJpdiwgUExBTkVfQik7
CiAJaWYgKGludGVsX2NydGNfYWN0aXZlKGNydGMpKSB7Ci0JCWNvbnN0IHN0cnVjdCBkcm1fZGlz
cGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0KLQkJCSZjcnRjLT5jb25maWctPmh3LmFkanVzdGVk
X21vZGU7CisJCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICpwaXBlX21vZGUgPQorCQkJ
JmNydGMtPmNvbmZpZy0+aHcucGlwZV9tb2RlOwogCQljb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVm
ZmVyICpmYiA9CiAJCQljcnRjLT5iYXNlLnByaW1hcnktPnN0YXRlLT5mYjsKIAkJaW50IGNwcDsK
QEAgLTIzODMsNyArMjM4Myw3IEBAIHN0YXRpYyB2b2lkIGk5eHhfdXBkYXRlX3dtKHN0cnVjdCBp
bnRlbF9jcnRjICp1bnVzZWRfY3J0YykKIAkJZWxzZQogCQkJY3BwID0gZmItPmZvcm1hdC0+Y3Bw
WzBdOwogCi0JCXBsYW5lYl93bSA9IGludGVsX2NhbGN1bGF0ZV93bShhZGp1c3RlZF9tb2RlLT5j
cnRjX2Nsb2NrLAorCQlwbGFuZWJfd20gPSBpbnRlbF9jYWxjdWxhdGVfd20ocGlwZV9tb2RlLT5j
cnRjX2Nsb2NrLAogCQkJCQkgICAgICAgd21faW5mbywgZmlmb19zaXplLCBjcHAsCiAJCQkJCSAg
ICAgICBwZXNzaW1hbF9sYXRlbmN5X25zKTsKIAkJaWYgKGVuYWJsZWQgPT0gTlVMTCkKQEAgLTI0
MjEsMTIgKzI0MjEsMTIgQEAgc3RhdGljIHZvaWQgaTl4eF91cGRhdGVfd20oc3RydWN0IGludGVs
X2NydGMgKnVudXNlZF9jcnRjKQogCWlmIChIQVNfRldfQkxDKGRldl9wcml2KSAmJiBlbmFibGVk
KSB7CiAJCS8qIHNlbGYtcmVmcmVzaCBoYXMgbXVjaCBoaWdoZXIgbGF0ZW5jeSAqLwogCQlzdGF0
aWMgY29uc3QgaW50IHNyX2xhdGVuY3lfbnMgPSA2MDAwOwotCQljb25zdCBzdHJ1Y3QgZHJtX2Rp
c3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9Ci0JCQkmZW5hYmxlZC0+Y29uZmlnLT5ody5hZGp1
c3RlZF9tb2RlOworCQljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqcGlwZV9tb2RlID0K
KwkJCSZlbmFibGVkLT5jb25maWctPmh3LnBpcGVfbW9kZTsKIAkJY29uc3Qgc3RydWN0IGRybV9m
cmFtZWJ1ZmZlciAqZmIgPQogCQkJZW5hYmxlZC0+YmFzZS5wcmltYXJ5LT5zdGF0ZS0+ZmI7Ci0J
CWludCBjbG9jayA9IGFkanVzdGVkX21vZGUtPmNydGNfY2xvY2s7Ci0JCWludCBodG90YWwgPSBh
ZGp1c3RlZF9tb2RlLT5jcnRjX2h0b3RhbDsKKwkJaW50IGNsb2NrID0gcGlwZV9tb2RlLT5jcnRj
X2Nsb2NrOworCQlpbnQgaHRvdGFsID0gcGlwZV9tb2RlLT5jcnRjX2h0b3RhbDsKIAkJaW50IGhk
aXNwbGF5ID0gZW5hYmxlZC0+Y29uZmlnLT5waXBlX3NyY193OwogCQlpbnQgY3BwOwogCQlpbnQg
ZW50cmllczsKQEAgLTI0NzQsNyArMjQ3NCw3IEBAIHN0YXRpYyB2b2lkIGk4NDVfdXBkYXRlX3dt
KHN0cnVjdCBpbnRlbF9jcnRjICp1bnVzZWRfY3J0YykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHVudXNlZF9jcnRjLT5iYXNlLmRldik7CiAJc3RydWN0
IGludGVsX2NydGMgKmNydGM7Ci0JY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVz
dGVkX21vZGU7CisJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKnBpcGVfbW9kZTsKIAl1
MzIgZndhdGVyX2xvOwogCWludCBwbGFuZWFfd207CiAKQEAgLTI0ODIsOCArMjQ4Miw4IEBAIHN0
YXRpYyB2b2lkIGk4NDVfdXBkYXRlX3dtKHN0cnVjdCBpbnRlbF9jcnRjICp1bnVzZWRfY3J0YykK
IAlpZiAoY3J0YyA9PSBOVUxMKQogCQlyZXR1cm47CiAKLQlhZGp1c3RlZF9tb2RlID0gJmNydGMt
PmNvbmZpZy0+aHcuYWRqdXN0ZWRfbW9kZTsKLQlwbGFuZWFfd20gPSBpbnRlbF9jYWxjdWxhdGVf
d20oYWRqdXN0ZWRfbW9kZS0+Y3J0Y19jbG9jaywKKwlwaXBlX21vZGUgPSAmY3J0Yy0+Y29uZmln
LT5ody5waXBlX21vZGU7CisJcGxhbmVhX3dtID0gaW50ZWxfY2FsY3VsYXRlX3dtKHBpcGVfbW9k
ZS0+Y3J0Y19jbG9jaywKIAkJCQkgICAgICAgJmk4NDVfd21faW5mbywKIAkJCQkgICAgICAgZGV2
X3ByaXYtPmRpc3BsYXkuZ2V0X2ZpZm9fc2l6ZShkZXZfcHJpdiwgUExBTkVfQSksCiAJCQkJICAg
ICAgIDQsIHBlc3NpbWFsX2xhdGVuY3lfbnMpOwpAQCAtMjU3Myw3ICsyNTczLDcgQEAgc3RhdGlj
IHUzMiBpbGtfY29tcHV0ZV9wcmlfd20oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUsCiAJCXJldHVybiBtZXRob2QxOwogCiAJbWV0aG9kMiA9IGlsa193bV9tZXRob2Qy
KGNydGNfc3RhdGUtPnBpeGVsX3JhdGUsCi0JCQkJIGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21v
ZGUuY3J0Y19odG90YWwsCisJCQkJIGNydGNfc3RhdGUtPmh3LnBpcGVfbW9kZS5jcnRjX2h0b3Rh
bCwKIAkJCQkgZHJtX3JlY3Rfd2lkdGgoJnBsYW5lX3N0YXRlLT51YXBpLmRzdCksCiAJCQkJIGNw
cCwgbWVtX3ZhbHVlKTsKIApAQCAtMjYwMSw3ICsyNjAxLDcgQEAgc3RhdGljIHUzMiBpbGtfY29t
cHV0ZV9zcHJfd20oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAK
IAltZXRob2QxID0gaWxrX3dtX21ldGhvZDEoY3J0Y19zdGF0ZS0+cGl4ZWxfcmF0ZSwgY3BwLCBt
ZW1fdmFsdWUpOwogCW1ldGhvZDIgPSBpbGtfd21fbWV0aG9kMihjcnRjX3N0YXRlLT5waXhlbF9y
YXRlLAotCQkJCSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfaHRvdGFsLAorCQkJ
CSBjcnRjX3N0YXRlLT5ody5waXBlX21vZGUuY3J0Y19odG90YWwsCiAJCQkJIGRybV9yZWN0X3dp
ZHRoKCZwbGFuZV9zdGF0ZS0+dWFwaS5kc3QpLAogCQkJCSBjcHAsIG1lbV92YWx1ZSk7CiAJcmV0
dXJuIG1pbihtZXRob2QxLCBtZXRob2QyKTsKQEAgLTI2MjYsNyArMjYyNiw3IEBAIHN0YXRpYyB1
MzIgaWxrX2NvbXB1dGVfY3VyX3dtKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlLAogCWNwcCA9IHBsYW5lX3N0YXRlLT5ody5mYi0+Zm9ybWF0LT5jcHBbMF07CiAKIAly
ZXR1cm4gaWxrX3dtX21ldGhvZDIoY3J0Y19zdGF0ZS0+cGl4ZWxfcmF0ZSwKLQkJCSAgICAgIGNy
dGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUuY3J0Y19odG90YWwsCisJCQkgICAgICBjcnRjX3N0
YXRlLT5ody5waXBlX21vZGUuY3J0Y19odG90YWwsCiAJCQkgICAgICBkcm1fcmVjdF93aWR0aCgm
cGxhbmVfc3RhdGUtPnVhcGkuZHN0KSwKIAkJCSAgICAgIGNwcCwgbWVtX3ZhbHVlKTsKIH0KQEAg
LTM4ODMsNyArMzg4Myw3IEBAIHN0YXRpYyBib29sIHNrbF9jcnRjX2Nhbl9lbmFibGVfc2Fndihj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAlpZiAoIWNydGNfc3Rh
dGUtPmh3LmFjdGl2ZSkKIAkJcmV0dXJuIHRydWU7CiAKLQlpZiAoY3J0Y19zdGF0ZS0+aHcuYWRq
dXN0ZWRfbW9kZS5mbGFncyAmIERSTV9NT0RFX0ZMQUdfSU5URVJMQUNFKQorCWlmIChjcnRjX3N0
YXRlLT5ody5waXBlX21vZGUuZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0lOVEVSTEFDRSkKIAkJcmV0
dXJuIGZhbHNlOwogCiAJaW50ZWxfYXRvbWljX2NydGNfc3RhdGVfZm9yX2VhY2hfcGxhbmVfc3Rh
dGUocGxhbmUsIHBsYW5lX3N0YXRlLCBjcnRjX3N0YXRlKSB7CkBAIC00MTc0LDggKzQxNzQsOCBA
QCBza2xfZGRiX2dldF9waXBlX2FsbG9jYXRpb25fbGltaXRzKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAkgKi8KIAl0b3RhbF9zbGljZV9tYXNrID0gZGJ1Zl9zbGljZV9tYXNr
OwogCWZvcl9lYWNoX25ld19pbnRlbF9jcnRjX2luX3N0YXRlKGludGVsX3N0YXRlLCBjcnRjLCBj
cnRjX3N0YXRlLCBpKSB7Ci0JCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3Rl
ZF9tb2RlID0KLQkJCSZjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlOworCQljb25zdCBzdHJ1
Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqcGlwZV9tb2RlID0KKwkJCSZjcnRjX3N0YXRlLT5ody5waXBl
X21vZGU7CiAJCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKIAkJaW50IGhkaXNwbGF5LCB2
ZGlzcGxheTsKIAkJdTMyIHBpcGVfZGJ1Zl9zbGljZV9tYXNrOwpAQCAtNDIwNSw3ICs0MjA1LDcg
QEAgc2tsX2RkYl9nZXRfcGlwZV9hbGxvY2F0aW9uX2xpbWl0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsCiAJCWlmIChkYnVmX3NsaWNlX21hc2sgIT0gcGlwZV9kYnVmX3NsaWNl
X21hc2spCiAJCQljb250aW51ZTsKIAotCQlkcm1fbW9kZV9nZXRfaHZfdGltaW5nKGFkanVzdGVk
X21vZGUsICZoZGlzcGxheSwgJnZkaXNwbGF5KTsKKwkJZHJtX21vZGVfZ2V0X2h2X3RpbWluZyhw
aXBlX21vZGUsICZoZGlzcGxheSwgJnZkaXNwbGF5KTsKIAogCQl0b3RhbF93aWR0aF9pbl9yYW5n
ZSArPSBoZGlzcGxheTsKIApAQCAtNTA5Myw3ICs1MDkzLDcgQEAgaW50ZWxfZ2V0X2xpbmV0aW1l
X3VzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCWlmIChkcm1f
V0FSTl9PTigmZGV2X3ByaXYtPmRybSwgcGl4ZWxfcmF0ZSA9PSAwKSkKIAkJcmV0dXJuIHUzMl90
b19maXhlZDE2KDApOwogCi0JY3J0Y19odG90YWwgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9t
b2RlLmNydGNfaHRvdGFsOworCWNydGNfaHRvdGFsID0gY3J0Y19zdGF0ZS0+aHcucGlwZV9tb2Rl
LmNydGNfaHRvdGFsOwogCWxpbmV0aW1lX3VzID0gZGl2X2ZpeGVkMTYoY3J0Y19odG90YWwgKiAx
MDAwLCBwaXhlbF9yYXRlKTsKIAogCXJldHVybiBsaW5ldGltZV91czsKQEAgLTUyODIsMTQgKzUy
ODIsMTQgQEAgc3RhdGljIHZvaWQgc2tsX2NvbXB1dGVfcGxhbmVfd20oY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJbWV0aG9kMSA9IHNrbF93bV9tZXRob2QxKGRl
dl9wcml2LCB3cC0+cGxhbmVfcGl4ZWxfcmF0ZSwKIAkJCQkgd3AtPmNwcCwgbGF0ZW5jeSwgd3At
PmRidWZfYmxvY2tfc2l6ZSk7CiAJbWV0aG9kMiA9IHNrbF93bV9tZXRob2QyKHdwLT5wbGFuZV9w
aXhlbF9yYXRlLAotCQkJCSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfaHRvdGFs
LAorCQkJCSBjcnRjX3N0YXRlLT5ody5waXBlX21vZGUuY3J0Y19odG90YWwsCiAJCQkJIGxhdGVu
Y3ksCiAJCQkJIHdwLT5wbGFuZV9ibG9ja3NfcGVyX2xpbmUpOwogCiAJaWYgKHdwLT55X3RpbGVk
KSB7CiAJCXNlbGVjdGVkX3Jlc3VsdCA9IG1heF9maXhlZDE2KG1ldGhvZDIsIHdwLT55X3RpbGVf
bWluaW11bSk7CiAJfSBlbHNlIHsKLQkJaWYgKCh3cC0+Y3BwICogY3J0Y19zdGF0ZS0+aHcuYWRq
dXN0ZWRfbW9kZS5jcnRjX2h0b3RhbCAvCisJCWlmICgod3AtPmNwcCAqIGNydGNfc3RhdGUtPmh3
LnBpcGVfbW9kZS5jcnRjX2h0b3RhbCAvCiAJCSAgICAgd3AtPmRidWZfYmxvY2tfc2l6ZSA8IDEp
ICYmCiAJCSAgICAgKHdwLT5wbGFuZV9ieXRlc19wZXJfbGluZSAvIHdwLT5kYnVmX2Jsb2NrX3Np
emUgPCAxKSkgewogCQkJc2VsZWN0ZWRfcmVzdWx0ID0gbWV0aG9kMjsKLS0gCjIuMTkuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
