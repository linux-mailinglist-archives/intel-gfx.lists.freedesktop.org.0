Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DECC9E4B06
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 14:29:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93BAC6E9EE;
	Fri, 25 Oct 2019 12:29:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 022B86E9EE
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 12:29:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 05:29:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="192526535"
Received: from apeterat-mobl.ger.corp.intel.com (HELO [10.252.42.107])
 ([10.252.42.107])
 by orsmga008.jf.intel.com with ESMTP; 25 Oct 2019 05:29:47 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191025121718.18806-1-lionel.g.landwerlin@intel.com>
 <157200617446.2725.7580006989346450131@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <f63e0f74-53d9-10f9-3518-7f108515cb93@intel.com>
Date: Fri, 25 Oct 2019 15:29:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157200617446.2725.7580006989346450131@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: capture aux page table error
 register
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

T24gMjUvMTAvMjAxOSAxNToyMiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMTAtMjUgMTM6MTc6MTgpCj4+IFRHTCBpbnRyb2R1Y2VkIGEgZmVh
dHVyZSBpbiB3aGljaCB3ZSBtYXAgdGhlIG1haW4gc3VyZmFjZSB0byB0aGUKPj4gYXV4aWxsaWFy
eSBzdXJmYWNlLiBJZiB3ZSBzY3JldyB1cCB0aGUgcGFnZSB0YWJsZXMsIHRoZSBIVyBoYXMgYQo+
PiByZWdpc3RlciB0byB0ZWxsIHVzIHdoaWNoIGVuZ2luZSBlbmNvdW50ZXJzIGEgZmF1bHQgaW4g
dGhlIHBhZ2UgdGFibGUKPj4gd2Fsay4KPiBQbGF0Zm9ybSBzcGVjaWZpYywgb3IgZm9yIGxpa2Vs
eSBhbGwgZ2VuMTIgYW5kIHRoZW4gZ2VuMTIrPwoKCkl0IGFsc28gYXBwbGllcyB0byB0aGUgbmV3
IERHRlggcGF0Y2hlcyB0aGF0IHN0YXJ0ZWQgdHJpY2tsaW5nIGRvd24uCgpUaG91Z2ggSSBkb24n
dCBrbm93IHdoZXJlIHRoZSBHZW4xMiBib3VuZGFyeSBpcyB3aGljaCBpcyB3aHkgSSB3ZW50IHdp
dGggCnBsYXRmb3JtIG5hbWUuCgoKSW4gTWVzYSB3ZSB3ZW50IGZvciBhIGZsYWcgb24gdGhlIGRl
dmljZV9pbmZvIHN0cnVjdCBzbyBpdCdzIGVhc3kgdG8gCnRvZ2dsZSBvbi9vZmYgZm9yIGEgcGFy
dGljdWxhciBwcm9kdWN0LgoKCj4gICAKPj4gU2lnbmVkLW9mZi1ieTogTGlvbmVsIExhbmR3ZXJs
aW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+IEFja2VkLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPgo+IEknbSByZW1pbmRlZCBvZiBteSBkZXNp
cmUgdG8ganVzdCBncmFiIGEgc25hcHNob3Qgb2YgYWxsIG5lYXJieSBtbWlvIGFuZAo+IHppcCBp
dCB1cC4KCgpZZXAuLi4gQW5kIGpzb25pZnkgaXQgb3Igc29tZXRoaW5nPyA7KQoKCj4gLUNocmlz
Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
