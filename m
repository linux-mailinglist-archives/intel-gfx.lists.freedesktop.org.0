Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B399F1632E4
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 21:19:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12F306EA7E;
	Tue, 18 Feb 2020 20:19:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30F876EA7E
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 20:19:16 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id 1so7974236uao.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 12:19:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C09+b4WycVqWStNpRbvjJ/yZ/X36X45pr5K1a9fWHVs=;
 b=jH/ouQZx22EZ9oJLSia5+ipLB/VNSHR016O8ACzBqRPq0Ix0I4c07mDZU80bFiq7z9
 3itxmMjC4p2otsHlCPWkT5FuTH61nRt09aUmVUh8iqHyRa+N0FmsrIKkoPvUuKPdWOhe
 VXzCdajNvhdmmCfLCnzdQ1EJSDur50bdlkegIIKoupzYxAfJIgzhHYcULCxGQuDjBtPA
 6+Mil3G6xgkQjgPQEaeOa2JvoLLpSTR0LKW/yLXTvE8GmSXukEPmZTTO7tbF4DEUp1W0
 Ky9k972ggDdKbAP9AKQSJh2e9im/8e0+AaXCdmYr81nA6W4KIR33WSdyaWOVR5YaxGsK
 PZNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C09+b4WycVqWStNpRbvjJ/yZ/X36X45pr5K1a9fWHVs=;
 b=T3sDeKwfkFFR44xEMabHRRnFrNPk3UYfHDW0N6iufzc3uu4p3EhOwsqp+y63WOXgex
 JTXUaLxuwVcBOVR/x0zsznAot2lJRno6HJGYeq9oOtW33vGx+Qf2mKkTAM33wVxIrKnF
 bOcPZqJs6Nr7OKEBWu+KUQJsuhhzlQZn5eNCtgBwUZWiWKlz7W6h4+I/ajpQXNj8r3DN
 SfZDd2QaOhfXOYHMgN1x9/yi7hfk9nsEfqXsC0kaVVJT20LXfIwltATR8MxUJmUCIowC
 KUU1QCP411u0hnMLKq/ruJZHDv3c+pDM76r/YwV9xzuEk/eHNtLrgbYe11b70+FfJWLD
 6PkQ==
X-Gm-Message-State: APjAAAW1KcfIzuubjSBMyirmuhYxdDe5CQmGQ+TXrAyc3ND59ZoI4sGW
 o969hBK29VnyrXjEs048ZZVedWfNJ3rN4UTHcPCOfyd7
X-Google-Smtp-Source: APXvYqw574WM/xlvvS/Hd9oJIHXLEVBR1Slr932FLD++bmSaT/ImMekWSeweZrp6LAS4AvirETrWT/zwz8iWNs+Z1cY=
X-Received: by 2002:ab0:e16:: with SMTP id g22mr11529704uak.129.1582057155137; 
 Tue, 18 Feb 2020 12:19:15 -0800 (PST)
MIME-Version: 1.0
References: <20200218162150.1300405-1-chris@chris-wilson.co.uk>
 <20200218162150.1300405-4-chris@chris-wilson.co.uk>
In-Reply-To: <20200218162150.1300405-4-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 18 Feb 2020 20:18:48 +0000
Message-ID: <CAM0jSHMpE2Twm6shFH_AZHj-U6HyNiGZSCUvdrKxeo9jOQ2-TA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915/gt: Fix up missing error
 propagation for heartbeat pulses
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 18 Feb 2020 at 16:22, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Just missed setting err along an interruptible error path for the
> intel_engine_pulse().
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
