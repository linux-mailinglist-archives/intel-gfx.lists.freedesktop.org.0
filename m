Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F946BF001
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 18:43:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6F9F10EF5F;
	Fri, 17 Mar 2023 17:43:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAE1510EF5F
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 17:43:01 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id ek18so23380955edb.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 10:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1679074980;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=juFDL1t+0yx3APjFMS4e9m1CxbDK324iou62xX9HrZ0=;
 b=NrMkHPI/1sCbp+kVBJdSrVRHGhstjuhJx8JsuOAJUDWTq5FMpzxrc+eyzjBDdjyCrn
 Aef0tO3pW3aYvH4mDo6hNHxG5ZSmgOUTPlL4Nj37692tYHdDUX6YDNroUPs9AJGVfWCU
 d9jUyh4VO6yjVoLr+W7ztk/TwkUMJBeQRL77g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679074980;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=juFDL1t+0yx3APjFMS4e9m1CxbDK324iou62xX9HrZ0=;
 b=epnINXQVLsry+kw1GTztrP98g68acJsU5lVaI5PU8y5tlAyw9kmjG4omS5e6v2mRzE
 sWUtMp3DAxHZ2GheORmcd0Sy5eWXVGo6m9vPcYOtw/Rg2SrIl8HJSaBhxUAhHGom36AY
 i/wA3ygHdr4FaeeN8aPk7Xg8Ny3rYIF+vECIyUgV2JHgy0VUPcO3AeHZMh+yUmP50oUo
 vCbbkPblMm6jaKg73DQUt+ImXlrDn0Xa4BBzXs+ogoX7fPKlLtMvBgE5W26RNUyGGjcs
 cDHY/7wZUF0MYAPu+Ny7ivtz502nlSzj3fEZk/E2hvowuovr1zC+9L2mqt8UztgCkzLm
 Wk8g==
X-Gm-Message-State: AO0yUKWM/OkQtInARge9bf2SoYKbiAuGEHrZxUzMUxdGxOc5hO7h8opv
 JSESEAlGRgdaTrFaxYSsQ5ohkB1HRUcDsYj1B2G+3Q==
X-Google-Smtp-Source: AK7set/c2Up3YIiPD0fhgFZN6KJU4f6ZVHs11pnzg2qlLrNvRJjGARO8BKOV1k0iio+1/DuTJesT9g==
X-Received: by 2002:a17:906:3688:b0:877:a9d2:e5e9 with SMTP id
 a8-20020a170906368800b00877a9d2e5e9mr152918ejc.42.1679074979988; 
 Fri, 17 Mar 2023 10:42:59 -0700 (PDT)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com.
 [209.85.208.45]) by smtp.gmail.com with ESMTPSA id
 h19-20020a1709070b1300b008ec4333fd65sm1206051ejl.188.2023.03.17.10.42.55
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 17 Mar 2023 10:42:57 -0700 (PDT)
Received: by mail-ed1-f45.google.com with SMTP id x13so23433743edd.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 10:42:55 -0700 (PDT)
X-Received: by 2002:a50:ce54:0:b0:4fa:794a:c0cc with SMTP id
 k20-20020a50ce54000000b004fa794ac0ccmr2222273edj.2.1679074975032; Fri, 17 Mar
 2023 10:42:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230307212223.7e49384a@gandalf.local.home>
 <20230307212615.7a099103@gandalf.local.home>
 <b919b550-6da8-f9f0-a0eb-0fd8af513817@amd.com>
 <20230308074333.49546088@gandalf.local.home>
 <980021d5-09f7-9fc3-2726-44884a57822f@gmail.com>
 <CAM0jSHPf5u4=GGWm6x-zVkLA_LScAxq371ny2NoozuNjHfQefQ@mail.gmail.com>
 <2b7fe203-82f5-2726-cd64-01c7421560d3@amd.com>
 <20230315162011.351d0f71@gandalf.local.home>
 <20230315202133.7cb1a0fe@gandalf.local.home>
 <20230315202242.581c67bf@gandalf.local.home>
In-Reply-To: <20230315202242.581c67bf@gandalf.local.home>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 17 Mar 2023 10:42:38 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjH83GOhjDaVnTUYfSf0XOLp-jpFACLSd8Uc59GzaCZug@mail.gmail.com>
Message-ID: <CAHk-=wjH83GOhjDaVnTUYfSf0XOLp-jpFACLSd8Uc59GzaCZug@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [BUG 6.3-rc1] Bad lock in ttm_bo_delayed_delete()
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
Cc: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 intel-gfx@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 15, 2023 at 5:22=E2=80=AFPM Steven Rostedt <rostedt@goodmis.org=
> wrote:
>
> I hope that this gets in by -rc3, as I want to start basing my next branc=
h
> on that tag.

My tree should have it now as commit c00133a9e87e ("drm/ttm: drop
extra ttm_bo_put in ttm_bo_cleanup_refs").

                Linus
