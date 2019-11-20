Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC16104083
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 17:17:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FFF96E860;
	Wed, 20 Nov 2019 16:17:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 416226E860
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 16:17:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 08:16:32 -0800
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="200769153"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 20 Nov 2019 08:16:28 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191120152150.3853368-1-chris@chris-wilson.co.uk>
 <20191120152150.3853368-2-chris@chris-wilson.co.uk>
 <126971b1-987a-c93b-e222-eee81602bae6@linux.intel.com>
 <157426636191.13839.5512117664866831406@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <615e6ae4-eab9-5788-29be-7fdb2d632d2c@linux.intel.com>
Date: Wed, 20 Nov 2019 16:16:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157426636191.13839.5512117664866831406@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Remove the timeline as the
 last step of retiring
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

Ck9uIDIwLzExLzIwMTkgMTY6MTIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTExLTIwIDE2OjA3OjE0KQo+Pgo+PiBPbiAyMC8xMS8yMDE5IDE1OjIx
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBCZWZvcmUgd2UgcmVtb3ZlIGZyb20gdGhlIHRpbWVs
aW5lLCBmaW5pc2ggZmx1c2hpbmcgdGhlIGNvbnRleHQgc3RhdGUuCj4+PiBBcyB0aGUgdGltZWxp
bmUgbWF5IGJlIHBlZWtlZCB1cG9uIGJ5IGFub3RoZXIgQ1BVLCB3ZSBkb24ndCB3YW50IHRvCj4+
PiByZW1vdmUgcmVxdWVzdCBmcm9tIHRoZSB0aW1lbGluZSB1bnRpbCB3ZSBoYXZlIGZpbmlzaGVk
IHdvcmtpbmcgb24gaXQuCj4+Cj4+IEkgaGF2ZSB0byBhc2sgd2h5IEknbSBhZnJhaWQuCj4gCj4g
SXQncyB0aGUgYWx0ZXJuYXRpdmUgaWRlYSB0byBwYXRjaCAxLiBJZiB3ZSByZW9yZGVyIHRoZSBj
b2RlIGluIHRoZQo+IHJldGlyZSwgdGhlIHNhbml0eSBjaGVja3MgaW4gcGF0Y2ggMSB3b24ndCBu
b3RpY2UgdGhlIGluY29uc2lzdGVudAo+IHN0YXRlLiBJIHRoaW5rIHBhdGNoIDEgaXMgdGhlIGJl
dHRlciBleHByZXNzaW9uOiBpZiB5b3UgYXJlIGRlcGVuZGVudCBvbgo+IHNlZWluZyB0aGUgcG9z
dC1yZXRpcmVtZW50IHN0YXRlLCB5b3Ugc2hvdWxkIHdhaXQgdW50aWwgdGhhdCBhZnRlcgo+IHJl
dGlyaW5nLgoKWWVzIEkgYWdyZWUuIFRoaXMgcGF0Y2ggaGFkIG1lIGNvbXBsZXRlbHkgcHV6emxl
ZCB3aG8gY291bGQgcmVseWluZyBvbiAKc3VjaCBzdWJ0bGV0aWVzLgoKUmVnYXJkcywKClR2cnRr
bwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
