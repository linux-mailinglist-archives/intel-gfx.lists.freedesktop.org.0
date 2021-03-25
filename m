Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F4E349BD8
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 22:48:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE26B6EE56;
	Thu, 25 Mar 2021 21:48:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A9116EE53
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 21:48:18 +0000 (UTC)
IronPort-SDR: BgTMHyZr/gvrXS8VHlnZBVdigEiYxkbBVt47BdycsTrUXaDLtJ34xtd8PtKuNV9+KdkB9wOK3O
 DWym669cyVzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="171005002"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="171005002"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:18 -0700
IronPort-SDR: vw/XVETQm5s3OQn4RmCIdNmoZWyej9poE71DI7d3BYqNI1VVvpAxsZ+0Im1whvtu7WDMyAsDfi
 lH6s+ClUJyHQ==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375235640"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:17 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 23:47:48 +0200
Message-Id: <20210325214808.2071517-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210325214808.2071517-1-imre.deak@intel.com>
References: <20210325214808.2071517-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 05/25] drm/i915/selftest: Make sure to init
 i915_ggtt_view in igt_vma_rotate_remap()
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

VGhpcyBwcm9iYWJseSBkb2Vzbid0IGNhdXNlIGFuIGlzc3VlLCBzaW5jZSB0aGUgY29kZSBjaGVj
a3MgdGhlIHZpZXcKdHlwZSBkZXBlbmRlbnQgc2l6ZSBvZiB0aGUgdmlld3MgYmVmb3JlIGNvbXBh
cmluZyB0aGVtLCBidXQgbGV0J3MgZm9sbG93CnRoZSBwcmFjdGljZSB0byBiemVybyB0aGUgd2hv
bGUgc3RydWN0IHdoZW4gaW5pdGlhbGl6aW5nIGl0LgoKdjI6IFVzZSB7fSBpbnN0ZWFkIG9mIHsg
fSBzdHJ1Y3QgaW50aWFsaXplci4gKFZpbGxlKQoKU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxp
bXJlLmRlYWtAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVz
dHMvaTkxNV92bWEuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9p
OTE1X3ZtYS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfdm1hLmMKaW5k
ZXggMjNmNmEyMTJhMzkxZC4uOWRkNjc5OTEwNWU2NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfdm1hLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL2k5MTVfdm1hLmMKQEAgLTUxNSw3ICs1MTUsNyBAQCBzdGF0aWMgaW50IGlndF92
bWFfcm90YXRlX3JlbWFwKHZvaWQgKmFyZykKIAlmb3IgKHQgPSB0eXBlczsgKnQ7IHQrKykgewog
CWZvciAoYSA9IHBsYW5lczsgYS0+d2lkdGg7IGErKykgewogCQlmb3IgKGIgPSBwbGFuZXMgKyBB
UlJBWV9TSVpFKHBsYW5lcyk7IGItLSAhPSBwbGFuZXM7ICkgewotCQkJc3RydWN0IGk5MTVfZ2d0
dF92aWV3IHZpZXc7CisJCQlzdHJ1Y3QgaTkxNV9nZ3R0X3ZpZXcgdmlldyA9IHt9OwogCQkJdW5z
aWduZWQgaW50IG4sIG1heF9vZmZzZXQ7CiAKIAkJCW1heF9vZmZzZXQgPSBtYXgoYS0+c3RyaWRl
ICogYS0+aGVpZ2h0LAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
