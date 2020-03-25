Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFFA193043
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 19:22:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ED366E80B;
	Wed, 25 Mar 2020 18:22:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26C746E1A7
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 18:22:30 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id g27so3540822ljn.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 11:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MPEwoG8h8S1R2qD5G1vi3PmrfSIyBn4GCofQ1P+96TY=;
 b=bjjDI15fX5OfC9EvM95oIn099GLW2riIR04uc/r3bFa2EX0vzKwDcme6+6ijOen6KC
 B3zgVp3+BguQT/ljs+opJ5Gv9LGlZU/SxZm0I+7WhOC6ej/QCIDWAiejy1kuo1ccZFDu
 GlBOpSprrxkWI7PZcOwQ8HzuDAODZzETbE55NEe4bidlV+37+1xTFVURnOQ2AjSpO0h1
 frNOeGOG8s6BOUKwg9yG14Ieo1mix0uibwn/73fHdS6UbAUl6MXY+4InTuyfBquUPol7
 63zIbY9xWn0m8W9faKs+FWXiyZAnFCzoh28IzpGjEZfBxr1rpXFq/Zi0ignVLzNd534b
 7Meg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MPEwoG8h8S1R2qD5G1vi3PmrfSIyBn4GCofQ1P+96TY=;
 b=UEpeyrjPihfF4Li//FJQdXmUPeSiX9DUYRdXupyshqfPE4tYCEt4bIYShxeRGYBwAX
 53TZ2EutlgqTns49hOGl6vFN0mDKObnkXlyGyMU2nGB/oSZ2zRE0iFUXbDzyN2QQxoM3
 LMLc1CTwUmb7d0d2yDnnwMWC4v1ax2iu9EznCG6RRmiE9QYIKVaLJiUiZOzlnLWUNcOP
 jq50Ohj7ILCGyNU5JvwHIuC1KF9mTAk3hGU7QXHjv/IPGdqNzywN0i086Kv3OyvqApNk
 SuUUj66CLDNJTReaYhpQoERN9DW0mGs41Iq13FuJMGlmDNTpzXdO0nz22D9DthwlD5YC
 EBxQ==
X-Gm-Message-State: AGi0PuZpdtdKdJjuZ6uFBS9WDVtFAX65Xncti16x5h+i+S9GjE13kP3b
 owCZc+z1XNYI9cKM8CgQvsT3tS9ZRjx5Ks/MYe2sLw==
X-Google-Smtp-Source: APiQypKVZrii6IStHL3Grb+eBBEVmGuZZh7m/j7oep8YfvuA/rqJ7TEpH3/0lY8o35IAi3YXb6+sd4XSNsNC+DByPzM=
X-Received: by 2002:a2e:82d0:: with SMTP id n16mr2812152ljh.174.1585160548238; 
 Wed, 25 Mar 2020 11:22:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200312185629.141280-1-rajatja@google.com>
In-Reply-To: <20200312185629.141280-1-rajatja@google.com>
From: Rajat Jain <rajatja@google.com>
Date: Wed, 25 Mar 2020 11:21:50 -0700
Message-ID: <CACK8Z6E==7DFGkT+9+EEvojiLCx5Jg4rq=DPGZGr99TBc5bz9w@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 Chris Wilson <chris@chris-wilson.co.uk>, Imre Deak <imre.deak@intel.com>, 
 =?UTF-8?Q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 intel-gfx@lists.freedesktop.org, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mat King <mathewk@google.com>,
 Daniel Thompson <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Pavel Machek <pavel@denx.de>, Sean Paul <seanpaul@google.com>,
 Duncan Laurie <dlaurie@google.com>, 
 Jesse Barnes <jsbarnes@google.com>, Thierry Reding <thierry.reding@gmail.com>, 
 Mark Pearson <mpearson@lenovo.com>, Nitin Joshi1 <njoshi1@lenovo.com>, 
 Sugumaran Lacshiminarayanan <slacshiminar@lenovo.com>,
 Tomoki Maruichi <maruichit@lenovo.com>
Subject: Re: [Intel-gfx] [PATCH v9 0/5] drm/i915 Support for integrated
 privacy screen
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
Cc: Rajat Jain <rajatxjain@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On Thu, Mar 12, 2020 at 11:56 AM Rajat Jain <rajatja@google.com> wrote:
>
> This patchset adds support for integrated privacy screen on some laptops
> using the ACPI methods to detect and control the feature.
>
> Rajat Jain (5):
>   intel_acpi: Rename drm_dev local variable to dev
>   drm/connector: Add support for privacy-screen property
>   drm/i915: Lookup and attach ACPI device node for connectors
>   drm/i915: Add helper code for ACPI privacy screen
>   drm/i915: Enable support for integrated privacy screen

Just checking to see if you got a chance to look at this latest
patchset. This takes care of all your review comments.

Thanks & Best Regards,

Rajat

>
>  drivers/gpu/drm/drm_atomic_uapi.c             |   4 +
>  drivers/gpu/drm/drm_connector.c               |  51 +++++
>  drivers/gpu/drm/i915/Makefile                 |   3 +-
>  drivers/gpu/drm/i915/display/intel_acpi.c     |  30 ++-
>  drivers/gpu/drm/i915/display/intel_atomic.c   |   2 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   1 +
>  .../drm/i915/display/intel_display_types.h    |   5 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  48 ++++-
>  drivers/gpu/drm/i915/display/intel_dp.h       |   5 +
>  .../drm/i915/display/intel_privacy_screen.c   | 184 ++++++++++++++++++
>  .../drm/i915/display/intel_privacy_screen.h   |  27 +++
>  drivers/gpu/drm/i915/i915_drv.h               |   2 +
>  include/drm/drm_connector.h                   |  24 +++
>  13 files changed, 382 insertions(+), 4 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_privacy_screen.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_privacy_screen.h
>
> --
> 2.25.1.481.gfbce0eb801-goog
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
