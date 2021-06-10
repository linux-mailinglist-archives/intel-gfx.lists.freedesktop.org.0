Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4CF3A3328
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 20:32:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8911E6E1A3;
	Thu, 10 Jun 2021 18:32:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71F316E1A3
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 18:32:42 +0000 (UTC)
IronPort-SDR: Xz2j41CvipJNtI2IriD7zpI3S2Bv+Cqs7b50f0eGktMmMI0JVBeeGPvq8i647CLqy4ASWW1VCk
 qni2uUsPaKPg==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="185061144"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="185061144"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 11:32:41 -0700
IronPort-SDR: XhVa1xuh3p9h36w33MT9+inNqnwDHhn47XEUrm8kvS6VQezohKzU0RUHZ2MyMa6Cur6zIhMscV
 +JvBZLpQG4Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="553160569"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 10 Jun 2021 11:32:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jun 2021 21:32:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Jun 2021 21:32:28 +0300
Message-Id: <20210610183237.3920-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/9] drm/i915/fbc: Clean up cfb allocation code
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkg
bmVlZCB0byB0d2VhayB0aGUgY2ZiIHN0cmlkZS9zaXplIGhhbmRsaW5nIGEgYml0IHRoZSBjdXJy
ZW50CmNmYiBhbGxvY2F0aW9uIGNvZGUgaXMgdG9vIG1lc3N5IHRvIG1ha2UgdGhhdCBlYXN5LiBT
dGFydCBieSAKY2xlYW5pbmcgc3R1ZmYgdXAuCgpWaWxsZSBTeXJqw6Rsw6QgKDkpOgogIGRybS9p
OTE1L2ZiYzogcy90aHJlc2hvbGQvbGltaXQvCiAgZHJtL2k5MTUvZmJjOiBFeHRyYWN0IGludGVs
X2ZiY19wcm9ncmFtX2NmYigpCiAgZHJtL2k5MTUvZmJjOiBFbWJlZCB0aGUgY29tcHJlc3NlZF9s
bGIgbm9kZQogIGRybS9pOTE1L2ZiYzogRG9uJ3QgcGFzcyBhcm91bmQgdGhlIG1tIG5vZGUKICBk
cm0vaTkxNS9mYmM6IEhhbmRsZSAxNmJwcCBjb21wcmVzc2lvbiBsaW1pdCBiZXR0ZXIKICBkcm0v
aTkxNS9mYmM6IEludHJvZHVjZSBnNHhfZHBmY19jdGxfbGltaXQoKQogIGRybS9pOTE1L2ZiYzog
RXh0cmFjdCBpbnRlbF9mYmNfc3RvbGVuX2VuZCgpCiAgZHJtL2k5MTUvZmJjOiBNYWtlIHRoZSBj
ZmIgYWxsb2NhdGlvbiBsb29wIGEgYml0IG1vcmUgbGVnaWJsZQogIGRybS9pOTE1L2ZiYzogQWxs
b2NhdGUgbGxiIGJlZm9yZSBjZmIKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jIHwgMjE0ICsrKysrKysrKysrLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oICAgICAgICAgIHwgICA1ICstCiAyIGZpbGVzIGNoYW5nZWQsIDEwNyBpbnNl
cnRpb25zKCspLCAxMTIgZGVsZXRpb25zKC0pCgotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
