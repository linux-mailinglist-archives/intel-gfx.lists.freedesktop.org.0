Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAEF3A2D77
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 15:51:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A9196ED20;
	Thu, 10 Jun 2021 13:51:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E921B6ED20;
 Thu, 10 Jun 2021 13:51:41 +0000 (UTC)
IronPort-SDR: 2qhxZDMf4/xka/mr+QbwHpoLrjXf/RA7YMVANlKeuBJfpxrk1zQ2R1wr9a5qx90oW3Undh/7XJ
 dg5w6OnIIY9A==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="205333179"
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="205333179"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 06:51:37 -0700
IronPort-SDR: IDx/c5dTIyfDu/DVuHVFk3vzL2zSRP30vGd8+BrVJBbToLf18nhyBw+lyQ+8zUZHYoRKZ53fuM
 DLv2JlZRqDHg==
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="482844464"
Received: from ppiorkow-desk.igk.intel.com (HELO localhost) ([10.102.12.149])
 by orsmga001-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2021 06:51:34 -0700
Date: Thu, 10 Jun 2021 15:55:44 +0200
From: Piotr =?utf-8?Q?Pi=C3=B3rkowski?= <piotr.piorkowski@intel.com>
To: Matthew Brost <matthew.brost@intel.com>
Message-ID: <20210610135544.scqqhd3awdymx4bk@intel.com>
References: <20210610043649.144416-1-matthew.brost@intel.com>
 <20210610043649.144416-10-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210610043649.144416-10-matthew.brost@intel.com>
Subject: Re: [Intel-gfx] [PATCH 09/13] drm/i915/doc: Include GuC ABI
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+IHdyb3RlIG9uIMWbcm8gWzIw
MjEtY3plLTA5IDIxOjM2OjQ1IC0wNzAwXToKPiBGcm9tOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNo
YWwud2FqZGVjemtvQGludGVsLmNvbT4KPiAKPiBHdUMgQUJJIGRvY3VtZW50YXRpb24gaXMgbm93
IHJlYWR5IHRvIGJlIGluY2x1ZGVkIGluIGk5MTUucnN0Cj4gCj4gU2lnbmVkLW9mZi1ieTogTWlj
aGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1i
eTogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+Cj4gQ2M6IFBpb3RyIFBp
w7Nya293c2tpIDxwaW90ci5waW9ya293c2tpQGludGVsLmNvbT4KCkFja2VkLWJ5OiBQaW90ciBQ
acOzcmtvd3NraSA8cGlvdHIucGlvcmtvd3NraUBpbnRlbC5jb20+Cgo+IC0tLQo+ICBEb2N1bWVu
dGF0aW9uL2dwdS9pOTE1LnJzdCB8IDggKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5z
ZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdCBi
L0RvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0Cj4gaW5kZXggNDJjZTAxOTY5MzBhLi5jNzg0NmIx
ZDkyOTMgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QKPiArKysgYi9E
b2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdAo+IEBAIC01MTgsNiArNTE4LDE0IEBAIEd1Qy1iYXNl
ZCBjb21tYW5kIHN1Ym1pc3Npb24KPiAgLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMKPiAgICAgOmRvYzogR3VDLWJhc2VkIGNv
bW1hbmQgc3VibWlzc2lvbgo+ICAKPiArR3VDIEFCSQo+ICt+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+Cj4gKwo+ICsuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
YWJpL2d1Y19tZXNzYWdlc19hYmkuaAo+ICsuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvYWJpL2d1Y19jb21tdW5pY2F0aW9uX21taW9fYWJpLmgKPiArLi4ga2VybmVs
LWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2FiaS9ndWNfY29tbXVuaWNhdGlvbl9j
dGJfYWJpLmgKPiArLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2Fi
aS9ndWNfYWN0aW9uc19hYmkuaAo+ICsKPiAgSHVDCj4gIC0tLQo+ICAuLiBrZXJuZWwtZG9jOjog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmMKPiAtLSAKPiAyLjI4LjAKPiAK
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVs
LWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0t
IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
