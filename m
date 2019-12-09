Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25153117114
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 17:03:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EEE96E4CD;
	Mon,  9 Dec 2019 16:03:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 817D76E4CF
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 16:03:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 08:03:00 -0800
X-IronPort-AV: E=Sophos;i="5.69,296,1571727600"; d="scan'208";a="210147237"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 08:02:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Dec 2019 18:02:01 +0200
Message-Id: <708630b25bbde61e30943e4d70e107f6c01184c3.1575907078.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1575907078.git.jani.nikula@intel.com>
References: <cover.1575907078.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v4 08/15] drm/i915/dsi: set pipe_bpp on ICL
 configure config
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIElDTCBEU0kgcGlwZV9icHAgY3VycmVudGx5IGNvbWVzIGZyb20KY29tcHV0ZV9iYXNlbGlu
ZV9waXBlX2JwcCgpLiBGaXggaXQuCgpDYzogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxr
YXJuaUBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJu
aUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgfCA1ICsr
KysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ljbF9kc2kuYwppbmRleCBmNjg4MjA3OTMyZTAuLmVmNTNlZDZkM2VjZiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKQEAgLTEyODYsNiArMTI4NiwxMSBAQCBz
dGF0aWMgaW50IGdlbjExX2RzaV9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwKIAllbHNlCiAJCXBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlciA9IFRSQU5TQ09E
RVJfRFNJXzA7CiAKKwlpZiAoaW50ZWxfZHNpLT5waXhlbF9mb3JtYXQgPT0gTUlQSV9EU0lfRk1U
X1JHQjg4OCkKKwkJcGlwZV9jb25maWctPnBpcGVfYnBwID0gMjQ7CisJZWxzZQorCQlwaXBlX2Nv
bmZpZy0+cGlwZV9icHAgPSAxODsKKwogCXBpcGVfY29uZmlnLT5jbG9ja19zZXQgPSB0cnVlOwog
CXBpcGVfY29uZmlnLT5wb3J0X2Nsb2NrID0gaW50ZWxfZHNpX2JpdHJhdGUoaW50ZWxfZHNpKSAv
IDU7CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
