Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A9421927B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 23:25:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF7016E93A;
	Wed,  8 Jul 2020 21:25:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 398796E3AC;
 Wed,  8 Jul 2020 21:25:49 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id 17so4635664wmo.1;
 Wed, 08 Jul 2020 14:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XER3e3sK04N17rYlFHptOIrrOHxscvdHxWebaxCUi+8=;
 b=dIElQNw9gNCE2p6Dr2IxzCC2qWCJy2ZuU8l0mtsVK2PvPyciU+kQXvjYRqvL6tmdbO
 27Urc1gu5Ilm6/LXwQWzWp+Tusey2kRmi1qGE2B+EfIlf6BhRX4QYe3fu7BZxivJ26IA
 AVwrjfJCuQeEIQVggwg7sajh5sjXTS1LjpLgqNejt88puqHkjkUI1ifAiKkBARoy893y
 vXkuBYRMRLRKCzR+g9uX82e766vCOIZ5WIjIIok02SETMI8qm4Ws6PGvirDfdPXc6mRt
 rnP7wVDna1nRKsvmiimyZnLE0bq83C8c7NMgXZ+D3Zcj766+RrAD3Jm8gDQhVtAKvOOi
 ssPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XER3e3sK04N17rYlFHptOIrrOHxscvdHxWebaxCUi+8=;
 b=AYF5Ley7+jhZE3TZyRAm3Qt5sWNFk6OfsdZHocrQtiAqNI7bG68uzBsfs0DpSmfTga
 IxEU/yzywjaUaCVfM427gRxkPVqfUnzpHNWDR12ZjvzWnGSzbu2WiNf9ePF1ulsmDXKe
 +gZX4ZDoV5Pqs98fdMk19/tYqlbr+rwxZR+umVVrlUa04kgXkFVUo5vRMF6XNX2FAYc8
 slgWigvF+oJ6wCrupUTPTquOQTQATVG2VPiOnE+LzQBCFJq1PPV80Ua3ERzHzpRN2HQR
 gOS1keDXij752H8W0CNzl78K7GEjw2pXFwE7SW1WwdZOIIf9G9tqzpcefrRxzel0s9S+
 w3gg==
X-Gm-Message-State: AOAM533H/h45LXWBdU11uw66MX+9GGWynZfmAvkF5YHuDA/xrXCXa8SZ
 b2gfJN6z9vJhr8GvoiT3UpY6fquauwiXdD7ud9A=
X-Google-Smtp-Source: ABdhPJwJJw0HsUAZBEYzIMxK+SdmPhzX93Jtu7FFVB1avT/2pnzCoe+oqDeLhnM5KLbZHFZSjZaZpesTK8j73dJfa54=
X-Received: by 2002:a1c:3954:: with SMTP id g81mr11034773wma.73.1594243547343; 
 Wed, 08 Jul 2020 14:25:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200708164335.25097-1-hdegoede@redhat.com>
In-Reply-To: <20200708164335.25097-1-hdegoede@redhat.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 8 Jul 2020 17:25:36 -0400
Message-ID: <CADnq5_NeJBbCFKR96DWbCQteaRPCmThwD7_2biy7vSb-MifD9A@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Subject: Re: [Intel-gfx] [PATCH 0/9] drm: Add privacy-screen class and
 connector properties
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
Cc: Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Marco Trevisan <marco.trevisan@canonical.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Sebastien Bacher <seb128@ubuntu.com>,
 David Airlie <airlied@linux.ie>, intel-gfx <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 8, 2020 at 12:43 PM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi All,
>
> Here is the privacy-screen related code which we discussed a while ago.
> This series consists of a number of different parts:
>
> 1. A new version of Rajat's privacy-screen connector properties patch,
> this adds new userspace API in the form of new properties
>
> 2. Since on most devices the privacy screen is actually controlled by
> some vendor specific ACPI/WMI interface which has a driver under
> drivers/platform/x86, we need some "glue" code to make this functionality
> available to KMS drivers. Patches 3-5 add a new privacy-screen class for
> this, which allows non KMS drivers (and possibly KMS drivers too) to
> register a privacy-screen device and also adds an interface for KMS drivers
> to get access to the privacy-screen associated with a specific connector.
> This is modelled similar to how we deal with e.g. PWMs and GPIOs in the
> kernel, including separate includes for consumers and providers(drivers).
>
> 3. Some drm_connector helper functions to keep the actual changes needed
> for this in individual KMS drivers as small as possible (patch 6).
>
> 4. Make the thinkpad_acpi code register a privacy-screen device on
> ThinkPads with a privacy-screen (patches 7-8)
>
> 5. Make the i915 driver export the privacy-screen functionality through
> the connector properties on the eDP connector.

Care to create a patch 10 for amdgpu?  Lenovo sells AMD thinkpads with
a privacy screen as well, presumably it works
the same way.

Alex

>
> I was a bit in doubt if I should calls this series a RFC, or just call
> it v1, since there is no real userspace code using this yet. It was
> tested using xrandr property access and udevadm event monitoring.
> I do expect / hope we will have patches for a userspace consumer of the
> new properties (mutter) ready soon.
>
> But since the code is completely ready, including API documentation,
> I've decided to just call this v1. Hopefully we can get patches for the
> first userspace consumer of this ready during the review of this.
>
> Regards,
>
> Hans
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
