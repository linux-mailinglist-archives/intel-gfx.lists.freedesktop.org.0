Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 534378BE95F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 18:41:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10769112515;
	Tue,  7 May 2024 16:41:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ALSCIYin";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD8D4112514;
 Tue,  7 May 2024 16:41:50 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id
 5b1f17b1804b1-41b9dff6be8so22752425e9.3; 
 Tue, 07 May 2024 09:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1715100109; x=1715704909; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=ytJt35WwG4YYn6Cmseo813FCLf/U2RSRUTEsQBUO7Rs=;
 b=ALSCIYin8E6vr7irOPnpgnpHvfbjMOHousV1FK+dUptikRMbwm62JvwGftcP1u/bxD
 rsSiUUPI+tSvVHqxTrSelV4tS9eco6JfAP/zesHgK2dyFErSWvFQimSRsEYF6QNMu4xR
 JBIhwH+527F4NzXenhAMas2A8ZBP8Mh3hRmtr0tSkZ3V1ZcDMuukhEUYOX3w+qYpP96t
 E93ju9oK7Rx5SyhVLc4fhtXxpzFh/kN1WuBSpfWXzf1e6CYn6M5Otg4s5Dnda3fSQDJs
 H+CdKkdFusYJB1NCHn0VtnSjufxXMrRIf0HCivhRbXwPpmGxRMXlF5mIbqt3Ua5AGnyx
 aUjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715100109; x=1715704909;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ytJt35WwG4YYn6Cmseo813FCLf/U2RSRUTEsQBUO7Rs=;
 b=hrxJlHKANzdW84LA5jAUYmxJag1hUD8rTeSVLRRB68PtOioDYWKGE2q2RBF9XPK/Tf
 wUz/4D5vazQLREkwZrXLlrS7fURRrP8gt1pm6ReblYOt6RPHnCkKHpI9Uikah4ouj3PR
 oE4f9zzHu/6fG+a1bK7GIJwH5df7H2dAYFRSTdpnlP0KH9xGL57rTdNUDI0fLoVWlPFl
 nj4X5v9ft1he5eUNHWvyLplKB+AAniqbGJ+ESlgNyQVTk9tNmQW8Mni7asWM8AQ/Q/C1
 V47IfbGWjpAgc6pt0DAD4J898DwnMS7U3GUHw6qvhTu7l1ZGsSfcmdE5mLjjZciA+2FD
 Zr3w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVPSdriXlg5PKX4itjaQaDnHSNDqgEM3EiMyIBYNUrfIH7ToN5sTo20InI86KoFS+XpoeB/RxTHKNkwZUtSLUWZSEFZGUW7sg3L2n8hoMRT
X-Gm-Message-State: AOJu0YxABdTEGRwIw9UaCoCFsx5uaDehBU95ZFZ30zQkcVq0fQM2Ku6d
 ptYYlX1XWyetAo4DpJINksMOm7BJzBu/gEy4NWGL0lzjvE2GMZbk
X-Google-Smtp-Source: AGHT+IHGrwTJsm7a+Ay7lvefvuvua1QIJrpICZ3cNOQ8JYLXm78PlK4RnipPV8PDu7tta/gWa8vRtg==
X-Received: by 2002:a05:600c:45c9:b0:418:f826:58c3 with SMTP id
 5b1f17b1804b1-41f71cc92e0mr2910715e9.15.1715100108928; 
 Tue, 07 May 2024 09:41:48 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.78])
 by smtp.googlemail.com with ESMTPSA id
 z5-20020a05600c0a0500b0041bd85cd3f2sm20058683wmp.19.2024.05.07.09.41.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 May 2024 09:41:48 -0700 (PDT)
Message-ID: <af0c569e-c612-4dc6-b15a-d5e732b6bb0d@gmail.com>
Date: Tue, 7 May 2024 19:41:42 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 2/3] drm/xe/display: allow creation of case
 I915_FORMAT_MOD_4_TILED_XE2_CCS type framebuffer
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 "Chery, Nanley G" <nanley.g.chery@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Graunke, Kenneth W" <kenneth.w.graunke@intel.com>,
 "Souza, Jose" <jose.souza@intel.com>, "Mathew, Alwin"
 <alwin.mathew@intel.com>, "Zhang, Jianxun" <jianxun.zhang@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
References: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
 <20240506185238.364539-3-juhapekka.heikkila@gmail.com>
 <ZjpR203p3wcy8yW0@intel.com>
Content-Language: en-US
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <ZjpR203p3wcy8yW0@intel.com>
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

On 7.5.2024 19.07, Ville Syrjälä wrote:
> On Mon, May 06, 2024 at 09:52:37PM +0300, Juha-Pekka Heikkila wrote:
>> Add I915_FORMAT_MOD_4_TILED_XE2_CCS to possible created tiling for new framebuffer
>> on Xe driver.
>>
>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> ---
>>   drivers/gpu/drm/xe/display/xe_plane_initial.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>> index 9693c56d386b..59adcd15eb31 100644
>> --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
>> +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>> @@ -145,6 +145,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
>>   	case I915_FORMAT_MOD_X_TILED:
>>   	case I915_FORMAT_MOD_Y_TILED:
>>   	case I915_FORMAT_MOD_4_TILED:
>> +	case I915_FORMAT_MOD_4_TILED_XE2_CCS:
> 
> Are we actually expecting GOP to enable compression?

This came in the wrong place, it's not needed here.

> 
>>   		break;
>>   	default:
>>   		drm_dbg(&dev_priv->drm,
>> -- 
>> 2.43.2
> 

