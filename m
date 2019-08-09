Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D66882DF
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 20:47:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B90D6EE7F;
	Fri,  9 Aug 2019 18:47:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com
 [IPv6:2607:f8b0:4864:20::944])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9B1E6EE7F
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 18:47:29 +0000 (UTC)
Received: by mail-ua1-x944.google.com with SMTP id j8so38054322uan.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 09 Aug 2019 11:47:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hvM3NNhwGMvvfx2MkO3/MD3iVuNxF0JxJmKT+PwR5W4=;
 b=cNPTPN493oFPV8PhrRNHjO9I44+7ngo2OI47TpjuXM3buDSqIJ898uU+6AiKl83IMe
 S68numWDS+zyqJIMVWuHEkZJtSy0HQ2XS0lb6beY/iGzBaM+M2fGXQJD0j21KJWCz4UG
 FVm+gNbadgK6TXNKyItjHFPSIHsbolpB7tSuzrrYIHevistFZ4Nx5wdepL4E77SRK1zC
 yVqchbfTG5E+4GYP5VnRDRrlJ8yNvQy4yFva8vaMu8BtzUpV9tdZXcx7HACN9x5dPd7/
 GPGHaegRv50aYr6IUeBEbkYG6UoAfs5bVALxbGui0wkvI4mEkObeSdgss/exnLGGOxKw
 2iWg==
X-Gm-Message-State: APjAAAVO38fMXzfb48JPKMIJ3rN/2devrZxmY+SOn/EvUGoDBUZfpgRD
 pcGsXig3qBSe44H+9J0ck5rmsr5cEOfkTMnOcp8=
X-Google-Smtp-Source: APXvYqwNUvZ4tnZE9Es0itFcZvDe8vvnYLoMxGxU87idwaNvgZecJqPAN9crbxDKWeXxjDKCOPx4blroSe5rCFlGgXw=
X-Received: by 2002:ab0:4108:: with SMTP id j8mr14248017uad.104.1565376448875; 
 Fri, 09 Aug 2019 11:47:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190808172226.18306-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190808172226.18306-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 9 Aug 2019 19:47:02 +0100
Message-ID: <CAM0jSHP0BZJyJO3JeMqPDK=eYhS-Az6i6fGFz1tUQgaErA7mfA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=hvM3NNhwGMvvfx2MkO3/MD3iVuNxF0JxJmKT+PwR5W4=;
 b=PTqDgTfJDI6Ddsg4uDOHOgkzKF5/hMMju2mgUT5LWN/QtY3UlV+Emsr5Gsq0+5Aiyk
 a5B/DizHQFb3ToCirXCgirmD2ZL/kujDPSeRwLFuHFxseSmIjVeQTtFGq+7KKngtRQME
 4fTt39ovBiycauq1jhnjSYvQLxj8m7SLQfRwddnOwSWWczWOpiMbmp7t/bHwpNeSRc9A
 mFQQSyUtW74/eTrUGjKQzl5KBGXvUam+SfiDeg1vfoIDSqavsAW5HcQgatUjUA+RhH/b
 4nrKK01T3GAGEY/r4AWLwlxPfjzV8hrVBpqpDBOd3wR4ZhL/8seT2Tkzlbxakk5qdc5m
 YYgA==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Stop reconfiguring our shmemfs
 mountpoint
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
 Hugh Dickins <hughd@google.com>, kernel list <linux-kernel@vger.kernel.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Matthew Auld <matthew.auld@intel.com>, Sedat Dilek <sedat.dilek@gmail.com>,
 linux-fsdevel@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCA4IEF1ZyAyMDE5IGF0IDE4OjIzLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBUaGUgZmlsZXN5c3RlbSByZWNvbmZpZ3VyZSBBUEkgaXMg
dW5kZXJnb2luZyBhIHRyYW5zaXRpb24sIGJyZWFraW5nIG91cgo+IGN1cnJlbnQgY29kZS4gQXMg
d2Ugb25seSBzZXQgdGhlIGRlZmF1bHQgb3B0aW9ucywgd2UgY2FuIHNpbXBseSByZW1vdmUKPiB0
aGUgY2FsbCB0byBzX29wLT5yZW1vdW50X2ZzKCkuIEluIHRoZSBmdXR1cmUsIHdoZW4gSFcgcGVy
bWl0cywgd2UgY2FuCj4gdHJ5IHJlLWVuYWJsaW5nIGh1Z2UgcGFnZSBzdXBwb3J0LCBhbGJlaXQg
YXMgc3VnZ2VzdGVkIHdpdGggbmV3IHBlci1maWxlCj4gY29udHJvbHMuCj4KPiBSZXBvcnRlZC1i
eTogU2VyZ2V5IFNlbm96aGF0c2t5IDxzZXJnZXkuc2Vub3poYXRza3lAZ21haWwuY29tPgo+IFJl
cG9ydGVkLWJ5OiBTZWRhdCBEaWxlayA8c2VkYXQuZGlsZWtAZ21haWwuY29tPgo+IFN1Z2dlc3Rl
ZC1ieTogSHVnaCBEaWNraW5zIDxodWdoZEBnb29nbGUuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNYXR0aGV3IEF1bGQg
PG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IEh1Z2ggRGlja2lucyA8aHVnaGRAZ29vZ2xl
LmNvbT4KPiBDYzogQWwgVmlybyA8dmlyb0B6ZW5pdi5saW51eC5vcmcudWs+Cj4gQ2M6IFNlcmdl
eSBTZW5vemhhdHNreSA8c2VyZ2V5LnNlbm96aGF0c2t5QGdtYWlsLmNvbT4KUmV2aWV3ZWQtYnk6
IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
