Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E07AA945A29
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2024 10:43:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DB3010E9C1;
	Fri,  2 Aug 2024 08:43:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="Z+uZIRk4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEBBF10E9BD
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2024 08:43:53 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id
 4fb4d7f45d1cf-5a18a5dbb23so47988a12.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 Aug 2024 01:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1722588232; x=1723193032;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8GUhgmiRdApbQ1BMRxUcvp0LGjhPzUZ5wX8NNISAeoM=;
 b=Z+uZIRk4R8AiOH1bNFNnhJkzE8kAsixprQjiNPMiQvWIJoBy9P6Az6JWhcjqUzT6Gl
 o9X+ZsQKjFgVJDfLG8IrQsVd0v01lcvaXZ2ehz14bxI4MM2SncMOHUqVsxYfYwJzKIxs
 sWChsnt7SGmv030Jh5Ek/KbDsYvrgsb79hXpP7GgaD33Rwp+R901kJ/njgQwvuV/r0oi
 +MkwhknJDQfZGmgS1Q0GeU65xpkCiRBWbDCiu9QIW+hdC5dgfIEvj/sxIus1z+7C/flw
 S53kCJ6Mt40X6gy4ss+V6/ea8c032nCERullxpgYJnB9XajiG+EoYHEkuqESFawqh6uY
 MD0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722588232; x=1723193032;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8GUhgmiRdApbQ1BMRxUcvp0LGjhPzUZ5wX8NNISAeoM=;
 b=c8Nf8hBktm+GW25d7LpIyTjY+89J0Ifx/Wc5UryAX77jMOd5T1r+yT7naPks8P2aAb
 s95Pa4YYepW/lXnnlG5uRWiNObSTYR/qTXJDPOLXntdReo5t9UZur23BGPd8mDTuxnp9
 7qUGwJjCc1RliKEbddfhI+c2afddRmXIvrCi8/Z9TbCuZM4MbMvjgRQwBrf1OJ0GJKaN
 u1RL1qacoXrvEVCSI+sleQAK05w9UJi7eUMturDI8BJqU617+AZ2VO8Xtq9LkgquJgnq
 Mac0qejPotFkmdGM7czJPJ+AA5+0hOwowqmRvArAZfNVzufHXDDIv2XyGI7ngd9ZLm8J
 GNFw==
X-Gm-Message-State: AOJu0YzFcPh0ZafiZhOLAgDJSg56o53qP4KxXhTPZL7qOtaMy7Qr1un4
 iRVMB9c6lncecsAAYVDf9YiRI/n/BWDhmZU8vTL5iPffkUhCH4j3D3Aqv6ijoluUiakWdhvBF7m
 z88qeNRNTqHwxbYwO/QGizuAS+vrciyhyySqW
X-Google-Smtp-Source: AGHT+IHtct2y98/NLkN+xbps3gIOq2/m46xPn+4JR1tFzWhlYsU1Pt575JTMAwyRBk7RI6b032cKZPMCKlg4XYi/un4=
X-Received: by 2002:a05:6402:5109:b0:58b:15e4:d786 with SMTP id
 4fb4d7f45d1cf-5b870f709f6mr93520a12.5.1722588231655; Fri, 02 Aug 2024
 01:43:51 -0700 (PDT)
MIME-Version: 1.0
References: <20240802083850.103694-1-andi.shyti@linux.intel.com>
 <20240802083850.103694-3-andi.shyti@linux.intel.com>
In-Reply-To: <20240802083850.103694-3-andi.shyti@linux.intel.com>
From: Jann Horn <jannh@google.com>
Date: Fri, 2 Aug 2024 10:43:15 +0200
Message-ID: <CAG48ez2tCHUgaLxrF_qf7cdq2WUGmQMrhXWVHGOcjPAAL=HyVQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/i915/gem: Fix Virtual Memory mapping boundaries
 calculation
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>, Jann Horn <jannh@chromium.org>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Chris Wilson <chris.p.wilson@linux.intel.com>, 
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Andi Shyti <andi.shyti@kernel.org>, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 2, 2024 at 10:39=E2=80=AFAM Andi Shyti <andi.shyti@linux.intel.=
com> wrote:
> Calculating the size of the mapped area as the lesser value
> between the requested size and the actual size does not consider
> the partial mapping offset. This can cause page fault access.
>
> Fix the calculation of the starting and ending addresses, the
> total size is now deduced from the difference between the end and
> start addresses.
>
> Additionally, the calculations have been rewritten in a clearer
> and more understandable form.
>
> Fixes: c58305af1835 ("drm/i915: Use remap_io_mapping() to prefault all PT=
E in a single pass")
> Reported-by: Jann Horn <jannh@google.com>
> Co-developed-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: <stable@vger.kernel.org> # v4.9+

Reviewed-by: Jann Horn <jannh@google.com>
