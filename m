Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E1D1A9956
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 11:49:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 359046E937;
	Wed, 15 Apr 2020 09:49:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail1.protonmail.ch (mail1.protonmail.ch [185.70.40.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AC5D6E937
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 09:49:56 +0000 (UTC)
Date: Wed, 15 Apr 2020 09:49:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1586944193;
 bh=7AXi+XDaTG0w8/l97X+VpeDgOqO5q+BWvOUZKK6wPlk=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=KNjh4IVxb71+ZnFdQ69uxVae/xxoKVeY2bO2W81Pzpf6xGV8Gbw/e1VT8u6DJw4h3
 BAfR5yu/6VfDfYSXnWdLCi/TyDYHwPSDegC/funz+HoachVE3emP8ukS1kC8TQyqx0
 ueE7xooo7Cf+BFyNAQC6gyysuicTTdAuX3wtDPeY=
To: Maxime Ripard <maxime@cerno.tech>
From: Simon Ser <contact@emersion.fr>
Message-ID: <0kwho152-gzRe09N-ECBh9KepTGX-b_MU8X-TtBnTdWAQP9o5ni7tOVqGn9LK2U2ormexeYvS8U1uVcBMY5Lv-Le4z0dnnMnRaSbb29xjqo=@emersion.fr>
In-Reply-To: <20200415094649.2tgelyotjliao2dk@gilmour.lan>
References: <20191022005910.siuiwfikmr76qpg3@smtp.gmail.com>
 <20200415094649.2tgelyotjliao2dk@gilmour.lan>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on mail.protonmail.ch
Subject: Re: [Intel-gfx] [PATCH v7 i-g-t 2/4] kms_writeback: Add initial
 writeback tests
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
Reply-To: Simon Ser <contact@emersion.fr>
Cc: Brian Starkey <rodrigosiqueiramelo@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 nd <nd@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> > +   igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR, (uint64_t)out_fence_ptr);
>
> On ARM (32bits), this cast creates a compilation error since the
> pointer size isn't an uint64_t.

Does casting to uintptr_t before uint64_t fix it?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
