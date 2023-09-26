Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 693CF7AEAE0
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 12:56:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF98A10E39D;
	Tue, 26 Sep 2023 10:56:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B7FA8912D
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 10:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1695725813;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ztsEuAgPuapaTM08P0SEgj/D/uEMY0v9vX8pBVttsrE=;
 b=V2s2oOB/yhiQwQ/13eD2eTSEHK32TJDBGIHxwMb+tLsvrHM5BIqtnpHEkc3iG4iNdt0LqD
 He1ST7XmPrgaKd+6+5gJj0JnLa7FMSh2RTQCyJ36T3FIAnqzmFAjW37oxssUTuumbCIYka
 jiH8WbtrOyKrnZ3Obx8HVI1767wHVZc=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-240-t2qqp3ylMPqSC0WlkVFFCQ-1; Tue, 26 Sep 2023 06:56:52 -0400
X-MC-Unique: t2qqp3ylMPqSC0WlkVFFCQ-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-9ae0bf9c0a9so714771566b.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 03:56:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695725811; x=1696330611;
 h=content-transfer-encoding:in-reply-to:organization:from:references
 :cc:to:content-language:subject:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ztsEuAgPuapaTM08P0SEgj/D/uEMY0v9vX8pBVttsrE=;
 b=qenXTPlAxvnDGJIgKJkUYTM3hiQzHIiusJhQESNiH/KFb12ezkWibI9bgqNzMnsEO6
 b9FziFBqNGj7VeHCV1K2kgS8EOGZBplp0PGJSFZVKEwgK1aARr+qhz0jSyXQldOsOtKF
 EH5JFt7Jbv8FddE6s6KvTUamEbvFi8tk0Ngvc8VNDPUCtKRkzJ7eTJrk5LSS3H+yPfUp
 CSEMC4COOvozkOh7K3fIAmWsuasnKQg804vj9s5VzwAdCWnw07AG971eBZnZiNV7agwr
 Hx4k2y9TxFAqrgeJD9J0Nvhwx+grb4ARFmAETYDjjiNge9C3tJyIYPRdZR9gj2mulQC/
 qqJQ==
X-Gm-Message-State: AOJu0YwNabOBSRQke0UQMUOcL9wQES9esnpZDt8U3Bu5Q9sHEjEdgRK5
 BSjNuz5IlfeKyNXqkD4NyRhCcTKdae+Yqx7wv6RPqpZZoLfEdxi5DG5iaSQr64RFDJAGECXzpuV
 3b0ft87VPN3mUxr+9m5MHkw/Bk6kN
X-Received: by 2002:a17:906:8a48:b0:9a2:225a:8d01 with SMTP id
 gx8-20020a1709068a4800b009a2225a8d01mr8584483ejc.7.1695725810986; 
 Tue, 26 Sep 2023 03:56:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF8Lokqy4lv4QzddH9koVW2cAZSwao+adaW7JEPfbJWs1+K0DKVx3+AGJPCG9KvFElCfknlIg==
X-Received: by 2002:a17:906:8a48:b0:9a2:225a:8d01 with SMTP id
 gx8-20020a1709068a4800b009a2225a8d01mr8584471ejc.7.1695725810692; 
 Tue, 26 Sep 2023 03:56:50 -0700 (PDT)
Received: from ?IPV6:2a02:810d:4b3f:de9c:642:1aff:fe31:a15c?
 ([2a02:810d:4b3f:de9c:642:1aff:fe31:a15c])
 by smtp.gmail.com with ESMTPSA id
 jt24-20020a170906ca1800b009929d998abcsm7575268ejb.209.2023.09.26.03.56.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 Sep 2023 03:56:50 -0700 (PDT)
Message-ID: <3a093a6d-3f7f-fd5d-923c-ef80840316f2@redhat.com>
Date: Tue, 26 Sep 2023 12:56:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Stephen Rothwell <sfr@canb.auug.org.au>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>
References: <20230926150725.4cca5fc5@canb.auug.org.au>
From: Danilo Krummrich <dakr@redhat.com>
Organization: RedHat
In-Reply-To: <20230926150725.4cca5fc5@canb.auug.org.au>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] linux-next: build warning after merge of the
 drm-misc tree
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 9/26/23 07:07, Stephen Rothwell wrote:
> Hi all,
> 
> After merging the drm-misc tree, today's linux-next build (htmldocs)
> produced this warning:
> 
> Error: Cannot open file /home/sfr/next/next/drivers/gpu/drm/drm_gpuva_mgr.c
> Error: Cannot open file /home/sfr/next/next/include/drm/drm_gpuva_mgr.h
> 
> Introduced by commit
> 
>    f72c2db47080 ("drm/gpuvm: rename struct drm_gpuva_manager to struct drm_gpuvm")
> 

Thanks for reporting this, fix available here:

https://lore.kernel.org/dri-devel/20230926105146.10808-1-dakr@redhat.com/

- Danilo

