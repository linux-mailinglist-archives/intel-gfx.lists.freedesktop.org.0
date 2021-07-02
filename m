Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5A03BA0E7
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 15:06:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80DB76E176;
	Fri,  2 Jul 2021 13:06:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ACAF6E176;
 Fri,  2 Jul 2021 13:06:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="205721414"
X-IronPort-AV: E=Sophos;i="5.83,317,1616482800"; d="scan'208";a="205721414"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2021 06:06:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,317,1616482800"; d="scan'208";a="559035941"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga004.jf.intel.com with ESMTP; 02 Jul 2021 06:06:36 -0700
Received: from [10.249.132.69] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.132.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 162D6ZWh032744; Fri, 2 Jul 2021 14:06:35 +0100
To: Martin Peres <martin.peres@free.fr>,
 Matthew Brost <matthew.brost@intel.com>
References: <20210624070516.21893-1-matthew.brost@intel.com>
 <20210624070516.21893-48-matthew.brost@intel.com>
 <88cbe963-7188-f4ae-5acf-01a80bd2fe25@free.fr>
 <20210630180052.GA8283@sdutt-i7>
 <7c3e1d46-74eb-6f2d-53ca-d73ce9e61c03@free.fr>
 <d9e31651-dd97-fb39-0045-7cd62650bd03@free.fr>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <2d649c1a-82fc-cced-4020-f7d9d96c3bc4@intel.com>
Date: Fri, 2 Jul 2021 15:06:34 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <d9e31651-dd97-fb39-0045-7cd62650bd03@free.fr>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 47/47] drm/i915/guc: Unblock GuC submission
 on Gen11+
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

CgpPbiAwMi4wNy4yMDIxIDEwOjEzLCBNYXJ0aW4gUGVyZXMgd3JvdGU6Cj4gT24gMDEvMDcvMjAy
MSAyMToyNCwgTWFydGluIFBlcmVzIHdyb3RlOgo+IFsuLi5dCj4+Pgo+Pj4+Cj4+Pj4+ICvCoMKg
wqDCoMKgwqDCoCBpOTE1LT5wYXJhbXMuZW5hYmxlX2d1YyA9IEVOQUJMRV9HVUNfTE9BRF9IVUM7
Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+Pj4+ICvCoMKgwqAgfQo+Pj4+PiArCj4+
Pj4+ICvCoMKgwqAgLyogRGVmYXVsdDogZW5hYmxlIEh1QyBhdXRoZW50aWNhdGlvbiBhbmQgR3VD
IHN1Ym1pc3Npb24gKi8KPj4+Pj4gK8KgwqDCoCBpOTE1LT5wYXJhbXMuZW5hYmxlX2d1YyA9IEVO
QUJMRV9HVUNfTE9BRF9IVUMgfAo+Pj4+PiBFTkFCTEVfR1VDX1NVQk1JU1NJT047Cj4+Pj4KPj4+
PiBUaGlzIHNlZW1zIHRvIGJlIGluIGNvbnRyYWRpY3Rpb24gd2l0aCB0aGUgR3VDIHN1Ym1pc3Np
b24gcGxhbiB3aGljaAo+Pj4+IHN0YXRlczoKPj4+Pgo+Pj4+ICJOb3QgZW5hYmxlZCBieSBkZWZh
dWx0IG9uIGFueSBjdXJyZW50IHBsYXRmb3JtcyBidXQgY2FuIGJlIGVuYWJsZWQgdmlhCj4+Pj4g
bW9kcGFyYW0gZW5hYmxlX2d1YyIuCj4+Pj4KPj4+Cj4+PiBJIGRvbid0IGJlbGlldmUgYW55IGN1
cnJlbnQgcGxhdGZvcm0gZ2V0cyB0aGlzIHBvaW50IHdoZXJlIEd1Qwo+Pj4gc3VibWlzc2lvbiB3
b3VsZCBiZSBlbmFibGVkIGJ5IGRlZmF1bHQuIFRoZSBmaXJzdCB3b3VsZCBiZSBBREwtUCB3aGlj
aAo+Pj4gaXNuJ3Qgb3V0IHlldC4KPj4KPj4gSXNuJ3QgdGhhdCBleGFjdGx5IHdoYXQgdGhlIGxp
bmUgYWJvdmUgZG9lcz8KPiAKPiBJbiBjYXNlIHlvdSBtaXNzZWQgdGhpcyBjcnVjaWFsIHBhcnQg
b2YgdGhlIHJldmlldy4gUGxlYXNlIGFuc3dlciB0aGUKPiBhYm92ZSBxdWVzdGlvbi4KCkkgZ3Vl
c3MgdGhlcmUgaXMgc29tZSBtaXN1bmRlcnN0YW5kaW5nIGhlcmUsIGFuZCBJIG11c3QgYWRtaXQg
SSBoYWQKc2ltaWxhciBkb3VidCwgYnV0IGlmIHlvdSBsb29rIGJleW9uZCBwYXRjaCBkaWZmIGFu
ZCBjaGVjayBmdW5jdGlvbiBjb2RlCnlvdSB3aWxsIGZpbmQgdGhhdCB0aGUgdmVyeSBjb25kaXRp
b24gaXM6CgoJLyogRG9uJ3QgZW5hYmxlIEd1Qy9IdUMgb24gcHJlLUdlbjEyICovCglpZiAoR1JB
UEhJQ1NfVkVSKGk5MTUpIDwgMTIpIHsKCQlpOTE1LT5wYXJhbXMuZW5hYmxlX2d1YyA9IDA7CgkJ
cmV0dXJuOwoJfQoKc28gYWxsIHByZS1HZW4xMiBwbGF0Zm9ybXMgd2lsbCBjb250aW51ZSB0byBo
YXZlIEd1Qy9IdUMgZGlzYWJsZWQuCgpUaGFua3MsCk1pY2hhbApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
