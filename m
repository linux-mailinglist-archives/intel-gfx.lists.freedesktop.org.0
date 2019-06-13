Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A16143A7B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 17:21:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAAEC89B11;
	Thu, 13 Jun 2019 15:21:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D62B89B11
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 15:21:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 08:21:36 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga003.jf.intel.com with ESMTP; 13 Jun 2019 08:21:34 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190612162900.13777-1-lucas.demarchi@intel.com>
 <0000a4b2-ac8b-a18d-4c78-0db197c712a1@linux.intel.com>
 <156043918400.17012.6235201090156630460@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c89a5f38-94f1-0441-2e3f-ab6b19a6b069@linux.intel.com>
Date: Thu, 13 Jun 2019 16:21:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156043918400.17012.6235201090156630460@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] gpu/drm/i915: globally replace dev_priv
 with i915
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

Ck9uIDEzLzA2LzIwMTkgMTY6MTksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTEzIDE2OjEyOjE2KQo+Pgo+PiBPbiAxMi8wNi8yMDE5IDE3OjI5
LCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6Cj4+PiBXZSBhcmUgc2xvd2x5IGNvbnZlcnRpbmcgZGV2
X3ByaXYgdG8gaTkxNSBldmVyeXdoZXJlLCBzcHJlYWQgaW50bwo+Pj4gc21hbGxlciBzZXJpZXMu
IFdoaWxlIHRoaXMgaXMgZ29vZCB0byBhdm9pZCB1bnJlbGF0ZWQgYnJlYWthZ2VzIHRvIG90aGVy
Cj4+PiBpbmZsaWdodCBwYXRjaGVzLCBpdCdzIGJhZCBiZWNhdXNlIGluZmxpZ2h0IHBhdGNoZXMg
b24gbmVhcmJ5IHBhdGhzIGtlZXAKPj4+IGJyZWFraW5nLiBQYWlyZWQgd2l0aCBvdGhlciBjb2Rl
IG1vdmVzIGFuZCByZWZhY3RvcmVzIHRoaXMgaXMgYmVjb21pbmcgYQo+Pj4gbmlnaHRtYXJlLgo+
Pj4KPj4+IE5vdyB0aGF0IEk5MTVfe1JFQUQsV1JJVEV9IGFyZSBnb25lIGFuZCBpbXBsaWNpdCBh
Y2Nlc3MgdG8gZGV2X3ByaXYgbm8KPj4KPj4gV2hvIHJlbW92ZWQgSTkxNV9SRUFEL1dSSVRFPyBJ
biBmYWN0IEkgc2VlIHNvbWUgaW4gdGhpcyBwYXRjaC4gV2VsbAo+PiBjb2xvdXIgbWUgY29uZnVz
ZWQuLiBob3cgZGlkIHRoZSBwYXRjaCBjb21waWxlPwo+IAo+IFRoZSBzZWNyZXQgaXMgaW4gY2hh
bmdpbmcgdGhlIGltcGxpY2l0IHBhcmFtZXRlciBhcyB3ZWxsLCBzL2Rldl9wcml2L2k5MTUvCgpM
b2x6IGFyZSBvbiBtZS4gOikpCgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
