Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE019D4DE4
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2024 14:40:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E83CB10E953;
	Thu, 21 Nov 2024 13:40:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.b="eMpwM28P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A191D10E953
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2024 13:40:28 +0000 (UTC)
Received: by mail-qt1-f179.google.com with SMTP id
 d75a77b69052e-465392a6844so1680321cf.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2024 05:40:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar.org; s=google; t=1732196427; x=1732801227;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Jg1k3RnWgrw8OV7UdpUx8duXHK6tLhyipHDUcTjkIYI=;
 b=eMpwM28Pg3O65vjRoGgTBxmMs5z5ugpAu5LVQXEOjMg2twcPvm6SnuHl57oKaNfRIp
 xHIiYQmO3zDcC3mAVz6pLEjBo54ADQvz15KZ7O90D6UGv859t69Tb6s93vL4gCVFTZOW
 Evzs2Kas4fll+n8DcpnTRtLy/TjZTZOMMd/Qd9FPBvhtzq9Mf6PSrfvJiK3eLqfhMS0H
 4CmhDw1nwxoNN41in4x9axJPyroiJFNOIi9Vc4iFa5niyoYRuPIB/FP7FRjpE9rcbRtH
 +Fii20F+izVtldHvXxm8gvi0fWV4kWFcvSg4ScPYNY0BoCmZQ4peLaKmPTho4wyWRrca
 tVZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732196427; x=1732801227;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Jg1k3RnWgrw8OV7UdpUx8duXHK6tLhyipHDUcTjkIYI=;
 b=E52JQ+qUCMr6ZEvojtJaoo0WIZLRjmw5YJjKR0wfWnv+Zp5si4GyqnFwIlatl5unTe
 W9Oqe4FiB7LlLAYuGwiWfKXnPVqV65sarFvegfBLGY8gHvx8cY84/Hy0bKd4h3PFAR3w
 oeNgWL8pX63A9naKjgBCJRjoe2FmPVR+yPJdfJdb0CKyaR+BVSh1B7aPZnwOcm5zXcTh
 s0anNe3NwDm7778NOWsalfR42Cu83TDygqRc5OpibDkxUZndEpgic4SYFLd0v9D1nuWe
 wxIkgT5Mb/0GpHlvGHBM/yZxiWsmgQYL6mwoOwEiBmTXKuCMG/xV0VhDk6D0x+JRQmmD
 +0XA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVOOC3xVJfZ2z69Kjqja017bgyl1BREiCLokbleNLqoJtOIpVwrxA4PMvACA+lmDYZz8XOiKu81GNU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwUisOZhm+W0zyk0qpkte6LCc/ZfXB853cyDFYw+ctdMyX4IV0J
 dBMWuiNbwIvk5GNg07br77z8fk35FpamQ7oQp6dgSlZhvst639d4u1WSbT6zt1yJdF+zgsDl0pT
 1YWbHiVFplaczlXRcuIN5AGuj1pZiUnLqjttWGQ==
X-Gm-Gg: ASbGnctclZXXJihWPeoacI8iRDtw7NcHE4Cef1GF57kKDyXN9SUaT3ziqBclQJmFx1l
 H/GUIZJY8AhxYc+25cZM2xTxo4Pr6
X-Google-Smtp-Source: AGHT+IET7PCfqOeH44Y1fZdAWxFlm87yVkgpnEzFDVxcVa32Y1WtHe1a7eCSIr5Zn+Io8kH89HwTwQsFTAXOyPCCUi4=
X-Received: by 2002:a05:6214:2583:b0:6d4:2131:563c with SMTP id
 6a1803df08f44-6d43780ec69mr95845566d6.27.1732196427448; Thu, 21 Nov 2024
 05:40:27 -0800 (PST)
MIME-Version: 1.0
References: <20241121122603.736267-1-arun.r.murthy@intel.com>
In-Reply-To: <20241121122603.736267-1-arun.r.murthy@intel.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 21 Nov 2024 13:40:16 +0000
Message-ID: <CAPj87rMKYLe+dvwsSYYFm8BZC2X+S8XBMv-VRt0djnj1GqRgnA@mail.gmail.com>
Subject: Re: [PATCH 0/8] Display Global Histogram
To: Arun R Murthy <arun.r.murthy@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
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

Hi Arun,

On Thu, 21 Nov 2024 at 12:35, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> The corresponding mutter changes to enable/disable histogram, read the
> histogram data, communicate with the library and write the enhanced data
> back to the KMD is also pushed for review at https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/3873

Again, the Mutter MR which is linked does _not_ write anything back to
the KMS driver. It would be much more clear to explain in your cover
letters that it currently reads the histogram values and does nothing
with them, and that an expected next step is to make it write the
processed values back to the KMS driver. Even though I'm sure your
intention is not to mislead anyone, what you are writing here is not
actually true.

Cheers,
Daniel
