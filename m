Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDBF977EF
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 13:30:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6796D890D4;
	Wed, 21 Aug 2019 11:30:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40C67890D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 11:30:57 +0000 (UTC)
Received: by mail-ua1-x941.google.com with SMTP id n13so667968uap.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 04:30:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T3R9J/NtwNRl70t5xZnF2X1aPw34ftAF2vK8lEfF0dA=;
 b=UHQGhFLL/H7NmDVUXgNWRw74/oJ4gj9RZpwY8HmDTtSCDes1hSAIuhYPzNhFUV0P6Z
 m4L+adsdhm0bHObWaFpacaK5u0F2r+OMtvoEb3HTLQm+hefafIKaXLkr+9KeUDqBlSOY
 ZyvliBeU5KFgJFKod05sMulam6U/lMnOtYufRl+73rwYli6fUFfuLzVUHkKLetOGYfyO
 aI7MkE8U4gvq3zICulZuHDl2vK3MZa7Zm2DHGeBqdasHXAcoh2Hk2rHrMN48eIQ1oKTy
 zGnyXWPcMPX5lcOMwWMdXp7bO3Fjrk9RDzHpS7qME7aKebMiXkTWKgBbZDdysZvPLhNI
 zWIg==
X-Gm-Message-State: APjAAAXyBMBTY6mQZgj4FcK7nmWJVYacEDxBFlWpp0bhA8D18LJ3xIpX
 eTY9TfmP41iJhVSWWyR1V8aIUSoMLWuOdjFBrFM=
X-Google-Smtp-Source: APXvYqwD7qS5U3yMVp7fyBDxzq/DiEA7rPho+3FnwX7ZhF6EEgeGWnpUfBcL8VHvL1wHAb12xNu9vcHZfPfcmFuxxOk=
X-Received: by 2002:ab0:7042:: with SMTP id v2mr1817026ual.141.1566387055844; 
 Wed, 21 Aug 2019 04:30:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190820142736.14957-1-chris@chris-wilson.co.uk>
 <20190820142736.14957-2-chris@chris-wilson.co.uk>
In-Reply-To: <20190820142736.14957-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 21 Aug 2019 12:30:29 +0100
Message-ID: <CAM0jSHPgVr2Lk7mT=EBNaenX266wvgq8gn3Y05SLVDnMeVNE4Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=T3R9J/NtwNRl70t5xZnF2X1aPw34ftAF2vK8lEfF0dA=;
 b=rsuE/WPXh3Bb7xRG3IVMnL0cQ6sJdrjGJdedZy0O4SbTbDNwioq7C0UObnwAaudSaN
 dvZUif7yLn2anMOFrA7Nn/z787nkinCOQ1dP8pDkkr+E+LvUXRPoXzR1H4BrBzNTxbet
 MO0h7ZrFGhPeWhJcYr+P9Wz4hm4xC5zADzOKahDMlvKuKEDO+yyTF5x7Z19g8GyNhd0D
 o722meXDpeLMBrmRDeQkoFZCI4JtKISYt2wJIBWy4PDrdw3+/wbtHTmLxzrPpwyPhdoB
 DWAPl/ecX6LOnVQE+0a2kaCaFJCZre5V8GRAtLaxxdDkSWMCX2V/n3Zbh5XbxayVGmMM
 hCwg==
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Replace PIN_NONFAULT with
 calls to PIN_NOEVICT
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

T24gVHVlLCAyMCBBdWcgMjAxOSBhdCAxNToyOCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gV2hlbiB1bmRlciBzZXZlcmUgc3RyZXNzIGZvciBHVFQg
bWFwcGFibGUgc3BhY2UsIHRoZSBMUlUgZXZpY3Rpb24gbW9kZWwKPiBmYWxscyBvZmYgYSBjbGlm
Zi4gV2Ugc3BlbmQgYWxsIG91ciB0aW1lIHNjYW5uaW5nIHRoZSBtdWNoIGxhcmdlCj4gbm9uLW1h
cHBhYmxlIHZtYSBzZWFyY2hpbmcgZm9yIHNvbWV0aGluZyB3aXRoaW4gdGhlIG1hcHBhYmxlIHpv
bmUgd2UgY2FuCj4gZXZpY3QuIFR1cm4gdGhpcyBvbiBpdHMgaGVhZCBieSBvbmx5IHVzaW5nIHRo
ZSBmdWxsIHZtYSBpZiBpdCBpcyBhbHJlYWR5Cj4gcGlubmVkIGluIHRoZSBtYXBwYWJsZSB6b25l
IG9yIHRoZXJlIGlzIHN1ZmZpY2llbnQgKmZyZWUqIHNwYWNlIHRvCj4gYWNjb21tb2RhdGUgaXQo
cHJpb3JpdGl6aW5nIHNwZWVkeSByZXVzZSkuIElmIHRoZXJlIGlzIG5vdCwgaW1tZWRpYXRlbHkK
PiBmYWxsIGJhY2sgdG8gdXNpbmcgc21hbGwgY2h1bmtzICh0aWxlcm93IGZvciBHVFQgbW1hcCwg
c2luZ2xlIHBhZ2VzIGZvcgo+IHB3cml0ZS9yZWxvY2F0aW9uKSBhbmQgdXNpbmcgcmFuZG9tIGV2
aWN0aW9uIGJlZm9yZSBkb2luZyBhIGZ1bGwgc2VhcmNoLgo+Cj4gVGVzdGNhc2U6IGlndC9nZW1f
Y29uY3VycmVudF9ibHQKPiBSZWZlcmVuY2VzOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMTA4NDgKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhl
dy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
