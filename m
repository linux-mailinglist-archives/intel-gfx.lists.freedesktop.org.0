Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6A91A1D1D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 10:12:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE1836E9A8;
	Wed,  8 Apr 2020 08:12:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4529D6E9A8
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 08:12:26 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id w10so6739223wrm.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2020 01:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=yc47YE4ueMkVDQ89kOgDt276oSCTyZAoQ4q74tc4ZqY=;
 b=e/nIERj/et6yh7MsSLsvruRVSBiUXw6NLupVpiomGqK/r14SLLtHTdR2/Akh9VSEuZ
 qaCLxrGVRQQLalaFG/kSWhzoS67I5RNgwHkQ7zFmgNdmjXrupkTE+Z+UT/OSgLrxKPcQ
 volAzrPeo2v+R10Epme8bilTU+aDkl+CWpTekdEKq/NatzMrgTOnRN0/WbsFma19+2df
 2Ik8qfSqPfnlh6mHGQT+iRUnQBHmeP7IZpymlFAnNk2AnERKki4hVd9/yCkPxjKP5eEh
 4cITGeNVIIUN2qA7mgr7uFWkn0+It3mYGYCleuT8LKtp5Dx79uFwHVruB/DEghF2tG2W
 Adbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=yc47YE4ueMkVDQ89kOgDt276oSCTyZAoQ4q74tc4ZqY=;
 b=gehrsEFFVg8bDInUXjKTU7vkfqN8imGQaZJKEF0cCJqK6mXroZKbu+B68D0/pA+62m
 FCY16wjLK6d2Z0qhiMBuNMYVnjg5SinJXPo3U8FKwQ5aillRXOZOyQo1+Avgatw/2svp
 xOulSFUnCogubwBNjRNwqTmLZ0YwUztQzjo0sXq6gAxHwy3Nju0pL0BY7TBK64xVse0z
 8VtXSfEjrAvvlnZrHPebkQRVx5ksoAvAcLWwnN3lfQHdROnjNwJywiP/1/fRYSfXyqMA
 7xor8QxhguYdT1LiZAB2ezmgdvkhwhHSaGJH3wXHXfUwLbJjnrlhixAX2cJace3BmwUE
 K71w==
X-Gm-Message-State: AGi0PuZvmWvteI2Zxwqo5VaiC0UK2kmCxO9GhhH98tToKUwvywLnV5NW
 QU1M+fjSnvbdS4f5GjMC3MU=
X-Google-Smtp-Source: APiQypIjU/5J4/WNxbNry6PP2Ts1GewaXCJZTSKpbQT72kYaNcktJykrhmnj9T4MMY3deMyoRuQfog==
X-Received: by 2002:adf:f4cc:: with SMTP id h12mr6926613wrp.171.1586333544870; 
 Wed, 08 Apr 2020 01:12:24 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id j10sm17525865wru.85.2020.04.08.01.12.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 01:12:24 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Wed, 8 Apr 2020 11:12:21 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20200402114819.17232-9-jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2004081110480.20922@wambui>
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-9-jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 09/17] drm/i915/switcheroo: use struct
 drm_device based logging
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On Thu, 2 Apr 2020, Jani Nikula wrote:

> Convert all the pr_* logging macros to the struct drm_device based
> macros to provide device specific logging.
>
> No functional changes.
>
> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Wambui Karuga <wambui.karugax@gmail.com>

> ---
> drivers/gpu/drm/i915/i915_switcheroo.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_switcheroo.c b/drivers/gpu/drm/i915/i915_switcheroo.c
> index ed69b5d4a375..b3a24eac21f1 100644
> --- a/drivers/gpu/drm/i915/i915_switcheroo.c
> +++ b/drivers/gpu/drm/i915/i915_switcheroo.c
> @@ -20,14 +20,14 @@ static void i915_switcheroo_set_state(struct pci_dev *pdev,
> 	}
>
> 	if (state == VGA_SWITCHEROO_ON) {
> -		pr_info("switched on\n");
> +		drm_info(&i915->drm, "switched on\n");
> 		i915->drm.switch_power_state = DRM_SWITCH_POWER_CHANGING;
> 		/* i915 resume handler doesn't set to D0 */
> 		pci_set_power_state(pdev, PCI_D0);
> 		i915_resume_switcheroo(i915);
> 		i915->drm.switch_power_state = DRM_SWITCH_POWER_ON;
> 	} else {
> -		pr_info("switched off\n");
> +		drm_info(&i915->drm, "switched off\n");
> 		i915->drm.switch_power_state = DRM_SWITCH_POWER_CHANGING;
> 		i915_suspend_switcheroo(i915, pmm);
> 		i915->drm.switch_power_state = DRM_SWITCH_POWER_OFF;
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
