Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FD635738B
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Apr 2021 19:50:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 246686E134;
	Wed,  7 Apr 2021 17:50:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
 [209.85.210.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C36716E134
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Apr 2021 17:50:38 +0000 (UTC)
Received: by mail-ot1-f52.google.com with SMTP id
 w21-20020a9d63950000b02901ce7b8c45b4so18883387otk.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Apr 2021 10:50:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qdty5jjF0kS1KwBKOuQvO5jA//0hz0U6KtPzoR/QqC0=;
 b=aN9VDyq//fW+PfwEQGR2xOwU9DLX2odMeGxu+//+YeBriGK5FMj5dnosbkBfSHOH2O
 mnq8xkpY1s5VMDvOHMsJCJyxzG5f3U9Foq3ZgTyaTTFL/3Edpy9p3dabpGt7b+6ULs/F
 dzRMdhPgwb3wWG/QALZa7Ai7rQYxVtU0RpSDik8Uqenvmvdj8dc/62Pz0MncmmVvcXk8
 E8+0OJXyP5WpJfgN7229qJBO/R4z3DNhVAXq+rjgMiYcmA+43vUb3u/hwznB8sflwNso
 cUpq2Iz2oKR1brTcl1VW9cxJXI5Q8TOgN1/bmn0+r80fSPY3aK9FBMiqJ+QJ6IqsxZ6I
 rAmQ==
X-Gm-Message-State: AOAM5339vPmRsJWldrzbhOFn8k/5+pAknJDfU+FHTDX8qXd1YDLSw35q
 ef7rstdL42LVTR905g7sQJvyBJ3K2gHDVQOP3xQ=
X-Google-Smtp-Source: ABdhPJwnCImGe3rSYixT+YE7sfW6UlSVvDtUH3js1QA8mRWJZ38+30nMtWs8HCdr+aM8unuUy8A7zowxSyroEI3vg4A=
X-Received: by 2002:a05:6830:1e03:: with SMTP id
 s3mr4025696otr.321.1617817838050; 
 Wed, 07 Apr 2021 10:50:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210406211653.182338-1-hdegoede@redhat.com>
 <CAJZ5v0h6=_U+_=G8YL5rA701pTLGfyg4PmBudc3tFRKG=Wxh4A@mail.gmail.com>
 <4e796690-0a45-77e9-6b5d-61b3efa4b301@redhat.com>
In-Reply-To: <4e796690-0a45-77e9-6b5d-61b3efa4b301@redhat.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 7 Apr 2021 19:50:27 +0200
Message-ID: <CAJZ5v0jYUA8GHqYvnkp=Q0fzMKcsXtuZ-RcSS3jc_exKjtsewA@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] ACPI: utils: Add
 acpi_reduced_hardware() helper
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 7, 2021 at 7:43 PM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi,
>
> On 4/7/21 7:13 PM, Rafael J. Wysocki wrote:
> > On Tue, Apr 6, 2021 at 11:17 PM Hans de Goede <hdegoede@redhat.com> wrote:
> >>
> >> Add a getter for the acpi_gbl_reduced_hardware variable so that modules
> >> can check if they are running on an ACPI reduced-hw platform or not.
> >>
> >> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> >> ---
> >>  drivers/acpi/utils.c    | 11 +++++++++++
> >>  include/acpi/acpi_bus.h |  1 +
> >>  include/linux/acpi.h    |  5 +++++
> >>  3 files changed, 17 insertions(+)
> >>
> >> diff --git a/drivers/acpi/utils.c b/drivers/acpi/utils.c
> >> index 682edd913b3b..4cb061d3169a 100644
> >> --- a/drivers/acpi/utils.c
> >> +++ b/drivers/acpi/utils.c
> >> @@ -872,6 +872,17 @@ acpi_dev_get_first_match_dev(const char *hid, const char *uid, s64 hrv)
> >>  }
> >>  EXPORT_SYMBOL(acpi_dev_get_first_match_dev);
> >>
> >> +/**
> >> + * acpi_reduced_hardware - Return if this is an ACPI-reduced-hw machine
> >> + *
> >> + * Return true when running on an ACPI-reduced-hw machine, false otherwise.
> >> + */
> >> +bool acpi_reduced_hardware(void)
> >> +{
> >> +       return acpi_gbl_reduced_hardware;
> >> +}
> >> +EXPORT_SYMBOL(acpi_reduced_hardware);
> >
> > EXPORT_SYMBOL_GPL()?
>
> Yes, that was my intention, no idea what happened here.
>
> Before I send a v2, do you have any remarks on patch 2/2 (which is actually
> the more interesting patch) ?

I thought that basing that check on the ACPICA's global variable may
be too coarse grained for some cases, but then I've decided to do it
as is now and we'll see.

No need to resend that one.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
