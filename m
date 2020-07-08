Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 219E1218897
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 15:12:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC2EC6E8CD;
	Wed,  8 Jul 2020 13:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F390B6E8CD
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 13:12:31 +0000 (UTC)
IronPort-SDR: UEk8j9w31zE/33aNP8D9eCErx8vAj11jv9Ob9R4B31KZ8hgBl9ls7EAZOCcP7hmlr5mwIuLnE8
 lRnnNXqW8ojg==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="149300083"
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="149300083"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 06:12:31 -0700
IronPort-SDR: kzRVbDHFYcQ45Bgf8SA648HDYfE6qncxUfLFHJv+SFPV5H2b/NGzeD1KEiOEX7bb/aRFxyjJHx
 wiMaZ3P0AmsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="267122745"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 08 Jul 2020 06:12:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Jul 2020 16:12:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jul 2020 16:12:22 +0300
Message-Id: <20200708131223.9519-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200708131223.9519-1-ville.syrjala@linux.intel.com>
References: <20200708131223.9519-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Limit
 WaFbcHighMemBwCorruptionAvoidance to skl and bxt
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClN1
cHBvc2VkbHkgb25seSBza2wvYnh0IG5lZWQgV2FGYmNIaWdoTWVtQndDb3JydXB0aW9uQXZvaWRh
bmNlLgpEbyBub3QgYXBwbHkgdG8gdGhlIG90aGVyIGdlbjkgcGxhdGZvcm1zLgoKU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgMTIgKysrKysrKystLS0tCiAxIGZp
bGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jCmluZGV4IDg3NjBlMWJhMWVlZS4uN2I5OGQwZWI4NTk3IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMKQEAgLTk4LDEwICs5OCw2IEBAIHN0YXRpYyB2b2lkIGdlbjlfaW5pdF9jbG9j
a19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCUk5MTVfV1JJVEUo
RElTUF9BUkJfQ1RMLCBJOTE1X1JFQUQoRElTUF9BUkJfQ1RMKSB8CiAJCSAgIERJU1BfRkJDX01F
TU9SWV9XQUtFKTsKIAotCS8qIFdhRmJjSGlnaE1lbUJ3Q29ycnVwdGlvbkF2b2lkYW5jZTpza2ws
Ynh0LGtibCxjZmwgKi8KLQlJOTE1X1dSSVRFKElMS19EUEZDX0NISUNLRU4sIEk5MTVfUkVBRChJ
TEtfRFBGQ19DSElDS0VOKSB8Ci0JCSAgIElMS19EUEZDX0RJU0FCTEVfRFVNTVkwKTsKLQogCWlm
IChJU19TS1lMQUtFKGRldl9wcml2KSkgewogCQkvKiBXYURpc2FibGVEb3BDbG9ja0dhdGluZyAq
LwogCQlJOTE1X1dSSVRFKEdFTjdfTUlTQ0NQQ1RMLCBJOTE1X1JFQUQoR0VON19NSVNDQ1BDVEwp
CkBAIC0xNDIsNiArMTM4LDEwIEBAIHN0YXRpYyB2b2lkIGJ4dF9pbml0X2Nsb2NrX2dhdGluZyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJLyogV2FGYmNUdXJuT2ZmRmJjV2F0
ZXJtYXJrOmJ4dCAqLwogCUk5MTVfV1JJVEUoRElTUF9BUkJfQ1RMLCBJOTE1X1JFQUQoRElTUF9B
UkJfQ1RMKSB8CiAJCSAgIERJU1BfRkJDX1dNX0RJUyk7CisKKwkvKiBXYUZiY0hpZ2hNZW1Cd0Nv
cnJ1cHRpb25Bdm9pZGFuY2U6Ynh0ICovCisJSTkxNV9XUklURShJTEtfRFBGQ19DSElDS0VOLCBJ
OTE1X1JFQUQoSUxLX0RQRkNfQ0hJQ0tFTikgfAorCQkgICBJTEtfRFBGQ19ESVNBQkxFX0RVTU1Z
MCk7CiB9CiAKIHN0YXRpYyB2b2lkIGdsa19pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCkBAIC03MjM4LDYgKzcyMzgsMTAgQEAgc3RhdGljIHZvaWQg
c2tsX2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
IAkvKiBXYUZiY051a2VPbkhvc3RNb2RpZnk6c2tsICovCiAJSTkxNV9XUklURShJTEtfRFBGQ19D
SElDS0VOLCBJOTE1X1JFQUQoSUxLX0RQRkNfQ0hJQ0tFTikgfAogCQkgICBJTEtfRFBGQ19OVUtF
X09OX0FOWV9NT0RJRklDQVRJT04pOworCisJLyogV2FGYmNIaWdoTWVtQndDb3JydXB0aW9uQXZv
aWRhbmNlOnNrbCAqLworCUk5MTVfV1JJVEUoSUxLX0RQRkNfQ0hJQ0tFTiwgSTkxNV9SRUFEKElM
S19EUEZDX0NISUNLRU4pIHwKKwkJICAgSUxLX0RQRkNfRElTQUJMRV9EVU1NWTApOwogfQogCiBz
dGF0aWMgdm9pZCBiZHdfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
