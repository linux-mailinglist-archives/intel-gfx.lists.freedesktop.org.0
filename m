Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 901B2927BA
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 16:57:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B91F6E192;
	Mon, 19 Aug 2019 14:57:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from condef-10.nifty.com (condef-10.nifty.com [202.248.20.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E3476E192
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 14:57:21 +0000 (UTC)
Received: from conssluserg-06.nifty.com ([10.126.8.85])by condef-10.nifty.com
 with ESMTP id x7JEsFG7026774
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 23:54:15 +0900
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
 [209.85.217.48]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id x7JEs0AB031745
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 23:54:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x7JEs0AB031745
X-Nifty-SrcIP: [209.85.217.48]
Received: by mail-vs1-f48.google.com with SMTP id j25so1349379vsq.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 07:54:01 -0700 (PDT)
X-Gm-Message-State: APjAAAWOdLCDLWx0uowBjZIbih9kmy/g52QCzqlLJTI9r1i7z40fV3IA
 7rmJ5G0YdtERcmx9vFMCsogh6KO1lBaBGFJLEhg=
X-Google-Smtp-Source: APXvYqxCvPdamZU+p02SDF09e1/NvXrn0Hz7DR3KtmzcpTVIO+I0G8oV9tN9ed3CMXFLqH/dKJESxZpEmc6A73VTg4s=
X-Received: by 2002:a67:e401:: with SMTP id d1mr3659378vsf.215.1566226439982; 
 Mon, 19 Aug 2019 07:53:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190806063923.1266-1-yamada.masahiro@socionext.com>
 <20190806063923.1266-2-yamada.masahiro@socionext.com>
In-Reply-To: <20190806063923.1266-2-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 19 Aug 2019 23:53:24 +0900
X-Gmail-Original-Message-ID: <CAK7LNATaj9zY1E=7-HU_v_PwiQYs+GP1Y5r19evqUdYaZ7+Hpg@mail.gmail.com>
Message-ID: <CAK7LNATaj9zY1E=7-HU_v_PwiQYs+GP1Y5r19evqUdYaZ7+Hpg@mail.gmail.com>
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nifty.com; s=dec2015msa; t=1566226442;
 bh=4rGi8J2rUzntz7GIHg2SOoPHDUBssi7TUk7NlAC+Y7k=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mI5bqIlcbGX1RP0whGa+PkKZ0Ot8+XEqRlRuqLPeMYY1VNyl/CXJigA3Cg/QAUgMF
 0c+Itq63zQGC6FSQWXCVXcRxmTcZq93piWIR8PpXHXSHGLDJQzT9kyqNWkFip/jZ3m
 KIqaN+9wW/1CeD3HaHxjt0d9WZjlNUfyT++CuYrjyHAxHZOZwZiUoDvbZ7S6k8/4FT
 mVZx0E1SKvajikuAuk1+ssZo+xklcxrBwH+6SLENERVQfficsd47W5BitXs9MtBQAv
 80LoYQovprjhbYZtgq1jzVVzrQ+8sJiie+VWC8J65o6B+3VUCosYkSrplSY8IhDCtC
 bAwB+o1qERPFA==
Subject: Re: [Intel-gfx] [PATCH 1/5] kbuild: treat an object as multi-used
 when $(foo-) is set
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Michal Marek <michal.lkml@markovi.net>, Sam Ravnborg <sam@ravnborg.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBdWcgNiwgMjAxOSBhdCAzOjQwIFBNIE1hc2FoaXJvIFlhbWFkYQo8eWFtYWRhLm1h
c2FoaXJvQHNvY2lvbmV4dC5jb20+IHdyb3RlOgo+Cj4gQ3VycmVudGx5LCBLYnVpbGQgdHJlYXRz
IGFuIG9iamVjdCBhcyBtdWx0aS11c2VkIHdoZW4gYW55IG9mCj4gJChmb28tb2JqcyksICQoZm9v
LXkpLCAkKGZvby1tKSBpcyBzZXQuIEl0IG1ha2VzIG1vcmUgc2Vuc2UgdG8KPiBjaGVjayAkKGZv
by0pIGFzIHdlbGwuCj4KPiBJbiB0aGUgY29udGV4dCBvZiBmb28tJChDT05GSUdfRk9PX0ZFQVRV
UkUxKSwgQ09ORklHX0ZPT19GRUFUVVJFMQo+IGNvdWxkIGJlIHVuc2V0Lgo+Cj4gU2lnbmVkLW9m
Zi1ieTogTWFzYWhpcm8gWWFtYWRhIDx5YW1hZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4KCk9u
bHkgdGhpcyBwYXRjaCBhcHBsaWVkIGZvciBub3cuCgoKPiAtLS0KPgo+ICBzY3JpcHRzL01ha2Vm
aWxlLmxpYiB8IDEwICsrKysrLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygr
KSwgNSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9zY3JpcHRzL01ha2VmaWxlLmxpYiBi
L3NjcmlwdHMvTWFrZWZpbGUubGliCj4gaW5kZXggNDFjNTBmOTQ2MWU1Li4wYTU0MDU5OTgyM2Ug
MTAwNjQ0Cj4gLS0tIGEvc2NyaXB0cy9NYWtlZmlsZS5saWIKPiArKysgYi9zY3JpcHRzL01ha2Vm
aWxlLmxpYgo+IEBAIC00MSw5ICs0MSw5IEBAIG9iai1tICAgICAgICAgOj0gJChmaWx0ZXItb3V0
ICUvLCAkKG9iai1tKSkKPiAgIyBTdWJkaXJlY3RvcmllcyB3ZSBuZWVkIHRvIGRlc2NlbmQgaW50
bwo+ICBzdWJkaXIteW0gICAgICA6PSAkKHNvcnQgJChzdWJkaXIteSkgJChzdWJkaXItbSkpCj4K
PiAtIyBpZiAkKGZvby1vYmpzKSwgJChmb28teSksIG9yICQoZm9vLW0pIGV4aXN0cywgZm9vLm8g
aXMgYSBjb21wb3NpdGUgb2JqZWN0Cj4gLW11bHRpLXVzZWQteSA6PSAkKHNvcnQgJChmb3JlYWNo
IG0sJChvYmoteSksICQoaWYgJChzdHJpcCAkKCQobToubz0tb2JqcykpICQoJChtOi5vPS15KSkp
LCAkKG0pKSkpCj4gLW11bHRpLXVzZWQtbSA6PSAkKHNvcnQgJChmb3JlYWNoIG0sJChvYmotbSks
ICQoaWYgJChzdHJpcCAkKCQobToubz0tb2JqcykpICQoJChtOi5vPS15KSkgJCgkKG06Lm89LW0p
KSksICQobSkpKSkKPiArIyBJZiAkKGZvby1vYmpzKSwgJChmb28teSksICQoZm9vLW0pLCBvciAk
KGZvby0pIGV4aXN0cywgZm9vLm8gaXMgYSBjb21wb3NpdGUgb2JqZWN0Cj4gK211bHRpLXVzZWQt
eSA6PSAkKHNvcnQgJChmb3JlYWNoIG0sJChvYmoteSksICQoaWYgJChzdHJpcCAkKCQobToubz0t
b2JqcykpICQoJChtOi5vPS15KSkgJCgkKG06Lm89LSkpKSwgJChtKSkpKQo+ICttdWx0aS11c2Vk
LW0gOj0gJChzb3J0ICQoZm9yZWFjaCBtLCQob2JqLW0pLCAkKGlmICQoc3RyaXAgJCgkKG06Lm89
LW9ianMpKSAkKCQobToubz0teSkpICQoJChtOi5vPS1tKSkgJCgkKG06Lm89LSkpKSwgJChtKSkp
KQo+ICBtdWx0aS11c2VkICAgOj0gJChtdWx0aS11c2VkLXkpICQobXVsdGktdXNlZC1tKQo+Cj4g
ICMgJChzdWJkaXItb2JqLXkpIGlzIHRoZSBsaXN0IG9mIG9iamVjdHMgaW4gJChvYmoteSkgd2hp
Y2ggdXNlcyBkaXIvIHRvCj4gQEAgLTUyLDggKzUyLDggQEAgc3ViZGlyLW9iai15IDo9ICQoZmls
dGVyICUvYnVpbHQtaW4uYSwgJChvYmoteSkpCj4KPiAgIyBSZXBsYWNlIG11bHRpLXBhcnQgb2Jq
ZWN0cyBieSB0aGVpciBpbmRpdmlkdWFsIHBhcnRzLAo+ICAjIGluY2x1ZGluZyBidWlsdC1pbi5h
IGZyb20gc3ViZGlyZWN0b3JpZXMKPiAtcmVhbC1vYmoteSA6PSAkKGZvcmVhY2ggbSwgJChvYmot
eSksICQoaWYgJChzdHJpcCAkKCQobToubz0tb2JqcykpICQoJChtOi5vPS15KSkpLCQoJChtOi5v
PS1vYmpzKSkgJCgkKG06Lm89LXkpKSwkKG0pKSkKPiAtcmVhbC1vYmotbSA6PSAkKGZvcmVhY2gg
bSwgJChvYmotbSksICQoaWYgJChzdHJpcCAkKCQobToubz0tb2JqcykpICQoJChtOi5vPS15KSkg
JCgkKG06Lm89LW0pKSksJCgkKG06Lm89LW9ianMpKSAkKCQobToubz0teSkpICQoJChtOi5vPS1t
KSksJChtKSkpCj4gK3JlYWwtb2JqLXkgOj0gJChmb3JlYWNoIG0sICQob2JqLXkpLCAkKGlmICQo
c3RyaXAgJCgkKG06Lm89LW9ianMpKSAkKCQobToubz0teSkpICQoJChtOi5vPS0pKSksJCgkKG06
Lm89LW9ianMpKSAkKCQobToubz0teSkpLCQobSkpKQo+ICtyZWFsLW9iai1tIDo9ICQoZm9yZWFj
aCBtLCAkKG9iai1tKSwgJChpZiAkKHN0cmlwICQoJChtOi5vPS1vYmpzKSkgJCgkKG06Lm89LXkp
KSAkKCQobToubz0tbSkpICQoJChtOi5vPS0pKSksJCgkKG06Lm89LW9ianMpKSAkKCQobToubz0t
eSkpICQoJChtOi5vPS1tKSksJChtKSkpCj4KPiAgIyBEVEIKPiAgIyBJZiBDT05GSUdfT0ZfQUxM
X0RUQlMgaXMgZW5hYmxlZCwgYWxsIERUIGJsb2JzIGFyZSBidWlsdAo+IC0tCj4gMi4xNy4xCj4K
CgotLSAKQmVzdCBSZWdhcmRzCk1hc2FoaXJvIFlhbWFkYQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
