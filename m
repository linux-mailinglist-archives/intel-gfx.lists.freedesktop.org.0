Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C203A996CF
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 16:36:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 218056EB61;
	Thu, 22 Aug 2019 14:36:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AAEE6E046
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 14:36:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 06:43:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,416,1559545200"; d="scan'208";a="330388651"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 22 Aug 2019 06:43:46 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 580855C1FF3; Thu, 22 Aug 2019 16:42:58 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156629741255.1374.17835443088274919959@skylake-alporthouse-com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-27-lucas.demarchi@intel.com>
 <156629741255.1374.17835443088274919959@skylake-alporthouse-com>
Date: Thu, 22 Aug 2019 16:42:58 +0300
Message-ID: <87r25d2u59.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 26/40] HACK: drm/i915/tgl: Gen12 render
 context size
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBMdWNhcyBEZSBNYXJjaGkgKDIwMTktMDgtMTcgMTA6Mzg6NDgpCj4+IEZyb206IERhbmllbGUg
Q2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4+IAo+PiBS
ZS11c2UgR2VuMTEgY29udGV4dCBzaXplIGZvciBub3cuCj4+IAo+PiBbIEx1Y2FzOiBhZGQgSEFD
SyBzaW5jZSB0aGlzIGlzIGEgdGVtcG9yYXJ5IHBhdGNoIHRoYXQgbmVlZHMgdG8gYmUKPj4gICBj
b25maXJtZWQ6IHdlIG5lZWQgdG8gY2hlY2sgQlNwZWMgNDYyNTUgYW5kIHJlY29tcHV0ZSBdCj4K
PiBXZSBjYW4gZHJvcCB0aGUgSEFDSyBhbmQganVzdCByZWZlciB0byB0aGlzIGFzIGEgdGVtcG9y
YXJ5IHBhdGNoLiBXZQo+IGhhdmUgc2VsZnRlc3RzIGFuZCBydW50aW1lIHZlcmlmaWNhdGlvbiB0
byBjYXRjaCBpZiB3ZSB1bmRlciBhbGxvY2F0ZSwKPiBzbyBpZiBvdXIgdGVzdGluZyBpcyBjbGVh
biwgaXQncyBnb29kIGVub3VnaCBmb3IgdGhlIHRpbWUgYmVpbmcuCgpJIHRoaW5rIEkgaGFkIGEg
c2NyaXB0IHNvbWV3aGVyZSB3aGljaCBjYW4gY2FsY3VsYXRlIHRoZQpjb250ZXh0IHNpemUgZnJv
bSBic3BlYyAoQ3V0IHBhc3RlKS4gTm8gcHJvbWlzZXMgdGhvLgoKSG93YWJvdXQgbWFraW5nIGEg
c2VsZnRlc3QgdG8gZmlndXJlIG91dCB0aGUgY29udGV4dCBzdGF0ZSBzaXplPwoKLU1pa2EKCj4K
Pj4gCj4+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2Vy
YW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8
bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+IEFja2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiAtQ2hyaXMKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
