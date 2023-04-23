Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BB66EBDCF
	for <lists+intel-gfx@lfdr.de>; Sun, 23 Apr 2023 09:56:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AA1D10E2C7;
	Sun, 23 Apr 2023 07:56:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD9B610E2C7
 for <intel-gfx@lists.freedesktop.org>; Sun, 23 Apr 2023 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1682236584;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iEPShwLPQf7zw+jBwCGOXqXM59T9hIR4r8mT20KgLe0=;
 b=LGgmxFuATfgcjYwn+2k3BnbsYUA2cUcMQyE1p/lBd3H5xi4yUASPGPoMuf6YicOpPRppI1
 zAgVqsTJyx0Dydyx3LAFFgmJhkdZ+dMDZCoiLZhf6iD+6cvDGLGkiiOBCcCW+E5YYhtHpC
 BVBTnD0rq/zXzkufY9fP6TJ9qLDpPZQ=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-526-Ku5IsH9FPdmbkahZbU3DYg-1; Sun, 23 Apr 2023 03:56:22 -0400
X-MC-Unique: Ku5IsH9FPdmbkahZbU3DYg-1
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-9534238ffa6so325862666b.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 23 Apr 2023 00:56:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682236581; x=1684828581;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=iEPShwLPQf7zw+jBwCGOXqXM59T9hIR4r8mT20KgLe0=;
 b=X67fj6uEhpLlfy2O8i5xS1YyUnOUhFWtFk7dZgr2muA3Ew84HcOfHpnBwwsLWySCf5
 MiQdNgy6fQbURqI0xu3rY/GLPP8DS6vAE+PQ7xLRXgh2jaozjx0kYIHO4oK6w5vPkzvM
 Uvq6VU0BYey3z897A8FCBhkXf4HvIyVK38b7+IX+xLznDQPykc6UP+/IijeRxurmGOXO
 NIvkatdyolv8bBHV9JywbV5xrJNZcoWAy7HBuGjwNAji8K5nDPIHaStsAU3QtbNovfhE
 BpyvVRjTstU9HMg4nO6lMwOUuBBvyLxwpnMPez+HbY35jtEhVH0SiDyng2fOfAq3dWIo
 7KQA==
X-Gm-Message-State: AAQBX9doF75sPxGlFki/lMUjUg3nsslQNIehBdDmm6rqatcRnon5+fyU
 AKHdMiGcIZzobvJj15sMgHO65CWwDq1NOggfHNinFMe7qMLcdWnF4zVL641TkmhGzwrmT+d25m+
 /GdIKjWQ1JQ10YWrnbs5RiuP9oxxthakrai5ypPCJ+FUEEurdSwnfeC6scgJY0wjmdA7akja80R
 9B/q4MWksOpMyp
X-Received: by 2002:a17:907:c12:b0:957:db05:a35d with SMTP id
 ga18-20020a1709070c1200b00957db05a35dmr4798004ejc.48.1682236581228; 
 Sun, 23 Apr 2023 00:56:21 -0700 (PDT)
X-Google-Smtp-Source: AKy350YdjTby8gIA0GlphhxqZuRTwioVi//jrgsNsIyyQ/TSNzD1lgAl+tfw/GeiiYWHdXpy4Nu2lA==
X-Received: by 2002:a17:907:c12:b0:957:db05:a35d with SMTP id
 ga18-20020a1709070c1200b00957db05a35dmr4797994ejc.48.1682236580879; 
 Sun, 23 Apr 2023 00:56:20 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 dn1-20020a17090794c100b00953381ea1b7sm4102129ejc.90.2023.04.23.00.56.19
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 23 Apr 2023 00:56:19 -0700 (PDT)
Message-ID: <7d847d26-952d-4952-9b26-1a6a24ce7c15@redhat.com>
Date: Sun, 23 Apr 2023 09:56:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: intel-gfx@lists.freedesktop.org
References: <20230422184359.56503-1-hdegoede@redhat.com>
 <168219561215.29285.11471499773136393519@emeril.freedesktop.org>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <168219561215.29285.11471499773136393519@emeril.freedesktop.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_Always_use_unconditional_msleep=28=29_for_the_pane?=
 =?utf-8?q?l=5Fon=5Fdelay?=
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

Hi,

On 4/22/23 22:33, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/dsi: Always use unconditional msleep() for the panel_on_delay
> *URL:*	https://patchwork.freedesktop.org/series/116858/ <https://patchwork.freedesktop.org/series/116858/>
> *State:*	failure
> *Details:*	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116858v1/index.html <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116858v1/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_13043_full -> Patchwork_116858v1_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_116858v1_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_116858v1_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (7 -> 7)
> 
> No changes in participating hosts
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in Patchwork_116858v1_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@gem_ppgtt@blt-vs-render-ctx0:
>       o shard-snb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13043/shard-snb6/igt@gem_ppgtt@blt-vs-render-ctx0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116858v1/shard-snb1/igt@gem_ppgtt@blt-vs-render-ctx0.html>

The only touched file is not used on snb, so this is a false positive.

Regards,

Hans



