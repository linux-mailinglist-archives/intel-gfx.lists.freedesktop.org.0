Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D70132A86
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 10:12:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C40E891EF;
	Mon,  3 Jun 2019 08:12:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE05A8910D
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2019 08:12:23 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id w33so25646076edb.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Jun 2019 01:12:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=bu9fRbADjbhdG6PJSniK0Rbfljbuyue27FG/YXYJsvM=;
 b=Ot4YhNIPG6I54iayNQad7PkYn7LWZqnu9cS4p+kshlK+jVGTEUb4SKYWjXyuHRQoB1
 iAO5QjIiuHKC6EYoTpg9v1O9DQuCj8SHij0aD/cHXooODvyaLv0aHLk3yJDbdXtmEgEv
 PCd34mBwBg1vF3YDC8fS+z1MKznYW84GZRuzDXMt5HWu4stumKM7ym0OpuZxUPZTgId5
 KGDHdqKGByOKdTNdcjpcbjeUJBU4qYtsX4vpQoFAFvZ2qlCfiwPfn92ySvzeyeu/NgFr
 rLCUHoFoFx63U54gZU98RiE77p/LoeZoaEbEyj7ZFKN4uCMJ4v3euiJHJYhMn2VgIm7y
 r7pw==
X-Gm-Message-State: APjAAAVM9Oj+mx0VebgyHPWKfnie3LCtRJ4HdlnVfKUhsmy6MBRzKxXo
 qur9AdrwUQudnJjMEMm41cQRhw==
X-Google-Smtp-Source: APXvYqyDRotTft0hHy2QDseBjAcP4nWYAwQQR/Jn1kend0tZc4YPtMxvLB1ApLXQ9yIkgC0FuM7Mow==
X-Received: by 2002:a05:6402:1851:: with SMTP id
 v17mr11605756edy.3.1559549542392; 
 Mon, 03 Jun 2019 01:12:22 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id j23sm1782397edq.95.2019.06.03.01.12.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 01:12:21 -0700 (PDT)
Date: Mon, 3 Jun 2019 10:12:19 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20190603081219.GH21222@phenom.ffwll.local>
References: <1559159944-21103-1-git-send-email-uma.shankar@intel.com>
 <1559159944-21103-2-git-send-email-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559159944-21103-2-git-send-email-uma.shankar@intel.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bu9fRbADjbhdG6PJSniK0Rbfljbuyue27FG/YXYJsvM=;
 b=Lm2Wf3JuF6NfS/fnrkDE762BWOISW1SFcGOlogs/Am0n1CVZgHGu8DX6rkbWhofRO9
 1dARl4gtwCnf7rHjMJ9YmSMgm1/1Qa5FYRsIJyqDJvgQBW/cETaCspGnDtsLhfGnXwQG
 0VhotYY2U0wNhyCBbmFQJFm4Tdc6C6qo1aZaU=
Subject: Re: [Intel-gfx] [PATCH 1/4] drm: Drop a redundant unused variable
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
Cc: dcastagna@chromium.org, jonas@kwiboo.se, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, seanpaul@chromium.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMzAsIDIwMTkgYXQgMDE6Mjk6MDFBTSArMDUzMCwgVW1hIFNoYW5rYXIgd3Jv
dGU6Cj4gRHJvcCBhIHJlZHVuZGFudCBhbmQgdW51c2VkIHZhcmlhYmxlICJoZHJfb3V0cHV0X21l
dGFkYXRhIiBmcm9tCj4gZHJtX2Nvbm5lY3Rvci4KPiAKPiBTdWdnZXN0ZWQtYnk6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1h
LnNoYW5rYXJAaW50ZWwuY29tPgoKRm9yIG5leHQgdGltZSBhcm91bmQ6IFBsZWFzZSBhZGQgRml4
ZXM6IGxpbmVzIHRvIGluZGljYXRlIHdoaWNoIGFscmVhZHkKbWVyZ2VkIGNvbW1pdCB5b3UncmUg
aW1wcm92aW5nLgoKUGF0Y2ggbWVyZ2VkLCB0aGFua3MuCi1EYW5pZWwKCj4gLS0tCj4gIGluY2x1
ZGUvZHJtL2RybV9jb25uZWN0b3IuaCB8IDIgLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaCBiL2lu
Y2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaAo+IGluZGV4IGY4ZjQwMDMuLjU0NzY1NjEgMTAwNjQ0
Cj4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oCj4gKysrIGIvaW5jbHVkZS9kcm0v
ZHJtX2Nvbm5lY3Rvci5oCj4gQEAgLTEyNDQsOCArMTI0NCw2IEBAIHN0cnVjdCBkcm1fY29ubmVj
dG9yIHsKPiAgCSAqLwo+ICAJc3RydWN0IGxsaXN0X25vZGUgZnJlZV9ub2RlOwo+ICAKPiAtCS8q
IEhEUiBtZXRkYXRhICovCj4gLQlzdHJ1Y3QgaGRyX291dHB1dF9tZXRhZGF0YSBoZHJfb3V0cHV0
X21ldGFkYXRhOwo+ICAJc3RydWN0IGhkcl9zaW5rX21ldGFkYXRhIGhkcl9zaW5rX21ldGFkYXRh
Owo+ICB9Owo+ICAKPiAtLSAKPiAxLjkuMQo+IAoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUg
RW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
