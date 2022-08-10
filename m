Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A6B58F365
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 22:02:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF96A14B0F7;
	Wed, 10 Aug 2022 20:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61DD710E5DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 20:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1660161732;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/1hlp0Gyv2ZIJfyrBMXG6uXCKrB0JJ1FvUhL509Xp2w=;
 b=Rx4STg0smLYDK2/yeEuQhFy9n0WopILoD0X5GTPR47fFybLneiUoTUFiI0CaIXibEuI5Kg
 afyMxbr+sKy3Yr9127q1aJxWyxyFPgOgUVuRzSiBlRkxFVbM98NLCyb2TgBgfiErNbSkZC
 0g0M3zVtnCUdtqSe4dPifXJQr7O30D0=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-264-j82UYX79PMiSmfg_6B4O-w-1; Wed, 10 Aug 2022 16:02:11 -0400
X-MC-Unique: j82UYX79PMiSmfg_6B4O-w-1
Received: by mail-qv1-f70.google.com with SMTP id
 dc13-20020a056214174d00b0047b6f9a1a9aso4226930qvb.23
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 13:02:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:user-agent:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc;
 bh=/1hlp0Gyv2ZIJfyrBMXG6uXCKrB0JJ1FvUhL509Xp2w=;
 b=wotr3nBVVY0/E2Si6WiHa10PRoFWRotAgForZ1AUO5/x2VQLgAA87lFKTy/EnwGpNY
 6Rn1v7pNe5X7w1uZF2UX3g2BQFM0jtR4nWQCALaEyPHT6eX7a3CfR3fAglHCC+sT1kFp
 N/Hz46I1Yde5bFD588YJ74pubpeS4T4/T1EFVBlZ5ku9pKl2OwLKz297+0ehRKhJwt8w
 K9nM2qnEqNYGx4v0wVITEROsDKI4BfiWxo2LAMzHtVl3Ijx+3MS6tdsFwzwRPGxDpQY9
 9w8MowkJ4EpiTVz3WiHdU/PwMgoxBquD/9XQiulVo+QGcWBj7DWkI9ntepqWW6yQsDEB
 +vPA==
X-Gm-Message-State: ACgBeo1kbMrKwelFOlhfAhVDxUhw+QMJp9zeYjegwm4CU8F3NNQbKf/W
 eqtLh0RszyBNE9zvQ69vYV2EkhG44qIvkG7nY4MggZUHt7P1JjEzS8HVrhb59txTGhV7kX3kBnn
 3TRsfB4iX58ZF1da9L65d+7UXzoFL
X-Received: by 2002:a05:6214:2a84:b0:476:feb2:f436 with SMTP id
 jr4-20020a0562142a8400b00476feb2f436mr25395662qvb.43.1660161730556; 
 Wed, 10 Aug 2022 13:02:10 -0700 (PDT)
X-Google-Smtp-Source: AA6agR5fLIKOJAg5QWHbIOrCO42lGfzKwOwhsxqZ3bG+OI9NXMLIj2uLfoC8Tbet2oyccfjlaAbKGQ==
X-Received: by 2002:a05:6214:2a84:b0:476:feb2:f436 with SMTP id
 jr4-20020a0562142a8400b00476feb2f436mr25395612qvb.43.1660161730114; 
 Wed, 10 Aug 2022 13:02:10 -0700 (PDT)
Received: from [192.168.8.138] (pool-100-0-245-4.bstnma.fios.verizon.net.
 [100.0.245.4]) by smtp.gmail.com with ESMTPSA id
 i21-20020a05620a405500b006b89b9024ddsm530880qko.24.2022.08.10.13.02.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Aug 2022 13:02:09 -0700 (PDT)
Message-ID: <419bcc405fa4b298acb3f167316217bcca9f7c07.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Wed, 10 Aug 2022 16:02:08 -0400
In-Reply-To: <20220810081753.12075-1-stanislav.lisovskiy@intel.com>
References: <20220810081753.12075-1-stanislav.lisovskiy@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 0/2] Add DP MST DSC support to i915
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
Cc: jani.nikula@intel.com, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Btw, what's the plan for this? Figured I'd ask since I noticed this on the ML,
nd I'm now finishing up getting the atomic only MST patches I've been working
on merged :)

On Wed, 2022-08-10 at 11:17 +0300, Stanislav Lisovskiy wrote:
> Currently we have only DSC support for DP SST.
> 
> Stanislav Lisovskiy (2):
>   drm: Add missing DP DSC extended capability definitions.
>   drm/i915: Add DSC support to MST path
> 
>  drivers/gpu/drm/i915/display/intel_dp.c     |  76 +++++-----
>  drivers/gpu/drm/i915/display/intel_dp.h     |  17 +++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 145 ++++++++++++++++++++
>  include/drm/display/drm_dp.h                |  10 +-
>  4 files changed, 203 insertions(+), 45 deletions(-)
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

