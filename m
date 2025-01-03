Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0A2A00419
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 07:08:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D24F510E7F8;
	Fri,  3 Jan 2025 06:08:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="bR4439Qe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
 [209.85.208.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE13610E7F8
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 06:08:08 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id
 4fb4d7f45d1cf-5d3bdccba49so21705679a12.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Jan 2025 22:08:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1735884427; x=1736489227; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=sFlWSYAVuSson+OhthOc5MObp0JO2PaKlR/7cwxtKLk=;
 b=bR4439QeKalwZcx48MnD/3jiNO9BhnkzintQWhMCwLuHavDTVIIXw4TrmyC243nkzu
 9ZcggTl/UHtJOTOUMZcZVwxzotgQZcymKOL1hx2QKpfdPVbgItWozPq0d9Zbtv0LhzCk
 PLcYhMs6RHlO9LGCGpQz1fT1zms10IOKe6+h10sWyym1bg44GbCOwgQDT7PxUMcrU5M6
 3dlO/0sG8LIJzHShwVNL29R9ybviDRP6bJQcvrVgjEoV+bB+ZdJuOctDlI9ILsdr8Ie1
 x22STMCS7ly4H+rHS59ZR17pdXC4/xy1SVrYTDz5iY5mVhvGAKyhE2F8NHRQzRovUmuo
 esww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735884427; x=1736489227;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sFlWSYAVuSson+OhthOc5MObp0JO2PaKlR/7cwxtKLk=;
 b=mY2cukS9uabH2WpetViH66gnzabLd68rlZQKK+UGDZUmaTOb+K8LhDIF5hwIurO37X
 bh66FU1pBjgAcz8RAMJM0iZvJZXBKewgNpEywEqQdAhaJxlw/046WWdlR1nbFGd5pvRf
 LxOsbiNzk0zJVf1fxNMUPtdGgGFE260TrVA2/UBtDuCtgnaWfhinpM43Q1PqPia2YHGD
 jrleC11X3na0uExMhx3mraf2CoC8IqQ7pik+90DFhazrVKUsFrvU9y/WHj1p/WmBDtz7
 cp0AcgA83A43hwL3Gqc9gIyhLN/Q/is2qtzpVkLMH1W37jJsAhaFR9J9kazchUAqYpxx
 LPTw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVp4FGAbn6Wa39cxFtu/PQmz08IKsRbPD4stF3gvjAJGQpnFavoWCQhowbY5g8YEX3juvPpkjlPW9A=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxVHaVAFt12EztV1QvgXpimNJYGNPOOYfU3teUOZt6ETNxdfrgZ
 bixXYktO3W1fvT6CGT4BtuD1hpB+FMZQvmEcxkyG67Uu0NzViYAoGvNrpNfr1x8VtegpxZvyOz/
 H
X-Gm-Gg: ASbGnctefThCL3eV49rVt6Hejj21jA5H+gdVYMH4uXUVBXChH16SCQuqeDXjGqvCfkB
 YZ/ZnJdJrZ1HEsPmHUyGKhRLeiSkcRrqSMZPIqcqzF5HmoihcrQjbgA/KaZGVb063kucumUX+V8
 NjLAn9cMhlqIpbyjJicbfWWhfBDckDrMaeOMmNkfQfLpuCDP72hEET4J04+DGWQJiSy1o2olAWS
 5onJwIV5HI/1q4nP1FwNh2PyNOuD+4GkpCocO+BWqGg/mlz0VtObhWQlMG68F+wILyqEMYfWHD1
 6nifZRqMGTfHPXlq0kk5m+Lg6dEIneUTd9nW
X-Google-Smtp-Source: AGHT+IE6y4JdTtlzcbrnGGg7v7FjSgwU7e/vWxQ7TgNE5uhhWt7BpBzFop0XHrbVtbgwiv0CXbLJOQ==
X-Received: by 2002:a2e:bc1a:0:b0:302:3a46:10a7 with SMTP id
 38308e7fff4ca-3046851f9cemr129431821fa.5.1735883938405; 
 Thu, 02 Jan 2025 21:58:58 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-3049ec4ca6bsm26165151fa.56.2025.01.02.21.58.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2025 21:58:57 -0800 (PST)
Date: Fri, 3 Jan 2025 07:58:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
 helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 robdclark@gmail.com, 
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] drm/ci: uprev IGT
Message-ID: <dj2r22upxnj2aicjnsvoqnhd4n73tyfgm36jtvixxp4vphocev@gggcjakm3xge>
References: <20241217160655.2371138-1-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241217160655.2371138-1-vignesh.raman@collabora.com>
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

On Tue, Dec 17, 2024 at 09:36:52PM +0530, Vignesh Raman wrote:
> Uprev IGT to the latest version and update expectation files.
> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
> 
> v1:
>   - Pipeline link - https://gitlab.freedesktop.org/vigneshraman/linux/-/pipelines/1327810
>     Will update the flake bug report link after v1 is reviewed.
> 
> v2:
>   - Pipeline link - https://gitlab.freedesktop.org/vigneshraman/linux/-/pipelines/1331363
>     Updated flake test bug report links.
> 

What is the current state of this patch? It would have been really nice
to get it in, we have patches depending on updated IGT.

-- 
With best wishes
Dmitry
