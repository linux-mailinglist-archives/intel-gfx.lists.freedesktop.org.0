Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 555B36327FE
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 16:27:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0859A10E302;
	Mon, 21 Nov 2022 15:26:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com
 [IPv6:2607:f8b0:4864:20::649])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB5CC10E16B
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 00:22:28 +0000 (UTC)
Received: by mail-pl1-x649.google.com with SMTP id
 b2-20020a170902d50200b001871a3c51afso2384425plg.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 16:22:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:message-id:mime-version:date:reply-to:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6Tu3dCtFufgUDFLM6WYvxUNCj6ktfCE/LA/hYpLdB8c=;
 b=rEB1mAyMxXDNduA/agNa4Yf6hTGKxlP80YetPbguBje7Me+p3tEaVIGLl02RWTFwVk
 dBkheG7mlpYjn/UPHMiPgbK9gfaAMaRsB2x5+dkW5p+OzuVRWPNWrHmcI+9M1vG++D5W
 c1LKq0XlkKx4WAkCLx1c9fIr9rpzQkFdiM/TUdoADn4QJ9B38jgiDQ6FMWDwQ/Bjt4Ah
 3hLE68y+d3hpeazs+evohsB+ct0b2M54qP4IgUDUHHd46GOsERjmi7zjpTfZ8vzs0HbE
 +tYbVMASPszNQGV1F/DoYESPQC6WBcyHgXqDZ7JVKg8f3mUT+xN8r9tAyeZrfhAOaxsF
 RCxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:message-id:mime-version:date:reply-to
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6Tu3dCtFufgUDFLM6WYvxUNCj6ktfCE/LA/hYpLdB8c=;
 b=LX50eM2fYPavKRO2kOc9ZQP0WavIw9wP/wv1jCpGpDwhnPr/eQYN/TuxScV299EC1c
 DGoGbWnAvjoRklWyKC/+HHuklKW/52qcyTtQ+0+4ughKEYzRsVRnE8qSIEPxtoKuvHMb
 Oq1KLEqx7EEpGx/+omVjuupO+epr1XZIGNgQX7qEe8OZfOysH/KHOgfWxSOQideqfq2k
 llQ7AWj5P2rr4bqrie+YlARIB+gyy88PwuBMFEdbzDhdIl1ewxkAkM7ZddjCi1jAbfhK
 TWpsVXrFuDomEnigCdUQ/5sRd4kqXqxjHzHsndgZqXjYphuaLOGJnytlvANJ6lloJUcU
 RKeQ==
X-Gm-Message-State: ANoB5plAfsTy2C7k/qIuhPG18i0qqZ2CX9niHHFCoZYZW+qwm+cZPZM3
 +cLWJV0UAAwpJfbZo51EsbXEEaOxqMo=
X-Google-Smtp-Source: AA0mqf7gd6ludvatXIsAaRd/oJX7eHNkWOsdyqA+0PpESKhUZp0jiEC3aQTOvc2LFe0GViwpO5qmyq/WklI=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:90a:c58e:b0:20a:eab5:cf39 with SMTP id
 l14-20020a17090ac58e00b0020aeab5cf39mr107418pjt.1.1668126148029; Thu, 10 Nov
 2022 16:22:28 -0800 (PST)
Date: Fri, 11 Nov 2022 00:22:23 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.38.1.431.g37b22c650d-goog
Message-ID: <20221111002225.2418386-1-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 21 Nov 2022 15:26:23 +0000
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/gvt: Fix for KVM refcounting bug
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
Cc: Sean Christopherson <seanjc@google.com>, intel-gfx@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Bug fix and cleanup related to KVM refcounting.  Found by inspection while
attempting to clean up KVM's page-tracker APIs.

Compile tested only!

Sean Christopherson (2):
  drm/i915/gvt: Get reference to KVM iff attachment to VM is successful
  drm/i915/gvt: Unconditionally put reference to KVM when detaching vGPU

 drivers/gpu/drm/i915/gvt/kvmgt.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)


base-commit: 1767a722a708f1fa3b9af39eb091d79101f8c086
-- 
2.38.1.431.g37b22c650d-goog

