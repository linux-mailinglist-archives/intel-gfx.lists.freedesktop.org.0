Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE70847BE1E
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Dec 2021 11:25:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56B8010F24E;
	Tue, 21 Dec 2021 10:25:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 850F010F255
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Dec 2021 10:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640082328;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7koks1YTi62NtDHa92xGB2EsApE8x8jCmYwd2DAv6j4=;
 b=L+9TW9w5Q0UMctQdilgsNWtUZoPkl1ibCtXo3jvqZuI4NKN0SxqJg5BT5sI8CS1CI+50jj
 UWU35cGotor9q3tbCMrxa+XKG31kxc9cuxlh33hIHTlUH2Z6RAKQR1+uow3+7XpRlNU0kv
 LnGsLn2C91Pqa6EnmnPcftutnFekecQ=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-414-IKTuhqRzO8-AnHyPVqMJZA-1; Tue, 21 Dec 2021 05:25:25 -0500
X-MC-Unique: IKTuhqRzO8-AnHyPVqMJZA-1
Received: by mail-ed1-f70.google.com with SMTP id
 dm10-20020a05640222ca00b003f808b5aa18so10097211edb.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Dec 2021 02:25:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=7koks1YTi62NtDHa92xGB2EsApE8x8jCmYwd2DAv6j4=;
 b=jD/VQhpzA4SfO8la6dMmTFiB56n9ts0QG+OPSMdQjhMdg8es6ydebZiPkj0sRIG3uy
 I4BXR9QqfyAIZF5Os3PGvnFL2XH4FcUGex8sA+Zg0a65xnWQlPYTqxWFr95/bunS6WeB
 /nmU37t1CD7V7seaSDgEx1nT+oBMjXA/2eNDnHPOexx9Ml4YyfgZQ3bzoBejyZ31cpfZ
 isdF1tWOfgi7oeAk8+W35KbW1/kqztuILoPrtZcmYzpQRZItduijqMyIDXgKItUnZqMx
 eJmWRfWFF3R9Q3PJivyfkL/lDwxeBdUs3hE5E+JzHPB8ALGj+G+0cd1FolIqyEgqBf2d
 EhkQ==
X-Gm-Message-State: AOAM530WYNEvCuBdP0cIMplaUFt+tSos1IomLPZ6yAP9bulbFqwETCjG
 AA4emgBSQjK6ibWkNM8a69AigirZS6nL9UEYOaI1XHxKgUNqWO/QxpprqS4R/O4lUcu9lBHMPbF
 v2IMnN6omJ+3N0b5OsrVl1UfyvH0xTuEs3frWMQv6BE3jjqUJ/cy208pydY7MGgk8iKu2kxhRsE
 pxfEII
X-Received: by 2002:aa7:dd47:: with SMTP id o7mr2558496edw.34.1640082323123;
 Tue, 21 Dec 2021 02:25:23 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxG49Xb8xPqcaM/xfkk2fkFBtXqdp5wo718+xyzT/RPdMUZew2ttFivEZr2PrRTWFAAXCBFQw==
X-Received: by 2002:aa7:dd47:: with SMTP id o7mr2558483edw.34.1640082322824;
 Tue, 21 Dec 2021 02:25:22 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1?
 (2001-1c00-0c1e-bf00-1db8-22d3-1bc9-8ca1.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1])
 by smtp.gmail.com with ESMTPSA id 6sm6130985ejj.164.2021.12.21.02.25.22
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Dec 2021 02:25:22 -0800 (PST)
Message-ID: <555b9730-fef0-3b8c-d882-790f555ef228@redhat.com>
Date: Tue, 21 Dec 2021 11:25:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: intel-gfx@lists.freedesktop.org
References: <20211220161343.21975-1-hdegoede@redhat.com>
 <164003029974.24544.16432150401185061757@emeril.freedesktop.org>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <164003029974.24544.16432150401185061757@emeril.freedesktop.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/vlv=5Fdsi=3A_Add_DMI_quirk_for_wrong_panel_modeline_in_BI?=
 =?utf-8?q?OS_on_Asus_TF103C?=
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

On 12/20/21 20:58, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/vlv_dsi: Add DMI quirk for wrong panel modeline in BIOS on Asus TF103C
> *URL:*	https://patchwork.freedesktop.org/series/98239/ <https://patchwork.freedesktop.org/series/98239/>
> *State:*	failure
> *Details:*	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/index.html <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11016_full -> Patchwork_21879_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_21879_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21879_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (18 -> 18)
> 
> No changes in participating hosts
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in Patchwork_21879_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@i915_suspend@fence-restore-tiled2untiled:
> 
>       o shard-skl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl1/igt@i915_suspend@fence-restore-tiled2untiled.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-skl6/igt@i915_suspend@fence-restore-tiled2untiled.html>
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
> 
>       o shard-apl: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html>

Since this patch does not do anything unless it runs on the system where the DMI
match matches, these are both false positives.

Regards,

Hans

