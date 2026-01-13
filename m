Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B477D17879
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jan 2026 10:12:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70B9010E317;
	Tue, 13 Jan 2026 09:12:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="TTexg3lI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1080E10E317
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jan 2026 09:12:36 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id
 2adb3069b0e04-59b77f2e43aso4871301e87.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jan 2026 01:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1768295554; x=1768900354; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=V5Lu9VL/waQAbTkAQTcFCMqP0vluh93OTwbl1ZNQ4mc=;
 b=TTexg3lIx7deRur2GlDwT5qiTUbx+kk592+f6k9pHpESlUiCRp9O5H84lLi7HA3Rat
 UHti0UejKUATzrzS5Eyq1cQYBRpS4UTGUjyTRIz4d6DdMBp3Phi18KHlruRjJhMfwQTK
 HvrZHCDJ6xdFybw/r7kjUMwipdcziP/y6yjGfNDL2rPVaXuGp6WhJvzOvSjibkwqS4k/
 21gZlL4Bbh3sr2/V2B7iQxO/rSRLTVHwlrFWY0T5Pq+3BS06QT8FKc6tfn7NtoGSvRYO
 ppI8P9epq8Dto6QzHE6PicmN86TPWjNJDnR9AMi00jEkfH3GRgVlk66LQ9ypwC1bFCw9
 X28A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768295554; x=1768900354;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=V5Lu9VL/waQAbTkAQTcFCMqP0vluh93OTwbl1ZNQ4mc=;
 b=X6VrXLfkYShfP7U1mzNReFF6N5K3NjZsxfkk1xkLJZpPwtF3FhULSqnnerhgtxXq/E
 AFcBREFSGzCk7I3CAK0cKvPhgupSNDz1ru1KiiZ1JEoVRVE8kMGf4PP9TwU9ZW7VTmgO
 Id4Kj+diScbDQ0ghm90sUViLwRQSKD+2KKgqJZC4RFa+HyhdKKjAO9Y5/4Jk04Z+VRD3
 EA8nc3XPeJkdKTf9dI+80/Dd+LBPUvHwjoRHcw4Isykl3tanKWBN1S0KgoRLuw3lPdZ1
 xlD2XEyeRE4+5coevo4hpnRmtd26yIgAjDe1QobzSOAatyDdgvigvtqVxNg+xXrv6Ii9
 JNrg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUr4ODrURfUfBkvusPHktUQmCz1O0ewXiBGMJqgzR0oKQ2XE0DbbzpBvLquA5bQLnCPmtViBJDiGJc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyDwsVLcYu2FKLPjORbV+p049EUV+vBeKUwgMu9ttRHK3sHrXSt
 iGnrePHosgO1rR8Yr9OUBPHXSlKqgy4q0qDyKEjgdkH1VvJ9YejhqZszXLCgLtPdvG4gpaFwGwT
 kDrIMKP7qJpcmOmTfbv+TlHv21ro3Yp28RMCQ70tPTw==
X-Gm-Gg: AY/fxX61IAFYV4bVyCPrndzXLX6o2wvNMRVwzRXm6KomKaGhMvWu7zUt6Xz2uJ68ydP
 duNAE+GfHDcwe/2s/T5Cil+G/I4XlGSlH+RISXAPhHfjmTHZ527A7G15DcYL9cfdD4cbSX8WHFc
 N53WYMoDQlmxPYWNEahbGRzxPWJooRXgVS+IBPjVPCl4zEN70rvsCQQodxJl1iWl+13sWCFR30m
 n0XPBxwTNa2qWdPw/zSfI5ps7B4ueqtJN65ia5/98cJJqDWu8e9QAzuWDVhzNjHoXF/gMeHkpe4
 zpcqziWb3I6kCr+LRGogvrR1n0TM
X-Google-Smtp-Source: AGHT+IFO0QWk84GwDkUloLkJLVyn+8xkr3E+9yMv4djfq68ciziTgMuF8uHWaBgPDEn5fYSmiqMy86iO3TOXKQFxaLE=
X-Received: by 2002:a05:6512:3d1d:b0:594:2d64:bce9 with SMTP id
 2adb3069b0e04-59b99205d87mr763490e87.4.1768295554325; Tue, 13 Jan 2026
 01:12:34 -0800 (PST)
MIME-Version: 1.0
References: <20251104100032.61525-1-marco.crivellari@suse.com>
In-Reply-To: <20251104100032.61525-1-marco.crivellari@suse.com>
From: Marco Crivellari <marco.crivellari@suse.com>
Date: Tue, 13 Jan 2026 10:12:22 +0100
X-Gm-Features: AZwV_QgDqvIuirhPPXWl91IKmGczjtuzjt4Lp_eCDerphNV8SI7U_RsqMPGesiM
Message-ID: <CAAofZF4E3dMuM-0aXqRLgb8psB2kzjF1iy3q0Srqp93+MefN6A@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] replace old wq(s), add WQ_PERCPU to alloc_workqueue
To: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
Cc: Tejun Heo <tj@kernel.org>, Lai Jiangshan <jiangshanlai@gmail.com>, 
 Frederic Weisbecker <frederic@kernel.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Michal Hocko <mhocko@suse.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Krzysztof Karas <krzysztof.karas@intel.com>
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

Hi

On Tue, Nov 4, 2025 at 11:00=E2=80=AFAM Marco Crivellari
<marco.crivellari@suse.com> wrote:
>[...]
> Marco Crivellari (3):
>   drm/i915: replace use of system_unbound_wq with system_dfl_wq
>   drm/i915: replace use of system_wq with system_percpu_wq in the
>     documentation
>   drm/i915: add WQ_PERCPU to alloc_workqueue users

Gentle ping.

Thanks!


--=20

Marco Crivellari

L3 Support Engineer
