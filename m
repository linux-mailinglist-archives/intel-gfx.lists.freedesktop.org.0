Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 134BD7DF2E
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 17:35:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D03E6E6FC;
	Thu,  1 Aug 2019 15:35:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E33C46E6FB
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 15:35:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 08:35:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,334,1559545200"; d="scan'208";a="256682540"
Received: from aramdahl-mobl.ger.corp.intel.com (HELO [10.252.36.196])
 ([10.252.36.196])
 by orsmga001.jf.intel.com with ESMTP; 01 Aug 2019 08:35:47 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190731140733.23373-1-lionel.g.landwerlin@intel.com>
 <20190731140733.23373-3-lionel.g.landwerlin@intel.com>
 <156460343987.15787.2880473369100261078@skylake-alporthouse-com>
 <a0484bba-940b-7f54-1bf7-3966667f329c@intel.com>
 <156467261889.6045.13760164267270102943@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <8f1ab8e7-4424-dddb-1476-6dc08d52d44d@intel.com>
Date: Thu, 1 Aug 2019 18:35:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156467261889.6045.13760164267270102943@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915: add syncobj timeline
 support
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

T24gMDEvMDgvMjAxOSAxODoxNiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDgtMDEgMTU6Mjk6MzQpCj4+IE9uIDMxLzA3LzIwMTkgMjM6MDMs
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFF1b3RpbmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTkt
MDctMzEgMTU6MDc6MzMpCi4uLgo+Pj4gSSB0aGluayBJIGhhdmUgY29udmluY2VkIG15c2VsZiB0
aGF0IHdpdGggdGhlIHNwbGl0IGJldHdlZW4gd2FpdCBiZWZvcmUsCj4+PiBzaWduYWwgYWZ0ZXIg
Y29tYmluZWQgd2l0aCB0aGUgcnVsZSB0aGF0IHNlcW5vIHBvaW50IGFsb25nIHRoZSBzeW5jb2Jq
Cj4+PiBhcmUgbW9ub3RvbmljLCB5b3Ugc2hvdWxkIG5vdCBiZSBhYmxlIHRvIGdlbmVyYXRlIGFu
IEFCLUJBIGRlYWRsb2NrCj4+PiBiZXR3ZWVuIGNvbmN1cnJlbnQgY2xpZW50cy4KPj4KPj4gQ2Fu
IHlvdSBjb21lIHVwIHdpdGggYW4gZXhhbXBsZSB0aGF0IHdvdWxkIGRlYWRsb2NrPwo+IFRpbWVs
aW5lIGhvbGRzIDIsMTsgYSB3YWl0IG9uIDIgd2lsbCBmYWlsIHdpdGggLUVJTlZBTCB0byB1c2Vy
c3BhY2UuCj4gKFRob3VnaCBwb3NzaWJseSBwZXJmZWN0bHkgdmFsaWQgYmVoYXZpb3VyIG9uIHRo
ZSBwYXJ0IG9mIHRoZSB1c2VyLikKPgo+IFRpbWVsaW5lIGhvbGRzIDIsIHdpdGggMSBiZWluZyBz
dWJtaXR0ZWQuIEEgd2FpdCBvbiAxIHdhaXRzIG9uIDIKPiBpbnN0ZWFkLiBJZiAxIGdhaW5zIGEg
ZGVwZW5kZW5jeSBvbiBBIChlLmcuIGJhZCB1c2Vyc3BhY2Ugb3IgYW4KCgpZb3UgbWVhbiA6IDEg
Z2FpbnMgYSBkZXBlbmRlbmN5IG9uIDI/CgoKPiBpbXBsaWNpdCBmZW5jZSwgaXQncyBhIGNvbmN1
cnJlbnQgd2FpdC9zdWJtaXQgc28gZXhwZWN0IHRoZSB3b3JzdCwgaS5lLgo+IHVzZXJzcGFjZSBo
YXMgdG8gYmUgcmFjaW5nIHdpdGggaXRzZWxmIHRvIGdldCBpbnRvIHRoaXMgbWVzcyksIHlvdQo+
IG5vdyBoYXZlIGEgZGVhZGxvY2suCgoKTm90IHF1aXRlIHN1cmUgSSBzZWUgd2h5Li4uCgoyIGRv
ZXNuJ3QgaGF2ZSBhbnkgZGVwZW5kZW5jeSBvbiAxLCBpdCBqdXN0IGhhcHBlbnMgdG8gaGF2ZSBh
IG51bWJlciBoaWdoZXIuCgoKLUxpb25lbAoKCj4gICAoVGhlIGFzc3VtcHRpb24gYmVpbmcgdGhh
dCB0aGUgc3luY3B0IGFsb25nIHRoZQo+IHRpbWVsaW5lIGFyZSB0aGVtc2VsdmVzIG5vdCBzdHJp
Y3RseSBvcmRlcmVkLCBhbmQgY29uc2lkZXJpbmcgdGhleSBhcmUKPiBleHRlcm5hbCBzeW5jb2Jq
LCB0aGF0IHNlZW1zIGxpa2UgYSByZWFzb25hYmxlIGdlbmVyYWxpc2F0aW9uLikKPiAtQ2hyaXMK
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
