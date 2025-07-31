Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D66B1729B
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 15:57:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7B9C10E799;
	Thu, 31 Jul 2025 13:57:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ftxzUohf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4770A10E151
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Jul 2025 02:49:43 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id
 a640c23a62f3a-ae401ebcbc4so74766966b.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jul 2025 19:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753930182; x=1754534982; darn=lists.freedesktop.org;
 h=content-transfer-encoding:subject:from:cc:to:content-language
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OzUZuxERan7vOG01vgHj1cm1HbxVQVkWsYiUSG9LzEI=;
 b=ftxzUohfToiJGZpbW01PxnYvfIONmoUqlaCjzE6LVuuKk/m3E09354Nc3NQpnDjo1H
 fDKmRcPKjWSXnHnLlXGlJ5QMpMf1meljSGyPKz82+SheOy1w2QMIxLWo5NfZz8AK4t8E
 n68cn4JBZ2PZQQgKTLPZ5BLf3FUIqeS0XbsUB3e8QewnqIC7EiykcVvLTLsyj2sTkHcY
 SV1iSu6Q1CaWuUNofSNteMY1r0VhIVJj9XknswXwHL9ERGkV5hs5pkhsizrFWn5NbNK7
 PmjUuA+v8Rz0mjhPX3SutXKagGKxzDKY2//heW8kvLwzYlsTUivkaFrU0GwYEh0FgsTO
 FMXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753930182; x=1754534982;
 h=content-transfer-encoding:subject:from:cc:to:content-language
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=OzUZuxERan7vOG01vgHj1cm1HbxVQVkWsYiUSG9LzEI=;
 b=vaScyOIDfgpsKsdyFIXTYRD/4oltQn4QXnRY7z9+O1+cGwnQiBXNaFZTrKyxkvkZh2
 spfcHijW0nlnIm4EjnQ8limX0N+PK/LTncbtQMMrZXxTxAuQ86Y0dcOL1kgtXWfT07mK
 hAdEUX6ERC2fJlWKvbOX61ubYPZiHCRZY9HocWTxsOQj4Z19VHqJXKvIAoLZ9/NUEIJ5
 lp+1Oykpf6LM0MJwvfzhwKe6Ywh3ITtzDyWptlU5hrF5L149KPdVrwbXFyuBU6e+ok8j
 cDMiqveQuyuWNdLdW6KLWeKgBPXHTieji9NDtZDjE76uIyqD1prF/VgUJibh1HERm1wZ
 dlgw==
X-Gm-Message-State: AOJu0YwguVnFbVK+LbTsd+ut9663tDHK1Qxj0WuZz/kSCEE9VUXwHBav
 iKzA/5bvO/92mRhi9KkNg6Lvz2XAfEqj0PLxbozvBhYBsZ4TA1WC2x7ny5VquJNhNF8=
X-Gm-Gg: ASbGncvMci4pPea98DJzDfU3mjOVkE+EOApIughj11ClXVqfsnmp6ZDRn/8tzwfx+sw
 78E8RkVG5cnUYTBzuN8E/VEV+MjSfjPGUZcfvzm8T2NvQbL3YE3i7RBk7B6IaiJlN3JQBBRF59T
 +K3RiIkyCSiLnhbsqlAZNsNKKgL9BEoWZHqFw8+/aBI1bzgrmA3GS6CZtvq6AWir8Qoyoj7FK53
 4M39T1ovWmVped+8xBrJY/cKXJNzEoj0t0XFYBCJQFEuiOpSkBxUIGXblnayd6IDN7zCVXpgHpN
 WqjNRb6lSH82NpPR2GG37+8ZfVugKvcrWasxomjDrNE3HHrCzeKzRexfKYjS81Urkf9bfO1+upd
 dpC+CyDW7lY5JF7M2SurG/nAjwhlpKDWsTkLpJqXV5euoR1HnvTdivMe95ETSx0iGF3Xp5FgDoZ
 EUXd/tuw==
X-Google-Smtp-Source: AGHT+IFzLu7XtmIIsdUbgbOQczY80fXq3WQy1KmMN+7mzLHmJO4/zvoXg3RVxiGBQg0RX+3/dOYr0A==
X-Received: by 2002:a17:907:9487:b0:ae3:e378:159e with SMTP id
 a640c23a62f3a-af8fd769c97mr612401666b.26.1753930181369; 
 Wed, 30 Jul 2025 19:49:41 -0700 (PDT)
Received: from [192.168.0.52] (217-62-96-139.cable.dynamic.v4.ziggo.nl.
 [217.62.96.139]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-af91a1e8311sm32881566b.63.2025.07.30.19.49.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Jul 2025 19:49:40 -0700 (PDT)
Message-ID: <3aebffd3-b3b7-4c3c-a7ac-816965d0204d@gmail.com>
Date: Thu, 31 Jul 2025 04:49:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
From: =?UTF-8?Q?Ren=C3=A9_Herman?= <rene.herman@gmail.com>
Subject: Issue or bug concerning DRRS on old i7-4980HQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 31 Jul 2025 13:57:42 +0000
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

Hello all.

Addresses as per MANTAINERS, and Ville as per Git history...

I've been trying to assist a new Linux user with an old 2015 Alienware 
17 R2, i7-4980HQ (Iris Pro 5200) together with NVIDIA GTX980M.

The user experienced flickering (in a brightness sense) and had traced 
this back to Intel DRRS. I supplied a simple test patch as

--- linux-6.8.0/drivers/gpu/drm/i915/display/intel_dp.c.orig	
+++ linux-6.8.0/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2727,6 +2727,8 @@
  {
  	struct drm_i915_private *i915 = to_i915(connector->base.dev);

+	return false;
+
  	if (pipe_config->vrr.enable)
  		return false;

which does indeed work. Set out to then solve it right(er) and ran into 
the debugfs drrs ctl file, for him

/sys/kernel/debug/dri/1/crtc-0/i915_drrs_ctl

We haven't however been able to do anything useful with that. If we echo 
0 into it it seems that DRRS does temporarily go to "DRRS active: no" in 
the corresponding i915_drrs_status file, but only seconds later it again 
shows as "DRRS active: yes", and his problem returns/remains.

It's making the system largely unusable with Linux -- or are we/am I 
missing something as to configuration?

The user is as said a new Linux user and will need to stick with generic 
distribution kernels, Ubuntu here, but the debugfs thing seems to then 
not work and a kernel parameter appears to not exist. When searching I 
found this issue also at for example

https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1928138

and on the list at

https://lists.freedesktop.org/archives/intel-gfx/2017-October/145050.html

Is there something we/he could do to get DRRS disabled with a generic 
distribution kernel? Should the i915_drrs_ctl thing have worked?

And if not, is there a possibility for a kernel parameter that does 
something akin to that above working test patch (but then right)?

Kind regards,
Rene Herman
