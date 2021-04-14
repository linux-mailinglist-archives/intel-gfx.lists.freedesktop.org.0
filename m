Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EF135FDB2
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Apr 2021 00:19:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E03446E96F;
	Wed, 14 Apr 2021 22:19:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
 [209.85.167.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E11476E96F
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 22:19:28 +0000 (UTC)
Received: by mail-oi1-f174.google.com with SMTP id i81so22233069oif.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 15:19:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=shhxLQuTrS6CU0G16xzkxHsbk3trBrwF7tum2COVf1Q=;
 b=WgO0JKZ67c0UKdBxq8o3JQmtRRzI5ULZeXU6Q+OHFrE8shyFiHIvIjA+veKZWHh8UH
 Pi2L9DG9AibMXEwAxvuURwDrqQSujpQz/M0yFZ7hACahN4PbkpHBcincZQpvYekBiU8I
 8jWixntqILvKWO59fHSfNr642T4Ai2ZlW3awl1p32OXPPyxR7Qii/xqT6sU/c9jgVqO5
 jnaQhpmAzodQLasnWu3ROejJ21SowCPKGqqkA4A/S44y5Qz4hsywBwF6CJSvBigWSjkL
 2w8h41oIik+AQSCcdgITOMxBMmGgOvOMSm+0Y+8kNsCZcdkxRsA2SAV9buhuqgN3asex
 lISQ==
X-Gm-Message-State: AOAM533fgahLPY2Zz8uYBEsQzzGqbEho822W1ixQLE8iocN2qRWvi9fh
 IzdSqg4oTeFNpBEXSSkNag==
X-Google-Smtp-Source: ABdhPJx6GppsvAcMfhCc/TcWFOcFYEwW+XxDXo6r8z6IJFxygHtL17xNAfoh1RHqI7F2eLpl2oyvAw==
X-Received: by 2002:aca:b787:: with SMTP id h129mr372861oif.58.1618438768152; 
 Wed, 14 Apr 2021 15:19:28 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i4sm195366oik.21.2021.04.14.15.19.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Apr 2021 15:19:27 -0700 (PDT)
Received: (nullmailer pid 69085 invoked by uid 1000);
 Wed, 14 Apr 2021 22:19:26 -0000
Date: Wed, 14 Apr 2021 17:19:26 -0500
From: Rob Herring <robh@kernel.org>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Message-ID: <20210414221926.GA69036@robh.at.kernel.org>
References: <20210414172916.2689361-1-hsinyi@chromium.org>
 <20210414172916.2689361-3-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210414172916.2689361-3-hsinyi@chromium.org>
Subject: Re: [Intel-gfx] [PATCH v19 2/6] dt-binding: i2c: mt65xx: add
 vbus-supply property
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx@lists.freedesktop.org, Mark Brown <broonie@kernel.org>,
 linux-kernel@vger.kernel.org, Wolfram Sang <wsa@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Qii Wang <qii.wang@mediatek.com>,
 linux-i2c@vger.kernel.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 15 Apr 2021 01:29:12 +0800, Hsin-Yi Wang wrote:
> Add vbus-supply property for mt65xx. The regulator can be passed into
> core and turned off during suspend/sleep to reduce power consumption.
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
