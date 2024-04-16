Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED53A8A6A18
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 14:02:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6040112BFA;
	Tue, 16 Apr 2024 12:02:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Biff8WPX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7778D112B59
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 09:41:13 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id
 5b1f17b1804b1-4187d5f0812so8901155e9.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 02:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713260472; x=1713865272; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=X6wYWFgZlvkejNqpdvqlNIka2arThfrvmhhWrF6AhkA=;
 b=Biff8WPXjJUojcdt0AKuI1QyawLQBhpphGboNnsw2Wcwx0TV4IeP79LgqSoijDdvdM
 c7oAdA/JCVvCS7VpcaYN3080XbMYlMedkkLMAfmPcQA4Y1wkQmr/aht/MFeSZwPbvJkU
 F4yV4h4dZl8INAMQDcIApqhxVcIgoNX3KN91RB6tHj2anM9EUfqb1rTvbt3JwebClqCX
 scFiY56FGHykP/M1yBEpY8MA50QIh49mcX3Ex6IJf3I7zko0bHkdNOsCPYwhh8NY0ykQ
 pbD3UnfJ5Ze7XeHSIEaq7lWRDBCf05h0QJUmGKI1KZCVh9MBAGnGwvZeUzG8pzw/QZyh
 EeQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713260472; x=1713865272;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=X6wYWFgZlvkejNqpdvqlNIka2arThfrvmhhWrF6AhkA=;
 b=LcEKxtG0JfpomthzYL4zoLxsjA9zB9kQNTMHyn5+0KomeF/x2F+r8SDRKR9dBFYde4
 kNeZEoDobWNc1AWxfvR4ZEFU5WJzxeBEiSavWfXPIAsrGrN+t9FgghSg5XuL80V6CzpS
 6pADMUJ42cVRTx9NE2N0ELWGNYHU4q4DdQsGGknYVLmLiMfq1brxtVHRXcem9u0S20Yb
 AHPXxmjrSU7TRuyoC8KAgd0mg5jD2eAC/n4aZsSFPYbZTgMHvNvMXWksdCqlBAjrCqVY
 WMyaBy6/vye+UnLsc995A2I2iqTJ6TMUPjiF8NTiHu6I0uJ7elZpEK3BdUdRDemBHTYW
 QrJw==
X-Forwarded-Encrypted: i=1;
 AJvYcCU6pgWzoT6WMBTJdy1x4/3xVjZUW1paiEq1I93Prr2n2ZvDUlErzA9letcbfLpKNm1O4EjADObGkCg7v1NyA4I1Vcz/CoMEpU0iquxek8Mv
X-Gm-Message-State: AOJu0YxAcB82cbrlNVUEjag4XD5ZoxbXNSNqJfv61w9qYz8xf7qq5qNh
 iyr4+EnuTraaCPI5cVQ7UUif7b/0yzoCp0gZhMRcaWPahnjx2Qn3
X-Google-Smtp-Source: AGHT+IHYj5Ceu9QcOSHlBNXS5VpPuESxhGFmPyi/8idg3msENP1YAx9oXW1bpCIb0PZPd0MJ07dWCg==
X-Received: by 2002:a05:600c:310a:b0:418:5e80:a6fa with SMTP id
 g10-20020a05600c310a00b004185e80a6famr4610714wmo.14.1713260471437; 
 Tue, 16 Apr 2024 02:41:11 -0700 (PDT)
Received: from aquecedor-3-0 (122.64.114.89.rev.vodafone.pt. [89.114.64.122])
 by smtp.gmail.com with ESMTPSA id
 s4-20020a5d5104000000b00346f9071405sm12019044wrt.21.2024.04.16.02.41.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Apr 2024 02:41:10 -0700 (PDT)
Date: Tue, 16 Apr 2024 10:41:08 +0100
From: =?iso-8859-1?Q?Jos=E9?= Relvas <josemonsantorelvas@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [REQUEST] Add support for Intel DPST (Display Power Saving
 Technology)
Message-ID: <Zh5HtM6vG2xYsrT5@aquecedor-3-0>
References: <ZhADkdyItNEuoxKN@aquecedor-3-0.lan>
 <87sezlzqib.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87sezlzqib.fsf@intel.com>
X-Mailman-Approved-At: Tue, 16 Apr 2024 12:02:32 +0000
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

On Tue, Apr 16, 2024 at 11:00:12AM +0300, Jani Nikula wrote:
> On Fri, 05 Apr 2024, José Relvas <josemonsantorelvas@gmail.com> wrote:
> > The best approach here would probably be to expose a similar attribute to amdgpu's 
> > "panel_power_savings", with a scale that controls the feature's aggressiveness,
> > then update userspace tools, including power-profiles-daemon, to set the value
> > based on the intended energy scheme.
> 
> I don't really know what panel_power_savings does or how it works, but
> clearly it's not how this particular thing works on Intel
> hardware. There isn't a trivial knob you could adjust.

I've investigated this further. AMD's marketing name for it
is "Vari-Bright" and, on Windows, can be controlled through their gfx
control panel, with a 4-level slider. Internally, it seems to be called
"Adaptive Backlight Modulation" (ABM). It increases the brightness of the
image to account for a lower backlight level.

I had a cursory look at the amdgpu driver, but I'm not sure if the algorithm
is there, or if its handled in firmware.

> Where you have to add an API for reading the image histogram, add an API
> to set the image enhancement parameters, and how that function works is
> userspace policy that needs to be implemented in userspace.

Hmm... this could be handled by a daemon. Said daemon could hook into
PPD's state to check if it should be trying to save power.

-

One more question. Some documentation refers to 
"OPST (OLED power saving technology)". It's my understanding that this
uses the same hardware blocks and APIs as DPST - only the algorithm
in software is different. Userspace would need a way to distinguish
OLED panels from LCD panels so it can use the right algorithm. Is
there a reliable way of doing this? 
On my Thinkpad P1 gen 6, the OLED exposes a standard intel_backlight,
which actually controls the PWM. Afaik, there's no other way of
telling OLED and LCD apart in userspace.

José Relvas
