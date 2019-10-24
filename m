Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49714E3AE0
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 20:24:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16A486E5D0;
	Thu, 24 Oct 2019 18:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7238E6E5D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 18:24:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 11:24:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,225,1569308400"; d="scan'208";a="373304989"
Received: from helsinki.fi.intel.com ([10.237.66.157])
 by orsmga005.jf.intel.com with ESMTP; 24 Oct 2019 11:24:31 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 21:24:18 +0300
Message-Id: <20191024182423.958952-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] Update VSC SDP / HDR Metadata SDP states on
 pipe updates.
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

SXQgY2FsbHMgaW50ZWxfZHBfdnNjX2VuYWJsZSgpIGFuZCBpbnRlbF9kcF9oZHJfbWV0YWRhdGFf
ZW5hYmxlKCkgb24gcGlwZQp1cGRhdGVzIHRvIG1ha2Ugc3VyZSB0aGF0IHdlIGVuYWJsZSBzZW5k
aW5nIG9mIFZTQyBTRFAgYW5kIEhEUiBNZXRhZGF0YQpJbmZvZnJhbWUgU0RQIHBhY2tldCAod2hl
biBhcHBsaWNhYmxlKSBvbiBmYXN0c2V0cy4KSW4gb3JkZXIgdG8gc2V0IGFuIGVuYWJsZWQgc3Rh
dGUgb2YgVlNDIFNEUCBhbmQgSERSIE1ldGFkYXRhIEluZm9mcmFtZSBTRFAsCkl0IGFkZHMgaW50
ZWxfZW5hYmxlX2luZm9mcmFtZSgpIGZ1bmN0aW9uIHRvIGhhbmRsZSBlbmFibGluZy9kaXNhYmxp
bmcgb2YKZWFjaCBWaWRlbyBESVAuIEFuZCBpdCBhZGQgaW50ZWxfaW5mb2ZyYW1lX2VuYWJsZWQo
KSBmdW5jdGlvbiB0byBnZXQgYW4KZW5hYmxlZCBzdGF0ZSBvZiBhIHNwZWNpZmljIGluZm9mcmFt
ZS4KCkd3YW4tZ3llb25nIE11biAoNSk6CiAgZHJtL2k5MTU6IEFkZCB3aGV0aGVyIG9yIG5vdCB0
byBlbmFibGUgYW4gZWFjaCBvZiBWaWRlbyBESVAKICBkcm0vaTkxNTogQWRkIGNoZWNraW5nIGEg
c3BlY2lmaWMgVmlkZW8gRElQIGlzIGVuYWJsZWQgb3Igbm90CiAgZHJtL2k5MTUvZHA6IFN0b3Ag
c2VuZGluZyBvZiBWU0MgU0RQIHdoZW4gaXQgaXMgbm90IG5lZWRlZAogIGRybS9pOTE1L2RwOiBT
dG9wIHNlbmRpbmcgb2YgSERSIE1ldGFkYXRhIEluZm9mcmFtZSB3aGVuIGl0IGlzIG5vdAogICAg
bmVlZGVkCiAgZHJtL2k5MTUvZHA6IENhbGwgZHBfdnNjX2VuYWJsZSgpIC8gZHBfaGRyX21ldGF0
YV9lbmFibGUoKSBvbiBwaXBlCiAgICB1cGRhdGVzCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYyAgICAgIHwgIDIgKwogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oICAgIHwgIDQgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYyAgICAgICB8IDIwICsrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfaGRtaS5jICAgICB8IDU2ICsrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5oICAgICB8ICA2ICsrCiA1IGZpbGVzIGNoYW5n
ZWQsIDg2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgotLSAKMi4yMy4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
