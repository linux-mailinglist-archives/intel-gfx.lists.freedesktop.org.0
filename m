Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 168D26C4C6C
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 14:51:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9902E10E27A;
	Wed, 22 Mar 2023 13:51:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DB6C10E366
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 13:51:26 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id y4so73346740edo.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 06:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679493085;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=H/qbTIUYDrl/jCI9FJ5pap53u6zKwgJfsV3IJQstjts=;
 b=D6QYgwpJEp2bqzrnHKzRixeQljRdMJwQ46UHAcuBT0a+eV5QUk2eJHb5KYovVjJWia
 UAZI11/g1JnWTkHMYbdAKJO9eskvl0sJ6usTbXPGzx/yjdSwd0EM43GO9YmnFXC8jP3u
 +1OyqEd2HrBQT9a5VPNmEUITgskDzMW9McbQC+P5xfa80wySD91bA9qiriHHXxOQBXCB
 aoJ8h7mW8scjmdHF7hXR6rASk435TajrlKpBnuckB7MIpejwcFo9PKzbffYE6XtiYsZh
 t6on5T7hSju6jfI+6dDNPDJM2kc5oKVnjJprgG+ZoFOo6f95Ny/xb4YGc62zqgvY6Qco
 IdoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679493085;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=H/qbTIUYDrl/jCI9FJ5pap53u6zKwgJfsV3IJQstjts=;
 b=RzsUNM2KPhkH5XM993iobqZiJHGCdQo9mQErwQQZWNgaDhL39JO4lqtFM2ZPmJ1OYJ
 EnbJSHDuMC5YS7x/6xDoBEkSGZ5DHSQiTLqawx2yUJKp6v4FWPAHVsPpFcGUBQf1Ppm0
 zZhxpTMWCnV9ZD66qpNT0EkvZjHF3NsVKA11O7+CWseA5n9wCgPYRuUBgG6X7EJgrjju
 KZy/WMQQgh+wLZqIFsg2ena+ShAUH960TWiM8aWjau7NteoK0VBybDilFmBedW5KOpo+
 pNN6xOoyLx8x6BoVjEPBWc2P3j5McImcq1d7yRjhKET4vZcIkbeSCXQarFNw5mvGmFws
 JCWA==
X-Gm-Message-State: AO0yUKXCh9GphJfpvFfLITBJ3+/uRPPNXcL9Gk2Pko9BSO+h0P6NPoGJ
 X48/Qir5+F+z5wUKZeR8+zxByFXREZ0=
X-Google-Smtp-Source: AK7set/rLaDnI4UMi7xxnIxc2xyrnFeTBIBLorGKb1AuxMLxUncMU6Ti2ZrQxGiJNhcIDgP0ILWWCA==
X-Received: by 2002:a05:6402:100c:b0:4fb:2296:30b3 with SMTP id
 c12-20020a056402100c00b004fb229630b3mr7644338edu.15.1679493084961; 
 Wed, 22 Mar 2023 06:51:24 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:65e5:3673:f4af:8235?
 ([2a02:908:1256:79a0:65e5:3673:f4af:8235])
 by smtp.gmail.com with ESMTPSA id
 c25-20020a50f619000000b004bd6e3ed196sm7858194edn.86.2023.03.22.06.51.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Mar 2023 06:51:24 -0700 (PDT)
Message-ID: <e39a90c1-9ddc-4bd8-a61f-04bc44c399c6@gmail.com>
Date: Wed, 22 Mar 2023 14:51:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Patchwork <patchwork@emeril.freedesktop.org>
References: <20230316082035.567520-1-christian.koenig@amd.com>
 <167895512494.19095.7557184368789335373@emeril.freedesktop.org>
 <87lejp6lqb.fsf@intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <87lejp6lqb.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/7=5D_drm=3A_remove_drm=5Fdev=5Fset=5Fu?=
 =?utf-8?q?nique?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Am 22.03.23 um 12:58 schrieb Jani Nikula:
> On Thu, 16 Mar 2023, Patchwork <patchwork@emeril.freedesktop.org> wrote:
>> == Series Details ==
>>
>> Series: series starting with [1/7] drm: remove drm_dev_set_unique
>> URL   : https://patchwork.freedesktop.org/series/115239/
>> State : failure
>>
>> == Summary ==
>>
>> Error: patch https://patchwork.freedesktop.org/api/1.0/series/115239/revisions/1/mbox/ not applied
>> Applying: drm: remove drm_dev_set_unique
>> Applying: drm/tegra: allow compile test on !ARM
>> Applying: drm/debugfs: stop calling debugfs_init() for the render node
>> Applying: drm/debugfs: rework debugfs directory creation v2
>> Applying: drm/debugfs: remove dev->debugfs_list and debugfs_mutex v2
>> Applying: drm/debugfs: rework drm_debugfs_create_files implementation
>> Applying: drm/debugfs: remove debugfs_root pointer from minor
>> error: sha1 information is lacking or useless (drivers/gpu/drm/drm_debugfs.c).
>> error: could not build fake ancestor
>> hint: Use 'git am --show-current-patch=diff' to see the failed patch
>> Patch failed at 0007 drm/debugfs: remove debugfs_root pointer from minor
>> When you have resolved this problem, run "git am --continue".
>> If you prefer to skip this patch, run "git am --skip" instead.
>> To restore the original branch and stop patching, run "git am --abort".
> Please send a series based on drm-tip to get a CI run on this.

I have already been working on this. Should go out in an hour or so.

Thanks,
Christian.

>
> BR,
> Jani.
>
>

