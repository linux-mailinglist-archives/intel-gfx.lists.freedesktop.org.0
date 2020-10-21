Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34599294DAF
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 15:36:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CA5F6EB2A;
	Wed, 21 Oct 2020 13:36:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 169736EB8B
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 13:36:44 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id c141so3158278lfg.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 06:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=lrH3D/+6YhDxpCFWKiukOFeDa/kuA2Z9B0hdudtFyXU=;
 b=CfWtwJB9GIYMeENoIM+rvSb94AJ/unbe3PgvR1hVri27vuz5zqfvjBCKlPzqUK6vK5
 Rfk9JTBIfTvNZaEDrDSdKBOJ0I3PIkO2FHm75nbXfem6jJe5PrEvs6ViMk2zVhxgO7Qs
 6JElLj1A6/m8z1p3nNM/0Q/MX9FbLR6avS1FXkr5UIZk94RM8AXEoWKT3gA5QkQQrAsJ
 rzajGxhdtWLxG0Az6YaO9G50j1+QpSt0FwtVyXOff1Q2OOcBC/pmO5FC1fFK3A3Fyl6/
 eXbthKKY/9YghsZApbck0oVGiGt3BdJgIm4XNusp5pUWMSuCAquhzko5Yh5phlO40G6f
 DiOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=lrH3D/+6YhDxpCFWKiukOFeDa/kuA2Z9B0hdudtFyXU=;
 b=eJKsswVQlmHgZyD2toLnSmuHUZLA5W0J6O/970bStx9D4DKryQtlU2pENEfnC4UvZi
 NUNpc0z8pDuQ+c63jRX2kQZVLqpIdSgvLIrrZ9Y7YFrqCy9h4bBepQpn0AtP8Gp9dG5I
 UWU1TKhqLHcepXlm5gTrR1Nk6i+MC8GhT6eHj+POoEkFL922CYVkQ5llYcYPH2g2zAy6
 2ir8Qf6wP3+uz+az59unh5dnFruyv8N8IQnsZHKTYP3r6Z5zMMD9I6oexapOmsRmlQm0
 HGO8qf/JX9vf+B147rrZF8o0nQyAcWI8loga4yg0IjaGdmgWXcLtKn6RKToLBKcSrGXk
 AYIg==
X-Gm-Message-State: AOAM532e1TYWQMqB8XaGKiNJRVf/1v7PgOCYT0eeHoh7ozwTCSuUg8Ww
 Mh2jc0XrAWhcng2p3w1qa3B6rTr0W09asqmxsdU=
X-Google-Smtp-Source: ABdhPJwaw0B2BxohZx2W/5ekhIK+Zik2kh8+yEatERPJMG5UG0JGyrU6+fQrIXg1TmtzU3mrOH1+BLaZsvep/tAuT6k=
X-Received: by 2002:ac2:42ce:: with SMTP id n14mr1243449lfl.412.1603287402490; 
 Wed, 21 Oct 2020 06:36:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAKf6xpv-LRCuo-qHHWMuukYtvJiR-i+-YhLUOZeqoAFd-=swEQ@mail.gmail.com>
 <1a3b90f4-564e-84d3-fd6a-3454e8753579@citrix.com>
 <20201015113109.GA68032@Air-de-Roger>
 <CAKf6xpsJYT7VCeaf6TxPNK1QD+3U9E8ST7E+mWtfDjw0k9L9dA@mail.gmail.com>
 <CAKf6xps1q9zMBeFg7C7ZhD-JcwQ6EG6+bYvvA9QT8PzzxKqMNg@mail.gmail.com>
 <20201021095809.o53b6hpvjl2lbqsi@Air-de-Roger>
 <CAKf6xpuTE4gBNe4YXPYh_hAMLaJduDuKL5_6aC4H=y6DRxaxvw@mail.gmail.com>
 <a4dd7778-9bd4-00c1-3056-96d435b70d70@suse.com>
In-Reply-To: <a4dd7778-9bd4-00c1-3056-96d435b70d70@suse.com>
From: Jason Andryuk <jandryuk@gmail.com>
Date: Wed, 21 Oct 2020 09:36:30 -0400
Message-ID: <CAKf6xpvKiWiU5Wsv2C1EiEFr77nMZTd+VHgkdk7qcKw1OFD8Vg@mail.gmail.com>
To: Jan Beulich <jbeulich@suse.com>
Subject: Re: [Intel-gfx] i915 dma faults on Xen
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
Cc: Andrew Cooper <andrew.cooper3@citrix.com>, intel-gfx@lists.freedesktop.org,
 xen-devel <xen-devel@lists.xenproject.org>,
 =?UTF-8?Q?Roger_Pau_Monn=C3=A9?= <roger.pau@citrix.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMjEsIDIwMjAgYXQgODo1MyBBTSBKYW4gQmV1bGljaCA8amJldWxpY2hAc3Vz
ZS5jb20+IHdyb3RlOgo+Cj4gT24gMjEuMTAuMjAyMCAxNDo0NSwgSmFzb24gQW5kcnl1ayB3cm90
ZToKPiA+IE9uIFdlZCwgT2N0IDIxLCAyMDIwIGF0IDU6NTggQU0gUm9nZXIgUGF1IE1vbm7DqSA8
cm9nZXIucGF1QGNpdHJpeC5jb20+IHdyb3RlOgo+ID4+IEhtLCBpdCdzIGhhcmQgdG8gdGVsbCB3
aGF0J3MgZ29pbmcgb24uIE15IGxpbWl0ZWQgZXhwZXJpZW5jZSB3aXRoCj4gPj4gSU9NTVUgZmF1
bHRzIG9uIGJyb2tlbiBzeXN0ZW1zIHRoZXJlJ3MgYSBzbWFsbCByYW5nZSB0aGF0IGluaXRpYWxs
eQo+ID4+IHRyaWdnZXJzIHRob3NlLCBhbmQgdGhlbiB0aGUgZGV2aWNlIGdvZXMgd29ua3kgYW5k
IHN0YXJ0cyBhY2Nlc3NpbmcgYQo+ID4+IHdob2xlIGxvYWQgb2YgaW52YWxpZCBhZGRyZXNzZXMu
Cj4gPj4KPiA+PiBZb3UgY291bGQgdHJ5IGFkZGluZyB0aG9zZSBtYW51YWxseSB1c2luZyB0aGUg
cm1yciBYZW4gY29tbWFuZCBsaW5lCj4gPj4gb3B0aW9uIFswXSwgbWF5YmUgeW91IGNhbiBmaWd1
cmUgb3V0IHdoaWNoIHJhbmdlKHMpIGFyZSBtaXNzaW5nPwo+ID4KPiA+IFRoZXkgc2VlbSB0byBj
aGFuZ2UsIHNvIGl0J3MgaGFyZCB0byBrbm93LiAgV291bGQgdGhlcmUgYmUgaGFybSBpbgo+ID4g
YWRkaW5nIG9uZSB0byBjb3ZlciB0aGUgZW5kIG9mIFJBTSAoIDB4MDQsN2M4MCwwMDAwICkgdG8g
KAo+ID4gMHhmZixmZmZmLGZmZmYgKT8gIE1heWJlIHRoYXQgd291bGQganVzdCBxdWlldCB0aGUg
cG9pbnRsZXNzIGZhdWx0cwo+ID4gd2hpbGUgbGVhdmluZyB0aGUgSU9NTVUgZW5hYmxlZD8KPgo+
IFdoaWxlIHRoZXkgbWF5IHF1aWV0ZW4gdGhlIGZhdWx0cywgSSBkb24ndCB0aGluayB0aG9zZSBm
YXVsdHMgYXJlCj4gcG9pbnRsZXNzLiBUaGV5IGluZGljYXRlIHNvbWUgcHJvYmxlbSB3aXRoIHRo
ZSBzb2Z0d2FyZSAobGVzcwo+IGxpa2VseSB0aGUgaGFyZHdhcmUsIHBvc3NpYmx5IHRoZSBmaXJt
d2FyZSkgdGhhdCB5b3UncmUgdXNpbmcuCj4gQWxzbyB0aGVyZSdzIHRoZSBxdWVzdGlvbiBvZiB3
aGF0IHRoZSBvdmVyYWxsIGJlaGF2aW9yIGlzIGdvaW5nCj4gdG8gYmUgd2hlbiBkZXZpY2VzIGFy
ZSBwZXJtaXR0ZWQgdG8gYWNjZXNzIHVucG9wdWxhdGVkIGFkZHJlc3MKPiByYW5nZXMuIEkgYXNz
dW1lIHlvdSBkaWQgY2hlY2sgYWxyZWFkeSB0aGF0IG5vIGRldmljZXMgaGF2ZSB0aGVpcgo+IEJB
UnMgcGxhY2VkIGluIHRoYXQgcmFuZ2U/CgpJc24ndCBuby1pZ2Z4IGFscmVhZHkgbGV0dGluZyB0
aGVtIHRyeSB0byByZWFkIHRob3NlIHVucG9wdWxhdGVkIGFkZHJlc3Nlcz8KCkxvb2tzIGxpa2Ug
YWxsIFBDSSBCQVJzIGFyZSBiZWxvdyA0R0IuICBUaGUgZ3JhcGhpY3Mgb25lcyBhcmU6CjAwOjAy
LjAgVkdBIGNvbXBhdGlibGUgY29udHJvbGxlcjogSW50ZWwgQ29ycG9yYXRpb24gRGV2aWNlIDNl
YTAgKHJldgowMikgKHByb2ctaWYgMDAgW1ZHQSBjb250cm9sbGVyXSkKICAgIFN1YnN5c3RlbTog
RGVsbCBEZXZpY2UgMDhiOQogICAgRmxhZ3M6IGJ1cyBtYXN0ZXIsIGZhc3QgZGV2c2VsLCBsYXRl
bmN5IDAsIElSUSAxNzcKICAgIE1lbW9yeSBhdCBjYjAwMDAwMCAoNjQtYml0LCBub24tcHJlZmV0
Y2hhYmxlKSBbc2l6ZT0xNk1dCiAgICBNZW1vcnkgYXQgODAwMDAwMDAgKDY0LWJpdCwgcHJlZmV0
Y2hhYmxlKSBbc2l6ZT0yNTZNXQoKWWVzLCBJIGFncmVlIHRoZSBmYXVsdHMgYXJlbid0IHBvaW50
bGVzcy4gIEknbSB3b25kZXJpbmcgaWYgaXQncwpzb21ldGhpbmcgd2l0aCB0aGUgaTkxNSBkcml2
ZXIgb3IgaGFyZHdhcmUgaGF2aW5nIGFzc3VtcHRpb25zIHRoYXQKYXJlbid0IG1ldCBieSBYZW4g
c3dpb3RsYi4KClJlZ2FyZHMsCkphc29uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
