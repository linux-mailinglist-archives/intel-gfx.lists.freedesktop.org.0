Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0778B37AB6D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 18:06:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 700D56EA77;
	Tue, 11 May 2021 16:06:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 166826EA77
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 16:06:31 +0000 (UTC)
IronPort-SDR: U0x2WFN01I4hU2XIyRB/Ppz6qA8w9j6JroWjUhdsZNpUC+w4ai+rzQfZMGD1OZ7h7J0FDaqKX1
 1gHRXBUMZOhg==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="260742311"
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="260742311"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 09:06:30 -0700
IronPort-SDR: umNwARqvZ5mSBxwq/lopnEZhE0TyP1IQgFmHaOomK8OmlXZXQVGKpdns1NkhkebvcxMiBFQbjs
 VaLLeMwRBq4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="471171734"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 11 May 2021 09:05:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 May 2021 19:05:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 May 2021 19:05:30 +0300
Message-Id: <20210511160532.21446-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
References: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Check sink deep color capabilitis
 during HDMI .mode_valid()
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
Cc: Werner Sembach <wse@tuxedocomputers.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkN1
cnJlbnRseSBIRE1JIC5tb2RlX3ZhbGlkKCkgb25seSBjaGVja3Mgd2hldGhlciB0aGUgc291cmNl
IGNhbiBkbwpkZWVwIGNvbG9yLiBMZXQncyBjaGVjayB3aGV0aGVyIHRoZSBzaW5rIGNhbiBkbyBp
dCBhcyB3ZWxsLgoKQ2M6IFdlcm5lciBTZW1iYWNoIDx3c2VAdHV4ZWRvY29tcHV0ZXJzLmNvbT4K
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyB8IDE2
ICsrKysrKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDcgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwppbmRl
eCA1NmFjNTNlYWI5MGMuLjg3NGZiODk3MDA1YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9oZG1pLmMKQEAgLTE5MDEsMTAgKzE5MDEsMTAgQEAgc3RhdGljIGJvb2wgaW50
ZWxfaGRtaV9icGNfcG9zc2libGUoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIH0K
IAogc3RhdGljIGVudW0gZHJtX21vZGVfc3RhdHVzCi1pbnRlbF9oZG1pX21vZGVfY2xvY2tfdmFs
aWQoc3RydWN0IGludGVsX2hkbWkgKmhkbWksIGludCBjbG9jaywgYm9vbCBoYXNfaGRtaV9zaW5r
KQoraW50ZWxfaGRtaV9tb2RlX2Nsb2NrX3ZhbGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25u
ZWN0b3IsIGludCBjbG9jaywKKwkJCSAgICBib29sIGhhc19oZG1pX3NpbmssIGJvb2wgeWNiY3I0
MjBfb3V0cHV0KQogewotCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBpbnRlbF9oZG1pX3RvX2Rl
dihoZG1pKTsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRl
dik7CisJc3RydWN0IGludGVsX2hkbWkgKmhkbWkgPSBpbnRlbF9hdHRhY2hlZF9oZG1pKHRvX2lu
dGVsX2Nvbm5lY3Rvcihjb25uZWN0b3IpKTsKIAllbnVtIGRybV9tb2RlX3N0YXR1cyBzdGF0dXM7
CiAKIAkvKiBjaGVjayBpZiB3ZSBjYW4gZG8gOGJwYyAqLwpAQCAtMTkxMywxMiArMTkxMywxNCBA
QCBpbnRlbF9oZG1pX21vZGVfY2xvY2tfdmFsaWQoc3RydWN0IGludGVsX2hkbWkgKmhkbWksIGlu
dCBjbG9jaywgYm9vbCBoYXNfaGRtaV9zaQogCiAJaWYgKGhhc19oZG1pX3NpbmspIHsKIAkJLyog
aWYgd2UgY2FuJ3QgZG8gOGJwYyB3ZSBtYXkgc3RpbGwgYmUgYWJsZSB0byBkbyAxMmJwYyAqLwot
CQlpZiAoc3RhdHVzICE9IE1PREVfT0sgJiYgIUhBU19HTUNIKGRldl9wcml2KSkKKwkJaWYgKHN0
YXR1cyAhPSBNT0RFX09LICYmCisJCSAgICBpbnRlbF9oZG1pX2JwY19wb3NzaWJsZShjb25uZWN0
b3IsIDEyLCBoYXNfaGRtaV9zaW5rLCB5Y2JjcjQyMF9vdXRwdXQpKQogCQkJc3RhdHVzID0gaGRt
aV9wb3J0X2Nsb2NrX3ZhbGlkKGhkbWksIGludGVsX2hkbWlfcG9ydF9jbG9jayhjbG9jaywgMTIp
LAogCQkJCQkJICAgICAgIHRydWUsIGhhc19oZG1pX3NpbmspOwogCiAJCS8qIGlmIHdlIGNhbid0
IGRvIDgsMTJicGMgd2UgbWF5IHN0aWxsIGJlIGFibGUgdG8gZG8gMTBicGMgKi8KLQkJaWYgKHN0
YXR1cyAhPSBNT0RFX09LICYmIERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMSkKKwkJaWYgKHN0
YXR1cyAhPSBNT0RFX09LICYmCisJCSAgICBpbnRlbF9oZG1pX2JwY19wb3NzaWJsZShjb25uZWN0
b3IsIDEwLCBoYXNfaGRtaV9zaW5rLCB5Y2JjcjQyMF9vdXRwdXQpKQogCQkJc3RhdHVzID0gaGRt
aV9wb3J0X2Nsb2NrX3ZhbGlkKGhkbWksIGludGVsX2hkbWlfcG9ydF9jbG9jayhjbG9jaywgMTAp
LAogCQkJCQkJICAgICAgIHRydWUsIGhhc19oZG1pX3NpbmspOwogCX0KQEAgLTE5NTgsNyArMTk2
MCw3IEBAIGludGVsX2hkbWlfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVj
dG9yLAogCWlmICh5Y2Jjcl80MjBfb25seSkKIAkJY2xvY2sgLz0gMjsKIAotCXN0YXR1cyA9IGlu
dGVsX2hkbWlfbW9kZV9jbG9ja192YWxpZChoZG1pLCBjbG9jaywgaGFzX2hkbWlfc2luayk7CisJ
c3RhdHVzID0gaW50ZWxfaGRtaV9tb2RlX2Nsb2NrX3ZhbGlkKGNvbm5lY3RvciwgY2xvY2ssIGhh
c19oZG1pX3NpbmssIHljYmNyXzQyMF9vbmx5KTsKIAlpZiAoc3RhdHVzICE9IE1PREVfT0spIHsK
IAkJaWYgKHljYmNyXzQyMF9vbmx5IHx8CiAJCSAgICAhY29ubmVjdG9yLT55Y2Jjcl80MjBfYWxs
b3dlZCB8fApAQCAtMTk2Niw3ICsxOTY4LDcgQEAgaW50ZWxfaGRtaV9tb2RlX3ZhbGlkKHN0cnVj
dCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiAJCQlyZXR1cm4gc3RhdHVzOwogCiAJCWNsb2Nr
IC89IDI7Ci0JCXN0YXR1cyA9IGludGVsX2hkbWlfbW9kZV9jbG9ja192YWxpZChoZG1pLCBjbG9j
aywgaGFzX2hkbWlfc2luayk7CisJCXN0YXR1cyA9IGludGVsX2hkbWlfbW9kZV9jbG9ja192YWxp
ZChjb25uZWN0b3IsIGNsb2NrLCBoYXNfaGRtaV9zaW5rLCB0cnVlKTsKIAkJaWYgKHN0YXR1cyAh
PSBNT0RFX09LKQogCQkJcmV0dXJuIHN0YXR1czsKIAl9Ci0tIAoyLjI2LjMKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
