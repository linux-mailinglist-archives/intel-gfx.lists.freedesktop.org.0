Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAAC19DCF0
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 19:40:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB3D46EC4D;
	Fri,  3 Apr 2020 17:40:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com
 [IPv6:2a00:1450:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 440AB6EC4C
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 17:40:40 +0000 (UTC)
Received: by mail-lj1-x243.google.com with SMTP id q19so7757248ljp.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 10:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=g8RDp4K/dvB2DqCHMRGbTSsNwhQ5/+cJi1oXxVKrFmo=;
 b=eJDAk22lU0U43+noNq5RI+b9wJ/eeRQ5ayIssbySEwBKkkU2Xc0ITvRjqwBS3oDMq3
 s/R8V1/PIGo8eIiasd54u17oVrxZXeE9br7fp3IbDcath4ZE/C43zSZvoEV0hjUHVguo
 znMWWYquyR/igp1jniYjgBcRDDG8wATCksRLAdAJ3thss/waz8NgQJKCaSUc5nYyD8c5
 +WH17tMRBJFU21n1hpKlu1XqbDF3ySjX1fWNFL6pNuSPNj2XYndTTCMRG51p+dir0csP
 XWQxuFLIJickNO5wRM6Q68EFrRgNmXaYK7M2Y69HVOd6Q7CEiVYJfG2gjKAWcVkP9n8e
 wO8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=g8RDp4K/dvB2DqCHMRGbTSsNwhQ5/+cJi1oXxVKrFmo=;
 b=hoJ2rTFJMYos5N/zLEQesHP7CGww2IAnR0ueKTSWo8Q1Ud1Athhm16uG56/aLzIaKd
 WdQ2vzlRlYI/usBdktRa2dONY/GTI+YKQkrsfxWdP1AEjSAIh+yN1rBB+B3z2NefkXkC
 C8LwtTQiLFMEk87g+Gy1s9GRdMvjHpyg3ONG4hihrhAsD7VXyo9sLBJDMoNXVQMEFt/8
 1SdVtfwRUQJWc+63iNUceQeAbhp5a7n0KrVlgbf9ZzO4Fa2CediS6RMEiFofIU+kJu5m
 +iBIOqpuOndbVDfYo3t5CMJpHp/8gFDiJl+Jf8/QM0uFRsp6cxiMPbEV+4RjexZxp44D
 /pbA==
X-Gm-Message-State: AGi0PuapVX9EjqXpHd+JyMKdtMCSa0yRqgxdHUQmu8QBPHWFfgJGaNkE
 pGjG78aQneQKF2cI0iWQwDsul/Th4xALOMNzmzb6ZQ==
X-Google-Smtp-Source: APiQypL6K9C9KAf8cM322y1wwt4cNClW2SqIJKNy9zZasiFHLXr2fQImDnC3nKrTguc+/KhPtos1Rb5wODUejqSrD8Q=
X-Received: by 2002:a2e:a176:: with SMTP id u22mr5595232ljl.84.1585935638718; 
 Fri, 03 Apr 2020 10:40:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
 <20200403135828.2542770-41-daniel.vetter@ffwll.ch>
In-Reply-To: <20200403135828.2542770-41-daniel.vetter@ffwll.ch>
From: Eric Anholt <eric@anholt.net>
Date: Fri, 3 Apr 2020 10:40:27 -0700
Message-ID: <CADaigPWZ9LHOoOPAX442nrXE2rdko04fHsJkuZcgdraicge6zQ@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 40/44] drm/cirrus: Don't use
 drm_device->dev_private
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org,
 =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Dave Airlie <airlied@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBcHIgMywgMjAyMCBhdCA2OjU5IEFNIERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+Cj4gVXBjYXN0aW5nIHVzaW5nIGEgY29udGFpbmVyX29mIG1h
Y3JvIGlzIG1vcmUgdHlwZXNhZmUsIGZhc3RlciBhbmQKPiBlYXNpZXIgZm9yIHRoZSBjb21waWxl
ciB0byBvcHRpbWl6ZS4KPgo+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52
ZXR0ZXJAaW50ZWwuY29tPgo+IENjOiBEYXZlIEFpcmxpZSA8YWlybGllZEByZWRoYXQuY29tPgo+
IENjOiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4KPiBDYzogRGFuaWVsIFZldHRl
ciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiBDYzogIk5vcmFsZiBUcsO4bm5lcyIgPG5vcmFs
ZkB0cm9ubmVzLm9yZz4KPiBDYzogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgoKQWNr
ZWQtYnk6IEVyaWMgQW5ob2x0IDxlcmljQGFuaG9sdC5uZXQ+Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
