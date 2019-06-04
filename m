Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 595CE33C5D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 02:21:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7620D89350;
	Tue,  4 Jun 2019 00:21:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com
 [210.131.2.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C68C89350
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 00:21:42 +0000 (UTC)
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com
 [209.85.221.178]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x540LKbE006404
 for <intel-gfx@lists.freedesktop.org>; Tue, 4 Jun 2019 09:21:21 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x540LKbE006404
X-Nifty-SrcIP: [209.85.221.178]
Received: by mail-vk1-f178.google.com with SMTP id 125so1209170vkb.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Jun 2019 17:21:21 -0700 (PDT)
X-Gm-Message-State: APjAAAWsPxXz4guE2r4xLjqswfTUedAeNRaTK3erW8rhM3iPb98IzK3w
 8QrnERUx1F/e/Ck9anPYLEAplSmS320Hmr7tct4=
X-Google-Smtp-Source: APXvYqxiZRzIs4Cap7bpogirc4u1gGTjgxQBdj49dRgl72OOqyWPQq28tKBPcq4yGa/1/kO2554X/hbYSZKPw3aU4bs=
X-Received: by 2002:a1f:ac05:: with SMTP id v5mr10434723vke.34.1559607679960; 
 Mon, 03 Jun 2019 17:21:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190516194818.29230-1-jani.nikula@intel.com>
 <20190524174011.GA23737@ravnborg.org>
 <CAK7LNARY_L3Oyi7hhCZXVwNRAsf6ceSarTNDrzdfXQGj1tDFJw@mail.gmail.com>
 <20190603173328.GA11045@ravnborg.org>
In-Reply-To: <20190603173328.GA11045@ravnborg.org>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 4 Jun 2019 09:20:43 +0900
X-Gmail-Original-Message-ID: <CAK7LNASWsd-MSUtD69O05EZsVhcJTj7dh92MASzUoYR_it66AQ@mail.gmail.com>
Message-ID: <CAK7LNASWsd-MSUtD69O05EZsVhcJTj7dh92MASzUoYR_it66AQ@mail.gmail.com>
To: Sam Ravnborg <sam@ravnborg.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nifty.com; s=dec2015msa; t=1559607683;
 bh=APZcexSV89nKauT4vBIl3gS58qFiYwKK9p2I6qG79nY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=RG5hnOARSB8ic3rujoJMGiClq4PuogzjxGR7EUFUpkG9YwoPRXIVzi9kJvv0681wY
 xgP3n9LrL1DfS6E7CzfMfmYNa5E0hkvyCbE1/LeaQVrIp7Bx5X7HeCwWrP7oGHksfB
 T0cModnqOtdbuk0YZ0hghmgHtNgXPKhj+kZBIKYWMTgDB4fBjeVJZEU7IM6mZIjLBL
 eOprPRNzhZgdokF61T2BQnA76KTmwYJsZS07S/nCrc85WdaeZB+YQXUndzreNMrEZk
 73CvQU3pNK2gGLbDbHmLq84Hi5nnWqDtmfbBMnIo8ZJJWjQIJmBZAeSkKWSch6s5t7
 hO4jcxbK4ByCQ==
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

SGkgU2FtLCBKYW5pLAoKT24gVHVlLCBKdW4gNCwgMjAxOSBhdCAyOjMzIEFNIFNhbSBSYXZuYm9y
ZyA8c2FtQHJhdm5ib3JnLm9yZz4gd3JvdGU6Cj4KPiBIaSBNYXNhaGlyby9KYW5pLgo+Cj4gPgo+
ID4gRm9sbG93aW5nIHRoZSBvYmoteSBwYXR0ZXJuLAo+ID4gSSB3YW50IHRvIG1ha2UgaGVhZGVy
LXRlc3QteSByZWxhdGl2ZSB0byAkKG9iaikuCj4KPiBJIGFsc28gY29uc2lkZXJlZCB0aGlzIGFu
ZCBhZ3JlZSB0aGlzIGlzIGJldHRlci4KPgo+IE90aGVyd2lzZSB3ZSBlbmQgdXAgd2l0aCBhIHNw
YWdoZXR0aSBvZiBkZXBlbmRlbmNpZXMgYWNyb3NzIHRoZSB0cmVlLgo+Cj4gV2hhdCBJIG1hZGUg
anVzdCBmaXQgdGhlIHB1cnBvc2UgSSBoYWQgdGhhdCBkYXksCj4gd2hpY2ggaXMgbm8gZXhjdXNl
IGZvciBiYWQgZGVzaWduLgo+Cj4gPiBJIHByZWZlciB0aGlzOgo+ID4KPiA+IHF1aWV0X2NtZF9o
ZWFkZXJfdGVzdCA9IEhEUlRFU1QgJEAKPiA+ICAgICAgIGNtZF9oZWFkZXJfdGVzdCA9IGVjaG8g
IlwjaW5jbHVkZSBcIiQqLmhcIiIgPiAkQAo+ID4KPiA+ICQob2JqKS8lLmhlYWRlcl90ZXN0LmM6
Cj4gPiAgICAgICAgICQoY2FsbCBjbWQsaGVhZGVyX3Rlc3QpCj4KPiBFdmVuIGJldHRlciAtIGdv
b2QuCj4KPiBXZSBjYWxsIGl0IEhEUlRFU1QgLSBzbyB3aHkgbm90IGp1c3QgZ28gZm9yIHRoYXQg
bmFtZToKPgo+ICAgICBoZHJ0ZXN0LXkgKz0gaGVhZGVyZmlsZS5oCj4KPiA/Pwo+Cj4gVGhlIGN1
cnJlbnQgcHJvcG9zYWwgd2l0aCAiaGVhZGVyLXRlc3QteSIgaHVydHMgdGhlIGV5ZSBhIGxpdHRs
ZSB3aXRoCj4gdHdvICctJywgYW5kIGFsbCBvdGhlciB2YXJpYWJsZXMgdXNlcyBvbmx5IG9uZSAn
LScgYXMgaXMgdG9kYXkuCj4gKGdlbmVyaWMteSwgb2JqLXkgZXRjKS4KPgo+IFRoaXMgaXMgYmlr
ZXNoZWRkaW5nIGJ1dCBpcyB3YXMgaXRjaW5nIG1lIGEgbGl0dGxlLgoKSSBkbyBub3QgaGF2ZSBh
IHN0cm9uZyBvcGluaW9uLgpJIGxlYXZlIGl0IHRvIEphbmkuIEVpdGhlciBpcyBmaW5lIHdpdGgg
bWUuCgoKVGhlcmUgYXJlIHZhcmlhYmxlcyB0aGF0IGNvbnRhaW4gdHdvICctJy4KJ25vLWNsZWFu
LWZpbGVzJywgJ3N1YmRpci1jY2ZsYWdzLXknLCBldGMuCgoKLS0KQmVzdCBSZWdhcmRzCk1hc2Fo
aXJvIFlhbWFkYQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
