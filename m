Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 638AF666BD3
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 08:50:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2B0D10E886;
	Thu, 12 Jan 2023 07:50:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC9FB10E886
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 07:50:26 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id bt23so27188961lfb.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 23:50:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:subject:from:cc:to:content-language
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lOcGP/p3A8sYJ1a+2GQmkhVY40eqrvOVSUXTD8L7AcE=;
 b=kmB8aTgHIHesjtlItHUdyFQAyZ3m1eqnuPIteneFsvTL6HKIbd+0xgvujo8tSN+NKX
 QhhudMeRXwJR8iIoolSlmj/5E0YHogVAvDlgJLC3HALQBIhb5TyoCM4SNurRXDfFg/wt
 jphPevpU4ij3QGjtq9tf8OSb9kykygqZrgrXAKLBU2tYHvN3TldyYyT/ZHj1u+izC2fq
 z4q8g788i0FoBWt695s3Tf0qknCH142Z4EcMiuL3incKGFfZsqls2tIIB4pfpi4zpbEU
 R33IZktcmxZzlvPkExBGJtz+B1lkTU1FY45oHkoVoCYCJwFyMK8M4bZwFNTeASV4N1Jr
 kLsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:subject:from:cc:to:content-language
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=lOcGP/p3A8sYJ1a+2GQmkhVY40eqrvOVSUXTD8L7AcE=;
 b=U9Mbuapyz1+AFXk4T0R+2e0Cd4Q16IBdMvgs5VgcCKfIoBaGPoiiGS6zx3tlTBDLeV
 gPGrUC5QEXL2udVdj+64dndMOxSlD6G4Fy9jAPo6ux1cjpzaqB0iz7l5yDm5Fez70yOc
 jJdXjw0uxVXkXqaFd4BYKpv4Y3SqkpfNv4KO+UG+ED7h4UscRXDau58CL1md/ot9A3ub
 fvRxhvKKvmAkafSUDhAtXnc+YSRBJLWd90Op94jN9YKsNiLoxF7MOkXxNRLxhUJJ80nC
 D9JMoovs12Z8LC12Ynvs2fT1/KeAsDe7C8o/1BEtghTlZnEeIAOiUSWrzm6sz23W+QEt
 4jjg==
X-Gm-Message-State: AFqh2kqS139hl15qaVkyV/ANYVybNwt85lxzDU6XizMYkHKw86j1mAxL
 96NdAVyb8ErBNd9XzmxLo5mYWTMzMcg=
X-Google-Smtp-Source: AMrXdXuvSowyoWakgfhGsJinIJp/AwBXq3PVFI0gRkSxJLyVH4ADsFTOMt42J5lACzzmCN/iqKLc5Q==
X-Received: by 2002:a05:6512:1697:b0:4b5:f925:52a7 with SMTP id
 bu23-20020a056512169700b004b5f92552a7mr26120715lfb.27.1673509824649; 
 Wed, 11 Jan 2023 23:50:24 -0800 (PST)
Received: from [192.168.1.3] (78-73-83-124-no185.tbcn.telia.com.
 [78.73.83.124]) by smtp.gmail.com with ESMTPSA id
 n1-20020a05651203e100b004b591829352sm3153314lfq.64.2023.01.11.23.50.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Jan 2023 23:50:24 -0800 (PST)
Message-ID: <65afb3a4-bdc1-04a8-a2ac-6c561cddd710@gmail.com>
Date: Thu, 12 Jan 2023 08:50:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
From: FlightlessMango <flightlessmangoyt@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 12 Jan 2023 07:50:48 +0000
Subject: [Intel-gfx] [OA][RFC] Exposing low-resolution engine business via
 sysfs
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
Cc: Martin Peres <martin.peres@mupuf.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

I am the developer of MangoHud[1], a Vulkan and OpenGL overlay for 
monitoring FPS / temperatures / CPU/GPU load and more.

I would like to add support for i915 (and xe in the future) but I am 
currently unable to do this easily because not everything I need is 
exposed directly to non-root users. Namely:

  * Engine business (RCS)
  * CPU, iGPU and dGPU power usage
  * IMC bandwith (nice to have but not mandatory)

This is a problem because it would require us to ship a setuid binary to 
poll these metrics for the overlay (we can't run games as root).

For your information, this is Intel-specific as AMD and NVIDIA are 
exposing these values directly. I understand the security concerns, but 
we are not asking for super precise information (1% accuracy is perfect).

Can we work together on this, what are your thoughts?

Thanks for your consideration.

//Simon Hallsten

[1] https://github.com/flightlessmango/MangoHud



