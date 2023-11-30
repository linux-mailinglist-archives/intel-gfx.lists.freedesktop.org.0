Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A322A7FECAF
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Nov 2023 11:19:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B35B610E6DC;
	Thu, 30 Nov 2023 10:19:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADF0B10E6D2
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Nov 2023 10:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1701339590;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wO58wVM0/9bXpJ9VSmAQf3wg6nyduVC421Lit//29no=;
 b=LJrLRP5qX1svfFon/FmEFIQPVal+Glibo3Bkp2OZIlXTYEkQjr9StAU9euMBm9el2JieBa
 W9JvRo2QgVBKstPAro2eF5wTqlzDeU18yJWd0w0li9RpBxqNzfIsIAatb/gJhIpbIuc/ID
 7iSLFeK2FuObzYG2ipyFFCtBs3K9aNM=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-507-DoWztOPUO2Oin9bt1JCO-Q-1; Thu, 30 Nov 2023 05:19:49 -0500
X-MC-Unique: DoWztOPUO2Oin9bt1JCO-Q-1
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-40b3712ef28so5530335e9.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Nov 2023 02:19:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701339588; x=1701944388;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=wO58wVM0/9bXpJ9VSmAQf3wg6nyduVC421Lit//29no=;
 b=xKX08iJNFw8ACDfxSKqod5EprviJRo3m1u7+w4YFr4O9u1rSGVabXII4V6YQvyfQz+
 S1Cob9NKBHRLvwUtkRACID2fx2UWW49HYyv+w7h0QA958VfjIUlrN5PqaAIgdIz/WZ05
 rd5SCq15k51z5Ayd4+Q00zdwgkTsm0gg27oiziblgXruH7VCTFp6jQYJcm2sUh5qV3j6
 Io/Biue+X4rtgUbkT3fyNT4Nx7dDa2IXyZ7B/Bm3NfmsTKCpk4HkSdgc2Ub6UutSxZJz
 Su+fmThxS9c1jjv+6ncJNyYR8/7MGt0w9bcAzK34aG99NYttNg+bljPP04GYxOkApK5X
 aUwQ==
X-Gm-Message-State: AOJu0YwI/FQuLIvnTSplL0tn0KulpzbciH4eZ7I6zHpPpKRRne0ytWqd
 182LP9PslB+ZX2SWAFAxuy2gZEoPnP4IMziVr6mbI+kWFGrCNfloaBST3CA+czKq6rqwPlchkuD
 bPYeG+rhpNU+UsbCNXG2CoLkBhhMb
X-Received: by 2002:a05:600c:138e:b0:40b:3605:acda with SMTP id
 u14-20020a05600c138e00b0040b3605acdamr16519983wmf.25.1701339588022; 
 Thu, 30 Nov 2023 02:19:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFX77Bh9evkGb0uKx2BzFC3Nw8ErAav4a8jpAMm4IlrO79E7Bg2OPhWwsTzUaMy1NDoqoKrGA==
X-Received: by 2002:a05:600c:138e:b0:40b:3605:acda with SMTP id
 u14-20020a05600c138e00b0040b3605acdamr16519962wmf.25.1701339587693; 
 Thu, 30 Nov 2023 02:19:47 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 s15-20020a05600c384f00b0040b35195e54sm1467180wmr.5.2023.11.30.02.19.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Nov 2023 02:19:47 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Maxime Ripard <mripard@kernel.org>, Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <goc5tlbszvqy6kcduzllylsscvtolknhgbfpes43xvfve5ia6s@dpsgpa42poth>
References: <20231129181219.1237887-1-jani.nikula@intel.com>
 <72248f22-6337-487a-9979-a0d79e37a9ed@amd.com> <874jh362ta.fsf@intel.com>
 <eba23oyf4i3j6sdyqljjtgaz27brz4dxfrbtoddestjxwp5lr5@qxfj2b6szigc>
 <87zfyva8qg.fsf@minerva.mail-host-address-is-not-set>
 <87y1ef4lrb.fsf@intel.com>
 <goc5tlbszvqy6kcduzllylsscvtolknhgbfpes43xvfve5ia6s@dpsgpa42poth>
Date: Thu, 30 Nov 2023 11:19:46 +0100
Message-ID: <87v89jo859.fsf@minerva.mail-host-address-is-not-set>
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

Maxime Ripard <mripard@kernel.org> writes:

> On Thu, Nov 30, 2023 at 11:46:00AM +0200, Jani Nikula wrote:

[...]

>> 
>> Then we'll have a ping pong of people not using W=1 or
>> CONFIG_DRM_EXTRA_CHECKS introducing warnings, and people using them
>> fixing the warnings...
>> 
>> I really do think making it unconditional is the only way.
>
> Yeah, I agree.
>
> Plus, if we need to have an extra Kconfig option, it's pretty equivalent
> to using W=1
>

Yeah, with the difference that having a Kconfig symbol allows for example
distros to set it in their kernel configs.

It's a fair point though that probably the only option is to enable it
unconditionally.

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

