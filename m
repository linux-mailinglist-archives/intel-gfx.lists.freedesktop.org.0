Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A04EB19FA5
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 12:23:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3628210E0D8;
	Mon,  4 Aug 2025 10:23:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iKUPoHUF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 534B510E0D8
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Aug 2025 10:23:40 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id
 a640c23a62f3a-af967835d0aso135524266b.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 Aug 2025 03:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1754303019; x=1754907819; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=YpNc/OPOM19m8v3oQAJ+8IrOcfBq6pFDkVXAnOdCbfk=;
 b=iKUPoHUFbwrJNHO2cUiwqyXpYczMeHjT3H3PBGkR5kg7EKYjK4Mow6zNI+vYSirJtJ
 W8SNWYeYOcp/cZqpTGyf8VHDhJA+3ne+Lxru9zyjgj8oVpHt0wWZYi5GV9lyKnfYoiIH
 8C9QyeulIcSwtMjsKdw1vea2nKbaefYD0tm8bHasN6oZB1ijtQt+Im0GUC7AGILhSaok
 mZnK/hxOejXo5vk7MC9it8rZgiNj77eBQ4JQZzQ8hBWmtcGovYvMKYAlj77IfOZ634sI
 1N98n+vZDZpdrG/dKvXQjC6sVofvxfzv/nWFXrh4zxkyugAQvCVwgZLwBFm18HgxUF2s
 nDlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754303019; x=1754907819;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YpNc/OPOM19m8v3oQAJ+8IrOcfBq6pFDkVXAnOdCbfk=;
 b=lOL1VGjXxfk21RMx/VA/6Hsm29W2E3NpvN8ir0dioX/71597uyXy+uqtzZuur6Yjx+
 7LY8FEPxmMopt9VfehoNB6ZoXVJfVj+1vgt5C5YUKQ6qJaxnB3MNvXEGd1wCAXw5wIF/
 FtW1YJs70leGk4cFv/AJkt6PiYGgrZBTrsnX5KkTecBEhhRorYrLPG1PCBZV7GXRuB3x
 hSlkiJmHZJIw59z8moQynfc49T3t0fat/6mD2D7Lrwf1+v6sKfISxIzExtiXF8n074Fb
 uCKo41ejPrAr2ePigoFnKzlSNXv20MB4f8Wm92//0Ws4o01id8cIGt9H/db0c0AjdYvD
 ZQMw==
X-Gm-Message-State: AOJu0YwwshmzbGwq3fnKao/VaB+1UN/8/ZfO7bjueRm7AuIS2+fbOBxD
 VfbZvoBJir/XeAa99akQt8Go/z755INnfwx87yYchy+/GKsyMYsN1PesuKg+EC+gav8=
X-Gm-Gg: ASbGncu6Xf1nYLFToIv96q0xdeOXP5tAlw54p7nXEgUCqeKi0jnSpKQy3ovWxbgu5qz
 pGBBidM6K4Oj0Q2xH6yeIlMg4VsHRFyWjtgVe4mfnILxvhC4AdDVzeckuqrvrYbDkGiEt1YTqGP
 HAqrP2Yol05LGtMeAjQOxbmL8HEiFxlXMpfDdn3Y/4XnDkg1bk+zCR+R0h6XkojK10qEm/GMtl0
 /x2CvFEGGP7YGtgmhPMRmKeShOT3zT5/xrVzH1qNKmpehKx42qbv/NaKmbtWBnJA5KfzigRXjPN
 iwf9OTK2eICsElxgUo0u2xR6eN0T1/lWn65d8FrtnVFYzd7Ka5oEEQ+/ov4ipcWyud4JV9rsyBM
 A/dU73tqoM2X1jY81JcAJ4NfbzV6Ww8OPbDFg/mMU4WA2/Svr6oa1/tv+47vb1ZERYTU/eDw=
X-Google-Smtp-Source: AGHT+IHpB8s+Q0Nl/CdaYw/slRLie9lIYXDpuBTqXAYJZTJ46Qwdfa0YwyINadCzrCTlzo0EPzz3Bw==
X-Received: by 2002:a17:907:9694:b0:af9:3611:924e with SMTP id
 a640c23a62f3a-af940223372mr906871266b.53.1754303018518; 
 Mon, 04 Aug 2025 03:23:38 -0700 (PDT)
Received: from [192.168.0.13] (217-62-96-139.cable.dynamic.v4.ziggo.nl.
 [217.62.96.139]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-af937c86989sm488228666b.74.2025.08.04.03.23.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Aug 2025 03:23:38 -0700 (PDT)
Message-ID: <9436a617-ae53-4702-9ac3-27d9c1267626@gmail.com>
Date: Mon, 4 Aug 2025 12:25:12 +0200
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
Content-Language: nl, en-US
From: =?UTF-8?Q?Ren=C3=A9_Herman?= <rene.herman@gmail.com>
In-Reply-To: <f9b10acb19bbe19813b4bebd9ac666b397d9c7c0@intel.com>
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

On 04-08-2025 10:21, Jani Nikula wrote:

> On Sat, 02 Aug 2025, René Herman <rene.herman@gmail.com> wrote:

>> I.e., could while working with the person with the hardware not figure
>> out what the point of that i915_drrs_ctl would be if the system
>> immediately enabled it again anyway, so Arun's approach seems to make
>> sense to me.
> 
> Hacking debugfs is not a fix, it's a hack.

So I take it that's a no then on looking at/fixing the DRRS bug? Please 
don't get me wrong; as said to Arun as well, I have no experience with 
either this code or really anything concerning this technology even: I 
am assuming I'm missing something when I couldn't figure out why the 
DRRS disable CTL existed when the system activated it again immediately 
anyway.

I am/was trying that help that user, and maybe you guys as to having 
this issue on the map; that already reported bug is 4 year's old, so it 
didn't seem to otherwise have a lot of traction.

Kind regards,
Rene
