Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F518BFE00
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 15:08:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 781B210FD5D;
	Wed,  8 May 2024 13:08:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fvcg0Mxm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E0D110FD4D;
 Wed,  8 May 2024 13:08:24 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id
 5b1f17b1804b1-41ba1ba55e8so27760235e9.1; 
 Wed, 08 May 2024 06:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1715173702; x=1715778502; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=892xtprlFxlxrBkop3HK4NPVZZC+3lK4rHDc4lstyNc=;
 b=fvcg0MxmbyyjsF+caO+AkJgq0OU9S+FYzoOnv/OY6W7ZO2UrGq7/1uR3Yemp+gGOxz
 gB9tYVYKWZ0/Mb3wVNDz5aB9Q3nZWubumvr2mcYQdq0Zl/5u9PcNw1AuO5OmoDzKtrMn
 ly5/MvH8VApY0oyxllzXk/4RPRjKqsTW07n16DAk7RGKhWE1NRRNtM98okwVDvKcly9x
 idFi3FJMEJ1Gd+ORu1fnbS05ujyJlwWtEYieMzIRd33bUWU5ZIFNIi4osSYnSEFhfork
 bPXcxkbBTzH/cSzS+nb7vo3Wo7O6QunEkrww97rbZ0RynvxUpTBb87cxLqBGtqy/GVrK
 +N7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715173702; x=1715778502;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=892xtprlFxlxrBkop3HK4NPVZZC+3lK4rHDc4lstyNc=;
 b=dpFN5YVQGYZcyt2VX3R8edXBwHNVMHB4fXjLCv2Xofg0jQ9szgF5voRCykF5AMHTHn
 +++CQMpij888otFby5Nr1dZYQOH1pXq8jucQV3xFBxcISqecmEDjwf+Mo+eCaL6eIB/b
 MSepTJslaZdrlQG5Z3ezOaNWjxAhENP5TCDILqEaPn1t2te1Wot392BzZYNYTPBSx1zp
 grVGtLymWZqMh6RdISxDdS5stX2yDsAEKoSV7jiCv0qPV1jxRS+Htg/1dUsSh8SmNX4U
 qoLJ/HQG8WIlY2hRnpYvvNv1amUDghstPUvWWqvvV1MD5deZLK4nbpGbuti1k5/y+gZ4
 pv0g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVBUePQUsVbZe3MlC4sNhSJx6mzyepNZIVxAXTp9z3/ybGvqE1+y5CoQJ1h98y9PNYuf+hdTs/WkM//RO0fnHwBgL/v4e8jOltKQcQsfWfS
X-Gm-Message-State: AOJu0YztTT+9WnrcOqNGVdNF1eUWCu0IsCtGLiGWocEEz4dg+uzKaMtY
 buWw3M0y8DE5Z8lc1TDNtoSJx6syQvfAq7hocXeBySaF6gBBX+A+
X-Google-Smtp-Source: AGHT+IHHA+fbjgfDZnKrn++/3KmCFZ470zke3tBt6rj5CkdL889kzX5xAtsJIOvqnYKqCGaNU+C2Hg==
X-Received: by 2002:a05:600c:19cd:b0:419:d91e:ba41 with SMTP id
 5b1f17b1804b1-41f723a0d39mr22470815e9.32.1715173702146; 
 Wed, 08 May 2024 06:08:22 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.86])
 by smtp.googlemail.com with ESMTPSA id
 5b1f17b1804b1-41f88111028sm23125305e9.33.2024.05.08.06.08.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 May 2024 06:08:21 -0700 (PDT)
Message-ID: <f2de8f4e-7e16-4832-92d3-d702b632aed2@gmail.com>
Date: Wed, 8 May 2024 16:08:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 0/3] Introducing I915_FORMAT_MOD_4_TILED_XE2_CCS
 Modifier for Xe2
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 "Chery, Nanley G" <nanley.g.chery@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Graunke, Kenneth W" <kenneth.w.graunke@intel.com>,
 "Souza, Jose" <jose.souza@intel.com>, "Mathew, Alwin"
 <alwin.mathew@intel.com>, "Zhang, Jianxun" <jianxun.zhang@intel.com>,
 "Syrjala, Ville" <ville.syrjala@linux.intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
References: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
 <20240507225657.GI5615@mdroper-desk1.amr.corp.intel.com>
Content-Language: en-US
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20240507225657.GI5615@mdroper-desk1.amr.corp.intel.com>
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
Reply-To: juhapekka.heikkila@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 8.5.2024 1.56, Matt Roper wrote:
> On Mon, May 06, 2024 at 09:52:35PM +0300, Juha-Pekka Heikkila wrote:
>> These patches introduce I915_FORMAT_MOD_4_TILED_XE2_CCS modifier, which,
>> from the kernel's perspective, behaves similarly to `I915_FORMAT_MOD_4_TILED`.
>> This new modifier is primarily intended for user space to effectively monitor
>> compression status, especially when dealing with a mix of compressed and
>> uncompressed buffers.
>>
>> The addition of this modifier facilitates user space in managing compression
>> status, particularly when utilizing both compressed and uncompressed buffers
>> concurrently. To leverage compression for these buffers, user space
>> applications must configure the appropriate Page Attribute Table (PAT) index.
>> Display engine will treat all Tile4 as if it were compressed under all
>> circumstances on Xe2 architecture.
> 
> I may have missed some discussion about this, but I thought the previous
> consensus was that we didn't want/need new modifiers for compression on
> Xe2?  If a userspace client (or the display hardware) receives a buffer
> of unknown origin and unknown compression status, it's always fine to
> select a compressed PAT when binding the buffer to read since even for
> uncompressed buffers the CCS metadata will accurately reflect the
> compression status.  Unlike Xe1, where generating content without
> compression enabled would leave random garbage in the FlatCCS area, Xe2
> will set the corresponding FlatCCS to '0x0' for each block, indicating
> uncompressed data.

UMDs have been wishing solution for situation where they receive shared 
bo with unknown compressions status. Problem would arise when 
uncompressed buffer is shared and it's mapped as compressed while 
process which shared bo still would use it as uncompressed. One who 
mapped it last will have correct content on surface while other will 
have have semi-random garbage.

 From what I understand of the compression specifications, all buffers 
should indeed be treated as compressed unless they fall into one of the 
specially listed categories, which are primarily display-related. I 
can't say if this patch set is what is needed to solve UMD issues, I 
don't know why wouldn't user space treat buffers as compressed by default.

> 
> Can you explain more what the benefit of handling these modifiers
> explicitly is?
> 
> 
> Matt
> 
>>
>> Notably, this patch series omits support for X-tiled CCS and linear CCS
>> for Xe2, neither of which is supported by display engine. X-tiled CCS
>> offers stateless compression making it less likely to be extensively
>> utilized. Linear CCS does possess state, but currently lacks expected users.
>>
>> These patches aim to enhance the flexibility and efficiency of handling
>> compressed and uncompressed buffers in Xe driver, particularly
>> catering to the specific requirements of the Xe2 architecture.
>>
>> Juha-Pekka Heikkila (3):
>>    drm/fourcc: define Intel Xe2 related tile4 ccs modifier
>>    drm/xe/display: allow creation of case I915_FORMAT_MOD_4_TILED_XE2_CCS
>>      type framebuffer
>>    drm/i915/display: allow creation of case
>>      I915_FORMAT_MOD_4_TILED_XE2_CCS type framebuffer
>>
>>   drivers/gpu/drm/i915/display/intel_display.c       |  1 +
>>   drivers/gpu/drm/i915/display/intel_fb.c            | 10 ++++++++++
>>   drivers/gpu/drm/i915/display/skl_universal_plane.c |  4 +++-
>>   drivers/gpu/drm/xe/display/xe_plane_initial.c      |  1 +
>>   include/uapi/drm/drm_fourcc.h                      | 12 ++++++++++++
>>   5 files changed, 27 insertions(+), 1 deletion(-)
>>
>> -- 
>> 2.43.2
>>
> 

