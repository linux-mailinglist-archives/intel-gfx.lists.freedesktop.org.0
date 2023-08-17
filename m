Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8BC77FE8C
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 21:33:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2467910E0B5;
	Thu, 17 Aug 2023 19:33:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17F0810E514
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 19:33:38 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id
 2adb3069b0e04-4fe0d5f719dso108867e87.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 12:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1692300816; x=1692905616;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=PTeIB9pYid3fqigxOWDYDIY+mY1GdyvBJZisg+HzkYA=;
 b=fbU/9t3RDvtxuksYoldZXzqJDboq8G8kNUyAl3ZwtPtbJWICLy6BJ+DuaIUMT7npJN
 Gjx7Y9oAQNiKfZF9BCKesyPWepm0nwn8mYIiv7BYKTrKwFQWFQ43ruoadZpw4phnGhSZ
 bSY1KyR16CE2ftaOs5+J+PHffdf6F/rx9bNFuGOSYwbWdIzquGljtoeGckrhQn8pSEcf
 PP69YFAXpke+YGIy1mp4d2ZZqXgcqMFnTQ8PQx50TS1gkqZRXoFUbTn8Q03RpWYjqkmw
 KeK6BcX/+HjjSKPKYa70Oi01T9fQuJ8vW3c3XY1joLKo4xxM4k1rCNECfhfcTm9f9m3I
 k11A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692300816; x=1692905616;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PTeIB9pYid3fqigxOWDYDIY+mY1GdyvBJZisg+HzkYA=;
 b=OpCUFXZGJzCBwI5D4RKct2WCriC2KjrWCLxOls1bI/phuoJpT7uMEdJXfAnJ6lMn4D
 UXGPY97J4kTr1oJjkdXRGPuadLONKarMheHV4slmLEox/VoN/XfxiledAMAiQOteLpuQ
 vhTX9Xz9kRE8xGGk93hMlpFgbHXttTXiBIy3/MXDCrCMZ1IUDLzynarqJXTOyAfgGGeR
 OLhytlvJGDQS+KXEBGAl2n0o2oPvIPl/Zbs7pCrmo668YowHIpqGr2w7agjkWhnznUhB
 XZV7Dto4liS2WkeAQ/b0mKiX6OobhycbeYGfyKH6LtmCveWMOVq8xYXQvyHxF+MP6miQ
 F6EQ==
X-Gm-Message-State: AOJu0YwIHrXD09WLkTJUt5FU7duZHxh/d+9wjFvGlWhVSoigdov6ORs/
 5QgNI280uaJQancX/YlBS2Sv5g==
X-Google-Smtp-Source: AGHT+IEUSC1pYvaO/o6myhvtL0cu5cdObE4VqE+nWLXGFFDln+T9PAqaBXRKiRW6sApggcbGUe+tDQ==
X-Received: by 2002:ac2:4ec3:0:b0:4fc:6e21:ff50 with SMTP id
 p3-20020ac24ec3000000b004fc6e21ff50mr160888lfr.55.1692300816221; 
 Thu, 17 Aug 2023 12:33:36 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
 by smtp.gmail.com with ESMTPSA id
 d16-20020a056402001000b0052565298bedsm138330edu.34.2023.08.17.12.33.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Aug 2023 12:33:35 -0700 (PDT)
Message-ID: <d9f9c272-ce9b-4599-bb11-1c026087ead3@linaro.org>
Date: Thu, 17 Aug 2023 22:33:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Ser <contact@emersion.fr>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20230729004913.215872-1-dmitry.baryshkov@linaro.org>
 <20230729004913.215872-4-dmitry.baryshkov@linaro.org>
 <20230802185547.GC32500@pendragon.ideasonboard.com>
 <a32ce695-038f-0ef8-3584-5bd1ba528131@linaro.org>
 <20230802191351.GA1407@pendragon.ideasonboard.com>
 <DE2B4523-D16C-4AFC-8352-212B23548DD5@linaro.org>
 <b6oOVz2YMIG4hJDWhq9lTh6R2HYcrpRwHENhplig9KSQMD8dIjTgC5KdH1Ij3URgV2HESp67Ax7QUsByGjMLouvbs-5q7PiPRdLkgJz6Fwk=@emersion.fr>
 <ADjuOeqA6575DKutMPaR9mW9rLhm-wjLc4ruoUkNwImf-GB90FdwDB7v7y6LFdzVG3BC4R52A0RUtStK4_smmGYTUs3UPDOX4T4Zl2YHkxE=@emersion.fr>
 <20230803204459.GD27752@pendragon.ideasonboard.com>
 <TR8IBdXbd0C4U8Z4zf9ZLEH66QMutWs0QAAkPnMlKiOvgEZCk6AfEIPcIfRC555XWs8eSzeCCCW9R-3NwxZg6hDhPvPseAgAULAdUQ6epDA=@emersion.fr>
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <TR8IBdXbd0C4U8Z4zf9ZLEH66QMutWs0QAAkPnMlKiOvgEZCk6AfEIPcIfRC555XWs8eSzeCCCW9R-3NwxZg6hDhPvPseAgAULAdUQ6epDA=@emersion.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/uapi: document the USB subconnector
 type
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
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>, Janne Grunau <j@jannau.net>,
 Robert Foss <rfoss@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Andy Gross <agross@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>, Leo Li <sunpeng.li@amd.com>,
 intel-gfx@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Bjorn Andersson <andersson@kernel.org>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, linux-kernel@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Simon, Laurent,

On 03/08/2023 23:46, Simon Ser wrote:
> On Thursday, August 3rd, 2023 at 22:44, Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:
> 
>> On Thu, Aug 03, 2023 at 03:31:16PM +0000, Simon Ser wrote:
>>
>>> On Thursday, August 3rd, 2023 at 17:22, Simon Ser contact@emersion.fr wrote:
>>>
>>>> The KMS docs describe "subconnector" to be defined as "downstream port" for DP.
>>>> Can USB-C (or USB) be seen as a DP downstream port?
>>>
>>> To expand on this a bit: I'm wondering if we're mixing apples and
>>> oranges here. The current values of "subconnector" typically describe
>>> the lower-level protocol tunneled inside DP. For instance, VGA can be
>>> tunneled inside the DP cable when using DP → VGA adapter.
>>
>> Doesn't this contradict the example use case you gave in your previous
>> e-mail, with wlroots stating "DP-3 via DVI-D" ? I understand that as DP
>> carried over a DVI-D physical connector, did I get it wrong ?
> 
> No, this is DVI carried over DP. DP cannot be carried over VGA/DVI/HDMI,
> but VGA/DVI/HDMI can be carried over DP.

Please excuse me for the long delay, I was on vacation.

Several notes on the subconnector topic.

For TV and DVI-I we are really identifying a connector (or a part of the 
connector pins) present on the device.

So, we can have e.g. following combinations (type / subtype):

DVI-I / DVI-D (digital part of DVI connector)
DVI-I / DVI-A (analog part of DVI connector)

TV / S-Video (full S-Video connector)
TV / Composite (either a separate Composite connector, or shared with 
S-Video)
etc.

For DP unfortunately we have mixed everything together.
The physical connector present on the device can be DP / miniDP or USB-C 
(or micro-USB for SlimPort).

The physical protocol can be DP or DVI / HDMI (but only for dual-mode DP 
ports). Over USB-C link the DP can be transferred using DP or USB signal 
levels.

And last, but not least, we have the dongle / display connector type, 
which can be VGA (for active DP -> VGA converters), HDMI, DVI, DP, etc.

If we were designing this from the scratch, I'd say that we should 
encode physical connector type to DRM connector type and the dongle type 
to subconnector. However AMD and Intel drivers have already reused 
DisplayPort connector type for USB-C connections. Subconnector type 
represents (if known) the type of downstream / dongle port. I'm not 
going to judge whether this was correct or not. We have to live with 
this and behave in a similar way.

We have been looking for a way to document that the corresponding DP 
port is represented by the USB connector on the device.

Consequently, I believe the best way to document it, would be to use 
DisplayPort / USB, when there is no dongle connected, switching to 
DisplayPort / HDMI, DisplayPort / VGA, DisplayPort / DisplayPort, etc. 
when the actual dongle / display is connected and then switching back to 
the DisplayPort / USB when it gets disconnected.

If this sounds good to all parties, I'll post v2, adding this 
explanation to the cover letter.

-- 
With best wishes
Dmitry

