Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DACB1A70E
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 18:09:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 539D710E20D;
	Mon,  4 Aug 2025 16:09:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FhVmUHUu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
 [209.85.218.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D48B10E20D
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Aug 2025 16:09:37 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id
 a640c23a62f3a-af967835d0aso193656566b.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 Aug 2025 09:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1754323776; x=1754928576; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=MwFLfKa32+yr0sN1Vqx8hSd4P/IdG1DxhJpRQ7T5IIg=;
 b=FhVmUHUuaLjILIDdH2tcRoPhmPa5mp63s2jhhlfGyZZMLUrIRcB2jiXNhx4O7FxDyr
 bIkkWsysg2vn2sUWgYJd84lY1XC0owTQrMqHIyFEMtEdEDaNqUWm22fqlgm0p35rW+RP
 lqSlUx9ZsA0D6Kg0PAReMVkPHPU5bGdpO0bwRv+/sZ1rnb4sfwX4C8o7rZhLvybJ6xyo
 qopZry+EclbbDEeScedu6Qt+srPA/5c4jP0FZyijimWiPEdvrTF/KaD4v4+ebMzj3gx7
 Fa9ZNr5VWVkOofRM0JrGRPmwNRRS+fyQdOmptN1WskmUeu8XJ1yWIN4ZviIHBL59jS+R
 uk2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754323776; x=1754928576;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=MwFLfKa32+yr0sN1Vqx8hSd4P/IdG1DxhJpRQ7T5IIg=;
 b=ZBUYQMAkjAdAM02zmyoPr71jtk9QVg++wMoRDwiPYaWYVXgv3dCWzCDA3Zbr1o6E7/
 Xbdw66Nxbb2gn43S2DjaJggJM1M8gzFij2QzmcPao/nhbDWGdSQ7eeLq/LGi9bEd/aU/
 B7GF9nWXZB5rX0rRbB48O4Uf/FuFYIvfvqrWGoP2fSI3wzs8rP/K1O0Ug/bikuKsmD5D
 SqiyaNSOxZm69IxOt9IGwIqDRgjiOHoMVdwInt2EVICqCjP6Cxl4SuRaX2KCDm4bFIHi
 NJhCWMZnVcJL5ldRVcFXx8HAAW1PR23nILrT2A71DDzGVZarnf6lz8AFyUtJL3whS57V
 pD8g==
X-Gm-Message-State: AOJu0YzY5Ol5ILvY2H1Sc2nfg9dDtl0xxsAPQs5O1LMfvjIifG5ZTHsn
 i/V4N8x0BdCWUMpgR9MVTQS3cqxXyUkD3m/xjMjJ92wdbIVHt709T0Ot
X-Gm-Gg: ASbGncv0XB7+aRk52KjOJbtTSizrHU1QIYeESbdFn7S5ixFZyIDwICiubv+Qmqql7rs
 FgJA3f/SI8FCERegXZYbaUWuABQe0St6lzZRWySsuBPdS7uAEfVis1TJqSuhNmw2lLAFYWyBnJX
 TBMsO+VzswfjqYAO89ZNw/m0gVu52pyz5jbsrV9xmJA87x4s0H+c+oOK2iD/yRFsJwpXe2NZFxE
 s7RwAQjPbqBfeTLVXmzgXC7oKyjYrKnfK7sFoHIZE++OsjjCcRZktTgdC+V1F50vvLjTTdg7MoC
 QajZ0oDJpTapTrPPOPAr4+mP1oIAXZ2JVI73y0JkOzJhbMZrSJ9bZBiYug3PzTxnyFFE+byXfoO
 th6HPVDHoU1s2ICv6dxqOwi9cDzi0OD4voEuQ5k8bEoKRx7LbqXiWzhIKWjoxhRiqgJCV0ts=
X-Google-Smtp-Source: AGHT+IEzoRZhb/rGMh/p+9e2PSAlMsAkdQ0T11kPtQGtNQ9JJP396ltjVcyntIhRuPj0iPTYuAxoWQ==
X-Received: by 2002:a17:907:3d86:b0:af9:1122:6af0 with SMTP id
 a640c23a62f3a-af9401845d4mr1000636766b.30.1754323775365; 
 Mon, 04 Aug 2025 09:09:35 -0700 (PDT)
Received: from [192.168.0.13] (217-62-96-139.cable.dynamic.v4.ziggo.nl.
 [217.62.96.139]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-af91a243728sm755782066b.138.2025.08.04.09.09.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Aug 2025 09:09:35 -0700 (PDT)
Message-ID: <9b7e2c8a-e728-4d10-8787-76d4834d1e26@gmail.com>
Date: Mon, 4 Aug 2025 18:11:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Issue or bug concerning DRRS on old i7-4980HQ
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
Content-Language: nl
From: =?UTF-8?Q?Ren=C3=A9_Herman?= <rene.herman@gmail.com>
In-Reply-To: <2d1e5f5e70d67361e3415dbbd764bfc0a4ff5a17@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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


On 04-08-2025 18:03, Jani Nikula wrote:

> There's been a bunch of updates on DRRS in the past year, and I have
> yet to see a dmesg with debugs enabled reproducing the issue on a
> recent kernel. We need data before doing anything else. The
> discussion in this thread is not actionable. For all I know the
> issue could've been fixed already.
I'll try and talk the (new to Linux) user with the hardware through 
installing a current mainline kernel, but expect this may at least need 
to wait for him to be back from that mentioned vacation. Will follow up 
if there's anything to report.

Regards,
Rene.
