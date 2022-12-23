Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 728096549E5
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 01:57:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22B5810E177;
	Fri, 23 Dec 2022 00:57:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com
 [IPv6:2607:f8b0:4864:20::104a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EB8B10E177
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 00:57:46 +0000 (UTC)
Received: by mail-pj1-x104a.google.com with SMTP id
 b16-20020a17090a551000b00225aa26f1dbso1772150pji.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 16:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:message-id:mime-version:date:reply-to:from:to:cc
 :subject:date:message-id:reply-to;
 bh=b29o5HSnDYTmWKzTtpaXEeYgrw2TDFKr2p0Q8+HjsNM=;
 b=ElUFGASvo+SEqmf91jQ7pr4vVjOmXfyFl7KvLXWpDNbxIU5k3lCNmSBWHsYc4izHGT
 K9reZTzg3Pi/r4XOJJU5+EuAWfrR/NQCZdtaWZN4UuzSAX32pxagnCxgQAKIyqGZl1q5
 fInmcehDeJjBJFNRRpgH6ZAXA5DTPoJLacO4DmKKMttX0uFBC9UXy1PpG5QSuh9Vu/QU
 FNXDe4PQz7L3uuyUHN7Q6TjQJEogC6Fw461JKiT+qo7B1nna606DzaowIs8M33Iho1U6
 HtVF8X79gFbB2PPPLE+aK7jxdRtvJZwGkfemnOq/WGU3ktjrHYgjfc1LyUg3h2n1yF7O
 jWdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:message-id:mime-version:date:reply-to
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=b29o5HSnDYTmWKzTtpaXEeYgrw2TDFKr2p0Q8+HjsNM=;
 b=WB6ibswf+3APxUgIpchOFhYF8oDKo9Z/VZxqRnNfy5rkMkGAkfyNXTnbvQy1exe5Gh
 CqAXgqzTbi39AB2DrVRQf3xxp9JgkWk37rc1kd2LFiKr652rVGX/WvNANilSrNUCxDXh
 naoXU8Yg5Q/Bk/srQPMcNZ/NSP8GhvvYe0N5QVCAdOW80NruvQK/TTjw3QIAdZBeQJcg
 sNGQ8oUX0qwpYwX1q4CI2e0tzzbmvB4TL+FiQYt6aqoTmZC+49Kx1Futq3yBidINemhd
 e+HRxwqP0MNI87tleGVrckcvMx9MtVR3V5zaz0xZeCqV0mqTqpl+jw6QAhLgiNdL2Mn8
 CsTA==
X-Gm-Message-State: AFqh2kp6kUeijh1JpON0bsk4hxy7PDn5m0LOzpkGddtM7WSIdNBBWE8o
 Dz+Ui9oZZw0Eh5LN71EAlC/e5E5wLfg=
X-Google-Smtp-Source: AMrXdXuJf/1b5zD4/IaCYjB6Q5P9h6Uzc5VbdwQ7fDMekMbNc7T1kuU68br45Cp13nsjugQIR+ijSCtx9Mg=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:90a:c292:b0:219:828e:ba8 with SMTP id
 f18-20020a17090ac29200b00219828e0ba8mr927461pjt.118.1671757065401; Thu, 22
 Dec 2022 16:57:45 -0800 (PST)
Date: Fri, 23 Dec 2022 00:57:12 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
Message-ID: <20221223005739.1295925-1-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH 00/27] drm/i915/gvt: KVM: KVMGT fixes and
 page-track cleanups
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
Reply-To: Sean Christopherson <seanjc@google.com>
Cc: Yan Zhao <yan.y.zhao@intel.com>, kvm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Ben Gardon <bgardon@google.com>, intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix a variety of found-by-inspection bugs in KVMGT, and overhaul KVM's
page-track APIs to provide a leaner and cleaner interface.  The motivation
for this series is to (significantly) reduce the number of KVM APIs that
KVMGT uses, with a long-term goal of making all kvm_host.h headers
KVM-internal.  That said, I think the cleanup itself is worthwhile,
e.g. KVMGT really shouldn't be touching kvm->mmu_lock.

Note!  The KVMGT changes are compile tested only as I don't have the
necessary hardware (AFAIK).  Testing, and lots of it, on the KVMGT side
of things is needed and any help on that front would be much appreciated.

Sean Christopherson (24):
  drm/i915/gvt: Verify pfn is "valid" before dereferencing "struct page"
  KVM: x86/mmu: Factor out helper to get max mapping size of a memslot
  drm/i915/gvt: Incorporate KVM memslot info into check for 2MiB GTT
    entry
  drm/i915/gvt: Verify VFIO-pinned page is THP when shadowing 2M gtt
    entry
  drm/i915/gvt: Put the page reference obtained by KVM's gfn_to_pfn()
  drm/i915/gvt: Don't rely on KVM's gfn_to_pfn() to query possible 2M
    GTT
  drm/i915/gvt: Use an "unsigned long" to iterate over memslot gfns
  drm/i915/gvt: Hoist acquisition of vgpu_lock out to
    kvmgt_page_track_write()
  drm/i915/gvt: Protect gfn hash table with dedicated mutex
  KVM: x86/mmu: Don't rely on page-track mechanism to flush on memslot
    change
  KVM: x86/mmu: Don't bounce through page-track mechanism for guest PTEs
  KVM: drm/i915/gvt: Drop @vcpu from KVM's ->track_write() hook
  KVM: x86: Reject memslot MOVE operations if KVMGT is attached
  drm/i915/gvt: Don't bother removing write-protection on to-be-deleted
    slot
  KVM: x86/mmu: Move KVM-only page-track declarations to internal header
  KVM: x86/mmu: Use page-track notifiers iff there are external users
  KVM: x86/mmu: Drop infrastructure for multiple page-track modes
  KVM: x86/mmu: Rename page-track APIs to reflect the new reality
  KVM: x86/mmu: Assert that correct locks are held for page
    write-tracking
  KVM: x86/mmu: Bug the VM if write-tracking is used but not enabled
  KVM: x86/mmu: Drop @slot param from exported/external page-track APIs
  KVM: x86/mmu: Handle KVM bookkeeping in page-track APIs, not callers
  KVM: x86/mmu: Add page-track API to query if a gfn is valid
  drm/i915/gvt: Drop final dependencies on KVM internal details

Yan Zhao (3):
  KVM: x86: Add a new page-track hook to handle memslot deletion
  drm/i915/gvt: switch from ->track_flush_slot() to
    ->track_remove_region()
  KVM: x86: Remove the unused page-track hook track_flush_slot()

 arch/x86/include/asm/kvm_host.h       |  16 +-
 arch/x86/include/asm/kvm_page_track.h |  67 +++---
 arch/x86/kvm/mmu.h                    |   2 +
 arch/x86/kvm/mmu/mmu.c                |  61 +++---
 arch/x86/kvm/mmu/mmu_internal.h       |   2 +
 arch/x86/kvm/mmu/page_track.c         | 283 +++++++++++++++-----------
 arch/x86/kvm/mmu/page_track.h         |  59 ++++++
 arch/x86/kvm/x86.c                    |  13 +-
 drivers/gpu/drm/i915/gvt/gtt.c        |  45 ++--
 drivers/gpu/drm/i915/gvt/gvt.h        |   4 +-
 drivers/gpu/drm/i915/gvt/kvmgt.c      | 138 ++++++-------
 drivers/gpu/drm/i915/gvt/page_track.c |  10 +-
 drivers/gpu/drm/i915/gvt/vgpu.c       |   1 +
 13 files changed, 386 insertions(+), 315 deletions(-)
 create mode 100644 arch/x86/kvm/mmu/page_track.h


base-commit: 9d75a3251adfbcf444681474511b58042a364863
-- 
2.39.0.314.g84b9a713c41-goog

