Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FB328C54C
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 01:39:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86CA36E856;
	Mon, 12 Oct 2020 23:39:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE2A86E857
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 23:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1602545956;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rW0rq42E0Ia7pA/3O1pSHV86DfoT5jFkZR8FD7wpIhQ=;
 b=FjhfLqUU90o5Z5jPNA+2M0yrTeLW6/utZC6+EbmFxusn2VMGXqCEYyCMv68VjXFtAKEE7t
 DJ8rTYFAzNJnLtADKuGDyZHUX2zCx4Cyp77Xbq4dD7fbqOcB3ig7845sP7oqI+x3GBJdUK
 9Drdu6I1UN4qZ3t2u7mxaNfUlEP9AFc=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-540-NOsgj3HgNwi_rVXlhiWZ5Q-1; Mon, 12 Oct 2020 19:39:14 -0400
X-MC-Unique: NOsgj3HgNwi_rVXlhiWZ5Q-1
Received: by mail-qk1-f199.google.com with SMTP id m126so8620978qkd.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 16:39:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=rW0rq42E0Ia7pA/3O1pSHV86DfoT5jFkZR8FD7wpIhQ=;
 b=lznIwp8cvlRGhLFwroB2Nj+UgL/otiqO4x6qa1XgtC7vvt/LWgwvOJXw9r19N6dRga
 r6c2VHYx9pwZq+cbpeSG+bMZNt3i41NKhq4b/lH6rHKw6bfHE2JwLhrJiewIoqlj7JIH
 ezyvpo3u9IKSXXW8AMt+9JlDw86a9jj2m7RBQbgXoZs8KfXFmXZZZ0/HKTunYSFmSxTP
 qTAWZLFn1eY3Szr2rbeTxMtN+x5PeKL4zgu938jWnE4hiit83MuKoAdhWPMYmN18+v1S
 E9SsWkMPaJ5A4+7XaLFDqk6D9lBTsUpLFZlWhMBU7fq6xnBVPftDDFqgx4faJSq2I9/D
 b7Cw==
X-Gm-Message-State: AOAM532D4JSTLgCxYHvyxo4g8q8FlMOiGb3LUDRbVspm2vjCN25FRa/E
 1jWcyEgfrmovsjtLalwtF/WLlC9874vdVybwjL5xxn5vRyTsSVSeVkXEC6dG+j+CXZ9gE6Mlmf5
 K/LbjaTYqTFNzUtmwHTXjl+evEMLL
X-Received: by 2002:a05:620a:4:: with SMTP id j4mr8855253qki.164.1602545954411; 
 Mon, 12 Oct 2020 16:39:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyPc5P35iA6gXgoVAJSgh/p8EZmd1mF8MJWKHd6dMdvNW16yF9VfLRK/jtKJ+he966MNK0pKA==
X-Received: by 2002:a05:620a:4:: with SMTP id j4mr8855235qki.164.1602545954156; 
 Mon, 12 Oct 2020 16:39:14 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id g5sm13323920qtx.43.2020.10.12.16.39.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Oct 2020 16:39:13 -0700 (PDT)
Message-ID: <3a89934f69387ddf654745e2c78bbb8362bbc4b4.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Aaron Ma <aaron.ma@canonical.com>, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 mapengyu@gmail.com, daniel@ffwll.ch, airlied@linux.ie, tzimmermann@suse.de,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 rodrigo.vivi@intel.com,  joonas.lahtinen@linux.intel.com,
 jani.nikula@linux.intel.com,  ville.syrjala@linux.intel.com
Date: Mon, 12 Oct 2020 19:39:11 -0400
In-Reply-To: <20201009085750.88490-1-aaron.ma@canonical.com>
References: <20201009085750.88490-1-aaron.ma@canonical.com>
Organization: Red Hat
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dpcd_bl: uncheck PWM_PIN_CAP
 when detect eDP backlight capabilities
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

Completely zoned out on Ccing these patches to stable before submitting them,
but once they hit the mainline kernel you should be able to ask Greg to backport
them if you need. Anyway, pushed to drm-intel-next-queued. Thanks for the
patches!

On Fri, 2020-10-09 at 16:57 +0800, Aaron Ma wrote:
> BOE panel with ID 2270 claims both PWM_PIN_CAP and AUX_SET_CAP backlight
> control bits, but default chip backlight failed to control brightness.
> 
> Check AUX_SET_CAP and proceed to check quirks or VBT backlight type.
> DPCD can control the brightness of this pannel.
> 
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index acbd7eb66cbe..308b14159b7c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -334,8 +334,7 @@ intel_dp_aux_display_control_capable(struct
> intel_connector *connector)
>  	 * the panel can support backlight control over the aux channel
>  	 */
>  	if (intel_dp->edp_dpcd[1] & DP_EDP_TCON_BACKLIGHT_ADJUSTMENT_CAP &&
> -	    (intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP) &&
> -	    !(intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_PWM_PIN_CAP))
> {
> +	    (intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP)) {
>  		drm_dbg_kms(&i915->drm, "AUX Backlight Control Supported!\n");
>  		return true;
>  	}
-- 
Sincerely,
      Lyude Paul (she/her)
      Software Engineer at Red Hat

Note: I deal with a lot of emails and have a lot of bugs on my plate. If you've
asked me a question, are waiting for a review/merge on a patch, etc. and I
haven't responded in a while, please feel free to send me another email to check
on my status. I don't bite!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
