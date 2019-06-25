Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E58AB55741
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 20:32:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D3A26E1D2;
	Tue, 25 Jun 2019 18:32:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E393F6E1D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 18:32:18 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id j2so7449783uaq.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 11:32:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8bjl3+VWUmZihCHnjlnvZwJyC2pbU4q9afzESE0D+pg=;
 b=GQmfDYpmRkPMpvkxu9jOD+6xQaF1XcynFa2pjrYOOFLds5Cz+BxslugkxlFEyhqE6V
 fnB5N8XNRlswJg9+7klenEMQMS07OuID++kCj7pRvvTQsb/G0rVYC4i0hlOffXoVXI7u
 4oHGJBalydLYuxZzcvG+VJpKDep+rfHMIY+vobWgmP/K2DRKH85GCOrbx7jQK9i6o/zK
 9G0jtl1+ydWUq+KKblq2DnG85z+o6DxJV5GRPeu9Cuxozrh1bmSHB550SgIVoACBi9Z6
 95j+6ufA0TJ2N5WHEnuhNaqyASXuCa54P91L+bFYaoRJAOZbc9RS8pFDIyURq4eW3fE1
 QPCQ==
X-Gm-Message-State: APjAAAU4hgSlhI534P7TASyllNOC6Rpu8ElfNZboQADUe1n6MuUVLLUk
 8+tUUDkqF75Ru7Leyb+ctKQU7ZPEUJUwjnRE5k2jUcvK
X-Google-Smtp-Source: APXvYqzmq8cRitL5WUs//6XoklN9ZWg5Jg88p1g+YJ/VBR/FkWuvKCy3SdcC1OAWL0WrqoHAVqnzzeJc5RY6M38tego=
X-Received: by 2002:ab0:1590:: with SMTP id i16mr25509763uae.141.1561487538092; 
 Tue, 25 Jun 2019 11:32:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190624054315.18910-1-chris@chris-wilson.co.uk>
 <20190624054315.18910-7-chris@chris-wilson.co.uk>
In-Reply-To: <20190624054315.18910-7-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 25 Jun 2019 19:31:52 +0100
Message-ID: <CAM0jSHNjRJoin-9JuuE0zrESyoX1TKkLQyFhfywrLmzMeDc=bw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=8bjl3+VWUmZihCHnjlnvZwJyC2pbU4q9afzESE0D+pg=;
 b=izf9pSb82vtQt6MZCHHV8bmsGoKw87Zb/w4TbrZL+k0itES32Gm9O7w72PRSCWgTtx
 8sjM94OkTehtjSwGbdWA7VWly9JEuBYneULVqNfhS3kaSJt4hrSzH3JE3IakWMBROIvH
 VoJ84FBqG65lbtzwxuslMgGE4Drdx+OLBgp2OdWdzioieJ9yl9HRaCeNGBDPchfG0+JJ
 +G8Tt2vyTFHj2xmF0raAInB41mX9fDZgVUXkXDJdshGRG+6a31oq51U6IFWahcGB1Apk
 6vAqtYDAKT9pjqSDDISCSn17P60XAY6K9JeKN45z1xx0J1i8ZkQU9jG3Wo6MMv5eDFTa
 9vRQ==
Subject: Re: [Intel-gfx] [PATCH 07/19] drm/i915: Rename
 intel_wakeref_[is]_active
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

T24gTW9uLCAyNCBKdW4gMjAxOSBhdCAwNjo0NSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gT3VyIGdlbmVyYWwgcnVsZSBpcyB0byB1c2UgaXMvaGFz
IGFzIHRoZSB2ZXJiIGZvciBib29sZWFuIGZ1bmN0aW9ucywKPiByZW5hbWUgaW50ZWxfd2FrZXJl
Zl9hY3RpdmUgdG8gaW50ZWxfd2FrZXJlZl9pc19hY3RpdmUgc28gdGhlIHF1ZXN0aW9uCj4gYmVp
bmcgYXNrZWQgaXMgY2xlYXIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5h
dWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
