Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE0A8E03B
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 23:58:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A138B6E860;
	Wed, 14 Aug 2019 21:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 862CA6E860
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 21:58:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 14:58:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,386,1559545200"; d="scan'208";a="260632661"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga001.jf.intel.com with ESMTP; 14 Aug 2019 14:58:09 -0700
Message-ID: <1565819942.30036.55.camel@intel.com>
From: Stuart Summers <stuart.summers@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Date: Wed, 14 Aug 2019 14:59:02 -0700
In-Reply-To: <156577334661.2301.11513607991694075107@skylake-alporthouse-com>
References: <20190813174121.129593-1-stuart.summers@intel.com>
 <20190813174121.129593-2-stuart.summers@intel.com>
 <156571894696.2301.11796275671988356960@skylake-alporthouse-com>
 <156577334661.2301.11513607991694075107@skylake-alporthouse-com>
X-Mailer: Evolution 3.22.6 (3.22.6-14.el7) 
Mime-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Print CCID for all renderCS
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

T24gV2VkLCAyMDE5LTA4LTE0IGF0IDEwOjAyICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4g
UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMTMgMTg6NTU6NDYpCj4gPiBRdW90aW5nIFN0
dWFydCBTdW1tZXJzICgyMDE5LTA4LTEzIDE4OjQxOjIwKQo+ID4gPiBVc2UgcmVuZGVyIGNsYXNz
IGluc3RlYWQgb2YgUkNTMCB3aGVuIHByaW50aW5nIENDSUQuCj4gPiA+IAo+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgo+ID4gCj4g
PiBPbmUgZGF5LCBvbmUgZGF5LCB0aGlzIHdpbGwgYmUgdXNpbmcgc29tZSBsaXN0cyBvZiByZWdp
c3RlcnMuCj4gPiAKPiA+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KPiAKPiBQdXNoZWQgdGhpcyBwYXRjaC4gVGhlIGZpcnN0IHBhdGNoIHNwZWFr
cyBvZiB0aGUgcGFuaWMgaWYgbGVnYWN5IEhXCj4gZG9lcwo+IGNoYW5nZSBhbmQgd2UgZW5kIHVw
IHdpdGggdGhlIHJjcyBjb250ZXh0IHNvbWV3aGVyZSBlbHNlLiBBbmQgdGhlCj4gdGhpcmQKPiBw
YXRjaCwgSSB3aXNoIHRvIGRldmVsb3AgaW50byBzb21ldGhpbmcgb2Ygd2lkZXIgdXNlci4KClRo
YW5rcyBDaHJpcyEKCi1TdHVhcnQKCj4gLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
