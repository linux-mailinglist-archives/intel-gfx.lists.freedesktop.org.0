Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 907E17DD133
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 17:07:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C0CF10E55F;
	Tue, 31 Oct 2023 16:07:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DF8310E55F
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 16:07:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1698768464;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=thpxtjONj4QTupD90Q3EZvagp9KsKzzPeE2dqPNx7k0=;
 b=XC97ZTtJsAcbtko14Ib+7piTPj6XCjlY6C/f39Gjb5BsCrrqg319TdVTUQmegSghSBZJFx
 sEXW1zQnJqivQilQnIuRlqb8xEzrpi5gjXLzv81+98Yjx+DcetZV/D4+ZCgYumAhjUWvMf
 C873v8vDP/+NYb6vMnokbzLa+YtVEGw=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-605-ln0d4vLoM_qc6L2yv2EuEQ-1; Tue, 31 Oct 2023 12:07:42 -0400
X-MC-Unique: ln0d4vLoM_qc6L2yv2EuEQ-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-9b2cf504e3aso407009566b.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 09:07:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698768462; x=1699373262;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=thpxtjONj4QTupD90Q3EZvagp9KsKzzPeE2dqPNx7k0=;
 b=UDMY8+KsNn152fVOH2+6Mlsk/QosXWZICpllW6NWjDo9YZHGg2amlWjZ9z9wh4m5zX
 YXDsMHbgFqlSNRyqf/HBj9c56+KTl4/EUUvm0Vg8apEF4kGM287Dj/GuGsa/Bf9Yt49D
 sw9uaXoBIR463hEJjrq0qEyZRBlI34LgLhUiCU+ryZ+09zMGz8mIe9P3Wr/0u5kaNDO+
 DY6c5X61xt1sTv3lusE5p4jWNyMLAeMF+AbTQclW6HdZfdnHOoiLb4qwn6lOGDbQWNzP
 8A+ANNiIdWP3kdVgItPWtQeJrLbXkmQ+brBFrixYJlWUw3XmgK2jOZ9cMwrpXONlMjVx
 RSBQ==
X-Gm-Message-State: AOJu0YzoDDIGAj/W/4zqbe1D7UNvyFMf6r9BqogsO0vchS2FgQrTEpQZ
 h5hWaDNVgzZeV+3G49H7Ny/Edq26AAytP3FcPHUtO8GWEEjgXSQpqGo3OhEjk4k4OWVO5uMmKcd
 E4iONQEc+18rXeXMK2AKsu/Sds6Fa
X-Received: by 2002:a17:906:4784:b0:9ad:e180:16e3 with SMTP id
 cw4-20020a170906478400b009ade18016e3mr12240286ejc.37.1698768461844; 
 Tue, 31 Oct 2023 09:07:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDV51Onpp+gtuqKcZZe8kMiLqbF3dH6IJu74qigRPDiD5Lk35IqZsmbryB7ATZnw7t7AJDEQ==
X-Received: by 2002:a17:906:4784:b0:9ad:e180:16e3 with SMTP id
 cw4-20020a170906478400b009ade18016e3mr12240270ejc.37.1698768461497; 
 Tue, 31 Oct 2023 09:07:41 -0700 (PDT)
Received: from ?IPV6:2001:1c00:2a07:3a01:6c4:9fb2:fbc:7029?
 (2001-1c00-2a07-3a01-06c4-9fb2-0fbc-7029.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:2a07:3a01:6c4:9fb2:fbc:7029])
 by smtp.gmail.com with ESMTPSA id
 fy23-20020a170906b7d700b009b2f2451381sm1187507ejb.182.2023.10.31.09.07.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 31 Oct 2023 09:07:40 -0700 (PDT)
Message-ID: <b489675d-e9de-4bca-9622-78545aa8606d@redhat.com>
Date: Tue, 31 Oct 2023 17:07:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
References: <20231024155739.3861342-1-andriy.shevchenko@linux.intel.com>
 <20231024155739.3861342-7-andriy.shevchenko@linux.intel.com>
 <ZTfssxRsrDxhzSQ6@smile.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <ZTfssxRsrDxhzSQ6@smile.fi.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 6/7] drm/i915/dsi: Replace poking of CHV
 GPIOs behind the driver's back
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
Cc: Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andy,

On 10/24/23 18:11, Andy Shevchenko wrote:
> On Tue, Oct 24, 2023 at 06:57:38PM +0300, Andy Shevchenko wrote:
>> It's a dirty hack in the driver that pokes GPIO registers behind
>> the driver's back. Moreoever it might be problematic as simultaneous
>> I/O may hang the system, see the commit 0bd50d719b00 ("pinctrl:
>> cherryview: prevent concurrent access to GPIO controllers") for
>> the details. Taking all this into consideration replace the hack
>> with proper GPIO APIs being used.
> 
> Ah, just realised that this won't work if it happens to request to GPIOs with
> the same index but different communities. I will fix that in v3, but will wait
> for Hans to test VLV and it might even work in most of the cases on CHV as it
> seems quite unlikely that the above mentioned assertion is going to happen in
> real life.

I have added patches 1-5 to my personal tree + a small debug patch on top
which logs when soc_exec_opaque_gpio() actually gets called.

So these patches will now get run every time I run some tests on
one my tablets.

I'll get back to you with testing results when I've found a device where
the new soc_exec_opaque_gpio() actually gets called.

As for the CHT support, I have not added that to my tree yet, I would
prefer to directly test the correct/fixed patch.

Regards,

Hans

