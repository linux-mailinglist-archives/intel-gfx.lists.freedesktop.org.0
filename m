Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCF479EFD0
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 19:05:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C51510E4BE;
	Wed, 13 Sep 2023 17:04:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31D9110E0E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 17:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1694624694;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wlBkryVN5rhiL8WAT3ByIZQA9frdvlEqEkS+xlVMCtM=;
 b=HWrYeo2+HhlQPdk4GHFhjPwHi76Wh+zB/bw3tLUnqirm1A5+kLKWkX8zWYlroTSJk5X9mw
 p1Fp933cfLjP+IzDPVjKe/DUTU0xJ154pNt9CqkQV6BAgicTB6QMrTUFsOVO+LJ8PaSTdH
 MwqTFO4Q9fP5Wo8nBaamThTv4oEjmyU=
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com
 [209.85.128.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-241-SS3c46L4PvKAMnrKD15coQ-1; Wed, 13 Sep 2023 13:04:52 -0400
X-MC-Unique: SS3c46L4PvKAMnrKD15coQ-1
Received: by mail-yw1-f197.google.com with SMTP id
 00721157ae682-5925fb6087bso383207b3.2
 for <Intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 10:04:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694624692; x=1695229492;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wlBkryVN5rhiL8WAT3ByIZQA9frdvlEqEkS+xlVMCtM=;
 b=dHm6ALSxn6+lfJ43zkiuUEKIYgHyT1bNsNu6cjJ1Z9crDWp6whrR/SlmnJMC/I0FYe
 JU88/29V/NzXCGiimjOza0P1wOLy+C9IH8Zhylj7+UiEV+jrOFtQ2dhZTf16XqD/SLHo
 hwuVs6vCvGMWW34WkNEAjjUPZFbldIKtFT1AS+caDfLlXRZgvimc0bpHd5Dx9eO/z1DR
 00Ap4dHBxjdnJJzC6mnBhvtgIzES52yPlgYgp/Yl2WuhrC0n5egHlccCvdNY1ywVjDFf
 +kVaCuk92SHRWJWkQOiMFT/XnsrHOiRw+J52I6hjCklLNlvwqEhW2VqJ7UjNI8JxW5CM
 Yu0Q==
X-Gm-Message-State: AOJu0Yx0L0RSmfJIiuL1rAYNtShc6rohRHF/3wbHICGoZYH3MuyAvg+a
 le2EdPD/q5a3elWCW486L0J6+hEaxvxg0JdQGFwx6ruXUjdcKPEfujXzjHCXtl4xPPolDQwWRR0
 4AfCsdKXwksLA2hWpwA+tJbi7DXpp4xaIeNqfd15N2mCv
X-Received: by 2002:a81:9216:0:b0:56c:e706:2e04 with SMTP id
 j22-20020a819216000000b0056ce7062e04mr3327018ywg.0.1694624692323; 
 Wed, 13 Sep 2023 10:04:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHfDrGChagCPCvOX8SHQTPvb2eWO5VPBBVjxJJp2+fNqeE+FvInV2CYjAO7+dDzC/Ut+qqa07ULTSeuSXjb6cc=
X-Received: by 2002:a81:9216:0:b0:56c:e706:2e04 with SMTP id
 j22-20020a819216000000b0056ce7062e04mr3327004ywg.0.1694624692136; Wed, 13 Sep
 2023 10:04:52 -0700 (PDT)
MIME-Version: 1.0
References: <20230705093025.3689748-1-tvrtko.ursulin@linux.intel.com>
 <20230913080819.xnpM7Ybx@linutronix.de>
In-Reply-To: <20230913080819.xnpM7Ybx@linutronix.de>
From: Valentin Schneider <vschneid@redhat.com>
Date: Wed, 13 Sep 2023 19:04:40 +0200
Message-ID: <CAD235PRj3PzMwfwL6zaFko__XjQctKyMZAAXEmf_0==n_nCGpQ@mail.gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Do not disable preemption for
 resets
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
Cc: Intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Paul Gortmaker <paul.gortmaker@windriver.com>,
 Chris Wilson <chris.p.wilson@intel.com>, Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 13 Sept 2023 at 18:48, Sebastian Andrzej Siewior
<bigeasy@linutronix.de> wrote:
>
> On 2023-07-05 10:30:25 [+0100], Tvrtko Ursulin wrote:
> > From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >
> > Commit ade8a0f59844 ("drm/i915: Make all GPU resets atomic") added a
> > preempt disable section over the hardware reset callback to prepare the
> > driver for being able to reset from atomic contexts.
> =E2=80=A6
>
> This missed the v6.6 merge window. Has this been dropped for some reason
> or just missed by chance? Can this be still applied, please?
>

Just an FYI, but I happened to be looking at an internal bug report
for exactly this
error site, so +1 here :)

>
> Sebastian
>

