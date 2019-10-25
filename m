Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF2BE5274
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 19:39:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE07A6EB16;
	Fri, 25 Oct 2019 17:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BD376EB16
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 17:39:45 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id y129so2005184vsc.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 10:39:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VRPgMu/EdSmjQZuWWWWj+2nZCdoq9c6C1x3VqKeU40Y=;
 b=g5axa3hay/5VJi9gyTFeyfyWNLkIJoizRk+a0IC8y3xOvq5OQqy2hmJgaioWe69eEC
 Nj2GLIFXgJL7YElIfQFr7ASwqOiU+dlxkdrIIhiNUjbVk6FYKi8oKF/V05mBtbmP5LEH
 0R8OEWtZZW+Y9JCkp2YkK4PS/Vtk5fkC6fMZLdXySq6rnB3onlmtXyJ+R/gCEUqfwkT6
 eeSVALmgRp2jOBSsl0K9YbtWrGWKSfPgOd6oDxynzIu9zJ7HZ2eUuOiRNFPPho7e170J
 JIBkLwBTpJQHJvHYASgfgixvn5W4fL0PTYYjdyg6JvA1ib1+74367cvihVJeJu/7sA8v
 kY/w==
X-Gm-Message-State: APjAAAVmTGQ8ST3r5kziqRkmHAYWBLGkq0t1qHzcEXESCBeyITNzs76Y
 ITb9/RFnJMbelzcr+rjpZFBnmLDMVqngjnJYwS2VSA==
X-Google-Smtp-Source: APXvYqwMfTLVsruDHsA3Jys79Dhi3ftd9VVIehGMZujTcOKNMDVKpN7H4AHii3H4v0Qsw8J1cYkLJnUFiBvzzK3mUMo=
X-Received: by 2002:a67:b648:: with SMTP id e8mr2774208vsm.164.1572025184095; 
 Fri, 25 Oct 2019 10:39:44 -0700 (PDT)
MIME-Version: 1.0
References: <20191025165442.23356-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191025165442.23356-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 25 Oct 2019 18:39:17 +0100
Message-ID: <CAM0jSHPsUfpYaNXrRDPekuSuuGrfqtOjDMRXc-XjaSLxo+S96g@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=VRPgMu/EdSmjQZuWWWWj+2nZCdoq9c6C1x3VqKeU40Y=;
 b=RaWviRJjnWRfverTt0AMqrL01DFjAEvU3b5lloJMa0L8746bVJvacaUn12Tu7o5AiF
 xLXM8DVG747yT6hzvKqiPcBeXurFY4y9rFo9pf3nYq9bVZWEqZ4HJCTMvxXuGxp8/pHV
 pp9Ac1o3rfS7sEywqytq2cfzkOLCQPnDrLeHqsYsAsVhf56Nd5ICNc7XeB9tcJJVkfhc
 CjxKYQdMnDGVhEFi/W49KVD/wBFuHtWjx4Q9UwzaYI/4d9ABNTOzlTylC+SFIemYOZf7
 MDr/yCba0qiCNbDdTheH0jlFOMmuC8O57mIOuVsHh6akHYHQtOiXc/+Pn0qVlR7cmDwu
 shfQ==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Initialise the spinlock
 before registering
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyNSBPY3QgMjAxOSBhdCAxNzo1NSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQXMgdGhlIEdUIG1heSBiZSBydW5uaW5nIGluIHBhcmFs
bGVsIHdpdGggdGhlIG1vZHVsZSBpbml0aWFsaXNhdGlvbgo+IGNvZGUsIHdlIG1heSBlbnRlciBp
OTE1X3BtdV9ndF9wYXJrZWQoKSBhcyB3ZSBhcmUgZXhlY3V0aW5nCj4gaTkxNV9wbXVfcmVnaXN0
ZXIoKS4gV2UgaGF2ZSB0byBpbml0IHRoZSBzcGlubG9jayBiZWZvcmUgd2UgbWFyawo+IHBtdS5l
dmVudF9pbml0IHNvIHRoYXQgaXQgaXMgYXZhaWxhYmxlIGZvciB1c2UgYnkgaTkxNV9wbXVfZ3Rf
cGFya2VkKCkKPiAod2hpY2ggbWF5IHJ1biBhcyBzb29uIGFzIGV2ZW50X2luaXQgaXMgc2V0KS4K
Pgo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMTIxMjcKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
UmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
