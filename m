Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81586E1599
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 11:18:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59BDC6EA0B;
	Wed, 23 Oct 2019 09:18:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D80E6EA0A;
 Wed, 23 Oct 2019 09:18:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 02:18:28 -0700
X-IronPort-AV: E=Sophos;i="5.68,220,1569308400"; d="scan'208";a="191775143"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 02:18:26 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Wed, 23 Oct 2019 11:18:09 +0200
Message-ID: <3191715.9IppvyGLCV@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <157182189532.11484.5502218239626360200@skylake-alporthouse-com>
References: <20191023090752.23566-1-janusz.krzysztofik@linux.intel.com>
 <157182189532.11484.5502218239626360200@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] tests/gem_exec_reloc: Don't
 filter out addresses when on PPGTT
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
Cc: intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpPbiBXZWRuZXNkYXksIE9jdG9iZXIgMjMsIDIwMTkgMTE6MTE6MzUgQU0gQ0VT
VCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTkt
MTAtMjMgMTA6MDc6NTEpCj4gPiBDb21taXQgYTM1NWIyZDZlYjQyICgiaWd0L2dlbV9leGVjX3Jl
bG9jOiBGaWx0ZXIgb3V0IHVuYXZhaWxhYmxlCj4gPiBhZGRyZXNzZXMgZm9yICFwcGd0dCIpIGlu
dHJvZHVjZWQgZmlsdGVyaW5nIG9mIGFkZHJlc3NlcyBwb3NzaWJseQo+ID4gb2NjdXBpZWQgYnkg
b3RoZXIgdXNlcnMgb2Ygc2hhcmVkIEdUVC4gIFVuZm9ydHVuYXRlbHksIHRoYXQgZmlsdGVyaW5n
Cj4gPiBpcyB1bmNvbmRpdGlvbmFsLCBubyBtYXR0ZXIgaWYgcnVubmluZyBvbiBvbGQgc2hhcmVk
IEdUVCBvciBub3QuICBXaGVuCj4gPiBydW5uaW5nIG9uIFBQR1RULCB0aGF0IG1heSByZXN1bHQg
aW4gZXJyb3JzIG90aGVyIHRoYW4gdGhvc2UgaW50ZW5kZWQKPiA+IHRvIGJlIHNraXBwZWQgb3Zl
ciBiZWluZyBzaWxlbnRseSBpZ25vcmVkLgo+IAo+IFlvdSBmb3Jnb3QgdGhlIGFsaWFzaW5nLXBw
Z3R0IHdoaWNoIGhhcyBleGFjdGx5IHRoZSBzYW1lIGlzc3VlcyB3aXRoCj4gcmVzZXJ2ZWQgbG9j
YXRpb25zIChzaW5jZSBpdCBpcyBhIG1pcnJvciBvZiB0aGUgR0dUVCkuCgpPSywgbGV0IG1lIGNo
ZWNrIGlmIHRoZSBhbGlhc2luZy1wcGd0dCBjYXNlIGNhbiBiZSBhZGRyZXNzZWQuCgpUaGFua3Ms
CkphbnVzegoKPiAtQ2hyaXMKPiAKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
