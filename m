Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03442E1C44
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 15:21:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B5D26EAA9;
	Wed, 23 Oct 2019 13:21:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C8EA6EAA8
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 13:21:26 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id y3so21105307ljj.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 06:21:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Tmx5gEhg/rV15X62Y7TZ1CogrmbBsOoHsWDyD7ZEELM=;
 b=qr7Psbyuxu89RZyt7m3190gz6Su5VqYS/amnmWC6wMh830FRdl3CW0PbL+LxxDhlvx
 WYe7DDGoT0M+ej3yFXsOs2c+tMwHux+S1MCMvPVDpWB5oXiRWvNag0gdkMgETJmyWr+O
 CTFhTp0RqrR6nyypLwHGQn4S78EC6L9DILnq72JlV0XwtLQGq/kbnfanzbldHt69HTbS
 uX9Ksivh4UbYijRtT4kcmA/+5CqFAW8p/YWcsyFuHoWgiNlf4aant2rTA50hUV6BaNm4
 vdklFruvRAFcMvOoupIi+GPZjRyOq6nT5U7kmUnFqeYeXF3Af/KTFvtwvI0pXj8yciZA
 NdvA==
X-Gm-Message-State: APjAAAWohJNmL1VZn12rrSF/OfM4A3S+ZZxZwhfnGOQDrKkVqb1kgNWY
 j5fK3KvfWO2enu9x2dwZl5cj0w==
X-Google-Smtp-Source: APXvYqxovozIKcFB/iwVUR0Jq4TIkN06naNvK43Tktje8kUYfpkVfLxHu1Iax9zW7MeG3W34+OAn7A==
X-Received: by 2002:a2e:9e1a:: with SMTP id e26mr22257044ljk.17.1571836884568; 
 Wed, 23 Oct 2019 06:21:24 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id t8sm9289994lfc.80.2019.10.23.06.21.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 23 Oct 2019 06:21:24 -0700 (PDT)
To: Jani Nikula <jani.nikula@intel.com>, linux-kernel@vger.kernel.org
References: <20191023131308.9420-1-jani.nikula@intel.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <ab199f9a-844b-47e5-b643-2bf35316d5ef@rasmusvillemoes.dk>
Date: Wed, 23 Oct 2019 15:21:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191023131308.9420-1-jani.nikula@intel.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Tmx5gEhg/rV15X62Y7TZ1CogrmbBsOoHsWDyD7ZEELM=;
 b=EYQtMpA57tbRW2i4nVgg8fEUUiSniwZ4tVsaPAjqV3Cq1fcyb92kXhh+xAYwJsowf0
 QBVHcFpoiyAblEAT+06FrDcnHhyHx7XzYYmuASb68k3puobXIn/6YhJQl1PdnsnmXuwX
 VfghGmoxyB2tWhyTrb8v9iyBfb72ZPN7v5keo=
Subject: Re: [Intel-gfx] [PATCH v4] string-choice: add yesno(), onoff(),
 enableddisabled(), plural() helpers
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
Cc: linux-usb@vger.kernel.org, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Julia Lawall <julia.lawall@lip6.fr>,
 Vishal Kulkarni <vishal@chelsio.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjMvMTAvMjAxOSAxNS4xMywgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gVGhlIGtlcm5lbCBoYXMg
cGxlbnR5IG9mIHRlcm5hcnkgb3BlcmF0b3JzIHRvIGNob29zZSBiZXR3ZWVuIGNvbnN0YW50Cj4g
c3RyaW5ncywgc3VjaCBhcyBjb25kaXRpb24gPyAieWVzIiA6ICJubyIsIGFzIHdlbGwgYXMgdmFs
dWUgPT0gMSA/ICIiIDoKPiAicyI6Cj4gCj4gCj4gdjQ6IE1hc3NhZ2VkIGNvbW1pdCBtZXNzYWdl
IGFib3V0IHNwYWNlIHNhdmluZ3MgdG8gbWFrZSBpdCBsZXNzIGZsdWZmeQo+IGJhc2VkIG9uIFJh
c211cycgZmVlZGJhY2suCgpUaGFua3MsIGl0IGxvb2tzIGdvb2QgdG8gbWUuIEZXSVcsCgpBY2tl
ZC1ieTogUmFzbXVzIFZpbGxlbW9lcyA8bGludXhAcmFzbXVzdmlsbGVtb2VzLmRrPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
