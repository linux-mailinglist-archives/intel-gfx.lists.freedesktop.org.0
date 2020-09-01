Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F68259D95
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Sep 2020 19:48:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AC486E854;
	Tue,  1 Sep 2020 17:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E835C6E406
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Sep 2020 17:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598982493;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vGNRpPWqH+97UPJQstv4XnEsZCSb/7CGwSY8dC7Jq+o=;
 b=XZC2PI0tzAtGzBNg42p7cfPxfyPfYtNYPvou25vkRorm/L3t9pNwy1+GPyOm3w9R/m7HR8
 qFsVCWmbnYOPQK5G9MNi0Kb/gZZUbFKH29cVRWYKsCiUemeD0S3wnw4rDhcbTp5iIAmnw6
 rSBwMmUjq4Av+9VQtLQ/KJeh4CL0wi4=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-285-MsgmtK7sNrKI_sya2MidwA-1; Tue, 01 Sep 2020 13:48:11 -0400
X-MC-Unique: MsgmtK7sNrKI_sya2MidwA-1
Received: by mail-qv1-f69.google.com with SMTP id dn10so1572514qvb.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Sep 2020 10:48:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=vGNRpPWqH+97UPJQstv4XnEsZCSb/7CGwSY8dC7Jq+o=;
 b=AQ1z4Dish+NqAOgt3dWj2qzgkRAV7U94y37Sm5d9tHNKbMlNn2tq4rF8YHji/imvm4
 +VPuw5xpcZbD6tWk6Usu8eQcQCdlpT6tQgxPvep3QOnh5kFRngIxr1GeyXxBZhgDoPbb
 yFeNC8Ty4W/H6ZsDUcve9diYv6jn66pb2nq6skRwNkoG7SYZUVIoXCnLDCUd1l9Iviy3
 LjDHIvA7j5Kk5YVZlYJQI58uGjkqA8CnvTJKl5JjsYC4r38T6dA7BqKwP3mvLXqWDmRq
 tYtudsUBM5BxB5Af4h7i5VCvqSzje1AD7vh8DzB2DFU5mNHGJgxXc7ISQByRiCw5og+W
 9seA==
X-Gm-Message-State: AOAM533UTeN9PjA/BOtQJpYN4uJT8nzOpEWOvuVblR32nmiZjxEguOcR
 mStEf+1dhsY7ukG8MSTN8FjIU3p4soRsN1jNrwdeEYKOxpvVo0A7LbHNYQoRUVaN8xxvua8Iyhy
 3LKrCENW+bSk3Ck+M/bbPooLfNs+e
X-Received: by 2002:a37:9402:: with SMTP id w2mr3171654qkd.329.1598982490658; 
 Tue, 01 Sep 2020 10:48:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxV/D4/yGDUFR3FQPsu5d08hUanmHWuDmqWQ2Dgw6q6gG09h+MCOK79eURTqNNfYHItmCfD3w==
X-Received: by 2002:a37:9402:: with SMTP id w2mr3171564qkd.329.1598982489462; 
 Tue, 01 Sep 2020 10:48:09 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id i2sm2440792qkd.111.2020.09.01.10.48.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Sep 2020 10:48:08 -0700 (PDT)
Message-ID: <c4b9aa428ccfa90cb29845f622eba8923eeb2e38.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
Date: Tue, 01 Sep 2020 13:48:08 -0400
In-Reply-To: <20200901123226.4177-1-jani.nikula@intel.com>
References: <20200901123226.4177-1-jani.nikula@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] drm/dp: start using more of the extended
 receiver caps
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
Reply-To: lyude@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2020-09-01 at 15:32 +0300, Jani Nikula wrote:
> In the future, we'll be needing more of the extended receiver capability
> field starting at DPCD address 0x2200. (Specifically, we'll need main
> link channel coding cap for DP 2.0.) Start using it now to not miss out
> later on.
> 
> Cc: Lyude Paul <lyude@redhat.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> I guess this can be merged after the topic branch to drm-misc-next or
> so, but I'd prefer to have this fairly early on to catch any potential
> issues.
> ---
>  drivers/gpu/drm/drm_dp_helper.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
> index 1e7c638873c8..3a3c238452df 100644
> --- a/drivers/gpu/drm/drm_dp_helper.c
> +++ b/drivers/gpu/drm/drm_dp_helper.c
> @@ -436,7 +436,7 @@ static u8 drm_dp_downstream_port_count(const u8
> dpcd[DP_RECEIVER_CAP_SIZE])
>  static int drm_dp_read_extended_dpcd_caps(struct drm_dp_aux *aux,
>  					  u8 dpcd[DP_RECEIVER_CAP_SIZE])
>  {
> -	u8 dpcd_ext[6];
> +	u8 dpcd_ext[DP_RECEIVER_CAP_SIZE];

Not 100% sure this is right? It's not clear at first glance of the 2.0 spec, but
my assumption would be that on < DP2.0 devices that everything but those first 6
bytes are zeroed out in the extended DPRX field. Since we memcpy() dpcd_ext
using sizeof(dpcd_ext), we'd potentially end up zeroing out all of the DPCD caps
that comes after those 6 bytes.

>  	int ret;
>  
>  	/*
-- 
Sincerely,
      Lyude Paul (she/her)
      Software Engineer at Red Hat

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
