Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 524B36BBA46
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Mar 2023 17:54:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C73D10EB67;
	Wed, 15 Mar 2023 16:54:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com
 [IPv6:2607:f8b0:4864:20::649])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54FD910E1F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Mar 2023 16:54:31 +0000 (UTC)
Received: by mail-pl1-x649.google.com with SMTP id
 az7-20020a170902a58700b001a0534b4ddbso4609780plb.15
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Mar 2023 09:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1678899271;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=/VfOj1PxwZtE3fiW4+Wbi4dS2kE6Vdmar5BqVI1M2z0=;
 b=BEqSBnWJskRuRBspuN6FxAXPBhQk21kw/QwpQhD+OPlE7HMQ4t4minhZOXyoQwEo3F
 tt1stwO6FYs5bIqkpXIeC3XJ7m3dYjzvRiWySWCR3r6wfBOkC/PEY+WXuc80rxFKt27c
 KOzAcFEhGzqEsuuAhRKgnxCk70qP0LpFveG9jRbnMqvf2vKnfdjPpL0HesVOOclo4OxM
 BOLJ9w1PyWUHlGa3ORpqrIvOBdmK89BmWv3pPnitmBb3dg57lPujpJr63O9FjhdqQL5K
 HCjCfb3bzmtH+GiUm5c46uiyfcwSwwsV223MDV86CcsaaHgcmDJ0bQMYtI4p/yIpPisc
 6r5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678899271;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/VfOj1PxwZtE3fiW4+Wbi4dS2kE6Vdmar5BqVI1M2z0=;
 b=ui4fIbsFMY+UGQYKcNjD74gdzrYLKNSowteII7MwUKe/PsyqHNyuGEzlibwdG0aZeq
 KyH1Gfnu4N8bawOsM4xl9IAcUhrLyi9+romz8A2E8+Z7VkAYCulVJRf2jFNS5qlEca3Y
 UUhcBJgM92V9v/MHD5mat3sD5VXrt2yhalDPED0dB0MmNTtqGUz5ddcSEw6ykjzR0QxL
 Vdy0T6nUMVYk8/4VU/ScHmWhMrc0n4IGi+VtZqGFxcC94CMkizsEsjsN93GKQ8m9adJI
 +CWxCSXsqi5eVr8cQnLwzGl3Wo9891yZRhjzVQjnEs/0L0N+p97BiGPEYi6YJu9h73Q1
 cv2w==
X-Gm-Message-State: AO0yUKVIFzZJDB0ZZbtVBJ1BEU1UyTX2f/Qnaxelx7dkrgX3uPhGLMrV
 rZvbtS1Zx1l/KKn7E9auNk24MbriaU0=
X-Google-Smtp-Source: AK7set8uXr2sovLYtbxUeraNaTKwMoaMEQm3jr5Cs9656uq3YKkYAaDETqng8wyzyCVhZ2HsOOop/4RwRyc=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a65:5c43:0:b0:4f1:cd3a:3e83 with SMTP id
 v3-20020a655c43000000b004f1cd3a3e83mr122328pgr.3.1678899271499; Wed, 15 Mar
 2023 09:54:31 -0700 (PDT)
Date: Wed, 15 Mar 2023 09:54:30 -0700
In-Reply-To: <ZBGfmLuORj+ZBziv@yzhao56-desk.sh.intel.com>
Mime-Version: 1.0
References: <20230311002258.852397-1-seanjc@google.com>
 <20230311002258.852397-21-seanjc@google.com>
 <ZBGfmLuORj+ZBziv@yzhao56-desk.sh.intel.com>
Message-ID: <ZBH4RizqdigXeYte@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Yan Zhao <yan.y.zhao@intel.com>
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH v2 20/27] KVM: x86/mmu: Use page-track
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
Cc: kvm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Ben Gardon <bgardon@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 15, 2023, Yan Zhao wrote:
> On Fri, Mar 10, 2023 at 04:22:51PM -0800, Sean Christopherson wrote:
> > Disable the page-track notifier code at compile time if there are no
> > external users, i.e. if CONFIG_KVM_EXTERNAL_WRITE_TRACKING=n.  KVM itself
> > now hooks emulated writes directly instead of relying on the page-track
> > mechanism.
> > 
> > Signed-off-by: Sean Christopherson <seanjc@google.com>
> > ---
> >  arch/x86/include/asm/kvm_host.h       |  2 ++
> >  arch/x86/include/asm/kvm_page_track.h |  2 ++
> >  arch/x86/kvm/mmu/page_track.c         |  9 ++++-----
> >  arch/x86/kvm/mmu/page_track.h         | 29 +++++++++++++++++++++++----
> >  4 files changed, 33 insertions(+), 9 deletions(-)
> > 
> > diff --git a/arch/x86/include/asm/kvm_host.h b/arch/x86/include/asm/kvm_host.h
> > index 1a4225237564..a3423711e403 100644
> > --- a/arch/x86/include/asm/kvm_host.h
> > +++ b/arch/x86/include/asm/kvm_host.h
> > @@ -1265,7 +1265,9 @@ struct kvm_arch {
> >  	 * create an NX huge page (without hanging the guest).
> >  	 */
> >  	struct list_head possible_nx_huge_pages;
> > +#ifdef CONFIG_KVM_EXTERNAL_WRITE_TRACKING
> >  	struct kvm_page_track_notifier_head track_notifier_head;
> > +#endif
> >  	/*
> >  	 * Protects marking pages unsync during page faults, as TDP MMU page
> >  	 * faults only take mmu_lock for read.  For simplicity, the unsync
> > diff --git a/arch/x86/include/asm/kvm_page_track.h b/arch/x86/include/asm/kvm_page_track.h
> > index deece45936a5..53c2adb25a07 100644
> > --- a/arch/x86/include/asm/kvm_page_track.h
> > +++ b/arch/x86/include/asm/kvm_page_track.h
> The "#ifdef CONFIG_KVM_EXTERNAL_WRITE_TRACKING" can be moved to the
> front of this file?
> All the structures are only exposed for external users now.

Huh.  I've no idea why I didn't do that.  IIRC, the entire reason past me wrapped
track_notifier_head in an #ifdef was to allow this change in kvm_page_track.h.

I'll do this in the next version unless I discover an edge case I'm overlooking.

Thanks yet again!
