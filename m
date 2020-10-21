Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6768A294BDC
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 13:40:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6DA189F5B;
	Wed, 21 Oct 2020 11:40:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 128076E9B9
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 10:33:07 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1603276385;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RIz6Fh1/9dRHRoJ4gps/Px3tXLhgXeXwx/bPJoKNxXw=;
 b=uYe7eMD26aZhibgoxe8vu3VSsAzWec/Nyqeuf3ySjVcg6YN7beo2GOqFZcnMcmbErzIvPl
 Xa+KkN2uVkKtADPzoXvd1z1rslwHgb5mW+yH6wNtF9/OWEyNTowuyWZMd44/2l+cC6dD/h
 OkNrk/NAUDoY5Sr90HRYZpDQjh+LEow=
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id C24A7ACA1;
 Wed, 21 Oct 2020 10:33:05 +0000 (UTC)
To: =?UTF-8?Q?Roger_Pau_Monn=c3=a9?= <roger.pau@citrix.com>
References: <CAKf6xpv-LRCuo-qHHWMuukYtvJiR-i+-YhLUOZeqoAFd-=swEQ@mail.gmail.com>
 <1a3b90f4-564e-84d3-fd6a-3454e8753579@citrix.com>
 <20201015113109.GA68032@Air-de-Roger>
 <CAKf6xpsJYT7VCeaf6TxPNK1QD+3U9E8ST7E+mWtfDjw0k9L9dA@mail.gmail.com>
 <CAKf6xps1q9zMBeFg7C7ZhD-JcwQ6EG6+bYvvA9QT8PzzxKqMNg@mail.gmail.com>
 <20201021095809.o53b6hpvjl2lbqsi@Air-de-Roger>
From: Jan Beulich <jbeulich@suse.com>
Message-ID: <a855e542-4e12-14e2-b663-75e2efceb937@suse.com>
Date: Wed, 21 Oct 2020 12:33:05 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <20201021095809.o53b6hpvjl2lbqsi@Air-de-Roger>
Content-Language: en-US
X-Mailman-Approved-At: Wed, 21 Oct 2020 11:40:47 +0000
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
 xen-devel <xen-devel@lists.xenproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjEuMTAuMjAyMCAxMTo1OCwgUm9nZXIgUGF1IE1vbm7DqSB3cm90ZToKPiBPbiBGcmksIE9j
dCAxNiwgMjAyMCBhdCAxMjoyMzoyMlBNIC0wNDAwLCBKYXNvbiBBbmRyeXVrIHdyb3RlOgo+PiBU
aGUgUk1SUnMgYXJlOgo+PiAoWEVOKSBbVlQtRF1Ib3N0IGFkZHJlc3Mgd2lkdGggMzkKPj4gKFhF
TikgW1ZULURdZm91bmQgQUNQSV9ETUFSX0RSSEQ6Cj4+IChYRU4pIFtWVC1EXSAgZG1hcnUtPmFk
ZHJlc3MgPSBmZWQ5MDAwMAo+PiAoWEVOKSBbVlQtRF1kcmhkLT5hZGRyZXNzID0gZmVkOTAwMDAg
aW9tbXUtPnJlZyA9IGZmZmY4MmMwMDAyMWQwMDAKPj4gKFhFTikgW1ZULURdY2FwID0gMWMwMDAw
YzQwNjYwNDYyIGVjYXAgPSAxOWUyZmYwNTA1ZQo+PiAoWEVOKSBbVlQtRF0gZW5kcG9pbnQ6IDAw
MDA6MDA6MDIuMAo+PiAoWEVOKSBbVlQtRF1mb3VuZCBBQ1BJX0RNQVJfRFJIRDoKPj4gKFhFTikg
W1ZULURdICBkbWFydS0+YWRkcmVzcyA9IGZlZDkxMDAwCj4+IChYRU4pIFtWVC1EXWRyaGQtPmFk
ZHJlc3MgPSBmZWQ5MTAwMCBpb21tdS0+cmVnID0gZmZmZjgyYzAwMDIxZjAwMAo+PiAoWEVOKSBb
VlQtRF1jYXAgPSBkMjAwOGM0MDY2MDQ2MiBlY2FwID0gZjA1MGRhCj4+IChYRU4pIFtWVC1EXSBJ
T0FQSUM6IDAwMDA6MDA6MWUuNwo+PiAoWEVOKSBbVlQtRF0gTVNJIEhQRVQ6IDAwMDA6MDA6MWUu
Ngo+PiAoWEVOKSBbVlQtRF0gIGZsYWdzOiBJTkNMVURFX0FMTAo+PiAoWEVOKSBbVlQtRF1mb3Vu
ZCBBQ1BJX0RNQVJfUk1SUjoKPj4gKFhFTikgW1ZULURdIGVuZHBvaW50OiAwMDAwOjAwOjE0LjAK
Pj4gKFhFTikgW1ZULURdZG1hci5jOjYxNTogICBSTVJSIHJlZ2lvbjogYmFzZV9hZGRyIDc4ODYz
MDAwIGVuZF9hZGRyIDc4ODgyZmZmCj4+IChYRU4pIFtWVC1EXWZvdW5kIEFDUElfRE1BUl9STVJS
Ogo+PiAoWEVOKSBbVlQtRF0gZW5kcG9pbnQ6IDAwMDA6MDA6MDIuMAo+PiAoWEVOKSBbVlQtRF1k
bWFyLmM6NjE1OiAgIFJNUlIgcmVnaW9uOiBiYXNlX2FkZHIgN2QwMDAwMDAgZW5kX2FkZHIgN2Y3
ZmZmZmYKPj4gKFhFTikgW1ZULURdZm91bmQgQUNQSV9ETUFSX1JNUlI6Cj4+IChYRU4pIFtWVC1E
XSBlbmRwb2ludDogMDAwMDowMDoxNi43Cj4+IChYRU4pIFtWVC1EXWRtYXIuYzo1ODE6ICBOb24t
ZXhpc3RlbnQgZGV2aWNlICgwMDAwOjAwOjE2LjcpIGlzCj4+IHJlcG9ydGVkIGluIFJNUlIgKDc4
OTA3MDAwLCA3ODk4NmZmZikncyBzY29wZSEKPj4gKFhFTikgW1ZULURdZG1hci5jOjU5NjogICBJ
Z25vcmUgdGhlIFJNUlIgKDc4OTA3MDAwLCA3ODk4NmZmZikgZHVlIHRvCj4gCj4gVGhpcyBpcyBh
bHNvIHBhcnQgb2YgYSByZXNlcnZlZCByZWdpb24sIHNvIHNob3VsZCBiZSBhZGRlZCB0byB0aGUK
PiBpb21tdSBwYWdlIHRhYmxlcyBhbnl3YXkgcmVnYXJkbGVzcyBvZiB0aGlzIG1lc3NhZ2UuCgpD
b3VsZCB5b3UgY2xhcmlmeSB3aHkgeW91IHRoaW5rIHNvPyBSTVJScyBhcmUgdGllZCB0byBkZXZp
Y2VzLCBzbwppZiBhIGRldmljZSBpbiByZWFsaXR5IGRvZXNuJ3QgZXhpc3QgKGFuZCBubyBvdGhl
ciBvbmUgdXNlcyB0aGUKc2FtZSByYW5nZSksIEkgZG9uJ3Qgc2VlIHdoeSBhbiBJT01NVSBtYXBw
aW5nIHdvdWxkIGJlIG5lZWRlZAoodW5sZXNzIHRvIHdvcmsgYXJvdW5kIHNvbWUgcmVsYXRlZCBm
aXJtd2FyZSBidWcpLiBQbHVzIGFpdWkgbm9uZQpvZiB0aGUgSU9NTVUgZmF1bHRzIGFjdHVhbGx5
IHJlcG9ydCB0aGlzIHJhbmdlIGFzIGhhdmluZyBnb3QKYWNjZXNzZWQuCgpKYW4KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
