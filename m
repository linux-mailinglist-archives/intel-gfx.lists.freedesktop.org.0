Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8BC367CF5
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Apr 2021 10:55:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEE276EA46;
	Thu, 22 Apr 2021 08:55:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 507116EA45
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 08:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619081700;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KlxKTpzv02WkE4l5rSitd/J4pegHSfR6Ij/F7UvDIqc=;
 b=Ek2vJMxHOaaMWOX+c2Qm8qqKDtPwlnH1D/Q9uBTqq2ud/EcTMYdmYXBGvEPCWfzAhiporv
 +g6xcd/FGKmXvhnUV7A4UgHnxPuh/LkqYE+mypnX3ZviOUFTt4kKG6GvpC58T0bt4tui8w
 8/NhSf8OG2DkS5UxC/sDakUjXtvlAAw=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-376-73dmvvyrMtKSUs1WjvTwTw-1; Thu, 22 Apr 2021 04:54:56 -0400
X-MC-Unique: 73dmvvyrMtKSUs1WjvTwTw-1
Received: by mail-ed1-f72.google.com with SMTP id
 f9-20020a50fe090000b02903839889635cso14392013edt.14
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 01:54:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KlxKTpzv02WkE4l5rSitd/J4pegHSfR6Ij/F7UvDIqc=;
 b=i8+kKF0v4QF9DatJ0FsVOVSLiEpgZAdS1ToOIf3FbOAL2pXpmdTzcw0X6hAL9pMSfX
 aOL8IrOpSdyLYbkejZ58KNbd5Of9rCCAP98ldo1bSL2D9gs65TW2V38Aovp0QhtIeh81
 pq/U8akf+SmVBg4qHGbvGQNoR7ZxqsbMvoty/X3ISxIz3ey5kbqooVSjYdFfbj1SehVH
 3o8KfKgmm4z0Ik6esdv4yw6IJj/mplza22kUMKu/gugCOlAJbHt6skPHy9xd7hSsxknD
 +xqXJiFtnhBHG0UG70j2VJgUSd1axuyvhymeXmy7zTldyNMJUuXiWpIlzzKmaOdmSHEh
 1XKQ==
X-Gm-Message-State: AOAM533lVvtWyPAcLOgPCmqJOz/uMRW22Lad2lXYCtSQoRUYuGSbwC1t
 oKLxa1DZ3YZ8tDT3WVILimU5LMeGncAyRPHtfLBvPDyMbcKIgD6Aj+whL5p5B1mi9lbILCSqlAN
 OBsamxmaXJAPaZEmaVanWhdxRZ9wc
X-Received: by 2002:a17:906:a45a:: with SMTP id
 cb26mr2174918ejb.537.1619081695703; 
 Thu, 22 Apr 2021 01:54:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwthOhzkrvh0hZyVev/S6kp+NplvjcU/ZAG19cBFIAFrTe3SgnQUVwbLfKOsdBqo+hRfIJq+A==
X-Received: by 2002:a17:906:a45a:: with SMTP id
 cb26mr2174896ejb.537.1619081695495; 
 Thu, 22 Apr 2021 01:54:55 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id a17sm1391970ejx.13.2021.04.22.01.54.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 22 Apr 2021 01:54:55 -0700 (PDT)
To: Simon Ser <contact@emersion.fr>,
 Marco Trevisan <marco.trevisan@canonical.com>
References: <20210421204804.589962-1-hdegoede@redhat.com>
 <OwVTQDmCbSZMBV41nuJO75afEwmVzcrgF9gLIDqAL4fODvfI-Md_R-Z-ifcVhy6VLc6FyOINwx6lUUz0B1hpykdQYe4b3iZALLftfk6yp_E=@emersion.fr>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <88ad0981-0763-9c8d-fb57-70278bcaffd4@redhat.com>
Date: Thu, 22 Apr 2021 10:54:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <OwVTQDmCbSZMBV41nuJO75afEwmVzcrgF9gLIDqAL4fODvfI-Md_R-Z-ifcVhy6VLc6FyOINwx6lUUz0B1hpykdQYe4b3iZALLftfk6yp_E=@emersion.fr>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 0/9] drm: Add privacy-screen class and
 connector properties
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
Cc: dri-devel@lists.freedesktop.org, Mark Gross <mgross@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Sebastien Bacher <seb128@ubuntu.com>,
 David Airlie <airlied@linux.ie>,
 Mario Limonciello <mario.limonciello@outlook.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, platform-driver-x86@vger.kernel.org,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Mark Pearson <markpearson@lenovo.com>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 4/22/21 10:51 AM, Simon Ser wrote:
> Hi,
> 
> On Wednesday, April 21st, 2021 at 10:47 PM, Hans de Goede <hdegoede@redhat.com> wrote:
> 
>> There now is GNOME userspace code using the new properties:
>> https://hackmd.io/@3v1n0/rkyIy3BOw
> 
> Thanks for working on this.
> 
> Can these patches be submitted as merge requests against the upstream
> projects? It would be nice to get some feedback from the maintainers,
> and be able to easily leave some comments there as well.

I guess Marco was waiting for the kernel bits too land before submitting these,
but I agree that it would probably be good to have these submitted now, we
can mark them as WIP to avoid them getting merged before the kernel side
is finalized.

Marco, can you take care of submitting WIP merge-reqs for these?

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
