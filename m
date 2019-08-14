Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCD38DB49
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 19:24:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 065516E798;
	Wed, 14 Aug 2019 17:24:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33F9E6E798
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 17:24:20 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id x19so104651009eda.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 10:24:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=T3esLEuHvcHBDKeS44Dlxzgj16ZGe90Wnaw14SiLC6E=;
 b=Xex1SelrBUToPiYObKq2uMGHdVpi64kVCKN+r7LecgTCcfsuLs1NvNiqmvcKm4jjI5
 3yALJJvz2m6ZjODaSLr2on3AYbmAmjbT95BQ9642BTQxYMFtlJvg1/llJWBubpseB4uQ
 UcZAYm9OPuTuOzQ4DURBYkC2SYIpVyGYpcdCksuYTD5ZHUPNRvEgS/NptEcTihnwk9J1
 l8M7HmP4tunx26MS3F11HApPsboS1WRtz92ArKWI0os7kGFsYnQdQ4CLTyxzt0dSDSms
 bVpBfy69UDeKmmsda5iZ0+VlSXp4kBnXWDt8uTwx0A3ZXr1fWRjlKSe5UwAULCjA6TSr
 PpBg==
X-Gm-Message-State: APjAAAVkSxQDbP0pXQ24a3f7vYkjI/aqHhIKYoHZY850RNUaRaFRfhL9
 9mqDXStS49mjmGRDg6Vp28Bq8g==
X-Google-Smtp-Source: APXvYqxnSM2oBc0b/HZFh2/UJm5weJKUxzZHuzDZdcLlO5+ialydTPWw0kXkytQ0nR4G9r1rM2Pssg==
X-Received: by 2002:a17:906:6bd4:: with SMTP id
 t20mr634986ejs.294.1565803458771; 
 Wed, 14 Aug 2019 10:24:18 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id oh24sm31281ejb.35.2019.08.14.10.24.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 10:24:18 -0700 (PDT)
Date: Wed, 14 Aug 2019 19:24:15 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sasha Levin <sashal@kernel.org>
Message-ID: <20190814172415.GN7444@phenom.ffwll.local>
References: <20190812154247.20508-1-chris@chris-wilson.co.uk>
 <20190812190548.450CF20684@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812190548.450CF20684@mail.kernel.org>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=T3esLEuHvcHBDKeS44Dlxzgj16ZGe90Wnaw14SiLC6E=;
 b=CqqMWX3gUNMnm4h8mhKJO+3gyrAbIK/Q8ElN6LwKqSQinmE3OvInDx6wzXjqiM2ndX
 /A0wWOLdTfc6+pmlAODlL9seeB3uDEdoE8MgK5uYYn66tpmIyREpKrkhYDZPj6W5emwL
 oJJGHxlCKvH6BCOEenRMUgzHGUYf84ThYAjG0=
Subject: Re: [Intel-gfx] [PATCH] dma-buf/sw_sync: Synchronize signal vs
 syncpt free
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
Cc: Gustavo Padovan <gustavo@padovan.org>, intel-gfx@lists.freedesktop.org,
 stable@vger.kernel.org, Sean Paul <seanpaul@chromium.org>,
 dri-devel@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgU2FzaGEsCgpPbiBNb24sIEF1ZyAxMiwgMjAxOSBhdCAwNzowNTo0N1BNICswMDAwLCBTYXNo
YSBMZXZpbiB3cm90ZToKPiBIaSwKPiAKPiBbVGhpcyBpcyBhbiBhdXRvbWF0ZWQgZW1haWxdCj4g
Cj4gVGhpcyBjb21taXQgaGFzIGJlZW4gcHJvY2Vzc2VkIGJlY2F1c2UgaXQgY29udGFpbnMgYSAi
Rml4ZXM6IiB0YWcsCj4gZml4aW5nIGNvbW1pdDogZDM4NjJlNDRkYWE3IGRtYS1idWYvc3ctc3lu
YzogRml4IGxvY2tpbmcgYXJvdW5kIHN5bmNfdGltZWxpbmUgbGlzdHMuCj4gCj4gVGhlIGJvdCBo
YXMgdGVzdGVkIHRoZSBmb2xsb3dpbmcgdHJlZXM6IHY1LjIuOCwgdjQuMTkuNjYsIHY0LjE0LjEz
OCwgdjQuOS4xODkuCj4gCj4gdjUuMi44OiBCdWlsZCBPSyEKPiB2NC4xOS42NjogQnVpbGQgT0sh
Cj4gdjQuMTQuMTM4OiBCdWlsZCBPSyEKPiB2NC45LjE4OTogRmFpbGVkIHRvIGFwcGx5ISBQb3Nz
aWJsZSBkZXBlbmRlbmNpZXM6Cj4gICAgIFVuYWJsZSB0byBjYWxjdWxhdGUKPiAKPiAKPiBOT1RF
OiBUaGUgcGF0Y2ggd2lsbCBub3QgYmUgcXVldWVkIHRvIHN0YWJsZSB0cmVlcyB1bnRpbCBpdCBp
cyB1cHN0cmVhbS4KPiAKPiBIb3cgc2hvdWxkIHdlIHByb2NlZWQgd2l0aCB0aGlzIHBhdGNoPwoK
VGhlIGJhY2twb3J0aW5nIGluc3RydWN0aW9uIGhhcyBhbiBleHBsaWNpdCAjIHY0LjE0KyBpbiB0
aGVyZSwgc28gZmFpbHVyZQp0byBhcHBseSB0byBvbGRlciBrZXJuZWxzIGlzIGV4cGVjdGVkLgoK
Q2FuIHlvdSBwZXJoYXBzIHRlYWNoIHRoaXMgdHJpY2sgdG8geW91ciBzY3JpcHQgcGVyaGFwcz8g
SWlyYyB3ZSdyZSB1c2luZwp0aGUgb2ZmaWNpYWwgZm9ybWF0IGV2ZW4uCi1EYW5pZWwKLS0gCkRh
bmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9i
bG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
