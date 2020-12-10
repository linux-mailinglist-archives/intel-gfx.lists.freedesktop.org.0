Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC622D4F37
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 01:11:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0881D6E0A6;
	Thu, 10 Dec 2020 00:10:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB6B46E0A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 00:10:38 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id c5so8860wrp.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Dec 2020 16:10:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=k0X9tVrr3ALRLqc3XsfE4/97fd5RqRfpjLALkLyCiZM=;
 b=oKR5EqK0KhXbOJMZuAgFEgwAmyPq5HaG3U1mn8/UTNIHu8RMXmU+oGZ7LnNyzWFR1r
 41pury7eNZDrqO92JCjJlniwbIfxeHORykNL6Ht2HUP3xZlqdEB25qPBaMOvdM7iT6TT
 iov00NRhvp3At81ICDSMYaXoV8jd1OJjRHT1lk/9Kn46VOmCfG44/pFZrcXuDfNQqZJi
 BXQCDCLzn5Qb1MJZrund74Os5gL64C/BWswEJlcZp1Aj6FcWG9GLgu5gNggvZgQ/MMJb
 Zjtzj0NezS7p6Rga75WEyb0tR2AIXfkoW69SAqBysnLLwlSuUVFI/CclD8zhscbAejsL
 cLBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=k0X9tVrr3ALRLqc3XsfE4/97fd5RqRfpjLALkLyCiZM=;
 b=WhskCJFpEbt+IXq9kyCzvvDjdQYGuSojv+fQY4RHUHxRJlj6juNQF4Pxfuh7YY7uAf
 in1vitz+5pvIkt5HA+Loaj5y+RE/yBRCk1vK8BxvES1DwlFv8mnQmzi0ap5NZj5Ufkx5
 Wf6ZGfWAvcN/WvqQbR8SIBl76p/g7P0Y2DQW/0OAe/5i4iLR41gNPh6/Jc2INYY+4w1V
 fwkaVGVxo1KnqCOiXIud+nZvAfkjcD/FYy6eaKs/Hjyix6ZKoaBWS6omqzSigYRcg3T/
 lFC18xM+kQdw1yxh8yEZQDHIKbKw7HKthaAva1EUx2Gfs4Okm+M8AmwQsFJmuMWswzvX
 4BNQ==
X-Gm-Message-State: AOAM532Gqqnn5klqiEOV+ApXLyvWH6sEN9oXzrS56WuP6cd68SlNlO6E
 jBZ+VzEQ0sFQq3TdkVZCEdoA5beo8djLYpE60Hf1HTn9UFE=
X-Google-Smtp-Source: ABdhPJzM4HXwb9Qt6nrZXPSvDxGrmqUQGR6JFpk8OF0Wk/hlztMZDc6b7UWPHHKCowa5XzlcWwHtrfTsjReuxtP4WyM=
X-Received: by 2002:adf:f74e:: with SMTP id z14mr5463543wrp.146.1607559037153; 
 Wed, 09 Dec 2020 16:10:37 -0800 (PST)
MIME-Version: 1.0
References: <20201209005152.18172-1-airlied@gmail.com>
 <X9C5d28Cel8ftYz6@intel.com>
In-Reply-To: <X9C5d28Cel8ftYz6@intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 10 Dec 2020 10:10:24 +1000
Message-ID: <CAPM=9tz0vUypA-vJP1wRCHk6sZP_sCLuh5cqD3fc4QYY-hcU+Q@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: refactor cursor code out of
 i915_display.c
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCA5IERlYyAyMDIwIGF0IDIxOjQ4LCBWaWxsZSBTeXJqw6Rsw6QKPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IE9uIFdlZCwgRGVjIDA5LCAyMDIwIGF0IDEw
OjUxOjUyQU0gKzEwMDAsIERhdmUgQWlybGllIHdyb3RlOgo+ID4gRnJvbTogRGF2ZSBBaXJsaWUg
PGFpcmxpZWRAcmVkaGF0LmNvbT4KPiA+Cj4gPiBUaGlzIGZpbGUgaXMgYSBtb25zdGVyLCBsZXQn
cyBzdGFydCBzaW1wbGUsIHRoZSBjdXJzb3IgcGxhbmUgY29kZQo+ID4gc2VlbXMgcHJldHR5IHN0
YW5kYWxvbmUsIGFuZCBzcGxpdHMgb3V0IGVhc2lseSBlbm91Z2guCj4KPiBJcyB0aGlzIGRpZmZl
cmVudCBmcm9tCj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy84Mzcw
NC8gPwoKU2hvdWxkbid0IGJlIHRvbyBtdWNoLCBJIHRob3VnaHQgSSB3YXMgb25seSBnb2luZyB0
byBoYXZlIHRpbWUgZm9yIG9uZQpjbGVhbnVwLCBidXQgdGhlbiBkZWNpZGVkIHRvIGtlZXAgZ29p
bmcgOi1QCgpEYXZlLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
