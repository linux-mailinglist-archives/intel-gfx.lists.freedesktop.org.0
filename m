Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19931C349D0
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 09:56:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FE4510E6D6;
	Wed,  5 Nov 2025 08:56:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="cfsQULhU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
 [209.85.208.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9A2410E6D6
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Nov 2025 08:56:26 +0000 (UTC)
Received: by mail-lj1-f177.google.com with SMTP id
 38308e7fff4ca-378d6fa5aebso63471011fa.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Nov 2025 00:56:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1762332985; x=1762937785; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=y89yY7gWpcJMa11VuVNSbSETivlz9DMa4tLK5//0vTE=;
 b=cfsQULhUJpTl1MXuaj2Qm4DIp9xvJnnJM5Zu2jv9xzFkKFOawf6fwfdIBU9lDl2+oc
 kfLKW6jB/QkQxxjQmXKGl6xX2xhRf7tMJKOC2Kdy/ixr3m14WCIvXEGnIvWN4CvkkxbK
 jJWONV/67gBx07KYlEJsNRZRh5tpz+iesNiUgmDWYl07iBUsZXd0i1iiL1HpiIGL9lOm
 CeAWxBkwCSrXpnAQbJN+1Daa0FA2k0V4Lr370t4zUAeBrUHjhqMESBR5zMnCl3TMOTl9
 JjiAGC2GHYbGOQWNHz74N/l8A1Qb77UWcLKhrerUc7geAuUfe2Amn1hM0hxZJVZBjRCd
 tbbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762332985; x=1762937785;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=y89yY7gWpcJMa11VuVNSbSETivlz9DMa4tLK5//0vTE=;
 b=jymdZvvlNdsMK+6f8hb2UCoY5S/ewNkd42Ze4mFEqh0KmF3mqI/rvWfm0sGC35y/KW
 ss+ncZNL3qwTc1g5WFYdFUjymj66fyvFsW8ni+38OHSCX9W3uppM7OkkYx8FMxUmQH4t
 yB6qJPl+XP9jqJX+uqmT3GcrsbhJHRTeZqYN4DlFoH3dio9cSzz2LvWkQeaYBwI2oz0/
 E+E3Lfr2RDBUwalUlWREEPiQp/Q/Z0LnpEtKsim8xWt6o2kIabsJ9O48TuHLlOmaVj6e
 h1j5jPgTtvsbWQzj6MAkePIZw0z5Jf4Sj3NW7/GrPKiYTCqTVb4PKFAuyoqEkHgh/1sA
 CfKw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV4ke/X72b/3MEA5Qix6Um2gA+E0KC2Zmoz7oRO8Wqd4cKFQRMzAxciFacbZaG94EFMw5SqlGF1Kpk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzQMo1AvcmPiNd1x0GheFumNOZRk+r8SxdfUwYKshmI4qXT4iC0
 sEFp12t+D4VGQ1TerAJj5UUdM96mNudUGDpiM7dOzjEPfdHxwsZLMfSYHsZHLsZu0zh6br2kbjY
 01BBfAjI6CVK+HsN6YBQHWLQIN1wAFSMJx/xdpeNSQw==
X-Gm-Gg: ASbGncsYWR4F+y8J8DWipo0hQfDdZsepzgEKZ4PatVJxkKfTgAXaMUwUn7u4Wd2J3eo
 nP4rWV+FJnU6YhZBM2iMrMZTYalrBkY0eDS+N2JU9ejU/k1JOZ29OkReMi/BGW/R+OZocC6MVOH
 OFPDtLp+r3HuB6m93nrGlJW7Lc2bHdwdQIblYwn5tACwlRpTLcFBXx1hAU3MqhZ/rR+DW8+Xb6+
 /59/353hx0Be7bZ1M533Na26h8NvQWmpCgAFRgeje80P4a7yD7nWQSOP/te/6salKXZWiO8H2M3
 50zuIWZxvjSAaQpgnA==
X-Google-Smtp-Source: AGHT+IH2rjJIpsbxE62mqch4SVAuW2LvIiNka9F2ObXZuE+K57palr/b0nf28uVcx1pSTOxZ7IFHRr6etH2UfGtiiGM=
X-Received: by 2002:a05:6512:4014:b0:594:31ef:daa1 with SMTP id
 2adb3069b0e04-5943d7cd5e6mr658796e87.39.1762332984967; Wed, 05 Nov 2025
 00:56:24 -0800 (PST)
MIME-Version: 1.0
References: <20251104100032.61525-1-marco.crivellari@suse.com>
 <34ozsv3e6ujs4rn6c2r4nrjcjifgazddy5jecwur6atfcop6vp@bunf3uyofmb4>
In-Reply-To: <34ozsv3e6ujs4rn6c2r4nrjcjifgazddy5jecwur6atfcop6vp@bunf3uyofmb4>
From: Marco Crivellari <marco.crivellari@suse.com>
Date: Wed, 5 Nov 2025 09:56:12 +0100
X-Gm-Features: AWmQ_blYxiJXoPM8ooqtIknwlby_KtGtLFK0wfQXFZtlNGpi-o6VVHAvM6Wyl48
Message-ID: <CAAofZF7zQUgF3xjxJr-Og4YcJLiaPopZANi37mC7qVgkvYYp_g@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] replace old wq(s), add WQ_PERCPU to alloc_workqueue
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, Tejun Heo <tj@kernel.org>, 
 Lai Jiangshan <jiangshanlai@gmail.com>,
 Frederic Weisbecker <frederic@kernel.org>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Michal Hocko <mhocko@suse.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>
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

On Wed, Nov 5, 2025 at 9:42=E2=80=AFAM Krzysztof Karas
<krzysztof.karas@intel.com> wrote:
> thanks for addressing my comments!
>
> Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
> on the whole series.

Hi Krzysztof,

Many thanks!


--=20

Marco Crivellari

L3 Support Engineer, Technology & Product
