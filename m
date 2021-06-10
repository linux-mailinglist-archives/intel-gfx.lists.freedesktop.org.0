Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BE03A233F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 06:19:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 184BE6E84C;
	Thu, 10 Jun 2021 04:19:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1399E6E455;
 Thu, 10 Jun 2021 04:19:01 +0000 (UTC)
IronPort-SDR: Vj0Xqd/dFtjGyIr8g/IioUrgp/z3jgiLqY8nmNp8RRel77xYmLALkDIwJaC8CMk65PoaMIsNw4
 ITN8Cu1KT96Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="203373014"
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="203373014"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 21:19:01 -0700
IronPort-SDR: +GXJYM8vMaAz3jPDo0y+hMOfvn6j5rwJIOJC9j7sU5pswHbEbgyMYbvMHEumnBSOZB5W0n09Pf
 iD504Ry9V5Sw==
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="485997282"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 21:19:01 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Wed,  9 Jun 2021 21:36:45 -0700
Message-Id: <20210610043649.144416-10-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210610043649.144416-1-matthew.brost@intel.com>
References: <20210610043649.144416-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/13] drm/i915/doc: Include GuC ABI
 documentation
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

RnJvbTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CgpHdUMg
QUJJIGRvY3VtZW50YXRpb24gaXMgbm93IHJlYWR5IHRvIGJlIGluY2x1ZGVkIGluIGk5MTUucnN0
CgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5j
b20+CkNjOiBQaW90ciBQacOzcmtvd3NraSA8cGlvdHIucGlvcmtvd3NraUBpbnRlbC5jb20+Ci0t
LQogRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QgfCA4ICsrKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5y
c3QgYi9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdAppbmRleCA0MmNlMDE5NjkzMGEuLmM3ODQ2
YjFkOTI5MyAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QKKysrIGIvRG9j
dW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QKQEAgLTUxOCw2ICs1MTgsMTQgQEAgR3VDLWJhc2VkIGNv
bW1hbmQgc3VibWlzc2lvbgogLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMKICAgIDpkb2M6IEd1Qy1iYXNlZCBjb21tYW5kIHN1
Ym1pc3Npb24KIAorR3VDIEFCSQorfn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgorCisuLiBr
ZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvYWJpL2d1Y19tZXNzYWdlc19h
YmkuaAorLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2FiaS9ndWNf
Y29tbXVuaWNhdGlvbl9tbWlvX2FiaS5oCisuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvYWJpL2d1Y19jb21tdW5pY2F0aW9uX2N0Yl9hYmkuaAorLi4ga2VybmVsLWRv
Yzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2FiaS9ndWNfYWN0aW9uc19hYmkuaAorCiBI
dUMKIC0tLQogLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2h1Yy5jCi0tIAoyLjI4LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
