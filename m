Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CF83299F
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 09:31:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B2168926C;
	Mon,  3 Jun 2019 07:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46C2F8926C
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2019 07:31:07 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id w37so25537343edw.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Jun 2019 00:31:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=5F+wBhCS8sAZq+YWWqmEdfsd0GQvCSzsuUSE02Dy/+0=;
 b=I+n9GlIdSQsLtcisBMPJ5IXWCn+w23/ZEGtiQJ1R3AV2tRlmuB6asjTUm5gK4GC5kx
 WGwijsScC2X9NufMtnkPGGt8DzCJZEJugi4y3iHNennZJNBqMegahOmc9HMeZqGI8HS6
 nQzyoLe5Mp5AsPn0ylBFVWdv/ksVRxDH3TRkhdkP/0E3qvoUtZDyzhl5bn+g5AEfLoMu
 +W5lRFj3K5eD6aeOyUEw27QKEDEGpj2lamCPzbPY0p5Adj7s9nVzlmfFmN6ehiXDoRW2
 7oljRH2ET0pWgl6FZybQtmvW6iGN4f1pJaGd1sAtcu7WX72+BjmULlg6HVSbxeN31m2I
 u40A==
X-Gm-Message-State: APjAAAWDO7TwjG3hVJ8C3a02Od0YWSnLmhdphw3jB6EdIBY9wRAIF898
 Ok3BsXdolK5XJpnPrH12e3Ahgg==
X-Google-Smtp-Source: APXvYqyMy/Q966VQ6QHnjPoehMyRWwroWW9LptlRkVDBtGI4jRcS7IQg+vBhXqAEQ7Dl1PqAwJEjjw==
X-Received: by 2002:a17:906:254c:: with SMTP id
 j12mr21659216ejb.176.1559547065959; 
 Mon, 03 Jun 2019 00:31:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id b53sm3889272edd.89.2019.06.03.00.31.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 00:31:05 -0700 (PDT)
Date: Mon, 3 Jun 2019 09:31:03 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <20190603073103.GC21222@phenom.ffwll.local>
Mail-Followup-To: Stephen Rothwell <sfr@canb.auug.org.au>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>
References: <20190603082051.273a014c@canb.auug.org.au>
 <20190603110403.0412ed22@canb.auug.org.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603110403.0412ed22@canb.auug.org.au>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=5F+wBhCS8sAZq+YWWqmEdfsd0GQvCSzsuUSE02Dy/+0=;
 b=Hzs5RRzcSR5/iPErwK/TEKCpPfXXb7NKCEOoQh6t1GSNoJcrbpRJTGuHhRcsIvE4GA
 Q2fL8ChTxAdQyhg9lYzM6RlDVxYJ872nr/HoKow0Nt4+OHzRXdZXlY1B4atsQeSCQSJq
 9U7pW/mavwwQfxwMb6LJD5fDNPhck3RJgGjfE=
Subject: Re: [Intel-gfx] linux-next: unable to fetch the drm-intel-fixes tree
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdW4gMDMsIDIwMTkgYXQgMTE6MDQ6MDNBTSArMTAwMCwgU3RlcGhlbiBSb3Rod2Vs
bCB3cm90ZToKPiBIaSBTdGVwaGVuLAo+IAo+IE9uIE1vbiwgMyBKdW4gMjAxOSAwODoyMDo1MSAr
MTAwMCBTdGVwaGVuIFJvdGh3ZWxsIDxzZnJAY2FuYi5hdXVnLm9yZy5hdT4gd3JvdGU6Cj4gPgo+
ID4gSGkgYWxsLAo+ID4gCj4gPiBUcnlpbmcgdG8gZmV0Y2ggdGhlIGRybS1pbnRlbC1maXhlcyB0
cmVlIHRvZGF5IGdpdmVzIG1lIHRoaXMgZXJyb3I6Cj4gPiAKPiA+IC0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiBmYXRh
bDogQ291bGQgbm90IHJlYWQgZnJvbSByZW1vdGUgcmVwb3NpdG9yeS4KPiA+IAo+ID4gUGxlYXNl
IG1ha2Ugc3VyZSB5b3UgaGF2ZSB0aGUgY29ycmVjdCBhY2Nlc3MgcmlnaHRzCj4gPiBhbmQgdGhl
IHJlcG9zaXRvcnkgZXhpc3RzLgo+ID4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+IAo+ID4gVGhlIHNhbWUgZm9yIGRy
bS1taXNjLWZpeGVzLCBkcm0taW50ZWwgYW5kIGRybS1taXNjLiAgVGhlc2UgYXJlIGFsbAo+ID4g
aG9zdGVkIG9uIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnLyAuCj4gCj4gQWxzbyB0aGUg
ZHJtLXRlZ3JhIHRyZWUuCgpkcm0uZ2l0IHRvbyBJIGd1ZXNzPwoKQnV0IHllYWggZmQubyBhbm9u
Z2l0IGtlZWxlZCBvdmVyIG92ZXIgdGhlIHcvZSA6LSggQWRtaW5zIG5vdCB5ZXQgYXdha2UsCnNv
IGNhbid0IHRlbGwgeW91IHdoYXQncyB1cC4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0
d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
