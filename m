Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5811375121
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 10:53:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 138D089F63;
	Thu,  6 May 2021 08:53:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8BB289F63
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 May 2021 08:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620291217;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tLJujqCr2oCfihsIdM+/PINisIxOrtHhnzEnsEjH8Vc=;
 b=O9U94aA3FNgsJBf29eE6XUi3YT80K45+5K/UmMHsa2UkUDU1Ou5e3KiTWcUb8xNFHry/ra
 P8iPeoEwgPm0sin3saevjgXO4YtZmWJ7jpAmMYz8bhlzGZXVHzrWaVE59AtZn+tFTXA3Zl
 Q5ocoMA/jUPgzl3mVHmuQ9eigz9lzBg=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-139-jXvgS2ufOdCKoK2gl306hQ-1; Thu, 06 May 2021 04:53:34 -0400
X-MC-Unique: jXvgS2ufOdCKoK2gl306hQ-1
Received: by mail-ed1-f71.google.com with SMTP id
 d8-20020a0564020008b0290387d38e3ce0so2285348edu.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 06 May 2021 01:53:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tLJujqCr2oCfihsIdM+/PINisIxOrtHhnzEnsEjH8Vc=;
 b=EzqjiLvCc30Jbwz7mnYg3uhiSDgcLYmnD2nhUZf2Qa3EO/fNt148UVh6nUHR/bZv1R
 M2UQo1Ux7dfE4W01pOZEvL2fCmOAAPWyiN0E6Smku1zwv5NSfHQmi9RQ553DBXUZcDXU
 Rcvd8xSit9brg1i4XcNsHxfauJkSI0Etfv0Q2GGhvDBidWELearmR9t7Tuoej8vfHe+/
 vytGaupNR6XJxB7j7CG1kqnoJAlX781AqWayfrvuf4kLxWKCsS4FIl/jHofj58La3Dbk
 wLsOcBRJn9+INbOTKWKI6/VUmWKzpKefbaOVU98dmVscmK131doF+5VA3hb0omgjoNeB
 w2yA==
X-Gm-Message-State: AOAM530fh9y6EFb6ttJrKO75yT/BrkMg+anTpiEt/yGis8WZLslaLq6c
 bgE2JyT+/VUoZaauCmSpSoMbYekYXjJVOIZBtw+NCWTEyjmwwSlA1zzlQ6ys/HTA29zUdaMmuzC
 9WJi4YmhIH673oLuSTk9YlMFs991g5p7PlyfevCUHgPt952kzXVnb0dVuwCo8RBLLkKQCLjaUcC
 EcDd4l
X-Received: by 2002:a05:6402:4a:: with SMTP id
 f10mr3819319edu.85.1620291213478; 
 Thu, 06 May 2021 01:53:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxKOxyvTTJUzJJLW3Mk3NujzJOz1XPqHbftGBjw11EEyFefFYbz/pMRQvQNafbsXTwDjsXRAg==
X-Received: by 2002:a05:6402:4a:: with SMTP id
 f10mr3819300edu.85.1620291213281; 
 Thu, 06 May 2021 01:53:33 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id dk13sm1134000edb.34.2021.05.06.01.53.32
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 06 May 2021 01:53:32 -0700 (PDT)
To: intel-gfx@lists.freedesktop.org
References: <20210505162415.531876-1-hdegoede@redhat.com>
 <162024206908.25404.3483956842623674239@emeril.freedesktop.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <6d797ba8-a5cd-1d82-774d-64a8c83918b3@redhat.com>
Date: Thu, 6 May 2021 10:53:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <162024206908.25404.3483956842623674239@emeril.freedesktop.org>
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

On 5/5/21 9:14 PM, Patchwork wrote:
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
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@gem_exec_schedule@pi-ringfull@vecs0:
>       o shard-skl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10049/shard-skl4/igt@gem_exec_schedule@pi-ringfull@vecs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20068/shard-skl2/igt@gem_exec_schedule@pi-ringfull@vecs0.html>


I believe that this is a false-positive as this series does not touch any related
code (it only touches modesetting code).

> 
> 
>       Piglit changes
> 
> 
>         Possible regressions
> 
>   * shaders@glsl-fs-texturecube-2 (NEW):
>       o pig-skl-6260u: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20068/pig-skl-6260u/shaders@glsl-fs-texturecube-2.html> +4 similar issues

Idem.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
