Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E63651D9B
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 10:39:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42A4A10E364;
	Tue, 20 Dec 2022 09:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1856E10E366
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 09:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671529127;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1J4eLv+5To8BjnLItTbs6pq8g5LjZHk9PMjLEQIi8Lo=;
 b=Ib6Q8VoT8WxT3qwYus5iweZRKoFB+NY3ErkFXs636JFMVczDr2ZyRjdVtOX3vVTv7CvoL1
 okTNh/0sR/XNIx957+Yw/y83IiBg/m0QLzhJb32Q23TJ7IN8qVe+fwTlZ7huXiET+8RI5y
 NMOiNOldKCA0TuEKBhXZU3NQ5URN/6E=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-557-t2tzhEmaPsqUB0Ah0IDQVw-1; Tue, 20 Dec 2022 04:38:46 -0500
X-MC-Unique: t2tzhEmaPsqUB0Ah0IDQVw-1
Received: by mail-wm1-f72.google.com with SMTP id
 v192-20020a1cacc9000000b003d21fa95c38so4160890wme.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 01:38:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1J4eLv+5To8BjnLItTbs6pq8g5LjZHk9PMjLEQIi8Lo=;
 b=Fye7ENlcQ0R19+lBaZ9P2Lejm7tATt/XH35XiEX8fJCHAAR0PPu9h0mO6OYO63qOUJ
 r176BpdDiuL5DXO3ut6hT9Dqrj1LU1nziwA/gl33Sn6XmfEyxrpgfd8kI6GVCX0/Rzws
 hX23aa9xoe//+Tcfh2fm/y8LYJuuA7j7DhckNaP9Wza8S8e3O5g3gq1Yuwrexe8JOq5i
 EsxtdJpLkvo2QgD0rgJdtq3i6LBHyP3m2Ui/5gFTbdpd6bMHbjLbod4ns0ypaJLBlGJz
 2Jm2AtwrsBKwwNs3iEGkZhZ7U9cXQlvRB9QUTmCBXo24lbIbblkIns92YkWOgLC2qJKx
 ILgg==
X-Gm-Message-State: AFqh2kpYZKHu2TN62f/tj4Mqy5vyNVXvYZkD7KIB3aPNjV7xOPPmE+mt
 i4G2kOgu9IUmmdSftUJCubEkuHYI15EP/gmmtYM2Qv8WZhkfiv3bh1QioA1efh4GTXkA+6n/XAt
 9Ts3iAqr4iwPheL0yj9JQ3sdVoonK
X-Received: by 2002:a05:600c:1d89:b0:3d5:64bf:ccc2 with SMTP id
 p9-20020a05600c1d8900b003d564bfccc2mr972462wms.32.1671529125272; 
 Tue, 20 Dec 2022 01:38:45 -0800 (PST)
X-Google-Smtp-Source: AMrXdXslpFNWgJA7+1mAYcupIJ/r6e/d06O54fNaPmM/ERkGUAWuMMiWYBSHcxiARgbY+lIJOxnk0g==
X-Received: by 2002:a05:600c:1d89:b0:3d5:64bf:ccc2 with SMTP id
 p9-20020a05600c1d8900b003d564bfccc2mr972452wms.32.1671529125099; 
 Tue, 20 Dec 2022 01:38:45 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 i27-20020a05600c4b1b00b003d220ef3232sm14481191wmp.34.2022.12.20.01.38.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Dec 2022 01:38:44 -0800 (PST)
Message-ID: <bc75ba60-9fb4-dec9-c7fd-23e50942f7f0@redhat.com>
Date: Tue, 20 Dec 2022 10:38:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, deller@gmx.de
References: <20221219160516.23436-1-tzimmermann@suse.de>
 <20221219160516.23436-14-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221219160516.23436-14-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 13/18] fbdev/offb: Do not use struct
 fb_info.apertures
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
Cc: linux-fbdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-hyperv@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/19/22 17:05, Thomas Zimmermann wrote:
> Acquire ownership of the firmware scanout buffer by calling Linux'
> aperture helpers. Remove the use of struct fb_info.apertures and do
> not set FBINFO_MISC_FIRMWARE; both of which previously configured
> buffer ownership.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

