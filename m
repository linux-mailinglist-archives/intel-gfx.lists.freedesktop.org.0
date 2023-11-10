Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FA47E9D92
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 14:45:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA88710E378;
	Mon, 13 Nov 2023 13:45:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2D3010E960
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 09:44:50 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id
 a640c23a62f3a-9e28724ac88so302848866b.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 01:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=szeredi.hu; s=google; t=1699609489; x=1700214289; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=uNNVKkYwl/rOA9GX9/SH18oSRKfcJIfb4LTGsk7JdWQ=;
 b=pHd38LzlI2Z+QhohfyE8tlQ5l+009oUpSHYbWjvRCh3UZO1VH3pawOTMkCI/GYQylW
 iW65Vd1R1GPtp9X4g9LbnJXn5I4vNINxBdkP1j6hOFLcbdEg7Cd/HScYFDgxogAwguqv
 k7pFzUa9spbrWkTDfIrbnxCd9PPnogVubJv30=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699609489; x=1700214289;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=uNNVKkYwl/rOA9GX9/SH18oSRKfcJIfb4LTGsk7JdWQ=;
 b=mFSF88JPAXRzcT830fS9aE+orDn/njynvB+jVlD2t0dMd6CVXeJeAXhVJmzU93cIZs
 iyTZLHS3vDLo5GYo5eaBVqsowmf3t5vOX7XiyM/t9DhdWO3TPHu2E5XOjbUfry7udkG5
 a9kY21k2iVrQfVladkclVCaI/w/HzWVD7cCZwKp0uAhvo2lt/DmIa/MXzob5O5AC7jI1
 dGodYkymYJMa4uiSM2HW7cXZClBdLqRZGZneLFQXiCCzkBYFEJ1QS6jN4PYC82X011kq
 7n1FeVruYfC3s13g8GKvfJVkfqXCx4tLVOsgvT+v+iacTkQcNwL+VBIMcMXm/ig5uvRT
 ztaQ==
X-Gm-Message-State: AOJu0Yy6jtn4nDdFUbvp10eL1uX+I+DPOxGr63RGf0B+aaUPf/5UIhxs
 W5LMG6U+hzFkxRYF2eeq+7F8CWwjvLPNlp9+QQAB3A==
X-Google-Smtp-Source: AGHT+IHEDrhaS3SWGbZqZuG8sNPuZIIpHaBGL3VI6Da90hnwL9tRuf2Y3uqzB5/P6YHOqBSOAeAfq99hTGSbttzq3wg=
X-Received: by 2002:a17:906:8910:b0:9e4:121c:c292 with SMTP id
 fr16-20020a170906891000b009e4121cc292mr3096666ejc.77.1699609488646; Fri, 10
 Nov 2023 01:44:48 -0800 (PST)
MIME-Version: 1.0
References: <cover.1699564053.git.kjlx@templeofstupid.com>
In-Reply-To: <cover.1699564053.git.kjlx@templeofstupid.com>
From: Miklos Szeredi <miklos@szeredi.hu>
Date: Fri, 10 Nov 2023 10:44:37 +0100
Message-ID: <CAJfpegtOKLDy-j=oi8BsT+xjFnO+Mk7=8VxSDuyi-bxhRSGMKQ@mail.gmail.com>
To: Krister Johansen <kjlx@templeofstupid.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 13 Nov 2023 13:45:43 +0000
Subject: Re: [Intel-gfx] [PATCH 0/2] Fuse submount_lookup needs to be
 initialized
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
Cc: Miklos Szeredi <mszeredi@redhat.com>, linux-kselftest@vger.kernel.org,
 German Maglione <gmaglione@redhat.com>,
 Bernd Schubert <bernd.schubert@fastmail.fm>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, linux-kernel@vger.kernel.org,
 lkft-triage@lists.linaro.org, Max Reitz <mreitz@redhat.com>,
 Greg Kurz <groug@kaod.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, linux-fsdevel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Dan Carpenter <dan.carpenter@linaro.org>,
 regressions@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 9 Nov 2023 at 23:37, Krister Johansen <kjlx@templeofstupid.com> wrote:

> Either should do, but I wasn't sure which approach was preferable.

An incremental is better in this situation.   Applied and pushed.

> Thanks, and my apologies for the inconvenience.

Really no need to apologize, this happens and the best possible
outcome is that it get fixed before being released.

Thanks,
Miklos
