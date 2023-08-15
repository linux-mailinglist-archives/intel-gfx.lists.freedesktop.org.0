Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC2177CA84
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 11:34:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24F4110E244;
	Tue, 15 Aug 2023 09:34:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com
 [IPv6:2607:f8b0:4864:20::b33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4501A10E244
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 09:34:25 +0000 (UTC)
Received: by mail-yb1-xb33.google.com with SMTP id
 3f1490d57ef6-d6d52f4f977so1346685276.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 02:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1692092064; x=1692696864;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=+aqCbCTG3SX610WFzHfhqf3xPqj9uNEUpVVBMJW8z0I=;
 b=XZGntxvNC+CEc2MXkWduVwxQi/ZuEzk3rFernd2f4QjilSsrdJmUghl+FHjvuNQzC8
 ivqd7dhBa9J/B/4/jrx3sxY2Du+fT/+GuhwAgRbKXs8SkKr67v8yeviWAxaertP00iW1
 4DvodqdlEQ1BPwQUYnIYiaz4zpvDov0HyFQVmUIzmd+t62iP5DbMEsj8HmFjAGEtQ2S/
 0X75oWuQx0UijmbqrDZbquibpVg+6BQ6iVmSEMU68CPeKd9yj3fJQ6hoDVZUJ1roOhdb
 yup0nHP2wifPqQ+nuSoKVHxW8EpkzO+G3FqG+T5EJHX+WPfHnpGaoMySAzDEkGSOLx82
 M1EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692092064; x=1692696864;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+aqCbCTG3SX610WFzHfhqf3xPqj9uNEUpVVBMJW8z0I=;
 b=l6VoXQpoh3M3QHd9con6pts5C58SHni30/VWL/fb7FKagLCMr/OJ3WP0/fybbdNcIQ
 5G8H8wJidhsnmXmoDkPGGpTd4KF17oYnkFDQsOiFSA1yG0eR9Xtj67+y+sntB9KMtaqf
 XgfpMMRaaqSLPHnjVXlWD9ZwiKGwCudx+/9FA6YgHAIOqJKQ8FHCnTZcYHbiJka6+6qA
 TY9fqGGc6Bp3NjinxHDMFh9PJZfTCoI+itQFXYHBjXBu/yUeUyu6kBi3jVLz0C9HkUiq
 lElYKD+ieKcVGU/B2+wMd55mcRxYgkPRF9xslE4biRz/KzmInn1ljxV4JpaPJodVYDZs
 hRzw==
X-Gm-Message-State: AOJu0YxcI4/cKY9OK5IBBkN3usGVB3L/neuqRLG5tDVrRGq+ugt8lt1w
 sbzTMJuFnUn3xwJ42QHLnLjU9F/ZL584K+1I/TJtvw==
X-Google-Smtp-Source: AGHT+IEfXX/MlO8c55xxd4nYTkR0pVOGbMSAvB3eqL1ZoAPyv0aSzyNCevnKIi/joAb+59pUky5etVEa0uWfeiJJaYs=
X-Received: by 2002:a5b:951:0:b0:d4c:82ff:7bde with SMTP id
 x17-20020a5b0951000000b00d4c82ff7bdemr11623030ybq.63.1692092064397; Tue, 15
 Aug 2023 02:34:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230720125418.236140-1-imre.deak@intel.com>
 <20230720125418.236140-3-imre.deak@intel.com>
In-Reply-To: <20230720125418.236140-3-imre.deak@intel.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 15 Aug 2023 12:34:13 +0300
Message-ID: <CAA8EJposiCUaC5xixiYU_awKy=B8tW9ptn3fSpesSVephAg99g@mail.gmail.com>
To: Imre Deak <imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm: Add an HPD poll helper to
 reschedule the poll work
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 20 Jul 2023 at 15:54, Imre Deak <imre.deak@intel.com> wrote:
>
> Add a helper to reschedule drm_mode_config::output_poll_work after
> polling has been enabled for a connector (and needing a reschedule,
> since previously polling was disabled for all connectors and hence
> output_poll_work was not running).
>
> This is needed by the next patch fixing HPD polling on i915.
>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/gpu/drm/drm_probe_helper.c | 68 ++++++++++++++++++++----------
>  include/drm/drm_probe_helper.h     |  1 +
>  2 files changed, 47 insertions(+), 22 deletions(-)

I support merging these patches through drm-intel rather than drm-misc.

-- 
With best wishes
Dmitry
