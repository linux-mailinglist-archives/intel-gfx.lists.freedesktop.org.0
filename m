Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F6F26C05
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 21:32:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F7289BF8;
	Wed, 22 May 2019 19:32:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3989489BD5
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 19:32:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 12:32:10 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by FMSMGA003.fm.intel.com with ESMTP; 22 May 2019 12:32:09 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4MJW5Go020993; Wed, 22 May 2019 20:32:08 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 May 2019 19:32:01 +0000
Message-Id: <20190522193203.23932-8-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.10.1.windows.1
In-Reply-To: <20190522193203.23932-1-michal.wajdeczko@intel.com>
References: <20190522193203.23932-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] [PATCH v2 7/9] drm/i915/uc: Skip GuC HW unwinding if
 GuC is already dead
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2Ugc2hvdWxkIG5vdCBhdHRlbXB0IHRvIHVud2luZCBHdUMgaGFyZHdhcmUvZmlybXdhcmUgc2V0
dXAKaWYgd2UgYWxyZWFkeSBoYXZlIHNhbml0aXplZCBHdUMuCgp2MjogcmVwbGFjZSBVU0VTX0dV
QyB3aXRoIGd1Y19pc19sb2FkZWQKClNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1p
Y2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9z
cHVyaW9AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMgfCAy
ICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfdWMuYwppbmRleCAxYTk0NWY2MWNmNjkuLjNkODFhNTEyZTVjOCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF91Yy5jCkBAIC00NjAsNyArNDYwLDcgQEAgdm9pZCBpbnRlbF91Y19maW5p
X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewogCXN0cnVjdCBpbnRlbF9ndWMg
Kmd1YyA9ICZpOTE1LT5ndWM7CiAKLQlpZiAoIVVTRVNfR1VDKGk5MTUpKQorCWlmICghaW50ZWxf
Z3VjX2lzX2xvYWRlZChndWMpKQogCQlyZXR1cm47CiAKIAlHRU1fQlVHX09OKCFIQVNfR1VDKGk5
MTUpKTsKLS0gCjIuMTkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
