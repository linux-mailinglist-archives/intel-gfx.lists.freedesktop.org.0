Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4571E6327F5
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 16:26:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96AD610E2FA;
	Mon, 21 Nov 2022 15:26:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B3FA10E1AF
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Nov 2022 00:43:12 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id q1so5597619pgl.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 16:43:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=W/69SGTblteqzTGqi+tKsPG0LW4tOtiDqnrFyQWptaQ=;
 b=nkkHJRYG9RSNUubkLNubrJI/d3KOEidZrgmUPThr3GFsr7fra6VsI+pb1qqQQ02WKX
 zF1WmMPVXJP4zWYv5H2yrK2XmJWXLyIYGleBrctfrNS+0hqbbCZ/iqh9/fdMvnZajEwa
 S7yTODLsbBcMwXwbemvi9xcCSHrHJ12nb+aTQowsorgnzkj19FB9Krp7KBYJxZyP21EO
 7pIoX7pjC6wc+oSETXDUqR/kq2X+LicMr3aKFzkyce/50iVQxoQgCThUjuJ/3KLMl8+B
 z6LnADkM+0e/zYQoLtoBvelqEGFYq3NJyiIEmKpY5AR6UOQqXPItQJPmeuPg0YF/+hoh
 Qb/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=W/69SGTblteqzTGqi+tKsPG0LW4tOtiDqnrFyQWptaQ=;
 b=Z/rtFTRe0HoJ+Kri2OUNvw2jhQArx+oWny1WWGZTTzVd7M8Sdv5tJPF/BcDg/qff2g
 B/5HRwPMDqAEbtBW6V065vLn6+H9v/2SJX3wkoCQaeoePpjOPKEmp0wi4g5WlJy4End7
 nIX5IRWSLcH2NnsUtW8NXlLF18HX8dCRVKdGo3BIy5bGiGzmsxRCw3dwwvBSd2J5Cm7o
 mMgH4EEkAtTWGcpQsjOYdZYU7OauySNT92ew0Yn0YpOdr6ERPCW1g8w50qZA7yD/cnGp
 FZk9xzdcDMEaaZJOTsjvZ5QwSedzoXOZ9yxBkiTMxrc3msoVHKF7bcCZCysDplB8hUMb
 AhLQ==
X-Gm-Message-State: ANoB5pkGiROoxAxaz4xTiw+/ImQcija96/oO06/oqQxJgbeqNqPjEepB
 bQOPdnGQs/3PQDtlBdNX6pWoIA==
X-Google-Smtp-Source: AA0mqf4WsOfrQhaQruL4asl5Iu86noh/aH6GkJDdmp/AzA4oKTD7iRzggslPFH8j54SEF3nTst7kQA==
X-Received: by 2002:a62:838f:0:b0:56c:8b7:f2dc with SMTP id
 h137-20020a62838f000000b0056c08b7f2dcmr5095877pfe.16.1668213791697; 
 Fri, 11 Nov 2022 16:43:11 -0800 (PST)
Received: from google.com (7.104.168.34.bc.googleusercontent.com.
 [34.168.104.7]) by smtp.gmail.com with ESMTPSA id
 o127-20020a625a85000000b0056bc9294e1asm2154927pfb.24.2022.11.11.16.43.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Nov 2022 16:43:11 -0800 (PST)
Date: Sat, 12 Nov 2022 00:43:07 +0000
From: Sean Christopherson <seanjc@google.com>
To: Yan Zhao <yan.y.zhao@intel.com>
Message-ID: <Y27sG3AqVX8yLUgR@google.com>
References: <20221111103247.22275-1-yan.y.zhao@intel.com>
 <20221111103350.22326-1-yan.y.zhao@intel.com>
 <Y26SI3uh8JV0vvO6@google.com>
 <Y27ivXea5SjR5lat@yzhao56-desk.sh.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y27ivXea5SjR5lat@yzhao56-desk.sh.intel.com>
X-Mailman-Approved-At: Mon, 21 Nov 2022 15:26:24 +0000
Subject: Re: [Intel-gfx] [PATCH v2 1/3] KVM: x86: add a new page track hook
 track_remove_slot
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
 linux-kernel@vger.kernel.org, pbonzini@redhat.com,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Nov 12, 2022, Yan Zhao wrote:
> And I'm also not sure if a slots_arch_lock is required for
> kvm_slot_page_track_add_page() and kvm_slot_page_track_remove_page().

It's not required.  slots_arch_lock protects interaction between memslot updates
mmu_first_shadow_root_alloc().  When CONFIG_KVM_EXTERNAL_WRITE_TRACKING=y, then
the mmu_first_shadow_root_alloc() doesn't touch the memslots because everything
is pre-allocated:

bool kvm_page_track_write_tracking_enabled(struct kvm *kvm)
{
	return IS_ENABLED(CONFIG_KVM_EXTERNAL_WRITE_TRACKING) ||
	       !tdp_enabled || kvm_shadow_root_allocated(kvm);
}

int kvm_page_track_create_memslot(struct kvm *kvm,
				  struct kvm_memory_slot *slot,
				  unsigned long npages)
{
	if (!kvm_page_track_write_tracking_enabled(kvm)) <== always true
		return 0;

	return __kvm_page_track_write_tracking_alloc(slot, npages);
}

Though now that you point it out, it's tempting to #ifdef out some of those hooks
so that's basically impossible for mmu_first_shadow_root_alloc() to cause problems.
Not sure the extra #ideffery would be worth while though.

slots_arch_lock also protects shadow_root_allocated, but that's a KVM-internal
detail that isn't relevant to the page-tracking machinery when
CONFIG_KVM_EXTERNAL_WRITE_TRACKING=y.
