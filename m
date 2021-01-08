Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 916FF2EF78A
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 19:41:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1481C6E822;
	Fri,  8 Jan 2021 18:41:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DE346E822
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 18:41:04 +0000 (UTC)
IronPort-SDR: 5MKQNCQw9s1vjXm2crMKfPdsNWMe+XmSiIUGyU7tkO6d7VWmFqvrUzBdcOtLR2GUuBj0Jy6+Lb
 uh7aTVOYsWfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="175061697"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="175061697"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 10:41:03 -0800
IronPort-SDR: 7ekZUD9eEfjWlQ9Abnx3nsdVGS0vpUxfbzPiyb32ZAEKZIGjRSzSdvp/+Lgo4ZKOsZ6ZUdqhx0
 Fz5jrzSaB4+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="388261288"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 08 Jan 2021 10:41:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Jan 2021 20:41:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 20:40:52 +0200
Message-Id: <20210108184101.30972-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/9] drm/i915: Async flips for all ilk+ platforms
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1N
SU8gYXN5bmMgZmxpcHMgaGF2ZSBiZWVuIHN1cG9ydGVkIHNpbmNlIGc0eC4gV2UgY2FuIGVhc2ls
eSBlbmFibGUKdGhlbSBmb3IgYWxsIGlsaysgcGxhdGZvcm1zLiBTbyBsZXQncyBkbyB0aGF0LgoK
ZzR4IGlzIG1vcmUgcHJvYmxlbWF0aWMgc2luY2UgaXQgZG9lc24ndCBoYXZlIGEgZmxpcCBkb25l
CmludGVycnVwdCAod2hpY2ggdGhlIGN1cnJlbnQgc29sdXRpb24gZGVwZW5kcyBvbiksIGFuZCB0
aGUgZmxpcApwZW5kaW5nIGJsaXQgdGhhdCBpdCBkb2VzIGhhdmUgb25seSB3b3JrcyB3aXRoIENT
IGZsaXBzLiBTb21lCnBvdGVudGlhbCBpZGVhcyB3b3VsZCBpbnZvbHZlIGp1c3QgcG9sbGluZyB0
aGUgbGl2ZSBzdXJmYWNlIApyZWdpc3RlciBldGMuIGJ1dCBub3Qgc3VyZSBpdCdzIHdvcnRoIHRo
ZSBoYXNzbGUuIFNvIGF0IGxlYXN0IApmb3IgdGhlIHRpbWUgYmVpbmcgd2UgbGVhdmUgZzR4IG91
dCBpbiB0aGUgY29sZC4KClZpbGxlIFN5cmrDpGzDpCAoOSk6CiAgZHJtL2k5MTU6IERyb3AgcmVk
dW5kYW50IHBhcmVucwogIGRybS9pOTE1OiBHZW5lcmFsaXplIHRoZSBhc3luYyBmbGlwIGNhcGFi
aWxpdHkgY2hlY2sKICBkcm0vaTkxNTogQWRkIHBsYW5lIHZmdW5jcyB0byBlbmFibGUvZGlzYWJs
ZSBmbGlwX2RvbmUgaW50ZXJydXB0CiAgZHJtL2k5MTU6IE1vdmUgdGhlIGFzeW5jX2ZsaXAgYml0
IHNldHVwIGludG8gdGhlIC5hc3luY19mbGlwKCkgaG9vawogIGRybS9pOTE1OiBSZXVzZSB0aGUg
YXN5bmNfZmxpcCgpIGhvb2sgZm9yIHRoZSBhc3luYyBmbGlwIGRpc2FibGUgdy9hCiAgZHJtL2k5
MTU6IEltcGxlbWVudCBhc3luYyBmbGlwcyBmb3IgYmR3CiAgZHJtL2k5MTU6IEltcGxlbWVudCBh
c3luYyBmbGlwcyBmb3IgaXZiL2hzdwogIGRybS9pOTE1OiBJbXBsZW1lbnQgYXN5bmMgZmxpcHMg
Zm9yIGlsay9zbmIKICBkcm0vaTkxNTogSW1wbGVtZW50IGFzeW5jIGZsaXBzIGZvciB2bHYvY2h2
CgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4X3BsYW5lLmMgICAgIHwgMTQyICsr
KysrKysrKysrKysrKysrKwogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19w
bGFuZS5jIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyAgfCAxMDggKysrKysrKystLS0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oICAgIHwgICA2ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Nwcml0ZS5jICAgfCAgMzYgKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJx
LmMgICAgICAgICAgICAgICB8ICA2NyArKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfaXJxLmggICAgICAgICAgICAgICB8ICAgMyAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oICAgICAgICAgICAgICAgfCAgIDMgKwogOCBmaWxlcyBjaGFuZ2VkLCAyODMgaW5zZXJ0
aW9ucygrKSwgODQgZGVsZXRpb25zKC0pCgotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
