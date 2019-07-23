Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A0672160
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 23:15:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE7C689FAD;
	Tue, 23 Jul 2019 21:15:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE4C589FAD
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 21:15:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 14:15:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,300,1559545200"; d="scan'208";a="160340310"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 23 Jul 2019 14:15:16 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190722232048.9970-1-daniele.ceraolospurio@intel.com>
 <20190722232048.9970-3-daniele.ceraolospurio@intel.com>
 <op.z5doexsnxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <1b691712-c8b1-b2a4-93f8-228b72456195@intel.com>
Message-ID: <7b36101c-703a-33f2-131f-35d6a8470ad4@intel.com>
Date: Tue, 23 Jul 2019 14:15:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1b691712-c8b1-b2a4-93f8-228b72456195@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/uc: Unify uC platform check
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PHNuaXA+Cgo+Pj4gLQo+Pj4gLS8qIEZvciBub3csIGFueXRoaW5nIHdpdGggYSBHdUMgaGFzIGFs
c28gSHVDICovCj4+PiAtI2RlZmluZSBIQVNfSFVDKGRldl9wcml2KcKgwqDCoCAoSEFTX0dVQyhk
ZXZfcHJpdikpCj4+PiAtI2RlZmluZSBIQVNfSFVDX1VDT0RFKGRldl9wcml2KcKgwqDCoCAoSEFT
X0dVQyhkZXZfcHJpdikpCj4+PiArI2RlZmluZSBIQVNfVUMoZGV2X3ByaXYpwqDCoMKgIChJTlRF
TF9JTkZPKGRldl9wcml2KS0+aGFzX3VjKQo+Pgo+PiB0aW1lIHRvIHVzZSBpOTE1IGluc3RlYWQg
b2YgZGV2X3ByaXYKPiAKPiBvawo+IAoKSSd2ZSBkZWNpZGVkIGFnYWluc3QgdGhpcyBpbiB0aGUg
ZW5kIGJlY2F1c2UgYWxsIHRoZSBvdGhlciBIQVNfKiBjaGVja3MgCmluIHRoZSBmaWxlIHVzZSBk
ZXZfcHJpdiBhbmQgYSBzaW5nbGUgaTkxNSBzdGlja3Mgb3V0IGxpa2UgYSBzb3JlIHRodW1iLiAK
UHJvYmFibHkgYmV0dGVyIHRvIGZsaXAgdGhlbSBhbGwgYXQgdGhlIHNhbWUgdGltZSB3aGVuIHdl
J3JlIHJlYWR5LgoKRGFuaWVsZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
