Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EC46660E2
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 17:44:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C73CC10E79E;
	Wed, 11 Jan 2023 16:43:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D15AF10E79B
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 16:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1673455431;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HxRYFvZ1+BeTGMrTtJZgEBUI9joLdvIfL1k/Gm7E0+s=;
 b=Mis8l/UdXic7tt6EavOy6RedZc/K6c3QYJaqPHwLcPJXfaB9BYgwaebFd2Tavn7DSuMTN1
 F+jdx3oDeKexDAPwHPwr6YOoY7Z9FHtYcg+CATA9W4STi26DTEQwGCGD++qR67WfSBgK5y
 VmNwd3ObQkKopTlN+mRTA4mu2VC0/A4=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-597-IgVkLog4NJqsLngpamNUwA-1; Wed, 11 Jan 2023 11:43:48 -0500
X-MC-Unique: IgVkLog4NJqsLngpamNUwA-1
Received: by mail-wm1-f69.google.com with SMTP id
 l31-20020a05600c1d1f00b003d9720d2a0eso10973430wms.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 08:43:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=HxRYFvZ1+BeTGMrTtJZgEBUI9joLdvIfL1k/Gm7E0+s=;
 b=ze1aGq2CP1dpMWemicqEUpWJX0x27FrKaRtKEX241kJsXyhkw2pokfllYkMNjlJG3t
 RvxjPgcsiQIM0MlE93EdnNqC2Pi+gRoha3gpGGYlZDN5R4+ar6iuNfGtvHl69+6MjlmJ
 nftSqiE16iz+/sihSrayMv9sI7Ar0hy9czOrjKJciLEdpCfDn2kySn6QZhnjij8sAqfv
 v0aV/9Np+pbx+oF+XTKqXdhLa8Sf2K9WBs0IcZvchCiq1DYqsjUefGZAt/DRJdsA3V8t
 DH/VX3WoZbQqwymBkEvCu6Jiv+1A1zwZowv8FhE1FeQCmBMkSkh9EWrHwyu0hYJjUmgF
 5Gtg==
X-Gm-Message-State: AFqh2kpvGcaPt9GQ2zi/2m4nTK9i8sd8aP+kMOL1qJ1vC+OnKSYR3yNU
 2ycPvvWYh1vSuiK5/co6VhVMtr4bGp8X8gqEi3WFd6MM1ysa4tKDnTc/fd3sIxSTucg74FyG54a
 si6pH07b2ykFz0Smu3eqJP1Ak0fGg
X-Received: by 2002:a05:600c:a51:b0:3d2:3376:6f38 with SMTP id
 c17-20020a05600c0a5100b003d233766f38mr51935583wmq.20.1673455427731; 
 Wed, 11 Jan 2023 08:43:47 -0800 (PST)
X-Google-Smtp-Source: AMrXdXt8bs5GVHKAAyzPrAmLCp/tLubFFeFPYbGqzxKyfH2/luqZIN7to1nvrwQTAx8OXJqYX3VBcw==
X-Received: by 2002:a05:600c:a51:b0:3d2:3376:6f38 with SMTP id
 c17-20020a05600c0a5100b003d233766f38mr51935564wmq.20.1673455427564; 
 Wed, 11 Jan 2023 08:43:47 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 u21-20020a7bc055000000b003d9aa76dc6asm27673760wmc.0.2023.01.11.08.43.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Jan 2023 08:43:47 -0800 (PST)
Message-ID: <dc578554-570d-9496-6661-4c9bcd3e2496@redhat.com>
Date: Wed, 11 Jan 2023 17:43:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20230111154112.90575-1-daniel.vetter@ffwll.ch>
 <20230111154112.90575-11-daniel.vetter@ffwll.ch>
 <2102a618-2d5e-c286-311f-30e4baa4f85b@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <2102a618-2d5e-c286-311f-30e4baa4f85b@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 11/11] video/aperture: Only remove sysfb on
 the default vga pci device
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
Cc: Aaron Plattner <aplattner@nvidia.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 1/11/23 17:20, Thomas Zimmermann wrote:

[...]

>>
>> diff --git a/drivers/video/aperture.c b/drivers/video/aperture.c
>> index ba565515480d..a1821d369bb1 100644
>> --- a/drivers/video/aperture.c
>> +++ b/drivers/video/aperture.c
>> @@ -321,15 +321,16 @@ int aperture_remove_conflicting_pci_devices(struct pci_dev *pdev, const char *na
>>   
>>   	primary = pdev == vga_default_device();
>>   
>> +	if (primary)
>> +		sysfb_disable();
>> +
> 
> There's another sysfb_disable() in aperture_remove_conflicting_devices() 
> without the branch but with a long comment.  I find this slightly confusing.
> 
> I'd rather add a branched sysfb_disable() plus the comment  to 
> aperture_detach_devices(). And then add a 'primary' parameter to 
> aperture_detach_devices(). In aperture_remove_conflicting_devices() the 
> parameter would be unconditionally true.
>

Or just remove that long comment since there's already kernel-doc for the
sysfb_disable() function definition.

This feels to me that any approach to parameterize this will lead to code
that is harder to read.

Since is just a single function call, I would just duplicate like $subject
does to be honest.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

