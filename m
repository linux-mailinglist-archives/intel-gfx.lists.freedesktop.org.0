Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3045794D3CC
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 17:41:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF64B10E963;
	Fri,  9 Aug 2024 15:41:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="KNiu/32r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
 [209.85.208.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E44D310E962
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2024 15:41:25 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id
 4fb4d7f45d1cf-5a18a5dbb23so11184a12.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 09 Aug 2024 08:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1723218084; x=1723822884;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NYAzh4mUcuPFSKWov69sMIdE3U+f2dJsfPRMDPb+Fbs=;
 b=KNiu/32rRCA20/cEaKQlEf8SuqfM/YV7mYUk45KtAUf6ge8phZUkXEWHLjr+BGGAn7
 Z5n9IJOmcVOSu7o5QmJI7rdFJe31847yoYm8KMmN5x9KbkbsjG+n839+uhXgbCK6BXO9
 48PClz2Tf+fQHJgoWTSKhYGrs6aG6i01uwP/W3nXJg800k/sEHMJIeYd2nUUUDSRFeZ+
 z5yRlLaertEjQwztPfTmixzYBis+ixv0yhR2pOvzsbGTaNaQo5z8SLx+TcYVS50NwQIi
 2yteC3XOkYf1Zb2tF0hv+QEwjUIbprFwKRjPEcF3SZ1qhilKNz3kE2HeJQ+IsciGkzsf
 e3/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723218084; x=1723822884;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NYAzh4mUcuPFSKWov69sMIdE3U+f2dJsfPRMDPb+Fbs=;
 b=YS/BXwcr3G03+4KfSEqIky4lMhaCqH+HO8Ytl4VyVddVL1LOh9OFCBEZCw82fajMg1
 aZPDjN/wdhMKqLFI6k8mNXmOKJ81+WKzLDXOFe+Q+751V5zTNJEPhM4Z+AUGrFUcRPVb
 vwJOWQ5eYfwn7mWkg7SUfX0c6Vr0NIcbPETJWn8NfIKIpqyVzf5mRJoJZdurEc4IkDFo
 L1HSE8O29PUrbi5LZrH12/tNxiSVe+ctg38cou1+07/DxuUJoT60v9o1DMZQ6DSmSCA5
 WaT/dNcuS/3BkXIhuWhN17p/mqpZer5WVUAnhcHPbUc6Hox0XFdo0KuEExRpB59hZHyp
 JsjQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXeR7pWEV5lMWdUn81JVhJ6npykXrIQoT7yPFtV3IUuYJIg+8gvFKymrhK1cwo71P6m8nPKvMaW01N0Hpkr5lAyi7dKaPLlCPsfQVAmKU72
X-Gm-Message-State: AOJu0YwKRXUr2v3rNY5sExXP/rte75+iFGfpHUnYTXixsSmELtnu7U1l
 Je68fikOf9G2NOCKHzzWXu0/lTo68pqKfTobTPqQHrwRS5/adzmQ7IP974YNDQLwOu112qKFzSB
 utq+0rBP2AyQJ2Oisa5ZsqXC/nXcMUKTjgb0iOjpBpbnWM7Q05Fq+Etk=
X-Google-Smtp-Source: AGHT+IGc8Bs94G43wHWPWp/XnoyFyIXC9UrzI36Ixiq71jGZqtU2YPUwIyuvyVQ6kpqJ5V+4t6b6wPoN4TxajgzjOHA=
X-Received: by 2002:a05:6402:270c:b0:59f:9f59:9b07 with SMTP id
 4fb4d7f45d1cf-5bbbc7408f9mr152981a12.4.1723218083675; Fri, 09 Aug 2024
 08:41:23 -0700 (PDT)
MIME-Version: 1.0
References: <20240805102554.154464-1-andi.shyti@linux.intel.com>
 <ZrFMopcHlT6G7p3V@ashyti-mobl2.lan> <2024080640-landfall-doozy-e0d2@gregkh>
 <ZrHw3y8QKPT87LxP@ashyti-mobl2.lan>
 <172294612086.38654.15621922821489001205@jlahtine-mobl.ger.corp.intel.com>
 <CAG48ez0P6juWnVL-m6A33X2GTsrm6CO4okN0s7Y_YT01yTqkrA@mail.gmail.com>
In-Reply-To: <CAG48ez0P6juWnVL-m6A33X2GTsrm6CO4okN0s7Y_YT01yTqkrA@mail.gmail.com>
From: Jann Horn <jannh@google.com>
Date: Fri, 9 Aug 2024 17:40:45 +0200
Message-ID: <CAG48ez1PDJKd5gd932K9iknNg+V=mTmK5OMZys3OEXmKUTXxAw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Fix mmap memory boundary calculation
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>,
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, 
 Chris Wilson <chris.p.wilson@linux.intel.com>, 
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Andi Shyti <andi.shyti@kernel.org>
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

On Fri, Aug 9, 2024 at 4:48=E2=80=AFPM Jann Horn <jannh@google.com> wrote:
> On Tue, Aug 6, 2024 at 2:08=E2=80=AFPM Joonas Lahtinen
> <joonas.lahtinen@linux.intel.com> wrote:
> > Quoting Andi Shyti (2024-08-06 12:46:07)
> > > Hi Greg,
> > >
> > > same question without the stable mailing list not to trigger the
> > > automatic reply.
> > >
> > > > Andi Shyti (2):
> > > >   drm/i915/gem: Adjust vma offset for framebuffer mmap offset
> > > >   drm/i915/gem: Fix Virtual Memory mapping boundaries calculation
> > >
> > > I have forgotten to actually Cc the stable mailing list here.
> > > These two patches need to be merged together even if only the
> > > second patch has the "Fixes:" tag.
> > >
> > > I could have used the "Requires:" tag, but the commit id would
> > > change in between merges and rebases.
> >
> > The patches were the top two in drm-intel-gt-next and committed
> > only few hours ago so I fixed up the patches adding Cc: stable
> > and Requires:
>
> I'm not very familiar with how the DRM trees work - shouldn't fixes in
> i915 go on the separate drm-intel-fixes branch so that they don't have
> to wait for a merge window?

Ah, nevermind, I see it is already in drm-intel-fixes. Sorry for the noise.
