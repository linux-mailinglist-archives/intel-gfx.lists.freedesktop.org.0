Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5A62190B1
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 21:33:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E2C76E919;
	Wed,  8 Jul 2020 19:33:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49E406E919
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 19:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594236808;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fMK+O8snx7i3bh4Nyul4uiIVCifDVQV8L9xOodFcTzA=;
 b=EFYTayW+pPOCxHWcEAqdE1ClwVA7Xfx/yN5f3vRFpq+IIGsZNdi2mHr0s3/LfFSvDtC/kf
 jH58kHl8SCR7C329VK8NgCr5mKkqgblgBKMWuEdUbAOAJagwXQLvB+dESFDtFMD9LTY3w7
 7TaUp2fpgdxxzx1xXp9ABp/ZZ/ANhKU=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-315-4QRFkCiePeql371eG-judg-1; Wed, 08 Jul 2020 15:33:23 -0400
X-MC-Unique: 4QRFkCiePeql371eG-judg-1
Received: by mail-wm1-f72.google.com with SMTP id y204so12308wmd.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2020 12:33:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fMK+O8snx7i3bh4Nyul4uiIVCifDVQV8L9xOodFcTzA=;
 b=nn9tnh/9AmCymvVOw/RBVUM1XcjflBpmfmEJdyL19qtNFXa4boKKi1Ho8EXUNiTTG0
 QpYLzgONv+mMmwzvCnkHMZ9J36DU+CvjSEpQuBDDZG2pdLYfFGICnNZ//PJDGlIHYOUj
 dGvYXx2i13L1UHkuZzSuia2i/Cp0Wj+MMoDAnPOGRXIfNTlG/ZL3AVhTbzB5E0gcSyZg
 nTAuTBWhfUtxHaMXY5sDts84y2WvOROb9PimI8Edwt5MAjLjvZEs4tzsuE18bJ2cHfxn
 8vAh/Ks5XTB8zFZIp3GbZuzpwgWwYPLSBA+bZ4a3Ua6pUAc2inuFnWxD3uomS9kxxgB6
 i8Mw==
X-Gm-Message-State: AOAM530wPAV17px4rskdleLeScw13aO06eVgPOHssSkFsi5iOuVy52Db
 oMGTn1aPheN20XxHmTHVFJycY8Iz/ZaBrsxjh7O9eJkFiOraB4L5cdSK5iNPKPsg2SSjM7skSQT
 JsYxSiT8QK23LybmZtaAhLP2YTswA
X-Received: by 2002:adf:ee05:: with SMTP id y5mr62088839wrn.185.1594236801728; 
 Wed, 08 Jul 2020 12:33:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz+llyzXqwAAv8z+PmcHjFC5ZYDXstOHCIzdIp3fMS2osUMqWQcSXcoeLZt8t32ZJW97QR9PA==
X-Received: by 2002:adf:ee05:: with SMTP id y5mr62088832wrn.185.1594236801575; 
 Wed, 08 Jul 2020 12:33:21 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id e5sm1427755wrs.33.2020.07.08.12.33.20
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jul 2020 12:33:20 -0700 (PDT)
To: intel-gfx@lists.freedesktop.org
References: <20200708164335.25097-1-hdegoede@redhat.com>
 <159422753061.3840.8177250694982350295@emeril.freedesktop.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <1d1cfdd5-c374-e9a7-0933-7fdaf52cf306@redhat.com>
Date: Wed, 8 Jul 2020 21:33:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <159422753061.3840.8177250694982350295@emeril.freedesktop.org>
Content-Language: en-US
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm=3A_Add_privacy-screen_class_and_connector_properties?=
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 7/8/20 6:58 PM, Patchwork wrote:
> == Series Details ==
> 
> Series: drm: Add privacy-screen class and connector properties
> URL   : https://patchwork.freedesktop.org/series/79259/
> State : failure
> 
> == Summary ==
> 
> Applying: drm/connector: Fix kerneldoc warning
> Using index info to reconstruct a base tree...
> M	drivers/gpu/drm/drm_connector.c
> Falling back to patching base and 3-way merge...
> Auto-merging drivers/gpu/drm/drm_connector.c
> CONFLICT (content): Merge conflict in drivers/gpu/drm/drm_connector.c

So I was testing on top of 5.8-rc4, I guess I need to rebase this
on dinq. But I'm sure that there will be review comments and my
main reason for posting this v1 was to get feedback, not to get
this CI-ed. So please do review this despite it not cleanly
applying on current dinq. If it not applying somehow impends
reviewing this, please let me know.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
