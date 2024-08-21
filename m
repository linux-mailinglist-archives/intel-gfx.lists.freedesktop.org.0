Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E33D95F20E
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 14:53:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8650A10E1FD;
	Mon, 26 Aug 2024 12:53:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="now+m2B8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5C5710E487
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2024 18:23:59 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id
 ffacd0b85a97d-3718c176ed7so3453811f8f.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2024 11:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1724264638; x=1724869438;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6UKtg+zvbSMPXrleMHfdH7Qk7nmkQZoNUnEZ2n2BArA=;
 b=now+m2B8UpK6LZ1w0DCjhck5x4Bptn9/gEN/UUvV9o+Iclgh0EVnhdm2eEBPtCfH2J
 5FLGevPXC9G/+N0sUrizZnCRdvJKcH2xXMa70Nnwrw3pVxD5iy4jnOKxlVniuHTq+q7q
 DZ4nKxpoDCPsZTL81/Y6bEmi4uZSNw5V9pTyNn5mVs5ae+F5ROTAhtIAUEY/OAopaPV9
 jUNVWNBkahDWYrqQf2Z3PZaq8ckVpFHEA4HOO59LLcymI81i/t79EkLe3Y8fX/K1QNle
 L3cXPTLUidPXZpT4dsigCWJIeCmHMqtp+YTw/7Co7JpuUl5OX+aTK0H/Bq9NAZqp9kz4
 e2JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724264638; x=1724869438;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6UKtg+zvbSMPXrleMHfdH7Qk7nmkQZoNUnEZ2n2BArA=;
 b=eU0ylXxXxaarULYW4GjCdMHA+NUTXX8fQ0DrIB3TkB/OPn6R3MVZxIC8jAys7QwIS/
 lN/DJiRkxf767LBeCnpwSg+OIJACgr+XcuSEaRwdGrLWEHt6TTSU19xMc09bIHgfLAhF
 tThFHOXwGQ15x21nEAS77NtH3F4U78lf/UF/VTtmYI2fF2hK54vpgBRA9UY0LTV/Mydp
 Fc8RVZM77ioS47tcSmzRPaOVoFKMi7whqznBHwcpE98C18BwJJRxUS419WWxtt29QGXR
 E1m0pskiKJ/1Y/0rmaqUPZ2XtIpHqZ/KVeN/1HAFD7rtcPV0COQegsLhtv+XtC94IsWb
 /HLw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWMxHAtEugFrqIaFNPGujShhWtOd3r5vFNbJbc/jtw3mCBf4oHCoVdlCiReaBYlzz6XrnQdbYtMdOc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy0DAWDhcqPgqGBBZyfmCGvktb7wiCewSsIZO/xwuUu+vjCgMic
 xN7jJP3xBN8VnhnFjMeFRMYJfxBEf9PtQz0HD08WG2O4lrRqlwCEj8wR2bCtJL7i5s4T3yUbr5e
 noZywTe7OUngBZLG5NHAZ5PBqBRrKErGUG2M=
X-Google-Smtp-Source: AGHT+IG0fJ7c0qdelGJey9GL/wt13fokKG4Azv8WAjWPN2GOZwHyzJZuOrVRGRQpWEgQNsW5AtTzHed1qT8QSZdQ5ro=
X-Received: by 2002:adf:a158:0:b0:368:41bd:149b with SMTP id
 ffacd0b85a97d-372fd5ba7b6mr1932270f8f.34.1724264637269; Wed, 21 Aug 2024
 11:23:57 -0700 (PDT)
MIME-Version: 1.0
References: <20240821130348.73038-1-tzimmermann@suse.de>
 <20240821130348.73038-14-tzimmermann@suse.de>
In-Reply-To: <20240821130348.73038-14-tzimmermann@suse.de>
From: John Stultz <jstultz@google.com>
Date: Wed, 21 Aug 2024 11:23:45 -0700
Message-ID: <CANDhNCqDvWU8Hyudw=KromJzFjgj3CqeZ2q5+Qxo0EdS22gd+w@mail.gmail.com>
Subject: Re: [PATCH v2 13/86] drm/hisilicon/kirin: Run DRM default client setup
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: daniel@ffwll.ch, airlied@gmail.com, jfalempe@redhat.com, 
 javierm@redhat.com, dri-devel@lists.freedesktop.org, 
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, nouveau@lists.freedesktop.org, 
 Xinliang Liu <xinliang.liu@linaro.org>, Tian Tao <tiantao6@hisilicon.com>, 
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, 
 Yongqin Liu <yongqin.liu@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 26 Aug 2024 12:53:17 +0000
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

On Wed, Aug 21, 2024 at 6:04=E2=80=AFAM Thomas Zimmermann <tzimmermann@suse=
.de> wrote:
>
> Call drm_client_setup() to run the kernel's default client setup
> for DRM. Set fbdev_probe in struct drm_driver, so that the client
> setup can start the common fbdev client.
>
> The kirin driver specifies a preferred color mode of 32. As this
> is the default if no format has been given, leave it out entirely.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Xinliang Liu <xinliang.liu@linaro.org>
> Cc: Tian Tao <tiantao6@hisilicon.com>
> Cc: Xinwei Kong <kong.kongxinwei@hisilicon.com>
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: Yongqin Liu <yongqin.liu@linaro.org>
> Cc: John Stultz <jstultz@google.com>
> ---
>  drivers/gpu/drm/hisilicon/kirin/kirin_drm_ade.c | 2 ++
>  drivers/gpu/drm/hisilicon/kirin/kirin_drm_drv.c | 4 ++--

I don't have hardware to test anymore, but it looks reasonable.
Acked-by: John Stultz <jstultz@google.com>

thanks
-john
