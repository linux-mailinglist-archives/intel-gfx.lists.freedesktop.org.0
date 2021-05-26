Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A5E39162C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 13:31:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2C4F6EC8D;
	Wed, 26 May 2021 11:31:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 220C16EC8D
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 11:31:49 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 u5-20020a7bc0450000b02901480e40338bso3153789wmc.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 04:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=na04oW4mV9JUbUOkPBvtY3i7UUnCGjgsNBXRaPL+9HI=;
 b=kygoKcsCkhZF7xK2h2EW3cNA127jLS2NUhKSE3e+Zf8beC0blTEYuSwkSwxo451z8A
 3OKeyFUrmZbla+5W2THkUYZFKpaQK/4lCt1kZrxp5diR8oYbmmwXtyH7btcudU5Pnxpg
 WNtzcZQy+c90Uf3a5dC++gLpbplW/FJ4oU/EjBLJE5GMMWq1PUW6KVS7rVGPX1FL69cA
 mYGJUW8ghVpdUGzAauH9ZwijCQipNwgLrdiUDjPjItBHnwXW6fjqmfVmeS4CBq8KbX6F
 TgTe10Iq4hpUNcsicb11BM8o283/yQ3BXwp6TrgdYJRm8uFMVQ9lkE/jCN1xzXcMvTMR
 2l9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=na04oW4mV9JUbUOkPBvtY3i7UUnCGjgsNBXRaPL+9HI=;
 b=AJDvczclKzvP2mkv6HTSJJuMd8Gsf/nN9NPl41Somb9aL/DIBLE0wzERDv+Q/P76hn
 +b2b3j+rJ9dqetJC3NOJTC9n0lD4KgLiqQphVFZPDdO1/S9GIlOh2BVNb7oY5AkTG/oa
 42JaXFaX0EOIsm/Xxru1wsRmnuST5UPeMM3CWOiB0Krw1wXecSRu5ytMIAY0j8as/751
 ARGtfL1t7dR1E4Wdun7hEkT7gB9BCKekGSGFWG0mIUkyC8Hu93hVtEX0y6/ktEjNdDCY
 LBA81AywLov2jgSN4WfHlmdBbpr06uOe7JQeyRPGuDOxj+KgJXmvy6aog4qIk8vqF2c0
 99XA==
X-Gm-Message-State: AOAM533QhaYRRDK5NSNRvAUJJLUXYkG+aOP8j4bf/gyE8fy2eGF7W9xD
 rpqEHin5O83pAHnwQM5fdziZCyNw4tPAq9uxrZzX5A==
X-Google-Smtp-Source: ABdhPJxZkxbaszLDV15dnDg1K+a2cwS/HjXOalgpXScXxcaMPhGlWzZALL24GqXWBGoLriEZblFHox5LuNlOVUFtjD0=
X-Received: by 2002:a1c:7c03:: with SMTP id x3mr2975475wmc.168.1622028707726; 
 Wed, 26 May 2021 04:31:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210525211753.1086069-1-jason@jlekstrand.net>
 <20210525211753.1086069-6-jason@jlekstrand.net>
 <acc1737c-261d-9da5-7ea7-759063136c56@amd.com>
In-Reply-To: <acc1737c-261d-9da5-7ea7-759063136c56@amd.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 26 May 2021 12:31:36 +0100
Message-ID: <CAPj87rN_7vmmWcL1vqhvM=etaTjwts_L0vYbsgvYF0_qZw83gw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Subject: Re: [Intel-gfx] [PATCH 5/7] dma-buf: Add an API for exporting sync
 files (v11)
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Simon Ser <contact@emersion.fr>,
 Sumit Semwal <sumit.semwal@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXN0aWFuLAoKT24gV2VkLCAyNiBNYXkgMjAyMSBhdCAxMjowMiwgQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPiBBbSAyNS4wNS4yMSB1bSAy
MzoxNyBzY2hyaWViIEphc29uIEVrc3RyYW5kOgo+ID4gVGhpcyBuZXcgSU9DVEwgc29sdmVzIHRo
aXMgcHJvYmxlbSBieSBhbGxvd2luZyB1cyB0byBnZXQgYSBzbmFwc2hvdCBvZgo+ID4gdGhlIGlt
cGxpY2l0IHN5bmNocm9uaXphdGlvbiBzdGF0ZSBvZiBhIGdpdmVuIGRtYS1idWYgaW4gdGhlIGZv
cm0gb2YgYQo+ID4gc3luYyBmaWxlLiAgSXQncyBlZmZlY3RpdmVseSB0aGUgc2FtZSBhcyBhIHBv
bGwoKSBvciBJOTE1X0dFTV9XQUlUIG9ubHksCj4gPiBpbnN0ZWFkIG9mIENQVSB3YWl0aW5nIGRp
cmVjdGx5LCBpdCBlbmNhcHN1bGF0ZXMgdGhlIHdhaXQgb3BlcmF0aW9uLCBhdAo+ID4gdGhlIGN1
cnJlbnQgbW9tZW50IGluIHRpbWUsIGluIGEgc3luY19maWxlIHNvIHdlIGNhbiBjaGVjay93YWl0
IG9uIGl0Cj4gPiBsYXRlci4gIEFzIGxvbmcgYXMgdGhlIFZ1bGthbiBkcml2ZXIgZG9lcyB0aGUg
c3luY19maWxlIGV4cG9ydCBmcm9tIHRoZQo+ID4gZG1hLWJ1ZiBiZWZvcmUgd2UgcmUtaW50cm9k
dWNlIGl0IGZvciByZW5kZXJpbmcsIGl0IHdpbGwgb25seSBjb250YWluCj4gPiBmZW5jZXMgZnJv
bSB0aGUgY29tcG9zaXRvciBvciBkaXNwbGF5LiAgVGhpcyBhbGxvd3MgdG8gYWNjdXJhdGVseSB0
dXJuCj4gPiBpdCBpbnRvIGEgVmtGZW5jZSBvciBWa1NlbWFwaG9yZSB3aXRob3V0IGFueSBvdmVy
LSBzeW5jaHJvbml6YXRpb24uCj4KPiBSZWdhcmRpbmcgdGhhdCwgd2h5IGRvIHdlIGFjdHVhbGx5
IHVzZSBhIHN5bmNmaWxlIGFuZCBub3QgYSBkcm1fc3luY29iago+IGhlcmU/Cj4KPiBUaGUgbGF0
ZXIgc2hvdWxkIGJlIG11Y2ggY2xvc2VyIHRvIGEgVnVsa2FuIHRpbWVsaW5lIHNlbWFwaG9yZS4K
CkhvdyB3b3VsZCB3ZSBpbnNlcnQgYSBzeW5jb2JqK3ZhbCBpbnRvIGEgcmVzdiB0aG91Z2g/IExp
a2UsIGlmIHdlIHBhc3MKYW4gdW5tYXRlcmlhbGlzZWQgc3luY29iait2YWwgaGVyZSB0byBpbnNl
cnQgaW50byB0aGUgcmVzdiwgdGhlbiBhbgppbXBsaWNpdC1vbmx5IG1lZGlhIHVzZXIgKG9yIEtN
UykgZ29lcyB0byBzeW5jIGFnYWluc3QgdGhlIHJlc3YsIHdoYXQKaGFwcGVucz8KCkNoZWVycywK
RGFuaWVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
