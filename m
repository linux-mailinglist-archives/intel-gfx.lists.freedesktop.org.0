Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A39B29F3FB8
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 02:08:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B67CE10E81D;
	Tue, 17 Dec 2024 01:08:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="MIPHCyFW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18F9610E816
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2024 01:08:34 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-a9a977d6cc7so642415166b.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 17:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1734397712; x=1735002512;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=x5HbsH3y11AUtX77RP9ShUJxU46vkQ8YNLD+VoIrduA=;
 b=MIPHCyFWRoCB9MumGpQyjQGr7W8k00p9bJWVA1asbT2Zs++3EjhicvXr3RI0p3BoWU
 xSNUZ6mie5A6RSNuLUdJoJVQM98u0rSDBgRB0+1hq8H9BN4PJjHenIre7X07ILefeUV3
 OYE7Wr8b28cf4h5QV3jkuL0h55JBqgGeCsekI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734397712; x=1735002512;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=x5HbsH3y11AUtX77RP9ShUJxU46vkQ8YNLD+VoIrduA=;
 b=R+XBtbcVqRj88UaSfm/b95cl/ESj/VwMySqVi/AyNCnE14ySMOHHdZx28t8F1eipwi
 qTNKWEqsWD8gXGcFeA7gwHKLIMuMkUoVOLdSFEo+UZOXv6oeLo5WWZnFHEa/k+yiLw7N
 ydar8D43CyyLiy8Evw362oYnzORH85Kv/t8ISFj+jVicTUvg6giMSlN3Cq/oWmIQe5Yw
 qsq+giu18bMJxgAehGMqDVKMVsVWoNe6tys50gedVE85Q3Rydh7JgMiNaKyts72y6z4i
 rXWPe+D0KJfvSY8HHfIvXvT7qlQ1ycfL84jepyRZ2W1slML6HNNsqbMMT7KNBEwv2waN
 2dmg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV8d9zjtbY7PGPxe19nkL78DjXPxCtfphQINJ4JN/fTnSWD061Vy+a5Xdq2/GhOIlwN1QWRlDz7GBU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzlloWA4dUz2WuX3JIBTJEAUVLpwVYfSONhD8pw05ozzUsLRerB
 AoUnSuTuWbb+4Vuw91GzDxQ6JqzQ8SRIAPbwuzkhOV+1tnugboqzWIcv+K6+d/w4N+/AUPb6bwx
 +Og0=
X-Gm-Gg: ASbGncvts35/fBMJBR/pvUndr+Pn0VUXW11AANSYeCRiqzO5YwCPh3Bc7C5cYlQTjf2
 IE4bSKGd+4kx3Jz5+yh/c/IfSl1QzmQCmgCQygGHemkweorqeXZHJ+pz3RHc5jVcgx8rYbylFoT
 +Q7PqIXOyYdsPX8RYNN06G07X4CsqI3NJwqo8AvJm2qOcSG1R3GA5Wt5QPTTv3lhIr58s2THuDb
 jHd7kMAqwDXGIrrNT/wFZcM0YdCGB/HjKCEVv1Slx1hyM7fgPSP5uIv+8IByfW8Au8vpxtkgTgJ
 QcOw2/mOiZqtsy9TOBcft/ImHavAl/o=
X-Google-Smtp-Source: AGHT+IE/aJV+Adzk/h9OQ0hWOvZ22i4l6p1aye4NE12S9LfZGzCiDSwA+FetpIuZBN329rS4i9lQoQ==
X-Received: by 2002:a05:6402:35c3:b0:5d2:7396:b0ed with SMTP id
 4fb4d7f45d1cf-5d63c31e814mr36974916a12.14.1734397712421; 
 Mon, 16 Dec 2024 17:08:32 -0800 (PST)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com.
 [209.85.218.54]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5d652f270bfsm3852127a12.61.2024.12.16.17.08.30
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2024 17:08:31 -0800 (PST)
Received: by mail-ej1-f54.google.com with SMTP id
 a640c23a62f3a-aa1e6ecd353so635885666b.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 17:08:30 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCW9RIgqKfa/2z+mDPeLleeMoshGhOxVx6MmU+MspBAZhUQGR/7SvWaapDjG0L8Mod51984krzkcHsA=@lists.freedesktop.org
X-Received: by 2002:a05:6402:27d4:b0:5d0:d91d:c197 with SMTP id
 4fb4d7f45d1cf-5d63c3db906mr36599487a12.27.1734397709817; Mon, 16 Dec 2024
 17:08:29 -0800 (PST)
MIME-Version: 1.0
References: <20241213054610.55843-1-laoar.shao@gmail.com>
 <20241213054610.55843-6-laoar.shao@gmail.com>
In-Reply-To: <20241213054610.55843-6-laoar.shao@gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 16 Dec 2024 17:08:13 -0800
X-Gmail-Original-Message-ID: <CAHk-=wj=W-4Eu=g83QPUDB+thtL=uY=_1OAVRvXJP=zay+K4Qg@mail.gmail.com>
Message-ID: <CAHk-=wj=W-4Eu=g83QPUDB+thtL=uY=_1OAVRvXJP=zay+K4Qg@mail.gmail.com>
Subject: Re: [PATCH 5/7] security: Replace get_task_comm() with %pTN
To: Yafang Shao <laoar.shao@gmail.com>
Cc: akpm@linux-foundation.org, linux-kernel@vger.kernel.org, 
 linux-security-module@vger.kernel.org, x86@kernel.org, 
 linux-snps-arc@lists.infradead.org, linux-wireless@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 nouveau@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 ocfs2-devel@lists.linux.dev, Kees Cook <kees@kernel.org>, 
 Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, 
 "Serge E. Hallyn" <serge@hallyn.com>
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

On Thu, 12 Dec 2024 at 21:47, Yafang Shao <laoar.shao@gmail.com> wrote:
>
> Since task->comm is guaranteed to be NUL-terminated, we can print it
> directly without the need to copy it into a separate buffer.

So i think we should do the "without copying into a separate buffer"
part of this series, but I do think we should just accept "%s" and
"task->comm".

IOW - getting rid of get_task_comm() is good.

But the "%pTN" pointer format ends up being unnecessary.

          Linus
