Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2767772E8F
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Aug 2023 21:18:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FB8310E217;
	Mon,  7 Aug 2023 19:18:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E96CA10E217
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Aug 2023 19:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1691435935;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=uBw4mbV0n5CHJTT93sh7px+x2h6v80hNyKF0sUR1CQ0=;
 b=MrV/fd3rdsEJIV3hzfYA+OlIjm1XsGQCos5znwWGMHblF9wSmTovxX/CPrIRHArLs7BWNp
 9FDK/8fmRbnbekXtDgeWGnmOMYCPBLnsMkj0aXvEOupGbapaNgmf2XZY/fxJj9Mv9Kdajh
 HKP8G6CWPTcvwvqQdQpud6sT2z7KOPo=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-528-tawBkk8ANJ6W0O4Yxa4Qow-1; Mon, 07 Aug 2023 15:18:53 -0400
X-MC-Unique: tawBkk8ANJ6W0O4Yxa4Qow-1
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-63cf9d48006so59431156d6.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 07 Aug 2023 12:18:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691435933; x=1692040733;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uBw4mbV0n5CHJTT93sh7px+x2h6v80hNyKF0sUR1CQ0=;
 b=MJpVx8qsAlLCkM9+vmDXc6wdvossrHdO+M0w3vu6iZDLH2adtWm9MoA3acZB4YMkNA
 SOqloeW/heQzG4Jnt/Dt04jFLrvy8UTOtHFjv2llYMQlv0e+CRdXBqG4weK6g6VNNIpQ
 OYJtbM7qnGEb1QNFQomDnHanSCvQxKx1bj5tt1F73qsihEt5kcgS9Su6Y8DXW3CVd8gk
 jfi6upbwkI0lMtZSKMoEXMSOqQjXBXagKaCbNLIIDZ7ZexQ6acVeQ1cCAhqclZa209zI
 otOFOiTjAh4Z94QdtByEXKs/OeTA5JIqp2H23FNA3C2rgyz0GQaNe2TTlo2by2XLSZpL
 YVBQ==
X-Gm-Message-State: AOJu0Yyo6kgfHfEEFg19ru5ejt6x4cDiG8pMICYh+qsFdAwzVmnnaCas
 GVoclmpYwIDkHNqUiUl6wOtG+hV1b/uamwDpaodzmXqpIEhGW4hvAB/iRAOMuANbXWn98u/Dbln
 BHXjYoiz+nkPltVGP5BVV2BDzD110
X-Received: by 2002:a0c:e0cc:0:b0:633:45e2:5603 with SMTP id
 x12-20020a0ce0cc000000b0063345e25603mr9893923qvk.60.1691435933471; 
 Mon, 07 Aug 2023 12:18:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHf08IuAF1M+sWXoajzIojAHG+tZ0mzMymTkRHCnxLwdLNIOx7LjEpAHQQPbeGpQrMmO5ygPQ==
X-Received: by 2002:a0c:e0cc:0:b0:633:45e2:5603 with SMTP id
 x12-20020a0ce0cc000000b0063345e25603mr9893910qvk.60.1691435933263; 
 Mon, 07 Aug 2023 12:18:53 -0700 (PDT)
Received: from thinkpad2021 ([64.99.149.73]) by smtp.gmail.com with ESMTPSA id
 b12-20020a0cf04c000000b00631f02c2279sm3069007qvl.90.2023.08.07.12.18.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Aug 2023 12:18:52 -0700 (PDT)
Date: Mon, 7 Aug 2023 15:18:50 -0400
From: "John B. Wyatt IV" <jwyatt@redhat.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Message-ID: <ZNFDmq43NqttzJca@thinkpad2021>
References: <ZKyngsXKztAU9J3r@thinkpad2021>
 <20230807133354.-t5iv19T@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230807133354.-t5iv19T@linutronix.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: Re: [Intel-gfx] [preempt-rt] BUG: sleeping function called from
 invalid context at drivers/gpu/drm/i915/gt/uc/intel_guc.h
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
Cc: vschneid@redhat.com, pauld@redhat.com, linux-rt-users@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 jlelli@redhat.com, rt-maint@redhat.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 07, 2023 at 03:33:54PM +0200, Sebastian Andrzej Siewior wrote:
> 
> Could you try v6.4.6-rt8+ and check if it still there or gone?
> 
> Sebastian
>

Just checked. I do not see the call traces in dmesg now.

This also resolves a long (20+ minute) boot issue I had + stuttering in
the graphical interface.

Thank you for asking about that Sebastian.

John

