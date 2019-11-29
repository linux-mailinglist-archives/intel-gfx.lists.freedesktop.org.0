Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C5710DA96
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 21:30:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D26566E994;
	Fri, 29 Nov 2019 20:30:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFFF26E998
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 20:30:11 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id b11so15295963wmj.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 12:30:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xsYT5lMEF+x8inV5EK6Q/hgm20RbjUJUPe9EzYmEaa0=;
 b=Rl9uG0GRmvdq6V7EiQ+OD6LU8OvT4RpADdkEoyZ+p9f/bpIfVNLCn2stOXe2DShK5V
 VwURyJenm1KxpBK1+HQWNL16Q/ZOtxId2VV2GcVGugGz1jkwFxVhhDl8/NszL5+r/4tW
 7uqmA6Mt8MBqdAY/79579mantl6AUdPpmiE1hgx3utbE5WtJyUkYRiBUDG2eTux1yDaW
 U/EFQKDMDoigye7fzn2mG7b5MwD3fo6u4LGbuNgE8HiNaxyWTT2larxfwJZn7FS19t/U
 s2LNAKQDp18cR7TSQe95yJSIjFYEbGzzcEUkob+qOIZoTUYZUk6sFZPRRuKaRUzTxaD6
 wWVw==
X-Gm-Message-State: APjAAAXwrX1DqHkj/6wEygluOrg45/2Qe6lJ1Bmkj208mP7i8HW3MPFz
 +uZimNVQHS3GmAUu9Iw93Wo5og==
X-Google-Smtp-Source: APXvYqzJOztkRm1kwVy9FHEMusVGRjzr9oBrfa/YqQaHG3axAj84vRsSqbnDq+ajtpY9cXXMq9Ay7g==
X-Received: by 2002:a7b:cc8b:: with SMTP id p11mr16709271wma.38.1575059410403; 
 Fri, 29 Nov 2019 12:30:10 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id s19sm10360892wmc.4.2019.11.29.12.30.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 12:30:09 -0800 (PST)
Date: Fri, 29 Nov 2019 21:30:07 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Message-ID: <20191129203007.GV624164@phenom.ffwll.local>
References: <cover.1575022735.git.jani.nikula@intel.com>
 <94a33cf0a587e803bcadcf80e8152eac9b196f34.1575022735.git.jani.nikula@intel.com>
 <20191129152424.GG624164@phenom.ffwll.local>
 <CANiq72kRGg1AZHC-pR_uKykMxmcMPM2+qbXVPVQhHrZRzu723Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANiq72kRGg1AZHC-pR_uKykMxmcMPM2+qbXVPVQhHrZRzu723Q@mail.gmail.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xsYT5lMEF+x8inV5EK6Q/hgm20RbjUJUPe9EzYmEaa0=;
 b=lpBVcQxlQWKQlwPnqQn+b4vO/UTKXtp4LuAdhVs1O7y9n6TPwmgND034kKipTpduKr
 7EPSb7daq9j0RmY33ikvf/DWB6DVm6b9To9GctfErQ2TswXvS9imMT1y3BbUJgC4hMaK
 qCcYEf3t0ATUTHdniddf8RMFrzALNO4VE0ZqE=
Subject: Re: [Intel-gfx] [PATCH v2 14/14] auxdisplay: constify fb ops
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
Cc: linux-fbdev@vger.kernel.org, Jani Nikula <jani.nikula@intel.com>,
 Robin van der Gracht <robin@protonic.nl>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMjksIDIwMTkgYXQgMDk6MTY6NDJQTSArMDEwMCwgTWlndWVsIE9qZWRhIHdy
b3RlOgo+IE9uIEZyaSwgTm92IDI5LCAyMDE5IGF0IDQ6MjQgUE0gRGFuaWVsIFZldHRlciA8ZGFu
aWVsQGZmd2xsLmNoPiB3cm90ZToKPiA+Cj4gPiBPaCwgYW5vdGhlciBkaXNwbGF5IHN1YnN5c3Rl
bT8gSW50cmlndWluZyAuLi4KPiA+Cj4gPiBSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBmZndsbC5jaD4KPiAKPiBJdCBpcyBpbnRlbmRlZCBmb3IgZGlzcGxheXMgdGhh
dCBhcmUgbm90IGludGVuZGVkIGFzIHRoZSB1c3VhbC9tYWluCj4gZGlzcGxheSwgZS5nLiB2ZXJ5
IHNtYWxsIExDRHMgOikKCldlbGwgd2UgZG8gaGF2ZSB2ZXJ5IHNtYWxsIGxjZCBkaXNwbGF5IGRy
aXZlcnMgaW4gZHJtLCBhbmQgYmVmb3JlIHRoYXQgaW4KZmJkZXYuIEFuZCB5b3UgaGF2ZSBhIGZi
ZGV2IGZyYW1lYnVmZmVyIGRyaXZlciBpbiB0aGVyZSwgd2hpY2ggbG9va3MgYSBiaXQKbWlzcGxh
Y2VkIC4uLgoKQWZhaXVpIHlvdSBhbHNvIGhhdmUgc29tZSBldmVuIHRpbmllciBsY2QgZHJpdmVy
cyB3aGVyZSB5b3UgZG9uJ3QgYWRkcmVzcwpwaXhlbHMsIGJ1dCBqdXN0IGRpcmVjdGx5IHVwbG9h
ZCB0ZXh0LCBhbmQgdGhvc2Ugb2J2aW91c2x5IGRvbid0IGZpdCBpbnRvCmRybS9mYmRldiB3b3Js
ZC4gQnV0IGFueXRoaW5nIHdoZXJlIHlvdSBjYW4gYWRkcmVzcyBwaXhlbHMgdmVyeSBtdWNoIGRv
ZXMuCi1EYW5pZWwKCj4gCj4gUmV2aWV3ZWQtYnk6IE1pZ3VlbCBPamVkYSA8bWlndWVsLm9qZWRh
LnNhbmRvbmlzQGdtYWlsLmNvbT4KPiAKPiBDaGVlcnMsCj4gTWlndWVsCgotLSAKRGFuaWVsIFZl
dHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3
bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
