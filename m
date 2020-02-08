Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0503615ADBA
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 17:54:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9E7F6EADD;
	Wed, 12 Feb 2020 16:54:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com
 [IPv6:2607:f8b0:4864:20::d2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CA8F6E40C
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Feb 2020 21:11:51 +0000 (UTC)
Received: by mail-io1-xd2a.google.com with SMTP id s6so3385793iol.9
 for <intel-gfx@lists.freedesktop.org>; Sat, 08 Feb 2020 13:11:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=aTK7yhlSEGpBwKDCVmlXr2DljJ+PIB3ZC1I9vXzvb0E=;
 b=IHNe8nGru/bdvbOAP7Uy5K5nr/D4Wrqu4iueqKUw7q98secsyXjqKF5iAqvQNBViyV
 JXQdJAY+NckUk970xFPEUWSAuSuQ3Sg3zxSJKh6lhOQz9cBKhm49TOy5n9O+6nwgx34K
 r9dinNBJeRMvEiM8LTi1/q+EryMcc7QEEP0KCDYzKaY5DsL4tZOPV8ajURS1YIQemCZ3
 ffWZoIt66S2pG6huMDLIvOQRhODfIE2FbjwwZr9FZGZrDnREwL+3GGl3f2khqur5JjYh
 cijDQpNapAmXECYaPRZtF31sXoBs9Ao5Wn2vpg8tbVHG1egHPwyfqbw0mwDyjYBdF+BH
 C46Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=aTK7yhlSEGpBwKDCVmlXr2DljJ+PIB3ZC1I9vXzvb0E=;
 b=MNr8SwfezZIpie5iHHX9VIaEZ4imgszpYN2ITkiSkwEZyxAJaWet4xAmiEt2FxtjXD
 SL8gZeKx7IGjGWrrsx2+fDYTBobjwGGwxDZrxaRyddbVlo841sxBjVrX2daMimR8LQu7
 JP2Sh4KQ+ryPzIY66vTP9hS8XWPZWPHWROD8ToxAiL6JTCVu3Dzb2nfnsyjQcTNXWJlM
 b35kX7+u/EurWc1fRuxFwNH+J+k5MN7V/oGDYnvt1Aw8t6/v4IpmN7AjWWFDKGH+JHd3
 +5U91XYK0TNQX5oyi7X5xI25hcNPfG5GNGrbOZjXppGOQ+W5COoVAcoAqxifb9u3DRxg
 DJgQ==
X-Gm-Message-State: APjAAAWmsrs0+DKYAHBlxNThry39CDqHbcamZmCSZ1FDlpFCTsLwe9Ic
 R7h9ofSCDsDM9nuZefzsTxkhwzKyUJ557YtXJJ8=
X-Google-Smtp-Source: APXvYqxD4A9g9CvhMFwaQcD7+gHcMddJOfdDJ6Ne6aqhgdEkybLOSj1YO4yNzyhyXOXC+k4hE6UehbcFFKS5tSZYxSA=
X-Received: by 2002:a02:3312:: with SMTP id c18mr4196123jae.24.1581196310756; 
 Sat, 08 Feb 2020 13:11:50 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5442:0:0:0:0:0 with HTTP;
 Sat, 8 Feb 2020 13:11:50 -0800 (PST)
In-Reply-To: <CAOzgRdbL0L84quO0yxoNg0+NtPvqWhSWxntgEOjK4B-zPOeyEw@mail.gmail.com>
References: <20191219124353.8607-2-chris@chris-wilson.co.uk>
 <20200207163125.15903-1-youling257@gmail.com>
 <158109328469.16098.11014223815188039767@skylake-alporthouse-com>
 <CAOzgRdbL0L84quO0yxoNg0+NtPvqWhSWxntgEOjK4B-zPOeyEw@mail.gmail.com>
From: youling 257 <youling257@gmail.com>
Date: Sun, 9 Feb 2020 05:11:50 +0800
Message-ID: <CAOzgRda1Ox5BS-HZ10BtU9+S+zyV+OikNU_YSqh_PNsuETpApg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Approved-At: Wed, 12 Feb 2020 16:54:23 +0000
Subject: Re: [Intel-gfx] [CI 2/2] drm/i915/gt: Track engine round-trip times
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

it's not the patch "Track engine round-trip times".

it's "drm/i915/gem: Asynchronous cmdparser" "drm/i915/gem: Prepare
gen7 cmdparser for async execution" bad for my Bay trail device.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
