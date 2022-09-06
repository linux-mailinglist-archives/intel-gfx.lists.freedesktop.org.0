Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46ED35B5B58
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 15:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93FFE10E4DA;
	Mon, 12 Sep 2022 13:38:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D2A910E69B
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 14:22:40 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id w2so15453506edc.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Sep 2022 07:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date;
 bh=ijOEOtFnOWbXwR0YWhOwnjAKpDCJ+VHojpuzR/RqPz0=;
 b=Qx2ASiZZZgxmGC51opD1+il8ubB2+Rd68+KXODOdee8UvSaOPKcNch9DHENWY6VwSX
 NM9oUFkw0it2zluxEOjNKytLWTQQXmPAfxT+3nQg0cYf1/pm914KKfB11klzzaKmElRa
 8WVwnwBFMvuM3dv5Z8Zqgti9ipEMgq6cW5JF6AFaRqxu1BePNtSXj9xW7wCCUjK/IMaC
 Wfq236A2ZrsEbDXEbamxIiSOeGWJRpRg9nNz3/njOwmESoT/On1U1xAcNZCHEMKAQYTp
 Utqxx9dRydia+ZDk3UWvZFri5VIawLreJRLDWcHwT5vw7x3E9RJEhiKTJpUnoLkjvWbJ
 XC5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date;
 bh=ijOEOtFnOWbXwR0YWhOwnjAKpDCJ+VHojpuzR/RqPz0=;
 b=I8UhLVvpcKxRywgpcWZOe4zNCYmJ624xBdjWC36cG6oYHZIFzd1+b7OXs02A/mf7SN
 GDGD2wKujwO9Dq7/N3E870ejHcC48vWffaVGI8OpqQ6Yx1ePApvuUFQqflzGzRrm5ple
 vCppmBtJtzFdQNOMKOodlfqT/1ytaKaqe2s8QmbnIekYrn6riNHUhfwQ+ExjuBKou41L
 aN7FpZ/3FT63eYWHUOjmWMT9fgIJkfq4/Tzdm2dkNVgob4mWnUHE1710FJx0hR9+84N2
 MNRdG8mZN21bZURuXMCpFImjEwLEE2F2HbW0qOhSgdJvIjcdWxpGBffpW0aYPWy7pPd/
 wzJg==
X-Gm-Message-State: ACgBeo2TMBcUhZt8m+4YGX6HEjwhpA1NFHE0pUjpFGtn464POZVD7f06
 YZVGH9zdVpUJBYVuCKHkdSDBnioEPSQkYd5U8t2ZN4HzHLkv9A==
X-Google-Smtp-Source: AA6agR7jnYtYye7Xf85qnDt//TSNB3TN13wIuTuN2mmcJDSmy3gq7IcBEUCxN3irj8LKYFyENu5PqJm+xbPUrGz8bBY=
X-Received: by 2002:a05:6402:2751:b0:443:d90a:43d4 with SMTP id
 z17-20020a056402275100b00443d90a43d4mr49004504edd.368.1662474158540; Tue, 06
 Sep 2022 07:22:38 -0700 (PDT)
MIME-Version: 1.0
References: <tencent_E1BBF05904DFB73C478DCD592740AAE0780A@qq.com>
 <166246909164.8880.10585519190282207260@emeril.freedesktop.org>
In-Reply-To: <166246909164.8880.10585519190282207260@emeril.freedesktop.org>
From: Zheng Hacker <hackerzheng666@gmail.com>
Date: Tue, 6 Sep 2022 22:22:27 +0800
Message-ID: <CAJedcCwxOtYPLPmHbFrSXRMN_eeHNc7vQswhSebR-aE2MfTmfw@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 12 Sep 2022 13:38:08 +0000
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
	=?utf-8?q?rm/i915/gvt=3A_fix_double-free_bug_in_split=5F2MB=5Fgtt?=
	=?utf-8?q?=5Fentry=2E?=
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

Hello,

I think it may because I erase the email address in "sigh-off" line. I
will send the original patch later.

Regards.
Zheng Wang

Patchwork <patchwork@emeril.freedesktop.org> =E4=BA=8E2022=E5=B9=B49=E6=9C=
=886=E6=97=A5=E5=91=A8=E4=BA=8C 20:58=E5=86=99=E9=81=93=EF=BC=9A
>
> =3D=3D Series Details =3D=3D
>
> Series: drm/i915/gvt: fix double-free bug in split_2MB_gtt_entry.
> URL   : https://patchwork.freedesktop.org/series/108188/
> State : failure
>
> =3D=3D Summary =3D=3D
>
> Error: patch https://patchwork.freedesktop.org/api/1.0/series/108188/revi=
sions/1/mbox/ not applied
> Applying: drm/i915/gvt: fix double-free bug in split_2MB_gtt_entry.
> error: patch failed: drivers/gpu/drm/i915/gvt/gtt.c:1215
> error: drivers/gpu/drm/i915/gvt/gtt.c: patch does not apply
> error: Did you hand edit your patch?
> It does not apply to blobs recorded in its index.
> hint: Use 'git am --show-current-patch=3Ddiff' to see the failed patch
> Using index info to reconstruct a base tree...
> Patch failed at 0001 drm/i915/gvt: fix double-free bug in split_2MB_gtt_e=
ntry.
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
>
>
