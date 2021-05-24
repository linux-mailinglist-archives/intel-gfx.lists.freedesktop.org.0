Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5084B38F3ED
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 21:57:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 792AD6E92C;
	Mon, 24 May 2021 19:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC0A76E92C
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 19:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621886254;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iSZbqBpwXxhRxgLalbxYi9DG9zLeoxjojz5l6OSoZKg=;
 b=JbyMAbtJib4y2FvoRbqKWGh7rEHeE1FiImaJvIKqz2Chs+PQSTYjH4vCEpYN8z0+rkSEdF
 /Y2xbvqJmzA39h+3LFoV/wgHLuIfJLQg16i3HRf/DhXWFHfSEwVOTqXP4YKaVtcKVaI6CQ
 C/VVjj6JJ7SZ0hkN6iTVm6kGVIf5li4=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-43-ilIauZ97OIWSH8Hq9rAB8w-1; Mon, 24 May 2021 15:57:30 -0400
X-MC-Unique: ilIauZ97OIWSH8Hq9rAB8w-1
Received: by mail-ej1-f69.google.com with SMTP id
 jz28-20020a17090775fcb02903dc26615f46so3323077ejc.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 12:57:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iSZbqBpwXxhRxgLalbxYi9DG9zLeoxjojz5l6OSoZKg=;
 b=Tx/SfgPaeNjmi4/S8mb3ggldXmpb6tt/Ry64HzsHSWo6KinpWRkW3oSf6tyOo4rpke
 z3i3m9CTW5k0hDBDQyjyd8vA4sCbCeQIY3ScHojwF4eq+mfRV0rr3nS+OW8fR4cYrkFl
 MIVm+GNLazzhK+mxGL/ML1yNssx3v0aFpcpWKZKnEN2py30uOJk489dcgk256a6/HzmI
 nGaMAbsrQPje6kkCoTegnhxrZRw3YRZHNEBiOXbexkho+RWxf32DYCL1GWuI8fp63Url
 AyvnZZJVsP3eIAjr6X3lSfmqpzK9yJ8QC7XqrPNJlgn5r8CAXL1f5QrAwtEyyIm0pPHS
 edxQ==
X-Gm-Message-State: AOAM533gNEvIXWt+tqpBqGMnHf8rkFwD4j9ig+KP2IqxbEauHS8aCirU
 bUuvkXw8ObrLHPb3CrxEVS/P9l5vtFLE61qXqSuDwebZwWkOaNpovqcshKNCweAWZKzbww9g2Jp
 4SboB+Skf88qxLC673/oAtxMLcSCY
X-Received: by 2002:a17:906:4d44:: with SMTP id
 b4mr24292634ejv.306.1621886248865; 
 Mon, 24 May 2021 12:57:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzK+tcRFYU+sXHbKBxIQgCyBgNZwT9ySuAlJOtYI8S1JxeVk5KtR+1KzJxvVjQawHxZreQUvg==
X-Received: by 2002:a17:906:4d44:: with SMTP id
 b4mr24292624ejv.306.1621886248693; 
 Mon, 24 May 2021 12:57:28 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id n12sm10005648edr.84.2021.05.24.12.57.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 May 2021 12:57:28 -0700 (PDT)
To: Anisse Astier <anisse@astier.eu>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20210524164719.6588-1-anisse@astier.eu>
 <20210524164719.6588-4-anisse@astier.eu>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <8d9bc4b3-1b4e-670d-5170-3112c566841d@redhat.com>
Date: Mon, 24 May 2021 21:57:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210524164719.6588-4-anisse@astier.eu>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/3] drm: Add orientation quirk for GPD Win
 Max
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 5/24/21 6:47 PM, Anisse Astier wrote:
> Panel is 800x1280, but mounted on a laptop form factor, sideways.
> 
> Signed-off-by: Anisse Astier <anisse@astier.eu>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


> ---
>  drivers/gpu/drm/drm_panel_orientation_quirks.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_panel_orientation_quirks.c b/drivers/gpu/drm/drm_panel_orientation_quirks.c
> index f6bdec7fa925..3c3f4ed89173 100644
> --- a/drivers/gpu/drm/drm_panel_orientation_quirks.c
> +++ b/drivers/gpu/drm/drm_panel_orientation_quirks.c
> @@ -148,6 +148,12 @@ static const struct dmi_system_id orientation_data[] = {
>  		  DMI_EXACT_MATCH(DMI_PRODUCT_NAME, "MicroPC"),
>  		},
>  		.driver_data = (void *)&lcd720x1280_rightside_up,
> +	}, {	/* GPD Win Max */
> +		.matches = {
> +		  DMI_EXACT_MATCH(DMI_SYS_VENDOR, "GPD"),
> +		  DMI_EXACT_MATCH(DMI_PRODUCT_NAME, "G1619-01"),
> +		},
> +		.driver_data = (void *)&lcd800x1280_rightside_up,
>  	}, {	/*
>  		 * GPD Pocket, note that the the DMI data is less generic then
>  		 * it seems, devices with a board-vendor of "AMI Corporation"
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
