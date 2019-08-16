Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3858FFB3
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 12:06:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BC106E2CE;
	Fri, 16 Aug 2019 10:06:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE0976E2CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 10:06:30 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id m23so1854325uaq.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 03:06:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y+lvKmyHThDm+JGniEHEKgCpM0ckbxPoQbdT98NKvQs=;
 b=n64usDEBBBaOvRbZX/GALOL0bRdOGY7IGZ2S9Ca6YmlB4aPBUiZVsuIHnm5paNDYsG
 uOmKhnABppvDUgy3fzbUu5fc+5SBLexClbDoRGpb5Db2RSrAEFKDq2vuDbeZniNhx/P6
 t2nREcHbpzJBBRmx3EMQkdHncYX8f5RKKb+GiKVl2uVOHw8JbuQHVPz53kjMJXw9wId5
 5W3zPIS6gZfzS4WuHksEdxZ9IDoPOiGeC3dvqqq1pjoh1WhXWAJmyImP1ipzYTYlFsER
 C8SaJBvnE0ZISaJAODtP72a0xh5/VuCYa5Icdnk236SOCkiwghQjv/PcUkrZyBvSUQRA
 9KUg==
X-Gm-Message-State: APjAAAUxLvvbH2QplKdyParYAexodfR58aDJuEn/TQEz+eJVrLBizh3u
 ezRlIbmi460hgN03Jz7wTkUae8mn6xnRoRkT93UuoA==
X-Google-Smtp-Source: APXvYqzFZtkSeylIe7GNATI/62fyG+AkIe43ucONmAgI8tTunoU3KTH8/f03ACZvgE/UOyb/t4qYF+UE4smIihe4A6I=
X-Received: by 2002:a9f:2903:: with SMTP id t3mr220357uat.95.1565949989757;
 Fri, 16 Aug 2019 03:06:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190816083143.23558-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190816083143.23558-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 16 Aug 2019 11:06:03 +0100
Message-ID: <CAM0jSHOM0PYC_JWd8E0XxL8CeL5AzJ621qs2e_93AdGA2ArHyw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=Y+lvKmyHThDm+JGniEHEKgCpM0ckbxPoQbdT98NKvQs=;
 b=laU9hUhcgH9WnXJpXsAcBEgs+EOT5XUhp9xgGRM4q0eOZqJzNCBinLp+zORGmUzHPO
 2e0bCHSHDh4IYxmWC8yBn5jHVWgtpUj3svhWrENB5YRK21cmY+xSaCzLFQTWVizCqsCt
 CD4b1NbWGwZmqzYZOk1pOEmi1D8EKf+1+H5AtkZb8Bbh7m9Ht7z7rtWrKtqf+HVSan9h
 XP9vhj7j2ZdxoZBE32oNk1eOGn63w26A9MHoAjAkORo7HpPTEUmdg25Bc+75t0sBrWlP
 Z+nSq5sRgu6Jd66B7OIgqDvpwoDtiVpfuPX5kkwVivWZA8JIAOFElEpMoRFe+5tsEOiG
 zHzA==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use the associated uncore for the
 vm
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

T24gRnJpLCAxNiBBdWcgMjAxOSBhdCAwOTozMSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gV2Ugc3RvcmUgdGhlIGd0JnVuY29yZWUgdG8gdXNlIGlu
IHRoZSBhZGRyZXNzIHNwYWNlLCBzbyB1c2UgaXQhCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVs
ZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
