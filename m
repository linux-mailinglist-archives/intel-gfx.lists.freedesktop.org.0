Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 486EABD7F0B
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 09:34:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D2C410E563;
	Tue, 14 Oct 2025 07:33:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="OilukKMS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A96310E563
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Oct 2025 07:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1760427235;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=G2f+TEVmNHcIZWSH2C31Ng9eliwbtMBD5xTQThZ/PZk=;
 b=OilukKMSu42pV46NBFqbnT70tAnBSPt39yYIoREjDrDjti0kgBDOh0yIV/nOnfvaMkI0Uh
 ajmf39v7pWsGLFvz51N1b/n0KAF1fHu23RMdqf6Y4/uN25JS5dU9AieDfJV9B7EwGtce8L
 Bhuwi0MSeep25QnW19JUqRvEGOeF3IQ=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-676-9NS_McsaNfaYhs6eDzY6QQ-1; Tue, 14 Oct 2025 03:33:54 -0400
X-MC-Unique: 9NS_McsaNfaYhs6eDzY6QQ-1
X-Mimecast-MFC-AGG-ID: 9NS_McsaNfaYhs6eDzY6QQ_1760427233
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-46e3ef2dd66so33271325e9.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Oct 2025 00:33:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760427233; x=1761032033;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=G2f+TEVmNHcIZWSH2C31Ng9eliwbtMBD5xTQThZ/PZk=;
 b=UDKo3cVZLCGFLBan+Nl0kNeBCxvA8pi/ewWHRemM4pDFTIW+c51aqn0+aafl47ER1I
 md6uepEDM+H0OEMRIdp4/KO1gJi1U9xigGNFq98NlyXRGRMJp1e/NVPV5DQyPhopcL0P
 3a5fa6upTwjSeujBgoRoo9gvhC1tg9qilzp1KPazCg2m4MO987pkFHoqds1Hu7bDw7G8
 XatYiItrt1UnT/bjBScvpFN5ssvW4f3jTeJU0MX7AsKUzgE0R7U3JVyMrmEHo3uhyJko
 vJ62/Rr4vRjG40EeU7rLmKQhsf05Nj+lRh78t60bSMYuLCuEyir0XOBdXiAq1gfbXUPH
 WGcA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXriTEIgO90SjrYLR/ZjiHyHqI71w0xndWKeqPgfSN1z2PDwls+/kEitf3WsxSS9S4/BM5MW+BLiGc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwJ/vIYH9iBxcCOD5wcYqqeo+Kh2mb3eXuH2z8QHEQ2KbD7Pgnz
 5X/fWTsEXYi1bG9lXtG5nWi9DH1iWDWIceOxT/NkTCoO5TPFLul5elThoi338LDtbS71CLHf3RS
 AEvh+Ko5iyNuw871qoInP6+Kjm4r04t3k6Y6thJT/qqrUc+GLjIoWacrV2PWyuq7bceaaUw==
X-Gm-Gg: ASbGncv+pYFxEpIfOzVqSaued0OJlleo0HD/UUKvGtk1YRuYrmqKLa8GB7gksW2ZiwH
 7TmxgENwzQHmEJoi+UmlDQJ55q2TgFH4Cds4Zpu98E6hfzZeBhGQBbJ4cHIHk8Rsd0mATzmbnYt
 afG7ILF9zkyzyqjlkig+di2200FuK8RqUXl3395ldUcNoPy299vNkgurHeoYjF1mKRSb7UY0Xdn
 R1ZpWL+Fm/+7k7hGqlh+7oZPlqTWVircQUw5Oyq0JJrAlJI8LZWg+YXBDdAYjYZemzddTblQytD
 IWdnogxiZZqo+t2z8Zq4VfEPvrChZ4TaRNYylnlYTDydZ1TJ7HubYZZK2V3TR2myj+ZsuDjNPUZ
 CJPEZ
X-Received: by 2002:a05:600c:1277:b0:46c:adf8:cd82 with SMTP id
 5b1f17b1804b1-46fa2952c02mr135681075e9.3.1760427232811; 
 Tue, 14 Oct 2025 00:33:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBeNo7ZlnJvZO+4tdhdDmG+vIUKT7nCznXOA5q9opUrokbPvd9TwG1AFWjfUcvv1KmWXVDOA==
X-Received: by 2002:a05:600c:1277:b0:46c:adf8:cd82 with SMTP id
 5b1f17b1804b1-46fa2952c02mr135680875e9.3.1760427232370; 
 Tue, 14 Oct 2025 00:33:52 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:8998:e0cf:68cc:1b62?
 ([2a01:e0a:c:37e0:8998:e0cf:68cc:1b62])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-46fb489ac60sm230694605e9.16.2025.10.14.00.33.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Oct 2025 00:33:51 -0700 (PDT)
Message-ID: <335fdb74-6d43-41e0-9774-eb57f425313d@redhat.com>
Date: Tue, 14 Oct 2025 09:33:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/client: Remove holds_console_lock parameter from
 suspend/resume
To: Thomas Zimmermann <tzimmermann@suse.de>, alexander.deucher@amd.com,
 christian.koenig@amd.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tursulin@ursulin.net, lyude@redhat.com, dakr@kernel.org,
 lucas.demarchi@intel.com, thomas.hellstrom@linux.intel.com,
 javierm@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
References: <20251001143709.419736-1-tzimmermann@suse.de>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <20251001143709.419736-1-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: qJ6rzUNnpn1klkxJ82yc-mLkMpQZoCRsYxi5IEs8oVA_1760427233
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

On 01/10/2025 16:37, Thomas Zimmermann wrote:
> No caller of the client resume/suspend helpers holds the console
> lock. The last such cases were removed from radeon in the patch
> series at [1]. Now remove the related parameter and the TODO items.
> 
> v2:
> - update placeholders for CONFIG_DRM_CLIENT=n
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Link: https://patchwork.freedesktop.org/series/151624/ # [1]

For drm_log:
Reviewed-by: Jocelyn Falempe <jfalempe@redhat.com>

