Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A306765C8B0
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jan 2023 22:14:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 776A110E22F;
	Tue,  3 Jan 2023 21:14:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41A7E10E22F
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Jan 2023 21:13:59 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id
 j8-20020a17090a3e0800b00225fdd5007fso22774299pjc.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Jan 2023 13:13:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=9p6xOAllsdwmLNRF1CYEiIp55ypvlzYzax0rYzleWNo=;
 b=ciy1v2owEhU15SQWAmYsdnJ1U5xMAuX9wzmG43dAuqW7vCvtsEpJkV55tG9JuZSJTS
 fkvXO7rqR96Q01Np531KBtWzzBAiqUHSw/2uwB4qMojVHHvYWrsBgarkdFofh14rFl46
 5ARxqE5hr1JAnrDVEFTfxpMNxqTaY+rrkJQcMQOr4UVOQZHdDLS/hwXhHwcwbA/IY8po
 qXiNsF0hj8M1B7TphtxcQfzfMw/zLvuuRxxIH1zB1J8kDFkEljiJjUoh2A49ocsY8i22
 wer+iZUB0riKCypu60lSg3hRyA4GpRQsKFwwsgPYHJr/3UMjMrruzD2CC22ebXuacWn7
 9bNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9p6xOAllsdwmLNRF1CYEiIp55ypvlzYzax0rYzleWNo=;
 b=AYqUtpFRktMcXnQRXWRy5bNBMPiF586Ys/A/Uk6kLwey9POui98nZ2OggRuoEjaQ72
 5lvBdPV5neaF3Hz5Kg0JH8r/7rrnJ0PmBndlhwgIXT7HWTYSazctE5rD92oh6sa2bO4p
 pqi58LYZEZc8MRwVDJqByLRxSvNxxucLnV66DRj6tVAB7YhcnD9V0OwS5TdnrLmeTZZ6
 FAKtft1ZR9hrMW0g8YJBvjJlbpecY0EbA1OEQg3QrsyNRuXlPILCeZzmnAYDe9eQIdHe
 JsQOYYTT7rjpY8iLCrgazbT2n+JjZ5Tp1RRsUWOneK5oqjZ/Ml2HpVous0OQGSuzcqPg
 tHOw==
X-Gm-Message-State: AFqh2kpRs+p6ZIWpepmISlyRLRm29xeJBmdMpbM2josMnHfckRNCxRkA
 0VTOfPJWpusv/yuw37SN59rlkQ==
X-Google-Smtp-Source: AMrXdXsUJWWyS0pzIR8xoON1mt4qFc3XLmvSjOul9xU40XtPwpStroqnw3FiN9s3u4jye6EKg+pYPw==
X-Received: by 2002:a17:902:ce90:b0:192:8a1e:9bc7 with SMTP id
 f16-20020a170902ce9000b001928a1e9bc7mr2157751plg.0.1672780438696; 
 Tue, 03 Jan 2023 13:13:58 -0800 (PST)
Received: from google.com (7.104.168.34.bc.googleusercontent.com.
 [34.168.104.7]) by smtp.gmail.com with ESMTPSA id
 h11-20020a170902680b00b00192849d1209sm3321073plk.96.2023.01.03.13.13.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Jan 2023 13:13:58 -0800 (PST)
Date: Tue, 3 Jan 2023 21:13:54 +0000
From: Sean Christopherson <seanjc@google.com>
To: Yan Zhao <yan.y.zhao@intel.com>
Message-ID: <Y7SaklDQD0EoIs8l@google.com>
References: <20221223005739.1295925-1-seanjc@google.com>
 <20221223005739.1295925-4-seanjc@google.com>
 <Y6vXTcxDNovrmeVB@yzhao56-desk.sh.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y6vXTcxDNovrmeVB@yzhao56-desk.sh.intel.com>
Subject: Re: [Intel-gfx] [PATCH 03/27] drm/i915/gvt: Incorporate KVM memslot
 info into check for 2MiB GTT entry
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
> On Fri, Dec 23, 2022 at 12:57:15AM +0000, Sean Christopherson wrote:
> > Honor KVM's max allowed page size when determining whether or not a 2MiB
> > GTT shadow page can be created for the guest.  Querying KVM's max allowed
> > size is somewhat odd as there's no strict requirement that KVM's memslots
> > and VFIO's mappings are configured with the same gfn=>hva mapping, but
> Without vIOMMU, VFIO's mapping is configured with the same as KVM's
> memslots, i.e. with the same gfn==>HVA mapping

But that's controlled by userspace, correct?

> > the check will be accurate if userspace wants to have a functional guest,
> > and at the very least checking KVM's memslots guarantees that the entire
> > 2MiB range has been exposed to the guest.
> 
> I think just check the entrie 2MiB GFN range are all within KVM memslot is
> enough.

Strictly speaking, no.  E.g. if a 2MiB region is covered with multiple memslots
and the memslots have different properties.

> If for some reason, KVM maps a 2MiB range in 4K sizes, KVMGT can still map
> it in IOMMU size in 2MiB size as long as the PFNs are continous and the
> whole range is all exposed to guest.

I agree that practically speaking this will hold true, but if KVMGT wants to honor
KVM's memslots then checking that KVM allows a hugepage is correct.  Hrm, but on
the flip side, KVMGT ignores read-only memslot flags, so KVMGT is already ignoring
pieces of KVM's memslots.

I have no objection to KVMGT defining its ABI such that KVMGT is allowed to create
2MiB so long as (a) the GFN is contiguous according to VFIO, and (b) that the entire
2MiB range is exposed to the guest.

That said, being fully permissive also seems wasteful, e.g. KVM would need to
explicitly support straddling multiple memslots.

As a middle ground, what about tweaking kvm_page_track_is_valid_gfn() to take a
range, and then checking that the range is contained in a single memslot?

E.g. something like:

bool kvm_page_track_is_contiguous_gfn_range(struct kvm *kvm, gfn_t gfn,
					    unsigned long nr_pages)
{
	struct kvm_memory_slot *memslot;
	bool ret;
	int idx;

	idx = srcu_read_lock(&kvm->srcu);
	memslot = gfn_to_memslot(kvm, gfn);
	ret = kvm_is_visible_memslot(memslot) &&
	      gfn + nr_pages <= memslot->base_gfn + memslot->npages;
	srcu_read_unlock(&kvm->srcu, idx);

	return ret;
}

> Actually normal device passthrough with VFIO-PCI also maps GFNs in a
> similar way, i.e. maps a guest visible range in as large size as
> possible as long as the PFN is continous. 
> > 
> > Note, KVM may also restrict the mapping size for reasons that aren't
> > relevant to KVMGT, e.g. for KVM's iTLB multi-hit workaround or if the gfn
> Will iTLB multi-hit affect DMA?

I highly doubt it, I can't imagine an IOMMU would have a dedicated instruction
TLB :-)

> AFAIK, IOMMU mappings currently never sets exec bit (and I'm told this bit is
> under discussion to be removed).
