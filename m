Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA39CFD5B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 17:16:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 757786E831;
	Tue,  8 Oct 2019 15:16:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40E486E831
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 15:16:39 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id w195so11517130vsw.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Oct 2019 08:16:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I4H5WiJfA3tK32WKu6z+c1VhT2wN0rsNI8GnVYkPr3Y=;
 b=m9XgpXY4VjFmziqdQBH2dkRX0jixx7KvFs5FvSePpb3rmkrsyPtbNOjgzP2u1uLJ2Q
 JVbOXzAR60mRg68NV95Ojr+2CfBzUzWTWZmIs23tRFm7TWCfkWGne81TbKWCCf9kDb6P
 yq6WLxRmCyqyuk9Os3o6AnvnjQg3oFCfFwztEBNLlprHeA6yQ16MV8MPjj3Ef5QcDR9P
 uNHDnvztPufcc2bfRMlMKg/3FA2RdAUbxIe/OyomIbVO8UUNCyJSejU8qAoeEcQF5NxZ
 cTvcIBLfdfpZW4a9Em3tizmdIjD5lqXEUXN0LPEs0W6+RE+158r9NIe3AS0Mi1oO+mi0
 K3Ow==
X-Gm-Message-State: APjAAAXAJpwJCAYnuulaNQ6CMiYK1ePtPSMvcBgFu3jTt/6P98tpB0jo
 9rnta3e7e6SE2zH53lIuhE/V2e8AwFhnuZJl+ifuWUEe
X-Google-Smtp-Source: APXvYqxTVQFj5BWiVNAgxuec9lsZKdgjhHKvpSHwVe3yMCM2dHrgLmyIKI0Wdm2/PLeFm+vCgGdDabgRl5LeQg0shs0=
X-Received: by 2002:a67:c018:: with SMTP id v24mr19108360vsi.23.1570547798137; 
 Tue, 08 Oct 2019 08:16:38 -0700 (PDT)
MIME-Version: 1.0
References: <20191008145045.23157-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191008145045.23157-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 8 Oct 2019 16:16:11 +0100
Message-ID: <CAM0jSHN+fGB8xyUDxFFiNT7iZmpYYh=nDb9djHYZw7tYq-oaGw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=I4H5WiJfA3tK32WKu6z+c1VhT2wN0rsNI8GnVYkPr3Y=;
 b=kAqatF01N25ROx2NdxA2lpTIz3j5laeLaU70kn9v7tZQK6lGQA/lGO9A2nBfmKf9WM
 pZ8nPum3+CUBiiVDZ8oG72F92pk8SE+eZzGGCXSUfUDn8q5tcF1EaSLgq/kMcQ8Hx0Ts
 O0coOQ4ckqVdMZ3+na7meC7g93qkvTbUip0MejmC69gmyns3pKxupoktODksdvuyTYD+
 xCkEK33KakrLHLzIlDcFVBkaRvrWaoE7sSOr9l8eijzsfAdTluEfoegV8dDomPZxfgvu
 /v/SDSQXzKey2JhgIXAn/UX5GD0osYBCKYw70Sn75u7sflXmh4S2KXIL2Js7oPcdlGXx
 c8Qg==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Assign the
 intel_runtime_pm pointer for mock_uncore
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

T24gVHVlLCA4IE9jdCAyMDE5IGF0IDE1OjUwLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBDb3VwbGUgdXAgb3VyIG1vY2tfdW5jb3JlIHRvIGtub3cg
YWJvdXQgdGhlIGZha2UgZ2xvYmFsIGRldmljZSBhbmQgaXRzCj4gcnVudGltZSBwb3dlcm1hbmFn
ZW1lbnQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LndpbGxpYW0uYXVsZEBnbWFpbC5j
b20+CgpUaGFua3MsClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcud2lsbGlhbS5h
dWxkQGdtYWlsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
