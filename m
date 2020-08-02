Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8431D235A43
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Aug 2020 21:43:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD4256E194;
	Sun,  2 Aug 2020 19:43:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F5126E194
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Aug 2020 19:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596397389;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=U4/Mw3KkAAcPCK4zYXwpvO5LLtv+hmKDZL07Q/dYPuw=;
 b=Dd7JN/JhtBjiPaSIyfCpQXj5NlMgIS/uYu4zlUssuYR1jpebTEMDj26ry+d6L61IlQ0Asi
 fHiiNyqScw00MdEaKyVBCTQayvrT6Ko9y2PzGI+sVYgU43k4MvsWJXiWDovlbidykujLiM
 5x0TlqHK+budyxgO3gpMDuj/kieWgIE=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-498-ct9nZ5gOMv2mUnnbYjLMPw-1; Sun, 02 Aug 2020 15:43:05 -0400
X-MC-Unique: ct9nZ5gOMv2mUnnbYjLMPw-1
Received: by mail-ed1-f72.google.com with SMTP id p26so8565411edt.11
 for <intel-gfx@lists.freedesktop.org>; Sun, 02 Aug 2020 12:43:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=U4/Mw3KkAAcPCK4zYXwpvO5LLtv+hmKDZL07Q/dYPuw=;
 b=aq4CxbNGGn25hSB34NsEJgMkG7+anxNVj3B7dpNYWYY0PApoBCxnjAfPspUI5/ym8a
 3k/ldNPLnbGE2304fsiStVB19k4xAjiY9I9hd+TDgjMot7p1WcyjWOiGaZPMo1afOSRe
 E+sV9kbUf1Sz76L3N/JsnA0QvQc7UE5uNRSg/ZTttY5+jwltKaOIdS/1WfEIF70UkYS+
 oPAtRIsCEBsvDoxdVEJy5pCLXxYymgL9Hz2H3xv5rtCehm7xbgPxoNmnst+Y2c+wcCe5
 Gt65Azf8Xof7HSSIZfT5UTTmQlhhab6wGeYE/AjTjwAPjU/zAtjXx4UOPtOgNcmfCBKs
 Mz4w==
X-Gm-Message-State: AOAM531Y7UCfwBi8VMMn8FjJzuVe3yN4r7nHAH+1ylt9obcMQdxaOSKC
 Dc6esqg6vF8ljSb5Ata9m4TbYBeq0lzow7J/1+FjkRTroKLMdu/PEU9LWYGfxDNmqyTugAAOtoU
 wTmf1uhAfMxsrZwnG83qsu8ARghDP
X-Received: by 2002:a50:ef0a:: with SMTP id m10mr13098229eds.226.1596397384537; 
 Sun, 02 Aug 2020 12:43:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJynUhl0t0uuVDdTx6s58FiK7ReUpSYAlLkZ1s/9i/K4l82iijURkAOZIpAIJo7qPwgJDtnWkQ==
X-Received: by 2002:a50:ef0a:: with SMTP id m10mr13098209eds.226.1596397384275; 
 Sun, 02 Aug 2020 12:43:04 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id ay5sm14253189edb.2.2020.08.02.12.43.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 02 Aug 2020 12:43:03 -0700 (PDT)
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20200717133753.127282-1-hdegoede@redhat.com>
 <20200729105436.GT3703480@smile.fi.intel.com>
 <e8f93474-1775-b20c-f9f2-e33592a02028@redhat.com>
 <20200802112524.GS3703480@smile.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <3d66505a-3550-e81f-d6dc-250dba87e820@redhat.com>
Date: Sun, 2 Aug 2020 21:43:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200802112524.GS3703480@smile.fi.intel.com>
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

Hi,

On 8/2/20 1:25 PM, Andy Shevchenko wrote:
> On Sat, Aug 01, 2020 at 04:38:16PM +0200, Hans de Goede wrote:
>> On 7/29/20 12:54 PM, Andy Shevchenko wrote:
>>> On Fri, Jul 17, 2020 at 03:37:37PM +0200, Hans de Goede wrote:
> 
> ...
> 
>>> One comment to consider, though. There are three channels in that PWM AFAIU.
>>> One of them is backlight control, another one can be attached to haptics. The
>>> concern is how this series may (or may not?) affect haptics behaviour.
>>
>> When you say "in that PWM" do you mean the LPSS one or the CRC one ?
> 
> CRC one. I have read it from PMIC spec, that's why the question.

Ah I see, well the kernel driver only implements support for 1 PWM output,
the one which is used for the backlight brighness control.

So this series should not affect haptics behavior, since it looks like
the haptic functionality is not supported in the mainline kernel at all.

And I'm also not aware of any tablets with a CRC PMIC which have
(non working) haptic support.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
