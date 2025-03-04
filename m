Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0AEA4EF75
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 22:39:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB37F10E6BB;
	Tue,  4 Mar 2025 21:39:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="XH2/ztvF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBF7710E6BB
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 21:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1741124340;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XPWOo20A/TNlKmMNu2g+KBDtR4C82uP2s4+Ztzk3PJo=;
 b=XH2/ztvFLiNb7yYGfNHPiXFkS2lZ9SurBCszoXc8g+5gio0lwgA1odMM6hAuqew3LnHEI/
 TKV4MVlpJV4qjPDF5ai6q75gsvhMTiqpLD4kCVG3YgAOi33Kjq1M8GQtuFRDYEXpezEm4G
 ZHaBiPJpGwKS+qCdy7TUSQuZrXmhXQo=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-586-lHFu796CNFq4qO1-AX8WUA-1; Tue, 04 Mar 2025 16:38:58 -0500
X-MC-Unique: lHFu796CNFq4qO1-AX8WUA-1
X-Mimecast-MFC-AGG-ID: lHFu796CNFq4qO1-AX8WUA_1741124337
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-390fd681712so1594010f8f.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Mar 2025 13:38:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741124337; x=1741729137;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=XPWOo20A/TNlKmMNu2g+KBDtR4C82uP2s4+Ztzk3PJo=;
 b=vp8/bEJdFvpcweWLioZ04hN6kqmWCkVzvhLCHI/j7TcZeePGNqSlOmCCFJyIaRf1dU
 SXsfuMYEEsvpBV/CxFVFtvHDL42ZsfBYw/Y/fIQcNqltoXKT2vu4a3hucyFcyHDEEFRC
 SbmurwdyXz40Aik49PKsh1aX23X3phNz570VUbK6f78GMI3KF+SeurLPAfgwNaQxjYCv
 skGFVGOdL6K6uo6eRdFNErDWxnPChK2Hh5n1pthXnTZhURljcYXimGf6Yyc4/hVstLMZ
 0K/Hoih27TokvZ6P/YH4wYvJWErWJ3mNSnk4FRRvaKi3SZfCjuL3UFCADReKSF/2txb4
 w5jQ==
X-Gm-Message-State: AOJu0YwAZtmQ36Vxij2vmALuzArzmPvHO8/Onr3f5kfAq8M1SoNpTMcP
 bXQN/2R/964I7+Fub2XxbAef8ImU2KFDxqveQTo1jbjlOTGnA2TW7BRBkAJZLmkwJABLdznvhtj
 5NXQJG37Ae3jHlhDWlOVoEt4vcyGMlB1G++EGNx2pYqdCETOiCauL6USc3RWB3gtfAw==
X-Gm-Gg: ASbGncsFomvFe3AgmlbBzLKKOExTKRPGdb3CZMv64cmPD6uavYKnvBCG1HyBxO/hRdd
 daQhod+Dc7Gv0rth+RBf+3+s88npZm6r3xweDIrpXCDbkMmBvlYQ0ftltBQ+cueCRk8lHaUnCxf
 iii1dmqOQJJxZcBPrMBbQlTkOshNIVR2QPww5SLGXnFCbvvXDphb8U28xEFar5zVhayxl3HNJj8
 LGWj/YEl0CqjMUTQ+I5q1LTL3hUrfrVMSbtiFWiBx97OcmdQCzj2E5yS042q7EqxvRhkwRUyNWX
 QkUr93IL491KpIymG7O0igjyFGUC99gGdZqIwhzdPbdV+AYpO31auPs=
X-Received: by 2002:a05:600c:3b17:b0:439:8a62:db42 with SMTP id
 5b1f17b1804b1-43bd29404eemr3185455e9.8.1741124337357; 
 Tue, 04 Mar 2025 13:38:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IErZIgNQ7dxy87GX5JZluyg2tAe6QV0DeyMYaH13GUGrIhPllBBZ3ZaKJ2S30irYIqGcbgztw==
X-Received: by 2002:a05:600c:3b17:b0:439:8a62:db42 with SMTP id
 5b1f17b1804b1-43bd29404eemr3185365e9.8.1741124336980; 
 Tue, 04 Mar 2025 13:38:56 -0800 (PST)
Received: from ?IPV6:2a01:e0a:c:37e0:ced3:55bd:f454:e722?
 ([2a01:e0a:c:37e0:ced3:55bd:f454:e722])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-43bc9c0fb1esm52916565e9.20.2025.03.04.13.38.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Mar 2025 13:38:56 -0800 (PST)
Message-ID: <6cfb66cb-fe2a-4934-9cac-982315583382@redhat.com>
Date: Tue, 4 Mar 2025 22:38:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/12] drm/{i915,xe}: Convert to DRM client setup
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, jani.nikula@linux.intel.com,
 rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, lucas.demarchi@intel.com,
 thomas.hellstrom@linux.intel.com, simona@ffwll.ch, airlied@gmail.com,
 mripard@kernel.org, javierm@redhat.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20241212170913.185939-1-tzimmermann@suse.de>
 <de8325a9-49b2-48ec-ba56-4349140564b1@suse.de>
 <7ca7be00-f6d9-43b7-b3d0-0984306ac302@linux.intel.com>
 <084ab2f7-240c-45c5-8bde-7c551546d1ca@suse.de>
 <d85b9017-bf18-444e-8d94-8ff66a0d06d2@linux.intel.com>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <d85b9017-bf18-444e-8d94-8ff66a0d06d2@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: xJPK5BlI1fyndraRuVj-Nvz0vKfq1FMxVTVFREuNjng_1741124337
X-Mimecast-Originator: redhat.com
Content-Language: en-US, fr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 04/03/2025 20:40, Maarten Lankhorst wrote:
> Hey,
> 
> On 2025-02-28 09:49, Thomas Zimmermann wrote:
>> Hi Maarten
>>
>> Am 12.02.25 um 08:28 schrieb Maarten Lankhorst:
>>> Hey,
>>>
>>> I'll give it a spin on xe today. It seems someone already tried on i915,
>>> so I expect no issues.
>>
>> Did you get to test the series?
>> Sorry, should have gotten back to you sooner. Xe was working with the 
> series applied. :)

Hi,

Is it possible to also review and merge i915 vmap support?
https://patchwork.freedesktop.org/series/135554/

This is required to have drm_log working on i915

Best regards,

-- 

Jocelyn


> 
> Cheers,
> ~Maarten
> 

