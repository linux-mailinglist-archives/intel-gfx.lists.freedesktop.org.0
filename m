Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB5716B821
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 04:34:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4373B6E0D4;
	Tue, 25 Feb 2020 03:33:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com
 [IPv6:2607:f8b0:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA1F46E0D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 03:33:55 +0000 (UTC)
Received: by mail-ot1-x334.google.com with SMTP id p8so10785514oth.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 19:33:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/AtHRSTtrgdpxX7I9KkYj8t+4xP5KBWvQCkTpEy+3KU=;
 b=pVTjx6gLDVSqirZcMfRkxTMBQy+HPbUBDYKIPzvhxPVQDlljeZa8FR8gILTA0HOUKE
 68LfM0OV9T3nGwGa0R38F4M1VPAMD8SE9yLQ3dBnS3cTvly+m9o51ujOWtHXI5bFgKqC
 F4JcSM81rtvzr0X+QPgs82S+fY8SHpjGeSkiXWrmy3FGJNLukuqD01iZHN2t4RfLTJ9B
 zdOXzMxdwfusXVmubgd2Ssl4JW7DTUslWvfuiT3rB5Y8eUvOag6R3YC/n7hQISRQW4mH
 20XW+/Ib+yFmr++JsxHxsSacy4U4Ie7N42UILVRHZMknVTlfDtUu55b/TRi8eKDf08QJ
 /ZWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/AtHRSTtrgdpxX7I9KkYj8t+4xP5KBWvQCkTpEy+3KU=;
 b=LHALvtNBnD3QOHIunR4jsJcne24AUp4SZZFHinvPU2NZG9XFYKKGV8XjLMqsE6LR6l
 +HlYemCZPkpJGF0gbF5EgdsG1qXzDd723vkea5DhdKz0atQKi1odOQZ+dHk8U3O3fFrd
 YtqJxIxUhkeKLfHihdhLh8D+rqJi9ibWIfpIaG+5pdaAB8Li9zTDqFSmf7dodjIMNDd1
 Che8FGLc3t4GFrFV4UMFyYIUVCtv3ALFS+DPWvTotZMZO2oa6LqKeqNCoB1/rhZi7C0F
 eFWj1cJPLSjQn1GnykHbv2IbbWxS9TWleY5b2VYODCAGvyRSqv+sJswY/dksXdvxmIPC
 509g==
X-Gm-Message-State: APjAAAVfb0PkC6iK2+njr/bqa+Vaep8IHv2rVyFPNihrmWfW0/6gmdQ2
 GN3Ho8MUMuc0dY+c/3rKdYCpwIJLLiDCx1mySzU=
X-Google-Smtp-Source: APXvYqwHUUEHXCJbBdkJoX9BDITo2hdWfvSbhL0O1Efu2QWpvI2GZeU35fVK5ueGzDNohKTUnHOLtZ+vBHupavqkCJA=
X-Received: by 2002:a9d:4f04:: with SMTP id d4mr42798017otl.78.1582601634987; 
 Mon, 24 Feb 2020 19:33:54 -0800 (PST)
MIME-Version: 1.0
References: <CADDKRnBq6oFFfVzqDRwwx2Eoc74M7f_9Z7UCdSVmS_xGMD1wdQ@mail.gmail.com>
 <CAHk-=wh101Kcdby3UwzGWcCVELdGJoyduQ7Hwp2B6tavzx8ULw@mail.gmail.com>
 <158257881650.26598.5580907010251811605@skylake-alporthouse-com>
In-Reply-To: <158257881650.26598.5580907010251811605@skylake-alporthouse-com>
From: Dave Airlie <airlied@gmail.com>
Date: Tue, 25 Feb 2020 13:33:43 +1000
Message-ID: <CAPM=9twmxKz97jMNjMq7U47tZ_3QiZp73EZrcwrYuwLhApcx4Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] i915 GPU-hang regression in v5.6-rcx
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 =?UTF-8?Q?J=C3=B6rg_Otte?= <jrg.otte@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 25 Feb 2020 at 07:13, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Linus Torvalds (2020-02-24 20:18:03)
> > Let's add in some of the i915 people and list.
>
> Haswell eating kittens. The offending patch will be rolled back shortly.
> -Chris

https://patchwork.freedesktop.org/patch/354775/

is the patch that is working it's way through the system.

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
