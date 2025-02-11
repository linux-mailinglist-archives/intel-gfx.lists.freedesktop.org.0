Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F537A32813
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 15:10:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DB7910E8BD;
	Wed, 12 Feb 2025 14:10:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="goqaQDgW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
 [209.85.218.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEE2310E106
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 06:13:44 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id
 a640c23a62f3a-aaec111762bso1241433166b.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 22:13:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739254423; x=1739859223; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=BZwmuG6fIwYgavBTh3pe7ZVdONpeTaMmZEJ19dTNbeM=;
 b=goqaQDgW4yrS5Czl4dXiXjmAUlneVSE3zr6B63ZEeGjOMLN3grSDQpFFmGyYTRxTW4
 HFZQpHRGzEArlXbb0pJrwHZ+ZPt0wC0a78WvO+nrXNJYo6mTvYCdGL854tERXxR/o/z2
 V/fdhHUDmLNKTN0MkaPQoG81wXAumj14TgoNGfFtPXPzexJ0W0jr9/CSPGhy0P2R601P
 2BOIAwb6fZI4dvFqlb1Na9duEInYKsryeQIewYwbW9QSlj1oOq2J7NPG+XwAbdp/JW1D
 l8qf0Ok4IMhzSrvVRsweeoM2Ysbx+2lp3/dwXGQPCexXpZnroZHrTSzmMPOQX+tgrF0M
 3BKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739254423; x=1739859223;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=BZwmuG6fIwYgavBTh3pe7ZVdONpeTaMmZEJ19dTNbeM=;
 b=n29dT2OyL6ULhU89daRu3Ti4hs/hg0XtOquAIQhFq5uElimfzds1Av6JTLpjfUYiqs
 uYrdSIF9ssbxrNWd0hxUG5oQhPzEtODyaqgTBCgMMPM/D6MsFjZCYRUOA7xIKJCPp+xS
 vd4W/04mi+84ZsAOAvm7aqp0JmxKAjz+ZqLapscERRnbE0uGL5Pm4Gpnba1jdn0gTQHM
 Q5ioIp3PaIPwYSgA20cSO/N7qjgynNWn1kUCeZOIGR2Q/3gK5Tt8xvYvzedGLvYyFdcz
 rig7PqxFm8La03O+DINB6Inb6jT3HzL/IU9vVMQQn+/SrqsGWe5ZaYI+9kO1rUVEdQkE
 ZP/g==
X-Forwarded-Encrypted: i=1;
 AJvYcCUxI1CON7hr2gyryBrhFIXynO8OzaLFTGh40WOezFv9jHpgMVe8ixFGX0TGCd2Msm9UKhnTHAcbzqE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxrEVgyAYyG1qJz4bXWzO+7d9260AaLlktj7BR9UEzRrebjf6mD
 bBwlKxnQm49s8ID7xqhJoEISJgECcBWPau/R7W6ocZPNtDaxy43o
X-Gm-Gg: ASbGncvIvI7fQBTvROR/xB3UDF7W8wo03b7wHUIN4oQfUH4uB+4T4Dur5D4eoG7pTMp
 e1ElapIRy0VTQfKiS6uZLvhSubbv2WVzWvwzsr6wzKmtxNkSRTEY6dmdyNybUCvRNQYvQjRBoZ1
 jgSKIYHs5maCPcpBlzFVojDeh1d7W6bBQGVM+m70bPEwtmR8gnBC30O/JGcTkVyD3BAupW+5YOL
 M2Cbzd23VvZzsaJUHBcFC4sfiQBjicIlmA2TkMAk9RBWF9e2cndqkhbW+6+n51d4ASULDeuQVIc
 FmaXTP5Bs9XLabzqFWtBoDuKwPnXvG0zhPYfqfJn5LIUkp21FJYyiXwjsc7QIa0H59Vw3tUhMKV
 fGL3EzqaZtPS4fUu2HeOSGAP9auTvcnKftZHkLbLtWBeJRaI7o9Y=
X-Google-Smtp-Source: AGHT+IFB7sWu9xsjklaDURJ4/bdA65j/GjnV3PYnArz1cIsDnRu9QNM8/BgVaxq6KhGYLVSr9TFbJw==
X-Received: by 2002:a17:907:c0c:b0:ab7:5c14:d13 with SMTP id
 a640c23a62f3a-ab789ca28c4mr1616863166b.53.1739254422970; 
 Mon, 10 Feb 2025 22:13:42 -0800 (PST)
Received: from ?IPV6:2003:d0:af0c:d200:6033:13d7:beea:72d6?
 (p200300d0af0cd200603313d7beea72d6.dip0.t-ipconnect.de.
 [2003:d0:af0c:d200:6033:13d7:beea:72d6])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ab7bbf40b2bsm390151466b.23.2025.02.10.22.13.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 Feb 2025 22:13:42 -0800 (PST)
Message-ID: <619aec64-b191-49f0-99ce-2c2af9493e58@gmail.com>
Date: Tue, 11 Feb 2025 07:13:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] prandom: remove next_pseudo_random32
To: Andi Shyti <andi.shyti@linux.intel.com>,
 "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 netdev@vger.kernel.org, tytso@mit.edu
References: <20250210133556.66431-1-theil.markus@gmail.com>
 <CAHmME9oqvWp_Nd1Gwgyw52qy8wxztMyCpNsjByH=VnRaXqczww@mail.gmail.com>
 <Z6qGtsEdjpz4ETvl@ashyti-mobl2.lan>
Content-Language: en-US
From: Markus Theil <theil.markus@gmail.com>
In-Reply-To: <Z6qGtsEdjpz4ETvl@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Wed, 12 Feb 2025 14:10:13 +0000
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

Hi,

On 11.02.25 00:07, Andi Shyti wrote:

> actually would be better if we apply the i915 part in drm-tip
> rather than waiting for kernel releases to receive this change in
> our branch. It has been source of conflicts and headaches.
> 
> May I ask Markus to split the patch in two parts and we handle
> the i915 side?
> 

Sure, will do in a v2.

Markus
