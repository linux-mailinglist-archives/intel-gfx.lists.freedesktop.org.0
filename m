Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FA5C30275
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 10:06:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A676910E591;
	Tue,  4 Nov 2025 09:06:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="KFKowNyO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CE5610E591
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Nov 2025 09:06:16 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id
 2adb3069b0e04-5930f751531so5075677e87.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Nov 2025 01:06:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1762247174; x=1762851974; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Ve6j/8aRh68YK2EiWRDoB5ZD0BlMxlKqu7uay938KFA=;
 b=KFKowNyO0aEXdNDRSp28ZWVDjICPxrJxQIroOKbjKhUU95TudJZC3TrxZ7qgNE+syS
 inN88dPwE3A0i8lba1Xr+YZNFgK1Jz1Y//otKcDbZwfSu6lx9RGiZfIRbtajMeX/F99H
 jLOjtg3nqrYXjNRRSvW9Jv7ggqZEwZCoYcwzFQVYGGTHT8nVYI50rs6scmLfFT/T+x/i
 E7CfohB2tLY1hxWTtweyeAmJS7qjSx2rZQpMEM1BG24XPudZvkW8s/JxSWoE8gD92M0L
 XYIhKIr9d5oNKvEVYwx9dJ9HNWAOOiRXtrMNC+i1p9cqlTE+w6z4YIS0OVS/Ag4S4u/O
 7n5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762247174; x=1762851974;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Ve6j/8aRh68YK2EiWRDoB5ZD0BlMxlKqu7uay938KFA=;
 b=W5WjlaZ4kBWpvG0wfOUaePJLGh2ZnfzNV91te5VO0AxXT9z3VfZc74hZMi9AWKirQw
 gsU/clP8jy85PzDkGIeKcEQyGxR5HC/ekVkKGKdKoOkRUNouDtL34W6Z6DaoD+X3Hwhe
 I1bRJmTOaSYGeNyLfHy4inYPVsCE5/TTbSxTgE2RLcv5ye1fvoMHvy8s7sluIXQP3RQ4
 +Thtb/41EmkL/ppTggFEm3KI09QarSkWw5u9MxRHPGiqNoX6f1eVe8DU8slx3GSOWnwJ
 Fh4oGW6D8FCh+IXsCpYw5djwvtD5ihDmoCXO57JSPY6bn4mP7nk673XwIlRbb+T5Lnj0
 rQKw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUhWW7wXtnY9ZqzQVBG8epiWUavt6gkD1Ca/u9d1sZj/WC1r7tSV2yYQ1X9IaMnabgDNrgq1Ru0KDY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yyrq8Hu8QxSaMnbMf28gbRX8oJ52KQIGKLL1z+WW7KRZ/DYzumE
 jsieAlxJaUuBDdtBnBqj3tL362i6hQ/mb6MTSNtmNWzs0SScjZn3yZGmH6DIVPWHufD+YDbx2nF
 rDNltWovlzWqzpEHmikdeZbAaQ7W9YOI8xEgvISpLeA==
X-Gm-Gg: ASbGncsufnex0U+4hpAZV4bpAZeoxWxPlpctITqi2MclcAFUZbPWQw8/G9UF1bFDpuS
 BaKz/upqC3XuwhbHZg13nlTCHp7XchOcG54apl4bTRP16GrwTTb+3IwyZw+aBITM7Ziz5Q+vlFX
 QElPC199NcJlXosP3wbNJbGijPTk87fRLbLjgRCb4xY1PKviPyfAsGojwVZ2ItIXhZ+1fwihz8w
 Gb93iNqQgh/C1Y+xrs4CImLgPRzs1krHYlMXI1DoeqvrpjMyj90sVCZU+SDkPxw8yJPyQKd48jr
 sOFND7oING0CBhr8Kg==
X-Google-Smtp-Source: AGHT+IGoHrnYG8pwuIHGlYyWwSS5cdb6Yc2Im4z8V243Aw9CaUJS7Bdv48REX9tserm65W5shJTVHeZLHIb6C1wIJVk=
X-Received: by 2002:a05:6512:1442:10b0:594:27fb:e7ff with SMTP id
 2adb3069b0e04-59427fbeab4mr2389190e87.51.1762247174389; Tue, 04 Nov 2025
 01:06:14 -0800 (PST)
MIME-Version: 1.0
References: <20251103164800.294729-1-marco.crivellari@suse.com>
 <20251103164800.294729-2-marco.crivellari@suse.com>
 <vzwd2i6wn75oxn5e34xwky74ezpjjosyhx5kvcvwvywhohzegq@xfhhlcdei6it>
In-Reply-To: <vzwd2i6wn75oxn5e34xwky74ezpjjosyhx5kvcvwvywhohzegq@xfhhlcdei6it>
From: Marco Crivellari <marco.crivellari@suse.com>
Date: Tue, 4 Nov 2025 10:06:02 +0100
X-Gm-Features: AWmQ_bm8IBsb5ejrK32XwjdslIRWl6oYAyZossJmkVQl98tzAWm4SvM3BJaQbUs
Message-ID: <CAAofZF7nfB881LL4qry+L2Z7TNsBx+TWgELv1aKEUpkV2H=pAg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] drm/i915: replace use of system_unbound_wq with
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

On Tue, Nov 4, 2025 at 8:31=E2=80=AFAM Krzysztof Karas
<krzysztof.karas@intel.com> wrote:
>[...]
> "This patch continues the effort to refactor worqueue APIs,
> which has begun with the change introducing new workqueues:
> commit 930c2ea566af ("workqueue: Add new WQ_PERCPU flag").".
>
> Otherwise, the sentence "The above change to the Workqueue API
> has been introduced by" to me suggests that you are trying to
> re-introduce or fix something that already exists in the kernel.

Makes sense, thanks for the correction.
I also realize that if I were put that sentence after:

> This lack of consistency cannot be addressed without refactoring the API.

would have been better, anyhow (maybe it had already the correct meaning).

Thank you!

--=20

Marco Crivellari

L3 Support Engineer, Technology & Product
