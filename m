Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7F417CA8A
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 02:39:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3AAC6EDCE;
	Sat,  7 Mar 2020 01:39:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74CDB6EDCE
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Mar 2020 01:39:32 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id a10so4123723ljp.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Mar 2020 17:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vk7WexqGs9tKsJw0u0mXwTU3mYoTxeM70bWaTcQP0sk=;
 b=Mr40nDBsa29tmNy/wYcVN8rJvjzzdDoxgm/e0OT/i+X5gj6oERCsq+lDLv8GhQsZvs
 /BW/cUQyoz4S/WPxdEptsHM+GBEilpD4Nq2ZVnf1e/VdUZcP0S3oH15LeXAmHUqNpMJU
 hc+dfOGM0+/pKDaVUcRjZuLA2ZX+8fzJpf6a2+OZhv4DoKt4FhZxKsKX+TMfoM8eV3cX
 gdf6759jtZGcpu+05fD27i3KizcmrSWCB490SZhraUQfGXmd1xm/l2W3UJxNjhz63IlK
 KwRoD0XOwJmlTmmjvAY3H6VoHLcfOfb/26gbr1LMAchIY5Qk65YOqoeA6kQTVQKBaRnJ
 rxLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vk7WexqGs9tKsJw0u0mXwTU3mYoTxeM70bWaTcQP0sk=;
 b=X4MF+kUe5YPGZmAV3e9JQrS9RIGpMUs8hv83Ni1RRPzZ3/Tm0sQJtbcQ/tSg6xlpls
 eV19yJdJVT8FPwmLdXKmBxa6n33XoDtCFcylQx9eTbDJONLVZr7d+D7Tq65OeOtn5OJW
 2ZNY6xx4+enoiRqR8H1L1fYkG2kKeId2G9R92/IZd7inv2hUKlsGmIA6LWmtPM0jRQJ2
 VhuGTzqfCYb65EihUtStsMQ8WmXmVh3nhASukh85x/LaPZqgieaZ1pH6SXWg1gJAgKGe
 mD3/v0RARJIU84GzblBU8W8B/ne/c+b1hlZxMFwa1P3IJYk4VTvgCceMZj/4/3QXnQNt
 6AcA==
X-Gm-Message-State: ANhLgQ1yaUOMVxLTbU3LQCtmIe0sR8uq0+VSKfML3tbsHwkvVRl9zpvX
 99bANDw7bdIOFCJ0+JtMjbrzXppRkb4LC2ZmyTHQhg==
X-Google-Smtp-Source: ADFU+vsV+qVX0unqQUwWcGQVeYWEY2ubHw2+vJbqxcPBD1kNsVUvnDRy2az5R7tCqlw5INchb6uGPLZKiPuNJEV393c=
X-Received: by 2002:a2e:b88d:: with SMTP id r13mr3359183ljp.66.1583545170498; 
 Fri, 06 Mar 2020 17:39:30 -0800 (PST)
MIME-Version: 1.0
References: <20200305012338.219746-1-rajatja@google.com>
 <20200305012338.219746-3-rajatja@google.com>
 <87o8tbnnqa.fsf@intel.com>
 <CACK8Z6HRB9q1KeborGr7V-0Qp0AApHV6gBTkc6xD5NokH8gr0w@mail.gmail.com>
 <87tv31om53.fsf@intel.com>
In-Reply-To: <87tv31om53.fsf@intel.com>
From: Rajat Jain <rajatja@google.com>
Date: Fri, 6 Mar 2020 17:38:53 -0800
Message-ID: <CACK8Z6HFOpsfhHo=y9Qj_NSdiCGBHsvchZ335mU1BQ5CYQq1VQ@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 2/3] drm/i915: Lookup and attach ACPI
 device node for connectors
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
Cc: Sean Paul <seanpaul@google.com>, David Airlie <airlied@linux.ie>,
 Sugumaran Lacshiminarayanan <slacshiminar@lenovo.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Thompson <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Mark Pearson <mpearson@lenovo.com>, Tomoki Maruichi <maruichit@lenovo.com>,
 Rajat Jain <rajatxjain@gmail.com>, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Mat King <mathewk@google.com>,
 Duncan Laurie <dlaurie@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pavel Machek <pavel@denx.de>, Nitin Joshi1 <njoshi1@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 6, 2020 at 1:42 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Thu, 05 Mar 2020, Rajat Jain <rajatja@google.com> wrote:
> > On Thu, Mar 5, 2020 at 1:41 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
> >>
> >> On Wed, 04 Mar 2020, Rajat Jain <rajatja@google.com> wrote:
> >> 1) See if we can postpone creating and attaching properties to connector
> >> ->late_register hook. (I didn't have the time to look into it yet, at
> >> all.)
> >
> > Apparently not. The drm core doesn't like to add properties in
> > late_register() callback. I just tried it and get this warning:
>
> I kind of had a feeling this would be the case, thanks for checking.

Thinking about it again, it looks like there is a difference in
creating a property and attaching a property. I'm wondering if drm
would let me (unconditionally) create a property before registering,
and attach it in late_register() only in case a privacy screen is
detected. (If not present, I can destroy the property in
late_register()). If this approach sound more promising, I can try it
out.

>
> >> 2) Provide a way to populate connector->acpi_device_id and
> >> connector->acpi_handle on a per-connector basis. At least the device id
> >> remains constant for the lifetime of the drm_device
> >
> > Are you confirming that the connector->acpi_device_id remains constant
> > for the lifetime of the drm_device, as calculated in
> > intel_acpi_device_id_update()?  Even in the face of external displays
> > (monitors) being connected and disconnected during the lifetime of the
> > system? If so, then I think we can have a solution.
>
> First I thought so. Alas it does not hold for DP MST, where you can have
> connectors added and removed dynamically. I think we could ensure they
> stay the same for all other connectors though. I'm pretty sure this is
> already the case; they get added/removed after all others.
>
> Another thought, from the ACPI perspective, I'm not sure the dynamically
> added/removed DP MST connectors should even have acpi handles. But
> again, tying all this together with ACPI stuff is not something I am an
> expert on.

I propose that we:

1) Maintain a display_index[] array within the drm_dev, and increment
as connectors are added.
2) Initialize connector->acpi_device_id and and connector->acpi_handle
while registering (one time per connector).
3) Remove the code to update acpi_device_id on every resume.

It doesn't look like anyone on the DP MST side has cared for ACPI so
far, so I doubt if we can do anything that might break MST currently.
In other words, the above should not make things any worse for MST, if
not better. For connectors other than MST, this should allow them to
get ACPI handle and play with it, if they need.

WDYT?

Thanks,

Rajat

>
> >> (why do we keep
> >> updating it at every resume?!) but can we be sure ->acpi_handle does
> >> too? (I don't really know my way around ACPI.)
> >
> > I don't understand why this was being updated on every resume in that
> > case (this existed even before my patchset). I believe we do not need
> > it. Yes, the ->acpi_handle will not change if the ->acpi_device_id
> > does not change. I believe the way forward should then be to populate
> > connector->acpi_device_id and connector->acpi_handle ONE TIME at the
> > time of connector init (and not update it on every resume). Does this
> > sound ok?
>
> If a DP MST connector gets removed, should the other ACPI display
> indexes after that shift, or remain the same? I really don't know.
>
> BR,
> Jani.
>
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
