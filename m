Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F021777C70
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 17:41:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAED810E55F;
	Thu, 10 Aug 2023 15:41:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7255010E55F
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 15:41:17 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id
 3f1490d57ef6-d5e792a163dso1109118276.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 08:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1691682076; x=1692286876;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=/WtGf0h5CncOSaqTiuNKL5UrEMZuYNWdm8HHY3JpqR8=;
 b=1HM/o9GT5W6xPOOgpHKfzvvpV7lU0Wj1rCnCqdJbNn47dXUhb/wMa+aEfE4YXy2OiD
 0P/FUbU8WDKqdvLRTEGvGaU/5i0jsp875zfL6WgkM9CPKn7jCyjjkF2DgTrnat008Dhd
 rjJxiF0G53UGr1ukFDPPHiRVDJPx6VzOva54SgjGxd7FxZJCCCQFhMrpre3c9ethg+iR
 0e1kVeWrSzsKkAvTgG26kjiLHCxCaOYC0gO50qMivRiPTYe/SI6lUvAJ+pGpSooaXKzI
 OPVmnL4Q3n/ISA/xp5hnWdtjbrV1Z61MQpPb+am3DxnaS2wu+HB1MEuN+BnSoTSDhY3Y
 sJ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691682076; x=1692286876;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/WtGf0h5CncOSaqTiuNKL5UrEMZuYNWdm8HHY3JpqR8=;
 b=fAD1kP/DQAeSDWJnLlUbbgqsbutaieJtJuh3ubPQrTydMcLMT6jtI4t5cFlTa28fIP
 l6HTilfi8d2k56oKOTJg49DHYnbL9/gQXdtOCbkhy1bkdQPpgR40OgMXe1ImuqKAGKBv
 eitRzC5bHu6Kdn0kdc58/E2tiJDCs2jAx69jB1Ci98eIcOtSWBvMHVO1Gp3Jnd1eJ8F2
 L4umdw/5O/4LhoYKMBl8n5lpISWZ5ch7i89Peowd10q5Mr6YH+2o5BknI0XY6F2MSpU9
 AOzdI+mF7kF9t6GNS4ZE+udZhvR5inURZzqSxsSEcrIOijJSdRsNxkKRQHFlwn2W1Vxh
 xq3w==
X-Gm-Message-State: AOJu0YxRIvYeQgNCcl6N0O483nmJfVFqtSjmGmfRTZrzf9GkbMOiUyKS
 +h6bmdPa1ubAsXRhyTWqMPGtySMIOZU=
X-Google-Smtp-Source: AGHT+IG2a4LzCzXKIUuYBIJcR0ffZM366KAOS5FFEkMlfjQF/GkGNK5iXWe5lXEZxANQwLfExUrLpLQ5PWM=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a05:6902:160d:b0:d4d:deb:7ce0 with SMTP id
 bw13-20020a056902160d00b00d4d0deb7ce0mr52915ybb.13.1691682076565; Thu, 10 Aug
 2023 08:41:16 -0700 (PDT)
Date: Thu, 10 Aug 2023 08:41:14 -0700
In-Reply-To: <ZNRTO0hY8GJBrnOg@yzhao56-desk.sh.intel.com>
Mime-Version: 1.0
References: <20221223005739.1295925-1-seanjc@google.com>
 <20221223005739.1295925-20-seanjc@google.com>
 <5581418b-2e1c-6011-f0a4-580df7e00b44@gmail.com> <ZNEni2XZuwiPgqaC@google.com>
 <ZNLlseYag5DniUg3@yzhao56-desk.sh.intel.com> <ZNOjyf2OHQZYfMEJ@google.com>
 <ZNQfX4JHTJu1Qtl0@yzhao56-desk.sh.intel.com>
 <ZNRTO0hY8GJBrnOg@yzhao56-desk.sh.intel.com>
Message-ID: <ZNUFGljM5oet11xN@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Yan Zhao <yan.y.zhao@intel.com>
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH 19/27] KVM: x86/mmu: Use page-track
 notifiers iff there are external users
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
Cc: Like Xu <like.xu.linux@gmail.com>, kvm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Ben Gardon <bgardon@google.com>, Paolo Bonzini <pbonzini@redhat.com>,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 10, 2023, Yan Zhao wrote:
> On Thu, Aug 10, 2023 at 07:21:03AM +0800, Yan Zhao wrote:
> > > Reading the value after acquiring mmu_lock ensures that both vCPUs will see whatever
> > > value "loses" the race, i.e. whatever written value is processed second ('Y' in the
> > > above sequence).
> > I suspect that vCPU0 may still generate a wrong SPTE if vCPU1 wrote 4
> > bytes while vCPU0 wrote 8 bytes, though the chances are very low.
> > 
> This could happen in below sequence:
> vCPU0 updates a PTE to AABBCCDD;
> vCPU1 updates a PTE to EEFFGGHH in two writes.
> (each character stands for a byte)
> 
> vCPU0                  vCPU1   
> write AABBCCDD
>                        write GGHH
>                        detect 4 bytes write and hold on sync
> sync SPTE w/ AABBGGHH
>                        write EEFF
>                        sync SPTE w/ EEFFGGHH
> 
> 
> Do you think it worth below serialization work?

No, because I don't see any KVM bugs with the above sequence.  If the guest doesn't
ensure *all* writes from vCPU0 and vCPU1 are fully serialized, then it is completely
legal for hardware (KVM in this case) to consume AABBGGHH as a PTE.  The only thing
the guest shouldn't see is EEFFCCDD, but I don't see how that can happen.
