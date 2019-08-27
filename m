Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 930459E2B1
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 10:31:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 815F889395;
	Tue, 27 Aug 2019 08:31:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 351FE89395
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 08:31:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 01:31:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,436,1559545200"; d="scan'208";a="185221432"
Received: from skallurr-mobl3.ger.corp.intel.com ([10.249.254.139])
 by orsmga006.jf.intel.com with ESMTP; 27 Aug 2019 01:31:10 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190826122102.32400-1-abdiel.janulgue@linux.intel.com>
 <20190826122102.32400-5-abdiel.janulgue@linux.intel.com>
 <156682369938.12194.4250044272949239380@skylake-alporthouse-com>
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Message-ID: <cc9abe95-06da-e717-f66d-ed9d0b2574ad@linux.intel.com>
Date: Tue, 27 Aug 2019 11:31:09 +0300
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156682369938.12194.4250044272949239380@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: cpu-map based dumb buffers
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAyNi8wOC8yMDE5IDE1LjQ4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBBYmRp
ZWwgSmFudWxndWUgKDIwMTktMDgtMjYgMTM6MjE6MDIpCj4+ICtpbnQKPj4gK2k5MTVfZ2VtX21t
YXBfZHVtYihzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCj4+ICsgICAgICAgICAgICAgICAgIHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsCj4+ICsgICAgICAgICAgICAgICAgIHUzMiBoYW5kbGUsCj4+ICsg
ICAgICAgICAgICAgICAgIHU2NCAqb2Zmc2V0KQo+PiArewo+PiArICAgICAgIHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gZGV2LT5kZXZfcHJpdmF0ZTsKPj4gKyAgICAgICBlbnVtIGk5
MTVfbW1hcF90eXBlIG1tYXBfdHlwZSA9IEhBU19NQVBQQUJMRV9BUEVSVFVSRShpOTE1KSA/Cj4+
ICsgICAgICAgICAgICAgICBJOTE1X01NQVBfVFlQRV9HVFQgOiBJOTE1X01NQVBfVFlQRV9PRkZT
RVRfV0M7Cj4gCj4gSXMgdGhlcmUgYW55IHJlYXNvbiBmb3IgdXNpbmcgR1RUIGlmIHdlIHN1cHBv
cnQgV0M/IFRoZSBidWZmZXIgaXMgbWVhbnQKPiB0byBiZSBsaW5lYXIuCj4gLUNocmlzCj4KCkFj
dHVhbGx5IHRoZXJlIHNlZW1zIG5vIHJlYXNvbiBhdCBhbGwuIFllYWggZHVtYiBCTyBtbWFwcyBz
aG91bGQKcHJvYmFibHkgYmUgZG9uZSB2aWEgbW1hcF9vZmZzZXQgQ1BVIFdDIG1tYXBzLgoKLUFi
ZGllbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
