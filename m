Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E46327355
	for <lists+intel-gfx@lfdr.de>; Sun, 28 Feb 2021 17:28:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBA2F6E222;
	Sun, 28 Feb 2021 16:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C8C26E222
 for <intel-gfx@lists.freedesktop.org>; Sun, 28 Feb 2021 16:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614529691;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KW+A4fMCUXlM1ZCXJuqgg2ArSuejTl4g/godkV8lJuM=;
 b=Zy+GRrRdjddAPSjoviPJnyxjt8NmJ7l4CSSay9drIiEPm9+mxs1akPq/wjDrWANz3B4Egk
 7imCOz/rBt6U+98efkIbPs/3A1uHn4cZ7t7hsMNcFaFV2684N3S8Oxcvyf9nPDoQhJsBu5
 rN3EytutwuY86eGGkUtjpAeiRdGQi+Q=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-564-z2X7A4wgPmGivGgzGEa7JA-1; Sun, 28 Feb 2021 11:28:08 -0500
X-MC-Unique: z2X7A4wgPmGivGgzGEa7JA-1
Received: by mail-ed1-f70.google.com with SMTP id p12so7548019edw.9
 for <intel-gfx@lists.freedesktop.org>; Sun, 28 Feb 2021 08:28:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KW+A4fMCUXlM1ZCXJuqgg2ArSuejTl4g/godkV8lJuM=;
 b=KxaojGtxyl2V4P9+G95p2k0c76NUXXtaUpmgS/B1NadSX+N8SVUaOg7MdsXzRISJ+D
 1EJxDKh5O63hInDurNUydbLNesPn3X/5oEM1J2ymINRgOF6wTRm13vRuwZ9ihUt1XBqA
 zi1t953LTAM3fiuVV2mf96JCPFnapWocKNHqHdFPYixw3Eo67Et/2qS/O5Hp32FDqGou
 +dSPNQepB8UBFGGwSDVYyTH3APR42Nr7or+XiWw+b299oti6M1j60bSTu8yRCdq3G3Vu
 ncWWb1/Mkm6aGr9eX/tHiihzvSXkBvXdYyg0k3RjrMhnBXoRQdSidU1P0qhDveRO8l0v
 Yn2A==
X-Gm-Message-State: AOAM532su6CAZWdo5f58/8rOXJCb4MBqitVl+iTUUaZEtlaZ97uDA2tg
 tr5JAikg17Pbm/c6LbQxByD805QYli78cA17c1xA3ieqB0kXdnQ9owE8a2uG6JhdWnylLmRNgWx
 cVD3Kapsv2dLZtftqYPRxxs/YTzXD
X-Received: by 2002:a05:6402:3585:: with SMTP id
 y5mr12354972edc.97.1614529687681; 
 Sun, 28 Feb 2021 08:28:07 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyD73hG/59Kk13XOJ6O+yfcazWfJ5/gBxFHjWSszQjbVa0uDW4D1PcpQ1P6aTsB8B0LIGNeKg==
X-Received: by 2002:a05:6402:3585:: with SMTP id
 y5mr12354957edc.97.1614529687527; 
 Sun, 28 Feb 2021 08:28:07 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id l6sm11851022edn.82.2021.02.28.08.28.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 28 Feb 2021 08:28:07 -0800 (PST)
To: Greg KH <gregkh@linuxfoundation.org>, Diego Calleja <diegocg@gmail.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
References: <3423617.kz1aARBMGD@archlinux> <YDuzbvIjMO5mFcYm@kroah.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <e662d6bf-53e3-9774-37db-9e7ea88a4ec9@redhat.com>
Date: Sun, 28 Feb 2021 17:28:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <YDuzbvIjMO5mFcYm@kroah.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] -stable regression in Intel graphics,
 introduced in Linux 5.10.9
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 2/28/21 4:14 PM, Greg KH wrote:
> On Sun, Feb 28, 2021 at 03:29:07PM +0100, Diego Calleja wrote:
>> Hi,
>>
>> There is a regression in Linux 5.10.9 that does not happen in 5.10.8. It is still there as
>> of 5.11.1
> 
> Is this the same issue reported here:
> 	https://lore.kernel.org/r/f1070486-891a-8ec0-0390-b9aeb03178ce@redhat.com
> ?
> 
> If so, is this a problem in 5.11 as well?

I see in the original email:
https://lore.kernel.org/stable/3423617.kz1aARBMGD@archlinux/

That Diego is using the iGPU part of a Haswell CPU, so yes this is almost
certainly the same issue.

Diego as I already mentioned to another arch user, it would be good if the
arch kernel-maintainers can pick-up these 3 commits from the drm-intel tree
as downstream patches for now:

e627d5923cae ("drm/i915/gt: One more flush for Baytrail clear residuals")
d30bbd62b1bf ("drm/i915/gt: Flush before changing register state")
1914911f4aa0 ("drm/i915/gt: Correct surface base address for renderclear")

We (Fedora) have added these as downstream patches for now and we have
multiple reports that these resolve the problem.

Chris, can you please send the 2nd and 3th commit of the above list on
their way to Linus ASAP, so that Greg can add them to the stable series?

ATM only the 1st commit is in Linus tree (unless the others have landed
with different hashes?)

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
