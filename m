Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E27740D5F9
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 11:18:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6B466EB2E;
	Thu, 16 Sep 2021 09:18:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CAC06EB21
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 09:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631783922;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BxuVKtUlDaFUG4H+2VGQ6PdHS8H4rBQUK+ujOp0M+sE=;
 b=Y1vaqATyvvI4LoGbAFz2E5LkXxrVCOTYhHtv+ZyAasr8SS8anTyauLY/H35f3TealY099/
 9U0t7ypbhirhqINiJMAT1NsF1HwexXNjgoTDrdaYLSgj6TLaoQTy4tPFYPlcQA3jwiADUa
 UsWCYy/hvClqDSuQ8K0xtUi+OR/4Myo=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-461-GefQA7e4N6e7MtISDMyTTw-1; Thu, 16 Sep 2021 05:18:39 -0400
X-MC-Unique: GefQA7e4N6e7MtISDMyTTw-1
Received: by mail-ed1-f70.google.com with SMTP id
 h15-20020aa7de0f000000b003d02f9592d6so4704868edv.17
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 02:18:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BxuVKtUlDaFUG4H+2VGQ6PdHS8H4rBQUK+ujOp0M+sE=;
 b=Isq78pbbmkiN19vuWwn92eN6GaqWDvr7eDkf4pdDObGTYjAtPhVLxg28DyqSLmBEWh
 ljlhcj9TzMPbOfKjPSZsVK/D19jFZgMDNtBalnOQ0xWL0PAU9qDyoOSfsjJ0WjkpCAPV
 y+vN+qEzDC386k7t4syOJzOyXrUMhGWe5hwB2APA6WGsIzW3l61bJc868fJR6JPyZVGs
 aCuROxklYDFZcKPQFSbdw0TCfPnIu7Yl9f75YyDSE2RrvyDMXjwfL2LNjzWjMLQg+sjQ
 jDpwx6yxmPmw3j6P+gIQ0ioUB7NvQgtH4zd2rLVTY6GfyZTiLA3f1CV8HuY6hqIAIoMZ
 fYhA==
X-Gm-Message-State: AOAM530RhS/oFi/1xTYlo10Sh0UaQW3BkaqQtZUUjtuDD+MOxfBmjDAu
 IALaarjht3N9BQ11uQb92WOGX59WmTsiWkkkJv0BBWzcFVMUvgDwejxcO65xyXZ7la80yTPQoY3
 sAav9Tj5AP8lFosSELj94YpujoyVs
X-Received: by 2002:a50:eac4:: with SMTP id u4mr5311844edp.259.1631783918392; 
 Thu, 16 Sep 2021 02:18:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxBxGhwgZ+p+AAUipTHABsxp3m4Q9Z2JORjhomLKqYO8ZZzbfaD/T0oFzceJG04yiR7rP4ZlA==
X-Received: by 2002:a50:eac4:: with SMTP id u4mr5311810edp.259.1631783918003; 
 Thu, 16 Sep 2021 02:18:38 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id f2sm957490ejl.90.2021.09.16.02.18.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Sep 2021 02:18:37 -0700 (PDT)
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rajat Jain <rajatja@google.com>, Lyude <lyude@redhat.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Mark Gross <mgross@linux.intel.com>,
 Andy Shevchenko <andy@infradead.org>
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Mario Limonciello <mario.limonciello@outlook.com>,
 Mark Pearson <markpearson@lenovo.com>, Sebastien Bacher <seb128@ubuntu.com>,
 Marco Trevisan <marco.trevisan@canonical.com>,
 Emil Velikov <emil.l.velikov@gmail.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org
References: <20210906073519.4615-1-hdegoede@redhat.com>
 <20210906073519.4615-4-hdegoede@redhat.com> <87v930x5s3.fsf@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <11b286c0-994c-f179-baf2-830949a0862c@redhat.com>
Date: Thu, 16 Sep 2021 11:18:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <87v930x5s3.fsf@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/privacy-screen: Add X86 specific
 arch init code
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

Hi,

On 9/16/21 10:51 AM, Jani Nikula wrote:
> On Mon, 06 Sep 2021, Hans de Goede <hdegoede@redhat.com> wrote:
>> Add X86 specific arch init code, which fills the privacy-screen lookup
>> table by checking for various vendor specific ACPI interfaces for
>> controlling the privacy-screen.
>>
>> This initial version only checks for the Lenovo Thinkpad specific ACPI
>> methods for privacy-screen control.
>>
>> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>  drivers/gpu/drm/Makefile                 |  2 +-
>>  drivers/gpu/drm/drm_privacy_screen_x86.c | 86 ++++++++++++++++++++++++
>>  include/drm/drm_privacy_screen_machine.h |  5 ++
>>  3 files changed, 92 insertions(+), 1 deletion(-)
>>  create mode 100644 drivers/gpu/drm/drm_privacy_screen_x86.c
>>
>> diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
>> index 788fc37096f6..12997ca5670d 100644
>> --- a/drivers/gpu/drm/Makefile
>> +++ b/drivers/gpu/drm/Makefile
>> @@ -32,7 +32,7 @@ drm-$(CONFIG_OF) += drm_of.o
>>  drm-$(CONFIG_PCI) += drm_pci.o
>>  drm-$(CONFIG_DEBUG_FS) += drm_debugfs.o drm_debugfs_crc.o
>>  drm-$(CONFIG_DRM_LOAD_EDID_FIRMWARE) += drm_edid_load.o
>> -drm-$(CONFIG_DRM_PRIVACY_SCREEN) += drm_privacy_screen.o
>> +drm-$(CONFIG_DRM_PRIVACY_SCREEN) += drm_privacy_screen.o drm_privacy_screen_x86.o
> 
> Would be nice to avoid building drm_privacy_screen_x86.o altogether for
> CONFIG_X86=n, and avoid...

Right unfortunately AFAIK I cannot write something like:

drm-$(CONFIG_DRM_PRIVACY_SCREEN && CONFIG_X86) += drm_privacy_screen_x86.o

So this would require adding a (non user selectable)
CONFIG_DRM_PRIVACY_SCREEN_X86 in Kconfig looking something
like this:

config DRM_PRIVACY_SCREEN
	bool
	default n
	select DRM_PRIVACY_SCREEN_X86 if X86

config DRM_PRIVACY_SCREEN_X86
	bool
	default n

Which is also not really pretty. 


>>  obj-$(CONFIG_DRM_DP_AUX_BUS) += drm_dp_aux_bus.o
>>  
>> diff --git a/drivers/gpu/drm/drm_privacy_screen_x86.c b/drivers/gpu/drm/drm_privacy_screen_x86.c
>> new file mode 100644
>> index 000000000000..a2cafb294ca6
>> --- /dev/null
>> +++ b/drivers/gpu/drm/drm_privacy_screen_x86.c
>> @@ -0,0 +1,86 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright (C) 2020 Red Hat, Inc.
>> + *
>> + * Authors:
>> + * Hans de Goede <hdegoede@redhat.com>
>> + */
>> +
>> +#include <linux/acpi.h>
>> +#include <drm/drm_privacy_screen_machine.h>
>> +
>> +#ifdef CONFIG_X86
> 
> ...ifdefs that cover the entire file. This can be a future improvement,
> though.

Thanks I would be happy to do a follow-up patch if we can come-up with
a better solution which we all like.

For now I would indeed prefer to move forward with this patch-set as is
because it has been rather long in the making, so it will be good if
I can finally get it upstream.

Regards,

Hans


> 
>> +static struct drm_privacy_screen_lookup arch_lookup;
>> +
>> +struct arch_init_data {
>> +	struct drm_privacy_screen_lookup lookup;
>> +	bool (*detect)(void);
>> +};
>> +
>> +#if IS_ENABLED(CONFIG_THINKPAD_ACPI)
>> +static acpi_status __init acpi_set_handle(acpi_handle handle, u32 level,
>> +					  void *context, void **return_value)
>> +{
>> +	*(acpi_handle *)return_value = handle;
>> +	return AE_CTRL_TERMINATE;
>> +}
>> +
>> +static bool __init detect_thinkpad_privacy_screen(void)
>> +{
>> +	union acpi_object obj = { .type = ACPI_TYPE_INTEGER };
>> +	struct acpi_object_list args = { .count = 1, .pointer = &obj, };
>> +	acpi_handle ec_handle = NULL;
>> +	unsigned long long output;
>> +	acpi_status status;
>> +
>> +	/* Get embedded-controller handle */
>> +	status = acpi_get_devices("PNP0C09", acpi_set_handle, NULL, &ec_handle);
>> +	if (ACPI_FAILURE(status) || !ec_handle)
>> +		return false;
>> +
>> +	/* And call the privacy-screen get-status method */
>> +	status = acpi_evaluate_integer(ec_handle, "HKEY.GSSS", &args, &output);
>> +	if (ACPI_FAILURE(status))
>> +		return false;
>> +
>> +	return (output & 0x10000) ? true : false;
>> +}
>> +#endif
>> +
>> +static const struct arch_init_data arch_init_data[] __initconst = {
>> +#if IS_ENABLED(CONFIG_THINKPAD_ACPI)
>> +	{
>> +		.lookup = {
>> +			.dev_id = NULL,
>> +			.con_id = NULL,
>> +			.provider = "privacy_screen-thinkpad_acpi",
>> +		},
>> +		.detect = detect_thinkpad_privacy_screen,
>> +	},
>> +#endif
>> +};
>> +
>> +void __init drm_privacy_screen_lookup_init(void)
>> +{
>> +	int i;
>> +
>> +	for (i = 0; i < ARRAY_SIZE(arch_init_data); i++) {
>> +		if (!arch_init_data[i].detect())
>> +			continue;
>> +
>> +		pr_info("Found '%s' privacy-screen provider\n",
>> +			arch_init_data[i].lookup.provider);
>> +
>> +		/* Make a copy because arch_init_data is __initconst */
>> +		arch_lookup = arch_init_data[i].lookup;
>> +		drm_privacy_screen_lookup_add(&arch_lookup);
>> +		break;
>> +	}
>> +}
>> +
>> +void drm_privacy_screen_lookup_exit(void)
>> +{
>> +	if (arch_lookup.provider)
>> +		drm_privacy_screen_lookup_remove(&arch_lookup);
>> +}
>> +#endif /* ifdef CONFIG_X86 */
>> diff --git a/include/drm/drm_privacy_screen_machine.h b/include/drm/drm_privacy_screen_machine.h
>> index aaa0d38cce92..02e5371904d3 100644
>> --- a/include/drm/drm_privacy_screen_machine.h
>> +++ b/include/drm/drm_privacy_screen_machine.h
>> @@ -31,11 +31,16 @@ struct drm_privacy_screen_lookup {
>>  void drm_privacy_screen_lookup_add(struct drm_privacy_screen_lookup *lookup);
>>  void drm_privacy_screen_lookup_remove(struct drm_privacy_screen_lookup *lookup);
>>  
>> +#if IS_ENABLED(CONFIG_DRM_PRIVACY_SCREEN) && IS_ENABLED(CONFIG_X86)
>> +void drm_privacy_screen_lookup_init(void);
>> +void drm_privacy_screen_lookup_exit(void);
>> +#else
>>  static inline void drm_privacy_screen_lookup_init(void)
>>  {
>>  }
>>  static inline void drm_privacy_screen_lookup_exit(void)
>>  {
>>  }
>> +#endif
>>  
>>  #endif
> 

