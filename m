Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFE33B5B64
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 11:32:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31D706E3DB;
	Mon, 28 Jun 2021 09:32:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DE836EC27
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 15:36:45 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id i4so3136249plt.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 08:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=oSmcLkLaYmb30K4x2o5V0PgF5sReFf2n8jT9UaERRsg=;
 b=bSQo4DhU2KuL3CjUZN64j4WcwdggQch/R7XnEdix2NVuOf40qPGfYHBno8Xm619GAr
 wg2kvoNy4VPNerE1UJQqTO/mn+wSl2WW8B9f7dL8xOzOgdg74JEfehGKdbWSQ0+1rr/t
 2LEY4HKbsscIOGINiR9uO5OVpBxOglyxXqSvwqqzzZpKt1BhIehu/QDEuFSbgcAbmd1A
 2Vn5BfcWryEpw7ny/6e9BAwB13V5uLq3/TeIlPL3nNBaDSZ9vfocg3yuStOuQjDnW2a3
 vbLINUOPqFtht9Zb0kQj2xFTxtidhP/wmPjkGUm290ZvEfhGiSSc1t+MN7azCayA+NIy
 PYiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oSmcLkLaYmb30K4x2o5V0PgF5sReFf2n8jT9UaERRsg=;
 b=qxnIC3QK3mReG21rDQVw4h8S5SJuh6QOFN5htvdS6DJYYI4juzPTOTakTnOQoGtpY3
 qglyFAtobYso906UQnM+HFJ/RT94cgbJy5fFQYPQP39LmTuZG5ZZyPhhX4lh8xMgK49Z
 KUADMWf/w2416XCup7kAumQhL5evMf+IdWKn7copgLI8PZDBb58NOopKkqmzqSez/6d3
 AO4kj6hDY4vjGzaCJ0h7lQm3D/60iYw0L+9t2gcIk7WRx31M/G8WZ1hEr0mfQJ1052W2
 FHEAX8fHeOVvs2BTvLhFPePRV62NlrF3bbCxuLY0CFPWuXUjxt6aCqUHHweEZ3Rb87JH
 kpmg==
X-Gm-Message-State: AOAM530vemjlDWrajKHTk/7WovYKshxhLpDVhF63qQT/tR+hSritLSIM
 pNvKSeY7yELiXrW8e17NzxM9oQ==
X-Google-Smtp-Source: ABdhPJxfmbtVti63yi0rwniZ/V3vp7ddChowhbbwk916pZwapRYWPu+wwBqr+2N8fYjWJaOb0U93+Q==
X-Received: by 2002:a17:90a:8542:: with SMTP id
 a2mr14115924pjw.185.1624549004763; 
 Thu, 24 Jun 2021 08:36:44 -0700 (PDT)
Received: from google.com (157.214.185.35.bc.googleusercontent.com.
 [35.185.214.157])
 by smtp.gmail.com with ESMTPSA id p1sm3132065pfp.137.2021.06.24.08.36.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Jun 2021 08:36:44 -0700 (PDT)
Date: Thu, 24 Jun 2021 15:36:40 +0000
From: Sean Christopherson <seanjc@google.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <YNSmiOsmJin4UPcG@google.com>
References: <20210624035749.4054934-1-stevensd@google.com>
 <20210624035749.4054934-2-stevensd@google.com>
 <1624524156.04etgk7zmz.astroid@bobo.none>
 <4816287a-b9a9-d3f4-f844-06922d696e06@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4816287a-b9a9-d3f4-f844-06922d696e06@redhat.com>
X-Mailman-Approved-At: Mon, 28 Jun 2021 09:31:03 +0000
Subject: Re: [Intel-gfx] [PATCH 1/6] KVM: x86/mmu: release audited pfns
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Huacai Chen <chenhuacai@kernel.org>,
 Alexandru Elisei <alexandru.elisei@arm.com>,
 Aleksandar Markovic <aleksandar.qemu.devel@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, intel-gfx@lists.freedesktop.org,
 kvm-ppc@vger.kernel.org, Nicholas Piggin <npiggin@gmail.com>,
 intel-gvt-dev@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, David Stevens <stevensd@chromium.org>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 24, 2021, Paolo Bonzini wrote:
> On 24/06/21 10:43, Nicholas Piggin wrote:
> > Excerpts from David Stevens's message of June 24, 2021 1:57 pm:
> > > From: David Stevens <stevensd@chromium.org>
> > 
> > Changelog? This looks like a bug, should it have a Fixes: tag?
> 
> Probably has been there forever... The best way to fix the bug would be to
> nuke mmu_audit.c, which I've threatened to do many times but never followed
> up on.

Yar.  It has only survived because it hasn't required any maintenance.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
