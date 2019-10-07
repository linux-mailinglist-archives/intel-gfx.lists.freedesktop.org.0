Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D69D6CE471
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 15:59:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E0B06E095;
	Mon,  7 Oct 2019 13:59:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 295186E095
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 13:59:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 06:59:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,268,1566889200"; d="scan'208";a="344740878"
Received: from dshrivas-mobl3.ger.corp.intel.com (HELO [10.252.37.226])
 ([10.252.37.226])
 by orsmga004.jf.intel.com with ESMTP; 07 Oct 2019 06:58:59 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191007130325.7340-1-chris@chris-wilson.co.uk>
 <26383ccc-f9ec-9cdc-a263-41a9a1994560@intel.com>
 <157045539387.2661.13513283524570997516@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <c2576525-8a0c-ca74-3a0d-a6d409363402@intel.com>
Date: Mon, 7 Oct 2019 16:59:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157045539387.2661.13513283524570997516@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Wean ourselves off dev_priv
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

T24gMDcvMTAvMjAxOSAxNjozNiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMTAtMDcgMTQ6MzM6MDIpCj4+IE9uIDA3LzEwLzIwMTkgMTY6MDMs
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFVzZSB0aGUgbG9jYWwgdW5jb3JlIGFjY2Vzc29ycyBm
b3IgdGhlIEdUIHJhdGhlciB0aGFuIHVzaW5nIHRoZSBbbm90LXNvXQo+Pj4gbWFnaWMgZ2xvYmFs
IGRldl9wcml2IG1taW8gcm91dGluZXMuIEluIHRoZSBwcm9jZXNzLCB3ZSBhbHNvIHRlYWNoIHRo
ZQo+Pj4gcGVyZiBzdHJlYW0gdG8gdXNlIGJhY2twb2ludGVycyB0byB0aGUgaTkxNV9wZXJmIHJh
dGhlciB0aGFuIGRpZ2dpbmcgaXQKPj4+IG91dCBvZiBkZXZfcHJpdi4KPj4+Cj4+PiBTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4+IENjOiBV
bWVzaCBOZXJsaWdlIFJhbWFwcGEgPHVtZXNoLm5lcmxpZ2UucmFtYXBwYUBpbnRlbC5jb20+Cj4+
PiBDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+
Pgo+PiBMb29rcyBnb29kLCBhcGFydCBmcm9tIHRoZSBmYWN0IHRoYXQgdGhpcyBoYXMgYmVlbiBy
ZXZpZXdlZCBieSBVbWVzaCA6Cj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hp
dmVzL2ludGVsLWdmeC8yMDE5LVNlcHRlbWJlci8yMTIwMDguaHRtbAo+Pgo+PiBTaG91bGQgSSBo
YXZlIGxhbmRlZCB0aGlzIG9yIGRvIEkgaGF2ZSB0byB3YWl0IGZvciBzb21lb25lIGVsc2UgdG8g
YWxzbwo+PiByZXZpZXc/Cj4gTWVyZ2UgaXQuCj4gLUNocmlzCj4KVGhhbmtzLCBkb25lLgoKLUxp
b25lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
