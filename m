Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB90C3693
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 16:01:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74CFA6E7B0;
	Tue,  1 Oct 2019 14:01:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2072A6E7B0
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 14:01:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 07:01:49 -0700
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="221006611"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 07:01:48 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Tue, 01 Oct 2019 16:01:43 +0200
Message-ID: <19630025.ZEUBrIJs17@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <156993824708.1880.2431212252491268454@skylake-alporthouse-com>
References: <20191001134534.14747-1-janusz.krzysztofik@linux.intel.com>
 <20191001134534.14747-3-janusz.krzysztofik@linux.intel.com>
 <156993824708.1880.2431212252491268454@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Rename "inject_load_failure"
 module parameter
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpPbiBUdWVzZGF5LCBPY3RvYmVyIDEsIDIwMTkgMzo1NzoyNyBQTSBDRVNUIENo
cmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIEphbnVzeiBLcnp5c3p0b2ZpayAoMjAxOS0xMC0w
MSAxNDo0NTozNCkKPiA+IENvbW1pdCBmMmRiNTNmMTRkM2QgKCJkcm0vaTkxNTogUmVwbGFjZSAi
X2xvYWQiIHdpdGggIl9wcm9iZSIKPiA+IGNvbnNlcXVlbnRseSIpIGRlbGliZXJhdGVseSBsZWZ0
IHRoZSBuYW1lIG9mIHRoZSBtb2R1bGUgcGFyYW1ldGVyCj4gPiB1bmNoYW5nZWQgYXMgdGhhdCB3
b3VsZCByZXF1aXJlIGEgY29ycmVzcG9uZGluZyBjaGFuZ2Ugb24gSUdUIHNpemUuCj4gPiBOb3cg
YXMgdGhlIElHVCBzaWRlIGNoYW5nZSBoYXMgYmVlbiBzdWJtaXR0ZWQsIGNvbXBsZXRlIHRoZSBz
d2l0Y2ggdG8KPiA+IHRoZSAicHJvYmUiIG5vbWVuY2xhdHVyZS4KPiA+IAo+ID4gTWF5IGFmZmVj
dCBjdXN0b20gdXNlciBhcHBsaWNhdGlvbnMgdXRpbGl6aW5nIHRoZSBvbGQgbmFtZS4KPiAKPiBJ
dCdzIGFuIHVuc2FmZSBtb2RwYXJhbSB0aGF0IG9ubHkgaXMgY29tcGlsZWQgaW4gZm9yIGRlYnVn
Z2luZywgd2l0aCBubwo+IGxvbmcgdGVybSBlZmZlY3QgYWZ0ZXIgbW9kcHJvYmUuIFRoZXJlIGFy
ZSBubyB1c2VyIGFwcGxpY2F0aW9ucyBmb3IKPiB0aGlzLgoKT0ssIEknbGwgZHJvcCB0aGF0IHNl
bnRlbmNlLgoKVGhhbmtzLApKYW51c3oKCj4gLUNocmlzCj4gCgoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
