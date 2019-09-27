Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E88C0C07
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 21:24:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A4C36E216;
	Fri, 27 Sep 2019 19:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1E966E216
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 19:24:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18644103-1500050 for multiple; Fri, 27 Sep 2019 20:24:19 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190927173409.31175-10-matthew.auld@intel.com>
References: <20190927173409.31175-1-matthew.auld@intel.com>
 <20190927173409.31175-10-matthew.auld@intel.com>
Message-ID: <156961225487.1880.10428019356619741012@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 27 Sep 2019 20:24:14 +0100
Subject: Re: [Intel-gfx] [PATCH 09/22] drm/i915/lmem: support kernel mapping
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
Cc: daniel.vetter@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDktMjcgMTg6MzM6NTYpCj4gIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdF9vcHMgaTkxNV9nZW1fb2JqZWN0X2ludGVybmFs
X29wcyA9IHsKPiAgICAgICAgIC5mbGFncyA9IEk5MTVfR0VNX09CSkVDVF9IQVNfU1RSVUNUX1BB
R0UgfAo+IC0gICAgICAgICAgICAgICAgSTkxNV9HRU1fT0JKRUNUX0lTX1NIUklOS0FCTEUsCj4g
KyAgICAgICAgICAgICAgICBJOTE1X0dFTV9PQkpFQ1RfSVNfU0hSSU5LQUJMRSB8Cj4gKyAgICAg
ICAgICAgICAgICBJOTE1X0dFTV9PQkpFQ1RfSVNfTUFQUEFCTEUsCj4gKwo+ICBjb25zdCBzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdF9vcHMgaTkxNV9nZW1fc2htZW1fb3BzID0gewo+ICAgICAg
ICAgLmZsYWdzID0gSTkxNV9HRU1fT0JKRUNUX0hBU19TVFJVQ1RfUEFHRSB8Cj4gLSAgICAgICAg
ICAgICAgICBJOTE1X0dFTV9PQkpFQ1RfSVNfU0hSSU5LQUJMRSwKPiArICAgICAgICAgICAgICAg
IEk5MTVfR0VNX09CSkVDVF9JU19TSFJJTktBQkxFIHwKPiArICAgICAgICAgICAgICAgIEk5MTVf
R0VNX09CSkVDVF9JU19NQVBQQUJMRSwKCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdF9vcHMgaHVnZV9vcHMgPSB7Cj4gICAgICAgICAuZmxhZ3MgPSBJOTE1X0dFTV9P
QkpFQ1RfSEFTX1NUUlVDVF9QQUdFIHwKPiAtICAgICAgICAgICAgICAgIEk5MTVfR0VNX09CSkVD
VF9JU19TSFJJTktBQkxFLAo+ICsgICAgICAgICAgICAgICAgSTkxNV9HRU1fT0JKRUNUX0lTX1NI
UklOS0FCTEUgfAo+ICsgICAgICAgICAgICAgICAgSTkxNV9HRU1fT0JKRUNUX0lTX01BUFBBQkxF
LAoKV2hlcmUncyBodWdlX3BhZ2VzIGFuZCB1c2VycHRyPwoKSW4gc2hvcnQgYW55IHRoYXQgSEFT
X1NUUlVDVF9QQUdFIGlzIGFsc28gbWFwcGFibGUgYnkgeW91ciBkZWZpbml0aW9uCih3ZSBjYW4g
dXNlIGttYXAgb24gdGhlbSkuIEkgc3VnZ2VzdCBtYXliZSB1c2luZyBIQVNfSU9NRU0gYW5kIHRo
ZW4KCWlmICghKG9iai0+b3BzLT5mbGFncyAmIChIQVNfU1RSVUNUX1BBR0UgfCBIQVNfSU9NRU0p
KQo/Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
