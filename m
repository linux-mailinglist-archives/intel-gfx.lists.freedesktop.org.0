Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE75537644B
	for <lists+intel-gfx@lfdr.de>; Fri,  7 May 2021 13:09:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1410F6E047;
	Fri,  7 May 2021 11:09:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FF8D6E047
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 May 2021 11:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620385767;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qpFav+pE6OmCt6uVPul9MZQv61xm2KuKhiNP1DZINAU=;
 b=IgT+ZWQtK3VPHnyjX23Jxyr3fVPFyVVjw0OlYyuc0MQgveGQkooeVQCqVvqjzaxQqp2kTw
 QPJRfkzFdOS414sBuwWEzgN1+yeHWO+aryodvFpAVUJjrIW1gjEZK/WnsJz10JU8rJaiK5
 wyWobLSAVVlCBAHRsq5rsLBxeF94QhQ=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-521-cEoJjMLSODip6V8e5LZFzw-1; Fri, 07 May 2021 07:09:22 -0400
X-MC-Unique: cEoJjMLSODip6V8e5LZFzw-1
Received: by mail-ed1-f70.google.com with SMTP id
 g7-20020aa7c5870000b02903888f809d62so4270291edq.23
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 May 2021 04:09:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qpFav+pE6OmCt6uVPul9MZQv61xm2KuKhiNP1DZINAU=;
 b=ixRcYbk1hfTGQhEshL7hvDfHb1onF6f2R7wN28ioI4jvZ0yJz0J9khxW4AZO6s9aQD
 YSq2O8g2hl5n3OAp1+u/Z8ey4sZmcVq34PZKVTP2gZeLtHAInMR0xN79gbL7Nw7hoBmC
 SoUUmKh9SlyYHp9fQUX9XLJHf/1oySkhsAo4ILcy3DwMlC4VXauS/WHY60C3vGWI5Fqv
 FMwbzOgo4GlUCYDVVPFbI/RB7w9mPY+U06hRDVUpOupG8nJWFmF3KW/i3U8HTEQKMn7I
 w5xRx68HZCaCYhfPpDjxjqVU8rtA3JHWHe+Vqtz+qXwLWnj5aU0segpr3rWlWhyGOYBE
 LMKw==
X-Gm-Message-State: AOAM5312Np9JGrYbaJTS3s3Rto2D27SJx0bAE9y979ZrK60pQhlAxbjF
 nA5bp17vo4mos5z5vhTtYJawJpTKwbiK9dlBqu9vbAF+ThP61LSbweHZroyK1M2yjFq9gvLJcvo
 pbM9QsCWJYARL3ZjuRPj6BaYTBhRAj4utsgwa/AHR2oTRixOq5Od+a+g3zZdFnkYQxl/QpqIDyI
 qfSKDp
X-Received: by 2002:a17:906:691:: with SMTP id
 u17mr9128001ejb.337.1620385761322; 
 Fri, 07 May 2021 04:09:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxdMTsCjb0WSHQHz/GYhty2Px0zzMuUytsmTPbroD1nwzIgSlMKbhzHsl4XD1qIPmB8joFe4w==
X-Received: by 2002:a17:906:691:: with SMTP id
 u17mr9127979ejb.337.1620385761101; 
 Fri, 07 May 2021 04:09:21 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id q10sm3895021eds.36.2021.05.07.04.09.20
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 07 May 2021 04:09:20 -0700 (PDT)
To: intel-gfx@lists.freedesktop.org
References: <20210505162415.531876-1-hdegoede@redhat.com>
 <162031509542.15692.3870747553948271057@emeril.freedesktop.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <84dce7f8-bd93-6a51-9c40-b50b24744cde@redhat.com>
Date: Fri, 7 May 2021 13:09:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <162031509542.15692.3870747553948271057@emeril.freedesktop.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?_+_usb-type-c=3A_Add_support_for_out-of-band_hotplug_notificati?=
 =?utf-8?b?b24gKHJldjMp?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 5/6/21 5:31 PM, Patchwork wrote:
> *Patch Details*
> *Series:*	drm + usb-type-c: Add support for out-of-band hotplug notification (rev3)
> *URL:*	https://patchwork.freedesktop.org/series/89604/ <https://patchwork.freedesktop.org/series/89604/>
> *State:*	failure
> *Details:*	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20068/index.html <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20068/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_10049_full -> Patchwork_20068_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_20068_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_20068_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in Patchwork_20068_full:
> 
> 
>       Piglit changes
> 
> 
>         Possible regressions
> 
>   * shaders@glsl-fs-texturecube-2 (NEW):
>       o pig-skl-6260u: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20068/pig-skl-6260u/shaders@glsl-fs-texturecube-2.html> +4 similar issues

This seems to be another false-positive as mentioned already this series does
not touch any 3d rendering related code (it only touches modesetting code).

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
