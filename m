Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6873711F06
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 06:54:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0051C10E083;
	Fri, 26 May 2023 04:54:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 320 seconds by postgrey-1.36 at gabe;
 Fri, 26 May 2023 04:54:35 UTC
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4C5610E083
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 04:54:35 +0000 (UTC)
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com
 [209.85.216.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 827763F1F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 04:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1685076552;
 bh=f3nhgGzwfdB7zUsmHaSKkJ78lLNu7ky/Kwuqpd6GmSc=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=sQL7FUDp4WulLCG3rUfPhIKfXXCPg+RVzgnSb9cMDC9xUL3jR8Zo0+QQ6QVqSS5Vy
 hrv8LG/5D414Q1KhAhvhVJehB8AgGduDSwtIdYAyX/Z4gOuWc3eByRP0Y1Q9b3PvR+
 CEGP3zGEgbqCqqV48XcRDWdW0L225gBNgG8FtlJJ7Cc0pu0dSjvcck+ZExkVtpyrZ+
 GiA1Km+RaDSKoM4Z7M83AetlS9NMTOKczdB9txlJ4BqnevWnVEfaHdkgj858uIIKwU
 BOyox39xWhhIuDJDIBjhW+8Swuint5gOsaKULBSOzGwKS6KgBy6eWe8Q17TwatZXc+
 fKSfFtmEiCssw==
Received: by mail-pj1-f70.google.com with SMTP id
 98e67ed59e1d1-2535728f756so339058a91.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 May 2023 21:49:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685076550; x=1687668550;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=f3nhgGzwfdB7zUsmHaSKkJ78lLNu7ky/Kwuqpd6GmSc=;
 b=eIF1bzOAAmRZYQV0UCmbGzThsv+u5k2GMEDoXUZXZxkBqkclMgRvL8q5FtKIupH3V7
 PjDkELcF8pUYe1W/gnPAvtGiC1ZprpfXuWWjEfM+nt/tabJPPBs0TdGho05sfX3FZwC+
 sMKRUzs6uGLJJEvMXxz/tpWVzZm0clkK/BBV+sx8WgYFAVop4vUa5gyg8ma/6ofs1FVp
 9PLT83zOjSyDnuTKRq3YbNM4ZcGz0Ga/Y7EumKDXtJV33+7tEUVR2YMR3fdUN+7pktnR
 idNGIWRa+0DoJ8mEeznGqhR9a4NXtmHpGAiXibmjjXOB28yByHbMIrBiM47GxjEUqTLk
 O8xQ==
X-Gm-Message-State: AC+VfDww2nNW9Pq9zMtdGClPttTDiA8yka2weW6F4TAUWceHbQ+UOrnK
 YgtixcVFfCIFkYWbgZILUy4NHiNWzpzTG4EPEVnZosC3b3vIze6M1RzDEbSSP+MEFTskvGIeUdn
 R9MEVFx3d63nTn+lB4Q9HbKqkKOg8EM6idGmcMarEGJUJJ46+KuXz6UCjF36WzwxL5bI79Rks
X-Received: by 2002:a17:90a:c295:b0:255:735f:9224 with SMTP id
 f21-20020a17090ac29500b00255735f9224mr1158448pjt.16.1685076549872; 
 Thu, 25 May 2023 21:49:09 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4oUpqeZEyWFmn92iMmC/jqXwlMi1bx2vXErGfJE6BefpBBJlW3+vLNP3fth5OoH6lsIm9ebeXLvEK3NrfYtAg=
X-Received: by 2002:a17:90a:c295:b0:255:735f:9224 with SMTP id
 f21-20020a17090ac29500b00255735f9224mr1158435pjt.16.1685076549498; Thu, 25
 May 2023 21:49:09 -0700 (PDT)
MIME-Version: 1.0
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Fri, 26 May 2023 12:48:58 +0800
Message-ID: <CAAd53p4J2+YZpnxwMZGzRHF=NYM0Ci9QFNmtF5FW3wQfTqsRuw@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 00/22] drm/i915: Init DDI ports in VBT
 order
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 22, 2023 at 7:02=E2=80=AFAM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> I just wanted to init DDI ports in VBT child device order
> without any up front assumptions about which conflicting
> child device defition is valid. That is pretty much what
> we need to do for the ADL laptops with the phantom eDP vs.
> native HDMI on DDI B.
>
> However that approach doesn't work for some of the weird
> SKL boards that have a phantom eDP on DDI A+AUX A and
> and a real DP->VGA converter on DDI E+AUX A. For those
> I had to introduce HPD live status check during eDP init.
>
> One of the remaining concerns I still have is what happens
> when we encounter VBTs with more AUX CH/DDC pin conflicts?
> I think what we might want to do eventually is ignore the
> conflicts as much as possible, and just init everything
> based on VBT, trusting HPD to take care of things in the
> end. That of course does have certain issues wrt. connector
> forcing, but dunno if we can avoid those at all.
>
> Also I think we need to nuke all the platform default AUX
> CH/DDC pin stuff, or at least only try to utilize those
> only once we've consumed the VBT fully.
>
> v2: Fix SKL DDI A HPD live state
> v3: Replace AUX CH/DDC pin sanitation with availability checks

The series can solve HDMI detection issue on an ADL laptop.
The caveat is that it can't be cleanly applied to current drm-tip, so
the test was conducted on older drm tag.

Tested-by: Kai-Heng Feng <kai.heng.feng@canonical.com>

> Ville Syrj=C3=A4l=C3=A4 (22):
>   drm/i915: Populate dig_port->connected() before connector init
>   drm/i915: Fix SKL DDI A digital port .connected()
>   drm/i915: Get rid of the gm45 HPD live state nonsense
>   drm/i915: Introduce <platoform>_hotplug_mask()
>   drm/i915: Introduce intel_hpd_detection()
>   drm/i915: Check HPD live state during eDP probe
>   drm/i915: Sanitize child devices later
>   drm/i915: Split map_aux_ch() into per-platform arrays
>   drm/i915: Flip VBT DDC pin maps around
>   drm/i915: Nuke intel_bios_is_port_dp_dual_mode()
>   drm/i915: Remove bogus DDI-F from hsw/bdw output init
>   drm/i915: Introduce device info port_mask
>   drm/i915: Assert that device info bitmasks have enough bits
>   drm/i915: Assert that the port being initialized is valid
>   drm/i915: Beef up SDVO/HDMI port checks
>   drm/i915: Init DDI outputs based on port_mask on skl+
>   drm/i915: Try to initialize DDI/ICL+ DSI ports for every VBT child
>     device
>   drm/i915: Convert HSW/BDW to use VBT driven DDI probe
>   drm/i915: Remove DDC pin sanitation
>   drm/i915: Remove AUX CH sanitation
>   drm/i915: Initialize dig_port->aux_ch to NONE to be sure
>   drm/i915: Only populate aux_ch is really needed
>
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  39 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |  26 +-
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  11 +-
>  drivers/gpu/drm/i915/display/icl_dsi.h        |   6 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     | 422 +++++++-----------
>  drivers/gpu/drm/i915/display/intel_bios.h     |  12 +-
>  drivers/gpu/drm/i915/display/intel_crt.c      |   2 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 148 ++++--
>  drivers/gpu/drm/i915/display/intel_ddi.h      |   5 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  89 +---
>  drivers/gpu/drm/i915/display/intel_display.h  |   2 +
>  .../gpu/drm/i915/display/intel_display_core.h |   2 -
>  drivers/gpu/drm/i915/display/intel_dp.c       |  28 ++
>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |  51 ++-
>  drivers/gpu/drm/i915/display/intel_dvo.c      |   2 +
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  78 +++-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  20 +-
>  drivers/gpu/drm/i915/i915_irq.c               | 365 ++++++++++++---
>  drivers/gpu/drm/i915/i915_irq.h               |   2 +
>  drivers/gpu/drm/i915/i915_pci.c               |  31 ++
>  drivers/gpu/drm/i915/i915_reg.h               |  13 +-
>  drivers/gpu/drm/i915/intel_device_info.c      |   9 +
>  drivers/gpu/drm/i915/intel_device_info.h      |   1 +
>  23 files changed, 843 insertions(+), 521 deletions(-)
>
> --
> 2.39.2
>
>
