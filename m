Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A04FE38B2A2
	for <lists+intel-gfx@lfdr.de>; Thu, 20 May 2021 17:10:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DAB96F479;
	Thu, 20 May 2021 15:10:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BD986E1BE;
 Thu, 20 May 2021 15:10:37 +0000 (UTC)
IronPort-SDR: 9A2OdeO428MBsTBm5sBbloT5C0WYCPdgeIr4/Xy7m9TIILsXEt5hzBOturoATGRBgDn6LpAoLs
 4PDrzJ6UAP/A==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="222341175"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="222341175"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 08:09:58 -0700
IronPort-SDR: x8aKiyZUKX9l8am38RHwyh2yiIG/zv5XG2QeGRprwCoI+/qptOsOcKJLwvqFuPCVzA6OTSYT0M
 VBN8PC8lMGsg==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="395728141"
Received: from cbjoerns-mobl1.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.247])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 08:09:56 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 20 May 2021 17:09:42 +0200
Message-Id: <20210520150947.803891-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 0/5] Core TTM changes for i915 TTM enabling
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyBtYWlubHkgYSBwcmUtY2hlY2sgdGhhdCB0aGUgY29yZSBUVE0gY2hhbmdlcyBmb3Ig
dGhlIGluaXRpYWwKaTkxNSBUVE0gcGF0Y2ggc2VyaWVzIGxvb2sgcmVhc29uYWJseSBvay4KCk1h
aW4gdGhpbmcgaXMgd2UgYWRkIHRoZSBuZXcgcGFnZS1iYXNlZCBpb21lbSBtZW1jcHkgdXRpbCB0
byBUVE0sIGFuZApmb3Igc29tZSBzcGVlZCB0aGUgY29weS1mcm9tLXdjLXg4Ni1vbmx5IHByZWZl
dGNoaW5nIG1lbWNweSB0byBjb3JlIGRybS4KTm90ZSB0aGF0IHRoZSBsZWdhY3kgbWVtY3B5IHBh
dGggaXMgbGFyZ2VseSB1bnRlc3RlZC4gUGVyaGFwcyBjYW4gZ2l2ZQppdCBzb21lIHRlc3Rpbmcg
b24gdm13Z2Z4LgoKQSBidWdmaXggYW5kIHNvbWUgbWlub3Igb3B0aW1pemF0aW9uIGZvciB0aGUg
dHRtX2JvX3BpcGVsaW5lX2d1dHRpbmcoKQppZGxlIGNhc2UKCkZpbmFsbHkgYWxsb3cgdGhlIGZy
ZXF1ZW50bHktcGlubmluZyBpOTE1IGRyaXZlciB0byBibG9jayBzd2FwcGluZyBvZgpwaW5uZWQg
bWVtb3J5IHRoYXQgaXMgc3RpbGwgb24gdGhlIExSVS4KCklmIE9LLCBJJ2QgbGlrZSB0byBpbmNs
dWRlIHRoZXNlIGFzIGEgcGFydCBvZiB0aGUgaTkxNSBzZXJpZXMuCgpDYzogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRA
Z21haWwuY29tPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KClRo
b21hcyBIZWxsc3Ryw7ZtICg1KToKICBkcm0vdHRtOiBBZGQgYSBnZW5lcmljIFRUTSBtZW1jcHkg
bW92ZSBmb3IgcGFnZS1iYXNlZCBpb21lbQogIGRybSwgZHJtL2k5MTU6IE1vdmUgdGhlIG1lbWNw
eV9mcm9tX3djIGZ1bmN0aW9uYWxpdHkgdG8gY29yZSBkcm0KICBkcm0vdHRtOiBVc2UgZHJtX21l
bWNweV9mcm9tX3djIGZvciBUVE0gYm8gbW92ZXMKICBkcm0vdHRtOiBEb2N1bWVudCBhbmQgb3B0
aW1pemUgdHRtX2JvX3BpcGVsaW5lX2d1dHRpbmcoKQogIGRybS90dG0sIGRybS9hbWRncHU6IEFs
bG93IHRoZSBkcml2ZXIgc29tZSBjb250cm9sIG92ZXIgc3dhcHBpbmcKCiBkcml2ZXJzL2dwdS9k
cm0vTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyAgICAgICB8ICAgNCArCiBkcml2ZXJzL2dwdS9kcm0v
ZHJtX2Rydi5jICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKwogLi4uL2RybS97aTkxNS9pOTE1
X21lbWNweS5jID0+IGRybV9tZW1jcHkuY30gIHwgIDMxICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgfCAgIDEgLQogLi4uL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0LmMgICAgfCAgIDUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X3Jlc2V0LmMgICAgICB8ICAgNyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfZ3VjX2xvZy5jICAgIHwgIDExICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2NtZF9wYXJzZXIuYyAgICAgICAgfCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmMgICAgICAgICAgICAgICB8ICAgMiAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dw
dV9lcnJvci5jICAgICAgICAgfCAgIDggKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfbWVt
Y3B5LmggICAgICAgICAgICB8ICAzNCAtLQogLi4uL2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9t
ZW1vcnlfcmVnaW9uLmMgIHwgICA3ICstCiBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jICAg
ICAgICAgICAgICAgICAgfCAgNjEgKy0KIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0aWwu
YyAgICAgICAgICAgICB8IDU0NyArKysrKysrKysrKystLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS90
dG0vdHRtX3R0LmMgICAgICAgICAgICAgICAgICB8ICAgOSArCiBpbmNsdWRlL2RybS9kcm1fbWVt
Y3B5LmggICAgICAgICAgICAgICAgICAgICAgfCAgNDEgKysKIGluY2x1ZGUvZHJtL3R0bS90dG1f
Ym9fZHJpdmVyLmggICAgICAgICAgICAgICB8ICA5NCArKysKIGluY2x1ZGUvZHJtL3R0bS90dG1f
dHQuaCAgICAgICAgICAgICAgICAgICAgICB8ICAxMCArCiAyMCBmaWxlcyBjaGFuZ2VkLCA2MTQg
aW5zZXJ0aW9ucygrKSwgMjcwIGRlbGV0aW9ucygtKQogcmVuYW1lIGRyaXZlcnMvZ3B1L2RybS97
aTkxNS9pOTE1X21lbWNweS5jID0+IGRybV9tZW1jcHkuY30gKDg0JSkKIGRlbGV0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X21lbWNweS5oCiBjcmVhdGUgbW9kZSAxMDA2
NDQgaW5jbHVkZS9kcm0vZHJtX21lbWNweS5oCgotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
