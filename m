Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C8E7CE0A
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 22:18:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EB156E2F7;
	Wed, 31 Jul 2019 20:18:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7A226E2EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 20:18:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 13:18:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,331,1559545200"; d="scan'208";a="163257254"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 31 Jul 2019 13:18:47 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190731004902.34672-1-daniele.ceraolospurio@intel.com>
 <20190731004902.34672-4-daniele.ceraolospurio@intel.com>
 <156455840104.6373.9020252063128594894@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <98a1c95f-a27a-ac8b-daff-7a77ca8c6259@intel.com>
Date: Wed, 31 Jul 2019 13:18:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156455840104.6373.9020252063128594894@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/tgl: Gen12 csb support
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

CgpPbiA3LzMxLzE5IDEyOjMzIEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTMxIDAxOjQ5OjAxKQo+PiBAQCAtMTQwMSw3ICsx
NDUzLDcgQEAgc3RhdGljIHZvaWQgcHJvY2Vzc19jc2Ioc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKQo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbmdpbmUtPm5hbWUsIGhlYWQs
Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJ1ZlsyICogaGVhZCArIDBdLCBidWZbMiAq
IGhlYWQgKyAxXSk7Cj4+ICAgCj4+IC0gICAgICAgICAgICAgICBzd2l0Y2ggKGNzYl9wYXJzZShl
eGVjbGlzdHMsIGJ1ZiArIDIgKiBoZWFkKSkgewo+PiArICAgICAgICAgICAgICAgc3dpdGNoIChl
eGVjbGlzdHMtPmNzYl9wYXJzZShleGVjbGlzdHMsIGJ1ZiArIDIgKiBoZWFkKSkgewo+IAo+IFNv
IEkgd29ycnkgYWJvdXQgdGhlIGNvc3Qgb2YgYSByZXRwb2xpbmUgaGVyZSAodHVja2VkIGF3YXkg
aW5zaWRlIGFuCj4gaXJxcy1vZmYgbG9vcCksIGFuZCB3aGV0aGVyIGEgbG9jYWwgZnVuYyBhdm9p
ZHMgdGhlIHJldHBvbGluZSBvciBpZiB3ZQo+IGp1c3QgaGF2ZSB0byB1c2UgYW4gaWYtbGFkZGVy
Lgo+IC1DaHJpcwo+IAoKSSd2ZSB0cmllZCB3aXRoOgoKc3RhdGljIGVudW0gaW50ZWxfY3NiX3N0
ZXAKKCpjc2JfcGFyc2VbXSkoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKiwg
Y29uc3QgdTMyICopID0gewoJW0NTQl9HRU44XSA9IGdlbjhfY3NiX3BhcnNlLAoJW0NTQl9HRU4x
Ml0gPSBnZW4xMl9jc2JfcGFyc2UsCn07Cgpzd2l0Y2ggKGNzYl9wYXJzZVtleGVjbGlzdHMtPmNz
Yl9mb3JtYXRdKC4uKSkKCkJ1dCBBRkFJQ1MgZnJvbSB0aGUgb2JqZHVtcCB0aGUgYXNzZW1ibHkg
Y29kZSBnZW5lcmF0ZWQgd2l0aCBHQ0MgOC4zIGFuZCAKQ09ORklHX1JFVFBPTElORT15IGlzIG1v
cmUgb3IgbGVzcyB0aGUgc2FtZSwgdGhlcmUgaXMganVzdCAyIGV4dHJhIG1vdiAKaW5zdHJ1Y3Rp
b25zIHdoZW4gdXNpbmcgdGhlIGFycmF5IG9mIGZ1bmN0aW9ucy4gSSBjYW4ndCBzcG90IHRoZSAK
cmV0cG9saW5lIGluIG5laXRoZXIgY2FzZSB0aG91Z2h0LCBzbyBub3Qgc3VyZSBpZiBJJ20gbWlz
c2luZyBzb21ldGhpbmcuIApTaG91bGQgSSBqdXN0IGdvIHdpdGggYW4gaWYtZWxzZT8KCkRhbmll
bGUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
