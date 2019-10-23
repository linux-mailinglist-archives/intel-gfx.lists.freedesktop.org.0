Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5361FE158D
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 11:16:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AE806E9FD;
	Wed, 23 Oct 2019 09:16:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F2F46E9FD;
 Wed, 23 Oct 2019 09:16:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 02:16:18 -0700
X-IronPort-AV: E=Sophos;i="5.68,220,1569308400"; d="scan'208";a="191774697"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 02:16:15 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Wed, 23 Oct 2019 11:16:10 +0200
Message-ID: <22796348.fPr5VZe4nD@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <157182198261.11484.17059885516266928115@skylake-alporthouse-com>
References: <20191023090752.23566-1-janusz.krzysztofik@linux.intel.com>
 <20191023090752.23566-2-janusz.krzysztofik@linux.intel.com>
 <157182198261.11484.17059885516266928115@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] tests/gem_exec_reloc: Calculate
 softpin offsets from batch size
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

SGkgQ2hyaXMsCgpPbiBXZWRuZXNkYXksIE9jdG9iZXIgMjMsIDIwMTkgMTE6MTM6MDIgQU0gQ0VT
VCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTkt
MTAtMjMgMTA6MDc6NTIpCj4gPiBGcm9tOiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5
c3p0b2Zpa0BpbnRlbC5jb20+Cj4gPiAKPiA+IFRoZSBiYXNpYy1yYW5nZSBzdWJ0ZXN0IGFzc3Vt
ZXMgNGtCIG1pbmltdW0gYmF0Y2ggc2l6ZS4gIE9uIGZ1dHVyZQo+ID4gYmFja2VuZHMgd2l0aCBw
b3NzaWJseSBiaWdnZXIgbWluaW11bSBiYXRjaCBzaXplcyB0aGlzIHN1YnRlc3Qgd2lsbAo+ID4g
ZmFpbCBhcyBidWZmZXIgb2JqZWN0cyBtYXkgb3ZlcmxhcC4gIFRvIGF2b2lkIG9iamVjdCBvdmVy
bGFwcGluZywKPiA+IG9mZnNldHMgbmVlZCB0byBiZSBjYWxjdWxhdGVkIHdpdGggYWN0dWFsIG1p
bmltdW0gYmF0Y2ggc2l6ZSBpbiBtaW5kLgo+ID4gCj4gPiBSZXBsYWNlIGhhcmRjb2RlZCBjb25z
dGFudHMgY29ycmVzcG9uZGluZyB0byB0aGUgYXNzdW1lZCA0a0IgbWluaW11bQo+ID4gYmF0Y2gg
c2l6ZSB3aXRoIHZhbHVlcyBjYWxjdWxhdGVkIGZyb20gYSB2YXJpYWJsZSBzdXBwb3NlZCB0byBy
ZXByZXNlbnQKPiA+IGFjdHVhbCBiYXRjaCBzaXplLiAgRm9yIG5vdywgdGhlIHZhcmlhYmxlIGlz
IHN0aWxsIGluaXRpYWxpemVkIHdpdGggdGhlCj4gPiA0a0IgdmFsdWUsIHN1aXRhYmxlIGZvciBi
YWNrZW5kcyBjdXJyZW50bHkgc3VwcG9ydGVkIGJ5IElHVC4KPiAKPiBZb3UgY291bGQgZG8gdGhp
cyBlbnRpcmVseSB3aXRoaW4gdGhlIHJlbG9jIEFQSSwgbm8/IEJ5IHByb2Jpbmcgd2hldGhlcgo+
IGEgNEtpQiBvZmZzZXQgaXMgbGVnYWw/CgpUaGFua3MgZm9yIHRoZSBoaW50LCBJJ2xsIHRyeSB0
byB0YWtlIHRoaXMgcGF0aC4KSmFudXN6Cgo+IC1DaHJpcwo+IAoKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
