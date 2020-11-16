Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A142B4FFA
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 19:41:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6A2589F6E;
	Mon, 16 Nov 2020 18:41:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2019B89EB1;
 Mon, 16 Nov 2020 18:41:02 +0000 (UTC)
IronPort-SDR: pnxtlVgor2f2ZsYmAlF/Nz3kEYSPoj1QRKYXrMcbe+5hNGFLNC+Kf2RbDc0oRp/Rv/6YttQMGJ
 Ju+O3fWLvLeQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="150065967"
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="150065967"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 10:40:56 -0800
IronPort-SDR: e9M9PRMHP7elSTCkzqcfDPY+1yCjGrMciNcs+NnaF13/bokGLxpt8rOuiPVqp57c5tjnqMjzBK
 UC2ejBZp8IVA==
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="475628467"
Received: from pgierasi-mobl.ger.corp.intel.com (HELO zkempczy-mobl2)
 ([10.213.2.76])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 10:40:54 -0800
Date: Mon, 16 Nov 2020 19:40:50 +0100
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20201116184050.GA9090@zkempczy-mobl2>
References: <20201116172653.4030093-1-tvrtko.ursulin@linux.intel.com>
 <20201116172653.4030093-5-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201116172653.4030093-5-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 5/5] intel_gpu_top: Default
 GPU list to PCI mode
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBOb3YgMTYsIDIwMjAgYXQgMDU6MjY6NTNQTSArMDAwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiAKPiBJdCBpcyBtb3JlIG9idmlvdXMgZm9yIHRoZSB1c2VyIHRvIG9ubHkgc2hvd3MgZmlsdGVy
cyBmb3IgRFJNIG1hc3Rlcgo+IG5vZGVzIHNpbmNlIHRob3NlIGFyZSB0aGUgb25lcyB0aGF0IGlu
dGVsX2dwdV90b3AgbW9uaXRvcnMuCj4gCj4gdjI6Cj4gICogRmlsdGVyIHByZWZpeCBuZWVkcyB0
byBiZSBzeXM6IHdoZW4gbGlzdGluZyBQQ0kgZGV2aWNlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICB0b29scy9p
bnRlbF9ncHVfdG9wLmMgfCAzICsrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3Rvb2xzL2ludGVsX2dwdV90b3AuYyBi
L3Rvb2xzL2ludGVsX2dwdV90b3AuYwo+IGluZGV4IDA3Zjg4ZDU1NWRjOC4uMzdiMjE0MWU3ODRk
IDEwMDY0NAo+IC0tLSBhL3Rvb2xzL2ludGVsX2dwdV90b3AuYwo+ICsrKyBiL3Rvb2xzL2ludGVs
X2dwdV90b3AuYwo+IEBAIC0xMzg4LDcgKzEzODgsOCBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hh
ciAqKmFyZ3YpCj4gIAo+ICAJaWYgKGxpc3RfZGV2aWNlKSB7Cj4gIAkJc3RydWN0IGlndF9kZXZp
Y2VzX3ByaW50X2Zvcm1hdCBmbXQgPSB7Cj4gLQkJCS50eXBlID0gSUdUX1BSSU5UX1VTRVIKPiAr
CQkJLnR5cGUgPSBJR1RfUFJJTlRfVVNFUiwKPiArCQkJLm9wdGlvbiA9IElHVF9QUklOVF9QQ0ks
Cj4gIAkJfTsKPiAgCj4gIAkJaWd0X2RldmljZXNfcHJpbnQoJmZtdCk7Cj4gLS0gCj4gMi4yNS4x
Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBp
Z3QtZGV2IG1haWxpbmcgbGlzdAo+IGlndC1kZXZAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pZ3QtZGV2CgpMb29r
cyBvay4KClJldmlld2VkLWJ5OiBaYmlnbmlldyBLZW1wY3p5xYRza2kgPHpiaWduaWV3LmtlbXBj
enluc2tpQGludGVsLmNvbT4KCi0tClpiaWduaWV3Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
