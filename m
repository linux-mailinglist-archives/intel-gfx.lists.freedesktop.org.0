Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B13E19F3DFB
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 00:03:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C0EA10E7DF;
	Mon, 16 Dec 2024 23:03:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=paul-moore.com header.i=@paul-moore.com header.b="X2Ppd6Eq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com
 [IPv6:2607:f8b0:4864:20::1130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D3B110E163
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 23:02:59 +0000 (UTC)
Received: by mail-yw1-x1130.google.com with SMTP id
 00721157ae682-6ef7f8acc33so45669157b3.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 15:02:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore.com; s=google; t=1734390178; x=1734994978;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2kgbUCS6yRX96lOYmbdxrGaaVnG1rWgKUlUa61iIjIk=;
 b=X2Ppd6EqxnC3mxYvQk8xB1XU4bP1UXlFWk7f9swMgtobuMfy9fCNzWTJeANWn5K0Pi
 i1ockJEEfyyjK1pHkuZj1cxEIiD66wwlCnLT1jRqdg6kEzyZeQrQLIF6KVusaqqE3Xr5
 LdSUcT1OQfWBPdSKHA1G7MhXGtsYav141oCHW7e0Qy6/V4pNvoBGI/KXtSvb30CbE0uD
 4NsivxwfP/n3vP8/YmVHGXygxjf149vfoFF8xY1dERXJFUWhkYNIbd/LraUb1lx7Xq/3
 AAgjs9h7IA+eU469xja2UpQXH7TSGD1ZxxtZdpaej8Zvgr1GY0GZgBP1m/eYINg/VDOp
 pJpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734390178; x=1734994978;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2kgbUCS6yRX96lOYmbdxrGaaVnG1rWgKUlUa61iIjIk=;
 b=wn6k2YxM7AJ7U5GRZL1lYMPG1Cb2HkYrs1exx+LHiQ7hrIDl6tp12RRtll6wip+8mQ
 NeP5EI55+fDqShlBvTylfreiz8Ky7EzJ1hSg1hXy2Rit1c+uVQHFSjj/4JLq7P5uI9iB
 8ZgKxAFICXDJvxkCyaF4DvleGwHk4LzO4WN2UR2o9PbeMZkjY1OdzkIsSKCIVkcu7ytg
 RmQq9M4YgJ9Pwl7NK5Ehnin8J7P1QoFAHX0kCWCPcC5IAGvkAedtK8Hr0WYqPAeLTkDl
 pvzMJZAp68QhrLRI0cQeZPJzX5tq/514KGAs9GW1HDnU+TVAt8Py6XbWTiFSjxf80yCF
 d2+A==
X-Forwarded-Encrypted: i=1;
 AJvYcCW4QcTYJWWL2v5GvgphHvrtlBlFdoSmHvpWddVyUN0AXhDYI+wmdTbbIyrHaVqeTuAqKOiwkdYd4po=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy7A/cFYtOmA9+KT8yR+MlpOAB1J6m5Bpecxrqf4fQ+OYr5NFse
 XcBVeD9dOm2WKgCbEZ0uFGiCn7GdQ6cWhahGmBnoLQ0gdq9uzCO21Qynt3e5gF4m8XrFiKqmHAs
 wxcENFrs0kGgP7JwFdWI4D37U/KAHHSKFHZal
X-Gm-Gg: ASbGncuCeCmGoLMYzw2a0NJDnfLwcLjoMozDxzJugbPNLnSKFgSYgVjLXG8GYnKi6ul
 v7VUrGWj73G4UNWsdPH6TBTX4eNz8JOTQK33j
X-Google-Smtp-Source: AGHT+IHrwagCDxh86JudR61ERsEoZaOO+nNF5gGHxdmt+LQ6ru1sGeudHuNKonCIKj4X7Au1PNG0jPlYUBpASW7wnTk=
X-Received: by 2002:a05:690c:690c:b0:6ee:c338:9d4a with SMTP id
 00721157ae682-6f279bb01d6mr139492107b3.28.1734390178273; Mon, 16 Dec 2024
 15:02:58 -0800 (PST)
MIME-Version: 1.0
References: <20241213054610.55843-1-laoar.shao@gmail.com>
 <20241213054610.55843-6-laoar.shao@gmail.com>
In-Reply-To: <20241213054610.55843-6-laoar.shao@gmail.com>
From: Paul Moore <paul@paul-moore.com>
Date: Mon, 16 Dec 2024 18:02:47 -0500
Message-ID: <CAHC9VhSHP4zt-GtOWgjzC+vVJriJh32_T+7dt0uBtTLXuoYvnQ@mail.gmail.com>
Subject: Re: [PATCH 5/7] security: Replace get_task_comm() with %pTN
To: Yafang Shao <laoar.shao@gmail.com>
Cc: torvalds@linux-foundation.org, akpm@linux-foundation.org, 
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org, 
 x86@kernel.org, linux-snps-arc@lists.infradead.org, 
 linux-wireless@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, nouveau@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, ocfs2-devel@lists.linux.dev, 
 Kees Cook <kees@kernel.org>, James Morris <jmorris@namei.org>, 
 "Serge E. Hallyn" <serge@hallyn.com>
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

On Fri, Dec 13, 2024 at 12:47=E2=80=AFAM Yafang Shao <laoar.shao@gmail.com>=
 wrote:
>
> Since task->comm is guaranteed to be NUL-terminated, we can print it
> directly without the need to copy it into a separate buffer. This
> simplifies the code and avoids unnecessary operations.
>
> Signed-off-by: Yafang Shao <laoar.shao@gmail.com>
> Cc: Kees Cook <kees@kernel.org>
> Cc: Paul Moore <paul@paul-moore.com>
> Cc: James Morris <jmorris@namei.org>
> Cc: "Serge E. Hallyn" <serge@hallyn.com>
> ---
>  security/yama/yama_lsm.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

You need to wait for Kees' ACK, but this looks okay to me.

Reviewed-by: Paul Moore <paul@paul-moore.com>

> diff --git a/security/yama/yama_lsm.c b/security/yama/yama_lsm.c
> index e1a5e13ea269..4bdfa51ea6fd 100644
> --- a/security/yama/yama_lsm.c
> +++ b/security/yama/yama_lsm.c
> @@ -76,7 +76,6 @@ static void report_access(const char *access, struct ta=
sk_struct *target,
>                                 struct task_struct *agent)
>  {
>         struct access_report_info *info;
> -       char agent_comm[sizeof(agent->comm)];
>
>         assert_spin_locked(&target->alloc_lock); /* for target->comm */
>
> @@ -85,9 +84,8 @@ static void report_access(const char *access, struct ta=
sk_struct *target,
>                  * Imagine angry ranting about procfs here.
>                  */
>                 pr_notice_ratelimited(
> -                   "ptrace %s of \"%s\"[%d] was attempted by \"%s\"[%d]\=
n",
> -                   access, target->comm, target->pid,
> -                   get_task_comm(agent_comm, agent), agent->pid);
> +                   "ptrace %s of \"%pTN\"[%d] was attempted by \"%pTN\"[=
%d]\n",
> +                   access, target, target->pid, agent, agent->pid);
>                 return;
>         }
>
> --
> 2.43.5

--=20
paul-moore.com
