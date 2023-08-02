Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5D276D098
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 16:50:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D985910E547;
	Wed,  2 Aug 2023 14:50:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B090710E545
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Aug 2023 14:50:10 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id
 4fb4d7f45d1cf-52227884855so10554585a12.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Aug 2023 07:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1690987808; x=1691592608;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lCYYmzNqtzxNv8UbxN3uv60kE4E3C48+cD2+0APdVk8=;
 b=bfwUet4qi7yyF7aKFOmhonqH5OcPqZZdq/h8mIfyRqAlamxsMsBJLoJX72eyQyg8kZ
 rgqPuYe4+k77PaeBmcB+78yVr0g0gs6KfZ2378hHcDiu0S+vbibTZzmrojhRi5ur+uaT
 cZeIwEtlFiDH4a7ak6yKOdnGaii8cT5vATQBI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690987808; x=1691592608;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lCYYmzNqtzxNv8UbxN3uv60kE4E3C48+cD2+0APdVk8=;
 b=CEioGwfhzTFnqwT2c7w+knf+HNyqd0DxQF/QWJuR40SWv+5hIBmqNgf8dv2ipykzu4
 1i9Gi04ucQ17dSdKAlZ6tQ70ZHduSVrWJRsGRzBTxFBQveID8a7nLU89k7q8SV4mYCEg
 yqrBbRAa2bQ3jplRdXPGEWMveiHe991bXUa0F9dtCkEdJkY50JedS/jHxaapvITZXuLl
 VG+Eov2zJvXhITm9/6HX6PpT5+XQeeY6qdcv3Hin3WTbXRoCQvsWL5FNWbEqzmOvDfqr
 bVxxxjAjNVkjLAOxi8EMw2Y8fJMpKvrbkkdwY/Ug1hvenCCarNHvGZ7MmkhcWILrMVCM
 abhg==
X-Gm-Message-State: ABy/qLajHrY3AKn95A2jW26s0ZlEEjg8XO4WTFCoOkNhJMYoc+eP07cu
 TVkkCraGE0S87YdsRPsWTUR9H2TQ4WayTE+bbUnDxlXH
X-Google-Smtp-Source: APBJJlGsWu2vTeMnOGLe9+JzWUYVd56rKvQzztPwgd9F3SyPzH47Fb/O03Q7vRfNnwEeWFAWTrx2rw==
X-Received: by 2002:a05:6402:b07:b0:522:200f:cc50 with SMTP id
 bm7-20020a0564020b0700b00522200fcc50mr5721514edb.19.1690987808581; 
 Wed, 02 Aug 2023 07:50:08 -0700 (PDT)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com.
 [209.85.208.43]) by smtp.gmail.com with ESMTPSA id
 r13-20020aa7d58d000000b005227b065a78sm8778558edq.70.2023.08.02.07.50.08
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Aug 2023 07:50:08 -0700 (PDT)
Received: by mail-ed1-f43.google.com with SMTP id
 4fb4d7f45d1cf-5229e0603edso11023a12.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Aug 2023 07:50:08 -0700 (PDT)
X-Received: by 2002:a50:d70e:0:b0:522:203b:c348 with SMTP id
 t14-20020a50d70e000000b00522203bc348mr412547edi.5.1690987807863; Wed, 02 Aug
 2023 07:50:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230802142136.0f67b762@canb.auug.org.au>
In-Reply-To: <20230802142136.0f67b762@canb.auug.org.au>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 2 Aug 2023 07:49:55 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XEbpuMb4FvDkVkkX+Btig4eFnNrp5LWs+rQJ9Sy3wg4w@mail.gmail.com>
Message-ID: <CAD=FV=XEbpuMb4FvDkVkkX+Btig4eFnNrp5LWs+rQJ9Sy3wg4w@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] linux-next: build warning after merge of the
 drm-misc tree
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Tue, Aug 1, 2023 at 9:21=E2=80=AFPM Stephen Rothwell <sfr@canb.auug.org.=
au> wrote:
>
> Hi all,
>
> After merging the drm-misc tree, today's linux-next build (htmldocs)
> produced this warning:
>
> include/drm/drm_panel.h:270: warning: Function parameter or member 'follo=
wer_lock' not described in 'drm_panel'
>
> Introduced by commit
>
>   de0874165b83 ("drm/panel: Add a way for other devices to follow panel s=
tate")

Thanks for the report. I've posted:

https://lore.kernel.org/all/20230802074727.1.I4036706ad5e7f45e80d41b7771642=
58e52079cd8@changeid/

To fix this one.

-Doug
