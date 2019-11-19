Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20624102541
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 14:18:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 764986E24D;
	Tue, 19 Nov 2019 13:18:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC6976E911;
 Tue, 19 Nov 2019 13:18:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 05:18:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,324,1569308400"; d="scan'208";a="200348728"
Received: from unknown (HELO [10.249.33.237]) ([10.249.33.237])
 by orsmga008.jf.intel.com with ESMTP; 19 Nov 2019 05:18:45 -0800
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
References: <20191107173820.2wj2b6ziehhnmoyo@ahiler-desk1.fi.intel.com>
 <157316097482.2228.167580740381610009@skylake-alporthouse-com>
 <20191108090405.yes2ktbqngt3vtlj@ahiler-desk1.fi.intel.com>
 <59485e6b-e06f-29c7-14d4-30de572e9022@intel.com>
 <20191119130206.hhzkbnbtd5pd5rve@ahiler-desk1.fi.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <f152b851-91bb-9a45-9272-4c99bafea384@intel.com>
Date: Tue, 19 Nov 2019 15:18:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191119130206.hhzkbnbtd5pd5rve@ahiler-desk1.fi.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [ANNOUNCEMENT] Documenting tests with igt_describe()
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTkvMTEvMjAxOSAxNTowMiwgQXJrYWRpdXN6IEhpbGVyIHdyb3RlOgo+IFRoZSBnb2FsIGlz
IHRvIGhhdmUgdGhvc2UgZGVzY3JpcHRpb25zIGluIHRoZSBmaXJzdCBwbGFjZSBhbmQgbWFrZSB0
aGVtCj4gbW9yZSBhY2Nlc3NpYmxlIHRvIHBlb3BsZS4gWW91IGhhdmUgdG8ga2VlcCBpbiBtaW5k
IHRoYXQgd2UgaGF2ZQo+IGRlY2VudGx5IHNpemVkIG9yZ2FuaXphdGlvbiwgcGVvcGxlIGFyZSBj
b21pbmcgYW5kIGdvaW5nLiBOb3QgZXZlcnlvbmUKPiBiZWNvbWVzIGEgc2Vhc29uZWQga2VybmVs
IGRldmVsb3BlciBkYXkgb25lIGFuZCBub3QgZXZlcnlvbmUgbG9va2luZyBhdAo+IHRoZSB0ZXN0
cyBhbmQgdGhlaXIgcmVzdWx0cyBpcyBhIGRldmVsb3Blci4KClJpZ2h0LCB0aGF0J3Mgd2hhdCBJ
IGRpZG4ndCBnZXQgZnJvbSB5b3VyIGZpcnN0IGVtYWlsLgoKLUxpb25lbAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
