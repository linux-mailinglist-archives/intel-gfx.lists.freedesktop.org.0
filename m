Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A18D8836FE4
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jan 2024 19:28:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B9F210E78D;
	Mon, 22 Jan 2024 18:27:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 664CA10E78D;
 Mon, 22 Jan 2024 18:27:52 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id
 5b1f17b1804b1-40eab3912d5so15525005e9.2; 
 Mon, 22 Jan 2024 10:27:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705948011; x=1706552811; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=OwBtzI/AeDt5xC1CyPk2Z3dSoDy7FwyG/gieXJBfTk0=;
 b=Ja/OT1m1f3mZVsPj9kFygD3MeAr7E42yQtt4CJ49XXzBBQ/PcZifqqlYS0+2FJDpCw
 62SE+j2qChQdke4tSw9BQkDBuHL/N4eJctT8Dfq/vN0TH9CLg63z1fCLxlGj1BBdfHWD
 22XOyJPu733gMaWno4yL17Q/i8vnjkKhioKE4TafDPTRlfSoCOwWclewTJ3NDeQpoaEo
 eLpPZCg2xFHRhFx735FqyInkBemMwYuiZ3doXfu4TnQmKTxjsGV6wEfVgP+iM+AHyLtD
 4Zjv7nfwrANPvIju1pP9vszNo4PMXL6AQbvuEcbDvcMr2wnk3dIIo2vq7imqRXuvbWOP
 uwKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705948011; x=1706552811;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=OwBtzI/AeDt5xC1CyPk2Z3dSoDy7FwyG/gieXJBfTk0=;
 b=Zx/MJ/Fe171NCG3n7zJu0LwCvp7ydWWVEt8mjAYserRNzi/GZ97xOIoEkZF2Qr1qqi
 eijvr53MhiYZrfzRx7TtM414W+NVB3OpKGFIJ74XknDRPdFddiPI6MHtbWSSOzp9rxMW
 0y8VBXSPJN5bWeZqALs3fiO0Ed8HCEMOfjVe+iQKqdFcqMMJwWaQ92DsVflcF9licXwP
 Z4cHLVXXoxduRqUXo+FlRYfO3l/oC0CjxE+u11nJPGirMadV7EOwTzlrOKHme0OX1PuR
 flZLKHUbWnIq/IGWfrPOZXBY/dCJbklNwj5uApCnppbJ7jmz9yrrWnWt+t1hbcoTP2em
 BGLQ==
X-Gm-Message-State: AOJu0YyjqNF+Fc4/1NHSS7rwkIIN6Qd3Dl1Ww49RCpR4nQz+wVwZosZC
 LEXSIsMIz/o7vcM2WAKMMN0fzarCM/yMT0yIFSIxAR+T9f7sihozjYZULlqg985bqQ==
X-Google-Smtp-Source: AGHT+IHvlRG36+M9lHI1sh2LeyCROCJpqrzStx2/pkRCaI136F7dGwGGIYu16fo5e6BRyM6NLJ0OrQ==
X-Received: by 2002:a05:600c:3c9d:b0:40e:6b7f:5ca9 with SMTP id
 bg29-20020a05600c3c9d00b0040e6b7f5ca9mr3317848wmb.80.1705948010582; 
 Mon, 22 Jan 2024 10:26:50 -0800 (PST)
Received: from [0.0.0.0] ([134.134.137.86])
 by smtp.googlemail.com with ESMTPSA id
 7-20020a05600c248700b0040e526bd5fdsm3564564wms.1.2024.01.22.10.26.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Jan 2024 10:26:50 -0800 (PST)
Message-ID: <a8db92fd-71b4-4ba8-b4a0-901ca68a4b64@gmail.com>
Date: Mon, 22 Jan 2024 20:26:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] drm/xe: store bind time pat index to xe_bo
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20240118152745.162960-1-juhapekka.heikkila@gmail.com>
 <20240118152745.162960-3-juhapekka.heikkila@gmail.com>
 <6333556b-60ec-4233-be50-1dcb745bb89d@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <6333556b-60ec-4233-be50-1dcb745bb89d@intel.com>
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
Reply-To: juhapekka.heikkila@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matthew, thanks for looking into these. Below few thoughts.

On 19.1.2024 17.45, Matthew Auld wrote:
> On 18/01/2024 15:27, Juha-Pekka Heikkila wrote:
>> Store pat index from xe_vma to xe_bo
>>
>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> ---
>>   drivers/gpu/drm/xe/xe_pt.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/xe/xe_pt.c b/drivers/gpu/drm/xe/xe_pt.c
>> index de1030a47588..4b76db698878 100644
>> --- a/drivers/gpu/drm/xe/xe_pt.c
>> +++ b/drivers/gpu/drm/xe/xe_pt.c
>> @@ -1252,6 +1252,10 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct 
>> xe_vma *vma, struct xe_exec_queue
>>           return ERR_PTR(-ENOMEM);
>>       }
>> +    if (xe_vma_bo(vma)) {
>> +        xe_vma_bo(vma)->pat_index = vma->pat_index;
> 
> Multiple mappings will trash this I think. Is that OK for your usecase? 
> It can be useful to map the same resource as compressed and uncompressed 
> to facilitate in-place decompression/compression.

On i915 I think we did map framebuffers only once and did stay with it 
until fb was destroyed. XE_BO_SCANOUT_BIT is for buffers that are meant 
to be framebuffers? I could make it so pat index given first is not 
allowed to change for buffers with this bit set?

> 
> Also would be good to be clear about what happens if the KMD doesn't do 
> anything to prevent compression with non-tile4? Is it just a bit of 
> display corruption or something much worse that we need to prevent? Is 
> this just a best effort check to help userspace? Otherwise it is hard to 
> evaluate how solid we need to be here in our checking to prevent this 
> scenario. For example how is binding vs display races handled? What 
> happens if the bind appears after the display check?

For what happen with incorrect buffers going for display I've seen they 
are corrupted on screen but my testing is very minimal. On bspec 67158 
it just said linear and tile X formats are not supported with 
decompression on display, so it is broken config. Couldn't say generally 
how robust display hw is for broken configs. I remember Ville had found 
with TGL broken configs caused unrecoverable issues which followed ccs 
getting blocked on some steppings because it was only way to block 
broken config Ville found. I'll add Ville here on cc if he has views on 
this what's needed here for Xe2.

/Juha-Pekka

> 
>> +    }
>> +
>>       fence = xe_migrate_update_pgtables(tile->migrate,
>>                          vm, xe_vma_bo(vma), q,
>>                          entries, num_entries,

