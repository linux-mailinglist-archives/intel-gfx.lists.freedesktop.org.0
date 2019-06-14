Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F16BE45850
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 11:12:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71871895B9;
	Fri, 14 Jun 2019 09:12:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9368895B9
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 09:12:27 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id l20so1332384vsp.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 02:12:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6Kp1bfyqIMhHLgV15GS2n2TR6T8fmWe3i2d9qjyOHgs=;
 b=Nwo/nnYiTHTjAwjiWXtBSmFnEHBuJv/yjP1u4+B+6Zv8bm2WSV+/4bcQCwiXIvVGIS
 xnWLHKs275Be/c6gOxYfXZebtr75LdtO2nPefYXXEyGxfZgoZFOktRIcytOjE9BMGFfA
 Db9fo/APQnmVqFJ3gYRZ5Y8TaVUmXkox+NRgEMRbmTQDaZPJ3W27LChUktazbEvXyrK1
 DLLaDx8zA0+k3Xq9gEFgkvssQ+A1Dj5OZMB3svmfQAGyUGIQE9JUVU1NcpyeHGbElMso
 MNBKQZJ17lOJC7l3QE/UvE6FV1EbfIwEivJcBfhrQ6MFc8JzgZgJkjWgCgX5szKtIAtz
 MrUA==
X-Gm-Message-State: APjAAAX1x2GxqrwBwYE5h2kklvokwr7VbBBNEXlC2FRdAO97+pREtFW0
 MkIMcQ0zs75XznkW6CTUSRT3K4MNMlskrkMM680=
X-Google-Smtp-Source: APXvYqwNJ7tL8ndWM/TzBEJKX+txlIJwEztFy2LZfUjOysxB4FvT7rk0w+xTgz337ssaqd6M1tVTE1xbVfsNxH3JRWI=
X-Received: by 2002:a67:8042:: with SMTP id b63mr27032616vsd.23.1560503546783; 
 Fri, 14 Jun 2019 02:12:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
 <20190614071023.17929-2-chris@chris-wilson.co.uk>
In-Reply-To: <20190614071023.17929-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 14 Jun 2019 10:12:00 +0100
Message-ID: <CAM0jSHOO_FUsWo_LiDdw1HUBTfhAKJT3o-c3SydpiivSX7B4xg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=6Kp1bfyqIMhHLgV15GS2n2TR6T8fmWe3i2d9qjyOHgs=;
 b=bMtqb+259+aR5Ymmn94bWtJ6TY3ZCLAXILoTAm15id5gfruODvcSb9cVLBgqMqcLkg
 xr4LQ9i6Ht4Q+LXfd1N8jNAOYcHOPDPcB25qhdlBDbzoxachv3hBVfTuwLQ5rzwBgn8O
 NAkYn6K/dA2lf5ZW86auzxNm7lDON9XykXYsJQ17fYmbmT7hwoYJOixRZJg4481n9Poi
 DlxfYhgN8DcV+uRXElJLx4zpog9pr9e7OMuKCBV1ufcs3+lNOU4qSwtDhHQ4M5QbkTmy
 5vO3ahkmBs30loNpZJtCWm7yceLB98S8XevLT9BbbU2a/Wf5ID1+ex5LCTi/n4EGloOY
 bpmQ==
Subject: Re: [Intel-gfx] [PATCH 01/39] drm/i915: Discard some redundant
 cache domain flushes
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

T24gRnJpLCAxNCBKdW4gMjAxOSBhdCAwODoxMSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gU2luY2UgY29tbWl0IGE2NzlmNThkMDUxMCAoImRybS9p
OTE1OiBGbHVzaCBwYWdlcyBvbiBhY3F1aXNpdGlvbiIpLCB3ZQo+IGZsdXNoIG9iamVjdHMgb24g
YWNxdWlyZSB0aGVpciBwYWdlcyBhbmQgYXMgc3VjaCB3aGVuIHdlIGNyZWF0ZSBhbgoKYWNxdWly
aW5nCgo+IG9iamVjdCBmb3IgdGhlIHB1cnBvc2Ugb2Ygd3JpdGluZyBpbnRvIGl0LCB3ZSBkbyBu
b3QgbmVlZCB0byBtYW51YWxseQo+IGZsdXNoLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQg
PG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
