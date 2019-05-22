Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 214B326645
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 16:50:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE8F5897E7;
	Wed, 22 May 2019 14:50:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 154F6897E7;
 Wed, 22 May 2019 14:50:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 07:50:18 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO [10.252.20.122])
 ([10.252.20.122])
 by orsmga005.jf.intel.com with ESMTP; 22 May 2019 07:50:17 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
References: <20190522131417.23788-1-tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <20638798-fd6e-05c5-4a9e-550370c3e32b@linux.intel.com>
Date: Wed, 22 May 2019 15:50:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190522131417.23788-1-tvrtko.ursulin@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib/i915: Add Icelake vcs2
 engine to the static list
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIyLzA1LzIwMTkgMTQ6MTQsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IEZyb206IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gCj4gVGhpcyBlbmFibGVzIHN0
YXRpYyB0ZXN0IGVudW1lcmF0aW9uIHRvIHNlZSB0aGUgZW5naW5lLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gICBs
aWIvaWd0X2d0LmMgfCAxICsKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+
IGRpZmYgLS1naXQgYS9saWIvaWd0X2d0LmMgYi9saWIvaWd0X2d0LmMKPiBpbmRleCA1ZTViOWJl
ZjAzZGMuLjZiN2MwMzdlNmQxMCAxMDA2NDQKPiAtLS0gYS9saWIvaWd0X2d0LmMKPiArKysgYi9s
aWIvaWd0X2d0LmMKPiBAQCAtNTg5LDYgKzU4OSw3IEBAIGNvbnN0IHN0cnVjdCBpbnRlbF9leGVj
dXRpb25fZW5naW5lMiBpbnRlbF9leGVjdXRpb25fZW5naW5lczJbXSA9IHsKPiAgIAl7ICJiY3Mw
IiwgSTkxNV9FTkdJTkVfQ0xBU1NfQ09QWSwgMCB9LAo+ICAgCXsgInZjczAiLCBJOTE1X0VOR0lO
RV9DTEFTU19WSURFTywgMCB9LAo+ICAgCXsgInZjczEiLCBJOTE1X0VOR0lORV9DTEFTU19WSURF
TywgMSB9LAo+ICsJeyAidmNzMiIsIEk5MTVfRU5HSU5FX0NMQVNTX1ZJREVPLCAyIH0sCj4gICAJ
eyAidmVjczAiLCBJOTE1X0VOR0lORV9DTEFTU19WSURFT19FTkhBTkNFLCAwIH0sCj4gICAJeyB9
Cj4gICB9Owo+IAoKIEZyb20gSVJDOgoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
