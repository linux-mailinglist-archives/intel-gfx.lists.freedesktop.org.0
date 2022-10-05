Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E35AF5F57FB
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 18:06:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EF9110E292;
	Wed,  5 Oct 2022 16:06:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8705D10E292
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 16:06:10 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id q17so19236555lji.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Oct 2022 09:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date;
 bh=SKwzhVzkAOeGOokbVh9RGNVLZmVu3pA0PCp45u3OR14=;
 b=peEwofKwbyu3nt2YR+TbhqSu6IdyJXzTJgu1/wrn3NDrqABRyhh9R0kvnVNtlexXlw
 vKWIOxW6wsWI9F2QKvtiQp8wDMJCoZhALyhN5AFXPUHCqC4yBAvdXhtZwexCxZkEIUUg
 stvUUt19yTBB3cYq+78L4gKq++8xuYjcva9NQTlNzDSZ4BsKVyZJIxXZf5BzBW6E8PWL
 SXXMcMkWJ3HSa3/8dbiFVgOGQGwcF+QfsmuMwjWM2JOuR9zpS8TEexPw66A2WTwTEMEz
 Gki3sy1R48nZF8ehIv+kH4mZWuM7YeiJURfWpmeq92yCGDPrpkLH4dvHm5CN6obq1IgE
 xVHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date;
 bh=SKwzhVzkAOeGOokbVh9RGNVLZmVu3pA0PCp45u3OR14=;
 b=TSK/Lj8gnhjPE3CzGdNnk7ekzLh9oAKn/2/FHklABul7Gq6HNQbAy5P5orkYqegRQR
 T87YVdn04GiTVl1RbrnLtjUlUhKymMY+Q6wsMsAED+JKTqZs43wOUgf9cv1C/bGb1ZsR
 snGwpX+EBljaRYVNfa71ZWNoCoGgla5/LWaUO6QlYqW2x0JaHup6o86SDy6/qy1I0HwY
 t08f9e+j/QQNYAPHLUiLrvG1zjTdlCcO0EkbqtZpCbhqzfm+zNXFlXzKt+paJJEX+ckD
 B3St+UiuO2fe/6kDYe08dLL8dkZJCaH9AH3PpldLk13yYni/S7mP/5gr+NaFAaN8WV59
 RPsw==
X-Gm-Message-State: ACrzQf2mZ6bmmhBtsxjSxwowHyxKCucVyJLyCKx41P96+Us1L79xMO1A
 Z7y2Y1vf3mik7T6e3dih6ods0cowBhi0fdzCAfEfTApVhko=
X-Google-Smtp-Source: AMsMyM4D6yZEV8mn/deJj1JlCpJwjCGLnKbRaH09bv/pA18J3hPSY7aBuy2qqG67I7slx/fdwcW0rzgKkB676zbRbiw=
X-Received: by 2002:a2e:9848:0:b0:26c:49b1:9cf0 with SMTP id
 e8-20020a2e9848000000b0026c49b19cf0mr114244ljj.385.1664985968733; Wed, 05 Oct
 2022 09:06:08 -0700 (PDT)
MIME-Version: 1.0
References: <20221005154159.18750-1-ville.syrjala@linux.intel.com>
 <20221005154159.18750-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20221005154159.18750-3-ville.syrjala@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 5 Oct 2022 17:05:40 +0100
Message-ID: <CAM0jSHM+dyJZoc6K5BXg057o7-modO8GyaRvp4VYornhyWVuPQ@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915:
 s/HAS_BAR2_SMEM_STOLEN/HAS_LMEMBAR_SMEM_STOLEN/
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 5 Oct 2022 at 16:42, Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The fact that LMEMBAR is BAR2 should be of no real interest
> to anyone. So use the name of the BAR rather than its index.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
Acked-by: Matthew Auld <matthew.auld@intel.com>
