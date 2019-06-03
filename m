Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B014336D2
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 19:33:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 444BB89272;
	Mon,  3 Jun 2019 17:33:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from asavdk4.altibox.net (asavdk4.altibox.net [109.247.116.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC62189272
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2019 17:33:39 +0000 (UTC)
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 7E733806A0;
 Mon,  3 Jun 2019 19:33:35 +0200 (CEST)
Date: Mon, 3 Jun 2019 19:33:28 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Message-ID: <20190603173328.GA11045@ravnborg.org>
References: <20190516194818.29230-1-jani.nikula@intel.com>
 <20190524174011.GA23737@ravnborg.org>
 <CAK7LNARY_L3Oyi7hhCZXVwNRAsf6ceSarTNDrzdfXQGj1tDFJw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNARY_L3Oyi7hhCZXVwNRAsf6ceSarTNDrzdfXQGj1tDFJw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=xbvA-TkhMh5VV6G_q3AA:9 a=CjuIK1q_8ugA:10
Subject: Re: [Intel-gfx] [RFC 1/3] kbuild: add support for ensuring headers
 are self-contained
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
Cc: Michal Marek <michal.lkml@markovi.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgTWFzYWhpcm8vSmFuaS4KCj4gCj4gRm9sbG93aW5nIHRoZSBvYmoteSBwYXR0ZXJuLAo+IEkg
d2FudCB0byBtYWtlIGhlYWRlci10ZXN0LXkgcmVsYXRpdmUgdG8gJChvYmopLgoKSSBhbHNvIGNv
bnNpZGVyZWQgdGhpcyBhbmQgYWdyZWUgdGhpcyBpcyBiZXR0ZXIuCgpPdGhlcndpc2Ugd2UgZW5k
IHVwIHdpdGggYSBzcGFnaGV0dGkgb2YgZGVwZW5kZW5jaWVzIGFjcm9zcyB0aGUgdHJlZS4KCldo
YXQgSSBtYWRlIGp1c3QgZml0IHRoZSBwdXJwb3NlIEkgaGFkIHRoYXQgZGF5LAp3aGljaCBpcyBu
byBleGN1c2UgZm9yIGJhZCBkZXNpZ24uCgo+IEkgcHJlZmVyIHRoaXM6Cj4gCj4gcXVpZXRfY21k
X2hlYWRlcl90ZXN0ID0gSERSVEVTVCAkQAo+ICAgICAgIGNtZF9oZWFkZXJfdGVzdCA9IGVjaG8g
IlwjaW5jbHVkZSBcIiQqLmhcIiIgPiAkQAo+IAo+ICQob2JqKS8lLmhlYWRlcl90ZXN0LmM6Cj4g
ICAgICAgICAkKGNhbGwgY21kLGhlYWRlcl90ZXN0KQoKRXZlbiBiZXR0ZXIgLSBnb29kLgoKV2Ug
Y2FsbCBpdCBIRFJURVNUIC0gc28gd2h5IG5vdCBqdXN0IGdvIGZvciB0aGF0IG5hbWU6CgogICAg
aGRydGVzdC15ICs9IGhlYWRlcmZpbGUuaAoKPz8KClRoZSBjdXJyZW50IHByb3Bvc2FsIHdpdGgg
ImhlYWRlci10ZXN0LXkiIGh1cnRzIHRoZSBleWUgYSBsaXR0bGUgd2l0aAp0d28gJy0nLCBhbmQg
YWxsIG90aGVyIHZhcmlhYmxlcyB1c2VzIG9ubHkgb25lICctJyBhcyBpcyB0b2RheS4KKGdlbmVy
aWMteSwgb2JqLXkgZXRjKS4KClRoaXMgaXMgYmlrZXNoZWRkaW5nIGJ1dCBpcyB3YXMgaXRjaW5n
IG1lIGEgbGl0dGxlLgoKCVNhbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
