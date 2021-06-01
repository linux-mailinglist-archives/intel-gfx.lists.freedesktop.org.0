Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFBA396DDA
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 09:20:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B7B46E0D9;
	Tue,  1 Jun 2021 07:20:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5486889FCE;
 Tue,  1 Jun 2021 07:19:59 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id s6so15998419edu.10;
 Tue, 01 Jun 2021 00:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=aMuf6Zwvp9YE1uES5A5ymwviB/xP/Pc8uTaTSOxuvrs=;
 b=FAAXlQjKM8H1PukR8U+yUhU1LuCMnIY0FZ+b11BqqiQiKryFEA71318JnamPNIDf72
 XSPwR+MIF47K218IhIWX/xoolr/NIuC5geEp3L+k/SO7n0l4tmJKowjygcCby8Bqo6Bv
 3vwd8oLbcypiBqQr/ngCql3r6v4IEO/81Vok30X8z6lGSz8aZ8dg0xT2zFZv1IwqbT68
 qedl1jy29LWOR2Zo5wk6TpbNNL+2sbkDy+zcJfzxrx69ym//T82rl6V+r0TSxuJO6wEa
 Fq24FhF4VkUi5ahfrKuDhx0EPIxS1DUluuojcQFlXfmZY2YMrbFL8bKwwJViqPa9aApg
 /QTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=aMuf6Zwvp9YE1uES5A5ymwviB/xP/Pc8uTaTSOxuvrs=;
 b=Tga5jT9S1610NRLzmSQ/vDauBcRxYb1BcnNO2iIMxae8TKkdkksZAFcDvricIq9GTA
 U30amNv5C3vzaXp6ve95Bk0g3X3wYPMT0DvQuKv6H1IuEDS1k0MX/aSsBj6yaLuf/W+D
 hJzG9AIuwfG1N2TEBHmtuv7ZMN9fIcLLiquRc5lIPUP29X2fJFAIQ9eM7X3hgTTZ5ffu
 d7uajO2jIOFenDp3hQeG1WaRSzzC7MG0iS+lYjQAVMxJvUOBrjykvqOBz85nI8tVFe9j
 0QicDCPb5YbW2a9mdi3F6Eocf4BiA3zrtotjDiYQvZQmp8OUQn+2PqjbTOvscxRv8P2j
 k1LQ==
X-Gm-Message-State: AOAM530fOJs5xCv2iEtWspjH4e4z5yoioM+Lx72b8xpLntLNYqb+6tb7
 GGJZtyWOJZ3QgeMipCpMmBk81GxWX5niIjZYFqI=
X-Google-Smtp-Source: ABdhPJw07s13De4fMTEbLWOPPhXYF72ptxy3HLqB6iX0ULdMVX84nZGRgfFUDn0OkU3AuDwHAFl5aVjr9YfjR4D8yzg=
X-Received: by 2002:aa7:d7d5:: with SMTP id e21mr30782027eds.78.1622531998562; 
 Tue, 01 Jun 2021 00:19:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210511083139.54002-1-zbigniew.kempczynski@intel.com>
 <YJq5OHIO8ThIiKCz@phenom.ffwll.local>
 <CAPM=9ty84uK-gT3uXZXGOEFno11SBRUh=btXb-B7OYUmnGiRoQ@mail.gmail.com>
 <YK9uwBAvUD+2NYlL@phenom.ffwll.local>
In-Reply-To: <YK9uwBAvUD+2NYlL@phenom.ffwll.local>
From: Dave Airlie <airlied@gmail.com>
Date: Tue, 1 Jun 2021 17:19:47 +1000
Message-ID: <CAPM=9txR2ZDpLX1bwzgqq+f9nsiP0feWB+1=tpto2zf_qPKu=Q@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add relocation exceptions for two
 other platforms
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
Cc: Dave Airlie <airlied@redhat.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyNyBNYXkgMjAyMSBhdCAyMDowNCwgRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xs
LmNoPiB3cm90ZToKPgo+IE9uIFdlZCwgTWF5IDI2LCAyMDIxIGF0IDEwOjM1OjQ5QU0gKzEwMDAs
IERhdmUgQWlybGllIHdyb3RlOgo+ID4gT24gV2VkLCAxMiBNYXkgMjAyMSBhdCAwMzowNSwgRGFu
aWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPiB3cm90ZToKPiA+ID4gT24gVHVlLCBNYXkgMTEs
IDIwMjEgYXQgMTA6MzE6MzlBTSArMDIwMCwgWmJpZ25pZXcgS2VtcGN6ecWEc2tpIHdyb3RlOgo+
ID4gPiA+IFdlIGhhdmUgZXN0YWJsaXNoZWQgcHJldmlvdXNseSB3ZSBzdG9wIHVzaW5nIHJlbG9j
YXRpb25zIHN0YXJ0aW5nCj4gPiA+ID4gZnJvbSBnZW4xMiBwbGF0Zm9ybXMgd2l0aCBUaWdlcmxh
a2UgYXMgYW4gZXhjZXB0aW9uLiBVbmZvcnR1bmF0ZWx5Cj4gPiA+ID4gd2UgbmVlZCBleHRlbmQg
dHJhbnNpdGlvbiBwZXJpb2QgYW5kIHN1cHBvcnQgcmVsb2NhdGlvbnMgZm9yIHR3bwo+ID4gPiA+
IG90aGVyIGlnZnggcGxhdGZvcm1zIC0gUm9ja2V0bGFrZSBhbmQgQWxkZXJsYWtlLgo+ID4gPiA+
Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5r
ZW1wY3p5bnNraUBpbnRlbC5jb20+Cj4gPiA+ID4gQ2M6IERhdmUgQWlybGllIDxhaXJsaWVkQHJl
ZGhhdC5jb20+Cj4gPiA+ID4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwu
Y29tPgo+ID4gPiA+IENjOiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+Cj4g
PiA+Cj4gPiA+IFNvIHRoZSBhbm5veWluZyB0aGluZyBoZXJlIGlzIHRoYXQgbm93IG1lZGlhLWRy
aXZlciBpcyBmaXhlZDoKPiA+ID4KPiA+ID4gaHR0cHM6Ly9naXRodWIuY29tL2ludGVsL21lZGlh
LWRyaXZlci9jb21taXQvMTQ0MDIwYzM3NzcwMDgzOTc0YmVkZjU5OTAyYjcwYjhmNDQ0Yzc5OQo+
ID4gPgo+ID4gPiBXaGljaCBtZWFucyBpZ3QgaXMgcmVhbGx5IHRoZSBvbmx5IHRoaW5nIGxlZnQu
Cj4gPiA+Cj4gPiA+IERhdmUsIGlzIHRoaXMgc3RpbGwgb2sgZm9yIGFuIGFja2VkIGV4Y2VwdGlv
biwgb3IgaXMgdGhpcyBub3cgbGVhbmluZwo+ID4gPiB0b3dhcmRzICJqdXN0IGZpeCBpZ3QiPwo+
ID4KPiA+IE9oIHRoYXQgaXNuJ3QgZ3JlYXQgaXMgaXQsIEkgaGFkIHRob3VnaHQgaXQgd2FzIHRo
ZSBtZWRpYS1kcml2ZXIsCj4gPiBrZWVwaW5nIGEgYmlnIHVBUEkgbGlrZSB0aGlzIG9wZW4ganVz
dCBmb3IgdGhlIHRlc3QgY29kZSBzZWVtcyBhIGJpdAo+ID4gc2lsbHkuIEkgZ2V0IHRoZSB0ZXN0
cyBhcmUgdGVzdGluZyBtb3JlIHRoYW4ganVzdCByZWxvY3MsIGJ1dCBpdCdzIGEKPiA+IHByZXR0
eSBiaWcgaW50ZXJmYWNlIHRvIGxlYXZlIGx5aW5nIGFyb3VuZCBpZiB3ZSBjYW4gYXZvaWQgaXQu
Cj4KPiBTbyBzaW5jZSB3ZSBuZWVkIHRvIGRvIHRoZSB3b3JrIGFueXdheSBmb3IgREcxKyB3aGF0
IGFib3V0IHNvbWUgaW50ZXJpbQo+IGhhY2s/IEN1cnJlbnRseSBBREwgc3RpbGwgaGFzIHRoZSBy
ZXF1aXJlX2ZvcmNlX3Byb2JlIGZsYWcgc2V0LiBXZSBjb3VsZAo+IHJlLWVuYWJsZSByZWxvY2F0
aW9ucyBqdXN0IGZvciBBREwsIG9ubHkgd2hpbGUgdGhpcyBmbGFnIGlzIHNldC4gVGhpcwo+IGdp
dmVzIHVzIGEgYnVuY2ggb2Ygd2lnZ2xlIHJvb20sIHVuYmxvY2tzIGV2ZXJ5dGhpbmcgZWxzZSAo
Q0kgaXMgYSBiaXQgb24KPiBmaXJlIHJpZ2h0IG5vdyBkdWUgdG8gdGhpcyBhbmQgcHJhY3RpYWxs
eSB1bnVzZWFibGUgb24gQURMIGdlbSBhcmVheSkgYW5kCj4gd2UnbGwgc3RpbGwgbWFrZSBzdXJl
IHRoYXQgd2hlbiBBREwgaXMgYWxsIGRvbmUgd2Ugd29udCBleHBvc2UgcmVsb2NhdGlvbnMKPiBq
dXN0IGZvciBpZ3QuCj4KPiBUaG91Z2h0cz8KCkkgY2FuIGhhbmRsZSB0aGF0IGFzIGEgY29tcHJv
bWlzZSwgdGhvdWdoIEknZCBub3Qgd2FudCB0byBibG9jayBBREwKZ2V0dGluZyBvdXQgb2YgYWxw
aGEgb3ZlciBzb21lIElHVCB0aGF0IG5lZWRzIHBvcnRpbmcuCgpEYXZlLgoKPiAtRGFuaWVsCj4g
LS0KPiBEYW5pZWwgVmV0dGVyCj4gU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9u
Cj4gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
