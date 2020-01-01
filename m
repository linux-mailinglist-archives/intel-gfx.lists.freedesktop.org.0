Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1BF12DFA0
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 18:04:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 820EF89C53;
	Wed,  1 Jan 2020 17:04:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AE0B89C5E
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jan 2020 17:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577898253;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=s50ZsxwjIKokV6x0z0goKHHGd0zXqfM+O8mAjhUFi1c=;
 b=UfLEHDhCTzaSCGnGTM27bkL9zi/uJ06diN5ULHmKVhgJg3dHjh+4WfYS4Vecr3F5UD0XU/
 YbvC5Z7hxsJzscdSzM9/lm/8W/W6VnbW0/SSxjjRgnUJfaeoQLeCj7KftGKEeaocpvkT7A
 NoUYPwrQh1S07M79pNfC/zZxxf8EpcQ=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-412-pLmRWkUTMMKMdvhyQcb2iA-1; Wed, 01 Jan 2020 12:04:10 -0500
Received: by mail-wr1-f69.google.com with SMTP id f10so12264792wro.14
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Jan 2020 09:04:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=s50ZsxwjIKokV6x0z0goKHHGd0zXqfM+O8mAjhUFi1c=;
 b=hpI6rhkff//WNVJevHMBEbsUNBkAaqC0rg8dcEzvIty0vELi6HKONgnAoChaSYBogt
 2u0mPvFl0G3hnmIQ18Nwgg+uLwb6XIJeqCAok7s3a8Rkav6H1ysd5/ye2/n+8NsElip9
 aDjZwdBQ3zMYUKT8kqQRW+k9IIFbU640/GyY7Y3umxUddWn4qrwg84wL/O0zpZsmwXbQ
 E12sai6bK3M9fODMbKeaigrhocm2mKSJ00OegZHqwP0EvtYuQCJjxbHQ49LYS/iEwQ+E
 ZUEDyX3KQtlvhc+pIlaxMTNtDzJ/oAGJDurXIIebOegXo+A337Zt4zV5bzIcDzOVtbsw
 SmfA==
X-Gm-Message-State: APjAAAV9OUi645dI8wGtgH0AMm8dRgejhA7cF96nvIZoNZgy9HlP8v5U
 ZQ1pL7mTimniKfe6bIM+PhunnSScyGhpgyMnLaGlXp2k/4m3OuKhsXOzp1CL3H96Y6yIYQgHkpj
 vLCL3RCAMNK65JT2PTYcXgbUyLPHX
X-Received: by 2002:a1c:7c18:: with SMTP id x24mr10312563wmc.21.1577898249277; 
 Wed, 01 Jan 2020 09:04:09 -0800 (PST)
X-Google-Smtp-Source: APXvYqzZTswoExdSMw9TTuCmWANB6Q+psIllWhIgAWnlMFTOxuGzjGUdFyH9riu/K/XUlyuqb2WIVw==
X-Received: by 2002:a1c:7c18:: with SMTP id x24mr10312542wmc.21.1577898249095; 
 Wed, 01 Jan 2020 09:04:09 -0800 (PST)
Received: from shalem.localdomain
 (2001-1c00-0c0c-fe00-7e79-4dac-39d0-9c14.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7e79:4dac:39d0:9c14])
 by smtp.gmail.com with ESMTPSA id x16sm5961353wmk.35.2020.01.01.09.04.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 01 Jan 2020 09:04:08 -0800 (PST)
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>
References: <20191216115158.862404-1-hdegoede@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <0d0e898f-a853-de16-40bf-4b7e3785b567@redhat.com>
Date: Wed, 1 Jan 2020 18:04:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20191216115158.862404-1-hdegoede@redhat.com>
Content-Language: en-US
X-MC-Unique: pLmRWkUTMMKMdvhyQcb2iA-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-gfx] [PATCH resend 0/2] drm/connector: Add support for
 specifying panel_orientation on the kernel cmdline
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

Ping? it would be really nice if we can get these last 2 patches from
my series for specifying panel_orientation on the kernel cmdline upstream.

If someone can review the first patch (the second one has already
been reviewed) then that would be great.

Thanks & Regards,

Hans



On 16-12-2019 12:51, Hans de Goede wrote:
> Hi All,
> 
> This is a resend of the last 2 remaining patches of my series for adding
> support for specifying panel_orientation on the kernel cmdline.
> 
> I've already pushed the other 11 patches which were mostly cleanups /
> bug-fixes to the cmdline-parsing code and where all acked by Maxime
> to drm-misc-next.
> 
> The first patch of these 2 still needs to be reviewed, if someone can
> review it that would be great.
> 
> Once this is reviewed the question becomes how to merge this, both
> patches are mostly drm-misc material and the second patch depends on
> the changes I just pushed to drm-misc-next, so this series should
> probably be pushed to drm-misc-next, but it also makes some changes
> to i915 code. I've checked and there is no conflict with these patches
> as they apply to drm-misc-next vs drm-intel-next-queued (atm). So it
> should be fine to push these 2 patches to drm-misc-next and then do a
> back-merge to drm-intel-next-queued.
> 
> Regards,
> 
> Hans
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
