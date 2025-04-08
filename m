Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5801CA81600
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 21:48:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C90110E141;
	Tue,  8 Apr 2025 19:48:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="EdSt/1+Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E051B10E72A
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Apr 2025 19:48:33 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id
 4fb4d7f45d1cf-5e5deb6482cso54044a12.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Apr 2025 12:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1744141711; x=1744746511;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=zL/uwXeWfg7A6QPOJUAVWLRzIe3+HicAR6S1WGa4/4A=;
 b=EdSt/1+YTZuswMjQgBU1m9PM2iEyUUA3lNVWuSaPDuRtJ48se7udiJ+5eWkySgFq5U
 gsO3e2uXItIXT8Q0LzWEjncHx8d2UGy+wffGNhCctI02v/snR6Zg+O+ZfKqo1CSEEhEi
 zTjFQCbgdqEu/3sEhN+uNm/i8CoY4jwuzMt8M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744141711; x=1744746511;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=zL/uwXeWfg7A6QPOJUAVWLRzIe3+HicAR6S1WGa4/4A=;
 b=SOwhv3eDEx9pmcdi6SDa2HTqVbVcdnPtkDzjXG516Uw5aIWHtp2J5uS/1Ovz81bcYp
 aDp9g6b4zEnqli/hOTXbvOsKx1N/azCT9DO/XWJeL6ZX7eSQkEtSrqaN31S6FO3+nQol
 k7K9VSCQANI9+RQyKD6z8yrr1qX4++DinPN/lkESmSxwYMdsiEg/gHUIJvQykFbDk1ha
 HN3zjV1oST3Vhf70JPcnyGiG6hrrMyu5MGFhmEIROtIwMDpT2numVI+2p6Hc6MgZl3e4
 K+ObfcESw0WwPgJlrsAS7O5T9PDzjEqd+UfQ9JJgp9287BDbTVl5auUsbGEsYitEkzpB
 g9UA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUm+cx54j1E4pINMzO1XOARovicmEEZXzy80f9ZKyPyuEQtMH/hs6MebHcA/ybpEcIi/YjaufeLIaQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw4VcKqoax3v6ScRRsegBXlckyF83edRTrWiNMyK8oxN9jhhj5q
 QJx1sFn1ANCoodXKAIn8AkHn4tD2K5rGhWRX93Zb6n3lPJBBhR8vUeDi94u6K/UcP+XLIbtLHPY
 Ao6w=
X-Gm-Gg: ASbGncvv/c5jonjxpj8hpVrtJF+DOQ9S+4IDLNU9zTXoInZ3Gjn/9Bjpnlb6LEhgRz8
 0Px8fE1kPozP/4IJxEkJaLbNADkvrbwgAbGPTJ3e+RMtpZY0QCDDDTxxk58ZbxIpuL2vlQNWVal
 23YlzmWDwYD5wO0k/3W54Gw+KJq/K5soPnYOcQ/GHp7frVVcYGeUmzRmWelUNgxaAkDo4Jq9sTG
 vdSCU3Q5djCW9MwcsocwK05x5mrAh2g5kgwB4Ljf9ogO7R1z3+8geOI2jfxEl6MfXpOGHjJjGUZ
 cn5VDgvS/WkwMO8kZQ4sHGrwvz1QjChrvM84PQSEp2RDXppVCP57yPYSVeT6SMn1CLBjr817y+R
 6vR1Z8Ge1kPSVpO+inWw=
X-Google-Smtp-Source: AGHT+IF6RezW/y4IWMlPVbJevYcz5PjnACjZnKKgJ8pdcqOB6XYWbNEvfHqQZpHxx00KsfYPpD452Q==
X-Received: by 2002:a17:906:7cc5:b0:ac8:1bbe:1a5b with SMTP id
 a640c23a62f3a-ac81bbe1a82mr332790266b.9.1744141711400; 
 Tue, 08 Apr 2025 12:48:31 -0700 (PDT)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com.
 [209.85.218.41]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ac7bfea13dcsm976891066b.66.2025.04.08.12.48.30
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Apr 2025 12:48:30 -0700 (PDT)
Received: by mail-ej1-f41.google.com with SMTP id
 a640c23a62f3a-ac2a089fbbdso6237166b.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Apr 2025 12:48:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCVQqJnZ8WzAnXCWR3zVXsZEIHr3ufGFRUx0AO7xKBGlfwm4m9bz8Lotol3Ixt9yS16+7od78uNy/5s=@lists.freedesktop.org
X-Received: by 2002:a17:906:6a06:b0:ac7:3929:25f9 with SMTP id
 a640c23a62f3a-ac81a87912bmr311971566b.29.1744141709943; Tue, 08 Apr 2025
 12:48:29 -0700 (PDT)
MIME-Version: 1.0
References: <20250402124656.629226-1-jani.nikula@intel.com>
 <CAK7LNAS6o_66bUB6-qj6NnaTRNKvu5ycxOP+kGfizYVBNjZAyw@mail.gmail.com>
 <878qoczbhn.fsf@intel.com> <20250407171209.GJ1557073@nvidia.com>
 <871pu3ys4x.fsf@intel.com>
In-Reply-To: <871pu3ys4x.fsf@intel.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 8 Apr 2025 12:48:13 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgXb5ZVd+=b49957gm2Uo58h8EHBX5_mZfX4R_MJFqd0w@mail.gmail.com>
X-Gm-Features: ATxdqUEdLh_PIaVo8IEhaJ-xWVSdvij9xBxWmcQMsdyDiXQo9KjbMpRmjfCGH_0
Message-ID: <CAHk-=wgXb5ZVd+=b49957gm2Uo58h8EHBX5_mZfX4R_MJFqd0w@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] kbuild: resurrect generic header check facility
To: Jani Nikula <jani.nikula@intel.com>
Cc: Jason Gunthorpe <jgg@nvidia.com>, Masahiro Yamada <masahiroy@kernel.org>,
 linux-kernel@vger.kernel.org, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>,
 linux-kbuild@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
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

On Tue, 8 Apr 2025 at 01:28, Jani Nikula <jani.nikula@intel.com> wrote:
>
> Your goal may be to make everything self-contained, but AFAICS there is
> no agreement on that goal.

Yeah, absolutely not.

I'm not interested in making some general rule that all headers should
be self-contained.

We already have some fairly obvious and clear exceptions to that, in
how some headers are special and get included early on and headers are
*not* supposed to include them themselves (ie things like
compiler-version.h and kconfig.h)

And while those are *really* special and end up being done
automatically by our compiler flags, they are by no means the only
special cases.

Quite a *lot* of our headers have things like

    # error "Please do not include this file directly."

because those headers are literally *designed* to not be
self-sufficient. And that is absolutely not a mistake. These are
headers that are meant to be included in very specific situations by
specific other header files.

So no. The whole "everything is going to be self-contained" is simply
not going to happen. It's not even worth discussing. It's a
no-starter, and limits our header file design much too much.

Honestly, I think the whole "headers have to be self-contained in
general" thing is a mistake. But I think it's fine for people to mark
their "generic" headers for some kind of checking.

I think it's a bad bad idea to make it a rule, though.

              Linus
