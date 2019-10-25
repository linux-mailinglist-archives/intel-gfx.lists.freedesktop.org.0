Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CD2E4B95
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 14:55:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BEE789F47;
	Fri, 25 Oct 2019 12:55:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 448AD89F41
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 12:55:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 05:55:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="201801009"
Received: from helsinki.fi.intel.com ([10.237.66.157])
 by orsmga003.jf.intel.com with ESMTP; 25 Oct 2019 05:55:39 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 15:55:25 +0300
Message-Id: <20191025125530.1015447-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/5] Update VSC SDP / HDR Metadata SDP states
 on pipe updates.
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
ZS4KCnYyOiBNaW5vciBzdHlsZSBmaXgKCkd3YW4tZ3llb25nIE11biAoNSk6CiAgZHJtL2k5MTU6
IEFkZCB3aGV0aGVyIG9yIG5vdCB0byBlbmFibGUgYW4gZWFjaCBvZiBWaWRlbyBESVAKICBkcm0v
aTkxNTogQWRkIGNoZWNraW5nIGEgc3BlY2lmaWMgVmlkZW8gRElQIGlzIGVuYWJsZWQgb3Igbm90
CiAgZHJtL2k5MTUvZHA6IFN0b3Agc2VuZGluZyBvZiBWU0MgU0RQIHdoZW4gaXQgaXMgbm90IG5l
ZWRlZAogIGRybS9pOTE1L2RwOiBTdG9wIHNlbmRpbmcgb2YgSERSIE1ldGFkYXRhIEluZm9mcmFt
ZSB3aGVuIGl0IGlzIG5vdAogICAgbmVlZGVkCiAgZHJtL2k5MTUvZHA6IENhbGwgZHBfdnNjX2Vu
YWJsZSgpIC8gZHBfaGRyX21ldGF0YV9lbmFibGUoKSBvbiBwaXBlCiAgICB1cGRhdGVzCgogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgIDIgKwogLi4uL2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDQgKysKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgICB8IDIxICsrKysrKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jICAgICB8IDU3ICsrKysrKysrKysr
KysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5oICAgICB8
ICA2ICsrCiA1IGZpbGVzIGNoYW5nZWQsIDg4IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
CgotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
