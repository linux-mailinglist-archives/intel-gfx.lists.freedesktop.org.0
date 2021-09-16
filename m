Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E743740D298
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 06:37:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0373B6EA9D;
	Thu, 16 Sep 2021 04:37:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com
 [IPv6:2607:f8b0:4864:20::82e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E54BA6EA9D
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 04:37:34 +0000 (UTC)
Received: by mail-qt1-x82e.google.com with SMTP id t35so4484216qtc.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 21:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=46Znz0XYZqV75w6izLj//kO1BgimfrMuJbKT3BGaj6M=;
 b=lKin/00yJ3QV0ZPXNwy0wElLK3yLuJpYoEjOujEyU1KsneBgGbJgJzYHLQKXrB0r+n
 lz5ZTJlLijJTcFcmv+RCY7Q2WsNE5GTqSXqyOmp7HrAvulxf8PYU+caay/tqSAZZ60yY
 uCzsbTna3kBhInt8rFGS8lyZszClChtuCbFb1nUJg7FF175gvBRTv+w0jTQNeQ7goPLo
 wrQNWGYkogttGJWZqQ1q+mIXbxhT368OWYYpqfOFMKfD/Thz2kNU9PulOdYNyLNLHBnj
 FGc2wJDMnMk4D7XsJS7E71l42Cr9Qen/URnvSYbKqWyhaLqzdfpG5u5KI3N2EsmDdVHk
 TrCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version;
 bh=46Znz0XYZqV75w6izLj//kO1BgimfrMuJbKT3BGaj6M=;
 b=bvlgnUdEJhuDRuo5ZBwXaXwDA2ilrpaKfsEDkvT88ryZ6PIEDddICz0mVD/GrxIDaw
 eCE8OzwU58Ee7Tg28A3Sa9PXioufg9BRRzZPXjXBe2TAvPyjksziyYAFrHijRl1Fxzmx
 JQg7I2exfEcvBjIbG/e3fgVa0ySixxMIRKHSrckofgm0vni9kl7vc5HripSArSkIhuAd
 J9bRPZPkRAEjuo4KgAaqiSO929f1CV09eLGBcs9dOj7tKi9nT5NvPGveip6XiynCs0o5
 9noCZUQ0SBI0w1+BoyEaotzQjmstvu4HXfi3JHIOCBVEWnycBQQvdMjXcXOt5BceYQAy
 DKsA==
X-Gm-Message-State: AOAM533PiKcppwFKBOixYlG+RMJRRMgwtWaCZyTwMcVxTDHcTpNDu5yr
 YAoienWERcCTRVhAxgp4pNjrbzZu9kzN/Q==
X-Google-Smtp-Source: ABdhPJwCnZ9kYelEcmVP7g0WbPZijLkhPLxFnVmVGe0ZF9gGUSDFygD14I26aGzJXJMekr5ZI3r7Dg==
X-Received: by 2002:a05:622a:c1:: with SMTP id
 p1mr3268033qtw.365.1631767053681; 
 Wed, 15 Sep 2021 21:37:33 -0700 (PDT)
Received: from ripple.attlocal.net
 (172-10-233-147.lightspeed.sntcca.sbcglobal.net. [172.10.233.147])
 by smtp.gmail.com with ESMTPSA id w19sm1622926qki.21.2021.09.15.21.37.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Sep 2021 21:37:33 -0700 (PDT)
Date: Wed, 15 Sep 2021 21:37:08 -0700 (PDT)
From: Hugh Dickins <hughd@google.com>
X-X-Sender: hugh@ripple.anvils
To: intel-gfx@lists.freedesktop.org
cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>, 
 Michal Wajdeczko <michal.wajdeczko@intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, 
 Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>, 
 John Harrison <John.C.Harrison@Intel.com>, 
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matthew Brost <matthew.brost@intel.com>, Dave Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel.vetter@ffwll.ch>, Pavel Machek <pavel@denx.de>, 
 Hugh Dickins <hughd@google.com>, linux-kernel@vger.kernel.org
Message-ID: <9e1a6f3b-5e64-be91-ba54-9b5d135ef638@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: [Intel-gfx] 5.15-rc1 i915 blank screen booting on ThinkPads
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

Two Lenovo ThinkPads, old T420s (2011), newer X1 Carbon 5th gen (2017):
i915 working fine on both up to 5.14, but blank screens booting 5.15-rc1,
kernel crashed in some way.

I wanted to say what i915 generations these are, but don't know where
to look - I don't see it in dmesg, even when DRM_I915_DEBUG enabled.

Possibly relevant: builtin kernels, CONFIG_MODULES off, no initrd.

On the older laptop:

First bisection showed first bad commit
41e5c17ebfc2 "drm/i915/guc/slpc: Sysfs hooks for SLPC"

But reverting that still crashed boot with blank screen (and
reverting the two related commits after it made no difference).

Second bisection, starting from 5.15-rc1 bad and 41e5c17ebfc2 "good",
but patching it out each time before building, showed first bad commit
3ffe82d701a4 "drm/i915/xehp: handle new steering options"

That one did not revert cleanly from 5.15-rc1, but reverting
927dfdd09d8c "drm/i915/dg2: Add SQIDI steering" then
1705f22c86fb "drm/i915/dg2: Update steering tables" then
768fe28dd3dc "drm/i915/xehpsdv: Define steering tables" then
3ffe82d701a4 "drm/i915/xehp: handle new steering options"
worked (there was one very easy fixup needed somewhere).

And 5.15-rc1 with those five reversions boots and runs fine...
on that older laptop.  But reverting those from the kernel on the
newer laptop did not help at all, still booting with blank screen
(or no more lines shown after the switch from VGA).  Put them back.

On the newer laptop, bisection showed first bad commit
62eaf0ae217d "drm/i915/guc: Support request cancellation"

And 5.15-rc1 with that reverted boots and runs fine on the newer.

I am hoping that there will be some i915 fixups to come in a later rc!
May be nothing more than uninitialized variables or NULL pointers.
You'll probably want more info from me: please ask, but I'm slow.

Thanks,
Hugh
