Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E81692BF2A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 08:17:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D36989B95;
	Tue, 28 May 2019 06:17:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com
 [IPv6:2a00:1450:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5E8389B68
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 06:17:00 +0000 (UTC)
Received: by mail-lf1-x141.google.com with SMTP id a25so3718167lfg.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 23:17:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BWtD8B5AoLXyUNUAp8iNQQwN1DwwnJaVZ5aKCSiblCY=;
 b=qj5vT4z3QsBWkSTf0Wz7YXu8fx1Bmj8G4+S5SbmLTjV4Zmjj8e595TMSnhvnjaoMpT
 lnrjoSsnx6OhKor2litm8j2e1X5LuLx3oN1GRdYaIXTUWX9IppDOZaGD5K1zJaKNcdHK
 UMNYQwGgOTCfDLw3uvmv7l8XPwnMEl0onKo0rhzLMAYsn4gHvb7/Qgq7deioZM3wGs9m
 7ZNhuyg1vSOOn/oaGypWMD81urWcBIU+YP0ejV9wLXkAaeEtiobtDCILXskKrNINHgpq
 r9e6hBqrVQUDUCO/q6/K3Tb2tGVsMBlM7QAIIQB0yo+ciBxCGu+jFr0liCs76NxkjbeK
 VCnQ==
X-Gm-Message-State: APjAAAWAgkqLhiS76s2omT3qZGfUD/XdoajO2JxENcXyBqckbWf+4DKn
 4bqt83dtgufC0ME7AAP60YpHoSOeEi1rig4iV/NqHA==
X-Google-Smtp-Source: APXvYqxCh//v38fFGfUQsg5VRhIuqV5mMzHiENkjZG39h81lE1a1COYA/jgEFIELxDloPd8yJmz+5SEHbglfmyCN5ms=
X-Received: by 2002:ac2:429a:: with SMTP id m26mr2868415lfh.152.1559024219140; 
 Mon, 27 May 2019 23:16:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190526180532.1641-1-sam@ravnborg.org>
 <20190526180532.1641-2-sam@ravnborg.org>
In-Reply-To: <20190526180532.1641-2-sam@ravnborg.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 May 2019 08:16:47 +0200
Message-ID: <CACRpkdYsx7_7ZG-=y6_jemg98LmfanRGeK2bcVzAYvei8Baq_Q@mail.gmail.com>
To: Sam Ravnborg <sam@ravnborg.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=BWtD8B5AoLXyUNUAp8iNQQwN1DwwnJaVZ5aKCSiblCY=;
 b=Wj68hmaEHbFBAdBkGER/ZVgnw/cr+0ICsAedRruI2K+3/Rku+6te9EE9jvE73F2hvp
 zUpoluf9IIFUTjV4grWTww3VspXlDMoHCy9759iMrZnz5XZjpRD0Tt6WkNyvkxjQDyUx
 4P1jD196G42BQHD4BDjV3IUObZOxxmN5fGcVToJJSx1R5l+GCqn1WndVGlOmO383E+UA
 RGbbeQ1hr+z2lz0yANVCVpd9MWA+lFhqzIlCIpXzK0IaXug8Txrq/biKOrNQVsCoAyBb
 Y8MuNDhD61vAboejh4hGw+ENrU/f5lj5HwqXBshCREVa+BtN1YR36tgPpHeATfCztmqq
 SlgQ==
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/panel: panel-innolux: drop
 unused variable
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
Cc: Stefan Mavrodiev <stefan@olimex.com>, David Airlie <airlied@linux.ie>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCBNYXkgMjYsIDIwMTkgYXQgODowNSBQTSBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9y
Zy5vcmc+IHdyb3RlOgoKPiBUaGUgbnVtX3N1cHBsaWVzIHZhcmlhYmxlIGlzIG5vdCB1c2VkLCBk
ZWxldGUgaXQuCj4gQnVpbGQgdGVzdGVkLgo+Cj4gU2lnbmVkLW9mZi1ieTogU2FtIFJhdm5ib3Jn
IDxzYW1AcmF2bmJvcmcub3JnPgo+IENjOiBUaGllcnJ5IFJlZGluZyA8dGhpZXJyeS5yZWRpbmdA
Z21haWwuY29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+Cj4gQ2M6IERh
bmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KClJldmlld2VkLWJ5OiBMaW51cyBXYWxsZWlq
IDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+CgpZb3VycywKTGludXMgV2FsbGVpagpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
