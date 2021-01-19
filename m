Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 089502FBC33
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 17:16:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AE6E6E87F;
	Tue, 19 Jan 2021 16:16:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com
 [IPv6:2607:f8b0:4864:20::733])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98CAB6E87F
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 16:16:27 +0000 (UTC)
Received: by mail-qk1-x733.google.com with SMTP id k193so1228019qke.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 08:16:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nVbI0BnAjDTPOLVZg1dy+VzyInYHoK8pjBcOxWzjgxk=;
 b=YYTM5VJjz3YdeYw5eJ2Bdb7mTNUXdmbXCDOmacVgp6lW8VMRa6CTxpXK4HoZq6J7xv
 NXjXZ9Ko/oyC0jM9/JNttkb1F6kiRVbr5zKAXNd8n1xoWneqH+DItS5YrgT/c9EEnZbC
 194UZ2qfGAtHrq8fI/jQnP/Z1cT5mgqmJqwoU412hwAZCke0fV1Kzk7FJRV7uj/i4DsA
 ZMJW00S2XDfHGvZQiKuF3v0+qXCUFU7KkaDDOO763Nq908JXfQfA/UD23eOJx9RXNUpT
 G5mEhiDBKBYSHvb14O4OQdyu5vAUy+HI3jxvBqP6vE9b5NBEV+NmuruT+7EKzKoRhowh
 3ebA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nVbI0BnAjDTPOLVZg1dy+VzyInYHoK8pjBcOxWzjgxk=;
 b=r+Vc2MNYRjtYN/h+598eWoR1YxjkmDmDdZx3t1t76xhErQ+q2PxTusV3QJ2Cu9fbcL
 hxi57L8wXNF6msncfqMsKgviWQ3CNopM2e2mV8QVGQ8kSGb3G5K3TSqpLMKqtyqKYPmK
 pr+tDksBuYxd5Xaxa45IFnQEzvelMsyw8TLAoFmfYblHfGSoluCuVfsyy36BwR1Rye7J
 VP6NKKRwfzAof3lOEX6hrrDV8La0ekjEtzi0L5ht0dqQ/zPFnSERMAhxVVnWMQPDpQhe
 OWZ3WVedkEcmM+ArBF1QGYoIc0/+KaBg9j0YXkPO0++14leShbeD1L/2/hljNrfIx72B
 kGog==
X-Gm-Message-State: AOAM532bOSq9oCBhu0nHx22QKwuL1aAhiJoY5TDjM49oHGRDSwzYn0VH
 pn2GCxzhW/MPkjIG183lf10A67t6CbuYOwNiA/c=
X-Google-Smtp-Source: ABdhPJx0CnJq21MKf0ydhAWIj/IKVR9yblnHmyL235IP1dNNeQ8PA9myJ1QLox30GeNjJ5BF6saHImtV4LgSwr1Nrj0=
X-Received: by 2002:a37:418d:: with SMTP id o135mr5129399qka.426.1611072986781; 
 Tue, 19 Jan 2021 08:16:26 -0800 (PST)
MIME-Version: 1.0
References: <20210119144912.12653-1-chris@chris-wilson.co.uk>
 <20210119144912.12653-5-chris@chris-wilson.co.uk>
In-Reply-To: <20210119144912.12653-5-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 19 Jan 2021 16:16:00 +0000
Message-ID: <CAM0jSHNfGZdve_fkirqHF5TtxDB0szhEP53OKW-gq7Rjfx--yw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/gem: Make
 i915_gem_object_flush_write_domain() static
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

On Tue, 19 Jan 2021 at 14:49, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> flush_write_domain() is only used within the GEM domain managament code,
                                                       management

> so move it to i915_gem_domain.c and drop the export.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
