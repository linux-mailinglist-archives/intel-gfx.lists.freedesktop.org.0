Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D0F3F0C1F
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 21:54:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4AAE6E932;
	Wed, 18 Aug 2021 19:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 918196E932
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 19:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629316474;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RWuqWxoooixx1ZwrMSvcRj/ZwLP+Bv0bjDXPooc4kEU=;
 b=Rc/M3+qlqCd09OvNCXnwqd6z66WLYIFPOMOWcuGWU82rARfOmqi+VK92jmCQExAGOSDte/
 /igm+UHqC/DDh4IeveQ9A4c0e2k/yGVlGq6ryWv+HbVo0XbdRJzkLTaEsVDX4CJEMJ0U7E
 2CSKKBXWYMXfiw/InG7JwQZLed6r0kI=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-586-bmNAvGJoNt-IwnTBbZLhuw-1; Wed, 18 Aug 2021 15:54:31 -0400
X-MC-Unique: bmNAvGJoNt-IwnTBbZLhuw-1
Received: by mail-ed1-f72.google.com with SMTP id
 bx23-20020a0564020b5700b003bf2eb11718so1587637edb.20
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 12:54:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RWuqWxoooixx1ZwrMSvcRj/ZwLP+Bv0bjDXPooc4kEU=;
 b=qGN4xBkdM1AV9oKyYXyjByt0aKl86ZlBT/2urBmkqavpcLjPeNzGizApDrGQzYRp0K
 A3LSDppuac3yMWpZu8GcwhIE0EoWAKK52q85WCtLbk2myX09Tc7Cq0+QO4u7i1xq7J9f
 1uh9Gy6nxuOaU8bodQYnnhfeyV32Pa+98mg+5x3bRwMw1JhXeX3HP8B23UnBktlGwRVr
 XsrYas4cMvMHgbHie4hSNnTKq2txonGzA+pG3569ZAe44Yx4B2DbgIP1QkeIBDDV0O9O
 q4FsoP2F01gY6nT8JY3Bkfh1fJ4iyIgRgVW+T+0U4UCsdNxSf78Lg30j1umzjBlnaz58
 KaVw==
X-Gm-Message-State: AOAM532qFBojmjfngZ3QRJ9turI8sJg8rZcSoV6XiRBU4Ty/wCiYI3dW
 hBC1sfprnHScnWrkaBVEVWThfn8zPWuSJ9qvW/CGtmzwrZ7aiJi/X1R81XZm3oUNrpNxTjZJfiD
 nAiVIk5aC4FhdSkrvcTh8VXzc+vZsy9h/gUysO6/EvTb9PfCN2VQo7p1vb8kI7qbr5xMiNfSYGk
 YV3v4w
X-Received: by 2002:a17:906:e8d:: with SMTP id
 p13mr11624411ejf.85.1629316470194; 
 Wed, 18 Aug 2021 12:54:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzJHcNRzj1x9Ed9blyOh5KzlFKAvza9KBrs3MBwFGfq3nkInTIAhQyD2wlKj1UdeqPC39fAvw==
X-Received: by 2002:a17:906:e8d:: with SMTP id
 p13mr11624393ejf.85.1629316469785; 
 Wed, 18 Aug 2021 12:54:29 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id s7sm555329edu.23.2021.08.18.12.54.29
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Aug 2021 12:54:29 -0700 (PDT)
To: intel-gfx@lists.freedesktop.org
References: <20210817215201.795062-1-hdegoede@redhat.com>
 <162924530163.16675.12698639172189836634@emeril.freedesktop.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <b1f7c3b2-2dd7-791b-bcaa-615f3d55bdf5@redhat.com>
Date: Wed, 18 Aug 2021 21:54:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <162924530163.16675.12698639172189836634@emeril.freedesktop.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?_+_usb-type-c=3A_Add_support_for_out-of-band_hotplug_notificati?=
 =?utf-8?q?on_=28v4_resend=29?=
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

On 8/18/21 2:08 AM, Patchwork wrote:
> *Patch Details*
> *Series:*	drm + usb-type-c: Add support for out-of-band hotplug notification (v4 resend)
> *URL:*	https://patchwork.freedesktop.org/series/93762/ <https://patchwork.freedesktop.org/series/93762/>
> *State:*	failure
> *Details:*	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20838/index.html <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20838/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_10491_full -> Patchwork_20838_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_20838_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_20838_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in Patchwork_20838_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@i915_pm_backlight@bad-brightness:
> 
>       o shard-iclb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/shard-iclb4/igt@i915_pm_backlight@bad-brightness.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20838/shard-iclb4/igt@i915_pm_backlight@bad-brightness.html>
>   *
> 
>     igt@sysfs_heartbeat_interval@mixed@vcs0:
> 
>       o shard-skl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/shard-skl2/igt@sysfs_heartbeat_interval@mixed@vcs0.html> -> WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20838/shard-skl9/igt@sysfs_heartbeat_interval@mixed@vcs0.html>


I believe that these both are false-positives. This patch-set has little to
do with either test; and this is a rebased (with no changes) resend of
a version which did pass CI before.

Regards,

Hans

