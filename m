Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C20A872808
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 20:54:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F32FA10E19C;
	Tue,  5 Mar 2024 19:54:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="I5Jm6nep";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1B0010E19C
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 19:54:27 +0000 (UTC)
Received: by mail-qt1-f170.google.com with SMTP id
 d75a77b69052e-42a029c8e62so47639731cf.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Mar 2024 11:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1709668466; x=1710273266;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=vi7ZboZ9Wj7TagrD4/dwe7KEg1cmTBW4/WNZTKt6wh4=;
 b=I5Jm6nepZBLS6uRxZ9L2Z4yX7S/SIuYNMclK0yTdYPhQpxgbONLKfZXnLQYutigWyV
 BETzRdV2ncmvyZVyfmw53aaOZdY8WOzuEvaHCyw2NqRqRkTLEmbuoSTViRepWAdMT4iJ
 uieQojaDGl4DSndnsyhUcwTJexYYzv5Qp2ACE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709668466; x=1710273266;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vi7ZboZ9Wj7TagrD4/dwe7KEg1cmTBW4/WNZTKt6wh4=;
 b=T1Kfl+t4r0+bRaW24zwkLeov7ydiWMl6ybDRrS/bPvve9J4nLA1VzJTHSVKzBbnA/T
 Nb1CugUybM+e2IsOX2KkQWlsbQhlW033wpQR4kcnW4S0B3P0cAfQOpkexDr5g6BtBOtl
 wQDmbT3CX2l4OAMEDFJsAgkn4qa4+vLsW48r+j3bjZxdK1D8JE0H/LQODfDe8+o1EoHg
 Ug1Tdd+cn/2/r8SENzhqe5bm1JQIbNqw+izaqzlsYf0fLcX1IOEEMXZOmkyTGeH/Z701
 PgAGm8q85D4gI5VdXo7jeGLeJuFpWUQR1vTriMsm4XZAzsJcPZxqzHOPqGoSKgwVfuut
 trDw==
X-Gm-Message-State: AOJu0Yyc1X+spxoevAyttprngTuSvroHGBfNTdsr6JpVcdEXIOSzaAGt
 NwZj7cptm/Jv/0jXOHrrqnKZuBk/t0nKzT+4QVzH2XeI0iKT/Tsf+JhUMVR4wQ==
X-Google-Smtp-Source: AGHT+IFbb3sXh394Sq9uRjt9meeGFN6ZGr/kkKML7WmxgUkZaVSvWAshrvl9cmoBtXHCbqE1zL9rjQ==
X-Received: by 2002:ac8:59c8:0:b0:42e:d04a:4c85 with SMTP id
 f8-20020ac859c8000000b0042ed04a4c85mr3041977qtf.66.1709668466358; 
 Tue, 05 Mar 2024 11:54:26 -0800 (PST)
Received: from google.com (206.254.145.34.bc.googleusercontent.com.
 [34.145.254.206]) by smtp.gmail.com with ESMTPSA id
 a6-20020a05620a066600b007882c088009sm2091769qkh.81.2024.03.05.11.54.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Mar 2024 11:54:26 -0800 (PST)
Date: Tue, 5 Mar 2024 19:54:24 +0000
From: Paz Zcharya <pazz@chromium.org>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH 2/2] drm/i915: Implement vblank synchronized MBUS join
 changes
Message-ID: <Zed4cL-bvHEuIgs7@google.com>
References: <20240228080213.17441-1-stanislav.lisovskiy@intel.com>
 <20240228080213.17441-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240228080213.17441-3-stanislav.lisovskiy@intel.com>
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

On Wed, Feb 28, 2024 at 10:02:13AM +0200, Stanislav Lisovskiy wrote:
> Currently we can't change MBUS join status without doing a modeset,
> because we are lacking mechanism to synchronize those with vblank.
> However then this means that we can't do a fastset, if there is a need
> to change MBUS join state. Fix that by implementing such change.
> We already call correspondent check and update at pre_plane dbuf update,
> so the only thing left is to have a non-modeset version of that.
> If active pipes stay the same then fastset is possible and only MBUS
> join state/ddb allocation updates would be committed.
> 
> v2: Implement additional changes according to BSpec.
>     Vblank wait is needed after MBus/Dbuf programming in case if
>     no modeset is done and we are switching from single to multiple
>     displays, i.e mbus join state switches from "joined" to  "non-joined"
>     state. Otherwise vblank wait is not needed according to spec.
> 
> v3: Split mbus and dbox programming into to pre/post plane update parts,
>     how it should be done according to BSpec.
> 
> v4: - Place "single display to multiple displays scenario" MBUS/DBOX programming
>       after DDB reallocation, but before crtc enabling(that is where is has
>       to be according to spec).
>     - Check if crtc is still active, not only the old state.
>     - Do a vblank wait if MBUX DBOX register was modified.
>     - And of course do vblank wait only if crtc was active.
>     - Do vblank wait only if we are not doing a modeset, if we are doing
>       something before *commit_modeset_enables, because all crtcs might be
>       disabled at this moment, so we will get WARN if try waiting for vblank
>       then.
>     - Still getting FIFO underrun so try waiting for vblank in pre_plane update
>       as well.
>     - Write also pipe that we need to sync with to MBUS_CTL register.
> 
> v5: - Do vblank wait only for the first pipe, if mbus is joined
>     - Check also if new/old_dbuf_state is not NULL, before getting single pipe
>       and active pipes.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Thank you for this patch, Stanislav!
We tested it on a MTL-U based Chromebook (Screebo),
using different configurations (eDP, eDP + HDMI, HDMI, etc.), and
it worked well -- joined the mbus + no visual issues or i915 errors.

Tested-by: Paz Zcharya <pazz@chromium.org>

Just a small note, checkpatch.pl is complaining about a few things.
I assume you probably saw it, but flagging just in case.
