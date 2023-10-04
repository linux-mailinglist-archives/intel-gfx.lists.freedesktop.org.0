Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 103B97B7C9C
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 11:52:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9005788CE4;
	Wed,  4 Oct 2023 09:52:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E4E688CE4
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 09:52:28 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id
 a640c23a62f3a-99c3c8adb27so361949666b.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Oct 2023 02:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=grsecurity.net; s=grsec; t=1696413147; x=1697017947;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=LpBdpJ8X7VzR4DgZuc3I6ZNRxM/s8jQhVrggIlnN0TE=;
 b=OpAl6YI3gBia6g9XBIHN2hvlgiiNH1nYRssDUZlnnxKMLV3TXpevq2TI4XwqS8LkVj
 qLbGDSCs+N0v3eND6emiBbfbcTUi90k5LQwBWjAvsjWsu2+O5GKSh18NToiRXMFP7zre
 zLVBvpUGLh5pzssw4zyFQG3oN78EX/6VGLaRBQnHgQ3OcPhrXH0GPMNXZZmZGsQNoEAO
 CNvkUMIT63P496Tz8Hfk48TZ2AY+F/9vJ2a2Lz59OAJ7ghuBWZ/l5jmDgSRr97lPVPhO
 lq8GmqovtuPVjac9lepbUpcyRGU5cId3ybGPEeXuJAmT3J3xRuQ6CnJ/E5w/+dxo8LA0
 JECg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696413147; x=1697017947;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=LpBdpJ8X7VzR4DgZuc3I6ZNRxM/s8jQhVrggIlnN0TE=;
 b=UKMAbXiN7iVUeeaOAeeSSznas24ITm5/Q6ixRYwsl4aF18iUgp6uvHdIOGbsfbtWDZ
 yfk7UNfannf6egW/tOLhDk8OjrKmtILstzpMOtMFaPlbj06VVMIXGyGrtMfFVTMyyxZS
 HY6qaUm2u+onnHg+vQd7TJgp+zGGuC8ijO2CteuoqD4srzra3wLtn5r/kp2Avr8bN3v/
 0WLWA635RZLT4y1wmeFTynUEwRcGbw81aI9C51cMsCMeCckM35SnQgTdSAEsFFlKRMgj
 Ez95zuthp4V0UQruAMsvOMtQFvVBhXDkNY+/gVeop/ZePsMfqK+In/VrCU/GO3pGZ+O6
 RV2Q==
X-Gm-Message-State: AOJu0Yy5EtUM77OcETvCGR5g+SIi0xWSJH/OCzpBkY6iOqPY0wzUYqxR
 +sMQuzykXPEovCFs4DAH0tVdUQ==
X-Google-Smtp-Source: AGHT+IH/y2pwCfrC+TZTCXvd72rW4vJFCrlZS3nGD8iLetQ0P4uKp1MwzBZ2WI+plqupOBxZbTPhRw==
X-Received: by 2002:a17:906:2d1:b0:9b2:b765:8802 with SMTP id
 17-20020a17090602d100b009b2b7658802mr1796990ejk.40.1696413146378; 
 Wed, 04 Oct 2023 02:52:26 -0700 (PDT)
Received: from ?IPV6:2003:f6:af01:9900:f4f3:1668:1522:123b?
 (p200300f6af019900f4f316681522123b.dip0.t-ipconnect.de.
 [2003:f6:af01:9900:f4f3:1668:1522:123b])
 by smtp.gmail.com with ESMTPSA id
 d21-20020a1709067f1500b0099bcb44493fsm2537994ejr.147.2023.10.04.02.52.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Oct 2023 02:52:26 -0700 (PDT)
Message-ID: <d174ff90-4ddc-f256-d1ae-c673a64926b7@grsecurity.net>
Date: Wed, 4 Oct 2023 11:52:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US, de-DE
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230928182019.10256-1-minipli@grsecurity.net>
 <20230928182019.10256-3-minipli@grsecurity.net>
 <ef432c24-51c1-9749-b5a8-ab5f99784e10@linux.intel.com>
 <bd237dca-43b6-0f86-3df4-57fee3c6f30e@linux.intel.com>
From: Mathias Krause <minipli@grsecurity.net>
In-Reply-To: <bd237dca-43b6-0f86-3df4-57fee3c6f30e@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: Clarify type evolution of
 uabi_node/uabi_engines
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

On 03.10.23 09:32, Tvrtko Ursulin wrote:
> On 29/09/2023 12:00, Tvrtko Ursulin wrote:
>> [...]
>> Thanks again!
>>
>> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Patches pushed to drm-intel-gt-next.
> 

Thanks, Tvrtko!

I guess this implies no backport of the first patch to older kernels, as
it affects v6.3+?

Cheers,
Mathias
