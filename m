Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8354A2A275A
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 10:49:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D66E96E45E;
	Mon,  2 Nov 2020 09:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45A646E45E
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 09:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1604310544;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hfM4Zzan+x0R46nTZLf+q69ew7JwPzPcD1lP3NWLpjU=;
 b=DoC+ZxlgRfN1T0jPltNRr6p5C48tRYgZGaGo7XJFnUwJ3sBEMCqj7rHU1gNBh+cNVOoHZE
 KSaOH9TVqmZgjIiX26Ugg5ZEpvn7aOwQ+W3Kpm2P1GkgYpqql+fpGiiTYaSHW6ivkn9007
 pmENXuksV0dtT3PGyMW8/kuatu5OgB4=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-292-SDinXivwPsG50a8rBCR5zw-1; Mon, 02 Nov 2020 04:48:57 -0500
X-MC-Unique: SDinXivwPsG50a8rBCR5zw-1
Received: by mail-ej1-f71.google.com with SMTP id d13so4066288ejz.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Nov 2020 01:48:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hfM4Zzan+x0R46nTZLf+q69ew7JwPzPcD1lP3NWLpjU=;
 b=t0KLsdM7o1G062k6tH9WGF4LuZ5LhCu/EH5AaakaO4WRsD3SVJkcdur+WZNc+3IWx0
 gtPHl2RmWu/cjNIdOSHcTuTSDVIGO8xPEcwfiVJrYzgD4J2U2nkbt+StxJDpFIcgSBh5
 TR5wUTHu4n9MutssgLRY3Vn/pzuPLdvIUMV5f1i/NI5PsS0yaWXbb+dw+6xWFJhZh9Kt
 olGERBSHoz/b6xpUjToQXHlMU7OoUk2ndbWId8ulSTkjro5eSCSph/L6xOahnxOrCfBZ
 3GLA1gsfYRUIakvu0AAmQmZSpFV8T99X7DkLP7Pu/zNzai9FtxMPqGIK35uCjJWNbZHR
 Y3Mw==
X-Gm-Message-State: AOAM531nh6M5G2O4foRjuzwpHNZCZ0X2zzEbi9DAuNqN2U4z3gK7WxDu
 YZQM2GS5z3m74GFDN80BYfwLWOCbky+uc5m9UD8a4F944UoeR7Owf9Z4Oqfd5HpQDHEoQIqFDiU
 p6xg6l640aeMXGa1eSPS+mssN+1Uu
X-Received: by 2002:a17:906:2a4b:: with SMTP id
 k11mr11135651eje.467.1604310536221; 
 Mon, 02 Nov 2020 01:48:56 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz7RFiOGUm2r6Mhjc/4KRL7vF+d7MQ0G5w844evvLmtpM/diNRW0cpeKgEOU+l3cRCEwc0Mwg==
X-Received: by 2002:a17:906:2a4b:: with SMTP id
 k11mr11135630eje.467.1604310535972; 
 Mon, 02 Nov 2020 01:48:55 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-6c10-fbf3-14c4-884c.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:6c10:fbf3:14c4:884c])
 by smtp.gmail.com with ESMTPSA id r9sm10088948edt.3.2020.11.02.01.48.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Nov 2020 01:48:55 -0800 (PST)
To: rwright@hpe.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com, airlied@linux.ie,
 daniel@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com,
 wambui.karugax@gmail.com, chris@chris-wilson.co.uk, matthew.auld@intel.com,
 akeem.g.abodunrin@intel.com, prathap.kumar.valsan@intel.com,
 mika.kuoppala@linux.intel.com
References: <20201101174132.10513-1-rwright@hpe.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <8cdf0dd0-2a2f-bae9-71ea-89a88fdb14a5@redhat.com>
Date: Mon, 2 Nov 2020 10:48:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201101174132.10513-1-rwright@hpe.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 0/3] Reduce context clear batch size to
 avoid gpu hang
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 11/1/20 6:41 PM, rwright@hpe.com wrote:
> From: Randy Wright <rwright@hpe.com>
> 
> For several months, I've been experiencing GPU hangs when  starting
> Cinnamon on an HP Pavilion Mini 300-020 if I try to run an upstream
> kernel.  I reported this recently in
> https://gitlab.freedesktop.org/drm/intel/-/issues/2413 where I have
> attached the requested evidence including the state collected from
> /sys/class/drm/card0/error and debug output from dmesg.
> 
> I ran a bisect to find the problem, which indicates this is the
> troublesome commit:
> 
>   [47f8253d2b8947d79fd3196bf96c1959c0f25f20] drm/i915/gen7: Clear all EU/L3 residual contexts
> 
> The nature of that commit suggested to me that reducing the
> batch size used in the context clear operation might help this
> relatively low-powered system to avoid the hang.... and it did!
> I simply forced this system to take the smaller batch length that is
> already used for non-Haswell systems.
> 
> The first two versions of this patch were posted as RFC
> patches to the Intel-gfx list, implementing the same
> algorithmic change in function batch_get_defaults,
> but without employing a properly constructed quirk.
> 
> I've now cleaned up the patch to employ a new QUIRK_RENDERCLEAR_REDUCED.
> The quirk is presently set only for the aforementioned HP Pavilion Mini
> 300-020.  The patch now touches three files to define the quirk, set it,
> and then check for it in function batch_get_defaults.

Note I'm not really an i915 dev.

With that said I do wonder if we should not use the
reduced batch size in a lot more cases, the machine in question uses a
3558U CPU if the iGPU of that CPU has this issue, then I would expect
pretty much all Haswell U models (at a minimum) to have this issue.

So solving this with a quirk for just the HP Pavilion Mini 300-020
seems wrong to me. I think we need a more generic way of enabling
the reduced batch size. I even wonder if we should not simply use
it everywhere. Since you do have a proper Haswell CPU, I guess
it being an U model makes the hang easier to trigger, but I suspect
the higher TPD ones may also still be susceptible ...

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
