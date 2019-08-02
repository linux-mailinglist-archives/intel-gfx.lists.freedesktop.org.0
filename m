Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E2B7FF12
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 19:01:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CFB96EEF0;
	Fri,  2 Aug 2019 17:01:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 121AA6EEF0
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 17:01:17 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id u3so51727394vsh.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 Aug 2019 10:01:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fzlk8lKY5UE5lGyLucUs5qhPm1/kM3IbFZkaMrN1gy8=;
 b=m4Uk2/TH8jmwZO7KIp8eMEA+JSpToDqoybT+Ktm029Idf88FkslbczYYWPse/4wK98
 ej/SbE+fmyb4gvzvUTVPuTKOiKWqEVR+Ug6aevf7jVeBrtDKgkfmo7Gh3S1stn+I2iEQ
 +Y5GOY0efb1wp5LDDFvCD/inJNvchmW7VE1Ni578vn4epq6phyMVZZAk6KqJRrHaew3Y
 3qjz/zB8JhBOGdbveursedqQUN3zmyOkMykoHG866wVUyohwpf6NV9EAcOXCx0pismJP
 XSK9XflZE0UL5l3eFVTyZyXOw8U4GaTcESyzl+Qh3/FcuRrQb6EjT6e3pogPcR/iLQUK
 DijA==
X-Gm-Message-State: APjAAAWmvoUei7paLXFtubQMqXT8SXU/orvAhqgaZng6yJW3cmxHEHHj
 a7VjHrKkoAuHrkGZXKvgjc0+DTLSPptofsTmO5CsMg==
X-Google-Smtp-Source: APXvYqyYDw3auuU6j2P3zPjk9KFhte7BeW3oONTlAvcdJLM9GVHn5vGetCwe8QONYseAh1b5ZP6rqKGgOloxNYFerEs=
X-Received: by 2002:a67:8042:: with SMTP id b63mr91096110vsd.23.1564765276039; 
 Fri, 02 Aug 2019 10:01:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190730133035.1977-1-chris@chris-wilson.co.uk>
 <20190730133035.1977-16-chris@chris-wilson.co.uk>
In-Reply-To: <20190730133035.1977-16-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 2 Aug 2019 18:00:51 +0100
Message-ID: <CAM0jSHPztTa-K-7zjBSVGZy3sFy8F-EoqhgoL14R3x05SRTN=g@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=Fzlk8lKY5UE5lGyLucUs5qhPm1/kM3IbFZkaMrN1gy8=;
 b=sRwCWTEA+CetTwZiBwbRngCkkpsqQoAP7w1t/JbreFYGbGCBTSu4a7lIUUhY2/1mrp
 j5pSqv8sTzt0MwjHv3JeG1oRbf8Pt1QParMzkHDJPYhfpzgF8klNBZSXqGAM9jJikVGN
 ErbZRvxd9IIFlud7iTS7Gt0II58Hjxr+WBDVrXGztdDiFyB3NGs32wbevxXBlfQW2DWS
 JkoJ2MZgNd2Z/MHtuzqFrmnkLiHUOIQxKMZjh4YYAaAx/tYTN0XukaJ1oz+KXXH3MpUE
 znnprarzYx64/ngjuaGC2HjGWhMdbKUI9FxikGYJkuxNfJZfhtI9Ug4YpOTKrnOJpejS
 V99A==
Subject: Re: [Intel-gfx] [PATCH 15/17] drm/i915: Flush the freed object list
 on file close
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

T24gVHVlLCAzMCBKdWwgMjAxOSBhdCAxNDo0OCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+CgpJbiBuZWVkIG9mIGEgcHJvcGVyIGNvbW1pdCBtZXNzYWdl
LgoKUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
