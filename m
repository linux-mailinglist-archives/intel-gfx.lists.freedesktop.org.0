Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 526A83B5D9
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 15:16:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEFF389145;
	Mon, 10 Jun 2019 13:16:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBA1389145
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 13:16:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 06:16:35 -0700
X-ExtLoop1: 1
Received: from jwwillia-mobl1.amr.corp.intel.com (HELO [10.252.8.43])
 ([10.252.8.43])
 by orsmga008.jf.intel.com with ESMTP; 10 Jun 2019 06:16:33 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190610130110.26306-1-tvrtko.ursulin@linux.intel.com>
 <156017191664.383.14001735029510950842@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <58133074-f414-9505-b8f3-239172b3d628@linux.intel.com>
Date: Mon, 10 Jun 2019 14:16:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156017191664.383.14001735029510950842@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC] drm/i915/hangcheck: Look at instdone for all
 engines
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

Ck9uIDEwLzA2LzIwMTkgMTQ6MDUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTEwIDE0OjAxOjEwKQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBJdCBzZWVtcyBpbnRlbF9lbmdpbmVfZ2V0
X2luc3Rkb25lIGlzIGFibGUgdG8gZ2V0IGluc3Rkb25lIGZvciBhbGwgZW5naW5lcwo+PiBidXQg
aW50ZWxfaGFuZ2NoZWNrLmMvc3VidW5pdHNfc3R1Y2sgZGVjaWRlcyB0byBpZ25vcmUgaXQgZm9y
IG5vbiByZW5kZXIuCj4+Cj4+IFdlIGNhbiBqdXN0IGRyb3AgdGhlIGNoZWNrIGluIHN1YnVuaXRz
X3N0dWNrIHNpbmNlIHRoZSBjaGVja3Mgb24KPj4gdW5hdmFpbGFibGUgZmllbGRzIHdpbGwgYWx3
YXlzIHJldHVybiBzdHVjaywgd2hpY2ggd2hlbiBiaXR3aXNlIGFuZCB3aXRoCj4+IHRoZSBwb3Rl
bnRpYWwgdW5zdHVjayBpbnN0ZG9uZSBpcyBoYXJtbGVzcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4gQ2M6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiBDYzogTWlrYSBLdW9wcGFsYSA8bWlr
YS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4+IC0tLQo+PiBXb3VsZCBhY3R1YWxseSB1c2lu
ZyB0aGUgYXZhaWxhYmxlIGRhdGEgaW1wcm92ZSBoYW5nIGRldGVjdGlvbj8KPiAKPiBObywganVz
dCBwcm9sb25nIGl0IDopCgpJIHdhcyB0aGlua2luZyBhY3Rpdml0eSBvbiBpbnN0ZG9uZSB3b3Vs
ZCwgYnV0IGNvcnJlY3RseSBzbywgbm8/IElmIApmdW5jdGlvbmFsIGJsb2NrcyBoYXZlIHNob3du
IGEgY2hhbmdlIG9mIHN0YXR1cywgdGhlbiB3ZSB0cnkgYWdhaW4gdW50aWwgCnRoZXkgdG9vIGdl
dCBzdHVjay4gU29tZSBpbXByb3ZlbWVudCBpbiBmYWxzZSBwb3NpdGl2ZXMsIGJ1dCBtYXJnaW5h
bCBJIAprbm93IGdpdmVuIHRoZSBoYW5nY2hlY2sgcGVyaW9kLgoKUmVnYXJkcywKClR2cnRrbwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
