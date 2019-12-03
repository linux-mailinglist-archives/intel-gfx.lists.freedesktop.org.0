Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AEE11031D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 18:03:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 552296E853;
	Tue,  3 Dec 2019 17:03:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 872ED6E853
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 17:03:55 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id y11so4604154wrt.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Dec 2019 09:03:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=q0l9pXcuu7caGmmx9lkQ2u0xYl+DVYW7QBpf67H6kJ0=;
 b=uZ8cqWauyUlwBOSnBdKVuiv+nINxJjtalB8zpaCE7OfdDMYu552AHUnispOLJI8ffw
 XxMnUB5FvNRroqIE7umaZ58I3tkW99MvsgRO9y7d7LUg0EsjM9b6Cp11VN47lkUBGdzF
 hEv23HdczPVkt6jeUOobeU9Mu//lLrQyCt9w3RjGxgHnR7TdWNyAF3vkKm1cUkqvkeL+
 V51hqpxpcqRU2v2+97Ue6KAyf3ts79RHTa3dOLaypotp3Gzkx3Zqgo5JU9T93gc4A/1C
 W+FB5rgVsAsw/2meoGLGUcigIWjnsWcO2RoG2iGXnDVM7kKdiAbYy0UirAPhylwFRyRR
 6d9w==
X-Gm-Message-State: APjAAAXCQshV/6Ftg0O15xYdUcEXVzLrk9sdCTzz0Jl7cADixAAAfb/S
 lw2uLv35+ntziMSAOhXfm5fIig==
X-Google-Smtp-Source: APXvYqz10d71sE1iEv6nWCjt2E1hm98B92GhJpmlHCcWM/+5H4Y6cF3GTdO16nfqN8ORoGFBp+cO8Q==
X-Received: by 2002:a5d:4044:: with SMTP id w4mr6313389wrp.322.1575392634190; 
 Tue, 03 Dec 2019 09:03:54 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id s10sm4424308wrw.12.2019.12.03.09.03.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 09:03:53 -0800 (PST)
Date: Tue, 3 Dec 2019 18:03:51 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191203170351.GH624164@phenom.ffwll.local>
References: <cover.1575390740.git.jani.nikula@intel.com>
 <af63cda5de9fee3acd28e7d264f920338298bc0a.1575390740.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <af63cda5de9fee3acd28e7d264f920338298bc0a.1575390740.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=q0l9pXcuu7caGmmx9lkQ2u0xYl+DVYW7QBpf67H6kJ0=;
 b=NMc4vQbW9+U4AhoYIGNE+DdbZZGlo4owOG4fIghXP4wvP5gI1ffeVyx5ISxoWUI3h7
 DYjH9reUP037rIGfbgT5gFjaZWW6cyYc8XYuDpGPeA1WmvXxbostYyqtGb7GFASGImGC
 pY52L8bbFr0+MJQ4v2dgS8Eyz8SIQjNV4LAA4=
Subject: Re: [Intel-gfx] [PATCH v3 04/12] video: fbdev: uvesafb: modify the
 static fb_ops directly
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
Cc: linux-fbdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBEZWMgMDMsIDIwMTkgYXQgMDY6Mzg6NDZQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gQXZvaWQgbW9kaWZ5aW5nIHRoZSBmYl9vcHMgdmlhIGluZm8tPmZib3BzIHRvIGxldCB1
cyBtYWtlIHRoZSBwb2ludGVyCj4gY29uc3QgaW4gdGhlIGZ1dHVyZS4KPiAKPiBDYzogbGludXgt
ZmJkZXZAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy92aWRlby9mYmRldi91dmVzYWZiLmMg
fCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy92aWRlby9mYmRldi91dmVzYWZiLmMgYi9kcml2
ZXJzL3ZpZGVvL2ZiZGV2L3V2ZXNhZmIuYwo+IGluZGV4IDQzOTU2NWNhZTdhYi4uNTNkMDhkMWI1
NmY1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvdXZlc2FmYi5jCj4gKysrIGIv
ZHJpdmVycy92aWRlby9mYmRldi91dmVzYWZiLmMKPiBAQCAtMTQ0MCw3ICsxNDQwLDcgQEAgc3Rh
dGljIHZvaWQgdXZlc2FmYl9pbml0X2luZm8oc3RydWN0IGZiX2luZm8gKmluZm8sIHN0cnVjdCB2
YmVfbW9kZV9pYiAqbW9kZSkKPiAgCj4gIAkvKiBEaXNhYmxlIGJsYW5raW5nIGlmIHRoZSB1c2Vy
IHJlcXVlc3RlZCBzby4gKi8KPiAgCWlmICghYmxhbmspCj4gLQkJaW5mby0+ZmJvcHMtPmZiX2Js
YW5rID0gTlVMTDsKPiArCQl1dmVzYWZiX29wcy5mYl9ibGFuayA9IE5VTEw7Cj4gIAo+ICAJLyoK
PiAgCSAqIEZpbmQgb3V0IGhvdyBtdWNoIElPIG1lbW9yeSBpcyByZXF1aXJlZCBmb3IgdGhlIG1v
ZGUgd2l0aAo+IEBAIC0xNTEwLDcgKzE1MTAsNyBAQCBzdGF0aWMgdm9pZCB1dmVzYWZiX2luaXRf
aW5mbyhzdHJ1Y3QgZmJfaW5mbyAqaW5mbywgc3RydWN0IHZiZV9tb2RlX2liICptb2RlKQo+ICAJ
CQkocGFyLT55cGFuID8gRkJJTkZPX0hXQUNDRUxfWVBBTiA6IDApOwo+ICAKPiAgCWlmICghcGFy
LT55cGFuKQo+IC0JCWluZm8tPmZib3BzLT5mYl9wYW5fZGlzcGxheSA9IE5VTEw7Cj4gKwkJdXZl
c2FmYl9vcHMuZmJfcGFuX2Rpc3BsYXkgPSBOVUxMOwo+ICB9CgpJIHJlYWQgY29kZS4KCkkgY3Jp
ZWQuCgpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4K
CkFsc28sIHdpdGggbW9yZSByZWFkaW5nIGFuZCBtb3JlIGJhZCBkcmVhbXMgSSdsbCBnZXQgYWJv
dXQgdGhpcywgSSdtCnJldmlzaW5nIG15IHRha2Ugb24gcGF0Y2hlcyAxJjIgaW4gdGhpcyBzZXJp
ZXMuIE9uIHRob3NlIGFsc28KClJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGZmd2xsLmNoPgoKYXMtaXMuCgpDaGVlcnMsIERhbmllbAo+ICAKPiAgc3RhdGljIHZvaWQg
dXZlc2FmYl9pbml0X210cnIoc3RydWN0IGZiX2luZm8gKmluZm8pCj4gLS0gCj4gMi4yMC4xCj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRl
bC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cgot
LSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0
cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
