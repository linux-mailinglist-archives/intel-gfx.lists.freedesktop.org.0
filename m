Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F966BBD28
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Mar 2023 20:23:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 282EC10E313;
	Wed, 15 Mar 2023 19:23:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com
 [IPv6:2607:f8b0:4864:20::64a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC5A510E313
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Mar 2023 19:23:21 +0000 (UTC)
Received: by mail-pl1-x64a.google.com with SMTP id
 a9-20020a170902b58900b0019e2eafafddso10870143pls.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Mar 2023 12:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1678908201;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=CO8t+zxtFwLc3yJ6bJQPj8GStgQChto9AhidRXWbvKE=;
 b=AFfpyBBgddR4r+3JtnHbvcqmXuTkhpDMyp586u8nVhbO1w8OEZcY5uo/OF9V598ZLI
 4rHyH46ovKyA7lnhJHFG6xBBVxETLjL+X9IjtJQHUydXqo4ZUQ7Y5WwNClIPQ1Eh5lQZ
 zA5Knux19o9U5vhp9sOPU9amPjsWqVXPs766BYzKn+IlghB7VhRAkzLGqDz4B65bhhoA
 YNqCkknXtoi31iyHYeoVPj0mO+0gmInMgO4IEC2gwezvk4+y57uPy1bVDX0g88G2Wp9I
 7MVEgckhtqsD0i2BAz6dAWMWBZXBSPIf8Br/5Y4kjpfV2xKcxN6RAqv5yqcr4S5tRhFQ
 fCyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678908201;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=CO8t+zxtFwLc3yJ6bJQPj8GStgQChto9AhidRXWbvKE=;
 b=wCFoEKmnkbnE7w5yYlVDj0tXkgRxaRTD1apE8d1zXbGM1ugLiR37FM7KONM4gizUOa
 ad3jurOiaSgtFRUk2SJfbsSKp25ZhAJI6YHAtjuL9Et0UCoiI6BiTQjVhw7AZH4W3SAN
 RakFa/mBaeGZvYZGeGOile7zY0PtfLS/GCFgviXSfAms4sXGnO0E2w1ZYqlG+pm0bWbL
 Y/ZLYCCvNEqvUrNopPQnEQ0RW0sNm4BbPdJwjoF140qM6eSeRJhpBLen7G/9zNFby+Ji
 y0x69dJLGH5Aqd55I9MpubWYV8W/LLmh8e3lW2uwvc0e0HzdunKgASEf+lwjoqDsmKOx
 ncVA==
X-Gm-Message-State: AO0yUKUuS+4J/iEb+Ml/ih/kJJ2mPTqFAkKuuZFTM3bAGV83OlaFFNtn
 VRdtFA13Zulazia6PB8ZyqV+tL/gq6U=
X-Google-Smtp-Source: AK7set/JY+rzlbShnVBele6OwSOSpHpEbwghpOgoGyd4CaLNRbbg6Pm7bxlVeohGsEhXPHXSQ02jqVfN9X8=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:902:f547:b0:19f:2164:9b3b with SMTP id
 h7-20020a170902f54700b0019f21649b3bmr261241plf.13.1678908201457; Wed, 15 Mar
 2023 12:23:21 -0700 (PDT)
Date: Wed, 15 Mar 2023 12:23:20 -0700
In-Reply-To: <871f7c8b-0f54-7e9c-4253-b3878b010bbf@intel.com>
Mime-Version: 1.0
References: <20230311002258.852397-1-seanjc@google.com>
 <20230311002258.852397-2-seanjc@google.com>
 <DS0PR11MB63733BCF5AEBBF5F38FD2C01DCB99@DS0PR11MB6373.namprd11.prod.outlook.com>
 <871f7c8b-0f54-7e9c-4253-b3878b010bbf@intel.com>
Message-ID: <ZBIQ1vxLs10UFi3R@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH v2 01/27] drm/i915/gvt: Verify pfn is
 "valid" before dereferencing "struct page"
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
Cc: Yan Zhao <yan.y.zhao@intel.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Wei Wang <wei.w.wang@intel.com>, Ben Gardon <bgardon@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 15, 2023, Andrzej Hajda wrote:
> On 13.03.2023 16:37, Wang, Wei W wrote:
> > On Saturday, March 11, 2023 8:23 AM, Sean Christopherson wrote:
> > > diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
> > > index 4ec85308379a..58b9b316ae46 100644
> > > --- a/drivers/gpu/drm/i915/gvt/gtt.c
> > > +++ b/drivers/gpu/drm/i915/gvt/gtt.c
> > > @@ -1183,6 +1183,10 @@ static int is_2MB_gtt_possible(struct intel_vgpu
> > > *vgpu,
> > >   	pfn = gfn_to_pfn(vgpu->vfio_device.kvm, ops->get_pfn(entry));
> > >   	if (is_error_noslot_pfn(pfn))
> > >   		return -EINVAL;
> > > +
> > > +	if (!pfn_valid(pfn))
> > > +		return -EINVAL;
> > > +
> > 
> > Merge the two errors in one "if" to have less LOC?
> > i.e.
> > if (is_error_noslot_pfn(pfn) || !pfn_valid(pfn))
> >      return -EINVAL;
> 
> you can just replace "if (is_error_noslot_pfn(pfn))" with "if
> (!pfn_valid(pfn))", it covers both cases.

Technically, yes, but the two checks are for very different things.  Practically
speaking, there can never be false negatives without KVM breaking horribly as
overlap between struct page pfns and KVM's error/noslot would prevent mapping
legal memory into a KVM guest.  But I'd rather not hide the "did KVM find a valid
mapping" in the "is this pfn backed by struct page" check, especially since this
code goes away entirely by the end of the series.
