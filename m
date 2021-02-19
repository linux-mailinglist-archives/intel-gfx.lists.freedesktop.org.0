Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFCF31FDDD
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Feb 2021 18:30:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA0B56EB8B;
	Fri, 19 Feb 2021 17:30:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 258C06EB87
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Feb 2021 17:30:37 +0000 (UTC)
Received: by mail-lj1-x235.google.com with SMTP id c8so23880011ljd.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Feb 2021 09:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5BN6yFN3Scp/K0nK6nNparAeMOeN/nnletLBanC+Jo0=;
 b=aur0rNQW2QglIi5GcgWvWIfCVnZ7mE7oeKteZpRAJLxe9hss6/wUCjCbuoPzY7eSkX
 KC6Gvkvl38yYzSKl/TC5pcTHQnqn9KqoAXOHhnkcJnm2J0Yli/JISjTFcLkYerHkRdVJ
 QQZ598atgMtuKZ4NuZhzAZpAj7a4AO7Vj0OSJE9TAA9Qq5HAsg/upSIu25djKP11cKt1
 KBskMLYGq7Ayb0YdxxhhUEVXaAo3HL8bpsGxcrf927Fax+jdPvNc74zV62cAJ/uxj7Wy
 4kykj4toFLA97g2gaV8rpsA2hrW8SWbgKQdbgtBiRrN7NfjDNDjmOjorEmkly7zkDUyE
 YqIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5BN6yFN3Scp/K0nK6nNparAeMOeN/nnletLBanC+Jo0=;
 b=XslxtloLemdqRq0uM0rk3wvwZjwsk04gI86lwL+qQAXtrkK4agjWONR1qFVO9LOziw
 SH3gehwkLOChsT7ywU92LzpXVqdHOHGDOfzNCoNauOxW0qEH+hKElkFPeZfCZUbD7QQv
 cLhVXxulBfOp4eEk3TML+orIdTBVsq+6Lu7R83tb1ZTQdhCpvvdc4uaE195eIzkOqMA2
 a2DL/MeNnh+8BrkZn/yIWP13f+ULAD3lHuNp0sLH+2FRi3a9QtW95ZX8z0JrKWZh7YWi
 7x2KqyuaAfy4k2ty14Q3Oke+r/a9vLgIynC3p/QSGTJy+AvAMcrGR3IQpkRWTsduEIg+
 2frg==
X-Gm-Message-State: AOAM5331QH/0vzqjS8lu0lnoWlC3lVHA5uZYauh22zc9XbmsriVMSR+R
 tE0wxWISdJQmhe5hcBLZ+cruidjZzPG7ymynnhk=
X-Google-Smtp-Source: ABdhPJztR6MYwIGS8IqcewEUT0iHoAzfku2FAHPHSy9mUnKPTTZ8wczqXeiaTyxl+eriOdxytrV3mPhEbWG2EyPuFbw=
X-Received: by 2002:a19:7f95:: with SMTP id a143mr5955108lfd.419.1613755835524; 
 Fri, 19 Feb 2021 09:30:35 -0800 (PST)
MIME-Version: 1.0
References: <CAKf6xpv-LRCuo-qHHWMuukYtvJiR-i+-YhLUOZeqoAFd-=swEQ@mail.gmail.com>
 <1a3b90f4-564e-84d3-fd6a-3454e8753579@citrix.com>
 <20201015113109.GA68032@Air-de-Roger>
 <CAKf6xpsJYT7VCeaf6TxPNK1QD+3U9E8ST7E+mWtfDjw0k9L9dA@mail.gmail.com>
 <CAKf6xps1q9zMBeFg7C7ZhD-JcwQ6EG6+bYvvA9QT8PzzxKqMNg@mail.gmail.com>
 <20201021095809.o53b6hpvjl2lbqsi@Air-de-Roger>
 <CAKf6xpuTE4gBNe4YXPYh_hAMLaJduDuKL5_6aC4H=y6DRxaxvw@mail.gmail.com>
 <a4dd7778-9bd4-00c1-3056-96d435b70d70@suse.com>
 <CAKf6xpvKiWiU5Wsv2C1EiEFr77nMZTd+VHgkdk7qcKw1OFD8Vg@mail.gmail.com>
 <9bbf6768-a39e-2b3c-c4de-fd883cc9ef85@suse.com>
In-Reply-To: <9bbf6768-a39e-2b3c-c4de-fd883cc9ef85@suse.com>
From: Jason Andryuk <jandryuk@gmail.com>
Date: Fri, 19 Feb 2021 12:30:23 -0500
Message-ID: <CAKf6xpuTbvGtTRHPK9Ock7rxJk4DfCumgTW7-2_PADm9cSaUBg@mail.gmail.com>
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
 eric chanudet <eric.chanudet@gmail.com>,
 xen-devel <xen-devel@lists.xenproject.org>,
 =?UTF-8?Q?Roger_Pau_Monn=C3=A9?= <roger.pau@citrix.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMjEsIDIwMjAgYXQgOTo1OSBBTSBKYW4gQmV1bGljaCA8amJldWxpY2hAc3Vz
ZS5jb20+IHdyb3RlOgo+Cj4gT24gMjEuMTAuMjAyMCAxNTozNiwgSmFzb24gQW5kcnl1ayB3cm90
ZToKPiA+IE9uIFdlZCwgT2N0IDIxLCAyMDIwIGF0IDg6NTMgQU0gSmFuIEJldWxpY2ggPGpiZXVs
aWNoQHN1c2UuY29tPiB3cm90ZToKPiA+Pgo+ID4+IE9uIDIxLjEwLjIwMjAgMTQ6NDUsIEphc29u
IEFuZHJ5dWsgd3JvdGU6Cj4gPj4+IE9uIFdlZCwgT2N0IDIxLCAyMDIwIGF0IDU6NTggQU0gUm9n
ZXIgUGF1IE1vbm7DqSA8cm9nZXIucGF1QGNpdHJpeC5jb20+IHdyb3RlOgo+ID4+Pj4gSG0sIGl0
J3MgaGFyZCB0byB0ZWxsIHdoYXQncyBnb2luZyBvbi4gTXkgbGltaXRlZCBleHBlcmllbmNlIHdp
dGgKPiA+Pj4+IElPTU1VIGZhdWx0cyBvbiBicm9rZW4gc3lzdGVtcyB0aGVyZSdzIGEgc21hbGwg
cmFuZ2UgdGhhdCBpbml0aWFsbHkKPiA+Pj4+IHRyaWdnZXJzIHRob3NlLCBhbmQgdGhlbiB0aGUg
ZGV2aWNlIGdvZXMgd29ua3kgYW5kIHN0YXJ0cyBhY2Nlc3NpbmcgYQo+ID4+Pj4gd2hvbGUgbG9h
ZCBvZiBpbnZhbGlkIGFkZHJlc3Nlcy4KPiA+Pj4+Cj4gPj4+PiBZb3UgY291bGQgdHJ5IGFkZGlu
ZyB0aG9zZSBtYW51YWxseSB1c2luZyB0aGUgcm1yciBYZW4gY29tbWFuZCBsaW5lCj4gPj4+PiBv
cHRpb24gWzBdLCBtYXliZSB5b3UgY2FuIGZpZ3VyZSBvdXQgd2hpY2ggcmFuZ2UocykgYXJlIG1p
c3Npbmc/Cj4gPj4+Cj4gPj4+IFRoZXkgc2VlbSB0byBjaGFuZ2UsIHNvIGl0J3MgaGFyZCB0byBr
bm93LiAgV291bGQgdGhlcmUgYmUgaGFybSBpbgo+ID4+PiBhZGRpbmcgb25lIHRvIGNvdmVyIHRo
ZSBlbmQgb2YgUkFNICggMHgwNCw3YzgwLDAwMDAgKSB0byAoCj4gPj4+IDB4ZmYsZmZmZixmZmZm
ICk/ICBNYXliZSB0aGF0IHdvdWxkIGp1c3QgcXVpZXQgdGhlIHBvaW50bGVzcyBmYXVsdHMKPiA+
Pj4gd2hpbGUgbGVhdmluZyB0aGUgSU9NTVUgZW5hYmxlZD8KPiA+Pgo+ID4+IFdoaWxlIHRoZXkg
bWF5IHF1aWV0ZW4gdGhlIGZhdWx0cywgSSBkb24ndCB0aGluayB0aG9zZSBmYXVsdHMgYXJlCj4g
Pj4gcG9pbnRsZXNzLiBUaGV5IGluZGljYXRlIHNvbWUgcHJvYmxlbSB3aXRoIHRoZSBzb2Z0d2Fy
ZSAobGVzcwo+ID4+IGxpa2VseSB0aGUgaGFyZHdhcmUsIHBvc3NpYmx5IHRoZSBmaXJtd2FyZSkg
dGhhdCB5b3UncmUgdXNpbmcuCj4gPj4gQWxzbyB0aGVyZSdzIHRoZSBxdWVzdGlvbiBvZiB3aGF0
IHRoZSBvdmVyYWxsIGJlaGF2aW9yIGlzIGdvaW5nCj4gPj4gdG8gYmUgd2hlbiBkZXZpY2VzIGFy
ZSBwZXJtaXR0ZWQgdG8gYWNjZXNzIHVucG9wdWxhdGVkIGFkZHJlc3MKPiA+PiByYW5nZXMuIEkg
YXNzdW1lIHlvdSBkaWQgY2hlY2sgYWxyZWFkeSB0aGF0IG5vIGRldmljZXMgaGF2ZSB0aGVpcgo+
ID4+IEJBUnMgcGxhY2VkIGluIHRoYXQgcmFuZ2U/Cj4gPgo+ID4gSXNuJ3Qgbm8taWdmeCBhbHJl
YWR5IGxldHRpbmcgdGhlbSB0cnkgdG8gcmVhZCB0aG9zZSB1bnBvcHVsYXRlZCBhZGRyZXNzZXM/
Cj4KPiBZZXMsIGFuZCBpdCBpcyBmb3IgdGhlIHJlYXNvbiB0aGF0IHRoZSBkb2N1bWVudGF0aW9u
IGZvciB0aGUKPiBvcHRpb24gc2F5cyAiSWYgc3BlY2lmeWluZyBgbm8taWdmeGAgZml4ZXMgYW55
dGhpbmcsIHBsZWFzZQo+IHJlcG9ydCB0aGUgcHJvYmxlbS4iIEkgaW1wbHkgZnJvbSBpbiBpbiBw
YXJ0aWN1bGFyIHRoYXQgb25lCj4gYmV0dGVyIHdvdWxkbid0IHVzZSBpdCBmb3Igbm9uLWRldmVs
b3BtZW50IHB1cnBvc2VzIG9mIHdoYXRldmVyCj4ga2luZC4KCkkgc3RvcHBlZCBzZWVpbmcgdGhl
c2UgRE1BIGZhdWx0cywgYnV0IEkgZGlkbid0IGtub3cgd2hhdCBtYWRlIHRoZW0gZ28KYXdheS4g
IFRoZW4gd2hlbiB3b3JraW5nIHdpdGggYW4gb2xkZXIgNS40LjY0IGtlcm5lbCwgSSBzYXcgdGhl
bQphZ2Fpbi4gIEVyaWMgYmlzZWN0ZWQgZG93biB0byB0aGUgNS40LnkgdmVyc2lvbiBvZiBtYWlu
bGluZSBsaW51eApjb21taXQ6Cgpjb21taXQgODE5NTQwMGY3ZWE5NTM5OWY3MjFhZDIxZjRkNjYz
YTYyYzY1MDM2ZgpBdXRob3I6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgpEYXRlOiAgIE1vbiBPY3QgMTkgMTE6MTU6MjMgMjAyMCArMDEwMAoKICAgIGRybS9pOTE1OiBG
b3JjZSBWVCdkIHdvcmthcm91bmRzIHdoZW4gcnVubmluZyBhcyBhIGd1ZXN0IE9TCgogICAgSWYg
aTkxNS5rbyBpcyBiZWluZyB1c2VkIGFzIGEgcGFzc3Rocm91Z2ggZGV2aWNlLCBpdCBkb2VzIG5v
dCBrbm93IGlmCiAgICB0aGUgaG9zdCBpcyB1c2luZyBpbnRlbF9pb21tdS4gTWl4aW5nIHRoZSBp
b21tdSBhbmQgZ2Z4IGNhdXNlcyBhIGZldwogICAgaXNzdWVzIChzdWNoIGFzIHNjYW5vdXQgb3Zl
cmZldGNoKSB3aGljaCB3ZSBuZWVkIHRvIHdvcmthcm91bmQgaW5zaWRlCiAgICB0aGUgZHJpdmVy
LCBzbyBpZiB3ZSBkZXRlY3Qgd2UgYXJlIHJ1bm5pbmcgdW5kZXIgYSBoeXBlcnZpc29yLCBhbHNv
CiAgICBhc3N1bWUgdGhlIGRldmljZSBhY2Nlc3MgaXMgYmVpbmcgdmlydHVhbGlzZWQuCgpSZWdh
cmRzLApKYXNvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
