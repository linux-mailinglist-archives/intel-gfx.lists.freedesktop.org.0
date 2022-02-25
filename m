Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D26A4C5128
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 23:04:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AFB410EA0A;
	Fri, 25 Feb 2022 22:04:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9415210EA0A
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 22:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1645826670;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bO21mGiFSjxrTsAgYiuxcv8DPInIyOqBoKvJzjPiVo8=;
 b=NRG3kXXyJXT1bBdLbe4BE2v9p8Yj6TJbhqQflHAasMYZ8AI10SGGFWCkEtnW7e2u9N4yeF
 ettg9/orw7D7xk4EYmpjy+ZuczeDWmSm9qvuW+LwNmI3KRnIo3ccJyyNF2roTxQw2cEwdZ
 eBpFv+8vTL8Me0HKGuwqtiwnvB5JFFI=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-246-xD1xGx-ePh-vlmOOdkszfw-1; Fri, 25 Feb 2022 17:04:29 -0500
X-MC-Unique: xD1xGx-ePh-vlmOOdkszfw-1
Received: by mail-wr1-f69.google.com with SMTP id
 c5-20020adffb05000000b001edbbefe96dso1171685wrr.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 14:04:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=bO21mGiFSjxrTsAgYiuxcv8DPInIyOqBoKvJzjPiVo8=;
 b=yurMbac7K5yeNmQ+1PlUWfS20/hfXIIwYYuIrqD+NVtNBHUTcAkSwHlbzIOy+RovkR
 11+zhLBt8nZ1qwScgEzm+Wb7yaNtp2WTPmHDtN67Gt0QF1quliXWs6Pc/+OktD4Sobum
 QAwO0Kt06ySL9YebnpeTcaDEpzrJlDUjijLN+Ldn2g/ymRMJdZTNH1vu4BTZLd/Olm3+
 ZUx2pKNu0GOJ9bTZfZFgH282WpQR8QSrYfUH3AT9hrsAXolN3unOpjQupKzxFxyWOtn7
 DtWy6eLY0XUSPzUg2tX50hYvJbhuZceeYNILaXD2v+q5xGqfGv3MiSbiC5nXL4dt0/Nf
 VyVA==
X-Gm-Message-State: AOAM5312+rPkiHZxn8mKjJBkp8u5BS9OI9vSjz/TA9yIpSLVhS5KHdp7
 Th7Yg4jqKQZ9PYVdltCIQlbBJqlN5eWw4AAmVaqN6GsOIRGVVKKv+bDKvS2CX2HveCsRg/7I++1
 oqxzfFhcr6jqCtcLAye0X0F5QaJPn
X-Received: by 2002:a5d:6da3:0:b0:1e3:2f74:f025 with SMTP id
 u3-20020a5d6da3000000b001e32f74f025mr7609062wrs.59.1645826668047; 
 Fri, 25 Feb 2022 14:04:28 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzIAVhIjXhFisDaSBcWS97jIQINaeO8cdSnnZqTT9pHKvxm2yqY6ihIXoPEmHCteAon+hDEJg==
X-Received: by 2002:a5d:6da3:0:b0:1e3:2f74:f025 with SMTP id
 u3-20020a5d6da3000000b001e32f74f025mr7609045wrs.59.1645826667780; 
 Fri, 25 Feb 2022 14:04:27 -0800 (PST)
Received: from [192.168.1.102] ([92.176.231.205])
 by smtp.gmail.com with ESMTPSA id
 17-20020a05600c241100b0037c01ad7152sm4950807wmp.14.2022.02.25.14.04.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Feb 2022 14:04:27 -0800 (PST)
Message-ID: <cdb8e01c-1c0d-8ead-ed2e-e5bf20e54a0e@redhat.com>
Date: Fri, 25 Feb 2022 23:04:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
To: Hans de Goede <hdegoede@redhat.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20220225214934.383168-1-hdegoede@redhat.com>
 <20220225214934.383168-3-hdegoede@redhat.com>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220225214934.383168-3-hdegoede@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/dsi: Add some debug logging to
 mipi_exec_i2c
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Hans,

On 2/25/22 22:49, Hans de Goede wrote:
> Add some debug logging to mipi_exec_i2c, to make debugging various
> issues seen with it easier.
> 
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

