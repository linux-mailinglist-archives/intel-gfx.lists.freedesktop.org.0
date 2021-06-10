Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB4E3A24ED
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 09:02:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EDA76EC7B;
	Thu, 10 Jun 2021 07:02:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBEDA6E5A2;
 Thu, 10 Jun 2021 07:02:25 +0000 (UTC)
IronPort-SDR: 7pcwbkyqyPDitMYxguOCVmJjEQ8GhJq8PZVan6IwY34m3VB+IMjJX6lJI6/iz80DcHfIlTSTqe
 CuvMpIyvM9dQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="192351618"
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="192351618"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 00:02:20 -0700
IronPort-SDR: 3qKiKzNxg88m0klcp+jTIuphXr694PbOml29B44zdkrp2NICOR0nbSgvh6XJLD6m29H6GR72TV
 0j4IV1+U3onw==
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="482717885"
Received: from smirnov2-mobl.ccr.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 00:02:16 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 10 Jun 2021 09:01:48 +0200
Message-Id: <20210610070152.572423-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v11 0/4] Move LMEM (VRAM) management over to TTM
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVtYWluaW5nIHBhdGNoZXMgcmViYXNlZCBvbiBsYXRlc3QgVFRNIGNoYW5nZXMgcG9zdGVkIGZv
ciByZWZlcmVuY2UgYW5kIENJLgoKTWFhcnRlbiBMYW5raG9yc3QgKDIpOgogIGRybS92bWE6IEFk
ZCBhIGRyaXZlcl9wcml2YXRlIG1lbWJlciB0byB2bWFfbm9kZS4KICBkcm0vaTkxNTogVXNlIHR0
bSBtbWFwIGhhbmRsaW5nIGZvciB0dG0gYm8ncy4KClRob21hcyBIZWxsc3Ryw7ZtICgyKToKICBk
cm0vaTkxNS90dG06IEludHJvZHVjZSBhIFRUTSBpOTE1IGdlbSBvYmplY3QgYmFja2VuZAogIGRy
bS9pOTE1L2xtZW06IFZlcmlmeSBjaGVja3MgZm9yIGxtZW0gcmVzaWRlbmN5CgogZHJpdmVycy9n
cHUvZHJtL2RybV9nZW0uYyAgICAgICAgICAgICAgICAgICAgIHwgICA5IC0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9jcmVhdGUuYyAgICB8ICAgOSArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2xtZW0uYyAgICAgIHwgMTI2ICsrLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9sbWVtLmggICAgICB8ICAgNSAtCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jICAgICAgfCAgODMgKystCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMgICAgfCAxNDMgKystLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oICAgIHwgIDE5ICstCiAuLi4vZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCAgfCAgMzAgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jICAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3JlZ2lvbi5jICAgIHwgICA2ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fdHRtLmMgICAgICAgfCA2NDcgKysrKysrKysrKysrKysrKysrCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmggICAgICAgfCAgNDggKysKIC4uLi9k
cm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYyAgICB8ICA5MCArLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JlZ2lvbl9sbWVtLmMgICB8ICAgMyArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICAgICAgIHwgICA1ICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMgICAgfCAgIDEgLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5oICAgIHwgICAxIC0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3JlZ2lvbl90dG0uYyAgICAgICB8ICAgOCArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcmVnaW9uX3R0bS5oICAgICAgIHwgIDExICstCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvaWd0X21tYXAuYyAgICAgfCAgMjUgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfbW1hcC5oICAgICB8ICAxMiArLQogaW5jbHVkZS9kcm0vZHJt
X3ZtYV9tYW5hZ2VyLmggICAgICAgICAgICAgICAgIHwgICAyICstCiAyNCBmaWxlcyBjaGFuZ2Vk
LCAxMDM5IGluc2VydGlvbnMoKyksIDI1MCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmgKCi0tIAoyLjMxLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
