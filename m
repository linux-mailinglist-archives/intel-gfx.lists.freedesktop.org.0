Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E127577758
	for <lists+intel-gfx@lfdr.de>; Sun, 17 Jul 2022 18:52:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8183E11A18F;
	Sun, 17 Jul 2022 16:52:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FF6C11A18F
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Jul 2022 16:52:15 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id
 j1-20020a17090aeb0100b001ef777a7befso11303361pjz.0
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Jul 2022 09:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=cYjCYZtzRUGx2/PYD4Db/UdcmMF+Gp5UjQ7Zxa4sr3o=;
 b=B7hdde0YLlg95ntAGJsaAPNKsPS5qvyYyfEjICTHj2HnL3sr5K+LT4CBV437468X8r
 j+5zodeF0AxDtLU6kmESGQLT7mJBrs8i80V3pInVZ2d4LH50Z2hRltiqoCCTAdHldl5S
 xvOsCFdjmUJ9bIXOAZnStNVCbIYXaaxPnwJd6FeFJA6tPYXX0VFDLO4rV6z8xl54JRV6
 0Y4EJmxG7JytwwXKONO1wAb8N0J0ZljMlp1ttEToUSNtlG9JHl7rpi3aFWfXsC3O1Na9
 T9EwsFuxjCMqWnFhoTyVI9NGaUwQRrujM6wq7Wp63aplmzrZ56/4PbpPZaFVBXm10ZTa
 WR3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:message-id:date:mime-version:user-agent
 :subject:content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=cYjCYZtzRUGx2/PYD4Db/UdcmMF+Gp5UjQ7Zxa4sr3o=;
 b=Ulb5bt0RrJ/dl5PwKvt8jdCN3Gb3mMWiKwL/nMNyl/by/pI888dlosHmyZntJ8yn5S
 FjJkOf9xZOYq9QZ1S/OxLaaUSlzlGWCwUBHp1XjA27eWM4Tv1MFBfcUwB60x3wtgF9AS
 gBIGC9rnxPy5S76KL4IJeUFtLfIqr4SX5lC8pwKFYJ2YHAm6YUc9ovoldJruLkWik6cW
 auNQ38OYITm9AUUp1uY5JmMoWyCKSl1jHdUAhcKnTbgqQT3OZPBqGG0Pc872Ktovwi7e
 T86XVWqOgbxsQMOSrF7TarmlzNA4L8Dno7JcRuWlfsPAA6KsU27C8nzrunFZ03Z6vHgB
 Hupg==
X-Gm-Message-State: AJIora8qYs1xyarylYcJIxVaaDD0PhZ+w1EsXu1DidVxs2RndvpMPd/C
 n4yDwXgYtbVb6xlYlFSTAzRmdrICD62xPQ==
X-Google-Smtp-Source: AGRyM1ughTek3gLS2ZeIvOLtM58TzdlP0JOXkrVetw80hLN/xS1+tS2a9u8eTcJIdyIZNbaflnFa4g==
X-Received: by 2002:a17:90b:1b51:b0:1f0:3350:6854 with SMTP id
 nv17-20020a17090b1b5100b001f033506854mr34939271pjb.52.1658076734597; 
 Sun, 17 Jul 2022 09:52:14 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c?
 ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 u190-20020a6279c7000000b0052b433aa45asm4621073pfc.159.2022.07.17.09.52.11
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 17 Jul 2022 09:52:12 -0700 (PDT)
Message-ID: <dad082fe-af1d-3e6e-80a8-6c8a2d15f3f0@roeck-us.net>
Date: Sun, 17 Jul 2022 09:52:10 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20220717162046.710290-1-linux@roeck-us.net>
 <165807575159.12456.3977932853027877574@emeril.freedesktop.org>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <165807575159.12456.3977932853027877574@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915=3A_Fix_32-bit_build?=
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

On 7/17/22 09:35, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix 32-bit build
> URL   : https://patchwork.freedesktop.org/series/106421/
> State : warning
> 
> == Summary ==
> 
> Error: dim sparse failed
> Sparse version: v0.6.2
> 
> 

Failure is unrelated to this patch. No problem seen with ToT sparse.

Guenter
