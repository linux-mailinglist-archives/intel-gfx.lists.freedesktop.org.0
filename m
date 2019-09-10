Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85434AF21A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 21:57:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D7EE6E98D;
	Tue, 10 Sep 2019 19:57:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B73376E98D
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 19:57:15 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id b25so3840332vkk.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 12:57:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fHYSfKWi2kFCcTh7TrDW8AImosKJCnPWyoVj7t/8pnc=;
 b=X+j9A7FmNoSXH71S2XW7BD+8nCmPpRwIZfHzNRn6hBNthIu0v+fEYKPWDdwEWFbiqg
 0WYZOrNkrqU92TJPEXj/iVJojSsUyvCqwSYF00QieIonvl7ov3vAksnEW9nXKA2ydj9Q
 CT6ZgvqPMaaWwqCSVV5DzUY8jHOiKD8X5Y+FposRVtZk1slh15wNHw2TJ4XWe0T/G2zP
 oHySTOGbUm2hhnVHNrOQYI9PIXmE7c+jksfYavEiCPPWWzuxrVfDMOLlmNxl78/2sLtQ
 Gb82poSqUtgkKHxUbd18cRtnAr6w9ntzebzZEQdDuKW17fDUlhFn/LT5SSc5Mktijn6d
 pP0g==
X-Gm-Message-State: APjAAAW4BvSRco5D5dIIGtF/hUNwOmNeu5p/sbd4bwwzC20v05JXrqet
 MJS3lm2xPbOi8tQ9YoV/hdBhiVO18eGvRKHybD0=
X-Google-Smtp-Source: APXvYqwduZrLP9OCdsaiuah7W5JK+Xxkz5ul1iJZ+OuGH8S2vvcRNz5xkF5NxocuGOOU87afmTjYVYgUzZd3CblUVPs=
X-Received: by 2002:ac5:c80c:: with SMTP id y12mr5100508vkl.10.1568145434813; 
 Tue, 10 Sep 2019 12:57:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190910153627.22820-1-chris@chris-wilson.co.uk>
 <20190910161657.23037-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190910161657.23037-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 10 Sep 2019 20:56:48 +0100
Message-ID: <CAM0jSHPOxJmMREPrgt7onzFekGXKSWNOWaW9Q9uVHM5N5DtRWg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=fHYSfKWi2kFCcTh7TrDW8AImosKJCnPWyoVj7t/8pnc=;
 b=pjEh3MAnJ686Y8h/tVl75CaNokjMe/oqTpWxIB6Klr60Fwef1R9xVGSemuPO0gdnuN
 /RVkGXjJTloY9v74Ly7gs9ImIzobM4v/CLhQaxrO9k7k9ytztckbr5fHOcEx4EyTdKg2
 vVHOsDBbs1h6834pUSsDz2BD3PYbD/8JcVkm1OGvQuU9MTX8IE4Szpd2GIxjf0zz3J4k
 IGUD0Nls0CNjzYhifzWjDumd/V9SZTFb6rQBtX8u/SbJskrXGfIatZtpDgcZTL8Stf5y
 XBdWaS/r50dyFeYnT5vYc/MtKmHfWJ+Z+HBwK8JAAFkqz9GKMZDRw83+Nw9OxI+K6Qfj
 SpLA==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Disable rc6 for debugging
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

T24gVHVlLCAxMCBTZXAgMjAxOSBhdCAxNzoxNywgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gUmVmZXJlbmNlczogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNTkzCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eu
a3VvcHBhbGFAbGludXguaW50ZWwuY29tPgpBY2tlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3
LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
