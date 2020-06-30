Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0C820FFA6
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:56:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD14A6E419;
	Tue, 30 Jun 2020 21:56:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FB256E419
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 21:56:05 +0000 (UTC)
IronPort-SDR: XQnzF5FT4r+5y0edo0slXqBvMac4+RoGba2nopXlbct5sdZYw2EF7Lb6HMEkyU3EzljrTNI40q
 GMPs9xV5H78A==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="143872373"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="143872373"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:56:04 -0700
IronPort-SDR: rWyi039K8NQqMmO2EM3uEBz+AykN/u0n5zQZuMyxMuaWUP4iwgmU77lq1lSc08WPopn8AVov9v
 ivPTEp9WgImg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="295345786"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 30 Jun 2020 14:56:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Jul 2020 00:56:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 00:55:49 +0300
Message-Id: <20200630215601.28557-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/12] drm/i915: Futher hotplug cleanups
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk91
ciBob3RwbHVnIGludGVycnVwdCBoYW5kbGluZyBpcyBzdGlsbCBhIG1lc3MuCkNvbnRpbnVlIHRo
ZSBjbGVhbnVwLgoKVmlsbGUgU3lyasOkbMOkICgxMik6CiAgZHJtL2k5MTU6IEFkZCBtb3JlIEFV
WCBDSHMgdG8gdGhlIGVudW0KICBkcm0vaTkxNTogQWRkIFBPUlRfe0gsSX0gdG8gaW50ZWxfcG9y
dF90b19wb3dlcl9kb21haW4oKQogIGRybS9pOTE1OiBBZGQgQVVYX0NIX3tILEl9IHBvd2VyIGRv
bWFpbiBoYW5kbGluZwogIGRybS9pOTE1OiBBZGQgVkJUIERWTyBwb3J0cyBIIGFuZCBJCiAgZHJt
L2k5MTU6IEFkZCBWQlQgQVVYIENIIEggYW5kIEkKICBkcm0vaTkxNTogTnVrZSB0aGUgcmVkdW5k
YW50IFRDL1RCVCBIUEQgYml0IGRlZmluZXMKICBkcm0vaTkxNTogQ29uZmlndXJlIEdFTjExX3tU
QlQsVEN9X0hPVFBMVUdfQ1RMIGZvciBwb3J0cyBUQzUvNgogIGRybS9pOTE1OiBTcGxpdCBpY3Bf
aHBkX2RldGVjdGlvbl9zZXR1cCgpIGludG8gZGRpIHZzLiB0YyBwYXJ0cwogIGRybS9pOTE1OiBN
b3ZlIGhwZF9waW4gc2V0dXAgdG8gZW5jb2RlciBpbml0CiAgZHJtL2k5MTU6IEludHJvZHVjZSBI
UERfUE9SVF9UQzxuPgogIGRybS9pOTE1OiBJbnRyb2R1Y2UgaW50ZWxfaHBkX2hvdHBsdWdfaXJx
cygpCiAgZHJtL2k5MTU6IE51a2UgcG9pbnRsZXNzIHZhcmlhYmxlCgogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgIHwgICA4ICsKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICB8ICA2NCArKysrKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDEyICsKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oICB8ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfaGRtaS5jICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMgIHwgIDI4ICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oIHwgIDEwICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgMTcgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfaXJxLmMgICAgICAgICAgICAgICB8IDIyNyArKysrKysrLS0tLS0tLS0tLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICAzNiArLS0KIDExIGZpbGVz
IGNoYW5nZWQsIDIwMyBpbnNlcnRpb25zKCspLCAyMDUgZGVsZXRpb25zKC0pCgotLSAKMi4yNi4y
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
