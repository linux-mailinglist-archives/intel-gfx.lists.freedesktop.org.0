Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4958460A2E4
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 13:49:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13D2810E399;
	Mon, 24 Oct 2022 11:48:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4768D10E388;
 Mon, 24 Oct 2022 11:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666612127; x=1698148127;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=t3cjsGp+mGZTfId3Uz83F67WuGQ8r3GpeajQ9Pj0MTw=;
 b=lQzhuwqLzLMuR5AakR7looY8bd44B6YaoF5OxpGymmL+04RdTKr946Sr
 5P5/QKGy2aLERlrGR7RwU51L/Q4SAyCU2YiPIgjH8HvCo8uFUjBU96j5o
 o58NdESU1rzJKJBHO1EWJnSuY0Xt7p4FjEbw2WNq7Rh6xM7nkW0Vt8eLM
 v1Sno+gpcswipMQBOWyhFZ51X2lPNt7BLNeZYpUjFW2estyyz/V6CvAGG
 fx8QNed/CWH9g7w5hhqQ4RUY926tYYEz4XMf50e2AYCDyxmrqbsoyzFHp
 d+kKkWd3xe7GsCF0Az5ZXSnhjyNCg1mKqg8FU9Oactph+yFvrKhyijRSl g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="287793400"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="287793400"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 04:48:46 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="631231987"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="631231987"
Received: from emontau-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.221])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 04:48:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Akihiko Odaki <akihiko.odaki@daynix.com>
In-Reply-To: <20221024113513.5205-1-akihiko.odaki@daynix.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
Date: Mon, 24 Oct 2022 14:48:32 +0300
Message-ID: <87tu3te92n.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 00/22] Fallback to native backlight
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
Cc: linux-fbdev@vger.kernel.org, Ike Panhc <ike.pan@canonical.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, dri-devel@lists.freedesktop.org,
 Azael Avalos <coproscefalo@gmail.com>, Mattia Dongili <malattia@linux.it>,
 Daniel Dadap <ddadap@nvidia.com>, Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Akihiko Odaki <akihiko.odaki@daynix.com>, David Airlie <airlied@gmail.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jonathan Woithe <jwoithe@just42.net>, Jonathan Corbet <corbet@lwn.net>, "Lee,
 Chun-Yi" <jlee@suse.com>, Helge Deller <deller@gmx.de>,
 Lee Jones <lee@kernel.org>, Robert Moore <robert.moore@intel.com>,
 linux-acpi@vger.kernel.org, Cezary Jackiewicz <cezary.jackiewicz@gmail.com>,
 Len Brown <lenb@kernel.org>, Kenneth Chan <kenneth.t.chan@gmail.com>,
 Corentin Chary <corentin.chary@gmail.com>, intel-gfx@lists.freedesktop.org,
 acpi4asus-user@lists.sourceforge.net, Maxime Ripard <mripard@kernel.org>,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 platform-driver-x86@vger.kernel.org, devel@acpica.org,
 ibm-acpi-devel@lists.sourceforge.net, Jingoo Han <jingoohan1@gmail.com>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Pali =?utf-8?Q?Roh=C3=A1r?= <pali@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 24 Oct 2022, Akihiko Odaki <akihiko.odaki@daynix.com> wrote:
> Commit 2600bfa3df99 ("ACPI: video: Add acpi_video_backlight_use_native()
> helper") and following commits made native backlight unavailable if
> CONFIG_ACPI_VIDEO is set and the backlight feature of ACPI video is
> unavailable, which broke the backlight functionality on Lenovo ThinkPad
> C13 Yoga Chromebook. Allow to fall back to native backlight in such
> cases.

Where's the bug report with relevant logs, kconfigs, etc?

BR,
Jani.

>
> Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
>
> Akihiko Odaki (22):
>   drm/i915/opregion: Improve backlight request condition
>   ACPI: video: Introduce acpi_video_get_backlight_types()
>   LoongArch: Use acpi_video_get_backlight_types()
>   platform/x86: acer-wmi: Use acpi_video_get_backlight_types()
>   platform/x86: asus-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: asus-wmi: Use acpi_video_get_backlight_types()
>   platform/x86: compal-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: eeepc-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: fujitsu-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: ideapad-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: msi-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: msi-wmi: Use acpi_video_get_backlight_types()
>   platform/x86: nvidia-wmi-ec-backlight: Use
>     acpi_video_get_backlight_types()
>   platform/x86: panasonic-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: samsung-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: sony-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: thinkpad_acpi: Use acpi_video_get_backlight_types()
>   platform/x86: toshiba_acpi: Use acpi_video_get_backlight_types()
>   platform/x86: dell-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: intel_oaktrail: Use acpi_video_get_backlight_types()
>   ACPI: video: Remove acpi_video_get_backlight_type()
>   ACPI: video: Fallback to native backlight
>
>  Documentation/gpu/todo.rst                    |  8 +--
>  drivers/acpi/acpi_video.c                     |  2 +-
>  drivers/acpi/video_detect.c                   | 54 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_opregion.c |  3 +-
>  drivers/platform/loongarch/loongson-laptop.c  |  4 +-
>  drivers/platform/x86/acer-wmi.c               |  2 +-
>  drivers/platform/x86/asus-laptop.c            |  2 +-
>  drivers/platform/x86/asus-wmi.c               |  4 +-
>  drivers/platform/x86/compal-laptop.c          |  2 +-
>  drivers/platform/x86/dell/dell-laptop.c       |  2 +-
>  drivers/platform/x86/eeepc-laptop.c           |  2 +-
>  drivers/platform/x86/fujitsu-laptop.c         |  4 +-
>  drivers/platform/x86/ideapad-laptop.c         |  2 +-
>  drivers/platform/x86/intel/oaktrail.c         |  2 +-
>  drivers/platform/x86/msi-laptop.c             |  2 +-
>  drivers/platform/x86/msi-wmi.c                |  2 +-
>  .../platform/x86/nvidia-wmi-ec-backlight.c    |  2 +-
>  drivers/platform/x86/panasonic-laptop.c       |  2 +-
>  drivers/platform/x86/samsung-laptop.c         |  2 +-
>  drivers/platform/x86/sony-laptop.c            |  2 +-
>  drivers/platform/x86/thinkpad_acpi.c          |  4 +-
>  drivers/platform/x86/toshiba_acpi.c           |  2 +-
>  drivers/video/backlight/backlight.c           | 18 +++++++
>  include/acpi/video.h                          | 21 ++++----
>  include/linux/backlight.h                     |  1 +
>  25 files changed, 85 insertions(+), 66 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
