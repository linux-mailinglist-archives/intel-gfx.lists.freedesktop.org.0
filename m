Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC49495DDF
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 11:42:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90F5610E9FC;
	Fri, 21 Jan 2022 10:42:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61FCE10E9FC
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 10:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642761732;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CdPdILngPzGrQBwtZZKW+7ixKah3Wpht/KCyewnhlCg=;
 b=E2QK4XXt/0wjkP32B5b/QnbINlfL7E02PHIne200FVc+8BYe3VdhMKgIhqVHnWhByIW8/Z
 cawFlFcUL24Khn0y9RkzyU6GVsWuvboEMwyCata0lDrJVJjqhryun117fRvPT6mwY+qcas
 Z8Jet5vlP6q9fTi9514oNMyvqi1ESvg=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-169-ZtlKuoOzMBOEbfcXNVmonQ-1; Fri, 21 Jan 2022 05:42:11 -0500
X-MC-Unique: ZtlKuoOzMBOEbfcXNVmonQ-1
Received: by mail-ed1-f70.google.com with SMTP id
 i9-20020a05640242c900b003fe97faab62so8679501edc.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 02:42:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=CdPdILngPzGrQBwtZZKW+7ixKah3Wpht/KCyewnhlCg=;
 b=XUBe/ngBf7Ct7fD1N9YProCjaVyrHPghji0TG7lwtzOk+obQJeIwgaP9VshhKy6+j5
 UaOtCi4nnR2SzGXZ+qfL8BZm7z9iKSoyCzvgkJQiT+snMsWEV9zo+3Us1xAhsJOCkPei
 8dT85v5EH+bdGPonSA+pyAqLtv5tqr2P5Xg3O/d2+fE/qxJaTnqb1StQMvvc1ZBh+Bjp
 PmgpW6AaifJMJlDQzAJLqqqYqKxMmZH0VbxDVAaQvsUnmTZU09VuTqsd6okLwmby7DVH
 xb7uoiFB6ciKlOtIPtFgK+yg+cH/iOthFQKIYWxrLHrdO8DZ4XZAQK/+4uUqJ+NAfLGz
 yGaw==
X-Gm-Message-State: AOAM530U8uJD+lKsTGmKNWqIvZfgTAaZdCVzFW6NjJv3r9ePXJzmfN8I
 k71WnSAE4NJhIrvwge8BHk0ax/ENy+fZdUzfyXsJG0TeXMcSEtvXKJiu3SCEGpVHPBzW5oNfjPC
 7o2cmZrADU/8yZsxYSJtsDANxj7mN
X-Received: by 2002:a05:6402:31e9:: with SMTP id
 dy9mr3680097edb.65.1642761730014; 
 Fri, 21 Jan 2022 02:42:10 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwip9Cp2oVEYL+pg2NbsXqt2zQcoTWCMHysfXzR0VjzDHu2yy8g2b0X+EK52vUarXS+yjY5QQ==
X-Received: by 2002:a05:6402:31e9:: with SMTP id
 dy9mr3680084edb.65.1642761729806; 
 Fri, 21 Jan 2022 02:42:09 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1?
 (2001-1c00-0c1e-bf00-1db8-22d3-1bc9-8ca1.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1])
 by smtp.gmail.com with ESMTPSA id z10sm2504846edl.54.2022.01.21.02.42.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 21 Jan 2022 02:42:09 -0800 (PST)
Message-ID: <faa591e3-19f3-1a8d-4e64-bc8cc94b82dc@redhat.com>
Date: Fri, 21 Jan 2022 11:42:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: Stephen Rothwell <sfr@canb.auug.org.au>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>
References: <20211015205422.53bec93d@canb.auug.org.au>
 <20220120141851.5503b65a@canb.auug.org.au>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20220120141851.5503b65a@canb.auug.org.au>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
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

Hi Stepen,

On 1/20/22 04:18, Stephen Rothwell wrote:
> Hi all,
> 
> On Fri, 15 Oct 2021 20:54:22 +1100 Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>>
>> After merging the drm-misc tree, today's linux-next build (htmldocs)
>> produced this warning:
>>
>> Documentation/gpu/drm-kms-helpers:451: /home/sfr/next/next/drivers/gpu/drm/drm_privacy_screen.c:270: WARNING: Inline emphasis start-string without end-string.
>>
>> Introduced by commit
>>
>>   8a12b170558a ("drm/privacy-screen: Add notifier support (v2)")
> 
> I am still getting this warning.

Sorry I completely missed your original report on this between
all the other kernel related emails.

I'll prepare a fix for this coming Monday.

Regards,

Hans

