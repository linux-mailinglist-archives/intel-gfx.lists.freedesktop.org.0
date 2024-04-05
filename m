Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A4F89C6F1
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 16:24:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 991D310FE2C;
	Mon,  8 Apr 2024 14:24:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YHvGCW8V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0B4B10E9C6
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 13:58:45 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id
 5b1f17b1804b1-415523d9824so22440855e9.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Apr 2024 06:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712325524; x=1712930324; darn=lists.freedesktop.org;
 h=content-transfer-encoding:content-disposition:mime-version
 :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
 :reply-to; bh=HJrUbQT5Hw4+7pS+U2AF4YkErSdro5FnoqDalj6wnaE=;
 b=YHvGCW8V6hYO7akb8dEeqWtklIpgINoNW1j+Z9gE0pMeM0g+35kFD6sKj0SByMah+b
 EhlXICXFfN+comBIIxjUvJomIKWvyK7I7vGJ35AvqQ7tcopg0zhqhBC4PYVNa7pM0eZM
 1ZAipF6yCUccPLEEbj3OCWFpxmaWFnKkhNBGBNCbxHuF4c4fN/vdbDCPgUvCDEiK0DPG
 KVOyGXZxqn9x1ZBNIxLikc28l8wVb/mLuppc8Xt8Z5D1tV1VQYwkHsSE3jBR/ptO1cfq
 ug39+WUrcwdwTw/Cy+Lrba7KOlmaYxQXNtXpCQR5StNZzK0Z+ZNGf2hjfzn+alC+cLmX
 H6Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712325524; x=1712930324;
 h=content-transfer-encoding:content-disposition:mime-version
 :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=HJrUbQT5Hw4+7pS+U2AF4YkErSdro5FnoqDalj6wnaE=;
 b=mju7tvGrW/VQehadww8F94iupejiy/97DAtjSdYWJFlC/erwp/BSpq4i42NO6eoNOC
 B7XnRhqxPxvW0cUD9BP73rItMM21vcxBjS/hyQooIo94gwyopQX1B0cs4h/2Cz3yVO4R
 LG0Xn97C2PW1lkgpbmgyXPJUOFC+L4huBB+l6Bv8S4K07w8eTH/w1o/OCZ03Vbp8Z7k+
 FILKOdRyHGm5Ejbwo+Ojpy0g8pyLD9lsRYTu4phzcbDQA6K8Eb8zzPOfQfFAHXZCr4ve
 I7/pWfrB2CN6zRuknWNJK+QcRxIzNd0OCNpQjyj2+/QviFZKPzXpoNBN8eVxEwLZJL8F
 BHRw==
X-Gm-Message-State: AOJu0YzxCp/DHn4JT7qqu4KMADoaYrqK6QP1A0g7+iPLYlijTkEg/bJ2
 YS88dZxQZBbkXBPAiV70Kedfl2NHdDxraLdon5Ae6qm7p1uJpp0xjDdroPkK
X-Google-Smtp-Source: AGHT+IHAuoqQKQgv2M7rxfLiMVQ/Uhz3GeVokNvq4IzoqiroUC59fbs4Y7LjifoAC1KBbKgH55lw2g==
X-Received: by 2002:a7b:c44e:0:b0:415:6860:eafb with SMTP id
 l14-20020a7bc44e000000b004156860eafbmr1674084wmi.15.1712325524001; 
 Fri, 05 Apr 2024 06:58:44 -0700 (PDT)
Received: from aquecedor-3-0.lan ([2001:818:e81c:ce00:7193:3bd:90d8:9d8])
 by smtp.gmail.com with ESMTPSA id
 f14-20020a05600c154e00b0041552dbc539sm3114824wmg.11.2024.04.05.06.58.42
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Apr 2024 06:58:43 -0700 (PDT)
Date: Fri, 5 Apr 2024 14:58:41 +0100
From: =?iso-8859-1?Q?Jos=E9?= Relvas <josemonsantorelvas@gmail.com>
To: intel-gfx@lists.freedesktop.org
Subject: [REQUEST] Add support for Intel DPST (Display Power Saving Technology)
Message-ID: <ZhADkdyItNEuoxKN@aquecedor-3-0.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 08 Apr 2024 14:24:15 +0000
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

Hey folks,

I've noticed that power-profiles-daemon recently added support for AMD's panel power saving technology with this MR:
https://gitlab.freedesktop.org/upower/power-profiles-daemon/-/merge_requests/137

It appears to be controlled via a panel_power_saving SYSFS property.

This reminded that Intel has a similar technology. RPL's datasheets confirm this:
https://edc.intel.com/content/www/us/en/design/products/platforms/details/raptor-lake-s/13th-generation-core-processors-datasheet-volume-1-of-2/display-power-savings-technologies/

> The Intel® DPST technique achieves back-light power savings while maintaining
> a good visual experience. This is accomplished by adaptively enhancing the
> displayed image while decreasing the back-light brightness simultaneously. 
> The goal of this technique is to provide equivalent end-user-perceived 
> image quality at a decreased back-light power level. 

> Intel® OPST solution uses same HW infrastructure as Intel® DPST. Frames are 
> processed using frame change threshold based interrupt mechanism similar
> to Intel® DPST. Intel® OPST SW algorithm determines which pixels in the 
> frame should be dimmed to save power keeping visual quality (such as contrast, color) 
> impact to acceptable level. Since there is no backlight for OLED panels,
> the power savings come solely from pixel dimming. 

However, it doesn't seem like i915 has any support for this. Searching online was
ineffective too:

- I found mentions of /sys/class/drm/card0/power/i915_dpst, but it doesn't seem to exist,
at least not anymore.

- A i915.dpst parameter was also brought up, but it doesn't seem to exist either.

Interestingly, all mentions of dpst on Linux were referring to Android, so maybe
this was a downstream thing with Android?

In any case, I found this email in the archive which confirms
that DPST was not supported (at least in 2012):
https://lore.kernel.org/intel-gfx/50ADFFB3.8030907@linux.intel.com/

Since AMD's equivalent to DPST is now supported by their driver and being used by userspace,
it seems like a sensible idea to implement this for i915. I've confirmed that this feature
has existed since (at least) Haswell (released over a decade ago!) so implementing it
would likely net a few energy consumption improvements for a large chunk of Intel laptops.

The best approach here would probably be to expose a similar attribute to amdgpu's 
"panel_power_savings", with a scale that controls the feature's aggressiveness,
then update userspace tools, including power-profiles-daemon, to set the value
based on the intended energy scheme.

Thanks for reading,
José Relvas
