Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6402910D3E3
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 11:22:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC0096E8AE;
	Fri, 29 Nov 2019 10:22:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E62316E8AE
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 10:22:23 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id x123so7567687vsc.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 02:22:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B7PTqFaJEzIWzgmFn1BNuwOkd1KqnOfju4H+Enmnedg=;
 b=ZMbqysvei8j5wdpYgSAqwFG2v6Tmnx1Qqgy2GLeSg2jn90OzHQwUAV/WH5XpU8bSMd
 n7R6UoL1vVWOiEe1CqhX/jTK8EVBCkkbpgGsMBOM1uEs/3o9pNMLlTIjW5lPNvStJL9i
 /mkIFmcIqEdHBkjx3iolNixuLIRqaTr0w3SQ++vv6fxmvJ7YCp1W5w+r167b8P7iCBtb
 swd4tWlYtFm1ggXMI9dAtIoY9M6uPXpNNtP9bwd6rA48I+VWCjPbs0mvEJa8Kj9q6ccB
 IbK8QS+WTNZddCJvI+tq3XMhGa2pvf/L/e+bf+fRPkejAOXf83xwGzAQlP88Rwo5CHgk
 OlIg==
X-Gm-Message-State: APjAAAXM3kuVAQvtodVg7T6ldm78DvIXpi6sul9r3r9Rui0H7OIz7rTp
 COgqLvnc3xupnfZeXkm9p4EHGEXLVoVZqmqXHDrgVw==
X-Google-Smtp-Source: APXvYqyfg4aB4FVi1ttGvzo6VGhHkRKf6ZqQfwDc5cqoXxpI1uFh0A5KMrbJGQejeHyP6Knq0G+Qet5lXJAXMSWauKk=
X-Received: by 2002:a67:2ec4:: with SMTP id
 u187mr22428918vsu.119.1575022942918; 
 Fri, 29 Nov 2019 02:22:22 -0800 (PST)
MIME-Version: 1.0
References: <20191128232946.546831-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191128232946.546831-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 29 Nov 2019 10:21:56 +0000
Message-ID: <CAM0jSHN1rj5kD2nq=VsnM0RUGa+vtQEPHppp2biBjALinkpTYA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=B7PTqFaJEzIWzgmFn1BNuwOkd1KqnOfju4H+Enmnedg=;
 b=Fesj4gPq+ilIn1mzMJ8Y+wXyTPqdgEk0TQdvSU6daA20qpwi8gXnDDBQofEYoE8202
 /y0/LGDRmIYAwcJ+9GB856DMl8XLPeCZSG8c5sofezKflqTUl9Ix5PSmv8eTzB1zsbkj
 toFOAImVo1p5D1YSMhxWjI0opY+D2GheKrWLQfQlkAMaD0ZArhKIw5zOTFwnC8fnHtm9
 /C06YB9sb44B28yE5FoO+awLuyjNXwkv7Zi4K+koV4Enzvbb+kunVf5EYxmW9QE6dXZj
 zYhN8S3/aJSWlb94Gz0NdMbAt5cvuPT7xJJqvEajXEMxIWp1ljrmFlPCEic69Rut7GrR
 LdcA==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Use sgt_iter for
 huge_pages_free
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyOCBOb3YgMjAxOSBhdCAyMzoyOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gVXNlIHRoZSBub3JtYWwgc2d0X2l0ZXIgdG8gd2FsayB0
aGUgcGFnZXMgc2NhdHRlcmxpc3Qgb24gZnJlZSBzbyB0aGF0IHdlCj4gaGFuZGxlIHRoZSBlcnJv
ciBwYXRoIGNvcnJlY3RseS4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1
bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
