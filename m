Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 210D14594E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 11:52:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71772896F7;
	Fri, 14 Jun 2019 09:52:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE5E1896F7
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 09:52:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 02:52:01 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga003.jf.intel.com with ESMTP; 14 Jun 2019 02:52:00 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613133539.12620-21-tvrtko.ursulin@linux.intel.com>
 <156043491632.17012.905658932195637345@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <94cae18d-cc2c-a109-ce8d-08631b160c0a@linux.intel.com>
Date: Fri, 14 Jun 2019 10:51:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156043491632.17012.905658932195637345@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 20/28] drm/i915: Compartmentalize
 i915_gem_suspend/restore_gtt_mappings
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

Ck9uIDEzLzA2LzIwMTkgMTU6MDgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTEzIDE0OjM1OjMxKQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBIYXZpbmcgbWFkZSBzdGFydCB0byBiZXR0
ZXIgY29kZSBjb21wYXJ0bWVudGFsaXphdGlvbiBieSBpbnRyb2R1Y2luZwo+PiBzdHJ1Y3QgaW50
ZWxfZ3QsIGNvbnRpbnVlIHRoZSB0aGVtZSBlbHNld2hlcmUgaW4gY29kZSBieSBtYWtpbmcgZnVu
Y3Rpb25zCj4+IHRha2UgcGFyYW1ldGVycyB0YWtlIHdoYXQgbG9naWNhbGx5IG1ha2VzIG1vc3Qg
c2Vuc2UgZm9yIHRoZW0gaW5zdGVhZCBvZgo+PiB0aGUgZ2xvYmFsIHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlLgo+IAo+IFNvIEkgYW0gZGViYXRpbmcgd2hldGhlciB0aGlzIGlzIGJldHRlciBvZmYg
YXMgcGFydCBvZiBpOTE1X2dndHQgYW5kIG5vdAo+IGk5MTVfYWRkcmVzc19zcGFjZS4KCkluIHRl
cm1zIG9mIHdoYXQgb2JqZWN0IGlzIHBhc3NlZCBpbj8KClRoZXkgbW9zdGx5IG9wZXJhdGUgb24g
YnV0LCBidXQgZW5kIHdpdGggZ2d0dC0+aW52YWxpZGF0ZShnZ3R0KS4gQW5kIAp3aGlsZSB3ZSBj
b3VsZCBtb3ZlIHRoYXQgdmZ1bmMgdG8gdm0gKGFuZCBoYXZlIGl0IE5VTEwgZm9yICFnZ3R0KSB3
b3VsZCAKaXQgbWFrZSBzZW5zZT8KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
