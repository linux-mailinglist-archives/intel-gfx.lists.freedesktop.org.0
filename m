Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA6E978AC2
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 23:44:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A992510EDB9;
	Fri, 13 Sep 2024 21:44:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="a7PIbuFH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2363610EDB7
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 21:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1726263840;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=fKkSG8VqZnRHGkrVPV+pI0HT1H3VA+Urh2h620VqLak=;
 b=a7PIbuFHbiTgcodwX1FPQt0wKAkfloCwnoeEvRXHsyZvanKRNzWLE+VWfIabnGXLOwwd2r
 +oem72N+yWHEHZZ7Ob6AcrmLjYzAILPIcdBG1emymG29yQQw6SfiSdvAfHYE+51i9MM3bf
 bhZ0V/2Fvd00J3BCLIZUHpmaJVJJwH0=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-544--ppc_S6VNbO5o_izYfcgvg-1; Fri, 13 Sep 2024 17:43:58 -0400
X-MC-Unique: -ppc_S6VNbO5o_izYfcgvg-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-42cceb06940so18693325e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 14:43:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726263837; x=1726868637;
 h=mime-version:message-id:date:subject:cc:to:from:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fKkSG8VqZnRHGkrVPV+pI0HT1H3VA+Urh2h620VqLak=;
 b=HdR//ovBi3xt134b5rqbKXki6BxDtPw1tUURjcDoOkII32HnVSqvrc1GLv0HfQQDy7
 n9UA9NNV4E2Jx7LDzExTcqos4L6/AxncHvCIgogYAHdV6w1m7CcnN6dzWvWQNDu+DqGX
 krmj3L7HZdDvuKb5WCJ4hdEcTxBSe95QPe1BEnIDAzaL6UzP3ttU6GEkiBU8VzTCO2Nm
 tdc566DhXRuwRxY4OPcG67Av4xIiyzFVrtzm7wsIE+5LfpUXKPMuCoK8WO2Whzg8Ifu5
 VYqecdmk+YlnT5/WELQbRy6kPQNg/7jqUqcMJFcoWYecCsxp+D/HsmkY2HxOJIjrgOLE
 Mp6A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWKSfnbhZ9KPhxhEjU6TpzeR7E9yRblrbzb6ogbivbMP47BK6Zzzp0XNqv08fZD2mm9NTe7/g3E218=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwBPkQHcPxKsOzyziRzABIqT+7w/DYTAGR1c7sJK7/qGlOd4kB+
 +DAoJtVNL7jWZghIXndimUfiAk+wBS/6U8cXGpM+cZIo3cdAAOmvqDdjPI39A2D8dqulvQhyKiJ
 J1TNJktzUo159v9GJDfUWvcFLIeXZCdMaK38sJxxIr8cBhWLo38YzbKP6MO4vgWi6gQ==
X-Received: by 2002:a05:600c:4e10:b0:42b:a9b4:3f59 with SMTP id
 5b1f17b1804b1-42cdb529b15mr63531185e9.14.1726263837561; 
 Fri, 13 Sep 2024 14:43:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmgVixelwyphAF04b6dZiaPA5Oxiya0I3gktrct+B5i0gL94h0PMPytDOlN/HdvI08wJsm+g==
X-Received: by 2002:a05:600c:4e10:b0:42b:a9b4:3f59 with SMTP id
 5b1f17b1804b1-42cdb529b15mr63531025e9.14.1726263836950; 
 Fri, 13 Sep 2024 14:43:56 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42da242736bsm2598215e9.40.2024.09.13.14.43.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2024 14:43:56 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Julius Werner <jwerner@chromium.org>
Cc: linux-kernel@vger.kernel.org, chrome-platform@lists.linux.dev,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Hugues
 Bruant <hugues.bruant@gmail.com>, Julius Werner <jwerner@chromium.org>,
 Brian Norris <briannorris@chromium.org>, Thomas Zimmermann
 <tzimmermann@suse.de>, Borislav Petkov <bp@alien8.de>, Tzung-Bi Shih
 <tzungbi@kernel.org>
Subject: Re: [PATCH v2] firmware: coreboot: Don't register a pdev if
 screen_info data is present
Date: Fri, 13 Sep 2024 23:43:55 +0200
Message-ID: <87h6aj6xgk.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
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

Julius Werner <jwerner@chromium.org> writes:

Hello Julius,

>> +       /*
>> +        * On Coreboot systems, the advertised LB_TAG_FRAMEBUFFER entry
>> +        * in the Coreboot table should only be used if the payload did
>> +        * not pass a framebuffer information to the Linux kernel.
>
> nit: The official brand spelling is "coreboot", always lowercase (even
> at the start of a sentence). Not a big deal though.
>
> Reviewed-by: Julius Werner <jwerner@chromium.org>
>

Thanks for pointing that out, I wasn't aware. I just posted a v3 with
the proper coreboot spelling and your Reviewed-by tag collected.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

