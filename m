Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3642DF1532
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 12:34:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6038A6E1EC;
	Wed,  6 Nov 2019 11:34:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACFB06E1EC
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 11:34:36 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id m9so25647115ljh.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 Nov 2019 03:34:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/nosK7tI40Rgvjrai39ricqlcuCuUJP5n8FyKQ7roxg=;
 b=bYWacfSxx+E88iYt7pdV/JR8B/l9eL1/UHNYpvztzv1RH3Gl2Tdgzg5kZg+kEYMsoS
 GmmipdikKGkCO+2jms5gPEVwZifb7tw+Zp6eu5xmpbQJBkCyt/C8Z3fpFNPc/3ojqbPq
 BwaEv5G8c9EBV2qLy1COv/3OnNLzV43L+j9UhFp/Bi8AmKULFGDhp7yoATB8lpSW08e0
 Ktj7v4Ye4P/LsAUpDRpstgvxy28CNEhzhlpBgbYzFJv8UmonU2oEtvLei4uzypvd2Kup
 OYtMxro/lU1XNCvC/0KL5DFNjw6hXSdjHO901hSHAsxPQkHJxYGFD4hKVXdk9/j0jEv0
 nlKg==
X-Gm-Message-State: APjAAAXaqdUQ+qFyT5875VneXA0F+V9TL+IEtG+sKVi8GSMUpvyk2eOA
 HQXpuu9Z5TDIUZ5RwG35YK2RZcNuvezML3sBQYAvoQ==
X-Google-Smtp-Source: APXvYqxFczEUtFCkZYF41koKk4Vi1YbuD6j8fBM1WXGyzw5A6qeu9m/tEzFIbX3oiCPLwFQCAGY9QsNdQrm4pK6gb20=
X-Received: by 2002:a2e:990b:: with SMTP id v11mr1522006lji.151.1573040074779; 
 Wed, 06 Nov 2019 03:34:34 -0800 (PST)
MIME-Version: 1.0
References: <20191031214839.27039-1-manasi.d.navare@intel.com>
 <CAPM=9tzxUj7zHHJgj_PCJ9pOavO2rz6YVPFbJfWBGgMnb9ykKg@mail.gmail.com>
In-Reply-To: <CAPM=9tzxUj7zHHJgj_PCJ9pOavO2rz6YVPFbJfWBGgMnb9ykKg@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 6 Nov 2019 11:34:12 +0000
Message-ID: <CAPj87rMfehv9xjYuDPWSrX03J6==TqKpGsFCuO12pi+pNf5QMA@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=/nosK7tI40Rgvjrai39ricqlcuCuUJP5n8FyKQ7roxg=;
 b=SrzRimmVrM6aG4Ih/o055Cl97OVJpeB9XfSRdqgfrhV4wmcdeykqOn3wKxfUxfLKi/
 oqKA/Jpj6xiDVOGczMTeZkekzEkEbuUsKeImgAKWjjtVbQR05eSOKrntP9e6axpQ9z9x
 a6jlXO1PC3PL9OQP/2nT4ePxGv64mc+xY+XRxhNnDcGM1WVUDo/HshB4FXEq9uZLjGrq
 v2RtAhAYNzuXb/Vp423WvVy2/WQIAr5nC6Syzsz5pPQ7aHvFW86ll4w5hyhZ7fjvzJ9F
 BUyQD4Lq0FnxKzsDZUH9xwfNempIJ7/akozffeLuo2YYjjkqBWBxOlK4bDH/uy/ST2hj
 GLQw==
Subject: Re: [Intel-gfx] [PATCH] drm/fbdev: Fallback to non tiled mode if
 all tiles not present
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
Cc: Dave Airlie <airlied@redhat.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiBXZWQsIDYgTm92IDIwMTkgYXQgMDI6NDcsIERhdmUgQWlybGllIDxhaXJsaWVkQGdt
YWlsLmNvbT4gd3JvdGU6Cj4gT3RoZXJ3aXNlIEkgdGhpbmsgdGhpcyBzZWVtcyBmaW5lLCB0aG91
Z2ggaXQgZG9lcyBiZWcgdGhlIHF1ZXN0aW9uIGluCj4gbXkgbWluZCBvZiB3aGF0IGhhcHBlbnMg
aWYgSSBnZXQgMiA4SyBtb25pdG9ycywgYW5kIHBsdWcgdGhlIGZpcnN0Cj4gdGlsZSBvZiBvbmUg
aW4sIGFuZCB0aGUgc2Vjb25kIHRpbGUgb2YgdGhlIG90aGVyIGluLgoKSG9uZXN0bHkgaW4gdGhh
dCBjYXNlIEkgdGhpbmsgJ3lvdSBnZXQgdG8gbGl0ZXJhbGx5IGtlZXAgYm90aCBwaWVjZXMnCmlz
IGEgcmVhc29uYWJsZSBhbnN3ZXIuCgpDaGVlcnMsCkRhbmllbApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
