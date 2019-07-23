Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CAE71603
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 12:27:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F18D6E193;
	Tue, 23 Jul 2019 10:27:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D20B6E193
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 10:27:22 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id 190so28448682vsf.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 03:27:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r12ltZ0R6IpU5pfeGJiCKrUAwxYD7+v68E1DCyWjtx4=;
 b=bckuVd5cmANY9UO11DqJkTBN3MVNKTfmEQ6FZItVcTa86bOyk/ndzWVKXsm+OcdbpK
 SfLMLJoGmJhB6Ylt1m/sFtQzYJT2XSNlUmBrdY20f/rZjTK04ahuBZWTNf8kUSKBWbDW
 LfBiwM/FUNZXqN/JIB8jFsecYebsm+ZNE7NWsv6pYmu1tnPh15iEhWJ+zjUwHLEf2pQa
 i6ee1fV3AnAtdepFsCuIjS/yV8aocM1zSF1/cGN4QME4kPIuPchJGUbv5pepVC8OA3eO
 1NIR66V8RrDJ85lwojSK7YiG08XgJ87vDlKG1MWvu6qFoxf8jDrEurbIr/U1xcqTCd1c
 3V+A==
X-Gm-Message-State: APjAAAV6WitgIPn3hLuWZME89Sdj88TcNP7eARbw6fXdZBtdqjhXdM+T
 eELYsC/P0kwAONI6SsL8140cswtAUzKXA0sUW2U=
X-Google-Smtp-Source: APXvYqx2ugfiXzKukBCI/pdMGPaOeJDgFsgr9bPq33DWlooebbJJR33wbfmoia0oww5yO9NvR0JbKN4Vdkn4urIDc3I=
X-Received: by 2002:a67:f1d6:: with SMTP id v22mr42973478vsm.178.1563877641581; 
 Tue, 23 Jul 2019 03:27:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190723095800.2820-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190723095800.2820-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 23 Jul 2019 11:26:55 +0100
Message-ID: <CAM0jSHOrEac7ZPLwoyZrHOFiOYqxrahUZxApOdwp9BJ07poeRw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=r12ltZ0R6IpU5pfeGJiCKrUAwxYD7+v68E1DCyWjtx4=;
 b=nDq7plSeaLNN5+aVSsOm0wQ9TdsYmMLZkpekO1xvCVlRwYr1u32c9Tzm/9+uWASfr+
 pO8EvZbSiUaC/h4OJAvld0pp2re5q8Uq48kwtXteoeRZjh0RLqp91ZpB2CXzizsLm3IO
 1oKesmtEBx0fZM9KlnpIDZg+94YYzrY060x2UeaN0DPwgG20V4N66bogunok22xeH424
 nFghV2uFLqzr8N5x1iR3tlj2ovF9Ve+f3LH5ZaUqD6d3G6N+/dzp3WaSJW0ceAjBipMO
 twSM3qmYuGdziv3ZDlNkYeXKjsTfnoXHrficfMuY8ud6LJIEqFpftq1k4X6Ntt8OKauS
 JAig==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Let igt_vma_partial et
 al breathe
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

T24gVHVlLCAyMyBKdWwgMjAxOSBhdCAxMDo1OCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gR2l2ZSB0aGUgc2NoZWR1bGVyIGEgY2hhbmNlIHRvIGJy
ZWF0aGUgYnkgY2FsbGluZyBjb25kX3Jlc2NoZWQoKSBhcyBzb21lCj4gb2YgdGhlIGxvb3BzIG1h
eSB0YWtlIHNvbWUgdGltZSBvbiBzbG93ZXIgbWFjaGluZXMsIGFuZCBzbyBjYXRjaCB0aGUKPiBh
dHRlbnRpb24gb2YgdGhlIHdhdGNoZG9ncy4KPgo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTExOTYKPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWF0dGhldyBBdWxkIDxt
YXR0aGV3LndpbGxpYW0uYXVsZEBnbWFpbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQg
PG1hdHRoZXcud2lsbGlhbS5hdWxkQGdtYWlsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
