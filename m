Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A710274DE6B
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 21:44:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D64210E0A4;
	Mon, 10 Jul 2023 19:44:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A19710E0A4
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 19:44:36 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id
 4fb4d7f45d1cf-51d95aed33aso5872248a12.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 12:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1689018274; x=1691610274;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=s1k/BzIJloFoc81i24rzcxM6BgxwKgmO3tKf1bjVaHE=;
 b=h20e2graHAx/ueMXpLHqvYaqirwfeZcfbhFLPyxSkENGg16kuGFW1xE9StxYKJm5BY
 w1LtzDtaF8pzoQ55DwzK3B+AIwMGRGyVB14mImC7Nd+l7MC7vRnrhueiLrVMuCzDX6vS
 Y4O5ZpeIQBzYh3T6C4FsGE9eDh2WyrcU+ZBvg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689018274; x=1691610274;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=s1k/BzIJloFoc81i24rzcxM6BgxwKgmO3tKf1bjVaHE=;
 b=NKLxO6aMFNsemmZXaAtzF40lRhJ1iRuLXctOkmZeMQKH2boUnUIDfm+BjQNAKFXZtQ
 kr4scQjKOjZiqGLKayMND6ADXvfRioVMoOoN8lI4XmllKhqw4G6Pl9wuaeR7BZpMu0E2
 FxUa3Da3A3OyvE2mwGwd/R1rthsPp2E3QDCAGf67yxYfeYAQJrSfvzbWY023xM1z7yZP
 J7mL60VEGTQggECUR40e6dXHeQaORPiT5BqmHbXEjB0x7hOkQMy+mLWY8GL0n+dsw1AK
 fxLNhRWXCfWCfqOibyF9vrLyP2XQBFS4VLtPNQ0yAushmKptoH6TJVqtTwmPEcEzJt+S
 7+0Q==
X-Gm-Message-State: ABy/qLZp0wKoVUPyIirCOD7GI9b0xOA0OL3aYlIaTEMK6Lr6NQU7JlBs
 GJiT4fhyIwTN4DhRX/rNCuemSI6Tug7kSi+p0hBkgA==
X-Google-Smtp-Source: APBJJlGRALumliXENyuCyvqFSe5vUH9vlSc/JHDliiIKxkqxMq3qKgYIFDDYREIWhHivwPoOx1y33Q3Q3nnwDdtWD2A=
X-Received: by 2002:aa7:ca4f:0:b0:51d:d615:19af with SMTP id
 j15-20020aa7ca4f000000b0051dd61519afmr11221782edt.28.1689018274441; Mon, 10
 Jul 2023 12:44:34 -0700 (PDT)
MIME-Version: 1.0
References: <20230623094229.120264-1-contact@emersion.fr>
 <ZR-8c31L0kVNylnQHTP_MlcPiINr0Zd22HZA8DlKV8BuhUqanJ5YiWsUqavQr3AXN2mD20QWOQfrQc_tE4Dju8B-KDGEVh5Dc-9aLqpJbv4=@emersion.fr>
In-Reply-To: <ZR-8c31L0kVNylnQHTP_MlcPiINr0Zd22HZA8DlKV8BuhUqanJ5YiWsUqavQr3AXN2mD20QWOQfrQc_tE4Dju8B-KDGEVh5Dc-9aLqpJbv4=@emersion.fr>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Mon, 10 Jul 2023 12:44:23 -0700
Message-ID: <CAE72mNmN6qVkzrW=HFWOY1stmMGdTHerLNCWiM+_D42jqvJfGA@mail.gmail.com>
To: Simon Ser <contact@emersion.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2] i915/display/hotplug: use
 drm_kms_helper_connector_hotplug_event()
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It looks good to me and will be very helpful for Chrome userspace, but
can we get some R-B from Intel folks so we can get this merged?

Regards
Manasi

On Mon, Jul 10, 2023 at 12:27=E2=80=AFAM Simon Ser <contact@emersion.fr> wr=
ote:
>
> Any news about this patch?
