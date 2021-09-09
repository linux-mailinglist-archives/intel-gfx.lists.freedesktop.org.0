Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DBF405AA1
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 18:18:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14C376E8AA;
	Thu,  9 Sep 2021 16:18:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 120196E8AA
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 16:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631204288;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DFYwJKNou+RmjsI/G6x/CnVjB7CdXNyU2huXcy7mF1g=;
 b=RKXvmoZsByxn+qAgTu+mXd6W4PFsgsNso8OVbyPUisn4fpga4pfWQoXutmfAOsEIMnik/N
 qo9d4A2xgZcSHR+BHzMZI3UPlSHweI/OCyUcr2/Gq3t2eGKuvDdjNiAfJCBzqzwwDhHu4W
 w24c8DCIvUVpeVXv5SlYUCCJjRLvh3E=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-234-ZSQq0wXQMGmvb9Rp-3dKHA-1; Thu, 09 Sep 2021 12:18:07 -0400
X-MC-Unique: ZSQq0wXQMGmvb9Rp-3dKHA-1
Received: by mail-qt1-f198.google.com with SMTP id
 l22-20020a05622a175600b0029d63a970f6so5310627qtk.23
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Sep 2021 09:18:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=DFYwJKNou+RmjsI/G6x/CnVjB7CdXNyU2huXcy7mF1g=;
 b=66k05ukhlCdSx3hx0MaFhc0tUUXvK5dxCy2blPL2Cfpot8OslVmrcjJY63tTPV9KBZ
 1DT3eK/ph8avgrKYSjI8S779okikMtrjaISBAiJDhCKCEMzPUZ5svT1/ujmgF3YCIdFM
 TIUxiFS+vjrtxhCneyJmkuy5Gr+FbuPyxi1zCf6VGsuncLs/Acet3T7hPceV8kRQHMV2
 OWFcCQADThA0yoPJeZhUx9mXTclCRqGYQK8p3XZvd5c1hJigDIN6JIt0ZlkMK2mczNvm
 BbmhSRGrDVsErZtYDAj3lUU+BeeVQwMfTPv5G+bmnKWLB+WzLEOgHttlxoBQ6in2R8XX
 dGXw==
X-Gm-Message-State: AOAM531cJIredqcHMqFnIqKfU7YCgfbIkg15t8Lbx3vtKr6sC+efjR6g
 tWkVP/qpjsxi8s7Zx/8Rxu9fpOJyTOzktztDqpDBsXbqTrZfhMrvdjkcwd4LX+HTiOePcPMKyRl
 lP6QAtlT+Zb5MLCVxNjA5DI1ObRJd
X-Received: by 2002:a05:620a:24c1:: with SMTP id
 m1mr3611778qkn.309.1631204286642; 
 Thu, 09 Sep 2021 09:18:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwazGn7UBmgC1TBQ165kEqC4DoOcnYeiKcKpObQmVijagBpm/wDcSQc/gk5CEYx6NniMCZykQ==
X-Received: by 2002:a05:620a:24c1:: with SMTP id
 m1mr3611752qkn.309.1631204286413; 
 Thu, 09 Sep 2021 09:18:06 -0700 (PDT)
Received: from [192.168.8.206] (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id o23sm1619422qkk.40.2021.09.09.09.18.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Sep 2021 09:18:06 -0700 (PDT)
Message-ID: <282213f032b3dfe10cf7c461083c26b474f09f0f.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, ville.syrjala@linux.intel.com, 
 manasi.d.navare@intel.com
Date: Thu, 09 Sep 2021 12:18:05 -0400
In-Reply-To: <649051cb896821147feee91aab1f2abc523c1353.1631191763.git.jani.nikula@intel.com>
References: <cover.1631191763.git.jani.nikula@intel.com>
 <649051cb896821147feee91aab1f2abc523c1353.1631191763.git.jani.nikula@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v3 02/13] drm/dp: use more of the extended
 receiver cap
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

I thought I remembered an issue with this but looked up the previous emails,
and it looks like that this change actually should be safe!

Signed-off-by: Lyude Paul <lyude@redhat.com>

On Thu, 2021-09-09 at 15:51 +0300, Jani Nikula wrote:
> Extend the use of extended receiver cap at 0x2200 to cover
> MAIN_LINK_CHANNEL_CODING_CAP in 0x2206, in case an implementation hides
> the DP 2.0 128b/132b channel encoding cap.
> 
> v2: Extend to DP_RECEIVER_CAP_SIZE (Ville)
> 
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: dri-devel@lists.freedesktop.org
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/drm_dp_helper.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_dp_helper.c
> b/drivers/gpu/drm/drm_dp_helper.c
> index 9b2a2961fca8..2e74b02ed96b 100644
> --- a/drivers/gpu/drm/drm_dp_helper.c
> +++ b/drivers/gpu/drm/drm_dp_helper.c
> @@ -608,7 +608,7 @@ static u8 drm_dp_downstream_port_count(const u8
> dpcd[DP_RECEIVER_CAP_SIZE])
>  static int drm_dp_read_extended_dpcd_caps(struct drm_dp_aux *aux,
>                                           u8 dpcd[DP_RECEIVER_CAP_SIZE])
>  {
> -       u8 dpcd_ext[6];
> +       u8 dpcd_ext[DP_RECEIVER_CAP_SIZE];
>         int ret;
>  
>         /*

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

