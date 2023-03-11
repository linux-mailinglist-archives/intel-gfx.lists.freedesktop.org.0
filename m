Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A92956B564B
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Mar 2023 01:23:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0349410E311;
	Sat, 11 Mar 2023 00:23:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BA1D10E311
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Mar 2023 00:23:07 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id
 m202-20020a2526d3000000b00ae90d688ab4so7339903ybm.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 16:23:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1678494186;
 h=cc:to:from:subject:message-id:mime-version:date:reply-to:from:to:cc
 :subject:date:message-id:reply-to;
 bh=MpOVAI38bTLuJNgBk8GaHxc8e/Jb/LnD+AZKWhWvJwE=;
 b=XbW093+rMa2pnpJH37lZhmJyqngdEGL3lguHJGCWEBwilzA+wyvQt83zBMXyMuuQGf
 Zx5zugscYQo2UdBFHyXFHyx9/iwj64Z7TtwQufmO7Zli8+GW4yHJEuiYmrWyRO6vPvOg
 sRK/Hf1kIIMY+eWvy7sBdDbqe7ZDL/iC/SaSbAl2vv0kDvDinu9Mk0bedUrGM03u/ctT
 am44Vfn0d2y1QncBgkbGgAv8UJyeRhV77NraNPxWlWYvZ7tzz8U3zWlAAAojZaEqPNhX
 gBYhK3YffcD8NX9mh+OZvBdlMFrmUuG6f/19q5NuvRDbpiHf/FaycV6IXWqbuQaMMzbi
 w2lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678494186;
 h=cc:to:from:subject:message-id:mime-version:date:reply-to
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=MpOVAI38bTLuJNgBk8GaHxc8e/Jb/LnD+AZKWhWvJwE=;
 b=bcci//jiqKL5030foD6Nz2qx3zdEricII9v59bfG6a87g9z78jpKPGysWrYra4TSN4
 zLAqhT+5lapMxVBzt/tnTDh+WOjVbpRJx6KC7B1y2fDkWpDSPU84y7EFnNi8Qvj/ly+C
 mLpKTV5UqQGSmr5mk1GdJI2ntTP7Xo107008t1VyJ7KLsQHRUssDJBIFVFn43nIsyKUL
 C8jZqoNKNCl4ITjn8E0hUhigTc3ErbmxCYGJ2IKKRUog8uKjW8AZrW4Gq/OAu1FKCsbs
 meKwzcbA2L2sa2Z8vFf0DQ1YGUn3EiLLpcUHfYuy3ZL8DYV93R16e9lksqlIzDIvgd0K
 wScA==
X-Gm-Message-State: AO0yUKXv9uwJVd1UekgqGZRHF/whaImq32CPQ6g9n5PEk0H3/oVMFDlw
 PTftFkzpy5YlaONZCqTlAPnt/3VrivE=
X-Google-Smtp-Source: AK7set8vTaIMU+K6m3Cl6okYM4t5eXk0ZFL+RJCT155s18NnCaDpzit2dXYYj9lDkW1y/PA+UEBTWwlw5xU=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a05:6902:188:b0:a99:de9d:d504 with SMTP id
 t8-20020a056902018800b00a99de9dd504mr16642957ybh.12.1678494186436; Fri, 10
 Mar 2023 16:23:06 -0800 (PST)
Date: Fri, 10 Mar 2023 16:22:31 -0800
Mime-Version: 1.0
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
Message-ID: <20230311002258.852397-1-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v2 00/27] drm/i915/gvt: KVM: KVMGT fixes and
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
KVM-internal.

As was the case in v1, tThe KVMGT changes are compile tested only.

Based on "git://git.kernel.org/pub/scm/virt/kvm/kvm.git next".

v2:
 - Reuse vgpu_lock to protect gfn hash instead of introducing a new (and
   buggy) mutext. [Yan]
 - Remove a spurious return from kvm_page_track_init(). [Yan]
 - Take @kvm directly in the inner __kvm_page_track_write(). [Yan]
 - Delete the gfn sanity check that relies on kvm_is_visible_gfn() instead
   of providing a dedicated interface. [Yan]

v1: https://lore.kernel.org/lkml/20221223005739.1295925-1-seanjc@google.com

Sean Christopherson (23):
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
  drm/i915/gvt: Drop unused helper intel_vgpu_reset_gtt()
  drm/i915/gvt: Protect gfn hash table with vgpu_lock
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
  drm/i915/gvt: Drop final dependencies on KVM internal details

Yan Zhao (4):
  drm/i915/gvt: remove interface intel_gvt_is_valid_gfn
  KVM: x86: Add a new page-track hook to handle memslot deletion
  drm/i915/gvt: switch from ->track_flush_slot() to
    ->track_remove_region()
  KVM: x86: Remove the unused page-track hook track_flush_slot()

 arch/x86/include/asm/kvm_host.h       |  16 +-
 arch/x86/include/asm/kvm_page_track.h |  66 +++----
 arch/x86/kvm/mmu.h                    |   2 +
 arch/x86/kvm/mmu/mmu.c                |  61 +++---
 arch/x86/kvm/mmu/mmu_internal.h       |   2 +
 arch/x86/kvm/mmu/page_track.c         | 270 ++++++++++++++------------
 arch/x86/kvm/mmu/page_track.h         |  58 ++++++
 arch/x86/kvm/x86.c                    |  13 +-
 drivers/gpu/drm/i915/gvt/gtt.c        |  88 ++-------
 drivers/gpu/drm/i915/gvt/gtt.h        |   1 -
 drivers/gpu/drm/i915/gvt/gvt.h        |   3 +-
 drivers/gpu/drm/i915/gvt/kvmgt.c      | 132 ++++++-------
 drivers/gpu/drm/i915/gvt/page_track.c |  10 +-
 13 files changed, 361 insertions(+), 361 deletions(-)
 create mode 100644 arch/x86/kvm/mmu/page_track.h


base-commit: 45dd9bc75d9adc9483f0c7d662ba6e73ed698a0b
-- 
2.40.0.rc1.284.g88254d51c5-goog

