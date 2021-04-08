Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A289D358BB8
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 19:52:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2387B6E2C0;
	Thu,  8 Apr 2021 17:52:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
 [209.85.210.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49A8E6E2C0
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 17:52:46 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id
 s16-20020a0568301490b02901b83efc84a0so3101725otq.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Apr 2021 10:52:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hMorx01lhfeSRcCBPwGAFNFnf1r2FmfEdDXYVCwsphM=;
 b=Ek3+Omys/XFwjV3rre5NPBZnkgLXJOrEeAhxSR47l499lSai4vY3A9g0x69WFwVtaj
 naLoZ77Eb09HKh1puKccmO00OU4kfDltAjtSSYoUqXRUiAvwYzd1+HJLyybBlLC6BsnC
 YPWYCbR5LW5rLTVwngm/JefYrSGSlwPR8zj0ek+XEpkRy63/VQU9BbmtAJT7ii9o+H97
 nZPU3ik9rGT32vHm+dhotX0sM1Qdv8kJKQcuNHDQJo88QLaScHVayAo01+FvYXuvTnHF
 fgZlhwKhbvdhC5odlnfn6hYtOOlNxWmfdsVT+46P5ebG3vASwBuV/qpN1dh6AY0K8NfJ
 eCbQ==
X-Gm-Message-State: AOAM532To4m7RPhPDc1EeRhrfRim8nqhtgRjC6Mps6psg8xEeClnCQFe
 FzAsZl5hMzp+TMX73YEk/QFxQe9CCillj0PEOvQ=
X-Google-Smtp-Source: ABdhPJyLmHRDIlRjxpQTEWesEH+0DShWtontDVyczDVPyqKeNXgHfaFt9q5dfRv7ygC5Y6YMWLB0ATnwPhM2CCWmeDk=
X-Received: by 2002:a9d:4811:: with SMTP id c17mr9011916otf.206.1617904365579; 
 Thu, 08 Apr 2021 10:52:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210407175820.447847-1-hdegoede@redhat.com>
In-Reply-To: <20210407175820.447847-1-hdegoede@redhat.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 8 Apr 2021 19:52:34 +0200
Message-ID: <CAJZ5v0g8cSm-ctYneOOmYy6gz4957AkrXQkTynZ_YRTsHprTCg@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/2] ACPI: utils: Add
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
Cc: ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 7, 2021 at 7:58 PM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Add a getter for the acpi_gbl_reduced_hardware variable so that modules
> can check if they are running on an ACPI reduced-hw platform or not.
>
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
> Changes in v2:
> - Use EXPORT_SYMBOL_GPL instead of EXPORT_SYMBOL
> ---
>  drivers/acpi/utils.c    | 11 +++++++++++
>  include/acpi/acpi_bus.h |  1 +
>  include/linux/acpi.h    |  5 +++++
>  3 files changed, 17 insertions(+)
>
> diff --git a/drivers/acpi/utils.c b/drivers/acpi/utils.c
> index 682edd913b3b..b20774c48c74 100644
> --- a/drivers/acpi/utils.c
> +++ b/drivers/acpi/utils.c
> @@ -872,6 +872,17 @@ acpi_dev_get_first_match_dev(const char *hid, const char *uid, s64 hrv)
>  }
>  EXPORT_SYMBOL(acpi_dev_get_first_match_dev);
>
> +/**
> + * acpi_reduced_hardware - Return if this is an ACPI-reduced-hw machine
> + *
> + * Return true when running on an ACPI-reduced-hw machine, false otherwise.
> + */
> +bool acpi_reduced_hardware(void)
> +{
> +       return acpi_gbl_reduced_hardware;
> +}
> +EXPORT_SYMBOL_GPL(acpi_reduced_hardware);
> +
>  /*
>   * acpi_backlight= handling, this is done here rather then in video_detect.c
>   * because __setup cannot be used in modules.
> diff --git a/include/acpi/acpi_bus.h b/include/acpi/acpi_bus.h
> index f28b097c658f..d631cb52283e 100644
> --- a/include/acpi/acpi_bus.h
> +++ b/include/acpi/acpi_bus.h
> @@ -78,6 +78,7 @@ acpi_evaluate_dsm_typed(acpi_handle handle, const guid_t *guid, u64 rev,
>
>  bool acpi_dev_found(const char *hid);
>  bool acpi_dev_present(const char *hid, const char *uid, s64 hrv);
> +bool acpi_reduced_hardware(void);
>
>  #ifdef CONFIG_ACPI
>
> diff --git a/include/linux/acpi.h b/include/linux/acpi.h
> index 3bdcfc4401b7..e2e6db8313c8 100644
> --- a/include/linux/acpi.h
> +++ b/include/linux/acpi.h
> @@ -748,6 +748,11 @@ acpi_dev_get_first_match_dev(const char *hid, const char *uid, s64 hrv)
>         return NULL;
>  }
>
> +static inline bool acpi_reduced_hardware(void)
> +{
> +       return false;
> +}
> +
>  static inline void acpi_dev_put(struct acpi_device *adev) {}
>
>  static inline bool is_acpi_node(const struct fwnode_handle *fwnode)
> --

Applied along with the [2/2] as 5.13 material, thanks!
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
