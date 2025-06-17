Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 483FEADF770
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 22:09:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3641610E92D;
	Wed, 18 Jun 2025 20:09:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AJqyNnm9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
 [209.85.218.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0369510E6F7
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jun 2025 13:44:02 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id
 a640c23a62f3a-ade750971f2so744122366b.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jun 2025 06:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1750167840; x=1750772640; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=zecGBL4EFfqvJ1+S5Ps/tbhcKJ3SUOGOERPfVCGUV9U=;
 b=AJqyNnm9cp/fq90lfwqBKN0+e1kD7AGcD7KeJEyOari+qlMUuOAWe51m19YKqE1xy8
 OV2m/i7b4rMDaPn7wGyp5CG4bPHADQ+50Vpr2DdDUuMvH1igIhOxMOfcH61N9jcXVKgj
 Asy1kzeR5+rzSPcliMqz5DYLqzCIUa++GsAEyE2NXOA0K2R0ZIlJqaGpt3p5X/RuQxu+
 t4PHdMradZ9huMOljEufJS14x2vbiVk/R3Xki6CHgVotKssxMgaAYb3PkNwKjpZGnklb
 4Ed/ToR04RuZyFPFD7OdD/3lQ9p/L2q6648QobP+6mmdLuzJzjVjugda/NQ38zu+OIwT
 xwcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750167840; x=1750772640;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zecGBL4EFfqvJ1+S5Ps/tbhcKJ3SUOGOERPfVCGUV9U=;
 b=XC7avLdrnR+gGYjtSk3PMxYqqAQGgoy/W1W45sx61R1RgelZAY0GEMWDyP84IS+pj2
 1MQQQ5SkZ3+oSlNqUwkybyWX69assyqli280yTBaufShmehRVTA3DGRe58I+Qw6z7nPQ
 ZMFr4EMxVhEz47DapbQkHJTh/3NA7hzGOfV0roltZdX8XbJ5w5VcKZxEL5lDqb0rdaQw
 K62akOa/NCnVl1tGaDwRmLNmYF8jbvpb4rmiggJDCsGUHL9to8tRQDsXqysl2himT/cs
 U7HTb+Y2wMYT7M4ZgEDQyD5aCN5ANyLvfmMIbnN1cYO7tHGkQmxGhLiGHbck53hpLph9
 JKqQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUgbdzUmRPXfUDEKvVSgbOZoZjLhuHDUgdhV8K79DqTf8i+yJoO4Wjolmh5hwpcIZaWhbOXgG/5YPY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyyRerBys75hWMnxbZ+1cyGd3DFUbI//5LBaPNdbE/AhjOWc7Pp
 wsT8/RvrIwledkQfW/NfTWHHUr4RrrBb3UqOedJ5OZrShHxKPml8swDd
X-Gm-Gg: ASbGncvMH8JPhzUzFbiJgCL4igWj7lXu3EpgQrz4oez5wqdreDu1ltrtFBvXrg5UOHV
 SWhNIh8z+cCOTbuc0ANzlMeDb0a7l20u4xKyKtLuqIZ+HNpKNWw2jY/1s7mXmcU9exYzH0KSM08
 JdTUy/rwWTOZS9r6WePKNG6tYq3lIHZ8I+kIhSlGEtxx6ZJIIlnO8K6z31NCtu/ftQeX+lH8KYW
 THVT9vU3A20x1wgQOIzzxUsSjkUmm62kppPRHUicHg6nkQybPRBGYy8umt7+sQUjUz2sjVdTUZH
 kQW5zVp8Pe/9f86rDsaIs24yv3ol0zZuOZoMW+qMfpkPkW21eeofkW4ylAFwtGC7l9hC/ITIs6v
 Lmetavt8rQTqJd5akVUQ6p4GceQ5TYge53Ec24DciE3RV
X-Google-Smtp-Source: AGHT+IGgIlcS/PryJ7lnGbffSNLneJYZk5+uA1B/WOdMk8Ma6F8q8Mlo7t8zz4EebhjQz/a0cLH/aA==
X-Received: by 2002:a17:906:478d:b0:ad8:9b5d:2c1b with SMTP id
 a640c23a62f3a-adfad29dd5bmr1181198766b.9.1750167840364; 
 Tue, 17 Jun 2025 06:44:00 -0700 (PDT)
Received: from [192.168.75.93] (217-122-252-220.cable.dynamic.v4.ziggo.nl.
 [217.122.252.220]) by smtp.googlemail.com with ESMTPSA id
 a640c23a62f3a-adec81bb9cesm864213666b.49.2025.06.17.06.43.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Jun 2025 06:44:00 -0700 (PDT)
Message-ID: <33046593-17e3-4bdc-9d4a-94dc94ef5e81@gmail.com>
Date: Tue, 17 Jun 2025 15:43:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [REGRESSION][BISECTED] intel iGPU with HDMI PLL stopped working
 at 1080p@120Hz 1efd5384
To: Jani Nikula <jani.nikula@intel.com>, stable@vger.kernel.org
Cc: regressions@lists.linux.dev, Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 Christian Heusel <christian@heusel.eu>
References: <8d7c7958-9558-4c8a-a81a-e9310f2d8852@gmail.com>
 <afa8a7b2ced71e77655fb54f49b702c71506017d@intel.com>
Content-Language: nl-NL, en-US
From: Vas Novikov <vasya.novikov@gmail.com>
Autocrypt: addr=vasya.novikov@gmail.com; keydata=
 xjMEYrX2ChYJKwYBBAHaRw8BAQdAf/bzdTDerOW5j+qrayMzPOCKthCx8KYKZo20cty68aPN
 KFZhc2lsaSBOb3Zpa292IDx2YXN5YS5ub3Zpa292QGdtYWlsLmNvbT7CjwQTFggANxYhBLKE
 QxE9sGxECbI4ubmfrsbg1d9tBQJitfYKBQkJZgGAAhsDBAsJCAcFFQgJCgsFFgIDAQAACgkQ
 uZ+uxuDV321klwEAm5+HyBecp+ofMZ6Ors+OvrETLFQU2B9wCd/d/i2NjJABAIssTvgdxlqF
 I6GjehRMPURi6W1uFMPzzp9gM1yeYXEGzjgEYrX2ChIKKwYBBAGXVQEFAQEHQODm5qV0UQrP
 hcJkaZVbhtVmb90gN6rIuN0Q/xTmhqJ4AwEIB8J+BBgWCAAmFiEEsoRDET2wbEQJsji5uZ+u
 xuDV320FAmK19goFCQlmAYACGwwACgkQuZ+uxuDV322trQEA1Yj4GvOlEPfyuhMfX8P0Ah/8
 QXCqgdMQH7PaNgIFFokA/1DgWcc1XGFNRHpOGrJNnF4Ese1hWjYoqo2iBlURPQwP
In-Reply-To: <afa8a7b2ced71e77655fb54f49b702c71506017d@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Wed, 18 Jun 2025 20:09:12 +0000
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

Hi Jani and everyone,

On 17/06/2025 12.33, Jani Nikula wrote:
> Does [1] help?

The patch works. (Applied on top of 6.16.0-rc2-1.1-mainline, built by 
Christian @gromit who helped again.)

The patch (or the new kernel) also have a side effect of xrandr allowing 
a completely new refresh rate, ~144Hz. This new refresh also seems to 
work (I cannot easily disambiguate 144 versus 120, but I can tell it's 
not 60Hz). So as far as my hardware is concerned, this patch leaves the 
whole system working in all scenarios that I've tested.

Thanks!


Kind regards,
Vas
