Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E648579040
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 18:04:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41C746E062;
	Mon, 29 Jul 2019 16:04:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4989C6E062
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 16:04:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 08:23:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,323,1559545200"; d="scan'208";a="179414825"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Jul 2019 08:23:16 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6TFNFE5014113; Mon, 29 Jul 2019 16:23:15 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2019 15:22:58 +0000
Message-Id: <20190729152301.22588-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190729152301.22588-1-michal.wajdeczko@intel.com>
References: <20190729152301.22588-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Report -ENODEV after injecting
 probe failure
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

V2Ugd2FudCB0byBkbyBtb3JlIGRyaXZlciB0ZXN0aW5nIHVzaW5nIGluamVjdGVkIGxvYWQgZXJy
b3JzLApidXQgd2UgZG9uJ3Qgd2FudCB0byBsaW1pdCBvdXJzZWx2ZXMgdG8gdXNlIG9ubHkgLUVO
T0RFViAoYXMKb3RoZXIgZXJyb3JzIGFyZSBpbnRlcnByZXRlZCBhcyByZWFsIGlzc3VlcywgbGlr
ZSB0aGlzOgoKPDQ+IFszODEuNTY5NDc5XSBpOTE1OiBwcm9iZSBvZiAwMDAwOjAwOjAyLjAgZmFp
bGVkIHdpdGggZXJyb3IgLTcKClN1Z2dlc3RlZC1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8
ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWljaGFsIFdh
amRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8g
U3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGNpLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwppbmRleCBiZDkyMTFiM2Q3
NmUuLjMzMjk0OWMyMGEyOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
Y2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCkBAIC05NTYsNyArOTU2
LDcgQEAgc3RhdGljIGludCBpOTE1X3BjaV9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgY29u
c3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCkKIAogCWVyciA9IGk5MTVfZHJpdmVyX3Byb2Jl
KHBkZXYsIGVudCk7CiAJaWYgKGVycikKLQkJcmV0dXJuIGVycjsKKwkJcmV0dXJuIGk5MTVfZXJy
b3JfaW5qZWN0ZWQoKSA/IC1FTk9ERVYgOiBlcnI7CiAKIAlpZiAoaTkxNV9pbmplY3RfcHJvYmVf
ZmFpbHVyZSgpKSB7CiAJCWk5MTVfcGNpX3JlbW92ZShwZGV2KTsKLS0gCjIuMTkuMgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
