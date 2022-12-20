Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF20651DAE
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 10:41:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F02710E36B;
	Tue, 20 Dec 2022 09:41:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A30510E368
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 09:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671529267;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LveyBWJYAPbiyv73TUAfukc6OJNlBtbiuo6YSIh6FLQ=;
 b=GQFfNYuPBtRkaqcu1cFkDah4XRVsMrCqogWbfKlUqSc25S4g5e7O2JhYbcQ566Yb7HcD0r
 94v/8+kJD+DefWaodwgPbhCOzV/hWIJ1GMihzC1ux5voShQFvaGV1swHHeyKZQ54/otmAY
 ErYtGsxL3sWvqZ+/8R+RUKsXcng2WOo=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-651-D9k-8IdWNCaxoS7-1ljPLQ-1; Tue, 20 Dec 2022 04:40:58 -0500
X-MC-Unique: D9k-8IdWNCaxoS7-1ljPLQ-1
Received: by mail-wm1-f71.google.com with SMTP id
 c7-20020a1c3507000000b003d355c13ba8so2694617wma.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 01:40:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=LveyBWJYAPbiyv73TUAfukc6OJNlBtbiuo6YSIh6FLQ=;
 b=l8JYuNGt+f1P8obVWgbgS23o9iZS04qJQNpxa7ozGWadNnL38JfV16l3K/Ukh5LKf0
 vq6OLHYSElTUgAkfukcokytOkVjYtz/CWF09sMeKb8nYXyUx8C52dJJ5RodxVQXO86DA
 U4YjfaUmGRjbR+z7bYMixis1k4dYu/rqEQVPV3eukJhouBnmYg+QZPZNv6emPpuw66g3
 FOJBOSV/MB4C1/qP2y2bXcGHtCicffWT6W8cFnZR5myzYfgkYOIRX9YWGt6rDRoCJ6oV
 Dj6KyR5QZRdhLJAoFDw1FJLfMRn+2k1VnQd7PBEDA57gEiNG1ldGhaB7mnewblsuxz2S
 WqiA==
X-Gm-Message-State: ANoB5pn63+xa1JvamVM8eV/t69nZw6WFgABvb0foK/brssPKfPShDml3
 P1A3/LCYc4y0ss/ALh+zQsB+GOEckKhQmbtvhY6pZllMf1rx7UYXNpHEMeVXz06nVIyhCj5cVT9
 1MwBwTm6QD2dj3DanPIs5i2mngg73
X-Received: by 2002:a05:600c:1c23:b0:3d2:3376:6f2e with SMTP id
 j35-20020a05600c1c2300b003d233766f2emr22381404wms.9.1671529257842; 
 Tue, 20 Dec 2022 01:40:57 -0800 (PST)
X-Google-Smtp-Source: AA0mqf7eSfSzTvRvhDpxH502Pk0KEhQEu8qDdlhID/m63O9KppBhxg3tASNRV4SrXUiQOLpYrNpaag==
X-Received: by 2002:a05:600c:1c23:b0:3d2:3376:6f2e with SMTP id
 j35-20020a05600c1c2300b003d233766f2emr22381388wms.9.1671529257649; 
 Tue, 20 Dec 2022 01:40:57 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 by3-20020a056000098300b002366c3eefccsm12187201wrb.109.2022.12.20.01.40.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Dec 2022 01:40:57 -0800 (PST)
Message-ID: <6b3825fc-e149-9096-0438-0fb2c717f3d6@redhat.com>
Date: Tue, 20 Dec 2022 10:40:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, deller@gmx.de
References: <20221219160516.23436-1-tzimmermann@suse.de>
 <20221219160516.23436-16-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221219160516.23436-16-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 15/18] fbdev/vesafb: Remove trailing
 whitespaces
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
> Fix coding style. No functional changes.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

