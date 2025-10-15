Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D13F5BDE631
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 14:04:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C334210E79B;
	Wed, 15 Oct 2025 12:04:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.b="MYoewjL/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D01DC10E7A3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Oct 2025 12:04:31 +0000 (UTC)
Received: by mail-qk1-f169.google.com with SMTP id
 af79cd13be357-863fa984ef5so1097123285a.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Oct 2025 05:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar.org; s=google; t=1760529871; x=1761134671;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yIkDzOp9lOkC64phyHj+bKX1qlxxtXvg/X9w367rNpc=;
 b=MYoewjL/vwDYq3coel9hzz+PwQ17hKdmPqn9U5l3tr4IK/YQM7nYSfkiGpjCOf6vWU
 jBmJqWtGS9Log4iljNq0wCLe+Q6ZfRTd1m5b9YtXd4oW+pzcXjQgPPQ6Erltlg2+i0ee
 iquKRXCXhLqf4xtXhTSYzis79paR+2gUbMdg8Qg99Fj/IPBk6qo6m1MEmuUjwgQwASIf
 qhCAJocJx/V75IBrDE+bL4DVwQh9TUAizsT3NfMd2pb3Xl+0vsjHCCK9nj0zaWAVZGk5
 SqRxwkuKSp5fqP6yWO9N3EOH7nhW7XUv13KP824M1dKwPX9Z6fJhh7Q/d8QDGZpXheG+
 /7hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760529871; x=1761134671;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=yIkDzOp9lOkC64phyHj+bKX1qlxxtXvg/X9w367rNpc=;
 b=gv7IEiJGq/Q7KA6JMe1nzI8gw4f0XBD3HfHAq7LAg5kiAsnjyp4VRbjCOIkud/ITEC
 2q8z6JhoBLEaEzul8ID1vyUfil3LrGbMYmoTnbsh1xz2UT71JEYMuSqSylYGozVmtkUg
 ldhqavUkYk3rXqCMInIOGvX2EyELQahD4t/BUeQ4L1b/6EE/XmQDBgkSuJ/Q0g20KZdP
 vtJICPUgOnPfBo/x3QULsc9mtsah8DAJCJGqPMeLGrjRSnOy/17XZr1Dy4fWvW+IgRhB
 ImXHe5JGuGD+xqzU8kJJ242HQVlqDve0G7vuO+/hQIP6wrmOEaoScjCsmQ4aZ1sd8afl
 Mj6A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXx6Dec0vkqYupA+6U6HbJOLjkvME7UF8IKuZkwPdRR7y187hDGoBl3GMpKHPJXIW57ijOw+gwckbc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzmU0d+bZQegXtGwCAHO0S7xjlP6s3hcM0AifYpIoaOxyt2JS6K
 zlNysiUOaHrMgENa6YfO/E5A/GkHGm6ARi8mUGp67eSvjgVVY1lHElST1FYE1tiRYY6qtlmgeTE
 QsSlUfAQ6Q137N4vntOj2LkKnwyNcP3Hi/pjV7jBgFA==
X-Gm-Gg: ASbGncsU0Jy1NS2M7HYeWqa0ZWtaVANcCnZNEaFpaRFJ8iPpVCro8WZr32BMDdRHWrz
 oz+2Wa9Jyv7iWpwgFjHSFvCniU2fBRxOOZPdrGKgDJaaL1kCewI4RUmu0LbMkswYcWjpch8VKuB
 dNlvqDwXscB45xgsYoJBEqHAdSxxroGniYqapXw84wvklBvqVbMa3UDGp3MOq7s1s7Si3WfDKQl
 5SYSwS6cjm5iFUeqpSToHbDa1Ewb7vZsA==
X-Google-Smtp-Source: AGHT+IGsy4ghNUujV8ICs5xCd3l4JFRIFi1WBGAyKhaZaEA9CMFYjjgZCN0vS1WL/9stf48sqTR9sa0kj6mJ0PU2Rkg=
X-Received: by 2002:a05:620a:800b:b0:85b:5fdf:69ef with SMTP id
 af79cd13be357-883524cb7c1mr3776426285a.30.1760529870781; Wed, 15 Oct 2025
 05:04:30 -0700 (PDT)
MIME-Version: 1.0
References: <20251013060212.14583-1-vignesh.raman@collabora.com>
In-Reply-To: <20251013060212.14583-1-vignesh.raman@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 15 Oct 2025 13:04:18 +0100
X-Gm-Features: AS18NWBrg_BqO2tS4RN_x8d2btqMDE8us2R2sNEBkP2IYKjicDOGCIjh3Jp7IkM
Message-ID: <CAPj87rPDppYBRuQ99mh=VqrsSErGKcw-ZRY+zPuGrDj77G5k6Q@mail.gmail.com>
Subject: Re: [PATCH v1] drm/ci: disable broken MR check in sanity job
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
 helen.fornazier@gmail.com, airlied@gmail.com, simona.vetter@ffwll.ch, 
 robdclark@gmail.com, guilherme.gallo@collabora.com, 
 sergi.blanch.torne@collabora.com, valentine.burley@collabora.com, 
 lumag@kernel.org, linux-mediatek@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, 
 linux-kernel@vger.kernel.org
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

Hi Vignesh,

On Mon, 13 Oct 2025 at 07:02, Vignesh Raman <vignesh.raman@collabora.com> w=
rote:
> GitLab recently changed the required permissions for the
> are-developers-allowed-to-push-to-my-MR check:
> https://gitlab.freedesktop.org/freedesktop/ci-templates/-/issues/81
>
> Until that=E2=80=99s resolved, disable the check - it=E2=80=99s mostly ob=
solete anyway.
>
> Based on https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/37782

Thanks for fixing this.

Reviewed-by: Daniel Stone <daniels@collabora.com>

Cheers,
Daniel
