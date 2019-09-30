Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5142C234D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 16:31:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E820189293;
	Mon, 30 Sep 2019 14:31:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B696D89293
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 14:31:06 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id d1so9695387ljl.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 07:31:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zBL7epC00p9U9++zGccJDAwUuYYIfHYJAHuYq0NGhKI=;
 b=Z0278QfpQFjA/I9nIEEmi8Qn6PmNmHsYFPCyRfDI0Cksa9wQLe2reM5NaAUFr4q266
 6ocD9o9QvgE8Ou1vx16TJhE3ywVHooNgMjGfI5qby9oUhrqed/V/J0mkDtg86tsDuacq
 gSnwGzXyuJyE5/xP+6bF9r4GxihuVgy/Vnug7jFDmJVfvZTa9uXpLJqMEtwJ0FKaDEC5
 MNYPTG0Fanad8bEiOtOk/FB4gDsPSBNdfVJk4Gm8U7xJKtZq7rqjfdlR1Xqo6Ja3fob/
 aKIpr/n/W6fDKlPh1Hv6Hkc+XHlxZ7/uIQto1BlTBKeF1My6r4DGyWIGHXTAJDLIDxzJ
 L6qA==
X-Gm-Message-State: APjAAAWHQnj9o8FYx7KCDmzBMCzXaSAAsVUkmwSELI46ZUjjUcp4kFij
 vpl+WGRiMHsRyWqg77b9TgMeJxMFepM1kQKd
X-Google-Smtp-Source: APXvYqyIcLy55HB3x/wsB1A7V+gCME1VE6tR84DBLqOOAZkx1QX/h9HdcAKeuQHRVXy8LcRSx7k+/A==
X-Received: by 2002:a2e:8ec6:: with SMTP id e6mr12257813ljl.231.1569853864490; 
 Mon, 30 Sep 2019 07:31:04 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id q11sm3301932lje.52.2019.09.30.07.31.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 30 Sep 2019 07:31:03 -0700 (PDT)
To: Jani Nikula <jani.nikula@intel.com>, linux-kernel@vger.kernel.org
References: <20190930141842.15075-1-jani.nikula@intel.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <8e697984-03b5-44f3-304e-42d303724eaa@rasmusvillemoes.dk>
Date: Mon, 30 Sep 2019 16:31:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190930141842.15075-1-jani.nikula@intel.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=zBL7epC00p9U9++zGccJDAwUuYYIfHYJAHuYq0NGhKI=;
 b=Ke+Nx55iXZQfZSHRoqDLY786VnrQjJgoe/GD/uOlYu8+tDQ9EAUgLcqHGlUm6BTKpb
 WX5654MwqqZ+4GZEY92XR6gll89SPNvhOQD60cXDcMBMQxuvCBnI/oi+9OcSMb9YhvVR
 U2f3yCuw6i91i3dKrEsYVFk1FGdpYawZKGy0M=
Subject: Re: [Intel-gfx] [PATCH v2] lib/string-choice: add yesno(), onoff(),
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

T24gMzAvMDkvMjAxOSAxNi4xOCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gVGhlIGtlcm5lbCBoYXMg
cGxlbnR5IG9mIHRlcm5hcnkgb3BlcmF0b3JzIHRvIGNob29zZSBiZXR3ZWVuIGNvbnN0YW50Cj4g
c3RyaW5ncywgc3VjaCBhcyBjb25kaXRpb24gPyAieWVzIiA6ICJubyIsIGFzIHdlbGwgYXMgdmFs
dWUgPT0gMSA/ICIiIDoKPiAicyI6Cj4gCj4gCj4gLS0tCj4gCj4gdjI6IGFkZCBzdHJpbmctY2hv
aWNlLltjaF0gdG8gbm90IGNsdXR0ZXIga2VybmVsLmggYW5kIHRvIGFjdHVhbGx5IHNhdmUKPiBz
cGFjZSBvbiBzdHJpbmcgY29uc3RhbnRzLgo+IAo+ICtFWFBPUlRfU1lNQk9MKGVuYWJsZWRkaXNh
YmxlZCk7Cj4gKwo+ICtjb25zdCBjaGFyICpwbHVyYWwobG9uZyB2KQo+ICt7Cj4gKwlyZXR1cm4g
diA9PSAxID8gIiIgOiAicyI7Cj4gK30KPiArRVhQT1JUX1NZTUJPTChwbHVyYWwpOwo+IAoKClNh
eSB3aGF0PyBJJ2xsIGJldCB5b3UgYSBiZWVyIHRoYXQgdGhpcyBpcyBhIG5ldCBsb3NzOiBZb3Un
cmUgYWRkaW5nCmh1bmRyZWRzIG9mIGJ5dGVzIG9mIGV4cG9ydCBzeW1ib2wgb3ZlcmhlYWQsIHBs
dXMgZm9yY2luZyBnY2MgdG8gZW1pdAphY3R1YWwgY2FsbHMgYXQgdGhlIGNhbGwgc2l0ZXMsIHdp
dGggYWxsIHRoZSByZWdpc3RlciBzYXZpbmcvcmVzdG9yaW5nCnRoYXQgaW1wbGllcy4KClBsZWFz
ZSBqdXN0IGRvIHRoaXMgYXMgc3RhdGljIGlubGluZXMuIEFzIEkgc2FpZCwgdGhlIGxpbmtlciBp
cwpwZXJmZWN0bHkgY2FwYWJsZSBvZiBtZXJnaW5nIHN0cmluZyBsaXRlcmFscyBhY3Jvc3MgdHJh
bnNsYXRpb24gdW5pdHMKKGJ1dCBvZiBjb3Vyc2Ugbm90IGJldHdlZW4gdm1saW51eCBhbmQgbW9k
dWxlcyksIHNvIGFueSBidWlsdC1pbiBjb2RlCnRoYXQgdXNlcyB0aG9zZSBoZWxwZXJzIChvciBv
cGVuLWNvZGVzIHRoZW0sIGRvZXNuJ3QgbWF0dGVyKSB3aWxsCmF1dG9tYXRpY2FsbHkgc2hhcmUg
dGhvc2UgbGl0ZXJhbHMuCgpSYXNtdXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
