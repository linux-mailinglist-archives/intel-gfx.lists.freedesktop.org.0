Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E52B81A9A9D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 12:33:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 738086E957;
	Wed, 15 Apr 2020 10:33:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from netline-mail3.netline.ch (mail.netline.ch [148.251.143.178])
 by gabe.freedesktop.org (Postfix) with ESMTP id 74C0C6E957;
 Wed, 15 Apr 2020 10:33:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by netline-mail3.netline.ch (Postfix) with ESMTP id B630A2A6042;
 Wed, 15 Apr 2020 12:33:46 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at netline-mail3.netline.ch
Received: from netline-mail3.netline.ch ([127.0.0.1])
 by localhost (netline-mail3.netline.ch [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id qIgEX938idOU; Wed, 15 Apr 2020 12:33:46 +0200 (CEST)
Received: from thor (252.80.76.83.dynamic.wline.res.cust.swisscom.ch
 [83.76.80.252])
 by netline-mail3.netline.ch (Postfix) with ESMTPSA id F234C2A6016;
 Wed, 15 Apr 2020 12:33:45 +0200 (CEST)
Received: from [::1] by thor with esmtp (Exim 4.93)
 (envelope-from <michel@daenzer.net>)
 id 1jOfMW-0014HL-Qk; Wed, 15 Apr 2020 12:33:44 +0200
To: Daniel Vetter <daniel@ffwll.ch>, Manasi Navare <manasi.d.navare@intel.com>
References: <20200414050807.13531-1-manasi.d.navare@intel.com>
 <20200414050807.13531-3-manasi.d.navare@intel.com>
 <20200414124454.GW3456981@phenom.ffwll.local>
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>
Message-ID: <3e395ad0-11c2-3e74-2fd6-41ddf0b565bc@daenzer.net>
Date: Wed, 15 Apr 2020 12:33:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200414124454.GW3456981@phenom.ffwll.local>
Content-Language: en-CA
Subject: Re: [Intel-gfx] [PATCH v4 3/3] drm/i915/dp: Expose connector VRR
 info via debugfs
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx@lists.freedesktop.org, nicholas.kazlauskas@amd.com,
 dri-devel@lists.freedesktop.org,
 Bhanuprakash Modem <bhanuprakash.modem@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMC0wNC0xNCAyOjQ0IHAubS4sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gT24gTW9uLCBB
cHIgMTMsIDIwMjAgYXQgMTA6MDg6MDdQTSAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3cm90ZToKPj4g
RnJvbTogQmhhbnVwcmFrYXNoIE1vZGVtIDxiaGFudXByYWthc2gubW9kZW1AaW50ZWwuY29tPgo+
Pgo+PiBbV2h5XQo+PiBJdCdzIHVzZWZ1bCB0byBrbm93IHRoZSBtaW4gYW5kIG1heCB2cnIgcmFu
Z2UgZm9yIElHVCB0ZXN0aW5nLgo+Pgo+PiBbSG93XQo+PiBFeHBvc2UgdGhlIG1pbiBhbmQgbWF4
IHZmcmVxIGZvciB0aGUgY29ubmVjdG9yIHZpYSBhIGRlYnVnZnMgZmlsZQo+PiBvbiB0aGUgY29u
bmVjdG9yLCAiaTkxNV92cnJfaW5mbyIuCj4+Cj4+IEV4YW1wbGUgdXNhZ2U6IGNhdCAvc3lzL2tl
cm5lbC9kZWJ1Zy9kcmkvMC9EUC0xL2k5MTVfdnJyX2luZm8KPj4KPj4gdjM6Cj4+ICogUmVtb3Zl
IHRoZSB1bm5lY2Vzc2FyeSBkZWJ1ZyBwcmludCAoTWFuYXNpKQo+PiB2MjoKPj4gKiBGaXggdGhl
IHR5cG8gaW4gbWF4X3ZmcmVxIChNYW5hc2kpCj4+ICogQ2hhbmdlIHRoZSBuYW1lIG9mIG5vZGUg
dG8gaTkxNV92cnJfaW5mbyBzbyB3ZSBjYW4gYWRkCj4+IG90aGVyIHZyciBpbmZvIGZvciBtb3Jl
IGRlYnVnIGluZm8gKE1hbmFzaSkKPj4gKiBDaGFuZ2UgdGhlIFZSUiBjYXBhYmxlIHRvIGRpc3Bs
YXkgWWVzIG9yIE5vIChNYW5hc2kpCj4+ICogRml4IGluZGVudGF0aW9uIGNoZWNrcGF0Y2ggZXJy
b3JzIChNYW5hc2kpCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEJoYW51cHJha2FzaCBNb2RlbSA8Ymhh
bnVwcmFrYXNoLm1vZGVtQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFy
ZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBsaW51eC5pbnRlbC5jb20+Cj4+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgo+PiBUZXN0ZWQtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5k
Lm5hdmFyZUBpbnRlbC5jb20+Cj4gCj4gU28gaWYgSSdtIHVuZGVyc3RhbmRpbmcgdGhpbmdzIGNv
cnJlY3RseSBBTUQgYnV0Y2hlcmVkIHRoZSBWUlIgc3R1ZmYgYW5kCj4gb25seSBleHBvc2VzIGl0
IHdoZW46Cj4gCj4gLSBWUlJfRU5BQkxFRCBpcyBzZXQKCk5vdCByZWFsbHkgc3VycHJpc2luZz8g
OikKCj4gLSBfYW5kXyB5b3UncmUgdXNpbmcgdGhlIGxlZ2FjeSBwYWdlX2ZsaXAgcGF0aCwgYXRv
bWljIGZsaXAgZG9lc24ndAo+ICAgc3VwcG9ydCBpdAoKU2ltb24gU2VyIGhhcyBWUlIgd29ya2lu
ZyB3aXRoIHN3YXkgdXNpbmcgdGhlIGF0b21pYyBLTVMgQVBJLgoKPiAtIF9hbmRfIHRoZSBQQUdF
X0ZMSVBfQVNZTkMgZmxhZyBpcyBzZXQuCgpBRkFJSyBpdCB3b3JrcyBib3RoIHdpdGhvdXQgYW5k
IHdpdGggUEFHRV9GTElQX0FTWU5DLiAoQXN5bmMganVzdCBtZWFucwp0ZWFyaW5nIGlmIHRoZSBm
bGlwIGlzIHByb2dyYW1tZWQgb3V0c2lkZSBvZiB2ZXJ0aWNhbCBibGFuaykKCgotLSAKRWFydGhs
aW5nIE1pY2hlbCBEw6RuemVyICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgIGh0dHBzOi8v
cmVkaGF0LmNvbQpMaWJyZSBzb2Z0d2FyZSBlbnRodXNpYXN0ICAgICAgICAgICAgIHwgICAgICAg
ICAgICAgTWVzYSBhbmQgWCBkZXZlbG9wZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
