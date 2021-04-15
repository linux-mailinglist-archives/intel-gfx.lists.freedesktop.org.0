Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E939360A74
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Apr 2021 15:25:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B9876EA4E;
	Thu, 15 Apr 2021 13:25:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72E5C6E50C
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Apr 2021 13:25:02 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id e7so14328377wrs.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Apr 2021 06:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=WywktdEbTtzyljlORRM0CB3DNs+MqO2ZnTXlL0mv/o4=;
 b=fQWYTCh/TbjCAQTokqLEmhTY6UYkMgAtqQgyvIaoO5iJfn/4o83vQ0WPY9Fp5Vvd6P
 FZxWCUA2GYIyRZT7ZLBFE6m0f0sow1XARVuqGuS/OjaGYRttaQ3M1u0FGHzUd51T3uE4
 vp1EcF40d4BND1jY2djYa5V8Caf+d+u3NZVko=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=WywktdEbTtzyljlORRM0CB3DNs+MqO2ZnTXlL0mv/o4=;
 b=T8OPj92T11O2znEt6PXCVlHe6vszupcGlaQDMANmVT+FOaKTiEKPerc5uYsdQubmDg
 PYYlQnDZm88pAdt+J2G/FX5ebxgFm/VlgmrBT/ywCb6YhKGtMBdmLxicTmhjKSuqoQ20
 /iBqSi3MHjPI2RbL222g27CV7l0mPkZxc8tJYjYAfuI1+5V50Yng1rW5gdUmfeuv5ebt
 fdd08bEMlmVqbjEBaNV8P77nX4xNbnqsGoeHN92YtE1zGiu6p4xdVvRMR8HNzsaCh4Lz
 OJf8DRLdX+9oL7KD0phyFCSaVAbHV11oJ0bVPBOVFvmqJUd5wxrYOLXYvlVlRCATKGd4
 hlLQ==
X-Gm-Message-State: AOAM530+eIGnJ/q0byYSaJwLpStGhKSvGw+qJMj03lOvPUhKqkXU388Y
 3zwaKO5Xf/sBgyPNOgacMlIVyw==
X-Google-Smtp-Source: ABdhPJxLMCuct5x6wsG1F35jUQ1IctQaUuhskZi4yoFI2skonqWnPs46xtoE/OTn1mdUJDcitP/2PQ==
X-Received: by 2002:a5d:590d:: with SMTP id v13mr3464142wrd.85.1618493101165; 
 Thu, 15 Apr 2021 06:25:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l9sm2643631wmq.2.2021.04.15.06.24.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Apr 2021 06:25:00 -0700 (PDT)
Date: Thu, 15 Apr 2021 15:24:58 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YHg+qtZQxitl1m7g@phenom.ffwll.local>
References: <YHg4nz/ndzDRmPjd@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YHg4nz/ndzDRmPjd@intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PULL] drm-intel-fixes
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
Cc: dim-tools@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 15, 2021 at 08:59:11AM -0400, Rodrigo Vivi wrote:
> Hi Dave and Daniel,
> =

> Here goes drm-intel-fixes-2021-04-15:
> =

> Display panel & power related fixes:
> =

> - Backlight fix (Lyude)
> - Display watermark fix (Ville)
> - VLV panel power fix (Hans)
> =

> Thanks,
> Rodrigo.
> =

> The following changes since commit d434405aaab7d0ebc516b68a8fc4100922d7f5=
ef:
> =

>   Linux 5.12-rc7 (2021-04-11 15:16:13 -0700)
> =

> are available in the Git repository at:
> =

>   git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2021-0=
4-15
> =

> for you to fetch changes up to aee6f25e9c911323aa89a200e1bb160c1613ed3d:
> =

>   drm/i915/display/vlv_dsi: Do not skip panel_pwr_cycle_delay when disabl=
ing the panel (2021-04-12 08:00:33 -0400)

Applied to drm-fixes, thanks for the pull.
-Daniel

> =

> ----------------------------------------------------------------
> Display panel & power related fixes:
> =

> - Backlight fix (Lyude)
> - Display watermark fix (Ville)
> - VLV panel power fix (Hans)
> =

> ----------------------------------------------------------------
> Hans de Goede (1):
>       drm/i915/display/vlv_dsi: Do not skip panel_pwr_cycle_delay when di=
sabling the panel
> =

> Lyude Paul (1):
>       drm/i915/dpcd_bl: Don't try vesa interface unless specified by VBT
> =

> Ville Syrj=E4l=E4 (1):
>       drm/i915: Don't zero out the Y plane's watermarks
> =

>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 1 -
>  drivers/gpu/drm/i915/display/vlv_dsi.c                | 4 ++--
>  drivers/gpu/drm/i915/intel_pm.c                       | 4 ++--
>  3 files changed, 4 insertions(+), 5 deletions(-)

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
