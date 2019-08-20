Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A10959B6
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 10:37:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A83A96E797;
	Tue, 20 Aug 2019 08:37:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFFBD6E797
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 08:37:50 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id y62so3017809vsb.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 01:37:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YK1KM7+VL+7w5re61AMghBW9ebgUm3LGSkCvElQ8OSY=;
 b=OmNpzBEixjco16Hi9UtA+4jS/ZTpUStfPowdl4q6BaFn21lsrtH5LxiDbt0IjMbKiF
 3sXKG+NnyFmA7OGZ/4j9Y91k0z9WVsPhSQVNxOxq0ePbDLySp3XFVBK4vOnmHMjMrfI4
 Xpxfd1eCIWGDfJ6z8PAaBGjlZ+vLZ4zJsBYVpUhE6BOXNWy07sKqJEtLQ76XmfkVfHde
 JNkzPptCIbi1nKsf9suy9Mzqyqx9yFrJ6VF/RWnNVyDZg27n0kDonrOaX+gjub8Ujs3Y
 wDlZinPV4K2ri28bswCt5HXmbMQhFUmDUKiNhakpM8UQEp+Dkdqwv8dyAeBg0kMD0aPy
 4Okg==
X-Gm-Message-State: APjAAAUH2OS3AS+/pmpnic4223ZCVfnM71U/+q+Spk+yZ9qDStzKs4Ev
 z+8qh1glyGENpkEwezspKr4dI/kflgpA1/qsrkU=
X-Google-Smtp-Source: APXvYqy9Hhu4jsKGC2tOM7zUYknI/7lMgvB3sj5gEsh0iYH0M20gCM9Bbcx6oEs2BE91sYkq97bKj8yK07PoolNTgys=
X-Received: by 2002:a67:ee4f:: with SMTP id g15mr16572368vsp.164.1566290269874; 
 Tue, 20 Aug 2019 01:37:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190820080907.4665-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190820080907.4665-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 20 Aug 2019 09:37:23 +0100
Message-ID: <CAM0jSHM7cz60QM0P2DK3BQLQTZXYAbuq-ZiZQ3EKnwpjd2VNDw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=YK1KM7+VL+7w5re61AMghBW9ebgUm3LGSkCvElQ8OSY=;
 b=bTR2zV8a2BVX92sL8QfaBxFgh4NEJ3XzFWxXz4JOWoPt9JGsfnjWERpHaizF6Ca/ry
 LCaivf1Q7ouBFxZRm+hDVamYO0cBiJHCzuv22wEiZobDBro+UowMaUFwTNjD1K58J/Bu
 O5aTJouCcoH97Zlb2P4xMCTDoVa4W4CmGHR7CMP/dijyHiVxhVs2U2iAbQ+Hnii3Rulp
 BhCiGr5PH+7L4LCDlGT82N+XmZXWViVYH5JG2XRvSQEI5jaBIZ8yRULF0VKLumsqEfcX
 hQS8TEq8S3wH4OaZVuyduRgkfOLqdMiqCevJHq2sQSSKWMcfVYpiI6CfsK0c4VDjjS7G
 93BQ==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Serialize insertion into the
 file->mm.request_list
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

T24gVHVlLCAyMCBBdWcgMjAxOSBhdCAwOToyNiwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQ3VycmVudGx5LCB3ZSByZW1vdmUgdGhlIGZyb20gcGVy
LWZpbGUgcmVxdWVzdCBsaXN0IGZvciB0aHJvdHRsaW5nIGFuZAo+IHJldGlyZW1lbnQgdW5kZXIg
YSBkZWRpY2F0ZWQgc3BpbmxvY2ssIGJ1dCBpbnNlcnRpb24gaXMgZ292ZXJuZWQgYnkKPiBzdHJ1
Y3RfbXV0ZXguIFRoaXMgbmVlZHMgdG8gYmUgdGhlIHNhbWUgbG9jayBzbyB0aGF0IHRoZQo+IHJl
dGlyZW1lbnQvaW5zZXJ0aW9uIG9mIG5laWdoYm91cmluZyByZXF1ZXN0cyAoYXQgdGhlIHRhaWwp
IGRvZXNuJ3QKPiBicmVhayB0aGUgbGlzdC4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcu
YXVsZEBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBp
bnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
