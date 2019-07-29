Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C6D78932
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 12:05:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94C7689CE2;
	Mon, 29 Jul 2019 10:05:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCDB289CE2
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 10:05:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 02:26:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,322,1559545200"; d="scan'208";a="370974008"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.251.95.109])
 by fmsmga006.fm.intel.com with ESMTP; 29 Jul 2019 02:26:48 -0700
MIME-Version: 1.0
To: "Bloomfield, Jon" <jon.bloomfield@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <156418002274.21451.1623407086944063041@skylake-alporthouse-com>
References: <57b95613f6cf4a0806baeb3d99790bd90b7615e4>
 <156409725005.30723.12612262044238740018@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B39EC9A@fmsmsx120.amr.corp.intel.com>
 <156409873786.30723.15122214451413059669@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3A0322@fmsmsx120.amr.corp.intel.com>
 <156417185244.21451.7761589449877959086@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3A1F78@fmsmsx120.amr.corp.intel.com>
 <156417657960.21451.14402392043492527858@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3A2150@fmsmsx120.amr.corp.intel.com>
 <156418002274.21451.1623407086944063041@skylake-alporthouse-com>
Message-ID: <156439240706.11244.2735970875432989488@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Mon, 29 Jul 2019 12:26:47 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Replace hangcheck by heartbeats
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMjcgMDE6Mjc6MDIpCj4gUXVvdGluZyBCbG9v
bWZpZWxkLCBKb24gKDIwMTktMDctMjYgMjM6MTk6MzgpCj4gPiBIbW1uLiBXZSdyZSBzdGlsbCBv
biBvcnRob2dvbmFsIHBlcnNwZWN0aXZlcyBhcyBmYXIgYXMgb3VyIHByZXZpb3VzIGFyZ3VtZW50
cyBzdGFuZC4gQnV0IGl0IGRvZXNuJ3QgbWF0dGVyIGJlY2F1c2Ugd2hpbGUgdGhpbmtpbmcgdGhy
b3VnaCB5b3VyIHJlcGxpZXMsIEkgcmVhbGl6ZWQgdGhlcmUgaXMgb25lIGFyZ3VtZW50IGluIGZh
dm91ciwgd2hpY2ggdHJ1bXBzIGFsbCBteSBwcmV2aW91cyBhcmd1bWVudHMgYWdhaW5zdCB0aGlz
IHBhdGNoIC0gaXQgbWFrZXMgdGhpbmdzIGRldGVybWluaXN0aWMuIFdpdGhvdXQgdGhpcyBwYXRj
aCAob3IgaGFuZ2NoZWNrKSwgd2hldGhlciBhIGNvbnRleHQgZ2V0cyBudWtlZCBkZXBlbmRzIG9u
IHdoYXQgZWxzZSBpcyBydW5uaW5nLiBBbmQgdGhhdCdzIGEgcmVjaXBlIGZvciBjb25mdXNlZCBz
dXBwb3J0IGVtYWlscy4KPiA+IAo+ID4gU28gSSByZXRyYWN0IG15IG90aGVyIGFyZ3VtZW50cywg
dGhhbmtzIGZvciBzdGF5aW5nIHdpdGggbWUgOi0pCj4gCj4gTm8gd29ycmllcywgaXQncyBiZWVu
IHJlYWxseSB1c2VmdWwsIGVzcGVjaWFsbHkgcmVhbGlzaW5nIGEgZmV3IG1vcmUKPiBhcmVhcyB3
ZSBjYW4gaW1wcm92ZSBvdXIgcmVzaWxpZW5jZS4gWW91IHdpbGwgZ2V0IHlvdXIgd2F5IGV2ZW50
dWFsbHkuCj4gKEJ1dCB3aGF0IGRpZCBpdCBjb3N0PyBFdmVyeXRoaW5nLikKCk9rLCBzbyBqdXN0
IGNvbmZpcm1pbmcgaGVyZS4gVGhlIHBsYW4gaXMgc3RpbGwgdG8gaGF2ZSB1c2Vyc3BhY2Ugc2V0
IGEKcGVyIGNvbnRleHQgKG9yIHBlciByZXF1ZXN0KSB0aW1lIGxpbWl0IGZvciBleHBlY3RlZCBj
b21wbGV0aW9uIG9mIGEKcmVxdWVzdC4gVGhpcyB3aWxsIGJlIHVzZWZ1bCBmb3IgdGhlIG1lZGlh
IHdvcmtsb2FkcyB0aGF0IGNvbnN1bWUKZGV0ZXJtaW5pc3RpYyBhbW91bnQgb2YgdGltZSBmb3Ig
Y29ycmVjdCBiaXRzdHJlYW0uIEFuZCB0aGUgdXNlcnNwYWNlCndhbnRzIHRvIGJlIG5vdGlmaWVk
IG11Y2ggcXVpY2tlciB0aGFuIHRoZSBnZW5lcmljIGhhbmdjaGVjayB0aW1lIGlmCnRoZSBvcGVy
YXRpb24gZmFpbGVkIGR1ZSB0byBjb3JydXB0IGJpdHN0cmVhbS4KClRoaXMgdGltZSBsaW1pdCBj
YW4gYmUgc2V0IHRvIGluZmluaXRlIGJ5IGNvbXB1dGUgd29ya2xvYWRzLgoKVGhlbiwgaW4gcGFy
YWxsZWwgdG8gdGhhdCwgd2UgaGF2ZSBjZ3JvdXBzIG9yIHN5c3RlbSB3aWRlIGNvbmZpZ3VyYXRp
b24KZm9yIG1heGltdW0gYWxsb3dlZCB0aW1lc2xpY2UgcGVyIHByb2Nlc3MvY29udGV4dC4gVGhh
dCBtZWFucyB0aGF0IGEKbG9uZy1ydW5uaW5nIHdvcmtsb2FkIG11c3QgcHJlLWVtcHQgYXQgdGhh
dCBncmFudWxhcml0eS4KClRoYXQgcHJlLWVtcHRpb24vaGVhcmJlYXQgc2hvdWxkIGhhcHBlbiBy
ZWdhcmRsZXNzIGlmIG90aGVycyBjb250ZXh0cyBhcmUKcmVxdWVzdGluZyB0aGUgaGFyZHdhcmUg
b3Igbm90LCBiZWNhdXNlIGJldHRlciBzdGFydCByZWNvdmVyeSBvZiBhIGh1bmcKdGFzayBhcyBz
b29uIGFzIGl0IG1pc2JlaGF2ZXMuCgpSZWdhcmRzLCBKb29uYXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
