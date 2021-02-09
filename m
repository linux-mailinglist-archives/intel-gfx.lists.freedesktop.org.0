Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DC93155AC
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 19:13:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A3B76EB92;
	Tue,  9 Feb 2021 18:13:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86B256EB93
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 18:13:28 +0000 (UTC)
IronPort-SDR: ZyTXOnE7yuLrCI/PZFcJX/xVK+XmHjaQSFwI/U3a1CkFXt6FvbjXHgD9My1/qps5xJLTGirWKG
 B7L/mRugH4dg==
X-IronPort-AV: E=McAfee;i="6000,8403,9890"; a="201014110"
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; d="scan'208";a="201014110"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 10:13:27 -0800
IronPort-SDR: p6U4SN4OuS5zR0MNn+paCTJ1eSBtyyqAEDnMIVfq8XzQbAU+pdvuU4F2rameZcTQCMX+P48TaO
 ubBSE8safSag==
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; d="scan'208";a="396324723"
Received: from rmahmood-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.254.190.123])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 10:13:25 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Feb 2021 10:14:39 -0800
Message-Id: <20210209181439.215104-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210209181439.215104-1-jose.souza@intel.com>
References: <20210209181439.215104-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/display: Set source_support even
 if panel do not support PSR
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

VGhpcyB3aWxsIHNldCB0aGUgcmlnaHQgdmFsdWUgb2Ygc291cmNlX3N1cHBvcnQgd2hlbiB0aGUg
cG9ydAplbmNvZGVyL3BvcnQgc3VwcG9ydHMgUFNSIGJ1dCBzaW5rIGRvbid0LgoKVGhpcyBjaGFu
Z2Ugd2lsbCBhbHNvIGJlIG5lZWRlZCBpbiBmdXR1cmUgZm9yIHBhbmVsIHJlcGxheSBhcyBwc3IK
c3RydWN0IG5lZWRzIHRvIGJlIGluaXRpYWxpemVkIGV2ZW4gaWYgZGlzY29ubmVjdGVkIG9yIGN1
cnJlbnQgc2luawpkb24ndCBzdXBwb3J0IFBTUi4KCkNjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4t
Z3llb25nLm11bkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMgfCAzIC0tLQogMSBmaWxlIGNoYW5nZWQsIDMgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5kZXggZTAxMTFiNDcwNTcw
Li42YjNlMjEyMDE2MWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YwpAQCAtMTgzNyw5ICsxODM3LDYgQEAgdm9pZCBpbnRlbF9wc3JfaW5pdChzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKQogCWlmICghSEFTX1BTUihkZXZfcHJpdikpCiAJCXJldHVybjsKIAotCWlm
ICghaW50ZWxfZHAtPnBzci5zaW5rX3N1cHBvcnQpCi0JCXJldHVybjsKLQogCS8qCiAJICogSFNX
IHNwZWMgZXhwbGljaXRseSBzYXlzIFBTUiBpcyB0aWVkIHRvIHBvcnQgQS4KIAkgKiBCRFcrIHBs
YXRmb3JtcyBoYXZlIGEgaW5zdGFuY2Ugb2YgUFNSIHJlZ2lzdGVycyBwZXIgdHJhbnNjb2RlciBi
dXQKLS0gCjIuMzAuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
