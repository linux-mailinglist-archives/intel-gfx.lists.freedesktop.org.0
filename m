Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5274C4100B6
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 23:27:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12EF46E055;
	Fri, 17 Sep 2021 21:27:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com
 [IPv6:2607:f8b0:4864:20::f32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF7896E055
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 21:27:02 +0000 (UTC)
Received: by mail-qv1-xf32.google.com with SMTP id w9so7299616qvs.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 14:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=ARbCiyrjzicPTRsCYX6lqGMVm2ugWzkwOxzq0qkmdRg=;
 b=qHzhP9HK/Ofzf3pN2ALjP8RLz4v6tPVtsC5dcTtVrL7ctUzks2K3riD1O3uM9hfa9f
 aRCwrXe9tJyZRtgBL/aP+mgX0jDgYh6v03mgtf7dBfLsaRy18++URZSPk39GnVlQicZg
 FWA2P1HFmqg6/VQbMWLJse6IjmrYi9aW/eTsu2JVLcLh6xPjyHmyVIgj0Q8Y9WwU0n1u
 0fDsmpBnGeNCwsmT0/0DtNOdZDpD3Sediriq1omX25WX8Kt0fXkIkSPVZEaj4QwwPgIR
 BP/upJpcY5Jfkz7i87gqUaI/zfb8WLIApE+paE+3IyZwCu9H3/L1kBEZKC8v3NQxZXNV
 rvXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=ARbCiyrjzicPTRsCYX6lqGMVm2ugWzkwOxzq0qkmdRg=;
 b=G0+CYUL3Z/px4X8HdJ1pUQPhO7qpxYD3WSsDseTfjydnBdN1a4hR/qR9LGTIcQvcKy
 +6ftzlASfyhbRvQ/M9HWfYZoVUDo4uiNQR3fjOzLF86mqhylZm0fOKh2yyJYYDZo1Mqu
 wRE6TXeVjJ9dE/YJR2p7OUpsSzEMa2WY4dz3pu842r5+Qfoju/p3xBUl/cY7PnjvEinu
 XH7cpkLqT0LAi14zfPb5EDZ/lJiET6W2fd46ARaZvLLFKWq73jvqg/jvMeGnNFQzcrOZ
 8w3b1SFqTSPLt7T5EYV8q3E+gq/p1qHR1ZP1409MMJH/M1YkpdzU4EmLGFOT0RE/2Z3a
 IKtA==
X-Gm-Message-State: AOAM531+hFeKnhIjZMU/6M26atchKQTbm+zAfUVF6Hp/60dn6EEJRK9p
 zIJn4sKaMFfuIrYtjlZLBSSZIQ==
X-Google-Smtp-Source: ABdhPJxRe1Q7NYqYUxJRYLNRIU/yrIDRCkzpDK37FrG1sJ0aQH8TWx+8695biQCZH48+Xu/CWalwng==
X-Received: by 2002:a05:6214:12d3:: with SMTP id
 s19mr13622750qvv.10.1631914021565; 
 Fri, 17 Sep 2021 14:27:01 -0700 (PDT)
Received: from ripple.attlocal.net
 (172-10-233-147.lightspeed.sntcca.sbcglobal.net. [172.10.233.147])
 by smtp.gmail.com with ESMTPSA id x19sm5496870qkm.115.2021.09.17.14.26.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 14:27:01 -0700 (PDT)
Date: Fri, 17 Sep 2021 14:26:48 -0700 (PDT)
From: Hugh Dickins <hughd@google.com>
X-X-Sender: hugh@ripple.anvils
To: Jani Nikula <jani.nikula@linux.intel.com>
cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, 
 Hugh Dickins <hughd@google.com>, intel-gfx@lists.freedesktop.org, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>, 
 Michal Wajdeczko <michal.wajdeczko@intel.com>, 
 Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>, 
 John Harrison <John.C.Harrison@intel.com>, 
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matthew Brost <matthew.brost@intel.com>, Dave Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel.vetter@ffwll.ch>, Pavel Machek <pavel@denx.de>, 
 linux-kernel@vger.kernel.org
In-Reply-To: <87mtocx1rm.fsf@intel.com>
Message-ID: <1f955bff-fd9e-d2ee-132a-f758add9e9cb@google.com>
References: <9e1a6f3b-5e64-be91-ba54-9b5d135ef638@google.com>
 <9e4c1c68-8d1e-ee2c-99bf-320046130775@linux.intel.com>
 <87mtocx1rm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] 5.15-rc1 i915 blank screen booting on ThinkPads
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 16 Sep 2021, Jani Nikula wrote:
> On Thu, 16 Sep 2021, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> > On 16/09/2021 05:37, Hugh Dickins wrote:
> >> Two Lenovo ThinkPads, old T420s (2011), newer X1 Carbon 5th gen (2017):
> >> i915 working fine on both up to 5.14, but blank screens booting 5.15-rc1,
> >> kernel crashed in some way.
...
> > Kernel logs with drm.debug=0xe, with the broken black screen state, 
> > would probably answer a lot of questions if you could gather it from 
> > both machines?
> 
> And for that, I think it's best to file separate bugs at [1] and attach
> the logs there. It helps keep the info in one place. Thanks.
> 
> BR,
> Jani.
> 
> [1] https://gitlab.freedesktop.org/drm/intel/issues/new

Thanks for the quick replies: but of course, getting kernel logs was
the difficult part, this being bootup, with just a blank screen, and
no logging to disk at this stage.  I've never needed it before, but
netconsole to the rescue.

Problem then obvious, both machines now working,
please let me skip the bug reports, here's a patch:

[PATCH] drm/i915: fix blank screen booting crashes

5.15-rc1 crashes with blank screen when booting up on two ThinkPads
using i915.  Bisections converge convincingly, but arrive at different
and surprising "culprits", none of them the actual culprit.

netconsole (with init_netconsole() hacked to call i915_init() when
logging has started, instead of by module_init()) tells the story:

kernel BUG at drivers/gpu/drm/i915/i915_sw_fence.c:245!
with RSI: ffffffff814d408b pointing to sw_fence_dummy_notify().
I've been building with CONFIG_CC_OPTIMIZE_FOR_SIZE=y, and that
function needs to be 4-byte aligned.

Fixes: 62eaf0ae217d ("drm/i915/guc: Support request cancellation")
Signed-off-by: Hugh Dickins <hughd@google.com>
---

 drivers/gpu/drm/i915/gt/intel_context.c |    1 +
 1 file changed, 1 insertion(+)

--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -362,6 +362,7 @@ static int __intel_context_active(struct
 	return 0;
 }
 
+__aligned(4)	/* Respect the I915_SW_FENCE_MASK */
 static int sw_fence_dummy_notify(struct i915_sw_fence *sf,
 				 enum i915_sw_fence_notify state)
 {
