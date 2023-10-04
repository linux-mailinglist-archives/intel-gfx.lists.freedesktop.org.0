Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E707B7CB3
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 11:57:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2BC010E0F0;
	Wed,  4 Oct 2023 09:57:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6537310E0F0
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 09:57:10 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-40566f8a093so18494305e9.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Oct 2023 02:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1696413428; x=1697018228; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=uubN191ywAk7JiN0oIx6C7d9XzBK8CkgxlBMUZAYvkc=;
 b=OFoYIiLPSEQsc98CwijMiRs5FCZg6iA2CFTzqu+4pLBo9dZ+bPqq2Uz5+HsvWpWE6P
 CnJ9JVtE0O+iQ7RLWJJArN/vfJ+J5sW7ow5czS+psZWCOfgy1Mh4EAaINalu3yQTHhq9
 O3bEcUsk7ILLbnabqKJQxJh+CZgJaATPO3BTCxP7mP09a6uuz58vPf0DPrPNCRkG/YRA
 Wqv5/JNF/mqMhhUzuMaryifoK72iu45ND//8hMpKuTkEzfEfAFt47qo82l/b0QMckCLs
 58+bYU2RuxnGuk2wh/v2xdfLKNxUE0TKJY2Po0s8I7rsw0EQ1dqlv6okFw2fuIDiWAYH
 1qIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696413428; x=1697018228;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=uubN191ywAk7JiN0oIx6C7d9XzBK8CkgxlBMUZAYvkc=;
 b=ia3hfAYbH8UK00gT/eWWZignMag9vlf4KCmcKsiDnQeOfeGyRvv96gB8B8DwWvZOM5
 ILKsWwmdGRWb8pmeouXaGkPuPDaKZpy3VR/XMZaa3SFDZkF4PaKoHDPckK7R2UFA77Kj
 p8KlO6/454gxXQ+d7X5jPBPDtoYUU2cs/2Lx6nomF+kvDwJuYlVyP1MAU/SRIoMsON2t
 6x4DYn4xYp4let6NVNv2YkkBqm7v4qHJ5ohxLUOOEs6Yz3XPmhySDGhnvbStQXu8W+Ne
 S6yNvFR/RVAji7CuSqd6KMlKe2HxQc38P8wxARmiTXGUHvESdeuuFM515OOu48LLuzbe
 v9GQ==
X-Gm-Message-State: AOJu0Ywc5ElkXvY0zs0EZS+c+C8V0VXXqsawkmzNPqkyV07j8aR46SjD
 sW+mpcijP2JbenyuqnTicMM/zg==
X-Google-Smtp-Source: AGHT+IE6vbGJlixcn7ter7C0qbcgyZRuGWt+vqVIpR0CutAKa+nrsM6BhUmQ7/mBdbb5qUjDOzuwAg==
X-Received: by 2002:a7b:c40a:0:b0:401:23fc:1f92 with SMTP id
 k10-20020a7bc40a000000b0040123fc1f92mr1738776wmi.25.1696413428180; 
 Wed, 04 Oct 2023 02:57:08 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 e24-20020a05600c219800b004013797efb6sm1107424wme.9.2023.10.04.02.57.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Oct 2023 02:57:07 -0700 (PDT)
Date: Wed, 4 Oct 2023 12:57:04 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: matthew.brost@intel.com
Message-ID: <c31cab01-344b-4117-b14f-1191c611358f@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] [bug report] drm/i915: Move submission tasklet to
 i915_sched_engine
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Matthew Brost,

This is a semi-automatic email about new static checker warnings.

The patch 22916bad07a5: "drm/i915: Move submission tasklet to
i915_sched_engine" from Jun 17, 2021, leads to the following Smatch
complaint:

    drivers/gpu/drm/i915/gt/intel_execlists_submission.c:3659 rcu_virtual_context_destroy()
    warn: variable dereferenced before check 've->base.sched_engine' (see line 3633)

drivers/gpu/drm/i915/gt/intel_execlists_submission.c
  3632		 */
  3633		tasklet_kill(&ve->base.sched_engine->tasklet);
                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The patch introduced a new dereference here

  3634	
  3635		/* Decouple ourselves from the siblings, no more access allowed. */
  3636		for (n = 0; n < ve->num_siblings; n++) {
  3637			struct intel_engine_cs *sibling = ve->siblings[n];
  3638			struct rb_node *node = &ve->nodes[sibling->id].rb;
  3639	
  3640			if (RB_EMPTY_NODE(node))
  3641				continue;
  3642	
  3643			spin_lock_irq(&sibling->sched_engine->lock);
  3644	
  3645			/* Detachment is lazily performed in the sched_engine->tasklet */
  3646			if (!RB_EMPTY_NODE(node))
  3647				rb_erase_cached(node, &sibling->execlists.virtual);
  3648	
  3649			spin_unlock_irq(&sibling->sched_engine->lock);
  3650		}
  3651		GEM_BUG_ON(__tasklet_is_scheduled(&ve->base.sched_engine->tasklet));
  3652		GEM_BUG_ON(!list_empty(virtual_queue(ve)));
  3653	
  3654		lrc_fini(&ve->context);
  3655		intel_context_fini(&ve->context);
  3656	
  3657		if (ve->base.breadcrumbs)
  3658			intel_breadcrumbs_put(ve->base.breadcrumbs);
  3659		if (ve->base.sched_engine)
                    ^^^^^^^^^^^^^^^^^^^^^
But previous code had assumed the sched_engine could be NULL.

  3660			i915_sched_engine_put(ve->base.sched_engine);
  3661		intel_engine_free_request_pool(&ve->base);

regards,
dan carpenter
