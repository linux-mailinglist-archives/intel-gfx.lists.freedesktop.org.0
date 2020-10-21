Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 586C7294D47
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 15:14:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6D6F6EB18;
	Wed, 21 Oct 2020 13:14:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D35336EB15
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 13:14:52 +0000 (UTC)
IronPort-SDR: /ipktWu+wPbwfCsevtK/doIKaoG1sO+FyRCtl5JYAXA5zFTqHmid06sB/y/Bobw4hX0dZ7iKMR
 3D/ZwAF60tJg==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="228988525"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="228988525"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:14:52 -0700
IronPort-SDR: TwK86LJF32NGQgLYsZp7p3BUdMnmkeRmgJm9DpnFiGEpt2qQHLm7ge0Nq06N31uoTAWBHIfodl
 Wry8/E+L18IA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="359497266"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 21 Oct 2020 06:14:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Oct 2020 16:14:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 16:14:41 +0300
Message-Id: <20201021131443.25616-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201021131443.25616-1-ville.syrjala@linux.intel.com>
References: <20201021131443.25616-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Fix potential overflows in ilk
 ips calculations
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkEg
YnVuY2ggb2YgdGhlIGlwcyBjYWxjdWxhdGlvbnMgcmVxdWlyZSA2NGJpdCBtYXRoLiBJbiBwYXJ0
aWN1bGFyCidjb3JyJyBhbmQgJ2NvcnIyJyBsb29rIGxpa2UgdGhleSBjYW4gb3ZlcmZsb3cgb24g
MzJiaXQgc3lzdGVtcy4KU3dpdGNoIHRvIGV4cGxpY2l0IHU2NCBmb3IgdGhvc2UuCgpTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jIHwgMTAgKysrKystLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ycHMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3Jwcy5jCmluZGV4IGUwZGI3NTQxZGJmYS4uMWNmNDhjNTFhOTNlIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ycHMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ycHMuYwpAQCAtMTI4MSw4ICsxMjgxLDkgQEAgc3Rh
dGljIHVuc2lnbmVkIGxvbmcgX19pcHNfZ2Z4X3ZhbChzdHJ1Y3QgaW50ZWxfaXBzICppcHMpCiB7
CiAJc3RydWN0IGludGVsX3JwcyAqcnBzID0gY29udGFpbmVyX29mKGlwcywgdHlwZW9mKCpycHMp
LCBpcHMpOwogCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IHJwc190b191bmNvcmUocnBz
KTsKLQl1bnNpZ25lZCBsb25nIHQsIGNvcnIsIHN0YXRlMSwgY29ycjIsIHN0YXRlMjsKKwl1bnNp
Z25lZCBpbnQgdCwgc3RhdGUxLCBzdGF0ZTI7CiAJdTMyIHB4dmlkLCBleHRfdjsKKwl1NjQgY29y
ciwgY29ycjI7CiAKIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZtY2hkZXZfbG9jayk7CiAKQEAgLTEz
MDMsMTEgKzEzMDQsMTAgQEAgc3RhdGljIHVuc2lnbmVkIGxvbmcgX19pcHNfZ2Z4X3ZhbChzdHJ1
Y3QgaW50ZWxfaXBzICppcHMpCiAJZWxzZSAvKiA8IDUwICovCiAJCWNvcnIgPSB0ICogMzAxICsg
MTAwNDsKIAotCWNvcnIgPSBjb3JyICogMTUwMTQyICogc3RhdGUxIC8gMTAwMDAgLSA3ODY0MjsK
LQljb3JyIC89IDEwMDAwMDsKLQljb3JyMiA9IGNvcnIgKiBpcHMtPmNvcnI7CisJY29yciA9IGRp
dl91NjQoY29yciAqIDE1MDE0MiAqIHN0YXRlMSwgMTAwMDApIC0gNzg2NDI7CisJY29ycjIgPSBk
aXZfdTY0KGNvcnIsIDEwMDAwMCkgKiBpcHMtPmNvcnI7CiAKLQlzdGF0ZTIgPSBjb3JyMiAqIHN0
YXRlMSAvIDEwMDAwOworCXN0YXRlMiA9IGRpdl91NjQoY29ycjIgKiBzdGF0ZTEsIDEwMDAwKTsK
IAlzdGF0ZTIgLz0gMTAwOyAvKiBjb252ZXJ0IHRvIG1XICovCiAKIAlfX2dlbjVfaXBzX3VwZGF0
ZShpcHMpOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
