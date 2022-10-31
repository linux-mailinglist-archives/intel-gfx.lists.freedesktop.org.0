Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFB86135FA
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 13:22:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FB9210E236;
	Mon, 31 Oct 2022 12:22:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FAB410E252
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 12:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1667218949;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xVJodACOlUyVw6jJB0o/QffeIPQi24/sF6MmyMfBvgg=;
 b=AD3YqiH6p2ttr44BpYQxrxqMRTPybN7R/b6HdOO7WVOug/Q1OjwZu85lR+0dhw9vB0ZNLp
 v7HafG6DmjwvnlLt3brJJxuyUzEl6cdvpUV5fqKr5ZAt+IBZq1/R/Xx18Uo02XSc4VOIrG
 Mu6cRHxrbzkM8L0aY3CeC+LMDI6BwZY=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-375-SlHt2TyWMU2rZVyQ3tLXyA-1; Mon, 31 Oct 2022 08:22:28 -0400
X-MC-Unique: SlHt2TyWMU2rZVyQ3tLXyA-1
Received: by mail-wm1-f72.google.com with SMTP id
 c130-20020a1c3588000000b003b56be513e1so5254333wma.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 05:22:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=xVJodACOlUyVw6jJB0o/QffeIPQi24/sF6MmyMfBvgg=;
 b=RMRUtrYHMDy283eRh1/p/JuRlufJXOxzF2vJeD8Horz7d5qyyxsb6hVY2Spi375Fp1
 8sZUWbaoUnJOT1cSXAfYo32J+op+D3wOreEoIzode0ZNZ83M4Vru16kAyphjhp56AaXN
 GzrEyxT+85Y/P/aLXxID5hWooCaRXZ1mzSP2EAWNQOmRPBLA20o76iZgV+IemTRJOECW
 29VzcYoK5GdNA4L1z1VAF+FEqt+OeBoZDCIxO51qOKSDZ0a48P1AilMS5C/63/jf8JXM
 P8Ffu6dPE188mq9Qka19himF+xpl/jWuPz7OpSh0jeUL4xWCleDiv6jNJ4zvc9fHA756
 DCyg==
X-Gm-Message-State: ACrzQf3Y9tEJoM0lsZt7hc5GTnWm84GSLkwgtqLaMz7yTZ8kUy68dmLj
 XlJLGDscXpoLa7n2DnUMSkvYZ5McYT5z1yH2zeB1Y78moW9ELMl2XYPuyNr8/QvD8HO/J4FzDJb
 ZiqF2auw+d3WDnk3jynG4irGh1OVs
X-Received: by 2002:a05:600c:46ce:b0:3c6:f274:33b2 with SMTP id
 q14-20020a05600c46ce00b003c6f27433b2mr7860191wmo.27.1667218947040; 
 Mon, 31 Oct 2022 05:22:27 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM4zVdpLNc1mYDp74XAWVtjpPddzcwMDONTh4D+G0X15w3fKqsphKr/pP9hn5PrcknLAkhJ5Mg==
X-Received: by 2002:a05:600c:46ce:b0:3c6:f274:33b2 with SMTP id
 q14-20020a05600c46ce00b003c6f27433b2mr7860165wmo.27.1667218946788; 
 Mon, 31 Oct 2022 05:22:26 -0700 (PDT)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 f16-20020a05600c4e9000b003cf568a736csm5157904wmq.20.2022.10.31.05.22.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 31 Oct 2022 05:22:26 -0700 (PDT)
Message-ID: <ea046b06-fb0e-b7c2-8f70-b299401d9adf@redhat.com>
Date: Mon, 31 Oct 2022 13:22:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, sam@ravnborg.org, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com
References: <20221024111953.24307-1-tzimmermann@suse.de>
 <20221024111953.24307-11-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221024111953.24307-11-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 10/21] drm/tve200: Include <linux/of.h>
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
> Include <linux/of.h> for of_match_ptr().
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

