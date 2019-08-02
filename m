Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D63C7FCEC
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 17:00:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6758A6EE94;
	Fri,  2 Aug 2019 15:00:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEF596EE94
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 15:00:43 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id 2so51449110vso.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 Aug 2019 08:00:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WKOTpsaC0H6CtUZ82XkheLelScDxfT3TOTmycQNNmv4=;
 b=JamfAQ3f1jEKomH3OWJhn1coIWGIozI0WtMNbGeqXEjvJtjlKMIqqsVnZZIIRxCbD+
 vELa6nACjseRba3bwX6S8g/aHjoy7nxuNUDMnj2rFHeZo+OHDD4whPW1xSA49plVskHv
 vUKJi69973W8Vlc6JI1SzF5huIBoHqPvdEaUrpgzrdWNNXjB1qO2CxO8a4oYgvsRhWKN
 vqgwmBrMw9nUnB8YIAbYPQSYjGmf5pNl41QU1fdq4T4ku6xB4eloyn+OGppGaHho0cIR
 1iq2CB5K44Fkq3uyZXd4e/kexvrzDKB43B05gYf2unyMdO24clxov0fE+1k8EZSIhExa
 Kz0A==
X-Gm-Message-State: APjAAAVkovy3hRWByXcjYSkUnr2igMibGa/Eux/HOLQqGEzdFv+/ZEf9
 WBrfdpZDzEP8nUXGNGSQJ+eW0mq2ZfhJtLAXkMYE/w==
X-Google-Smtp-Source: APXvYqySmFAhl1lN8+nqkJ4JuO9k9MVvvERM/rv6MJLVwQqN40cl3LNkFYjVus+szCfJG9CQ/vJXjyuuoEOjzUst43k=
X-Received: by 2002:a67:dc1:: with SMTP id 184mr28083167vsn.164.1564758042783; 
 Fri, 02 Aug 2019 08:00:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190730205805.3733-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190730205805.3733-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 2 Aug 2019 16:00:18 +0100
Message-ID: <CAM0jSHOZVBrPNh2s8LmNOXcfSQG1U1DnjoJd0rr8ZfdfUNPetQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=WKOTpsaC0H6CtUZ82XkheLelScDxfT3TOTmycQNNmv4=;
 b=HbVkcgro8KfS3sMK6IW3n2MJDYkSuaJRlrpXnfhIXO+A+r/6jQaXIXWNxPddOgPnMe
 9xE15+odgEtBE0dfQJ1PGLYoe9ofgWHzgAb2Lp4dunzweDC9B+YEFCPLEdGOwSVp0Lql
 PmawNyMeuzxNeCdQq3Xp8TiHEGgPFMmHXBeaMnU5gy7Fdd+VAWMmrE8a3zaIaENPsrG4
 pAd+Iihh0mt9nqOcKHADVlw2Or8pBvzhtSjyrsGThRdjou4tK9LqzZ/tLqh7ExeOU2U0
 Q80i75pgrtZaA26M5/FX5poTsY4Fo1ugk5XG6iHCj//IICbxeLooyrZwjn3IVUIzeZrx
 dXow==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Report resv_obj allocation failure
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

T24gVHVlLCAzMCBKdWwgMjAxOSBhdCAyMTo1OCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gU2luY2UgY29tbWl0IDY0ZDZjNTAwYTM4NCAoImRybS9p
OTE1OiBHZW5lcmFsaXNlIEdQVSBhY3Rpdml0eQo+IHRyYWNraW5nIiksIHdlIGhhdmUgYmVlbiBw
cmVwYXJlZCBmb3IgaTkxNV92bWFfbW92ZV90b19hY3RpdmUoKSB0byBmYWlsLgo+IFdlIGNhbiB0
YWtlIGFkdmFudGFnZSBvZiB0aGlzIHRvIHJlcG9ydCB0aGUgZmFpbHVyZSBmb3IgYWxsb2NhdGlu
ZyB0aGUKPiBzaGFyZWQtZmVuY2Ugc2xvdCBpbiB0aGUgcmVzZXJ2YXRpb25fb2JqZWN0Lgo+Cj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJl
dmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
