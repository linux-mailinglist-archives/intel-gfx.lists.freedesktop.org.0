Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40035321780
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 13:49:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03A4B6E4CF;
	Mon, 22 Feb 2021 12:49:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2CAC6E4CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 12:49:38 +0000 (UTC)
Received: by mail-lj1-x235.google.com with SMTP id r23so57595706ljh.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 04:49:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=q1DxJj8swHEeWTeo4fAZR8P2RH2Uf8viG+/8tvr60tA=;
 b=sQWPyYDh5UPyg28k4b98VvetcT/u5cqyMYfGY8M56nJqb4fl0gZwWb6k4BuAr15i4w
 +iICfEgHtFxHmiWMxRsgLNrnaaw6qACh6s3T+huC9wzVxHo+um3T6yAx6ZS6qEvKYQhb
 WrOV9iI+hPsOjjQT8VunpIZZ0DHdHY/NAhmb9NNaXfKgEEPJpoxP1nrslY9rqxnAbTqZ
 olv8uJUjARfNRjd0inEyf35SrOXXs9osa91zqleVARHz7TmzRAzMuTuYWSKLaaxCWiFI
 sEfj/bU+O5FjztLIRCgk81nipAaPqMLQiMWwxGlKtP/YBxEWq1bc3Dk771YmOY6DsW7w
 ozqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=q1DxJj8swHEeWTeo4fAZR8P2RH2Uf8viG+/8tvr60tA=;
 b=ga4ki5s81vJXNRyw+IzDKHkSHGwD+T4z+IQsWOipJLGGESGCzJYhv3CeP+K71F2rJU
 +OpoaDO+GiRvdXOIn949KX+2CbQBG3mHbeOC634phFaOFZdiajY8EhkeEvO0SpX/2NWD
 aJHGAx3cIu5ZOJIeYAa3RTEz2vzO6Ckzovwwbxtxm+WWXDqvPnveStrD54mt5S3b8TdY
 EP0l/x/Ka0iDhzFJGa871f+jgwYtBbU8V1GcyX0vuFXWR38MCCwhvNXmByqcNRq/2zfw
 y/Erwd8ODmWhIK9a7XmQtHvtkgwKOoLzN9BZMrKkcZ+GKhKWFz0syVs71dwrguRKwVKU
 UYlA==
X-Gm-Message-State: AOAM530dXXddDUruY63CmLo9IYd+2Pd2b/PqQLF/68raDmqkkwFfuVz6
 apZYpkf88hRIoeMDHDuvkkkuCqjtQFMY0A4bmIc=
X-Google-Smtp-Source: ABdhPJy9vJjFJ/Jr5h1qILzD/nDIRxWypyGDc05UhEIQd3n0S1GjaBpSMNlADzg96SFwGF6RGQ/miGcKYbNsoiSApik=
X-Received: by 2002:a2e:9ec6:: with SMTP id h6mr6095597ljk.12.1613998177145;
 Mon, 22 Feb 2021 04:49:37 -0800 (PST)
MIME-Version: 1.0
References: <1a3b90f4-564e-84d3-fd6a-3454e8753579@citrix.com>
 <20201015113109.GA68032@Air-de-Roger>
 <CAKf6xpsJYT7VCeaf6TxPNK1QD+3U9E8ST7E+mWtfDjw0k9L9dA@mail.gmail.com>
 <CAKf6xps1q9zMBeFg7C7ZhD-JcwQ6EG6+bYvvA9QT8PzzxKqMNg@mail.gmail.com>
 <20201021095809.o53b6hpvjl2lbqsi@Air-de-Roger>
 <CAKf6xpuTE4gBNe4YXPYh_hAMLaJduDuKL5_6aC4H=y6DRxaxvw@mail.gmail.com>
 <a4dd7778-9bd4-00c1-3056-96d435b70d70@suse.com>
 <CAKf6xpvKiWiU5Wsv2C1EiEFr77nMZTd+VHgkdk7qcKw1OFD8Vg@mail.gmail.com>
 <9bbf6768-a39e-2b3c-c4de-fd883cc9ef85@suse.com>
 <CAKf6xpuTbvGtTRHPK9Ock7rxJk4DfCumgTW7-2_PADm9cSaUBg@mail.gmail.com>
 <YDOE35zhQYwgaxke@Air-de-Roger>
In-Reply-To: <YDOE35zhQYwgaxke@Air-de-Roger>
From: Jason Andryuk <jandryuk@gmail.com>
Date: Mon, 22 Feb 2021 07:49:25 -0500
Message-ID: <CAKf6xpvoKmFVp2HtsTVZS8w+GntpAEKXan8fB72JEy1rrWgC1A@mail.gmail.com>
To: =?UTF-8?Q?Roger_Pau_Monn=C3=A9?= <roger.pau@citrix.com>
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
 eric chanudet <eric.chanudet@gmail.com>, Jan Beulich <jbeulich@suse.com>,
 xen-devel <xen-devel@lists.xenproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBGZWIgMjIsIDIwMjEgYXQgNToxOCBBTSBSb2dlciBQYXUgTW9ubsOpIDxyb2dlci5w
YXVAY2l0cml4LmNvbT4gd3JvdGU6Cj4KPiBPbiBGcmksIEZlYiAxOSwgMjAyMSBhdCAxMjozMDoy
M1BNIC0wNTAwLCBKYXNvbiBBbmRyeXVrIHdyb3RlOgo+ID4gT24gV2VkLCBPY3QgMjEsIDIwMjAg
YXQgOTo1OSBBTSBKYW4gQmV1bGljaCA8amJldWxpY2hAc3VzZS5jb20+IHdyb3RlOgo+ID4gPgo+
ID4gPiBPbiAyMS4xMC4yMDIwIDE1OjM2LCBKYXNvbiBBbmRyeXVrIHdyb3RlOgo+ID4gPiA+IE9u
IFdlZCwgT2N0IDIxLCAyMDIwIGF0IDg6NTMgQU0gSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2Uu
Y29tPiB3cm90ZToKPiA+ID4gPj4KPiA+ID4gPj4gT24gMjEuMTAuMjAyMCAxNDo0NSwgSmFzb24g
QW5kcnl1ayB3cm90ZToKPiA+ID4gPj4+IE9uIFdlZCwgT2N0IDIxLCAyMDIwIGF0IDU6NTggQU0g
Um9nZXIgUGF1IE1vbm7DqSA8cm9nZXIucGF1QGNpdHJpeC5jb20+IHdyb3RlOgo+ID4gPiA+Pj4+
IEhtLCBpdCdzIGhhcmQgdG8gdGVsbCB3aGF0J3MgZ29pbmcgb24uIE15IGxpbWl0ZWQgZXhwZXJp
ZW5jZSB3aXRoCj4gPiA+ID4+Pj4gSU9NTVUgZmF1bHRzIG9uIGJyb2tlbiBzeXN0ZW1zIHRoZXJl
J3MgYSBzbWFsbCByYW5nZSB0aGF0IGluaXRpYWxseQo+ID4gPiA+Pj4+IHRyaWdnZXJzIHRob3Nl
LCBhbmQgdGhlbiB0aGUgZGV2aWNlIGdvZXMgd29ua3kgYW5kIHN0YXJ0cyBhY2Nlc3NpbmcgYQo+
ID4gPiA+Pj4+IHdob2xlIGxvYWQgb2YgaW52YWxpZCBhZGRyZXNzZXMuCj4gPiA+ID4+Pj4KPiA+
ID4gPj4+PiBZb3UgY291bGQgdHJ5IGFkZGluZyB0aG9zZSBtYW51YWxseSB1c2luZyB0aGUgcm1y
ciBYZW4gY29tbWFuZCBsaW5lCj4gPiA+ID4+Pj4gb3B0aW9uIFswXSwgbWF5YmUgeW91IGNhbiBm
aWd1cmUgb3V0IHdoaWNoIHJhbmdlKHMpIGFyZSBtaXNzaW5nPwo+ID4gPiA+Pj4KPiA+ID4gPj4+
IFRoZXkgc2VlbSB0byBjaGFuZ2UsIHNvIGl0J3MgaGFyZCB0byBrbm93LiAgV291bGQgdGhlcmUg
YmUgaGFybSBpbgo+ID4gPiA+Pj4gYWRkaW5nIG9uZSB0byBjb3ZlciB0aGUgZW5kIG9mIFJBTSAo
IDB4MDQsN2M4MCwwMDAwICkgdG8gKAo+ID4gPiA+Pj4gMHhmZixmZmZmLGZmZmYgKT8gIE1heWJl
IHRoYXQgd291bGQganVzdCBxdWlldCB0aGUgcG9pbnRsZXNzIGZhdWx0cwo+ID4gPiA+Pj4gd2hp
bGUgbGVhdmluZyB0aGUgSU9NTVUgZW5hYmxlZD8KPiA+ID4gPj4KPiA+ID4gPj4gV2hpbGUgdGhl
eSBtYXkgcXVpZXRlbiB0aGUgZmF1bHRzLCBJIGRvbid0IHRoaW5rIHRob3NlIGZhdWx0cyBhcmUK
PiA+ID4gPj4gcG9pbnRsZXNzLiBUaGV5IGluZGljYXRlIHNvbWUgcHJvYmxlbSB3aXRoIHRoZSBz
b2Z0d2FyZSAobGVzcwo+ID4gPiA+PiBsaWtlbHkgdGhlIGhhcmR3YXJlLCBwb3NzaWJseSB0aGUg
ZmlybXdhcmUpIHRoYXQgeW91J3JlIHVzaW5nLgo+ID4gPiA+PiBBbHNvIHRoZXJlJ3MgdGhlIHF1
ZXN0aW9uIG9mIHdoYXQgdGhlIG92ZXJhbGwgYmVoYXZpb3IgaXMgZ29pbmcKPiA+ID4gPj4gdG8g
YmUgd2hlbiBkZXZpY2VzIGFyZSBwZXJtaXR0ZWQgdG8gYWNjZXNzIHVucG9wdWxhdGVkIGFkZHJl
c3MKPiA+ID4gPj4gcmFuZ2VzLiBJIGFzc3VtZSB5b3UgZGlkIGNoZWNrIGFscmVhZHkgdGhhdCBu
byBkZXZpY2VzIGhhdmUgdGhlaXIKPiA+ID4gPj4gQkFScyBwbGFjZWQgaW4gdGhhdCByYW5nZT8K
PiA+ID4gPgo+ID4gPiA+IElzbid0IG5vLWlnZnggYWxyZWFkeSBsZXR0aW5nIHRoZW0gdHJ5IHRv
IHJlYWQgdGhvc2UgdW5wb3B1bGF0ZWQgYWRkcmVzc2VzPwo+ID4gPgo+ID4gPiBZZXMsIGFuZCBp
dCBpcyBmb3IgdGhlIHJlYXNvbiB0aGF0IHRoZSBkb2N1bWVudGF0aW9uIGZvciB0aGUKPiA+ID4g
b3B0aW9uIHNheXMgIklmIHNwZWNpZnlpbmcgYG5vLWlnZnhgIGZpeGVzIGFueXRoaW5nLCBwbGVh
c2UKPiA+ID4gcmVwb3J0IHRoZSBwcm9ibGVtLiIgSSBpbXBseSBmcm9tIGluIGluIHBhcnRpY3Vs
YXIgdGhhdCBvbmUKPiA+ID4gYmV0dGVyIHdvdWxkbid0IHVzZSBpdCBmb3Igbm9uLWRldmVsb3Bt
ZW50IHB1cnBvc2VzIG9mIHdoYXRldmVyCj4gPiA+IGtpbmQuCj4gPgo+ID4gSSBzdG9wcGVkIHNl
ZWluZyB0aGVzZSBETUEgZmF1bHRzLCBidXQgSSBkaWRuJ3Qga25vdyB3aGF0IG1hZGUgdGhlbSBn
bwo+ID4gYXdheS4gIFRoZW4gd2hlbiB3b3JraW5nIHdpdGggYW4gb2xkZXIgNS40LjY0IGtlcm5l
bCwgSSBzYXcgdGhlbQo+ID4gYWdhaW4uICBFcmljIGJpc2VjdGVkIGRvd24gdG8gdGhlIDUuNC55
IHZlcnNpb24gb2YgbWFpbmxpbmUgbGludXgKPiA+IGNvbW1pdDoKPiA+Cj4gPiBjb21taXQgODE5
NTQwMGY3ZWE5NTM5OWY3MjFhZDIxZjRkNjYzYTYyYzY1MDM2Zgo+ID4gQXV0aG9yOiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IERhdGU6ICAgTW9uIE9jdCAxOSAx
MToxNToyMyAyMDIwICswMTAwCj4gPgo+ID4gICAgIGRybS9pOTE1OiBGb3JjZSBWVCdkIHdvcmth
cm91bmRzIHdoZW4gcnVubmluZyBhcyBhIGd1ZXN0IE9TCj4gPgo+ID4gICAgIElmIGk5MTUua28g
aXMgYmVpbmcgdXNlZCBhcyBhIHBhc3N0aHJvdWdoIGRldmljZSwgaXQgZG9lcyBub3Qga25vdyBp
Zgo+ID4gICAgIHRoZSBob3N0IGlzIHVzaW5nIGludGVsX2lvbW11LiBNaXhpbmcgdGhlIGlvbW11
IGFuZCBnZnggY2F1c2VzIGEgZmV3Cj4gPiAgICAgaXNzdWVzIChzdWNoIGFzIHNjYW5vdXQgb3Zl
cmZldGNoKSB3aGljaCB3ZSBuZWVkIHRvIHdvcmthcm91bmQgaW5zaWRlCj4gPiAgICAgdGhlIGRy
aXZlciwgc28gaWYgd2UgZGV0ZWN0IHdlIGFyZSBydW5uaW5nIHVuZGVyIGEgaHlwZXJ2aXNvciwg
YWxzbwo+ID4gICAgIGFzc3VtZSB0aGUgZGV2aWNlIGFjY2VzcyBpcyBiZWluZyB2aXJ0dWFsaXNl
ZC4KPgo+IFNvIHRoZSBjb21taXQgYWJvdmUgZml4ZXMgdGhlIERNQSBmYXVsdHMgc2VlbiBvbiBM
aW51eCB3aGVuIHVzaW5nIGEKPiBpOTE1IGdmeCBjYXJkPwoKWWVzLCBETUEgZmF1bHRzIGFyZSBu
b3Qgc2VlbiB3aXRoIHRoaXMgY29tbWl0LiAgaTkxNSBiZWhhdmVzCmRpZmZlcmVudGx5IHdoZW4g
aXQgZGV0ZWN0cyBWVC1kIGFjdGl2ZSwgYW5kIHRoaXMgY29tbWl0IHNldHMgdGhlIFZULWQKYmVo
YXZpb3Igd2hlbiBydW5uaW5nIHVuZGVyIGFueSBoeXBlcnZpc29yLgoKUmVnYXJkcywKSmFzb24K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
