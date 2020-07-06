Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 829002160CC
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 23:05:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D50DC89E26;
	Mon,  6 Jul 2020 21:05:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C503189E26
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 21:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594069524;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yZ4PLJw4PBuUGJVeUTW+U9UdcJG0xdBh1DcgbZxmOc0=;
 b=ZpkolpNuoIpoht4K5kqtjmA8MCmGI1zTqN5/Lx5KT/MdeTumVoyGfd2DoEKjiacA69Llp9
 +sUHJ2IgdrU0D29Fwam2vEblGPfg/IQO4lrAf5EqzPo1LlwAsBrFt1kTYBEKLHBgEtKtw8
 rS+JFnSbqjKubO8QVxas55tO0XSaqzM=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-369-BBelDtdRPD2s-bkczEalpg-1; Mon, 06 Jul 2020 17:05:23 -0400
X-MC-Unique: BBelDtdRPD2s-bkczEalpg-1
Received: by mail-ed1-f70.google.com with SMTP id y66so43640267ede.19
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Jul 2020 14:05:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=joj3ugB6R/6J+5A0HiLDzW8Xgi+NkTicU2Iuhf30mzk=;
 b=ZKpEVtcpk2ia3XyVgKodTiKro61VpA5Lcp37TtCJ92V90uu/kFBG9F1vYD0K36n3kl
 Lbd61Rc8EAJLX6sM8kK6uQcypvtuP7ctgvkLktQqTTCuzabmltVe7l3pLLsMPIze2Rk5
 qVCzYELxYtvKsAbh+Vkny0viR7z+SiJ7pnJ6p+WGIgJeDGzfxXhVotJVlID+/QuriTiY
 JGdI8iRE29j94FHmczhD+CdG/NNcP8ymW9SIK8FBzgAH+3fhsxs8zeFs+02kt7P2TQmC
 CgUHmaATNAgmLyABBhOTdptfgp8WflBq4AvY9xyLu7fzYGvj45pLa7uZ+IvkAhAk3bvN
 oSVw==
X-Gm-Message-State: AOAM533Ss1Jl+v1RZJVggdPV2z4Elj6NgICXTvwApwv9RPMefq9hiKKb
 XY856znxTtdKhKf196V+AA/3sQveiNRBrNWonVutJojTI1Qb60h118glqcuFDZ7WmuxBkGQEo4J
 RIR610y3Xtzb0AtydRxbTo+H2zxqO
X-Received: by 2002:a17:906:fa92:: with SMTP id
 lt18mr33000425ejb.534.1594069522020; 
 Mon, 06 Jul 2020 14:05:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyK9F8LwD6ImPYy5wRucrWx7eh1AqEMfwqNCkCL/l8TpHT/un27SnONteRcUHtIlD5wblFxWA==
X-Received: by 2002:a17:906:fa92:: with SMTP id
 lt18mr33000405ejb.534.1594069521782; 
 Mon, 06 Jul 2020 14:05:21 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id y11sm16560013ejw.63.2020.07.06.14.05.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jul 2020 14:05:21 -0700 (PDT)
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20200620121758.14836-1-hdegoede@redhat.com>
 <20200620121758.14836-12-hdegoede@redhat.com>
 <20200622075730.lenaflptqnemagff@taurus.defre.kleine-koenig.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <59babd32-9421-0b31-187f-ceff7c003f54@redhat.com>
Date: Mon, 6 Jul 2020 23:05:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200622075730.lenaflptqnemagff@taurus.defre.kleine-koenig.org>
Content-Language: en-US
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v3 11/15] pwm: crc: Implement get_state()
 method
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
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 6/22/20 9:57 AM, Uwe Kleine-K=C3=B6nig wrote:
> On Sat, Jun 20, 2020 at 02:17:54PM +0200, Hans de Goede wrote:
>> Implement the pwm_ops.get_state() method to complete the support for the
>> new atomic PWM API.
>>
>> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>> Changes in v3:
>> - Add Andy's Reviewed-by tag
>> - Remove extra whitespace to align some code after assignments (requeste=
d by
>>    Uwe Kleine-K=C3=B6nig)
>> ---
>>   drivers/pwm/pwm-crc.c | 29 +++++++++++++++++++++++++++++
>>   1 file changed, 29 insertions(+)
>>
>> diff --git a/drivers/pwm/pwm-crc.c b/drivers/pwm/pwm-crc.c
>> index 8a7f4707279c..b311354d40a3 100644
>> --- a/drivers/pwm/pwm-crc.c
>> +++ b/drivers/pwm/pwm-crc.c
>> @@ -119,8 +119,37 @@ static int crc_pwm_apply(struct pwm_chip *chip, str=
uct pwm_device *pwm,
>>   	return 0;
>>   }
>>   =

>> +static void crc_pwm_get_state(struct pwm_chip *chip, struct pwm_device =
*pwm,
>> +			       struct pwm_state *state)
>> +{
>> +	struct crystalcove_pwm *crc_pwm =3D to_crc_pwm(chip);
>> +	struct device *dev =3D crc_pwm->chip.dev;
>> +	unsigned int clk_div, clk_div_reg, duty_cycle_reg;
>> +	int error;
>> +
>> +	error =3D regmap_read(crc_pwm->regmap, PWM0_CLK_DIV, &clk_div_reg);
>> +	if (error) {
>> +		dev_err(dev, "Error reading PWM0_CLK_DIV %d\n", error);
>> +		return;
>> +	}
>> +
>> +	error =3D regmap_read(crc_pwm->regmap, PWM0_DUTY_CYCLE, &duty_cycle_re=
g);
>> +	if (error) {
>> +		dev_err(dev, "Error reading PWM0_DUTY_CYCLE %d\n", error);
>> +		return;
>> +	}
>> +
>> +	clk_div =3D (clk_div_reg & ~PWM_OUTPUT_ENABLE) + 1;
>> +
>> +	state->period =3D clk_div * NSEC_PER_USEC * 256 / PWM_BASE_CLK_MHZ;
>> +	state->duty_cycle =3D duty_cycle_reg * state->period / PWM_MAX_LEVEL;
> =

> Please round up here.

Ok, I can fix that for the next version of this patch-set. Before I
post a new version of this patch-set, you have only responded to
some of the PWM patches in this set. Do you have any remarks on the
other PWM patches ?

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
