Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B7C2792A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 11:27:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9D35898C0;
	Thu, 23 May 2019 09:27:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6899898C0;
 Thu, 23 May 2019 09:27:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 02:27:52 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO [10.252.20.122])
 ([10.252.20.122])
 by orsmga005.jf.intel.com with ESMTP; 23 May 2019 02:27:50 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190523080649.29466-1-chris@chris-wilson.co.uk>
 <f386b249-b3a3-11b4-915d-d99c0d8a649d@linux.intel.com>
 <155860258858.28319.3356284881218976685@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <21ecf0f1-5b77-4c5c-23df-75a36c428a2d@linux.intel.com>
Date: Thu, 23 May 2019 10:27:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155860258858.28319.3356284881218976685@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915: Improve static engine map for
 legacy
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIzLzA1LzIwMTkgMTA6MDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTIzIDA5OjQ2OjA4KQo+Pgo+PiBPbiAyMy8wNS8yMDE5IDA5OjA2
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9u
X2VuZ2luZTIgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZXMyW10gPSB7Cj4+PiAtICAgICB7ICJyY3Mw
IiwgSTkxNV9FTkdJTkVfQ0xBU1NfUkVOREVSLCAwIH0sCj4+PiAtICAgICB7ICJiY3MwIiwgSTkx
NV9FTkdJTkVfQ0xBU1NfQ09QWSwgMCB9LAo+Pj4gLSAgICAgeyAidmNzMCIsIEk5MTVfRU5HSU5F
X0NMQVNTX1ZJREVPLCAwIH0sCj4+PiAtICAgICB7ICJ2Y3MxIiwgSTkxNV9FTkdJTkVfQ0xBU1Nf
VklERU8sIDEgfSwKPj4+IC0gICAgIHsgInZjczIiLCBJOTE1X0VOR0lORV9DTEFTU19WSURFTywg
MiB9LAo+Pj4gLSAgICAgeyAidmVjczAiLCBJOTE1X0VOR0lORV9DTEFTU19WSURFT19FTkhBTkNF
LCAwIH0sCj4+PiArICAgICB7ICJyY3MwIiwgSTkxNV9FTkdJTkVfQ0xBU1NfUkVOREVSLCAwLCBJ
OTE1X0VYRUNfUkVOREVSIH0sCj4+PiArICAgICB7ICJiY3MwIiwgSTkxNV9FTkdJTkVfQ0xBU1Nf
Q09QWSwgMCwgSTkxNV9FWEVDX0JMVCB9LAo+Pj4gKyAgICAgeyAidmNzMCIsIEk5MTVfRU5HSU5F
X0NMQVNTX1ZJREVPLCAwLCBJOTE1X0VYRUNfQlNEIHwgSTkxNV9FWEVDX0JTRF9SSU5HMSB9LAo+
Pgo+PiBleGVjYnVmIHdpbGwgcmVqZWN0IHRoaXMgb24gc2luZ2xlIHZjcyBwYXJ0cy4gOiggQW0g
SSBub3Qgc2VlaW5nIHNvbWUKPj4gcGxhY2Ugd2hlcmUgeW91IGZ1ZGdlIGl0IGludG8gY29tcGxp
YW5jZT8KPiAKPiAKPiAgICAgICAgICBpZiAodXNlcl9yaW5nX2lkID09IEk5MTVfRVhFQ19CU0Qg
JiYgSEFTX0VOR0lORShkZXZfcHJpdiwgVkNTMSkpIHsKPiAgICAgICAgICAgICAgICAgIHVuc2ln
bmVkIGludCBic2RfaWR4ID0gYXJncy0+ZmxhZ3MgJiBJOTE1X0VYRUNfQlNEX01BU0s7Cj4gCj4g
ICAgICAgICAgICAgICAgICBpZiAoYnNkX2lkeCA9PSBJOTE1X0VYRUNfQlNEX0RFRkFVTFQpIHsK
PiAgICAgICAgICAgICAgICAgICAgICAgICAgYnNkX2lkeCA9IGdlbjhfZGlzcGF0Y2hfYnNkX2Vu
Z2luZShkZXZfcHJpdiwgZmlsZSk7Cj4gICAgICAgICAgICAgICAgICB9IGVsc2UgaWYgKGJzZF9p
ZHggPj0gSTkxNV9FWEVDX0JTRF9SSU5HMSAmJgo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBic2RfaWR4IDw9IEk5MTVfRVhFQ19CU0RfUklORzIpIHsKPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgYnNkX2lkeCA+Pj0gSTkxNV9FWEVDX0JTRF9TSElGVDsKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgYnNkX2lkeC0tOwo+ICAgICAgICAgICAgICAgICAgfSBlbHNlIHsKPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgRFJNX0RFQlVHKCJleGVjYnVmIHdpdGggdW5rbm93biBic2Qgcmlu
ZzogJXVcbiIsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBic2RfaWR4KTsK
PiAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIE5VTEw7Cj4gICAgICAgICAgICAgICAg
ICB9Cj4gCj4gICAgICAgICAgICAgICAgICBlbmdpbmUgPSBkZXZfcHJpdi0+ZW5naW5lW19WQ1Mo
YnNkX2lkeCldOwo+ICAgICAgICAgIH0gZWxzZSB7Cj4gICAgICAgICAgICAgICAgICBlbmdpbmUg
PSBkZXZfcHJpdi0+ZW5naW5lW3VzZXJfcmluZ19tYXBbdXNlcl9yaW5nX2lkXV07Cj4gICAgICAg
ICAgfQo+IAo+IExvb2tzIG9rIHRvIG1lLi4uIEkgd2FzIHRyeWluZyB0byBkb3VibGUgY2hlY2sg
YnV0IGRpZiBkaWRuJ3QgYm9vdCBvbgo+IGJzdy4gU2lnaC4KCkhtbSBJIHdvdWxkIGhhdmUgc3dv
cm4gd2UgdXNlZCB0byBkbyB0aGF0Li4gc3RyYW5nZS4gT2theSwgSSdsbCByZS1yZWFkIAp5b3Vy
IHBhdGNoLiBOb3RpY2UgdGhhdCBJIGRpZCBub3Qga25vdyB5b3UgYXJlIHdvcmtpbmcgb24gaXQg
c28gaGF2ZSAKc2VudCBteSBvd24gZml4IGF0IHNpbWlsYXIgdGltZS4KClJlZ2FyZHMsCgpUdnJ0
a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
