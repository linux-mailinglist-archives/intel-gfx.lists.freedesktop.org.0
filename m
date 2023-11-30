Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBEC7FEBDE
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Nov 2023 10:31:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 819AF10E6D2;
	Thu, 30 Nov 2023 09:30:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C792E10E6CF
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Nov 2023 09:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1701336651;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6jLhtIvyYX/AEg4gXklABoN9Rr3N6HqEZb8o1BjsQGA=;
 b=gCjow0/Ny6d23sjHHLxCPH+4qCq1G5i7yxqt8O+YhZgaGR3GlDv7fG3FfnHOvpp5lQSQ8E
 o0MbouiCjsdqhslNn9ZfdBiEi3KxgmtnkL3MGLZuSUKpITEUnlNsvNGsfFSqiwtjz/PQti
 XZELrhwT/oirpANfnA5Ko5YrAVcX1b0=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-198-2t0jGcS2Mlys7uGNHqkRIA-1; Thu, 30 Nov 2023 04:30:50 -0500
X-MC-Unique: 2t0jGcS2Mlys7uGNHqkRIA-1
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-40b346a11d9so4831455e9.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Nov 2023 01:30:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701336649; x=1701941449;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6jLhtIvyYX/AEg4gXklABoN9Rr3N6HqEZb8o1BjsQGA=;
 b=RZGNXUteFpMzzX4mekfGgYwZH7poh3Iumo82Rex3OwwIkUpleazsWuYuO+vFEQzgQt
 L16jtL6VEl6SGTLkdpSdd1YWRGR/yBcsFV15vf8beapX+xW7Pdl0BuKgKEB7fOkyXbDv
 x4gI5AS539YA1cXD+/HnEzMOKSb5aFnB8eX9p/mlQO0glevsrHPZOcyYiOqhlTzDVHFR
 a6YaGcUD14EUwSggfuWCcIlrJtFc6Sunk8qeDX3Ix4Q5cEK00txg+svOh4iUfwRTnRH2
 InbGAamEXi8SXS3op0wnmBIIaePtWrhGjpehm53SlmDJOMWHkibg3VSW7PoZwpfclYhu
 TZvw==
X-Gm-Message-State: AOJu0YyYHshl6NOzhmmmDe2K3dnHUxMzGnKUmcxlCWX+UTTRXl0wLQSb
 usK3ccyBcVaslm1iqjWSHzI26aOyY+65GMe3z01gaI0b/slnLh0hH+Mjx17rU8JVzgGEvEDhpp/
 0PhUgA6TrtLWMakZ4MFfMVeC9SvJx
X-Received: by 2002:a05:600c:a06:b0:40b:4492:4b78 with SMTP id
 z6-20020a05600c0a0600b0040b44924b78mr9443415wmp.19.1701336649176; 
 Thu, 30 Nov 2023 01:30:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHL1r0AGFRYEmiDiZoPadvAzry4K2HNJMV27+VhzOz2OA1r3NL3rl7jkuP6eBPpA1IkPvPU2Q==
X-Received: by 2002:a05:600c:a06:b0:40b:4492:4b78 with SMTP id
 z6-20020a05600c0a0600b0040b44924b78mr9443397wmp.19.1701336648825; 
 Thu, 30 Nov 2023 01:30:48 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 iv7-20020a05600c548700b00405959469afsm1322164wmb.3.2023.11.30.01.30.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Nov 2023 01:30:48 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Maxime Ripard <mripard@kernel.org>, Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <eba23oyf4i3j6sdyqljjtgaz27brz4dxfrbtoddestjxwp5lr5@qxfj2b6szigc>
References: <20231129181219.1237887-1-jani.nikula@intel.com>
 <72248f22-6337-487a-9979-a0d79e37a9ed@amd.com> <874jh362ta.fsf@intel.com>
 <eba23oyf4i3j6sdyqljjtgaz27brz4dxfrbtoddestjxwp5lr5@qxfj2b6szigc>
Date: Thu, 30 Nov 2023 10:30:47 +0100
Message-ID: <87zfyva8qg.fsf@minerva.mail-host-address-is-not-set>
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

> Hi,
>
> On Thu, Nov 30, 2023 at 10:52:17AM +0200, Jani Nikula wrote:
>> On Wed, 29 Nov 2023, Hamza Mahfooz <hamza.mahfooz@amd.com> wrote:
>> > Cc: Nathan Chancellor <nathan@kernel.org>
>> >
>> > On 11/29/23 13:12, Jani Nikula wrote:
>> >> At least the i915 and amd drivers enable a bunch more compiler warnings
>> >> than the kernel defaults.
>> >> 
>> >> Extend the W=1 warnings to the entire drm subsystem by default. Use the
>> >> copy-pasted warnings from scripts/Makefile.extrawarn with
>> >> s/KBUILD_CFLAGS/subdir-ccflags-y/ to make it easier to compare and keep
>> >> up with them in the future.
>> >> 
>> >> This is similar to the approach currently used in i915.
>> >> 
>> >> Some of the -Wextra warnings do need to be disabled, just like in
>> >> Makefile.extrawarn, but take care to not disable them for W=2 or W=3
>> >> builds, depending on the warning.
>> >
>> > I think this should go in after drm-misc-next has a clean build (for
>> > COMPILE_TEST builds) with this patch applied. Otherwise, it will break a
>> > lot of build configs.
>> 
>> Oh, I'm absolutely not suggesting this should be merged before known
>> warnings have been addressed one way or another. Either by fixing them
>> or by disabling said warning in driver local Makefiles, depending on the
>> case.
>
> I'm all for it, but yeah, we need some easy way to opt-in/opt-out. Some
> drivers are pretty much unmaintained now and are likely to never fix
> those warnings.
>

Maybe add a Kconfig symbol for it instead of making unconditional?

Something like:

+# Unconditionally enable W=1 warnings locally
+# --- begin copy-paste W=1 warnings from scripts/Makefile.extrawarn
+subdir-ccflags-$(CONFIG_DRM_EXTRA_CHECKS)  += -Wextra -Wunused -Wno-unused-parameter
...

> Maxime

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

