Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84269405AA5
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 18:18:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B78646E8B1;
	Thu,  9 Sep 2021 16:18:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB1F06E8B1
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 16:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631204314;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ewBHaw6CXr7fu1kkTtufkK6zzYGeCnEb1o6teII30n0=;
 b=UIDL7/ZEygcg7Hh9qAilZJUrc68nS3G2uuCLzEnv+tPssGRGjl4ViyMKQ1uvqgLZuHjPBN
 8hiTPtETjTduB+U5qqjqgV3HhFdAMBbV628ZMZC0Axs2xkRb2I1iqC3CMJn6tu4E4vZSIv
 S0fkN498ZKROovAV2de3hAPqZnGChck=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-471-r-WmGQu4OA-92FhLEgLAow-1; Thu, 09 Sep 2021 12:18:29 -0400
X-MC-Unique: r-WmGQu4OA-92FhLEgLAow-1
Received: by mail-qk1-f197.google.com with SMTP id
 62-20020a3706410000b02903d2cdd9acf0so4899775qkg.21
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Sep 2021 09:18:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=ewBHaw6CXr7fu1kkTtufkK6zzYGeCnEb1o6teII30n0=;
 b=l7dxO3ulsYpSd4RusXU3umIdt0qf+yey9dBBGG2WNKkggqfmPHIDa3igbhFMWpTJXy
 z8te74W303H7PSzXeJ0mcyNZN8FMMvX94vVZ7s+UswT5oi5wNZDKX+8eWSSQkjt4vGYy
 OLqmJB6rD2IkuGp9VxQ0kEna3xTFTs/1UTAAyKz4bMCDVw3uFG5iweeKvaKHxg99RcBv
 7fvZCC6jj6ndz4BdQC5lxAwNDPtqQjzfsU8w5cOVJBwEXOIr8TgXaQHD8vQtjxA3PJ9O
 Gn+UWG6ABFMGIpp4J4/73QcVWgYi7Z3+7vKSRGyfZgEvyZGz2iSCXSkmFEnFcnxOrS+J
 +NPA==
X-Gm-Message-State: AOAM5323LiEYwupndGdDh5+Zx6ki3NH6mV8lTaiwrqQfdKLNXVB+gPRK
 IvuiI0oIDv9S7RoNaj5GC9ingsF1y4pfbGy5Nj5RNKQ0rHD54P3H0Pto/3nNABN9N9BYnNPZjVL
 Z6sdbNow4Bzw/mmcXaTtjv5C1D9GO
X-Received: by 2002:a05:6214:130a:: with SMTP id
 a10mr3869438qvv.53.1631204309094; 
 Thu, 09 Sep 2021 09:18:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwfrNSaQBwEqiRj+mMqs77Y036x02BGZlpVc98v6yXwCA+EFrazr+WrnxmecQoDDyTFLf7vxw==
X-Received: by 2002:a05:6214:130a:: with SMTP id
 a10mr3869412qvv.53.1631204308888; 
 Thu, 09 Sep 2021 09:18:28 -0700 (PDT)
Received: from [192.168.8.206] (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id a9sm1647417qko.27.2021.09.09.09.18.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Sep 2021 09:18:28 -0700 (PDT)
Message-ID: <b13705a75f7820772984b2f368664c7234dcb6ff.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, ville.syrjala@linux.intel.com, 
 manasi.d.navare@intel.com
Date: Thu, 09 Sep 2021 12:18:27 -0400
In-Reply-To: <282213f032b3dfe10cf7c461083c26b474f09f0f.camel@redhat.com>
References: <cover.1631191763.git.jani.nikula@intel.com>
 <649051cb896821147feee91aab1f2abc523c1353.1631191763.git.jani.nikula@intel.com>
 <282213f032b3dfe10cf7c461083c26b474f09f0f.camel@redhat.com>
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

…whoops, that was supposed to be:

Reviewed-by: Lyude Paul <lyude@redhat.com>

On Thu, 2021-09-09 at 12:18 -0400, Lyude Paul wrote:
> I thought I remembered an issue with this but looked up the previous emails,
> and it looks like that this change actually should be safe!
> 
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> 
> On Thu, 2021-09-09 at 15:51 +0300, Jani Nikula wrote:
> > Extend the use of extended receiver cap at 0x2200 to cover
> > MAIN_LINK_CHANNEL_CODING_CAP in 0x2206, in case an implementation hides
> > the DP 2.0 128b/132b channel encoding cap.
> > 
> > v2: Extend to DP_RECEIVER_CAP_SIZE (Ville)
> > 
> > Cc: Lyude Paul <lyude@redhat.com>
> > Cc: dri-devel@lists.freedesktop.org
> > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > ---
> >  drivers/gpu/drm/drm_dp_helper.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/drm_dp_helper.c
> > b/drivers/gpu/drm/drm_dp_helper.c
> > index 9b2a2961fca8..2e74b02ed96b 100644
> > --- a/drivers/gpu/drm/drm_dp_helper.c
> > +++ b/drivers/gpu/drm/drm_dp_helper.c
> > @@ -608,7 +608,7 @@ static u8 drm_dp_downstream_port_count(const u8
> > dpcd[DP_RECEIVER_CAP_SIZE])
> >  static int drm_dp_read_extended_dpcd_caps(struct drm_dp_aux *aux,
> >                                           u8 dpcd[DP_RECEIVER_CAP_SIZE])
> >  {
> > -       u8 dpcd_ext[6];
> > +       u8 dpcd_ext[DP_RECEIVER_CAP_SIZE];
> >         int ret;
> >  
> >         /*
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

