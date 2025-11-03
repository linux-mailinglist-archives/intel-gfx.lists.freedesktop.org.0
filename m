Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DEEC2BC70
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DED2C10E3CD;
	Mon,  3 Nov 2025 12:46:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="eoproUjB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2134F10E3AB
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 10:33:27 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id
 a640c23a62f3a-b6d78062424so839399566b.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Nov 2025 02:33:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1762166005; x=1762770805; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kOJ/IBO3oLNySkAjeUQaEpdFOYftnABdhDgKv6rsMUc=;
 b=eoproUjBwKBPNAfAHeYOWI2cphwhQ2Q/C1Z/vRATxO6gJlmkAH2Lsc0ajx8nsdzhS4
 zC51HmZS3nE8XFGhF1CB0PEd50xUgu4qw39Km3azcojYgaJVKUKZHZtzskksfNPkPMAg
 AK5H74sUOJwatGDIx2frcK3n4IKnasdTX0is3Pl+dnX3VVXh+8pAfEatmCofjl+YKaaF
 OSSX17FJvaYWZ7pIgBbmHQ5ZiXR7Jg8jl+vBccsbsLExw6ntZd6I0VDGn7kyd4MYektL
 C1lJIKTvMb3ZIr0RWgA6eFOG/CW1c/mEt1Gef1W7Wd60MMocAF2WCmXfMdmxvaBuqsgX
 6SDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762166005; x=1762770805;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kOJ/IBO3oLNySkAjeUQaEpdFOYftnABdhDgKv6rsMUc=;
 b=H26q5PcQgOymrI0xwn6ulmDWf82zlvSSXbrC+U8XNUB1mKCyirRZliGFvBSwMmh8nL
 PeztwC9iPA4JSsTkDC24uxbBMdJ+4jMo8hBV+nGmhBJJqwNOpFOgIpAUxvXkOOuIBJOj
 Uir/x6YxcQv5tJCMgUudTx2tbYj32BwwrLXFv5fTMcA4pDnPVwW+U3DrBFE1bGstLUIr
 CrmMShCw0pDaif5Z6KLKLAwpTFWrm3dOJFDORfIsTf+hId5uGLfaZ6dmnyeb25tZISdX
 pqb19oRxtcrI0Yq3uRc3TeZ1O85c0CXYdMQCFJT7wl9WaGLxcAF8Gh46CarTb0ugb9Ii
 jSYg==
X-Forwarded-Encrypted: i=1;
 AJvYcCU/D0BUXNq+dsu4n/Q6VYP+ImZEj72z41o9U4wRsg3q37215T6Y1WNwS+7YvGsF9BVNia0cyfRzf2E=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx8jEL0yTp25bPVinmOFY5DqR2GIFToLLl6sgeXN4jJE3O7X9Eb
 s9kEn8lQNhKGsIVBaOk18dfd2UMPaLox7sdp1MVF03JlDtKgf/PsKEXctSFoW09k/UKj8KrvNbx
 6nw9lxya3ftCuqesqCjOvVEV7CkMe1Ip+zxdsPJSEzQ==
X-Gm-Gg: ASbGncubF+5ycUEAEsURHXmRkB/quU+GGHCw8y0qiKLSsttyCAL5Sp6NHjsoY7PxEqx
 HbzTqQmQEegYDDNjHs23nRXFXay31osJ8gKKjRhg4wwJ8bIb6L4eqLSHxCA32kVJGCWXQa+qfEz
 lbWF8YxElb/jeEwVKk7HFRSckrJi2qb/TC0rto3dySyj83HMZ7CrH3wkWNxW0rq1nk4sBVQyqqK
 gZm7y30t/88E33lcohCPhvmg8+xMwhObKrnNe7gsy8VU3r2W3Fa+i75E8EmQgAkoDngXP6qNEAX
 PIJH586KT8yEEXsusA==
X-Google-Smtp-Source: AGHT+IHpCT3s3+uBnbx+aIMiSutrxjkGQNeoToq6J0kcvc+HGBKIO6gpJGl7JMeuoPpFA+c6+/i+1zgolV3NiZNm/q4=
X-Received: by 2002:a17:906:6a07:b0:b71:1c98:d270 with SMTP id
 a640c23a62f3a-b711c98ef85mr163236166b.22.1762166005609; Mon, 03 Nov 2025
 02:33:25 -0800 (PST)
MIME-Version: 1.0
References: <20251031100923.85721-1-marco.crivellari@suse.com>
 <20251031100923.85721-3-marco.crivellari@suse.com>
 <s7jsq4mbpkpon3stlizr3mc2nnwpvngmzvnqzfbeg252ua6gto@ohb7js3ufmmt>
In-Reply-To: <s7jsq4mbpkpon3stlizr3mc2nnwpvngmzvnqzfbeg252ua6gto@ohb7js3ufmmt>
From: Marco Crivellari <marco.crivellari@suse.com>
Date: Mon, 3 Nov 2025 11:33:14 +0100
X-Gm-Features: AWmQ_bk_JyhXrMnXA1L70qG_7G1mhPIIkUfgB3eygmui2C_xUmOMiFJJ_9B5MgQ
Message-ID: <CAAofZF43CkrumJ0wy4p197pDzKHGhu7j+Oo5eDghbiwONQNq9g@mail.gmail.com>
Subject: Re: [PATCH 2/3] drm/i915: replace use of system_wq with
 system_percpu_wq
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

Hi Krzysztof

On Mon, Nov 3, 2025 at 11:30=E2=80=AFAM Krzysztof Karas
<krzysztof.karas@intel.com> wrote:
> you could be a bit more specific with your patch title:
> "replace use of system_wq with system_percpu_wq in the documentation",
> so that it is clear there are no functional changes.

Sure, I will do it.

Thanks!

--=20

Marco Crivellari

L3 Support Engineer, Technology & Product
