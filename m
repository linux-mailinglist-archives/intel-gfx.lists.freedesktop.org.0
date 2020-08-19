Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 906B724A63A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 20:49:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A69DE6E5C5;
	Wed, 19 Aug 2020 18:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14A136E5C3
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 18:49:19 +0000 (UTC)
IronPort-SDR: cFSKrMuDyId37RbdjQlbrcM1msCOT1UCL3rec86WZ3z0NbsAN+lkIyzkOuKcKhbWOEXbpul96v
 foO2XD7a8ogA==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="142811997"
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="142811997"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 11:49:18 -0700
IronPort-SDR: BbXFcSpTFnow6OsFORKCOq3I43NhrNRwWLKAVByGcIAT/kbBvtd48cg+JGb3hzvrTMhG4Ptg1N
 XG3CAvxq+y1Q==
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="497338918"
Received: from wagenett-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.254.62.64])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 11:49:17 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Aug 2020 11:51:46 -0700
Message-Id: <20200819185146.22109-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200819185146.22109-1-jose.souza@intel.com>
References: <20200819185146.22109-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/ehl: Update voltage swing table
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

VXBkYXRlIHdpdGggbGF0ZXN0IHR1bm5pbmcgaW4gdGhlIHRhYmxlLgoKQlNwZWM6IDIxMjU3ClNp
Z25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAxMiArKysr
KystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggMGZhNDA3NTAz
NmU2Li42MjcxMDM0NDU1YTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYwpAQCAtNTcyLDE0ICs1NzIsMTQgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1
Zl90cmFucyBlaGxfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZHBbXSA9IHsKIAkJCQkJCS8q
IE5UIG1WIFRyYW5zIG1WIGRiICAgICovCiAJeyAweEEsIDB4MzMsIDB4M0YsIDB4MDAsIDB4MDAg
fSwJLyogMzUwICAgMzUwICAgICAgMC4wICAgKi8KIAl7IDB4QSwgMHg0NywgMHgzNiwgMHgwMCwg
MHgwOSB9LAkvKiAzNTAgICA1MDAgICAgICAzLjEgICAqLwotCXsgMHhDLCAweDY0LCAweDMwLCAw
eDAwLCAweDBGIH0sCS8qIDM1MCAgIDcwMCAgICAgIDYuMCAgICovCi0JeyAweDYsIDB4N0YsIDB4
MkMsIDB4MDAsIDB4MTMgfSwJLyogMzUwICAgOTAwICAgICAgOC4yICAgKi8KKwl7IDB4QywgMHg2
NCwgMHgzNCwgMHgwMCwgMHgwQiB9LAkvKiAzNTAgICA3MDAgICAgICA2LjAgICAqLworCXsgMHg2
LCAweDdGLCAweDMwLCAweDAwLCAweDBGIH0sCS8qIDM1MCAgIDkwMCAgICAgIDguMiAgICovCiAJ
eyAweEEsIDB4NDYsIDB4M0YsIDB4MDAsIDB4MDAgfSwJLyogNTAwICAgNTAwICAgICAgMC4wICAg
Ki8KLQl7IDB4QywgMHg2NCwgMHgzNiwgMHgwMCwgMHgwOSB9LAkvKiA1MDAgICA3MDAgICAgICAy
LjkgICAqLwotCXsgMHg2LCAweDdGLCAweDMwLCAweDAwLCAweDBGIH0sCS8qIDUwMCAgIDkwMCAg
ICAgIDUuMSAgICovCisJeyAweEMsIDB4NjQsIDB4MzgsIDB4MDAsIDB4MDcgfSwJLyogNTAwICAg
NzAwICAgICAgMi45ICAgKi8KKwl7IDB4NiwgMHg3RiwgMHgzMiwgMHgwMCwgMHgwRCB9LAkvKiA1
MDAgICA5MDAgICAgICA1LjEgICAqLwogCXsgMHhDLCAweDYxLCAweDNGLCAweDAwLCAweDAwIH0s
CS8qIDY1MCAgIDcwMCAgICAgIDAuNiAgICovCi0JeyAweDYsIDB4N0YsIDB4MzcsIDB4MDAsIDB4
MDggfSwJLyogNjAwICAgOTAwICAgICAgMy41ICAgKi8KLQl7IDB4NiwgMHg3RiwgMHgzRiwgMHgw
MCwgMHgwMCB9LAkvKiA5MDAgICA5MDAgICAgICAwLjAgICAqLworCXsgMHg2LCAweDdGLCAweDM3
LCAweDAwLCAweDA3IH0sCS8qIDYwMCAgIDkwMCAgICAgIDMuNSAgICovCisJeyAweDYsIDB4N0Ys
IDB4MzgsIDB4MDAsIDB4MDAgfSwJLyogOTAwICAgOTAwICAgICAgMC4wICAgKi8KIH07CiAKIHN0
cnVjdCBpY2xfbWdfcGh5X2RkaV9idWZfdHJhbnMgewotLSAKMi4yOC4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
