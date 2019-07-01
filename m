Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0AF5BB98
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 14:36:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3806A898BE;
	Mon,  1 Jul 2019 12:36:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFF16898BE
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 12:36:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 05:36:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,439,1557212400"; d="scan'208";a="361820593"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga005.fm.intel.com with ESMTP; 01 Jul 2019 05:36:29 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x61CaTEe030359; Mon, 1 Jul 2019 13:36:29 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190701100502.15639-1-chris@chris-wilson.co.uk>
Date: Mon, 01 Jul 2019 14:36:28 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z381a2faxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190701100502.15639-1-chris@chris-wilson.co.uk>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915/guc: Avoid reclaim locks
 during reset
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAwMSBKdWwgMjAxOSAxMjowNDo1MSArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IER1cmluZyByZXNldCwgd2UgbXVzdCBiZSB2
ZXJ5IHNlbGVjdGl2ZSBpbiB3aGljaCBsb2NrcyB3ZSB0YWtlIGFzIG1vc3QKPiBhcmUgdGFpbnRl
ZCBieSBiZWluZyBoZWxkIGFjcm9zcyBhIHdhaXQgb3IgcmVjbGFpbSAoa21hbGxvYykgd2hpY2gK
PiBpbXBsaWNpdGx5IHdhaXRzLiBJbnNpZGUgdGhlIGd1YyByZXNldCBwYXRoLCB3ZSByZXNldCB0
aGUgQURTIHRvIHNhbmUKPiBkZWZhdWx0cywgYnV0IG11c3Qga2VlcCBpdCBwaW5uZWQgZnJvbSBp
bml0aWFsaXNhdGlvbiB0byBhdm9pZCBoYXZpbmcgdG8KPiBwaW4gaXQgZHVyaW5nIHJlc2V0Lgo+
Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Cj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRl
bC5jb20+CgpSZXZpZXdlZC1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0Bp
bnRlbC5jb20+CgpidXQgSSdtIGxpdHRsZSB3b3JyaWVkIGFib3V0IGxlYXZpbmcgc3RhbGUgZ3Vj
LT5hZHNfYmxvYiBiZWxvdzoKCj4gQEAgLTE4Myw3ICsxODMsNyBAQCBpbnQgaW50ZWxfZ3VjX2Fk
c19jcmVhdGUoc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+IHZvaWQgaW50ZWxfZ3VjX2Fkc19kZXN0
cm95KHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPiAgewo+IC0JaTkxNV92bWFfdW5waW5fYW5kX3Jl
bGVhc2UoJmd1Yy0+YWRzX3ZtYSwgMCk7Cj4gKwlpOTE1X3ZtYV91bnBpbl9hbmRfcmVsZWFzZSgm
Z3VjLT5hZHNfdm1hLCBJOTE1X1ZNQV9SRUxFQVNFX01BUCk7Cj4gIH0KCm1heWJlIHRoZXJlIGlz
IGEgd2F5IHRvIGdldCBwdHIgcmlnaHQgZnJvbSB0aGUgcGlubmVkL21hcHBlZCB2bWEKd2l0aG91
dCBpbnRyb2R1Y2luZyBleHRyYSBzZXBhcmF0ZSBmaWVsZCB0aGF0IG1pZ2h0IGdvIG91dCBvZiBz
eW5jID8KCk1pY2hhbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
