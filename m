Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5A665CB1A
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 01:50:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFEB610E2A8;
	Wed,  4 Jan 2023 00:50:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B729710E41E
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 00:50:38 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id
 o1-20020a17090a678100b00219cf69e5f0so37496762pjj.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Jan 2023 16:50:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=qiXxV2Hfa6NF/4ylZM+g7WvF4+7PZbuEwjwOszBrON4=;
 b=X1gfDcjSYLcBbE0MBBhwhK7htLKCvb7xiAhW84JJ8aR2Pj4C/Pqyu1xYLrpco24N6I
 C9J4IiYkw3j/UaqXUUFDvfYuxTV/W1PEByDZO0nLhXVDhQBEEYbkWvAc/QrdgV/sWe9p
 yd8EukT4278a/13eUsqTspQqTK+PO/lrb3dgkeuFP/Ggm6iHdv5OIvhBRaqiDmz+DT6m
 G5aOcyJFapCbF7bqQlrlr6MLuKYN3wDADKSYL+m4fAeRxOZiGuwWYXVA3rpzpNcqEhgh
 G851VezyQ+DuRZMMfEVjF8ForgLRPohL1fV6h73KcisSwFQS0nRBEESKvhxtVc2Sx9vL
 9xpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qiXxV2Hfa6NF/4ylZM+g7WvF4+7PZbuEwjwOszBrON4=;
 b=RqgC8XWBpLBUFQUHxgc/xJFOe4IH0XeHLHmN/P67yxezNFbU1ufnDbYOCDcAzL+EWM
 j697dldOgg9Xk+Bp9a+/xpOt6SK5w+c+ggkw3Atm0dXy50UN9DxsvOh4mtaiBTTvK+x3
 a92l8LJVEuPQBKpCEueMKNmJy0Ae42sQjYc8SCEq/jpQY/n8uqWmEED5jHv2ls+yZUJ8
 oLFAldtx3KxmSXVm0SCPYqYU3CF1tVLSoOkNV8I0vx8UhxgnFcrAHK6832cF+aq3d5JS
 blaItDF0LKCMg6zIsy3qYX4v1lAkfvLW9OoOHuXOBoo45GafMoggZ7YFRXXPd+4MOrvF
 f8yg==
X-Gm-Message-State: AFqh2kpxeLDKSa0xu8BUT09auyzzNRzlSArtj0Pik9orJzmZMheIk8BL
 my7xm9cHm0UPJm2/oFYNJoj55A==
X-Google-Smtp-Source: AMrXdXvtFqhaSn3Tw9QYHWUPgyOXDjo3XDFOrsnNrIE80F2Yb82IIBW1/ye7zb7YefnrkcgKD3AD/w==
X-Received: by 2002:a17:90a:8b8c:b0:219:c2f2:f83c with SMTP id
 z12-20020a17090a8b8c00b00219c2f2f83cmr3726315pjn.2.1672793437914; 
 Tue, 03 Jan 2023 16:50:37 -0800 (PST)
Received: from google.com (7.104.168.34.bc.googleusercontent.com.
 [34.168.104.7]) by smtp.gmail.com with ESMTPSA id
 mt2-20020a17090b230200b00225dfb6e8b3sm16083571pjb.11.2023.01.03.16.50.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Jan 2023 16:50:37 -0800 (PST)
Date: Wed, 4 Jan 2023 00:50:33 +0000
From: Sean Christopherson <seanjc@google.com>
To: Yan Zhao <yan.y.zhao@intel.com>
Message-ID: <Y7TNWYaJ9PA6HZL0@google.com>
References: <20221223005739.1295925-1-seanjc@google.com>
 <20221223005739.1295925-20-seanjc@google.com>
 <Y6vogAvkktOPLwK9@yzhao56-desk.sh.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y6vogAvkktOPLwK9@yzhao56-desk.sh.intel.com>
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
Cc: kvm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Ben Gardon <bgardon@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 28, 2022, Yan Zhao wrote:
> On Fri, Dec 23, 2022 at 12:57:31AM +0000, Sean Christopherson wrote:
> > diff --git a/arch/x86/kvm/mmu/page_track.c b/arch/x86/kvm/mmu/page_track.c
> > index 2b302fd2c5dd..f932909aa9b5 100644
> > --- a/arch/x86/kvm/mmu/page_track.c
> > +++ b/arch/x86/kvm/mmu/page_track.c
> > @@ -193,6 +193,7 @@ bool kvm_slot_page_track_is_active(struct kvm *kvm,
> >  	return !!READ_ONCE(slot->arch.gfn_track[mode][index]);
> >  }
> >  
> > +#ifdef CONFIG_KVM_EXTERNAL_WRITE_TRACKING
> >  void kvm_page_track_cleanup(struct kvm *kvm)
> >  {
> >  	struct kvm_page_track_notifier_head *head;
> > @@ -208,6 +209,7 @@ int kvm_page_track_init(struct kvm *kvm)
> >  	head = &kvm->arch.track_notifier_head;
> >  	INIT_HLIST_HEAD(&head->track_notifier_list);
> >  	return init_srcu_struct(&head->track_srcu);
> > +	return 0;
> Double "return"s.

Huh, I'm surprised this didn't throw a warning.  I'm pretty sure I screwed up a
refactoring, I originally had the "return 0" in an #else branch.

> > +#endif /* CONFIG_KVM_EXTERNAL_WRITE_TRACKING */
> > +
> > +static inline void kvm_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa,
> > +					const u8 *new, int bytes)
> > +{
> > +	__kvm_page_track_write(vcpu, gpa, new, bytes);
> > +
> Why not convert "vcpu" to "kvm" in __kvm_page_track_write() ?

No reason, I just overlooked the opportunistic cleanup.  I'll do this in the next
version.

Thanks much for the reviews!
