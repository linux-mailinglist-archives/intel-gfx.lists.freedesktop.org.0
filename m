Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB397B302DB
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 21:24:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2800D10E3A9;
	Thu, 21 Aug 2025 19:24:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cDL4bemw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C59E10E3A9
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 19:24:56 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id
 4fb4d7f45d1cf-61a8c134609so1886125a12.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 12:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1755804295; x=1756409095; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
 :cc:subject:date:message-id:reply-to;
 bh=mV3uqrfy50x/ZPBglnusCHuSoZn30HhHrm490TqfWAI=;
 b=cDL4bemwUp70CTQvXDiSHbg/nyIPsoP9TKZBwxPas6njOTiz+dIlpwoUAqeJ/mSXOC
 e/o01X9jO7noZsJqWTTW53PJEq6Fnu+XYKkGKzMLeI005EpsHbR8MQWvuBZWPV3JayFR
 3sGF/RpFSHsm1LZQx/nWSWR5Bc+gH8CcKykvAv/wSzSkX33SuKIJmrJilkonTRkdzzy+
 /B1gCrEZmdrFWSME4RGR/5yDqWormsEMtODxagb8Bkt1YVe0d067IQoqAHLBixczTjNA
 CHP/m2U9P2jO29/i/qkyukJxgUqWx0ASpC0HtowEHUftT8iu32GWERPeInZCa/9MPprS
 82Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755804295; x=1756409095;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=mV3uqrfy50x/ZPBglnusCHuSoZn30HhHrm490TqfWAI=;
 b=tVP78GTKFdmMcaOWwLAF+LPNnVtWfBIbXiYd8WjEfEc9P2ZQjs+GWz+pZjubTWzjQD
 Sb+oRH1bhsaIEj9TBa/8QGXBlHnFECeQTYCmlDt4A3MfU7h8TBy+Bp9spraHME2S9uL2
 Z0CN/Z+WPrl6Yg7PCKuJW/iGYEC0zdQJvCE7y+E+qYAJAemapPQ8a4986zsNqp8cCmfn
 fXfDJTMGnLVQJALIgpqLBxEsp+CwSchx6JvnzcgBKEbV1kt6yLOT3Ad/Ij41WRuSPfpR
 afruhoHSedKi89OM0/WnfYUoYUSNlYNCG0pLzPZfnDOSNxLs9s11Jm8mUVWqDyrJUVSf
 Ql7w==
X-Gm-Message-State: AOJu0YwHjZzTEtjD00WC2hJAFuJwRFdA8vRVdQFoW/9Cw1+LgA/xkht6
 e8jUjGazzbUKdOieNDn6PFjqFo7oSrqAOKsKw7sFY5Ww8VzGOcEltusZ
X-Gm-Gg: ASbGnctGEiD0geEgY2JCU5DBoNl7RanDWxSZQuKfDhn3K+QKtjSAp8RKVEnx4V3JTmp
 JfFh1e7g62tWH2YDBVv971ljAXgm3aqg1mmlj3enk0jzA+XU8CspRCibgI0+9MFSm5QibTOxwFM
 YVIlF26YKmWR4CcNKu3ZOf+VHaZTcJus32/Khjpx+rhDioWb7eyZbDRvTP/Y0DbgiZrY28Cj3aJ
 N3msoj9Kbr/rDi+3aFRwFOJdy5Awzaov5t2NlBmM3pkxepa0oUgQiptBfvr3LPLLPAy6NeKipJT
 LjGx4C/Mfhgxk5CnL9+x7VDfjX0+CAB0QShL3H+paWK7EtJJmOwhlB+7vJCrEksnbKp4lJpj3H6
 v/K0CKtkvUWLwPNURXGoyNy9hcuYaQGVWrtywfBJHUCMnNqU3vZQ2p2Zr1FAMP4x+XVx5zms=
X-Google-Smtp-Source: AGHT+IG5h3c0P3YB5Az1g1FDJZADWyglPAMHBqCfW/JZ41UKG4Sbgjr1hFOqJ4LcfoOAurhfOfJW+g==
X-Received: by 2002:a05:6402:5108:b0:61c:bd6:f6e7 with SMTP id
 4fb4d7f45d1cf-61c1b6f8638mr173241a12.31.1755804294786; 
 Thu, 21 Aug 2025 12:24:54 -0700 (PDT)
Received: from [192.168.0.52] (217-62-96-139.cable.dynamic.v4.ziggo.nl.
 [217.62.96.139]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-61a7560a143sm5817162a12.23.2025.08.21.12.24.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 12:24:54 -0700 (PDT)
Message-ID: <6f55d851-53ac-403b-b2e0-834df94b16bf@gmail.com>
Date: Thu, 21 Aug 2025 21:24:53 +0200
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
Content-Language: en-US
In-Reply-To: <9b7e2c8a-e728-4d10-8787-76d4834d1e26@gmail.com>
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

On 04-08-2025 18:11, René Herman wrote:

> I'll try and talk the (new to Linux) user with the hardware through 
> installing a current mainline kernel, but expect this may at least
> need to wait for him to be back from that mentioned vacation. Will
> follow up if there's anything to report.
We managed to install the 6.16 mainline kernel and generate the 
requested dmesg and VBT logs, with the requested "drm.debug=0xe 
log_buf_len=4M ignore_loglevel" kernel parameters. They are attached at

https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3441#note_3064300

Hope this helps. Many thanks for looking.

Regards,
Rene
