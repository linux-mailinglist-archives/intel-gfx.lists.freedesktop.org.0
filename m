Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A5239E5D1
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 19:46:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C73D6E9A2;
	Mon,  7 Jun 2021 17:46:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5507F6E98D;
 Mon,  7 Jun 2021 17:46:07 +0000 (UTC)
IronPort-SDR: jUYEhwU4rgYlGtarkIrNkDcvbYCI9kHc3IXUQlVfS2Ae1zaZJcfncMODHokAwhoYRmeVATW/kz
 EnOvM2MUIZ2Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204695181"
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="204695181"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 10:46:05 -0700
IronPort-SDR: v97xek1kPBb5P2dyHsLAgQkiff2rdmXJXyH/NNYs78gWLyfGLhpKqoelbEnnHcdN58DWJHryuP
 q4lXX4TvSHHw==
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="551970177"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 10:46:05 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Mon,  7 Jun 2021 11:03:51 -0700
Message-Id: <20210607180356.165785-10-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210607180356.165785-1-matthew.brost@intel.com>
References: <20210607180356.165785-1-matthew.brost@intel.com>
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
