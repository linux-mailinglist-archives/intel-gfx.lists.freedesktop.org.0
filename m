Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5BF904BF
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 17:36:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 283F06E348;
	Fri, 16 Aug 2019 15:36:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF5AA6E348
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 15:36:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP; 16 Aug 2019 08:35:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,393,1559545200"; d="scan'208";a="184946109"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2019 08:35:50 -0700
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190816012343.36433-1-daniele.ceraolospurio@intel.com>
 <20190816012343.36433-6-daniele.ceraolospurio@intel.com>
 <op.z6lztocexaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <1bebe0ee-8aa8-c1db-2326-408fd094623e@intel.com>
Date: Fri, 16 Aug 2019 08:35:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <op.z6lztocexaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Introduce i915_reg_types.h
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA4LzE2LzE5IDI6NDAgQU0sIE1pY2hhbCBXYWpkZWN6a28gd3JvdGU6Cj4gT24gRnJpLCAx
NiBBdWcgMjAxOSAwMzoyMzo0MiArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyAKPiA8ZGFu
aWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4gd3JvdGU6Cj4gCj4+IFdpdGggdGhlIGludHJv
ZHVjdGlvbiBvZiBkaXNwbGF5IHVuY29yZSwgd2Ugd2FudCB0byBjYXRlZ29yaXplIHJlZ2lzdGVy
cwo+PiBiZXR3ZWVuIGRpc3BsYXkgYW5kIG5vbi1kaXNwbGF5LiBUbyBoZWxwIHVzIGdldHRpbmcg
aXQgcmlnaHQsIGl0IHdpbGwKPj4gYmUgdXNlZnVsIHRvIG1vdmUgdGhlIGRpc3BsYXkgcmVnaXN0
ZXJzIHRvIGEgbmV3IGZpbGUgdGhhdCBjYW4gYmUgdXNlZAo+PiB3aXRob3V0IGluY2x1ZGluZyBp
OTE1X3JlZy5oLiBUbyBhbGxvdyB0aGF0LCBtb3ZlIGFsbCB0aGUgYmFzaWMgcmVnaXN0ZXIKPj4g
dHlwZSBkZWZpbml0aW9ucyBhbmQgaGVscGVycyB0byBpOTE1X3JlZ190eXBlcy5oIGFuZCBpbmNs
dWRlIHRoYXQKPj4gaW5zdGVhZCBvZiBpOTE1X3JlZy5oIGZyb20gaGVhZGVyIGZpbGVzIGluIHRo
ZSBkcml2ZXIuIFdlJ2xsIHRoZW4KPj4gYmUgYWJsZSB0byByZXBsYWNlIGk5MTVfcmVnLmggd2l0
aCB0aGUgbmV3IGRpc3BsYXktb25seSBoZWFkZXIgaW4KPj4gZGlzcGxheSBmaWxlcyBhbmQgbWFr
ZSBzdXJlIHRoZSByZWdpc3RlcnMgYXJlIGNvcnJlY3RseQo+PiBjb21wYXJ0bWVudGFsaXplZC4K
Pj4KPiAKPiBtYXliZSB0aGlzIHNwbGl0IHNob3VsZCBhbm90aGVyIHdheToKPiAKPiAgwqDCoMKg
wqBpOTE1X3JlZy5oID0gYmFzaWMgdHlwZWRlZnMgYW5kIG1hY3Jvcwo+ICDCoMKgwqDCoGludGVs
X3JlZy5oID0gcmVnaXN0ZXIgZGVmaW5pdGlvbnMKPiBhbmQKPiAgwqDCoMKgwqBpbnRlbF9kaXNw
bGF5X3JlZy5oID0gZGlzcGxheSByZWxhdGVkIHJlZ3MgKHlvdXIgZ29hbCkKPiAgwqDCoMKgwqBp
bnRlbF9ndWNfcmVnLmggPSBHdUMgcmVsYXRlZCByZWdzICh3ZSBhbHJlYWR5IGhhdmUgdGhhdCEp
Cj4gCj4gdGhlbiB3ZSBmb2xsb3cgdGhlIHJ1bGUgdG8gdXNlIGk5MTVfIHByZWZpeCBmb3IgZHJp
dmVyIHNwZWNpZmljCj4gY29kZSBhbmQgaW50ZWxfIHByZWZpeCBmb3IgaGFyZHdhcmUgb3JpZ2lu
YXRlZCBkZWZpbml0aW9ucwo+IAoKQXJvdW5kIHRoZSBjb2RlIHdlJ3JlIHVzaW5nIHRoZSAqX3R5
cGVzLmggZm9ybWF0IGZvciB0aGUgaGVhZGVycyB3aXRoIAp0aGUgYmFzaWMgZGVmcywgc28gSSdk
IHByZWZlciB0byBzdGljayB3aXRoIHRoYXQuIEJ1dCBJIGNhbiBnbyB3aXRoIAppbnRlbF8qIHBy
ZWZpeCBhbmQgcmVuYW1lIGk5MTVfcmVnLmggdG8gaW50ZWxfcmVnLmguCgpEYW5pZWxlCgo+IE1p
Y2hhbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
