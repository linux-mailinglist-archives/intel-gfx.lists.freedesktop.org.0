Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 544CF25C183
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 15:09:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBBB56E9EF;
	Thu,  3 Sep 2020 13:09:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66B6F6E9EE
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 13:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599138584;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oOKwAmzdX19wFLaLs6FnpWqrSpxl3eshTWS+wqlIdDI=;
 b=JARYBLiDsGJmJXe7uX/fXc1UNIMY69m75Jub1om9r7DY0I6yPbohVO0g4Qq89gmYrPRbMK
 1g8bdGFSoU7n/jJfg/JDsuoxQY6yAzXP6TI4Q+K2lLmzrTyPwjJ+lvyDyigrnhfdYG+huz
 snQbmxqpMtiEFDEQRYLvDkEF4NB7+N8=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-312-triaAKBPPreObmIQQ_Kkfg-1; Thu, 03 Sep 2020 09:09:42 -0400
X-MC-Unique: triaAKBPPreObmIQQ_Kkfg-1
Received: by mail-ej1-f69.google.com with SMTP id p21so1171514ejj.18
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Sep 2020 06:09:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oOKwAmzdX19wFLaLs6FnpWqrSpxl3eshTWS+wqlIdDI=;
 b=mix606Mi+OFhbMnJgGFDZyNz6mVb2SPArXaVxCGudh9xcnvHYBmneaBJcLvFqhSJ2g
 scssHAOvYetBpCyORBlHrXK3EHngSnhbfJKEkDonykj/GXhIr9Ryh6QN5GIHousNkRBB
 lhp2+xCpu5jdlhYckPbKZpO0/9ZRiEmVg9mtmJhUTY7xOaDR/oDiWZSGbZhUyiMoy0ke
 qVNRYDuSD791x4sK5+1uyTP4ztKsuyREmr+L+DAMqjHgw61K7PKx3WtGcxUD7kaXl/1v
 4+iJUfqMlVBfa0UceWax1GIyO/YHmR7BfH5H3MUrmcSNLW7dE0bwSW1AyLzF/HF6MBGZ
 fA4g==
X-Gm-Message-State: AOAM5323zL1iLeoNVk7LQiMh+vuGlapgbRMZRn2Pw/B6PKUuYBw7V1/v
 bMOrUJTVNgO2fkW58ws6w7OEb8QxIXGsQHZftmqVzhBDv/xBlNBTwI2DGVirKl1bwrSeeijEkCU
 B2RlUlHFUjKclnr1UC2eHvnsneust
X-Received: by 2002:a17:906:d282:: with SMTP id
 ay2mr1910849ejb.265.1599138581387; 
 Thu, 03 Sep 2020 06:09:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw4WbCzGSIX11Eb7tLYhakyrPDa74ODNUuKAajKTh1x+4i7BJ6ADpqdzqIF9xQvFCK8/v6JPQ==
X-Received: by 2002:a17:906:d282:: with SMTP id
 ay2mr1910818ejb.265.1599138581124; 
 Thu, 03 Sep 2020 06:09:41 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id v7sm3391177edd.48.2020.09.03.06.09.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Sep 2020 06:09:40 -0700 (PDT)
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20200903112337.4113-1-hdegoede@redhat.com>
 <20200903112337.4113-8-hdegoede@redhat.com>
 <20200903124816.GA1891694@smile.fi.intel.com>
 <20200903125620.GB1891694@smile.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <63bf5fd7-148e-262a-4076-66d2ffb58557@redhat.com>
Date: Thu, 3 Sep 2020 15:09:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200903125620.GB1891694@smile.fi.intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v10 07/17] pwm: lpss: Remove suspend/resume
 handlers
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

On 9/3/20 2:56 PM, Andy Shevchenko wrote:
> On Thu, Sep 03, 2020 at 03:48:16PM +0300, Andy Shevchenko wrote:
>> On Thu, Sep 03, 2020 at 01:23:27PM +0200, Hans de Goede wrote:
> 
>> the question is do we need to have similar in acpi_lpss.c?
>> For example,
>> 	static const struct lpss_device_desc byt_pwm_dev_desc = {
>> 		.flags = LPSS_SAVE_CTX,
>> 		^^^^^^^^^^^^^^
>> 		.prv_offset = 0x800,
>> 		.setup = byt_pwm_setup,
>> 	};
>>
>> 	static const struct lpss_device_desc bsw_pwm_dev_desc = {
>> 		.flags = LPSS_SAVE_CTX | LPSS_NO_D3_DELAY,
>> 		^^^^^^^^^^^^^^
>> 		.prv_offset = 0x800,
>> 		.setup = bsw_pwm_setup,
>> 	};
> 
> Okay, it's a private space which has clock and reset gating, so means we still
> need to handle it.

Right I was about to say the same.

As always, thank you for your reviews.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
