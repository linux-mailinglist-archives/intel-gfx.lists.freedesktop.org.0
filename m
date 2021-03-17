Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3006343C51
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 10:10:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE12C89DD3;
	Mon, 22 Mar 2021 09:10:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 053B16E02B
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 21:01:55 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id h10so3964134edt.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 14:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=in-reply-to:to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=uT+dux+2hvy/k4yibWIepWagDCyEDVjI47X2i3xAMX8=;
 b=paK65oohvJZrGG9KVeKwPA3nj3t7b7Qj5GxP79zTJl2yIvqiCY3hy26a7h7UVXh5+a
 rNru28qBBCxUhqLgBffinW8nIfZuCm6DjpdoaGpVIO0uA3YXV44hbu48MQKowh9K46oW
 qcSqh6NubPJAcHlLbnTyMyTozJg9wWaidft91+z2l1rQ+/0V/54+velSaHgRpRSO/2eF
 ln396ABjlllXt2T0t7iD23yJ/6EwoRZPA8V6LUErCknSeUBIYp5N0mXd1JCeyiz8cLaR
 xC7NJ/AfZD4wDwsMuaVfHL8RK9ajyU5xC6IQC33BsZJ7l12HeyLD93JZN2yPFsi5qH2h
 7+yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:in-reply-to:to:from:subject:message-id:date
 :user-agent:mime-version:content-transfer-encoding:content-language;
 bh=uT+dux+2hvy/k4yibWIepWagDCyEDVjI47X2i3xAMX8=;
 b=DgKbr/bUo6xNQgHI0yWzQh3xOwL9UWol9r9hZzChyWsgUL4EZmoSH3Z/fS5lMkAbBF
 I0WLlV4eo/Vo08i74lHUowTUSc4Pi0rnCQi/6f/zcRO2DhUzDmM+iB1zUepSQPRhCoTw
 XoQ5ezeGimT4vWF/QbmiF7ce1GDSy/+hmx8+VzUX5m8J6VcW0y4xIxFSpX3TxaErofpS
 HRU46yvC76kDsra4wk7xGhMhAFYnvuYjho1rL6ApOnuM6AfP52LOipjed+7Wbyh4x82k
 z9SKyD/YluWCcJY3+Pt4uNx9iBKSe2VyQoFduVHnDb/MNZ5c64uD5i2BTAeKcss0HyJ9
 lYoA==
X-Gm-Message-State: AOAM531KUfxjL5cFql3dm8AuiptRX5XjM+xrWDfb6XpieP2DvXeM0tmG
 oigEs0s2sN2x8r7YTtl3DgJypSvSpP5ViA==
X-Google-Smtp-Source: ABdhPJyGQIJRh4eeqUpi7CiggTRimNJ9hJnXDGNJvx3PmCjAdXVap1z9BcCDz8fAayQF6DhxMNqUTw==
X-Received: by 2002:a05:6402:1c98:: with SMTP id
 cy24mr44388058edb.296.1616014913434; 
 Wed, 17 Mar 2021 14:01:53 -0700 (PDT)
Received: from [10.0.5.152] (24-113-252-168.wavecable.com. [24.113.252.168])
 by smtp.gmail.com with ESMTPSA id gj26sm31566ejb.67.2021.03.17.14.01.52
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Mar 2021 14:01:53 -0700 (PDT)
In-Reply-To: <20210317184901.4029798-1-imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
From: "Zephaniah E. Loss-Cutler-Hull" <zephaniah@gmail.com>
Message-ID: <208d393c-bcdf-b0b4-18bf-9f6c390a87ab@gmail.com>
Date: Wed, 17 Mar 2021 14:01:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Language: en-US
X-Mailman-Approved-At: Mon, 22 Mar 2021 09:10:08 +0000
Subject: Re: [Intel-gfx] drm/i915: Fix DP LTTPR link training mode
 initialization
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tested-by: Zephaniah E. Loss-Cutler-Hull <zephaniah@gmail.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
