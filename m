Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2BBB393A2
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 08:10:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2693E10E01F;
	Thu, 28 Aug 2025 06:10:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Nc40Y+5B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F88810E01F
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Aug 2025 06:10:50 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id
 a640c23a62f3a-afe84202bb6so63230266b.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Aug 2025 23:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1756361448; x=1756966248; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
 :cc:subject:date:message-id:reply-to;
 bh=c5s2MMXuiOg5nGJ7QuBLczFPiM2lZQeU9+6vrDAtE94=;
 b=Nc40Y+5BKgXeac2EVpNb1oGftsWP3HNmHQACjymcThX2B61UayF0iUc9PkFZE9haTk
 tjo6EvYrVLuSSFxNN0H+mD8tZdzQzRQiRPEVCvxFgCk5wZFaNIMp5LGuU+LBeALErK69
 DwQkH+3XQw5lHkTiWWtQ8KnenfDqLmkHsNll7f7wD8t7xfu3AuxFYN5r4a+ipbujf8yq
 DE48jyLh4SANyUYUB2o2aaEyVDZhNIodw9whsbwAZwYgCP0137DgVzoEDm9aSrIjaE6s
 7VleqF3RULVfpKYPuo2BnFh6MSJF4utHR37S2lXiPfKmQIQZjhZVMR8d5CoF6cmg9CdQ
 3NnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756361448; x=1756966248;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=c5s2MMXuiOg5nGJ7QuBLczFPiM2lZQeU9+6vrDAtE94=;
 b=BLWHKZde8izE50iFxXAJ3RAzBtOF2c5S1bUE5VOvayQX4vjGGDw0BlIw/dZAkY6ZOr
 9voSowPgDEeI28GNLq5nHuO4w3z+sfv1hpteN+xNmpaC2cV3kOtFPjf3FswS5Gbc449B
 JYEVuOdpC8X3qdpwHqVrlruGw/K26lymMZ/WnguL2904CwAOzP7oi20LomUXjIGrmRTu
 rQBnGhyRDF0pmsWAVCeSSLpXAapetx7ru2sQpwP8ggMCc9ywpegtyX7MsWTljKSdZf1b
 Ws+hVCBLCc7KGx8BA1yrUwFbLWQtzPLIAh7Ii2st0QXycpWNpolUXriuz5/W2GKp/oVi
 V4Fw==
X-Gm-Message-State: AOJu0Yzq1RIw0Is/3ByxXg1EODQkpqY3zXjVTOvGoG2djmrtJcSUCAmL
 Gy2OQO+v3H30D8ufcu3dF9mv7MQYk+Bx8p7nQI4wUD0NKPbJiieGOSYF
X-Gm-Gg: ASbGncu5KltxiAshorfGjkvqXfVbWOuRSfbvcXqDHuB7BLWzWIQ7ZbE+WWZYwknjenD
 SBubfEtVFKHeCHqwOYPeqaOdMliBgNSAL6QgZ2paiUlaFB1AqzlNS+mIkQeYcq5cTkEVMSgrFv0
 Vm+3uFd6IChLXAZGZAooh4xEmlyBLOhsL4g7h82yS0pz+W4UwvvXuvVyL0P2awW5xeMxpUOU8lo
 EBgbfXjAIn2dbX40PHEdehpQG63vGi7Hd77VyKy1H/AFG/dvWvApcaFcB1b1ghLD0ZHuW1EURyz
 2mtr8Na/AludcwBLfSDZBtsChtac2n0aCDlF2iPJd5UnJo3+RU/NVFaWM1jPCm0YZfY0hzQAOcI
 OMm2PkPENTbyBpFDigzwZ2fefeLS5E0cB+nSSSkn1vt/ICIwsjfYlavT2yFdWGXGkGyJCRGtxUy
 cRi2p5sg==
X-Google-Smtp-Source: AGHT+IHAxgMAJT1QOW6dTYGJwUU/9nVZcWFwsZj60x33zxzk42O+Nn/DCojQZUJj12IBQXKF4kHjzQ==
X-Received: by 2002:a17:906:7315:b0:afd:f70a:1d26 with SMTP id
 a640c23a62f3a-afe28f175e0mr2067947566b.24.1756361448076; 
 Wed, 27 Aug 2025 23:10:48 -0700 (PDT)
Received: from [192.168.0.52] (217-62-96-139.cable.dynamic.v4.ziggo.nl.
 [217.62.96.139]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-afe6bb1337bsm948039666b.107.2025.08.27.23.10.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 Aug 2025 23:10:47 -0700 (PDT)
Message-ID: <d0542c33-e4ce-493b-8e08-78c3b7c3ce43@gmail.com>
Date: Thu, 28 Aug 2025 08:10:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Issue or bug concerning DRRS on old i7-4980HQ
From: =?UTF-8?Q?Ren=C3=A9_Herman?= <rene.herman@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
References: <3aebffd3-b3b7-4c3c-a7ac-816965d0204d@gmail.com>
 <77f3386d-756b-4cca-b317-1b3c5ad725fb@gmail.com>
 <b2250460639d81b79f15995c9769eac21849766b@intel.com>
 <d9d1a7ff-307a-4964-98bf-209781ffc6fe@gmail.com>
 <f9b10acb19bbe19813b4bebd9ac666b397d9c7c0@intel.com>
 <9436a617-ae53-4702-9ac3-27d9c1267626@gmail.com>
 <57adde32e4fa7fc4c74d8cba39249af1399de609@intel.com>
 <6020c152-9de5-40cc-aedf-7024df45d27c@gmail.com>
 <2d1e5f5e70d67361e3415dbbd764bfc0a4ff5a17@intel.com>
 <9b7e2c8a-e728-4d10-8787-76d4834d1e26@gmail.com>
 <6f55d851-53ac-403b-b2e0-834df94b16bf@gmail.com>
Content-Language: en-US
In-Reply-To: <6f55d851-53ac-403b-b2e0-834df94b16bf@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

On 21-08-2025 21:24, René Herman wrote:

> We managed to install the 6.16 mainline kernel and generate the 
> requested dmesg and VBT logs, with the requested "drm.debug=0xe 
> log_buf_len=4M ignore_loglevel" kernel parameters. They are attached at
> 
> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3441#note_3064300
> 
> Hope this helps. Many thanks for looking.

Hi all.

Was this useful?

Kind regards,
Rene.
