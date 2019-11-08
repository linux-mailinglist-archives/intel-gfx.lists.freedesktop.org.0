Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 868C8F4B51
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 13:19:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C886E0CB;
	Fri,  8 Nov 2019 12:19:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E858E6E0CB
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 12:19:02 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AF5AA206DF
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 12:19:02 +0000 (UTC)
Received: by mail-qt1-f170.google.com with SMTP id o11so6207379qtr.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 08 Nov 2019 04:19:02 -0800 (PST)
X-Gm-Message-State: APjAAAXo/PPL8R7Ee/xdh5OrmMAzMe7JSOzu1hl9WxtWTe24KvSIGgtN
 wkovi/uXIaYTGMQTXq//Pf2Iycpnz5dcvJaU7yw=
X-Google-Smtp-Source: APXvYqzZj3FK7cY644DyEUP4XPMh+HGpyTkj4tQ0B9aAa9st8aw97RXyYh1XqoGQ8hJH0yEDYDEqcqYWBMWHsyyCvLc=
X-Received: by 2002:ac8:43cc:: with SMTP id w12mr10125166qtn.231.1573215541889; 
 Fri, 08 Nov 2019 04:19:01 -0800 (PST)
MIME-Version: 1.0
References: <20191106221521.20528-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20191106221521.20528-1-daniele.ceraolospurio@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Fri, 8 Nov 2019 07:18:50 -0500
X-Gmail-Original-Message-ID: <CA+5PVA5fh7feN99JPOHEsaMFOgmicu+ur9dSPcfJCA+wH0daXw@mail.gmail.com>
Message-ID: <CA+5PVA5fh7feN99JPOHEsaMFOgmicu+ur9dSPcfJCA+wH0daXw@mail.gmail.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1573215542;
 bh=Cmb7faA8lKvsiW05PSicPKLUUhc4tlvnaNZ70kiLAxM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JyFEDlq/aMhymdKJWighHxa0kax6Br/WH9pVZC6bhHQ+d5u7tnzT2Y06th/Tuyo/i
 rGXX/3jaFe4QXxIJhuCvLHa+doo5eRSkI3+qP8yEZprxKMqOxYEgSQmdMqp9yW57HE
 T05mqys+vzfzSmLMFHRS2wrlP0abN++QGukB0gJc=
Subject: Re: [Intel-gfx] PR - i915 firmware updates (GuC and HuC for EHL and
 TGL)
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kyle McMartin <kyle@kernel.org>, Ben Hutchings <ben@decadent.org.uk>,
 Linux Firmware <linux-firmware@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBOb3YgNiwgMjAxOSBhdCA1OjE1IFBNIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8KPGRh
bmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiBLaW5kbHkg
YWRkIHRoZSBiZWxvdyBpOTE1IGNoYW5nZXMgdG8gbGludXgtZmlybXdhcmUuZ2l0Cj4KPiBUaGUg
Zm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDExYmRjNTc4ZWM4NjFjNzc5N2VjNjE0ZDYw
NzM3YTA0NDhiNjgxOTU6Cj4KPiAgIHJ0dzg4OiBSVEw4NzIzRDogYWRkIGZpcm13YXJlIGZpbGUg
djQ4ICgyMDE5LTExLTA0IDA2OjM3OjE2IC0wNTAwKQo+Cj4gYXJlIGF2YWlsYWJsZSBpbiB0aGUg
R2l0IHJlcG9zaXRvcnkgYXQ6Cj4KPiAgIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9kcm0tZmlybXdhcmUgZWhsX3RnbF9ndWNfaHVjCj4KPiBmb3IgeW91IHRvIGZldGNoIGNoYW5n
ZXMgdXAgdG8gNGRlYmYyMTczODA0Mzk2NTQwZDE4OTBmYTIzNDdhZjc2ODljNDQyMDoKPgo+ICAg
aTkxNTogQWRkIEh1QyBmaXJtd2FyZSB2Ny4wLjMgZm9yIFRHTCAoMjAxOS0xMS0wNiAxMTo0Mjo0
MiAtMDgwMCkKPgo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0KPiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICg0KToKPiAgICAg
ICBpOTE1OiBBZGQgR3VDIGZpcm13YXJlIHYzMy4wLjQgZm9yIEVITAo+ICAgICAgIGk5MTU6IEFk
ZCBIdUMgZmlybXdhcmUgdjkuMC4wIGZvciBFSEwKPiAgICAgICBpOTE1OiBBZGQgR3VDIGZpcm13
YXJlIHYzNS4yLjAgZm9yIFRHTAo+ICAgICAgIGk5MTU6IEFkZCBIdUMgZmlybXdhcmUgdjcuMC4z
IGZvciBUR0wKPgo+ICBXSEVOQ0UgICAgICAgICAgICAgICAgICB8ICAxMiArKysrKysrKysrKysK
PiAgaTkxNS9laGxfZ3VjXzMzLjAuNC5iaW4gfCBCaW4gMCAtPiAzOTYyODggYnl0ZXMKPiAgaTkx
NS9laGxfaHVjXzkuMC4wLmJpbiAgfCBCaW4gMCAtPiA0OTg4ODAgYnl0ZXMKPiAgaTkxNS90Z2xf
Z3VjXzM1LjIuMC5iaW4gfCBCaW4gMCAtPiA0MTc3MjggYnl0ZXMKPiAgaTkxNS90Z2xfaHVjXzcu
MC4zLmJpbiAgfCBCaW4gMCAtPiA1MjE0MDggYnl0ZXMKPiAgNSBmaWxlcyBjaGFuZ2VkLCAxMiBp
bnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpOTE1L2VobF9ndWNfMzMuMC40LmJp
bgo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaTkxNS9laGxfaHVjXzkuMC4wLmJpbgo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgaTkxNS90Z2xfZ3VjXzM1LjIuMC5iaW4KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGk5MTUvdGdsX2h1Y183LjAuMy5iaW4KClB1bGxlZCBhbmQgcHVzaGVkIG91dC4gIFRoYW5rcyEK
Cmpvc2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
