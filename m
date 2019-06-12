Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2771C41BFE
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 08:09:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E179D891CC;
	Wed, 12 Jun 2019 06:09:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B617891D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 06:09:33 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id m3so15495474wrv.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 23:09:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=jNHpo9jnwtLQwuoRcj9Ch+fhiSgA7li7+xLd+t9vX0c=;
 b=lxl5OVkw+qkmjMRA5PgKmj2S7yvAiKmRg0HySlfoy72+l0FsXuS57mqdiMoZf/7TS/
 w28IGPRJOW4JbJYWTgXjamifnITfWtuiiv78uWhHDnl35i5BmCbxZiX5zMyFAImEMUS/
 GXLAyvbgxRRSrWvPcq/jX1WWa+UyAGYJSNYVbWXn1WnlmRIOBGA7DHVoJJagU+JigSwX
 lLRxoDsCvbIVt4KTa9QMr+p3u8L6KAVoGqwpIiSbv0nbTWFacpPCJTgNXzsBCaVGCggV
 sdNpWwab4dF224dSbvOBt3X4mZhygVlQ5wAoFzftLrd0CpMpduJXbniwPzJOapRe0APz
 vDhA==
X-Gm-Message-State: APjAAAXcXfDEb97LOU9ZTlJGyLuesME4tKwJfDWvCPE1fWxEUalrQVWY
 34JQXPwhIIZbadk22zeWa7G42Q==
X-Google-Smtp-Source: APXvYqyfYkZe1DnheBkxB3YZco+J1bRcMmIGxS+HOyR0Pfaq+SvAfBz+F8jQnAiX9kHfVifedeh39g==
X-Received: by 2002:adf:db02:: with SMTP id s2mr17167183wri.326.1560319771955; 
 Tue, 11 Jun 2019 23:09:31 -0700 (PDT)
Received: from dell ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id x16sm4926192wmj.4.2019.06.11.23.09.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 11 Jun 2019 23:09:31 -0700 (PDT)
Date: Wed, 12 Jun 2019 07:09:29 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Daniel Thompson <daniel.thompson@linaro.org>
Message-ID: <20190612060929.GR4797@dell>
References: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
 <CGME20190606073852epcas2p27b586b93869a30e4658581c290960fee@epcas2p2.samsung.com>
 <CAKMK7uHneUFYPiRr10X9xfWTkGtaoQBB=niDMGkAgJ-fgo5=mA@mail.gmail.com>
 <f848b4de-abab-116f-ad68-23348f1a4b76@samsung.com>
 <20190611141635.rowolr37vhalophr@holly.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611141635.rowolr37vhalophr@holly.lan>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=jNHpo9jnwtLQwuoRcj9Ch+fhiSgA7li7+xLd+t9vX0c=;
 b=m8hJ2c0e3XNePvN0CW1AiuPtb6Tsm06LSMqOrEr8m/J+EAR2QK9ql0ebHsCP92aYtm
 6mqLiXGOBxsAgcaVMen9cmq1ZpkUojqFwNGKIwtxFMW7WyZKtUN5lpGdRMe0Gas16jpj
 LAT07r46pjG8q0yGqgzQizG+DFkTulNQjXqCIVy7uFbfJvOqkXl0LUGpPnKAlJyZ69qZ
 ukRc/AgAIoYDjFv5PLPBWCkh0YO8NkXsGen4B1A4NvEPVvnuVFSFyNnX14GS+Aa3aiBB
 tkgCuX8/fXozn76HmTNJ00VbrHdXvIAdJJGEGk3lkGLF5stuCF/piv6JjYoIPvT2lIhL
 Mw2Q==
Subject: Re: [Intel-gfx] [PATCH 00/33] fbcon notifier begone v3!
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
Cc: Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxMSBKdW4gMjAxOSwgRGFuaWVsIFRob21wc29uIHdyb3RlOgo+IE9uIEZyaSwgSnVu
IDA3LCAyMDE5IGF0IDEyOjA3OjU1UE0gKzAyMDAsIEJhcnRsb21pZWogWm9sbmllcmtpZXdpY3og
d3JvdGU6Cj4gPiBPbiA2LzYvMTkgOTozOCBBTSwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+IAo+
ID4gPj4gLSBIYXNoIG91dCBhY3R1YWwgbWVyZ2UgcGxhbi4KPiA+ID4gCj4gPiA+IEknZCBsaWtl
IHRvIHN0dWZmIHRoaXMgaW50byBkcm0uZ2l0IHNvbWVob3csIEkgZ3Vlc3MgdG9waWMgYnJhbmNo
IHdvcmtzCj4gPiA+IHRvby4KPiA+IAo+ID4gSSB3b3VsZCBsaWtlIHRvIGhhdmUgdG9waWMgYnJh
bmNoIGZvciB0aGlzIHBhdGNoc2V0Lgo+IAo+IEZyb20gYSBiYWNrbGlnaHQgcGVyc3BlY3RpdmUg
aXRzIExlZSBKb25lcyB3aG8gaG9vdmVycyB1cCB0aGUgcGF0Y2hlcwo+IGFuZCB3b3JyaWVzIGFi
b3V0IGhpZGluZyBtZXJnZSBjb25mbGljdHMgZnJvbSBMaW51cy4KPiAKPiBJJ2xsIGxldCBoaW0g
Zm9sbG93IHVwIGlmIG5lZWRlZCBidXQgSSBzdXNwZWN0IGhlJ2QgbGlrZSBhbiBpbW11dGFibGUK
PiBicmFuY2ggdG8gd29yayBmcm9tIGFsc28uCgpZZXMgcGxlYXNlLiAgSGFwcHkgdG8gZWl0aGVy
IGNyZWF0ZSBvbmUsIG9yIHJlY2VpdmUgb25lLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpM
aW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ug
c29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8
IEJsb2cKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
