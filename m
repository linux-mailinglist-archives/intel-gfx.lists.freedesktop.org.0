Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AC0ADD6D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 18:41:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42AEF89CF8;
	Mon,  9 Sep 2019 16:41:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 049B789CF8
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 16:41:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 09:41:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,486,1559545200"; d="scan'208";a="175033090"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.252.93.73])
 ([10.252.93.73])
 by orsmga007.jf.intel.com with ESMTP; 09 Sep 2019 09:41:43 -0700
To: "Sharma, Shashank" <shashank.sharma@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190907110735.10302-1-animesh.manna@intel.com>
 <20190907110735.10302-3-animesh.manna@intel.com>
 <daa86c65-b87f-cd63-19ce-68da57c6c638@intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <5c1a838d-db32-1f07-f9f2-0ae95418bd08@intel.com>
Date: Mon, 9 Sep 2019 22:11:42 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <daa86c65-b87f-cd63-19ce-68da57c6c638@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 02/11] drm/i915/dsb: DSB context creation.
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA5LzkvMjAxOSA2OjI2IFBNLCBTaGFybWEsIFNoYXNoYW5rIHdyb3RlOgo+Cj4gT24gOS83
LzIwMTkgNDozNyBQTSwgQW5pbWVzaCBNYW5uYSB3cm90ZToKPj4gK3ZvaWQgaW50ZWxfZHNiX3B1
dChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpCj4+ICt7Cj4+ICsgICAgc3RydWN0IGludGVsX2NydGMg
KmNydGMgPSBjb250YWluZXJfb2YoZHNiLCB0eXBlb2YoKmNydGMpLCBkc2IpOwo+PiArICAgIHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7Cj4+
ICsKPj4gKyAgICBpZiAoIWRzYikKPj4gKyAgICAgICAgcmV0dXJuOwo+PiArCj4+ICsgICAgaWYg
KGRzYi0+Y21kX2J1Zikgewo+PiArICAgICAgICBtdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0
X211dGV4KTsKPj4gKyAgICAgICAgaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChkc2ItPnZtYS0+
b2JqKTsKPj4gKyAgICAgICAgaTkxNV92bWFfdW5waW5fYW5kX3JlbGVhc2UoJmRzYi0+dm1hLCAw
KTsKPj4gKyAgICAgICAgZHNiLT5jbWRfYnVmID0gTlVMTDsKPgo+IFRoaXMgY2FuIGJlIGRvbmUg
b3V0c2lkZSBtdXRleF91bmxvY2soKTsKCk9rLgoKUmVnYXJkcywKQW5pbWVzaApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
