Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB103C2BCBE
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26C9910E3E1;
	Mon,  3 Nov 2025 12:46:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="YP6f+7nw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C1D610E3A9
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 10:31:44 +0000 (UTC)
Received: by mail-lf1-f46.google.com with SMTP id
 2adb3069b0e04-59431f57bf6so210552e87.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Nov 2025 02:31:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1762165902; x=1762770702; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FoPFhQQS89S0PG9IrFQ4Ih5iU0Zai424+/DcdPiuCSc=;
 b=YP6f+7nwo07487EKDvl7c/BmGP5NZ+3Y2GSmsks5dCKBMnDjli6xfaT32u1o15XQgR
 y1BmmRDEgsI/crrUYwY9tU79c7WN83Ldc2VEchEQpiXopiiQGy56Nttwx/1V//vtJYsj
 E87L4NyJ60/y29b9O4uxuJTkgVoEwHipOKnEI/ZcQMu2tACqbAoC5Wfk6cIone41uLci
 4w+OFNqO81erF/hJF0Ooe0LsFnP95rauNiAicWptuJjWFA1dB/BOvsERnIsOmcJkrv+8
 N+MXtCwLWqJivoAczYkQudtFoiwNDwFUjspdY4pUkioOreGzqClQjqu9iMS/T2drK3Dy
 /ZLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762165902; x=1762770702;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=FoPFhQQS89S0PG9IrFQ4Ih5iU0Zai424+/DcdPiuCSc=;
 b=CucXvUgyR8WQJccOeFmH9Fh5fv1IGmN/1dOoy2pe8+DSxknze2uvs1SNq1+kW5D58K
 sM8X+pO7jTPb5LlP6l3OJQLh4fv9uHImes0mtVtnBzk4zDvYE77imZb4LGFt4A5j10TQ
 nigIg0oVG1w7lvakfUHaXqilRLeRhOM8T5LWDGL2l+S6uu9nzuOu9I6rYQazqGM4Hhz7
 Q6D+xfM2CG+wyO/2L4JvuOkvXWzEjXGmLX7tSZ85pkG90ZIjdj8wuhxwlI/14Zpj5fAO
 TQYVelD3uNUbsCpI9k+QoTM9oNxrRIDruV8WgEveiHlbKo5uu/WqF+OD0MVdG02a9TWa
 u1qQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVWeZvAsvQIluCrzlVKaJdWXtSfqyHcinO0EZZghxdFRLIL0pv0Sia0jB7m5Rf2tMI5YY/RyYGrLpA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxiDl3ivaYx/h4aXDEx8w7rK5RfhRmBMs1ozIszEzHGh760VcWy
 1vQ9tpFaf6T17CmR8biP8L7XXiH6MN0EFCTED6uwT5a3bqeNPFoNanz+/7z5SwA8uuldM17o40g
 9KY36YBI3LddlhRDPbfDhKeA7mOvo2ptT5t/12RcTWQ==
X-Gm-Gg: ASbGnct4/LTTK3+TKF1NVHf2RvaGJNZBOMDHU2rbGI2s9qQfs6w1v0pheSAdMQQ4aaz
 fd56OLZGlYsXvVTDsaDBplfU8o4JGeZhYjzvv9S7+ApHsyfPCiqPv3XLujmfCittfcoH3EVEhn8
 PqPmAAto+HQ09M7RBilHEfwQYDRB2kfCj7onqCF7yiu6c6DIOpmTQDJEX5RULfoCYOGr/ENgdeM
 CsuwEZPMTa7Tzfccf+DDYp4JIvEIWSetippQXTY7TeGAFWemnrL2bXbWC9renSK/6h5yW4/0aZR
 W8BdiyhzDIuagLc0lHLIk9vs6fYs
X-Google-Smtp-Source: AGHT+IEwAU4SOZwUJVarSaQslcnJLXDLRhKZeIYvNp3qfEofTMUe8ZL6Dwbf77J+nSRDOQjf4bHs+Hk1B3ORqp9w7+c=
X-Received: by 2002:a05:6512:3b9f:b0:594:2f46:3906 with SMTP id
 2adb3069b0e04-5942f463d1amr413899e87.42.1762165902161; Mon, 03 Nov 2025
 02:31:42 -0800 (PST)
MIME-Version: 1.0
References: <20251031100923.85721-1-marco.crivellari@suse.com>
 <20251031100923.85721-2-marco.crivellari@suse.com>
 <zduzgow2hyvxfzmrhqansber4eeg63av6i533oihvx4ubxdqaz@wu64gw66b4jt>
In-Reply-To: <zduzgow2hyvxfzmrhqansber4eeg63av6i533oihvx4ubxdqaz@wu64gw66b4jt>
From: Marco Crivellari <marco.crivellari@suse.com>
Date: Mon, 3 Nov 2025 11:31:31 +0100
X-Gm-Features: AWmQ_bkkbh1PZ_mUlCEwcGKqGMRPmj0_7LacVUfhPhRpCu1buDmddrltRgzVqeM
Message-ID: <CAAofZF6EE=grXh8mowNRDcDkL8RwwrvGhawcjGqcEhn5M4M6zQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] drm/i915: replace use of system_unbound_wq with
 system_dfl_wq
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
X-Mailman-Approved-At: Mon, 03 Nov 2025 12:46:06 +0000
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

Hi Krzysztof,

On Mon, Nov 3, 2025 at 11:19=E2=80=AFAM Krzysztof Karas
<krzysztof.karas@intel.com> wrote:
>
> Hi Marco,
> [...]
> This commit message is very similar to your previous change:
> 128ea9f6ccfb6960293ae4212f4f97165e42222d - did you do that
> intentionally or is this a copy-paste mistake? This is also
> prevalent in other two patches, so I am curious.

Yes it is intentional. Well, the idea was to give a bit of the context
about the rename of the workqueues, sharing more details in the
cover letter (where is present also the commit hash you shared).

Sorry if this created confusion.

> >
> > Adding system_dfl_wq to encourage its use when unbound work should be u=
sed.
> Please remove this sentence, because this has already been done.
>

Sure, that was not intentional (copy and paste mistake).

Thank you!

--=20

Marco Crivellari

L3 Support Engineer, Technology & Product
