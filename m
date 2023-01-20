Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BACE675EFB
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 21:34:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F38210E185;
	Fri, 20 Jan 2023 20:33:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A3DC10E139
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 20:33:51 +0000 (UTC)
Received: by mail-lj1-x236.google.com with SMTP id a37so6786190ljq.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 12:33:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=content-transfer-encoding:mime-version:message-id:references
 :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=6a1CsEt8CudzRfvBnwyGdGse2R0fVkuKsLbjSK3W3ZU=;
 b=BV4fyxZgFNPW/IkcBFL26ouEsyGDHeRDZG+9LaXTS9UmerEGGQKt8zSbntQy6f70Ee
 DLFKPt4Ecx2aFtqeP66leWda/QaPgnyvwyvs0F2PEME9O2F7dU425QOhtLUktr9DHz45
 mJoISy2zum6vUbvBGLxP65OznjqVzj4BrHB+hXTfxQudiviaVX7OodTaOtNk12l463Eh
 34aLCeGzHfmm35Z2aO+do5+1C2o0wxgnoiSRZwXLYXZgIyu+Zgc/zypkoYvaEHMtFoZy
 1PudTMMcf+ygD/aB3VrnDYcwDR6zNmtKRCxKjjkxBCL+nHWswnVnaPa1EDCarbaySvWD
 McDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:references
 :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=6a1CsEt8CudzRfvBnwyGdGse2R0fVkuKsLbjSK3W3ZU=;
 b=qJ8JZ+rwJCrjSbUjBvbCNoxSlGfXOJSZojNWaS9RySKNPvkFU8yr7Mc6K1GNO4NJ/L
 Gw8CW4ugW9N94qeucvuFts9yxILKiL0/A9SiBPlGt4RmLnk3pKLKtbyWbJifJplJn0Hy
 j0/Jpw2MVxbJGV3xxNQwoT7xtKLC/HtEqSI9jIe/ZY19j2XpOHJtrOqDCTg5F+IYIQAx
 B4jbDNS79zfOEucQmJpnKzmXA1t5HKt2d/Rkvuk6nDnuhKv9KgWZqvFPckYUJKXMr/K4
 Gft/BU6akEaBXrTGiigf41bO27adZIVWzxpB9+sitqv5bcS6tsIbrqeONzhs17i/QkvS
 EaAg==
X-Gm-Message-State: AFqh2kpHwNodr3/BKv98h6o0BtWXOfsKAQcbFFHDeWDA/7paT2HlKFGm
 Wem+C2ELASz+0iVDMsvccpe4tA==
X-Google-Smtp-Source: AMrXdXseY041EcoBVjr8I7TjlaoEgXg0O09aGRO1387zhmObbC/gygm6bg9SKzzA3KsLfgKlsqBVYg==
X-Received: by 2002:a2e:9ecb:0:b0:283:ce76:415b with SMTP id
 h11-20020a2e9ecb000000b00283ce76415bmr4760051ljk.29.1674246829689; 
 Fri, 20 Jan 2023 12:33:49 -0800 (PST)
Received: from [127.0.0.1] ([188.162.65.44]) by smtp.gmail.com with ESMTPSA id
 k6-20020a05651c10a600b00287d9d49939sm3518968ljn.81.2023.01.20.12.33.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Jan 2023 12:33:49 -0800 (PST)
Date: Fri, 20 Jan 2023 23:33:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sean Paul <sean@poorly.run>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
User-Agent: K-9 Mail for Android
In-Reply-To: <Y8q0H7SiDkdfmyXP@art_vandelay>
References: <20230118193015.911074-1-markyacoub@google.com>
 <20230118193015.911074-2-markyacoub@google.com>
 <67170ce0-8622-8b35-e73a-7d873b7a3b8b@linaro.org>
 <Y8q0H7SiDkdfmyXP@art_vandelay>
Message-ID: <A0271342-FB1E-4F7C-BD94-7506F4FACE6E@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v6 01/10] drm/hdcp: Add
 drm_hdcp_atomic_check()
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
Cc: quic_sbillaka@quicinc.com, konrad.dybcio@somainline.org,
 dri-devel@lists.freedesktop.org, dianders@chromium.org,
 krzysztof.kozlowski+dt@linaro.org, airlied@gmail.com, hbh25y@gmail.com,
 marex@denx.de, abhinavk@codeaurora.org, javierm@redhat.com,
 quic_khsieh@quicinc.com, agross@kernel.org, quic_jesszhan@quicinc.com,
 devicetree@vger.kernel.org, tzimmermann@suse.de,
 Jani Nikula <jani.nikula@intel.com>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com,
 quic_abhinavk@quicinc.com, swboyd@chromium.org, robh+dt@kernel.org,
 christophe.jaillet@wanadoo.fr, rodrigo.vivi@intel.com,
 bjorn.andersson@linaro.org, johan+linaro@kernel.org,
 Mark Yacoub <markyacoub@chromium.org>, andersson@kernel.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, seanpaul@chromium.org,
 freedreno@lists.freedesktop.org, maxime@cerno.tech
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 20 January 2023 18:32:47 GMT+03:00, Sean Paul <sean@poorly=2Erun> wrote=
:
>On Thu, Jan 19, 2023 at 11:37:52AM +0100, Krzysztof Kozlowski wrote:
>> On 18/01/2023 20:30, Mark Yacoub wrote:
>> > From: Sean Paul <seanpaul@chromium=2Eorg>
>> >=20
>> > This patch moves the hdcp atomic check from i915 to drm_hdcp so other
>> > drivers can use it=2E No functional changes, just cleaned up some of =
the
>> > code when moving it over=2E
>> >=20
>> > Acked-by: Jani Nikula <jani=2Enikula@intel=2Ecom>
>> > Acked-by: Jani Nikula <jani=2Enikula@intel=2Ecom>
>> > Reviewed-by: Rodrigo Vivi <rodrigo=2Evivi@intel=2Ecom>
>> > Reviewed-by: Abhinav Kumar <abhinavk@codeaurora=2Eorg>
>> > Signed-off-by: Sean Paul <seanpaul@chromium=2Eorg>
>> > Signed-off-by: Mark Yacoub <markyacoub@chromium=2Eorg>
>> > Link: https://patchwork=2Efreedesktop=2Eorg/patch/msgid/2021091317574=
7=2E47456-2-sean@poorly=2Erun #v1
>> > Link: https://patchwork=2Efreedesktop=2Eorg/patch/msgid/2021091520383=
4=2E1439-2-sean@poorly=2Erun #v2
>> > Link: https://patchwork=2Efreedesktop=2Eorg/patch/msgid/2021100115114=
5=2E55916-2-sean@poorly=2Erun #v3
>> > Link: https://patchwork=2Efreedesktop=2Eorg/patch/msgid/2021110503043=
4=2E2828845-2-sean@poorly=2Erun #v4
>> > Link: https://patchwork=2Efreedesktop=2Eorg/patch/msgid/2022041120474=
1=2E1074308-2-sean@poorly=2Erun #v5
>>=20
>> It seems all your previous versions were sent not to correct people and
>> lists=2E Therefore we see it for the first time even though it is v6!=
=20
>
>Hi Krzysztof,
>Thanks for your review comments=2E
>
>Here are the addresses the last version was sent to, who is missing?
>
>To: dri-devel@lists=2Efreedesktop=2Eorg,=20
>    jani=2Enikula@intel=2Ecom,
>    intel-gfx@lists=2Efreedesktop=2Eorg,
>    freedreno@lists=2Efreedesktop=2Eorg,
>    rodrigo=2Evivi@intel=2Ecom
>Cc: bjorn=2Eandersson@linaro=2Eorg,=20
>    swboyd@chromium=2Eorg,
>    abhinavk@codeaurora=2Eorg,
>    markyacoub@chromium=2Eorg,
>    Sean Paul <seanpaul@chromium=2Eorg>,
>    Maarten Lankhorst <maarten=2Elankhorst@linux=2Eintel=2Ecom>,
>    Maxime Ripard <mripard@kernel=2Eorg>,
>    Thomas Zimmermann <tzimmermann@suse=2Ede>,
>    David Airlie <airlied@linux=2Eie>,
>    Daniel Vetter <daniel@ffwll=2Ech>,
>    Jani Nikula <jani=2Enikula@linux=2Eintel=2Ecom>,
>    Joonas Lahtinen <joonas=2Elahtinen@linux=2Eintel=2Ecom>,
>    Tvrtko Ursulin <tvrtko=2Eursulin@linux=2Eintel=2Ecom>
>
>> It's
>> not the first such weird CC list in chromium, so maybe your
>> organisational process could be improved? Not only for you but for
>> colleagues as well, so you all start using get_maintainers=2Epl on newe=
st
>> kernel (not something ancient)?
>
>I can't really speak for others, but I use MAINTAINERS from drm-tip=2E Th=
e=20
>previous patch sets were sent before 24df12013853 ("MAINTAINERS: Add=20
>Dmitry as MSM DRM driver co-maintainer"), which might explain why you thi=
nk
>there are absences?

Current iteration of the patchset got at least three addresses wrong=2E Th=
ey have been changed for various reasons=2E Thus I also can suppose that th=
e list is incomplete and/or incorrect=2E

>
>Thanks again,
>
>Sean
>
>>=20
>> Best regards,
>> Krzysztof
>>=20
>

--=20
With best wishes
Dmitry
