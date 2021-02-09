Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E834314E5D
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 12:46:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B63E18920D;
	Tue,  9 Feb 2021 11:46:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A022891DC
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 11:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612871210;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=klaDtI4Zs8wXjbSMUwZ9+VaH5ZIusP/V06SeLCTa8ZQ=;
 b=ieN0T8c4XhcjQdoXp80ONyH3MMCNAPotfsnfzjB7K3wheI+7mMyNaxlJQ0CoNyET5i2DRm
 Zlyav70LJJ1Hs1Cink361ujeGhzO4HsNF2ikbcVA9X8uV7+WrfdNZyr3fNU6Lf9qcPowjb
 VYUlViOGJMKC7yP3+l7dP1qS/YfDJiU=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-558-R5G94PRDOyK69fCDt2PK_g-1; Tue, 09 Feb 2021 06:46:49 -0500
X-MC-Unique: R5G94PRDOyK69fCDt2PK_g-1
Received: by mail-ej1-f70.google.com with SMTP id gv53so7718676ejc.19
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Feb 2021 03:46:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=klaDtI4Zs8wXjbSMUwZ9+VaH5ZIusP/V06SeLCTa8ZQ=;
 b=PvqLYKFJUfZ7K5MUvRlXleOggGqGlvS4V5rjW8yUXkR5NESjuNnVstqXQUV6FavOD8
 aYpNR8sjvtjSeYCLglsZVZoFf3NesekLwm5GuMWqDs/NBDxshqaUZ8h3QtHtqLbwMxzT
 Gs5L0BDzJoruMr1vV+MVsZAmAEgRLl0Ia1qkbW9kXLeosYY62xcIwUnHV84UVDGEnEwQ
 svNw9CLnMh8pSazeGnn/3jYC9VtJ0oS0IbFVoDA+1og/QJpSUVSEs8ZHCydKsah2u9+5
 Zq0iEe7IXnfJtjcdm6/wkTvYWwzOJDhZvu49gL9GwbbDJKyQKkRj0DR4ZcLsjw1izJHZ
 SUNg==
X-Gm-Message-State: AOAM530usUeQbQgwk4627ODiZl9P+P5q/YttS42gp3v9t2PKKe2od3eQ
 VdxYdXABog/2I3dLKK6jPTb8BDxzAibkCIEJiesmfV2NZwH9v9c/c95AEaAFOE9jK4Pgz75D5nN
 /C8KxAC4XI2PHb98IXx9Enuo5RU+I
X-Received: by 2002:a50:80c6:: with SMTP id 64mr22292595edb.209.1612871207787; 
 Tue, 09 Feb 2021 03:46:47 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwcLzMqHynAU+5dQG109GdIVfsGd4Rc/tvYYgRdnI0NuhGiBnd70fkMeFh167iksgwsddhvLA==
X-Received: by 2002:a50:80c6:: with SMTP id 64mr22292591edb.209.1612871207662; 
 Tue, 09 Feb 2021 03:46:47 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id k6sm10278281ejb.84.2021.02.09.03.46.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Feb 2021 03:46:47 -0800 (PST)
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, stable@vger.kernel.org
References: <fe6040b5-72a0-9882-439e-ea7fc0b3935d@redhat.com>
 <161282685855.9448.10484374241892252440@build.alporthouse.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <f1070486-891a-8ec0-0390-b9aeb03178ce@redhat.com>
Date: Tue, 9 Feb 2021 12:46:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <161282685855.9448.10484374241892252440@build.alporthouse.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [5.10.y regression] i915 clear-residuals mitigation
 is causing gfx issues
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

On 2/9/21 12:27 AM, Chris Wilson wrote:
> Quoting Hans de Goede (2021-02-08 20:38:58)
>> Hi All,
>>
>> We (Fedora) have been receiving reports from multiple users about gfx issues / glitches
>> stating with 5.10.9. All reporters are users of Ivy Bridge / Haswell iGPUs and all
>> reporters report that adding i915.mitigations=off to the cmdline fixes things, see:
> 
> I tried to reproduce this on the w/e on hsw-gt1, to no avail; and piglit
> did not report any differences with and without mitigations. I have yet
> to test other platforms. So I don't yet have an alternative.

Note the original / first reporter of:

https://bugzilla.redhat.com/show_bug.cgi?id=1925346

Is using hsw-gt2, so it seems that the problem is not just the enabling of
the mitigations on ivy-bridge / bay-trail but that there actually is
a regression on devices where the WA worked fine before...

If you have access to a hsw-gt2 device then testing there might help?

Also note that this reproduces more easily on 5.10.10, which does not have:

520d05a77b2866eb ("drm/i915/gt: Clear CACHE_MODE prior to clearing residuals")

Not sure if that helps though.

> Though note
> that v5.11 and v5.12 will behave similarly, so we need to urgently find
> a fix for Linus's tree anyway.

Ack.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
