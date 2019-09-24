Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C31CBC759
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 13:58:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2982B6EA10;
	Tue, 24 Sep 2019 11:58:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 807206EA10
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 11:58:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 04:58:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,544,1559545200"; d="scan'208";a="272610756"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 24 Sep 2019 04:58:37 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id B8B115C1E4D; Tue, 24 Sep 2019 14:58:12 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156932285589.3684.14832880682799375166@skylake-alporthouse-com>
References: <20190923230209.16480-1-chris@chris-wilson.co.uk>
 <87mueuyoy5.fsf@gaia.fi.intel.com>
 <156932285589.3684.14832880682799375166@skylake-alporthouse-com>
Date: Tue, 24 Sep 2019 14:58:12 +0300
Message-ID: <87k19xzz1n.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: Verify the LRC
 register layout between init and HW
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
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA5LTI0IDExOjIxOjM4KQo+PiBEaWQgeW91IGNoZWNrIGhv
dyB0aGlzIHdvdWxkIHBsYXkgb3V0IHdpdGgganVzdCBSRUcgYmVpbmcgd2lkZSBlbm91Z2g/Cj4g
RnVuY3Rpb24gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgb2xkICAgICBuZXcg
ICBkZWx0YQo+IGdlbjlfeGNzX29mZnNldHMgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDEy
MiAgICAgMTQ1ICAgICArMjMKPiBnZW4xMl94Y3Nfb2Zmc2V0cyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAxMzYgICAgIDE1NyAgICAgKzIxCj4gZ2VuMTFfcmNzX29mZnNldHMgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDQ0ICAgICAgNjAgICAgICsxNgo+IGdlbjhfcmNzX29mZnNldHMg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICA0MSAgICAgIDU1ICAgICArMTQKPiBnZW4xMl9y
Y3Nfb2Zmc2V0cyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgNDcgICAgICA2MCAgICAgKzEz
Cj4gZ2VuOF94Y3Nfb2Zmc2V0cyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDQwICAgICAg
NTEgICAgICsxMQo+IHNldF9vZmZzZXRzLmlzcmEgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IDIxNSAgICAgMTc5ICAgICAtMzYKPiAtQ2hyaXMKClRoYW5rcyBmb3IgZ2V0dGluZyB0aGUgbnVt
YmVycywKLU1pa2EKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
