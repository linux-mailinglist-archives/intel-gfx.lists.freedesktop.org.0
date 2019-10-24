Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6484DE2B8C
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 09:57:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C94446E0CC;
	Thu, 24 Oct 2019 07:57:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com
 [IPv6:2a00:1450:4864:20::142])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1E3C6E13A
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 07:57:03 +0000 (UTC)
Received: by mail-lf1-x142.google.com with SMTP id u16so18316913lfq.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 00:57:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=k3oPwwXbd7aVpRc6mBG49c0derbL+ABsS83WbajBnnw=;
 b=GBcTBYTp3umyqRTziYvLyYtyft2GqFZ7G3mp2sI5JPnc/4U5Hw1g74NpRb+IS8UPrV
 fAieZrxGOjbNj/jx9R6DU+eEwlH5bGK3f+UlWhBgfLvm0Xr7933BkV1Zxi50s3I43W/M
 /aaYgcrzQsEJy4TPwzJN5NUmt39zQyhJLV2rSOANr7wGpk1ey0PTAtqjTA2s0fb8P+LH
 ZPN/l1/Yych+wO+sFUjHrlqUQy5GntNUxNNjSIYBThHtLW8a849MUBY233Vsom4XgpuA
 65H02DCtsMu9ooCLH9C+PF7wigA7sW6EsH5zArWZ9VrhSkv1krv53/u98DF4cA26rjQu
 oLdg==
X-Gm-Message-State: APjAAAUl0ek41obIwqicyBz2O3O7HVjK89up4ce5HGQoCLFF6V9TFHcu
 jgAZn5eM4frz7mhzZJ18VnmrzA==
X-Google-Smtp-Source: APXvYqyDWxfhIyP/h3s0Oi6ErhsqhkZHAZBagsFf5qH/cpxvtKTTFtgwYnDOPtqZTw3woyGFBLgpuw==
X-Received: by 2002:ac2:5ec2:: with SMTP id d2mr9235070lfq.112.1571903822235; 
 Thu, 24 Oct 2019 00:57:02 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id e8sm8739712ljf.1.2019.10.24.00.57.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 24 Oct 2019 00:57:01 -0700 (PDT)
To: Andrew Morton <akpm@linux-foundation.org>,
 Jani Nikula <jani.nikula@intel.com>
References: <20191023131308.9420-1-jani.nikula@intel.com>
 <20191023155619.43e0013f0c8c673a5c508c1e@linux-foundation.org>
 <18589470-c428-f4c8-6e3e-c8cfed3ad6e0@rasmusvillemoes.dk>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <26bc9c97-363b-2a07-8338-e3fdc576ce68@rasmusvillemoes.dk>
Date: Thu, 24 Oct 2019 09:57:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <18589470-c428-f4c8-6e3e-c8cfed3ad6e0@rasmusvillemoes.dk>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=k3oPwwXbd7aVpRc6mBG49c0derbL+ABsS83WbajBnnw=;
 b=bzZWVk1xf3C9Ge+H3fkjakaR/mYMcxx2L27X/iVa2ADAj8YO0NmKGyQENunfk67bSo
 A/Im4Lh6qWQl5euFpS1xIDgwzN1hBwLC6m3nD4Ra9JQaXHtEY8zHvRjrexwE3tFOS4QE
 zrI7roAbGySgX/PGnKZNHY7qZ6M6BwFbTLwec=
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
Cc: linux-usb@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@lip6.fr>,
 Vishal Kulkarni <vishal@chelsio.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjQvMTAvMjAxOSAwOS40MCwgUmFzbXVzIFZpbGxlbW9lcyB3cm90ZToKCj4gY29sdW1uLiBN
YXliZSB5b3VyIGNvbXBpbGVyIGRvZXNuJ3QgZG8gc3RyaW5nIGxpdGVyYWwgbWVyZ2luZyAoc2lu
Y2UgdGhlCj4gbGlua2VyIGRvZXMgaXQgYW55d2F5KSwgc28geW91ciAucm9kYXRhLnN0cjEuMSBt
aWdodCBjb250YWluIHNldmVyYWwKPiBjb3BpZXMgb2YgInllcyIgYW5kICJubyIsIGJ1dCB0aGV5
IHNob3VsZG4ndCByZWFsbHkgYmUgY291bnRlZC4KClNvcnJ5LCB0aGF0J3Mgb2YgY291cnNlIG5v
bnNlbnNlIC0gdGhlIHN0cmluZ3Mgb25seSBhcHBlYXIgb25jZSBpbiB0aGUKVFUgKGluc2lkZSB0
aGUgc3RhdGljIGlubGluZSBmdW5jdGlvbiksIHNvIGdjYyBtdXN0IHRyZWF0IHRoZW0gYWxsIGFz
CnRoZSBzYW1lIG9iamVjdCAtIGFzIG9wcG9zZWQgdG8gdGhlIGNhc2Ugd2hlcmUgdGhlIGltcGxl
bWVudGF0aW9uIHdhcwoKI2RlZmluZSB5ZXNubyh4KSAoKHgpID8gInllcyIgOiAibm8iKQoKU28g
dGhhdCBjYW4ndCBleHBsYWluIHdoeSB5b3Ugc2F3IGEgc21hbGxlciB0ZXh0IHNlZ21lbnQgdXNp
bmcgdGhlIE9PTAp2ZXJzaW9uLgoKUmFzbXVzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
