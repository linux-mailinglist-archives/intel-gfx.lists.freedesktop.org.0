Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DED29864A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 23:10:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13676EA13;
	Wed, 21 Aug 2019 21:10:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4C866EA13
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 21:10:40 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id b187so2379900vsc.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 14:10:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yedD0uiExkZvyeEnVfaPpCHhvHcuQpS7+W/8hTJdaL4=;
 b=OME3Pq1n4H2qe4QKcoAP/a15yLgVNYIr9TdY/KEzuwVEm+yduhXwQrHiM9J1Rf/thi
 fa1cSg1nw8++9AaZW7Eyt/dpQ/rx7al45jsy3OeZYLNz8+j0fRfbHah0FfamHmTmCXN6
 v/7y2mlLQQ0G6cbu0RMcjofg194EcOfrKiU9L71kkdrCFT3Dfsd4eFO/Iurz29BwBWN3
 wsPOQx0NA3Op6hU9f4P9Kgl69tPF/oxFFBKXjOQZWVFvjdoKRBWo3LKoZmk/ToSFLtlY
 a9trdt3lqECjKcG3yAXQBSyA6dUCSQAR/1zKEAW/qDE/w9KCQ/EOz9Vi6LupT4FcPpaK
 4tXw==
X-Gm-Message-State: APjAAAVS9GQyp7/TZtjjV0D1QDvD0xZvko3JLHjArBwQOjQpDdfjbcKx
 d43v1XZeoDaLctfQApeBfMJNpSr+UbBM9KQh6XY=
X-Google-Smtp-Source: APXvYqzPYl6uWifLEpSiiLf8X0AH7hteKDetjNcYFGbCKM3/5oVtVkUvd89xUXDujOHSyhr9DvGEMT3QwFUmoFgZS4A=
X-Received: by 2002:a67:fe4e:: with SMTP id m14mr2600313vsr.34.1566421839826; 
 Wed, 21 Aug 2019 14:10:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190821193851.18232-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190821193851.18232-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 21 Aug 2019 22:10:13 +0100
Message-ID: <CAM0jSHN4rFMkjPf2kqt5yHnDtnCovaoeMSnZDyXHND_EsMeGPA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=yedD0uiExkZvyeEnVfaPpCHhvHcuQpS7+W/8hTJdaL4=;
 b=sVT6ChTydGsL/hnr76LmRUuX5WDKAIKOzdjftLvrTyKqTLVMGXsUqUTpPEEVrrAxRV
 0R5XvS5nz4JPnkwlm22Qjq6FgKk5rR0uwd6k8rlZYn8+RePi/HUfFMntlWzVa/R/fbBX
 ymblVo+MPUjwpP7w4EJEqGQTEzViQRdcXJG1x2Y2UUHwWHhE4QJFpxwbxVbB83jENNUk
 zRpa+zo3X6VkJhDReckLSASGRJN/1pN02DM5+C/d7RWDfCb0+ug2MgHBB0LtZEn8NWI3
 KyozeldBJaeUV/P/a8D8+2jfE+8pg0jm7mh7kRexKK5hh1rfMkbPy5sv5BpWkYs+yKK5
 t61g==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Fixup a couple of
 missing serialisation with vma
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

T24gV2VkLCAyMSBBdWcgMjAxOSBhdCAyMDozOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gSW4gY29tbWl0IDcwZDY4OTRkMTQ1NiAoImRybS9pOTE1
OiBTZXJpYWxpemUgYWdhaW5zdCB2bWEgbW92ZXMiKQo+IEkgbWFuYWdlZCB0byBtaXNzIGEgY291
cGxlIG9mIGk5MTVfdm1hX21vdmVfdG9fYWN0aXZlKCkgdGhhdCBoYWQgbm90Cj4gc2VyaWFsaXNl
ZCBhZ2FpbnN0IGFuIGFzeW5jIHZtYSBwaW5uaW5nLiBBZGQgdGhlIG1pc3NpbmcKPiBpOTE1X3Jl
cXVlc3RfYXdhaXQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29t
PgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
