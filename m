Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC893264BD
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Feb 2021 16:32:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FAD26EDFD;
	Fri, 26 Feb 2021 15:32:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A47756EDFD
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Feb 2021 15:32:11 +0000 (UTC)
IronPort-SDR: AIXJRR/jmA3xtdQDrBPhvaXm4o63qJau3nbArUOjpjDGzI0uQKSh+k2LLnLEK+kgM3/Z3mMvyk
 LLlGxSlH+xTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="183446341"
X-IronPort-AV: E=Sophos;i="5.81,208,1610438400"; d="scan'208";a="183446341"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 07:32:11 -0800
IronPort-SDR: Me/Jr+igFAXLq/n/4bUKtcSNPtaOdiG4RvLEMDTy8bOVLmDPsw1g4psSXAOBl0+qGQnN7pG/fa
 cMkciggwN3LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,208,1610438400"; d="scan'208";a="443104887"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 26 Feb 2021 07:32:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 26 Feb 2021 17:32:08 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Feb 2021 17:31:58 +0200
Message-Id: <20210226153204.1270-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210226153204.1270-1-ville.syrjala@linux.intel.com>
References: <20210226153204.1270-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: Fix TGL+ plane SAGV watermark
 programming
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldo
ZW4gd2Ugc3dpdGNoIGJldHdlZW4gU0FHViBvbiB2cy4gb2ZmIHdlIG5lZWQgdG8gcmVwcm9ncmFt
IGFsbApwbGFuZSB3YXRlcmFtcmtzIGFjY29yZGluZ2x5LiBDdXJyZW50bHkgc2tsX3dtX2FkZF9h
ZmZlY3RlZF9wbGFuZXMoKQp0b3RhbGx5IGlnbm9yZXMgdGhlIFNBR1Ygd2F0ZXJtYXJrIGFuZCBq
dXN0IGFzc3VtZXMgd2Ugd2lsbCB1c2UKdGhlIG5vcm1hbCBXTTAuCgpGaXggdGhpcyBieSB1dGls
aXppbmcgc2tsX3BsYW5lX3dtX2xldmVsKCkgd2hpY2ggcGlja3MgdGhlCmNvcnJlY3Qgd2F0ZXJt
YXJrIGJhc2VkIG9uIHVzZV9zYWd2X3dtLiBUaHVzIHdlIHdpbGwgZm9yY2UKYW4gdXBkYXRlIG9u
IGFsbCB0aGUgcGxhbmVzIHdob3NlIHdhdGVybWFyayByZWdpc3RlcnMgbmVlZAp0byBiZSByZXBy
b2dyYW1tZWQuCgpDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBp
bnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDYw
ICsrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDM3IGlu
c2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4
IDhjYzY3ZjljNGU1OC4uMmQwZTNlN2YxMWI4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAg
LTQ3NDgsMTEgKzQ3NDgsMTAgQEAgaWNsX2dldF90b3RhbF9yZWxhdGl2ZV9kYXRhX3JhdGUoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiB9CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
c2tsX3dtX2xldmVsICoKLXNrbF9wbGFuZV93bV9sZXZlbChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKK3NrbF9wbGFuZV93bV9sZXZlbChjb25zdCBzdHJ1Y3Qgc2ts
X3BpcGVfd20gKnBpcGVfd20sCiAJCSAgIGVudW0gcGxhbmVfaWQgcGxhbmVfaWQsCiAJCSAgIGlu
dCBsZXZlbCkKIHsKLQljb25zdCBzdHJ1Y3Qgc2tsX3BpcGVfd20gKnBpcGVfd20gPSAmY3J0Y19z
dGF0ZS0+d20uc2tsLm9wdGltYWw7CiAJY29uc3Qgc3RydWN0IHNrbF9wbGFuZV93bSAqd20gPSAm
cGlwZV93bS0+cGxhbmVzW3BsYW5lX2lkXTsKIAogCWlmIChsZXZlbCA9PSAwICYmIHBpcGVfd20t
PnVzZV9zYWd2X3dtKQpAQCAtNTU3MiwyMSArNTU3MSwxNyBAQCB2b2lkIHNrbF93cml0ZV9wbGFu
ZV93bShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAogCWludCBsZXZlbCwgbWF4X2xldmVsID0g
aWxrX3dtX21heF9sZXZlbChkZXZfcHJpdik7CiAJZW51bSBwbGFuZV9pZCBwbGFuZV9pZCA9IHBs
YW5lLT5pZDsKIAllbnVtIHBpcGUgcGlwZSA9IHBsYW5lLT5waXBlOwotCWNvbnN0IHN0cnVjdCBz
a2xfcGxhbmVfd20gKndtID0KLQkJJmNydGNfc3RhdGUtPndtLnNrbC5vcHRpbWFsLnBsYW5lc1tw
bGFuZV9pZF07CisJY29uc3Qgc3RydWN0IHNrbF9waXBlX3dtICpwaXBlX3dtID0gJmNydGNfc3Rh
dGUtPndtLnNrbC5vcHRpbWFsOworCWNvbnN0IHN0cnVjdCBza2xfcGxhbmVfd20gKndtID0gJnBp
cGVfd20tPnBsYW5lc1twbGFuZV9pZF07CiAJY29uc3Qgc3RydWN0IHNrbF9kZGJfZW50cnkgKmRk
Yl95ID0KIAkJJmNydGNfc3RhdGUtPndtLnNrbC5wbGFuZV9kZGJfeVtwbGFuZV9pZF07CiAJY29u
c3Qgc3RydWN0IHNrbF9kZGJfZW50cnkgKmRkYl91diA9CiAJCSZjcnRjX3N0YXRlLT53bS5za2wu
cGxhbmVfZGRiX3V2W3BsYW5lX2lkXTsKIAotCWZvciAobGV2ZWwgPSAwOyBsZXZlbCA8PSBtYXhf
bGV2ZWw7IGxldmVsKyspIHsKLQkJY29uc3Qgc3RydWN0IHNrbF93bV9sZXZlbCAqd21fbGV2ZWw7
Ci0KLQkJd21fbGV2ZWwgPSBza2xfcGxhbmVfd21fbGV2ZWwoY3J0Y19zdGF0ZSwgcGxhbmVfaWQs
IGxldmVsKTsKLQorCWZvciAobGV2ZWwgPSAwOyBsZXZlbCA8PSBtYXhfbGV2ZWw7IGxldmVsKysp
CiAJCXNrbF93cml0ZV93bV9sZXZlbChkZXZfcHJpdiwgUExBTkVfV00ocGlwZSwgcGxhbmVfaWQs
IGxldmVsKSwKLQkJCQkgICB3bV9sZXZlbCk7Ci0JfQorCQkJCSAgIHNrbF9wbGFuZV93bV9sZXZl
bChwaXBlX3dtLCBwbGFuZV9pZCwgbGV2ZWwpKTsKKwogCXNrbF93cml0ZV93bV9sZXZlbChkZXZf
cHJpdiwgUExBTkVfV01fVFJBTlMocGlwZSwgcGxhbmVfaWQpLAogCQkJICAgJndtLT50cmFuc193
bSk7CiAKQEAgLTU2MTIsMTkgKzU2MDcsMTUgQEAgdm9pZCBza2xfd3JpdGVfY3Vyc29yX3dtKHN0
cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCiAJaW50IGxldmVsLCBtYXhfbGV2ZWwgPSBpbGtfd21f
bWF4X2xldmVsKGRldl9wcml2KTsKIAllbnVtIHBsYW5lX2lkIHBsYW5lX2lkID0gcGxhbmUtPmlk
OwogCWVudW0gcGlwZSBwaXBlID0gcGxhbmUtPnBpcGU7Ci0JY29uc3Qgc3RydWN0IHNrbF9wbGFu
ZV93bSAqd20gPQotCQkmY3J0Y19zdGF0ZS0+d20uc2tsLm9wdGltYWwucGxhbmVzW3BsYW5lX2lk
XTsKKwljb25zdCBzdHJ1Y3Qgc2tsX3BpcGVfd20gKnBpcGVfd20gPSAmY3J0Y19zdGF0ZS0+d20u
c2tsLm9wdGltYWw7CisJY29uc3Qgc3RydWN0IHNrbF9wbGFuZV93bSAqd20gPSAmcGlwZV93bS0+
cGxhbmVzW3BsYW5lX2lkXTsKIAljb25zdCBzdHJ1Y3Qgc2tsX2RkYl9lbnRyeSAqZGRiID0KIAkJ
JmNydGNfc3RhdGUtPndtLnNrbC5wbGFuZV9kZGJfeVtwbGFuZV9pZF07CiAKLQlmb3IgKGxldmVs
ID0gMDsgbGV2ZWwgPD0gbWF4X2xldmVsOyBsZXZlbCsrKSB7Ci0JCWNvbnN0IHN0cnVjdCBza2xf
d21fbGV2ZWwgKndtX2xldmVsOwotCi0JCXdtX2xldmVsID0gc2tsX3BsYW5lX3dtX2xldmVsKGNy
dGNfc3RhdGUsIHBsYW5lX2lkLCBsZXZlbCk7Ci0KKwlmb3IgKGxldmVsID0gMDsgbGV2ZWwgPD0g
bWF4X2xldmVsOyBsZXZlbCsrKQogCQlza2xfd3JpdGVfd21fbGV2ZWwoZGV2X3ByaXYsIENVUl9X
TShwaXBlLCBsZXZlbCksCi0JCQkJICAgd21fbGV2ZWwpOwotCX0KKwkJCQkgICBza2xfcGxhbmVf
d21fbGV2ZWwocGlwZV93bSwgcGxhbmVfaWQsIGxldmVsKSk7CisKIAlza2xfd3JpdGVfd21fbGV2
ZWwoZGV2X3ByaXYsIENVUl9XTV9UUkFOUyhwaXBlKSwgJndtLT50cmFuc193bSk7CiAKIAlza2xf
ZGRiX2VudHJ5X3dyaXRlKGRldl9wcml2LCBDVVJfQlVGX0NGRyhwaXBlKSwgZGRiKTsKQEAgLTU5
NjQsNiArNTk1NSwyOSBAQCBza2xfcHJpbnRfd21fY2hhbmdlcyhzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSkKIAl9CiB9CiAKK3N0YXRpYyBib29sIHNrbF9wbGFuZV9zZWxlY3RlZF93
bV9lcXVhbHMoc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKKwkJCQkJIGNvbnN0IHN0cnVjdCBz
a2xfcGlwZV93bSAqb2xkX3BpcGVfd20sCisJCQkJCSBjb25zdCBzdHJ1Y3Qgc2tsX3BpcGVfd20g
Km5ld19waXBlX3dtKQoreworCWNvbnN0IHN0cnVjdCBza2xfcGxhbmVfd20gKm9sZF93bSA9ICZv
bGRfcGlwZV93bS0+cGxhbmVzW3BsYW5lLT5pZF07CisJY29uc3Qgc3RydWN0IHNrbF9wbGFuZV93
bSAqbmV3X3dtID0gJm5ld19waXBlX3dtLT5wbGFuZXNbcGxhbmUtPmlkXTsKKwlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUocGxhbmUtPmJhc2UuZGV2KTsKKwlpbnQgbGV2
ZWwsIG1heF9sZXZlbCA9IGlsa193bV9tYXhfbGV2ZWwoaTkxNSk7CisKKwlmb3IgKGxldmVsID0g
MDsgbGV2ZWwgPD0gbWF4X2xldmVsOyBsZXZlbCsrKSB7CisJCS8qCisJCSAqIFdlIGRvbid0IGNo
ZWNrIHV2X3dtIGFzIHRoZSBoYXJkd2FyZSBkb2Vzbid0IGFjdHVhbGx5CisJCSAqIHVzZSBpdC4g
SXQgb25seSBnZXRzIHVzZWQgZm9yIGNhbGN1bGF0aW5nIHRoZSByZXF1aXJlZAorCQkgKiBkZGIg
YWxsb2NhdGlvbi4KKwkJICovCisJCWlmICghc2tsX3dtX2xldmVsX2VxdWFscyhza2xfcGxhbmVf
d21fbGV2ZWwob2xkX3BpcGVfd20sIGxldmVsLCBwbGFuZS0+aWQpLAorCQkJCQkgc2tsX3BsYW5l
X3dtX2xldmVsKG5ld19waXBlX3dtLCBsZXZlbCwgcGxhbmUtPmlkKSkpCisJCQlyZXR1cm4gZmFs
c2U7CisJfQorCisJcmV0dXJuIHNrbF93bV9sZXZlbF9lcXVhbHMoJm9sZF93bS0+dHJhbnNfd20s
ICZuZXdfd20tPnRyYW5zX3dtKTsKK30KKwogLyoKICAqIFRvIG1ha2Ugc3VyZSB0aGUgY3Vyc29y
IHdhdGVybWFyayByZWdpc3RlcnMgYXJlIGFsd2F5cyBjb25zaXN0ZW50CiAgKiB3aXRoIG91ciBj
b21wdXRlZCBzdGF0ZSB0aGUgZm9sbG93aW5nIHNjZW5hcmlvIG5lZWRzIHNwZWNpYWwKQEAgLTYw
MDksOSArNjAyMyw5IEBAIHN0YXRpYyBpbnQgc2tsX3dtX2FkZF9hZmZlY3RlZF9wbGFuZXMoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJCSAqIHdpdGggdGhlIHNvZnR3YXJlIHN0
YXRlLgogCQkgKi8KIAkJaWYgKCFkcm1fYXRvbWljX2NydGNfbmVlZHNfbW9kZXNldCgmbmV3X2Ny
dGNfc3RhdGUtPnVhcGkpICYmCi0JCSAgICBza2xfcGxhbmVfd21fZXF1YWxzKGRldl9wcml2LAot
CQkJCQkmb2xkX2NydGNfc3RhdGUtPndtLnNrbC5vcHRpbWFsLnBsYW5lc1twbGFuZV9pZF0sCi0J
CQkJCSZuZXdfY3J0Y19zdGF0ZS0+d20uc2tsLm9wdGltYWwucGxhbmVzW3BsYW5lX2lkXSkpCisJ
CSAgICBza2xfcGxhbmVfc2VsZWN0ZWRfd21fZXF1YWxzKHBsYW5lLAorCQkJCQkJICZvbGRfY3J0
Y19zdGF0ZS0+d20uc2tsLm9wdGltYWwsCisJCQkJCQkgJm5ld19jcnRjX3N0YXRlLT53bS5za2wu
b3B0aW1hbCkpCiAJCQljb250aW51ZTsKIAogCQlwbGFuZV9zdGF0ZSA9IGludGVsX2F0b21pY19n
ZXRfcGxhbmVfc3RhdGUoc3RhdGUsIHBsYW5lKTsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
