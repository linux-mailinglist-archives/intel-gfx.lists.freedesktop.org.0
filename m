Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0288C4BF4F
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 19:08:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 540436E447;
	Wed, 19 Jun 2019 17:08:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1DAF6E447
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 17:08:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 10:08:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="181674986"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 19 Jun 2019 10:08:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Jun 2019 20:08:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 20:08:38 +0300
Message-Id: <20190619170842.20579-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] drm/i915: Eliminate platform specific
 drm_driver vfuncs
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkNv
bWJpbmVkIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjIyODcvIGFu
ZApodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYyMzE3LyB0byBtYWtl
IHRoZQp0aGluZyBhY3R1YWxseSBjb3JyZWN0LgoKVmlsbGUgU3lyasOkbMOkICg0KToKICBkcm0v
aTkxNTogRml4IHZhcmlvdXMgdHJhY2Vwb2ludHMgZm9yIGdlbjIKICBkcm0vaTkxNTogU3dpdGNo
IHRvIHBlci1jcnRjIHZibGFuayB2ZnVuY3MKICBkcm0vaTkxNTogTnVrZSBkcm1fZHJpdmVyIGly
cSB2ZnVuY3MKICBkcm0vaTkxNTogSW5pdGlhbGl6ZSBkcm1fZHJpdmVyIHZibGFuayBmdW5jcyBh
dCBjb21waWxlIHRpbWUKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyB8IDEwOCArKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAg
ICAgICAgIHwgICA1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jICAgICAgICAg
ICAgICB8IDM4NCArKysrKysrKystLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2lycS5oICAgICAgICAgICAgICB8ICAxOSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Ry
YWNlLmggICAgICAgICAgICB8ICA3NiArKy0tCiA1IGZpbGVzIGNoYW5nZWQsIDMzMCBpbnNlcnRp
b25zKCspLCAyNjIgZGVsZXRpb25zKC0pCgotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
