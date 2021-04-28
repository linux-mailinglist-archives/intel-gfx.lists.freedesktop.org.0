Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E15036E9E8
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 14:01:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 550B66EE60;
	Thu, 29 Apr 2021 12:01:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D06786E0D6
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 18:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1619635766;
 bh=yS/2QzB+yTcPs3OLz8nZs+xLgIW9ThlcdkYlPFldqo0=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:Date:In-Reply-To:References;
 b=YqvSXDzmbT9Hk/HrDArJ6PtjEXWntaqE6uVzCKqwfQU4CTp74DnhBTS35C1XUXhj/
 yf0JCW6Ke0VOr7alZoSnW4+FroYt1CrJEC9ARVorUiWx58RE6zcjk0szj6hw3Xwxw+
 Ab6x4RFGkJk4P9Ju/6Au38WpGQjCIAGeQh//+5BQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.0.4] ([84.136.99.64]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MZCb5-1m6Okz3hBp-00V5aq; Wed, 28
 Apr 2021 20:44:16 +0200
Message-ID: <1bef246953fedcc0a028df144cb7dfbb8308169c.camel@gmx.net>
From: Mario =?ISO-8859-1?Q?H=FCttel?= <mario.huettel@gmx.net>
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 28 Apr 2021 20:44:14 +0200
In-Reply-To: <87a6pl5ch0.fsf@intel.com>
References: <042237f49ed1fd719126a3407d7c909e49addbea.camel@gmx.net>
 <87a6pl5ch0.fsf@intel.com>
User-Agent: Evolution 3.40.0 
MIME-Version: 1.0
X-Provags-ID: V03:K1:sQBRDuiKGtvRN2LfY6QT/HVLGMikBOTXLqxlidu39UfJcDw2pan
 QuEuCiJDIhMJ4Pw/2pY1NkQrJ21izI/xeJPVsdTwsEBRK6WTqXnCf7TG9VHDeh5XDYpMmeJ
 t9yo4Vh9hIiNeNepjQxhEvblXzfQRd9AocnpOwN4tV9sZVe9SQuYsCbfdClubY7qMOjqFAD
 3Dz0OzkJAEuE2dq8BeC7g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Tz53n6mB5Ek=:Q2oYqx8hn8x6tcczNwu45f
 9fAhj/EtQsx98PL3eNshV1dO5S9ykC/iZPGbYsq1UwXgtYOpwcVobZR8YGkZCw0A1M8WTkFMV
 v+C6naaOAnwwBq1u3ViiPAB97S7QFqQdFUvsLeJaql0cC2ht5rcYO8aRgMjTHndq7npvNMW99
 sxfZ1oNUtV3+0rsL1VvsLDvit0xfIml1lLIJoeZWG1Ztuu+siAPbH15FCyzMEJNLekfXikFUo
 DHR36Kn4CpAPXKlnkJ7iZqBYZu0oBPoJYguV/Lc68fd7x3ovVeJTfAHWTR0lCRq7YcmdDrGsS
 1IdWzwxqV4pXofkEtmN/+ZNHUcvp3US4b8CyU6g6d0UY5IDMy12hkwT9AC8f9+y7dPtXTdw5E
 xW3fxC16D+XxWGs4oeIU6FM4TLcp326USmBxfTaFxQyqCeM4x5VmZkY9feUElTLNuZx/+sJ7B
 UUptDJN0tG9u7kFLrLmc1jLtD92+4PTpOIxawm2gYlsGPYUuqkSFFNaSqOS9f2GOzNyoKFYL4
 gDIj31SUIIQH4KMEut/Z5H4bOfRJi48OpGp6OffjO09p1Zr4ceB2VNMjc1j51o/wnB1Dplt6g
 A3uY33TgGsKrKlbXuy+MRtfwtuzzrqzdKzHEvOEYzrPJ2yUC7b26ocI5FgScqBNrMsRN5FWzP
 VaHtH53ZhlVoO/YejJlIjvw/QCHYalywTRHr3DwpS6inQewK51TCnMfqsVx6ae7xtDGVW2xvV
 6GuPz4vbBvlmgt4uLPbQGYN7CIp+ZycU02N6wFK5t0WipwKPCOhJ+HMuicqbsV9QBZiJlm3No
 W1AHm/n8lEhjsRRdgz1fG7FKztbpS8USE6nRKoDVR9LWuzioVaoEZNwpzPvgjT5QgGIlg7hTJ
 PV7oAtBV2s/a2ovfU3jdDAHuyHK8EFw3SB0Lx+vRpqDjHUY7PsWwndUk1ZQqTDIR4GgH5UgIe
 lL4aoFXtms3xsqTj7RdhkWXrkCK4IUvdGP64k7kccNEfcZq06Y2bUgMoKfBLreDF3jv0Yk7l8
 trvInAC96zRqMcEwyG3KtPtTD12c+XF2z9UC86b7nZT+D14zUq1ksr3kH1Fw4v6sJAePSArkQ
 cVVTXbbCMvIwz6T3WbhirR7sbyZeysMRsuIrhxkqTQwaT9QL9I7gd0jnYP5P1PJV5IrFloXbG
 w1o8pk34keoLYaGIkOlhzF3Cur5c7kJ8hSqbgN8GQmOgduOH4jPGvCeGEUF2YUt5bFyg77+Ue
 2JEtiR1mvYXve8PPC
X-Mailman-Approved-At: Thu, 29 Apr 2021 12:01:43 +0000
Subject: Re: [Intel-gfx] BUG in i915/i915_pci.c, commit fe0f1e3
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgp5ZXMuIFRoZSBidWcgaXMgc3RpbGwgcHJlc2VudCB3aXRoIGEgcmVjZW50IGtlcm5lbC4K
SSBnb3QgdGhlIHRpcCBmcm9tIEltcmUgRGVhayB0byB0cnkgb3V0Cgo3OTYyODkzZWNiODUzICgi
ZHJtL2k5MTU6IERpc2FibGUgcnVudGltZSBwb3dlciBtYW5hZ2VtZW50IGR1cmluZwpzaHV0ZG93
biIpCgpUaGlzIGZpeGVzIHRoZSBpc3N1ZSBmb3IgbWUuIERvIEkgc3RpbGwgaGF2ZSB0byBmaWxl
IGEgYnVnIHJlcG9ydCBvcgp3aWxsIHRoaXMgcGF0Y2ggZXZlbnR1YWxseSBmaW5kIGl0cyB3YXkg
dXBzdHJlYW0/CgpUaGFua3MKTWFyaW8KCk9uIE1vbiwgMjAyMS0wNC0yNiBhdCAxNzo0NyArMDMw
MCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gT24gU2F0LCAxMyBNYXIgMjAyMSwgTWFyaW8gSMO8dHRl
bCA8bWFyaW8uaHVldHRlbEBnbXgubmV0PiB3cm90ZToKPiA+IEhlbGxvLAo+ID4KPiA+IEkgd2Fu
dCB0byByZXBvcnQgYSBidWcuIEkgaGF2ZSBhIFBDIHdpdGggSW50ZWwgaTctNjcwMEsgcHJvY2Vz
c29yCj4gPiAod2l0aAo+ID4gaW50ZWdyYXRlZCBncmFwaGljcykgYW5kIGFuIEFzUm9jayBGYXRh
bDF0eSBaMTcwIEdhbWluZyBLNgo+ID4gbWFpbmJvYXJkLiBJCj4gPiB1c2UgdGhlIENQVSdzIGlu
dGVncmF0ZWQgZ3JhcGhpY3MuCj4gPiBNeSBzeXN0ZW0gaXMgQXJjaGxpbnV4IHdpdGggS2VybmVs
IHY1LjExLjYuCj4gPgo+ID4gVXNpbmcgdGhpcyBzZXR1cCwgbXkgUEMgd29ya3Mgbm9ybWFsbHku
IEhvd2V2ZXIsIHdoZW4gSSBzaHV0IGl0Cj4gPiBkb3duLAo+ID4gdGhlIHBvd2VyIGlzIG5vdCBj
dXQuIEZhbnMgYW5kIExFRHMga2VlcCBzcGlubmluZy4gSSBjb3VsZG4ndAo+ID4gZGV0ZWN0Cj4g
PiBhbnkgb3RoZXIgcHJvYmxlbSB3aGVuIHNodXR0aW5nIGRvd24uIERyaXZlcyBldGMuIHN0b3Ag
YXMgZXhwZWN0ZWQKPiA+IGFuZAo+ID4gdGhlIHZpZGVvIGlzIGJsYW5rLiBFdmVuIGFmdGVyIHdh
aXRpbmcgc2V2ZXJhbCBob3VycywgdGhlIHN5c3RlbQo+ID4gZG9lc24ndCBwb3dlciBkb3duLgo+
ID4gSSBoYXZlbid0IHlldCBmb3VuZCBhbnkgb3RoZXIgcGVvcGxlIG9uIHRoZSBpbnRlcm5ldCB0
aGF0IGhhdmUgdGhlCj4gPiBzYW1lCj4gPiBidWcuCj4gPgo+ID4gSSB1c2VkIGdpdCBiaXNlY3Qg
dG8gZmluZCB0aGUgY29tbWl0IHRoYXQgY2F1c2VzIHRoaXMgYmVoYXZpb3Igb24KPiA+IG15Cj4g
PiBtYWNoaW5lLiBUaGUgcmVzdWx0IGlzOiBmZTBmMWUzYmZkZmViNTNlMThmMTIwNmFlYTRmNDBi
OWJkMWYyOTFjIGlzCj4gPiB0aGUKPiA+IGZpcnN0IGJhZCBjb21taXQuCj4gPgo+ID4gSSBob3Bl
IHRoaXMgaXMgdGhlIGNvcnJlY3QgbWFpbGluZyBsaXN0IGZvciB0aGlzIGlzc3VlLgo+ID4KPiA+
IExldCBtZSBrbm93IGlmIHlvdSBuZWVkIG1vcmUgaW5mb3JtYXRpb24gb3Igc29tZW9uZSB0byB0
ZXN0IGl0Lgo+Cj4gVGhpcyBzZWVtcyB0byBoYXZlIGZhbGxlbiBiZXR3ZWVuIHRoZSBjcmFja3Ms
IGFwb2xvZ2llcy4gSXMgdGhpcwo+IHN0aWxsCj4gYW4gaXNzdWUgd2l0aCBuZXdlciBrZXJuZWxz
PyBJZiB5ZXMsIHBsZWFzZSBmaWxlIGEgYnVnIGF0IFsxXS4KPgo+IEJSLAo+IEphbmkuCj4KPgo+
IFsxXQo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvd2lraXMvSG93
LXRvLWZpbGUtaTkxNS1idWdzCj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
