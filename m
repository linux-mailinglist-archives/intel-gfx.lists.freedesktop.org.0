Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9381616055
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 11:01:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7F8C10E46A;
	Wed,  2 Nov 2022 10:01:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DA3510E468
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 10:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1667383287;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QoVTRIE06q1gLaA+FiGPh2NoY5TNtlfidxMdk3t+aTM=;
 b=SpC4X1arPoypm4AhG43iNgIFPIrCdIucx1orjjA1yyqE+ODD1UchFVnrnUwNEcaVvYUNLF
 Bm7xFqQTSy/ZZ+uMw1nwLP4DwyKvG8x2pjqCVg1LimPjNjS5QjzDdAx24mqsdP+eLWjfnC
 FxUOtGU8/XgonQB/foB+GRtDEd9Av7o=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-363-71-TzUpLNlOVZbw7SqlHrQ-1; Wed, 02 Nov 2022 06:01:25 -0400
X-MC-Unique: 71-TzUpLNlOVZbw7SqlHrQ-1
Received: by mail-wm1-f70.google.com with SMTP id
 c130-20020a1c3588000000b003b56be513e1so7771400wma.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Nov 2022 03:01:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=QoVTRIE06q1gLaA+FiGPh2NoY5TNtlfidxMdk3t+aTM=;
 b=eV3aNml7hTwiIqvfAJ0o51xgS+tpyPprvQ3eYAiF3F01LEVP6yEohQv+uM2PpsSXBs
 S2KPI8vKGMdKHbUTpW8qnfPLuVh9t7S9hwAnoFZIsEqf/OfYOBPmh1WFLr84JE+b+cOT
 bMBEkY7T1aRw5xk3O6fGZEfSnrU8fTnSeh0p3nACWxpbSeviJRY1lyYqD5P2bYZzXK1A
 BndWRXNph3R+ajpy9rsnljH00k8hjigOUuTin4mwPjH9HC8FGD8qie8EuU635MbFcchu
 3jjzKqxk5iFEOzYaSWZLsJOFOXPUQrSDc83q0IIESqHnKEELLDK2LhIXWfos60hmj8lL
 g1ow==
X-Gm-Message-State: ACrzQf219J7gGxSX6DRId83xWtZtiI0SRFQ0SPbHHR++skvBvegX1YpM
 xuzL8FPgo5z74ttvXkVGm2knkqjYyK1Q36DJx5au6bfNRuSiE7TvjhxKIIcNbPgGiaMb+hw7FHw
 mgKlOTpleO9eJIW4KxwWUYJYzE6mA
X-Received: by 2002:a5d:5505:0:b0:236:582b:7eb0 with SMTP id
 b5-20020a5d5505000000b00236582b7eb0mr14405760wrv.68.1667383284406; 
 Wed, 02 Nov 2022 03:01:24 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM5ieiweFPtXW5w3c0VZoUXMoQohTPuy1WtQBfT29g+UzlDhvHMzFOjUUUPFpm0LZwMa5DV8ag==
X-Received: by 2002:a5d:5505:0:b0:236:582b:7eb0 with SMTP id
 b5-20020a5d5505000000b00236582b7eb0mr14405736wrv.68.1667383284200; 
 Wed, 02 Nov 2022 03:01:24 -0700 (PDT)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 b13-20020a5d550d000000b002366b17ca8bsm14230263wrv.108.2022.11.02.03.01.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Nov 2022 03:01:23 -0700 (PDT)
Message-ID: <1d2b9809-857f-48cc-1177-72e6fc67b8e5@redhat.com>
Date: Wed, 2 Nov 2022 11:01:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, sam@ravnborg.org, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com
References: <20221024111953.24307-1-tzimmermann@suse.de>
 <20221024111953.24307-21-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221024111953.24307-21-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 20/21] drm/fb-helper: Move generic fbdev
 emulation into separate source file
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
Cc: linux-hyperv@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 nouveau@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-samsung-soc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 xen-devel@lists.xenproject.org, linux-sunxi@lists.linux.dev,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 etnaviv@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 spice-devel@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 freedreno@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/24/22 13:19, Thomas Zimmermann wrote:
> Move the generic fbdev implementation into its own source and header
> file. Adapt drivers. No functonal changes, but some of the internal
> helpers have been renamed to fit into the drm_fbdev_ naming scheme.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

