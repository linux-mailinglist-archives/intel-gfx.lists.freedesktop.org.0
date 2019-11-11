Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C228F7A77
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 19:06:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 574716E9BA;
	Mon, 11 Nov 2019 18:06:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69FF06E9BA
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 18:06:44 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id b184so8972543vsc.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 10:06:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8xt1j7KZi3o97eynFN0DqKhXZukO4xIdEeOyEcQi4yc=;
 b=CMwPGmBs5/Dytett139Ylaj2IGFQnK2nIjxX/2BhK/SiDPV3mFrcgiUY5ZJ2upETLg
 eL00aV58ASXN18XXNfGPuNJMGm85NIyrnYsAbcGPgtf59d595IXe4c/2yH4/E1M4sszK
 eGHSamSds5IwXSn8c0d34iQd5s+eOoKs8hYyy4+UcFppQrqQVZI6wMSQuH6z+B8HMD1e
 1INTo/9Jz7QB/tUQTF7bSgQlHjjjCD7oTWUTD178YxLFh3XPfzcypH1aBtH3yy9oEmVU
 AlcVwc7uG9pNeSrLt9GDQr4HdjtUUL+BOkbPIwFDOwNomOQie5JK0L6OUOEMpHbrI7xH
 9wBQ==
X-Gm-Message-State: APjAAAUYSoImbaNwhwjA4qMWx4sdiQIghXSSkk6obsp3ODNfq4jylART
 B85ddL5ZBpouwN6ljiTgFGgWez7n6hBjompbpQY=
X-Google-Smtp-Source: APXvYqysVJzbWYKizi1IeIpvULi7jm39LfDB060qJSTWvsouqMPvdwucyogeBnb8i7AM6CazLxFNwva4uEM6uh+Mlos=
X-Received: by 2002:a67:c097:: with SMTP id x23mr403467vsi.164.1573495603387; 
 Mon, 11 Nov 2019 10:06:43 -0800 (PST)
MIME-Version: 1.0
References: <20191111175809.32528-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191111175809.32528-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 11 Nov 2019 18:06:16 +0000
Message-ID: <CAM0jSHN3zzj7OC5gZLuo9o3OALobqOfU=UVZDTBYyyFTJx=FwA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=8xt1j7KZi3o97eynFN0DqKhXZukO4xIdEeOyEcQi4yc=;
 b=T9mfczjYS8U6xZ7r2ulqd4TZ4nQY+FrJmwTJtRu6u5gMXkYzGhRCiweKwBMbaADFah
 o4dZn+1MpRmRFAH5IlnIPW7DbXilVV2t/niUXgDz1V9OSwiNvWq6oDPH5szEZNRQsn8W
 cITuPJGo1FBx6REHp5I93bvUKgDubjMOQ28M28R7N0dqi6JLnqxnP9tzCK2NDvLYVD84
 Oj1dxtnq4Ae+ixubZlyHNgChLMzQa/VqjjokNJ9TofdSck/VAApHtugcaxHgpyxFF2ke
 ew5ZzdQDs+8gUUv2aYfOWRUnqUHCWfx0Wg8NHGzJCu30Kk3eBeLrmd9hqpE1a1HP9RlU
 gzgA==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Pass mem region to
 preallocated stolen
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

T24gTW9uLCAxMSBOb3YgMjAxOSBhdCAxNzo1OCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQXMgdGhlIG1lbW9yeSByZWdpb25zIGFyZSBzZXR1cCBl
YXJseSwgd2UgY2FuIHJlbHkgb24gaXRzIGV4aXN0ZW5jZSBhcwo+IHdlIHRha2VvdmVyIHRoZSBI
VyBzZXR0aW5ncyBmcm9tIEJJT1MuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRA
aW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwu
Y29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
