Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E160E7FEC69
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Nov 2023 10:59:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B7C910E125;
	Thu, 30 Nov 2023 09:59:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8298910E125
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Nov 2023 09:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1701338371;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=B0yvWo6181dOL2Zxbv4eplrjNunEErIZCRKBoebAB4c=;
 b=U8ojin4fWMNvzw3lbw6aQZo3JR+s1mc/HwTqdesSdB7S/g7wzoB9GlayrX3J8HPKxwBAdG
 zeamSJUPIRM2qaah3Psbq1W1djJB6JW3B46IhNxURKvT0STvDBMBvp6sP+D36GHVb0MWPQ
 MYI6hUEuBTYLVUsxK0LRIK2o15643jY=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-290-Z0Cf_hSzMISNUEYuBzCdag-1; Thu, 30 Nov 2023 04:59:30 -0500
X-MC-Unique: Z0Cf_hSzMISNUEYuBzCdag-1
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-333030e0708so735741f8f.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Nov 2023 01:59:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701338369; x=1701943169;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=B0yvWo6181dOL2Zxbv4eplrjNunEErIZCRKBoebAB4c=;
 b=gs6kIRoJ1Uzo+Ey24wz072djjyUEKq9/9XJoe9e/TWNAbid9AZRRxmqimYMzc8goaF
 5DHe55LKWVbVBi78ihvtaMcj/Z/koMKcHA2mh2OJakqNJa58cFL1li0W8KBOMjXOByNk
 naGNs2kZMoAwHsQF7zeLr5SNtGIu49mRZDzEPWtoQ34fG+kqXFTxxP17a5YAwXuiM0OG
 NoP4iDQweQtR3uBIj6vrhw8T9dHvxs5w2uduV+tp72x+EwAgKlUjx9t0N2qS87JeutcX
 BrDTMKtI8Ur+qCtM7+I9mJ8fdI6lVxYJEklT27Qo/UIiYJCl8AV87MLTPw2zDseOvGbv
 WsEw==
X-Gm-Message-State: AOJu0Yyt9y+mcp2jX7aivcptX5/vaBh7WQb8lmmuFYz2x3bSoD+6Faip
 PBIbniVQHxODyfFBQl8ZTeRFY67JQ7ywKlfpy6s0nw7ggH75+f/lR6a2SDYWRhPKNt48u9Tu/mu
 1bTQJRIvzphMNixXrMsqgBELQ4DAS
X-Received: by 2002:adf:ec06:0:b0:333:86d:c292 with SMTP id
 x6-20020adfec06000000b00333086dc292mr7385616wrn.50.1701338369051; 
 Thu, 30 Nov 2023 01:59:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG7sEhdlR+w7qeYa4TBqgfdv6oRH4ErafctDA92sHP+URnZ06p0+xTEXR84Gwyb5hse/KmkXw==
X-Received: by 2002:adf:ec06:0:b0:333:86d:c292 with SMTP id
 x6-20020adfec06000000b00333086dc292mr7385596wrn.50.1701338368746; 
 Thu, 30 Nov 2023 01:59:28 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 e16-20020a5d4e90000000b00326dd5486dcsm1072533wru.107.2023.11.30.01.59.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Nov 2023 01:59:28 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Jani Nikula <jani.nikula@intel.com>, Maxime Ripard <mripard@kernel.org>
In-Reply-To: <87y1ef4lrb.fsf@intel.com>
References: <20231129181219.1237887-1-jani.nikula@intel.com>
 <72248f22-6337-487a-9979-a0d79e37a9ed@amd.com> <874jh362ta.fsf@intel.com>
 <eba23oyf4i3j6sdyqljjtgaz27brz4dxfrbtoddestjxwp5lr5@qxfj2b6szigc>
 <87zfyva8qg.fsf@minerva.mail-host-address-is-not-set>
 <87y1ef4lrb.fsf@intel.com>
Date: Thu, 30 Nov 2023 10:59:27 +0100
Message-ID: <87y1efo934.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC] drm: enable W=1 warnings by default across
 the subsystem
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
Cc: Pan@freedesktop.org, Karol Herbst <kherbst@redhat.com>,
 intel-gfx@lists.freedesktop.org, Xinhui <Xinhui.Pan@amd.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, dri-devel@lists.freedesktop.org,
 Nathan Chancellor <nathan@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Danilo Krummrich <dakr@redhat.com>, Hamza Mahfooz <hamza.mahfooz@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Jani Nikula <jani.nikula@intel.com> writes:

[...]

>
> Then I'd go for enabling in drm level and disabling individual warnings
> in the driver Makefile level if they won't get fixed.
>
>> Maybe add a Kconfig symbol for it instead of making unconditional?
>>
>> Something like:
>>
>> +# Unconditionally enable W=1 warnings locally
>> +# --- begin copy-paste W=1 warnings from scripts/Makefile.extrawarn
>> +subdir-ccflags-$(CONFIG_DRM_EXTRA_CHECKS)  += -Wextra -Wunused -Wno-unused-parameter
>> ...
>
> Then we'll have a ping pong of people not using W=1 or
> CONFIG_DRM_EXTRA_CHECKS introducing warnings, and people using them
> fixing the warnings...
>
> I really do think making it unconditional is the only way.
>

Fair enough.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

