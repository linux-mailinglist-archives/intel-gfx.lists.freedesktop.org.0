Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA274701318
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 02:36:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD4B010E702;
	Sat, 13 May 2023 00:36:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com
 [IPv6:2607:f8b0:4864:20::44a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC0D510E6FC
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 May 2023 00:36:17 +0000 (UTC)
Received: by mail-pf1-x44a.google.com with SMTP id
 d2e1a72fcca58-643aad3bbf3so5480236b3a.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 17:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1683938177; x=1686530177;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=K7Ya3jZlcB5DIRxzkVo+FZAIt5xtGXopE24BSYXVJKk=;
 b=XGrwjfzUB5Z1Jr54Bh0GK3KWvn+DCPj5RUIT8j+z/Np9og8cN1KchmZJeni93Uvy7s
 diX49O5EZtEAZDH2WnfFLiyblqMGn3njDBFEEx4TsGcwwfWlJUozJCqrroNvuCoxbIYz
 J0FqR0PoQrdGlfChocEzL4ehm6rj3oVBLYzpxsgigepwA3t/aWUQalt82flPm5MqOlRV
 yvOJrlvI7bNR8cuw6XxGtB9scFveudIqc6MylQO/+aUTS/d8dFu3I5ONlqZkRBCavgOK
 RZZqzwsCiukW+fDl2ye5ropvD2aVluFjExuqqI/dhyiqhNsRe/dsALVzXvEPG+ETz5qV
 D3rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683938177; x=1686530177;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=K7Ya3jZlcB5DIRxzkVo+FZAIt5xtGXopE24BSYXVJKk=;
 b=LhgmSQx5a1N8upjfpyfkPDXoiqVEo6wMo+38ZkG/8T9fpEF9AgwPgA/ivZHmguf1VR
 1mv6nxb4fKVs7d8u4bjQjv6C5KkjMLstzG3jOevfl8CA/AhiIhqzmIuMmwOSvXdx4+TO
 DyiLS/DahpFLLFAdlLSaTL6mPCAiMfRbjVbcKy+laDNcFlCCfczQpVFX+uwLR474nigM
 3Rub+0c898lwhRuOGQ6LSU/rD642tZ2JQ68GlRVoty7FnOsk4XUnyvGxDUV+LoyID0q8
 IQK7j19U4KgxU2yxo4iaYwsx2MB6KR7WSBQpYQIcOfMbTbEB41Ovs0dJ/hNJ2vnSk7FG
 qjXQ==
X-Gm-Message-State: AC+VfDwSQqgjI4K3cqB4U7kUJM0nsSSzx6n6a9hnaobX7CfyXZeTgqHp
 hCDzuiIaCypAaeGCeM+FbU8CmlsVU7U=
X-Google-Smtp-Source: ACHHUZ6rw3ymcV2J3+x78P6uQz6mtkbxujPRSeirm0OG2Uoo/pYeAsqh0YVKR+ziA21mJLEFCY5YXAXWSGI=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a05:6a00:3a8:b0:643:ae47:9bc0 with SMTP id
 y40-20020a056a0003a800b00643ae479bc0mr6493792pfs.3.1683938177325; Fri, 12 May
 2023 17:36:17 -0700 (PDT)
Date: Fri, 12 May 2023 17:35:38 -0700
In-Reply-To: <20230513003600.818142-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230513003600.818142-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.1.606.ga4b1b128d6-goog
Message-ID: <20230513003600.818142-7-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v3 06/28] drm/i915/gvt: Error out on an attempt
 to shadowing an unknown GTT entry type
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

Bail from ppgtt_populate_shadow_entry() if an unexpected GTT entry type
is encountered instead of subtly falling through to the common "direct
shadow" path.  Eliminating the default/error path's reliance on the common
handling will allow hoisting intel_gvt_dma_map_guest_page() into the case
statements so that the 2MiB case can try intel_gvt_dma_map_guest_page()
and fallback to splitting the entry on failure.

Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/gtt.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index 2aed31b497c9..61e38acee2d5 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -1306,6 +1306,7 @@ static int ppgtt_populate_shadow_entry(struct intel_vgpu *vgpu,
 		return -EINVAL;
 	default:
 		GEM_BUG_ON(1);
+		return -EINVAL;
 	}
 
 	/* direct shadow */
-- 
2.40.1.606.ga4b1b128d6-goog

