Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FFCE367B
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 17:23:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C0EE6E44A;
	Thu, 24 Oct 2019 15:23:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 800556E44A
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 15:23:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 08:23:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,225,1569308400"; d="scan'208";a="197758900"
Received: from ddesmet-mobl.ger.corp.intel.com (HELO [10.252.56.210])
 ([10.252.56.210])
 by fmsmga007.fm.intel.com with ESMTP; 24 Oct 2019 08:23:01 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191024103858.28113-1-mika.kuoppala@linux.intel.com>
 <20191024110331.8935-1-mika.kuoppala@linux.intel.com>
 <157191707108.2725.12035547014609265414@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <ecc5965d-71d8-c716-253e-dd54d7a06e18@intel.com>
Date: Thu, 24 Oct 2019 18:23:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157191707108.2725.12035547014609265414@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Remove nonpriv flags when
 srm/lrm
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

T24gMjQvMTAvMjAxOSAxNDozNywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTWlrYSBL
dW9wcGFsYSAoMjAxOS0xMC0yNCAxMjowMzozMSkKPj4gT24gdGVzdGluZyB0aGUgd2hpdGVsaXN0
cywgdXNpbmcgYW55IG9mIHRoZSBub25wcml2Cj4+IGZsYWdzIHdoZW4gdHJ5aW5nIHRvIGFjY2Vz
cyB0aGUgcmVnaXN0ZXIgb2Zmc2V0IHdpbGwgbGVhZAo+PiB0byBmYWlsdXJlLgo+Pgo+PiBEZWZp
bmUgYWRkcmVzcyBtYXNrIHRvIGdldCB0aGUgbW1pbyBvZmZzZXQgaW4gb3JkZXIKPj4gdG8gZ3Vh
cmQgYWdhaW5zdCBhbnkgY3VycmVudCBhbmQgZnV0dXJlIGZsYWcgdXNhZ2UuCj4+Cj4+IHYyOiBh
cHBseSBhbHNvIG9uIHNjcnViX3doaXRlbGlzdGVkX3JlZ2lzdGVycyAoTGlvbmVsKQo+Pgo+PiBD
YzogVGFwYW5pIFDDpGxsaSA8dGFwYW5pLnBhbGxpQGludGVsLmNvbT4KPj4gQ2M6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiBDYzogTGlvbmVsIExhbmR3ZXJsaW4g
PGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBNaWthIEt1
b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLUNocmlzCj4KUmV2aWV3ZWQt
Ynk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
