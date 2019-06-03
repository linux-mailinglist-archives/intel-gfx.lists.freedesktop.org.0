Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A99E43365C
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 19:17:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 022FE8926A;
	Mon,  3 Jun 2019 17:17:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com
 [210.131.2.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5E4A8926A
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2019 17:17:05 +0000 (UTC)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
 [209.85.217.44]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x53HGqsc028805
 for <intel-gfx@lists.freedesktop.org>; Tue, 4 Jun 2019 02:16:53 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x53HGqsc028805
X-Nifty-SrcIP: [209.85.217.44]
Received: by mail-vs1-f44.google.com with SMTP id z11so11713146vsq.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Jun 2019 10:16:53 -0700 (PDT)
X-Gm-Message-State: APjAAAXoOU56hcu2ET6uEyPmtusdxyt5Pq8mX3zrcTpRa7rkz0Sk5ZA/
 voGtONmBXk0MZ6iNJFnI2SMRyVhuQF6WDWPliTI=
X-Google-Smtp-Source: APXvYqx+2aihAKpGUBJam+w6nqhJC5i9XtjkNSKhzYLP9vE1JNxYbwQurHMIybogfxhj6RAF+lKZQxEXjYTEsmk7NzE=
X-Received: by 2002:a67:de99:: with SMTP id r25mr13343402vsk.215.1559582212209; 
 Mon, 03 Jun 2019 10:16:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190516194818.29230-1-jani.nikula@intel.com>
 <CAK7LNAQv-fm2iV6HW_FM0Fe6hNDeJ25c9CS2SbroSOneoepFMQ@mail.gmail.com>
 <87zhnh8ou6.fsf@intel.com>
In-Reply-To: <87zhnh8ou6.fsf@intel.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 4 Jun 2019 02:16:16 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT=nB0=at0X4OnHVKB=y7WwHGm4LXkrQnCw9HpjB5LooA@mail.gmail.com>
Message-ID: <CAK7LNAT=nB0=at0X4OnHVKB=y7WwHGm4LXkrQnCw9HpjB5LooA@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nifty.com; s=dec2015msa; t=1559582213;
 bh=p2MCoDaSkOYHsUqev5UiEB/8d3quV+bRpPgivCGnysQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=zZwpUjSV2+g865NLZvT3kmnhA3WdvY29vNCbQF/YKGy0xqOlzsP5fhB3d0WBPZtNR
 FluTczWN+cu6Wk//8jWXwF3Z0CZNHftIZxnPac0/w/SECsnaacwLXgYiqAR3JNiLNw
 k79qyEKQ1BzzH4VWlLE/ep6XD16TkHY39/u1K+QQp3tjJ5uQldsaKhsbUqLw6UunK7
 qmrFrNQYNaEM3EprqAlUIQ1tU7aWGeZ88fEf7wFptRf66sYPxyQgWbHKYPDu3b6tw+
 j/tgeqIlbHP72nRVH8E7S7ZNrXVy4dGuRyr7yf/Sfcr8EY/04AKPEtpTT79Qw8U7pN
 asnAHgdeFFFSg==
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
Cc: intel-gfx@lists.freedesktop.org, Michal Marek <michal.lkml@markovi.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSmFuaSwKCk9uIE1vbiwgTWF5IDIwLCAyMDE5IGF0IDY6MTYgUE0gSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4gd3JvdGU6Cj4KPiA+Cj4gPiBJIHdpbGwgdGFrZSBhIGxpdHRs
ZSB0aW1lIHRvIGNvbnNpZGllcgo+ID4gaG93IGZhciB3ZSBjYW4gZXh0ZW5kIHRoZSBpZGVhIGFi
b3V0Cj4gPiAiaGVhZGVycyBzaG91bGQgYmUgc2VsZi1jb250YWluZWQiLgo+Cj4gVGhhbmtzISBQ
bGVhc2UgbGV0IG1lIGtub3cgaWYvd2hlbiB5b3UgbmVlZCBmdXJ0aGVyIGFjdGlvbiBmcm9tIG1l
LCBJCj4gd29uJ3QgcG9zdCBuZXcgdmVyc2lvbnMgdW50aWwgdGhlbi4KCgpDb3VsZCB5b3Ugc2Vu
ZCB2MiB3aXRoIHRoZSBmb2xsb3dpbmcgY2hhbmdlcyA/CgoKWzFdIENvdWxkIHlvdSByZW5hbWUg
Ki5oZWFkZXJfdGVzdC5jIHRvICouaGRydGVzdC5jID8KICAgIChJIGp1c3QgdGhvdWdodCAuaGVh
ZGVyX3Rlc3QuYyB3YXMgYSBiaXQgdG9vIGxvbmcuKQoKWzJdICUuaGRydGVzdC5jIHNob3VsZCBu
b3QgZGVwZW5kIG9uIHRoZSBoZWFkZXIKClRoaXMgd2lsbCBhdm9pZCB1bm5lY2Vzc2FyeSByZWdl
bmVyYXRpb24gb2YgKi5oZHJ0ZXN0LmMKCnF1aWV0X2NtZF9oZWFkZXJfdGVzdCA9IEhEUlRFU1Qg
JEAKICAgICAgY21kX2hlYWRlcl90ZXN0ID0gZWNobyAiXCNpbmNsdWRlIFwiJCouaFwiIiA+ICRA
CgokKG9iaikvJS5oZHJ0ZXN0LmM6CiAgICAgICAgJChjYWxsIGNtZCxoZWFkZXJfdGVzdCkKClsz
XSBQbGVhc2UgYWRkICcqLmhkcnRlc3QuYycgdG8gIC5naXRpZ25vcmUsIERvY3VtZW50YXRpb24v
ZG9udGRpZmYKCls0XSBQbGVhc2UgYWRkICcqLmhkcnRlc3QuYycgdG8gJ21ha2UgY2xlYW4nIChh
cm91bmQgbGluZSAxNjQwIG9mIHRvcCBNYWtlZmlsZSkKCgotLSAKQmVzdCBSZWdhcmRzCk1hc2Fo
aXJvIFlhbWFkYQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
