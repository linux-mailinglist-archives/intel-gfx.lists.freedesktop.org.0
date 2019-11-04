Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B93EE6A3
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 18:51:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D41A26E7C0;
	Mon,  4 Nov 2019 17:51:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1067B6E7D2
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2019 17:51:39 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id z19so12873583wmk.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 Nov 2019 09:51:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=KCG5ZntCCotFydkuCTVCaIcU8iLqSttIrbCJH238+Q8=;
 b=Vl9ssC68u6vYe4MRcOSoTBLX8rewx4EU7H7g+NK1e2ZoXom1A+CosWzq2n1EJSmtVg
 wuZjCw62GFbtsYv05DSTCoG1FH2ZM2wERxroKczrVvEk0cdthhLJcZwaQvcuYvsiUsAT
 hpy1MQAF+eCCh15DigIk5Fkvhnr5Wh2ueYggMFzTGTF8C/PhBMy9w7yi7KI5vBBQgeGj
 a9wSRmVc+7Tea0qWIcwdP29QPuBtyXPm5tmjkatUbIptezh4vz/Fta0xMyd9bKj+FzSq
 COHHA91nfS9tbdzE4Ji1AU4Fr5bm6dSH88SXcqv2ezE36Lr1AIHfd2iIvvA4gkNO3y4K
 GsOQ==
X-Gm-Message-State: APjAAAVFi0O+3i6k0JRtroeiS8WufhA/AdNSb0SdGUoPg+YuRID7alVA
 mCS9mTBGAI286PZrGbChET8FzpX+uYk=
X-Google-Smtp-Source: APXvYqwPv7puKlpeHaQjeGPe3S5nNoDOWoVtSN2z/FR7l8wSQMYCZoEc1NHzzNL0QVthbX+/PyATSQ==
X-Received: by 2002:a1c:f305:: with SMTP id q5mr257669wmq.137.1572889898640;
 Mon, 04 Nov 2019 09:51:38 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id v184sm13097715wme.31.2019.11.04.09.51.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 09:51:37 -0800 (PST)
Date: Mon, 4 Nov 2019 18:51:35 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <20191104175135.GN10326@phenom.ffwll.local>
References: <20191021080226.537-1-chris@chris-wilson.co.uk>
 <20191021080226.537-15-chris@chris-wilson.co.uk>
 <CAM0jSHPom-2SKVrOZ4FCvu8D6upmjTF_dHudkS0gYsLt4fhKTQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM0jSHPom-2SKVrOZ4FCvu8D6upmjTF_dHudkS0gYsLt4fhKTQ@mail.gmail.com>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KCG5ZntCCotFydkuCTVCaIcU8iLqSttIrbCJH238+Q8=;
 b=ZktTlYuNZ/TgW7S6B6iZZ17qIeBRdCneqDecumQBOakKObBcUG0wLXco2Xi3skffUh
 Q64zl7X9+wFBqrGJIMU3buLW8mdXVg1rHPwTV4sQ5O2JhlDe7gYCWMOUjJeK/EgBBy8u
 M3oLHMsAxPB4lY9TQCvbDY1X4c6vslANvGrxc=
Subject: Re: [Intel-gfx] [PATCH 15/16] drm/i915/gem: Distinguish each object
 type
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBPY3QgMjIsIDIwMTkgYXQgMDM6MzA6MTNQTSArMDEwMCwgTWF0dGhldyBBdWxkIHdy
b3RlOgo+IE9uIE1vbiwgMjEgT2N0IDIwMTkgYXQgMDk6MDMsIENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPiB3cm90ZToKPiA+Cj4gPiBTZXBhcmF0ZSBlYWNoIG9iamVjdCBj
bGFzcyBpbnRvIGEgc2VwYXJhdGUgbG9jayB0eXBlIHRvIGF2b2lkIGxvY2tkZXAKPiA+IGNyb3Nz
LWNvbnRhbWluYXRpb24gYmV0d2VlbiBwYXRocyAoaS5lLiB1c2VycHRyISkuCj4gPgo+ID4gU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBD
YzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IAo+IEFzIHBlciB0aGUg
ZXhwbGFuYXRpb24geW91IGdhdmUgb24gSVJDLCBtYWtlcyBzZW5zZS4KPiBSZXZpZXdlZC1ieTog
TWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgoKSXQgd291bGQgYmUgcmVhbGx5
IGxvdmVseSBpZiBzdWNoIGV4cGxhbmF0aW9ucyB3b3VsZCBtYWtlIGl0IGZyb20KZXBoZW1lcmFs
IGlyYyBvbnRvIHNvbWV0aGluZyBtb3JlIHBlcm1hbmVudCBsaWtlIG1haWxpbmcgbGlzdHMsIG9y
IGV2ZW4KYmV0dGVyLCBjb21taXQgbWVzc2FnZXMgOi0pCgpTbywgd2h5IGRvIHdlIG5lZWQgdGhp
cz8KCkknbSB3b25kZXJpbmcgc2luY2UgYXNpZGUgZnJvbSB1c2VycHRyIHdlJ2xsIGhhdmUgdG8g
dW5pZnkgaG93IGxvY2tpbmcgZm9yCmJvIHdvcmtzIGxvbmdlciB0ZXJtICh3aXRoIGFsbCB0aGUg
ZG1hX2J1Zi93d19tdXRleCBzdHVmZiBnb2luZyBvbiksIG5vdAptYWtlIGl0IG1vcmUgZGlzdGlu
Y3QuCi1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENv
cnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
