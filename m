Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB12B19F828
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 16:44:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 291AF6E3E5;
	Mon,  6 Apr 2020 14:44:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com
 [IPv6:2607:f8b0:4864:20::944])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49EAF6E3E5
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 14:44:43 +0000 (UTC)
Received: by mail-ua1-x944.google.com with SMTP id y17so5522501uap.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Apr 2020 07:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SEUBFiEFvv7OAhcEQZ8rj/n8NBPUKhpD7wYAlYK6ifU=;
 b=F5F9ZebSDqO5bp0xk/cyql8ase2IX/sIy+1j2vJdduJ91RvH07z/c2oHC0rZouWx2q
 vdlP+gKtLgnr7SO8nrwUFB8uuwN9j/nXhVqwaZ9NyOvMNtf+uB5Ic2PzU9P5iRtawl74
 8z0kXKk/ze4g345kdOfEJflLg6ALG30swhwkMWyKTOl9qVyMUOhbuksl14w3OePhnTW6
 IuG+45gR0ZBs2SZxz7pbLYvzKYaw31qgppU+nckuxdhW6GfHFKi7nq0o9RwzgwuwVJGO
 q5rqIj5oCBflTOz/Ak81xHCY/U6QtE1tBsl8P0oMY36aDWwRzQpX1nILmUOkR0SCXxlP
 jDsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SEUBFiEFvv7OAhcEQZ8rj/n8NBPUKhpD7wYAlYK6ifU=;
 b=hRAK8+TIf4LC2aiDWpLGP+MDaqqiUbMJFPwng3ueb51xukck1nsSPRuQL238VPSCGK
 9S0hUKePl3xYV/yRqtQG+DbO9aeIMvvi6IpKOdqk7J8r9A0sK/0ptcX1bizJ71SshiYd
 paZjENmj9X5zW3qTQxgyLX6pILQaWiFO/c6iZdbxj0JA5uRPVURBhsR7FOC902pdDgjI
 q3GbQO99xYLcFMqJ/vqAOUQhYnBuld4Q+DNyygm/nUE3Hf0XW9zpijsLH3kFYFmsMNzG
 EDuiguRGTF2yThCNWVgHmx4HvihoeuijSSAf/f+Lcivdzf1tR/1dC6wDjUaJdv0/C8Bg
 Bi8w==
X-Gm-Message-State: AGi0PuaOtVUg1w/cqdhSokrFRhdQd+Xdrk8pIydKZwzL5u+CbyZB2dgU
 kq8WjhoLClb//aRqocZ7V9CizQRlCXtbkiOH8Zg=
X-Google-Smtp-Source: APiQypI+IcUjAZXbWNtbh3sFRpXw3n+1YJb79eeGorxBqr65dDj5mQPC4/mAmh32llE8+Jle9EBD2XshYK53yrjtfrA=
X-Received: by 2002:ab0:7556:: with SMTP id k22mr53255uaq.104.1586184281413;
 Mon, 06 Apr 2020 07:44:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200406123616.7334-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200406123616.7334-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 6 Apr 2020 15:44:13 +0100
Message-ID: <CAM0jSHMH+ZByvZQnOXvVwFafgafQYozCdPQiKprVb9CF2o5HPQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Take DBG_FORCE_RELOC into
 account prior to using reloc_gpu
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 6 Apr 2020 at 13:36, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> If we set the debug flag to force ourselves not to relocate via the gpu,
> do not relocate via the gpu.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
