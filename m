Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB5E132F4A
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 20:21:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 032016E838;
	Tue,  7 Jan 2020 19:21:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FF676E838
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2020 19:21:10 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id q6so699449wro.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Jan 2020 11:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LdJYOuNh221r+I5HkB8kiuvIiYDLp6ocj/aWsi30vcU=;
 b=GSb1MOfEpE29dOqOvru4LcH8tqKdbdV1i55X8cHDLMoreriVFPrCmbML9Plqyl+/Pf
 kiezLSLBlaf3NeyPF2DCe6OWhV2TTU8pnODOypX4Yd5uWBauFEttsVltNa1c0OfR5g+L
 aui9+c0vScGAGzHSG1JWJ2JS/GosfWrsboFV8cUMS4QKgHYaH1T8TXAAmUaEAspoFWog
 ymQMs7G//u6723ke06Y6cZS8Rh3spEg2TfyAhmjnVexOeyUT3gzaWtFsn3NW0hY6F4dZ
 HMy6MRzz2AEgfkh+tcndkIRvyluTfJo8gHF+0sMRGhov1puM6f8p7jQ8jqnJjOlbfnsy
 2pwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LdJYOuNh221r+I5HkB8kiuvIiYDLp6ocj/aWsi30vcU=;
 b=tRyIbW+whkCtebIyedZviJKLWvo4nlPAZQpeD76FWGSdTytxVgVajielyObpNu7UUR
 I9PDAGLVDLAF+P9i7GyZVT62OlFfsmdWtjKaPzS5XWL2hENgtrlFbfdkEoP3lILGUifa
 OVJHQZoMUK8hDl/e501TM2newUSlYPxDu5ISRZGUczXpPdTcLxOz7DWgDSbk5tJw+Orq
 EUIivPfnZD17bgFG72hNKP1siDhTMrv8o0WLOTL23qzzRD0eDKVd5xDq0+SE/g+3pI1b
 oGYBwiIULZSlq6PratCu0lsKz/yFHwwrkroTdA2erw2MxnEAPNV9s9ZlN9rP62dWqDFY
 nTeA==
X-Gm-Message-State: APjAAAX8WEaQZXjEJXygnOrUM88WRzP/D8cP8se9c7RpYAhFkn9BT8I3
 kE/Z70wx/q6eVM0b5/IDf2sLxgYe+5T4Grb9JAnt6wdRUSQ=
X-Google-Smtp-Source: APXvYqyW/AHuegW6k4JKamyXmhubPrGw9N2WgopMiGEa0RCKqaaySVUTWrtbd0etwqgFj027hgU21+8IJRt6rUKGiS0=
X-Received: by 2002:adf:fbc9:: with SMTP id d9mr707121wrs.20.1578424868909;
 Tue, 07 Jan 2020 11:21:08 -0800 (PST)
MIME-Version: 1.0
References: <20191225175514.21271-1-swati2.sharma@intel.com>
 <CAKi4VAJOsg5pashSkEjTd4LrrbZ3ZXwK8ivw1PEfQbBrW5gWKA@mail.gmail.com>
 <32934a52-c653-ca66-4d3e-346623e224b9@intel.com>
In-Reply-To: <32934a52-c653-ca66-4d3e-346623e224b9@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Tue, 7 Jan 2020 11:20:56 -0800
Message-ID: <CAKi4VA+LckgK4iauyP_mV5=x3C=JvQkEDOkkHOoaoDoEA0OWsg@mail.gmail.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: Increase log level if DSB
 engine gets busy
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 26, 2019 at 9:34 PM Sharma, Swati2 <swati2.sharma@intel.com> wrote:
>
> On 27-Dec-19 2:39 AM, Lucas De Marchi wrote:
> > On Wed, Dec 25, 2019 at 10:07 AM Swati Sharma <swati2.sharma@intel.com> wrote:
> >>
> >> Increase the log level if DSB engine gets busy. If dsb engine
> >> is busy, it should be an error condition to indicate there might be
> >> some difficulty with the hardware.
> >>
> >> If DSB engine gets busy, load luts will fail and as per current
> >> driver design if one instance of DSB engine gets busy, we are not
> >> allocating the other instance. So, increase the log level to indicate there
> >> could be an issue with driver/hardware.
> >>
> >> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_dsb.c | 4 ++--
> >>   1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> >> index ada006a690df..6f67b5dfa128 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> >> @@ -52,7 +52,7 @@ static inline bool intel_dsb_enable_engine(struct intel_dsb *dsb)
> >>
> >>          dsb_ctrl = I915_READ(DSB_CTRL(pipe, dsb->id));
> >>          if (DSB_STATUS & dsb_ctrl) {
> >> -               DRM_DEBUG_KMS("DSB engine is busy.\n");
> >> +               DRM_ERROR("DSB engine is busy.\n");
> >
> > are we seeing this? Isn't it a dbg message because in this case we
> > would fallback to direct mmio?
> We are seeing this issue and is already under debug.
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb5/igt@kms_available_modes_crc@available_mode_test_crc.html

I'm not sure what benefit it has in just raising the log level here.
Btw, the only caller of this function already has a pointless check
for "engine is busy". You may want to remove that too if you follow this route.

I think it would be more interesting to root cause the issue:  if DSB
*may* get busy, then we'd better leave this as a dbg and fallback on a
chain of
MMIO writes or a delayed commit or failed its initialization early. If
this is really unexpected, why are we hitting this?

As why DSB is busy: is it because we had a previous dsb_commit() that
is keeping DSB busy so we can't have another subsequent commit? Why
didn't we fail the call to dsb_init() early Since it's not possible to
have unpaired dsb_init() / dsb_commit(), if that is the cause then if
DSB is busy on dsb_commit, it should as well be busy on dsb_init().

Lucas De Marchi

>
> <7> [303.727858] [drm:intel_dsb_commit [i915]] DSB engine is busy.
> <7> [303.727975] [drm:icl_load_luts [i915]] DSB engine is busy.
> >
> > Lucas De Marchi
> >
> >>                  return false;
> >>          }
> >>
> >> @@ -72,7 +72,7 @@ static inline bool intel_dsb_disable_engine(struct intel_dsb *dsb)
> >>
> >>          dsb_ctrl = I915_READ(DSB_CTRL(pipe, dsb->id));
> >>          if (DSB_STATUS & dsb_ctrl) {
> >> -               DRM_DEBUG_KMS("DSB engine is busy.\n");
> >> +               DRM_ERROR("DSB engine is busy.\n");
> >>                  return false;
> >>          }
> >>
> >> --
> >> 2.24.1
> >>
> >> _______________________________________________
> >> Intel-gfx mailing list
> >> Intel-gfx@lists.freedesktop.org
> >> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> >
> >
> >
>
>
> --
> ~Swati Sharma



-- 
Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
