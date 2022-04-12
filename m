Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 339924FE77A
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Apr 2022 19:51:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7231210E1B9;
	Tue, 12 Apr 2022 17:51:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43DE610E1B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Apr 2022 17:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1649785859;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aLmXtgCfyjObQjREncpEiUkEq3uJRv0QUyAmcFClxfo=;
 b=WHmOILqfgbhVOEZ6XEY9hdoeqdZbwRj5fliE2gkgOG5GCUDUiZby8/xDFcRobQdGEH0/4f
 ivNnV3A7DbzhCFFlU4WGDE56ImiwmbjWM7LgGKFJgRkFG9TqNg3yPx5+LOmX3fWzwp98GF
 ALmhg1eM+EI3pyLPGQBgs6z1McooVV0=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-572-qGQNY-_7Mnife8WKBTBLFA-1; Tue, 12 Apr 2022 13:50:58 -0400
X-MC-Unique: qGQNY-_7Mnife8WKBTBLFA-1
Received: by mail-qk1-f200.google.com with SMTP id
 h8-20020a05620a244800b00699fb28d5e4so10123877qkn.22
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Apr 2022 10:50:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=aLmXtgCfyjObQjREncpEiUkEq3uJRv0QUyAmcFClxfo=;
 b=YBLCIPS5dN5jVELWvQvzC39ORAUWcq6bD8YffIrVkC20Eaz6dHcl+H+XvJHY6MzvDQ
 zOdqxgFe2/tXUtSzmoFGH7e7crC4aUkYiNS0QX4/X2pilwd7RW+rnx6SqBtHCaud70aA
 Edqdde9EnAxBLPnNJeq0JFR/gkXC4dYjScV+EsdkZCcThX/ybBudYbNEC5VYLcyI1tPj
 ZJO11KXEYsIa3zOURlVoh/t+5XRT2gvcmtJ+TiZvUMc315bmutLjJvHymbv9ja6FSDD5
 4G6kcj7SYFJFEE3eSpJQgrIOHjy/uWZTAsL1gmG9lB0tM89a4XMThFYVMbYPMfwRuxFZ
 gv6w==
X-Gm-Message-State: AOAM530wPTJbwQTeNS+Qfy2yHoqDzJ4dqtsNqwO11CgTmi4J1fSKuEJU
 opLqGfWdsFM/sffzemIu3cgBMG41hoHt6tRuTQ60HeexGb7Lhp49SZJouSSJozxX7BfYUlmjXWJ
 pIFYEj0Dkh0IM6uU2YRNUsmQXSvZF
X-Received: by 2002:a05:620a:f0d:b0:67e:1961:b061 with SMTP id
 v13-20020a05620a0f0d00b0067e1961b061mr4107746qkl.82.1649785857593; 
 Tue, 12 Apr 2022 10:50:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxZVaa9EbR++wETbyfvZ6XHzqN2Rc8qrnd2IuCUodg6MQcWehL5vI/A0iLgh/oshAWEHsCorw==
X-Received: by 2002:a05:620a:f0d:b0:67e:1961:b061 with SMTP id
 v13-20020a05620a0f0d00b0067e1961b061mr4107729qkl.82.1649785857297; 
 Tue, 12 Apr 2022 10:50:57 -0700 (PDT)
Received: from [192.168.8.138] (pool-71-126-244-162.bstnma.fios.verizon.net.
 [71.126.244.162]) by smtp.gmail.com with ESMTPSA id
 81-20020a370654000000b0069c0319fdadsm5880240qkg.12.2022.04.12.10.50.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Apr 2022 10:50:56 -0700 (PDT)
Message-ID: <5294707cfceb018778f7ff1164f88581acb08015.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jouni =?ISO-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Tue, 12 Apr 2022 13:50:55 -0400
In-Reply-To: <20220412052542.681419-1-jouni.hogander@intel.com>
References: <20220412052542.681419-1-jouni.hogander@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check EDID before dpcd for
 possible HDR aux bl support
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Filippo Falezza <filippo.falezza@outlook.it>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Tue, 2022-04-12 at 08:25 +0300, Jouni Högander wrote:
> We have now seen panel (XMG Core 15 e21 laptop) avertizing support
> for Intel proprietary eDP backlight control via DPCD registers, but
> actually working only with legacy pwm control.
> 
> This patch adds panel EDID check for possible HDR static metadata and
> does detection from DPCD registers only if this data block exists.
> 
> Fixes: 4a8d79901d5b ("drm/i915/dp: Enable Intel's HDR backlight interface
> (only SDR for now)")
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5284
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Tested-by: Filippo Falezza <filippo.falezza@outlook.it>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_aux_backlight.c   | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 97cf3cac0105..f69e185b58c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -108,6 +108,19 @@ intel_dp_aux_supports_hdr_backlight(struct
> intel_connector *connector)
>         int ret;
>         u8 tcon_cap[4];
>  
> +       /*
> +        * If we don't have HDR static metadata there is no way to
> +        * runtime detect used range for nits based control. For now
> +        * do not use Intel proprietary eDP backlight control if we
> +        * don't have this data in panel EDID. In case we find panel
> +        * which supports only nits based control, but doesn't provide
> +        * HDR static metadata we need to start maintaining table of
> +        * ranges for such panels.
> +        */
> +       if (!(connector->base.hdr_sink_metadata.hdmi_type1.metadata_type &
> +             BIT(HDMI_STATIC_METADATA_TYPE1)))
> +               return false;

The block used for this is actually for HDMI?? How bizarre…

Anyway yeah - patch looks good to me, but I think we should print a debugging
message of some sort when we determine that there's no HDR backlight because
of the EDID - along with printing instructions for how the user can override
it if we've made the wrong choice along with reporting a bug. Also - we should
have the

Cc: stable@vger.kernel.org

tag from dim added here using `dim fixes $commit`.

With that fixed:

Reviewed-by: Lyude Paul <lyude@redhat.com>

> +
>         intel_dp_wait_source_oui(intel_dp);
>  
>         ret = drm_dp_dpcd_read(aux, INTEL_EDP_HDR_TCON_CAP0, tcon_cap,
> sizeof(tcon_cap));

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

