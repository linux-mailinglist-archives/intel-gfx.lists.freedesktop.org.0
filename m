Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E023872E64
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 06:32:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1213F112EF0;
	Wed,  6 Mar 2024 05:32:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="vA9x42xQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5904112EF0
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 05:32:07 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id
 ffacd0b85a97d-33e4d36f288so263754f8f.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Mar 2024 21:32:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1709703126; x=1710307926; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=2jNqUlTpqBv+6HtpQ9eCQCrTdAlv8ggUQprqtHIPwvg=;
 b=vA9x42xQ2Uwp9EJQS52GZTCM7M/TO0Wc1n9U54WLYYrJic7EEIBnF6+EyQjcMeHWeP
 n6+SK/vJKAELAwg8Dv+a4b0CLCqoAaF2WIRrdNQoNyVHQGAwyN4Yl4NfD8Va89QSBXeF
 6kx2GWX+yBdDH7WhRfW0pAU6nIkkPK8+iBpuPMM6+TL09ZKRxwygcDV2Urwf0qhxg05Y
 OF5G6rLTPPBKbqbOcqs7OJm1lMxa8GyfrxRIvCEY2v4P6Ox6b+AfHXf2Fp7OPfoEp+TP
 2qyxMoaHNtZs3Oe/Bhq4tVRZ+5ljPPqAOFMTHBBB7qUHZz90L+RG++2wSGilnnTwKb2m
 cp3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709703126; x=1710307926;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=2jNqUlTpqBv+6HtpQ9eCQCrTdAlv8ggUQprqtHIPwvg=;
 b=oSzLPpeeScZk9WjauP/lMNuq5x8VRCyjFLC4zeIknx0S4SuUSo3s7gJ0WYZGpYz4RX
 3Nag2Dc2V8/7Y92lbao7nhhvcCmfzjR1kgy6hLBJCFIUFkGvAODE28vwAsgx7JSZNlDU
 0VAm8T18PnS9zZbeCor4vgG/uDYC7d+oKgLJGGI/0lxjMn37KNPLuoTBXCiEz1t90tuU
 U8EreEctufp39OSXNjosJvr/k4G/o81xuTwrzL/RXr30jva1fexVbpXRTKvknLENXEFA
 CKfVIALB5OwsY5pr5Cr+E/AFgZGCFYTUlx7cBIcaN9ESljEUPM/FlXmXWiAXZ9UYf+P5
 bhqQ==
X-Gm-Message-State: AOJu0Yztb/ylGXyaJCzg6oX42gTxdVV1yQCuhd9NApZyiWGSyFDqPYJ+
 DsLFtnbmmojIoZ43F6MfPOVTRhOrRBc1H0PyBNk52qTNJLLVHpAua1duswUuldE=
X-Google-Smtp-Source: AGHT+IHPgf0HNe0nQWoArKB6D76aBuweXzzFH9yrHoKPxcIn3nU+IRZvdXt0uldY49fV0z62N77PKA==
X-Received: by 2002:adf:ebc6:0:b0:33e:4916:3e2d with SMTP id
 v6-20020adfebc6000000b0033e49163e2dmr3480432wrn.13.1709703125539; 
 Tue, 05 Mar 2024 21:32:05 -0800 (PST)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 bw1-20020a0560001f8100b0033d6bc17d0esm16960757wrb.74.2024.03.05.21.32.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Mar 2024 21:32:05 -0800 (PST)
Date: Wed, 6 Mar 2024 08:32:01 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Subject: [bug report] drm/i915/dp: Add support for DP tunnel BW allocation
Message-ID: <15c13d62-a527-47d2-b728-e0299debe9c8@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

Hello Imre Deak,

The patch 91888b5b1ad2: "drm/i915/dp: Add support for DP tunnel BW
allocation" from Feb 26, 2024 (linux-next), leads to the following
Smatch static checker warning:

	drivers/gpu/drm/i915/display/intel_dp_tunnel.c:793 intel_dp_tunnel_mgr_init()
	warn: 'tunnel_mgr' is not an error pointer

drivers/gpu/drm/i915/display/intel_dp_tunnel.c
    776 int intel_dp_tunnel_mgr_init(struct drm_i915_private *i915)
    777 {
    778         struct drm_dp_tunnel_mgr *tunnel_mgr;
    779         struct drm_connector_list_iter connector_list_iter;
    780         struct intel_connector *connector;
    781         int dp_connectors = 0;
    782 
    783         drm_connector_list_iter_begin(&i915->drm, &connector_list_iter);
    784         for_each_intel_connector_iter(connector, &connector_list_iter) {
    785                 if (connector->base.connector_type != DRM_MODE_CONNECTOR_DisplayPort)
    786                         continue;
    787 
    788                 dp_connectors++;
    789         }
    790         drm_connector_list_iter_end(&connector_list_iter);
    791 
    792         tunnel_mgr = drm_dp_tunnel_mgr_create(&i915->drm, dp_connectors);
--> 793         if (IS_ERR(tunnel_mgr))

The real implementation of drm_dp_tunnel_mgr_create() returns NULL but
the stub implementation returns ERR_PTR(-EOPNOTSUPP).

    794                 return PTR_ERR(tunnel_mgr);
    795 
    796         i915->display.dp_tunnel_mgr = tunnel_mgr;
    797 
    798         return 0;
    799 }

regards,
dan carpenter
