Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A54926D9
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 16:35:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 053B06E149;
	Mon, 19 Aug 2019 14:35:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 128EC6E149
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 14:35:40 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id r3so1301525vsr.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 07:35:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QhUXOZoJ8htv+9rL1GeRYL3V0GTlUJX4NX7nJnrW2mo=;
 b=RyXKQ9vw6HuTNJzIlcCZrGOOXvvSpIfTre1f0oolh1LWCot8w5gP50eivmdZELTVRP
 09V2fYkENlkmcNd33PPTplAid0dp5UfB6n4t8WEjjDPK40JdtMVA7mdw/nY/mIc5P9tG
 Ij9xucoUC66Nr2UakvkYc/FYIca4TumsoJrH/H+K9X4Wi61QCdfFaoIwLwVPDjS1PdQE
 7wkGd7On7Qw6H6vFp97Kk1RAGR0TNwjRLqdT+JweSE6cKGm7O4Nv52EQyKv/RReLyVhu
 /ASNV2trKVteYZHo0vlQsW5kvaDb6f0zftcARtCZS1v52aSYsglWsb8BpUIS5m7Kz5tC
 CtZA==
X-Gm-Message-State: APjAAAXV1QXiE0UUz1BeXLV7EuOj/gN39QHTREqxseoTDY9/x3c6XOe3
 N4QKgTNF2V86zdGTuJohMwDwwF14BA3VbLf+CcGMig==
X-Google-Smtp-Source: APXvYqx5ycmlXkMuZGIetwdc3HTsHObYPOvU3hnouuUaX65Q4zB4mtkoERglrEJtUQc1NApSNuwEITrUE4xCskApRN4=
X-Received: by 2002:a67:1c87:: with SMTP id c129mr1046321vsc.23.1566225338948; 
 Mon, 19 Aug 2019 07:35:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190819075835.20065-1-chris@chris-wilson.co.uk>
 <20190819075835.20065-6-chris@chris-wilson.co.uk>
In-Reply-To: <20190819075835.20065-6-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 19 Aug 2019 15:35:12 +0100
Message-ID: <CAM0jSHOZOZ3cmY5qn1vGUzz=Q1UGZ6y3wdzrzsO9pS-sdPS+KQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=QhUXOZoJ8htv+9rL1GeRYL3V0GTlUJX4NX7nJnrW2mo=;
 b=jgSwpMHGO9f42T9PqDMyuMmtOXSf1X4r4oMOqd+4oUw/DRakl9DghHANIiKjjJrOuG
 rnMkyPkTqW1wpMI5ttrYqVE6+pYrSfNnS7I1kzUElAqeUngyr6BvfrverHQa9KWdI/1f
 ZkDoi894jBgoFwEwWks2ataL/0clRGilpg0jfblwuSmNgTx3eX1tNCvP5J9RncyGhwPS
 yRhpuCDMnImXmRccACpBvh5xOOG4WN51Gp5ob8WRJdR94n6gdlH6buVkk+rREkIZ2KNK
 uTrqOdTT9wU4O6ynRRhJc9QfvAjDEZGbRgHJevxsKqS9utFSIm8W40BArZRwMCe3nOv+
 c4EA==
Subject: Re: [Intel-gfx] [PATCH 05/18] drm/i915: i915_active.retire() is
 optional
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

T24gTW9uLCAxOSBBdWcgMjAxOSBhdCAwODo1OSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQ2hlY2sgdGhhdCBpOTE1X2FjdGl2ZS5yZXRpcmUoKSBl
eGlzdHMgYmVmb3JlIGNhbGxpbmcuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhl
dy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
