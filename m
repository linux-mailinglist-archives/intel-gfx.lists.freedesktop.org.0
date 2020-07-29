Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49145231C34
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jul 2020 11:39:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 754BB6E4A1;
	Wed, 29 Jul 2020 09:39:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 303 seconds by postgrey-1.36 at gabe;
 Wed, 29 Jul 2020 09:39:05 UTC
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [216.205.24.74])
 by gabe.freedesktop.org (Postfix) with ESMTP id 904A16E4A1
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 09:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596015544;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=B3NdEtEPvq/yTFpK5ZmTixdu7Jx259zTegavJvefnOg=;
 b=hE9kTvJu2Zn/j12kuAnUzpwLpd1DpnOAksrIS8AEGeGQeuI7pqbxkCp/hryPl+AuauKjeH
 AQCkT9jFTAupAL8pTmWhvuw3mM4m3h1n1i+W87z1ItbQE+vCtAIC/ruk+S/GVhtKVq+K1z
 eO1JH/WShQhTucAJDlVI6FBqX4beW1c=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-224-nOKmrSbvMxuSKMPNSbICwQ-1; Wed, 29 Jul 2020 05:32:32 -0400
X-MC-Unique: nOKmrSbvMxuSKMPNSbICwQ-1
Received: by mail-ed1-f71.google.com with SMTP id t9so6676217edw.22
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 02:32:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=B3NdEtEPvq/yTFpK5ZmTixdu7Jx259zTegavJvefnOg=;
 b=EYQhCDC9tCnnwgaclzVKQgd+x4sehhJMmoUv6hP7dYY7fOXLF3bm61i3NSODIneg2X
 pS8okMCuWHG2cBA4pSGnrwL/v6hZRLwkwDjeqZVzPH1X1cq3Wntxi2SgGDh5yLPXSv9Z
 Bqc0bsSUgHPMWAbeK9TXyJAqRaUPN2qcep60j4igA4nAULZdm9HdHNIU/qEQ2vr6vDZz
 HhsBoJCqK/9tIEce1i///YFtXJK3090H+FdCaFdy2FCONg3OuSjdXuP9zM7ItV5DkfYD
 PuzPq59Z4mVG/msta5E1g6Ed0G5MsbMoPNYtfdVi41IMSeMZ9ywqRHzRFs3wMBhbjT/4
 IeMA==
X-Gm-Message-State: AOAM530HG3H7pvqxN0lz7jEdwJfN824xsZG+iq8W2p3gAyBG6PIB7mDe
 mnlC+eW3jr3LdNF8Zgkt13vtafbX+bpUBr+JarcrUj3SHXDbe+maId9t2im4SAvnjOTsUnmR1vK
 wJwBrVX7SaycxD1vjLwyF+oFyy9tP
X-Received: by 2002:a17:906:3e54:: with SMTP id
 t20mr28993969eji.471.1596015150745; 
 Wed, 29 Jul 2020 02:32:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyKBgqFRqaTJ3qOVm6sY5SeNDR02oRp8D5ppn0kjXKSLnxPuYsSA12NdfHTt3eZGDVnbgnbuw==
X-Received: by 2002:a17:906:3e54:: with SMTP id
 t20mr28993942eji.471.1596015150448; 
 Wed, 29 Jul 2020 02:32:30 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id a18sm1236467ejt.69.2020.07.29.02.32.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Jul 2020 02:32:29 -0700 (PDT)
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Thierry Reding <thierry.reding@gmail.com>
References: <20200717133753.127282-1-hdegoede@redhat.com>
 <20200727074120.GB2781612@ulmo> <20200729082305.GK3703480@smile.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <b87c535a-022f-2894-1e38-5be035c6fbfc@redhat.com>
Date: Wed, 29 Jul 2020 11:32:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200729082305.GK3703480@smile.fi.intel.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v5 00/16] acpi/pwm/i915: Convert pwm-crc and
 i915 driver's PWM code to use the atomic PWM API
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
Cc: linux-pwm@vger.kernel.org, intel-gfx <intel-gfx@lists.freedesktop.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

cHi,

On 7/29/20 10:23 AM, Andy Shevchenko wrote:
> On Mon, Jul 27, 2020 at 09:41:20AM +0200, Thierry Reding wrote:
>> On Fri, Jul 17, 2020 at 03:37:37PM +0200, Hans de Goede wrote:
> 
>> I've applied patches 3 through 12 to the PWM tree. I thought it was a
>> bit odd that only a handful of these patches had been reviewed and there
>> were no Tested-bys, but I'm going to trust that you know what you're
>> doing. =) If this breaks things for anyone I'm sure they'll complain.

Thank you for picking up these patches, but ...

> Can we postpone a bit?

I have to agree with Andy here, as mentioned my plan was to push the
entire series through drm-intel-next-queued once the last few PWM
patches are reviewed.

There are some fixes, to the pwm-crc driver which change behavior in
a possibly undesirable way, unless combined with the i915 changes.

E.g. there is a fix which makes the pwm-crc driver actually honor
the requested output frequency (it was not doing this due to a bug)
and before the i915 changes, the i915 driver was hardcoding an output
freq, rather then looking at the video-bios-tables as it should.

So having just the pwm-crc fix, will change the output frequency
which some LCD panels might not like.

Note things are probably fine with the hardcoded output freq, but I
would like to play it safe here.

Also Andy was still reviewing some of the PWM patches, and has requested
changes to 1 patch, nothing functional just some code-reshuffling for
cleaner code, so we could alternatively fix this up with a follow-up patch.

Either way please let us know how you want to proceed.

>> That said I see that Rafael has acked patches 1-2 and Jani did so for
>> patches 13-16. I'm not sure if you expect me to pick those patches up as
>> well. As far as I can tell the ACPI, PWM and DRM parts are all
>> independent, so these patches could be applied to the corresponding
>> subsystem trees.
>>
>> Anyway, if you want me to pick those all up into the PWM tree, I suppose
>> that's something I can do as well.

drm-intel-next-queued is usually seeing quite a bit of churn, so the i915
patches really should go upstream through that branch.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
