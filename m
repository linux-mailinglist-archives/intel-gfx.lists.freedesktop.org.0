Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20584985594
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 10:36:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38AD710E023;
	Wed, 25 Sep 2024 08:36:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="XMduDt/6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 173B110E7C7
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 08:36:49 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id
 ffacd0b85a97d-374c4d4f219so3550741f8f.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 01:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1727253407; x=1727858207; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=24TAtbArscHpN8Q5Ya3k/SGwY5zHz1+8qMhqhIxqNPQ=;
 b=XMduDt/60IKOf5K01QG6TXpME3WFJ4UFi0mcJv4ST8+R6tgE8uNo6KXn68prKQVCf/
 x+4R1uzWCoH3aVn1BpOi097mg01mkZSN3r48LXJ5x4RlD47m0rguFpJ7tje+Ag05B4HQ
 H7K33BXHfmJ6j5xL16eRC/EdDvTDdoFF4/itZ7LO1tX8EdbTqz1yc4jLkBZgRLgqv0H6
 T88Tcl3KoBPU71+ozdZuhFuH5w+6g+GKx7m6ZRXK4the6oxjeYcDt7/iQ03KPv9Sme8a
 Y1giEtHBy+UOhsmOKCEU4Kzsjzp8H9BCsdZfO43drJ2CqVD2Cl4ZqQJejRUlIXIenfmg
 z6iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727253407; x=1727858207;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=24TAtbArscHpN8Q5Ya3k/SGwY5zHz1+8qMhqhIxqNPQ=;
 b=uc5d7v5jl9473HcUou9aNjmotsaLrzgJzkI68mmTYFqyQGDaQjEiQH9Sz3hKv86cU+
 6WWSj9qeFyu/JLqDyNPORRrEHahcaCE6mcI3VlXCTGa8Fv5RMtN49kCt+G+qWfpf9iAd
 ISRqXBiQMJEXAZWo9+/1eMpEfmZRMTMjFyYsGtUtmZAIORMVvLg76Hf63CN2n10VCqWD
 cVUVAYxnxyBbcXBqSFf9+/9NaA/Y89VlQSbLKAeH3uLcjxOMFiBKa2HwGUFKrL942ceX
 VLQ875Rp6gLw+c8eZhH4WS7u8tb4kHXKfUbqsFeBx6tfEM40LNh0mevI9qhVGd5GUbi7
 hfrA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVRcmSQTaW9XbA8E1MwksSo+CdVhHksikYAMx0tTmNclj+Hlxaf+kx7wkyvmsfe/iFpsIR23eZUvL4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YztrnmRqaKQlmUw9sjxqcaObZwBI1lxLsOLcmHtBMk8Y2TCDrRP
 JYmGVzMv/WZVnxC2QAjnT+JHA5nvh5lyoWPn9xT80AwyAubB2bAKcwkL1pnbyAM=
X-Google-Smtp-Source: AGHT+IGxLktfoNE2e2EE4CrdWmjS2fFk7LgFAgB99YMRslWo9edoYR8GVryJlZM+pVzqAnkQDLGUXA==
X-Received: by 2002:a5d:4946:0:b0:374:c1a9:b989 with SMTP id
 ffacd0b85a97d-37cc2464e4fmr1398488f8f.1.1727253407268; 
 Wed, 25 Sep 2024 01:36:47 -0700 (PDT)
Received: from localhost ([196.207.164.177]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-37cbc31f33bsm3383526f8f.97.2024.09.25.01.36.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2024 01:36:46 -0700 (PDT)
Date: Wed, 25 Sep 2024 11:36:42 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Fangzhi Zuo <Jerry.Zuo@amd.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, lyude@redhat.com,
 jani.nikula@intel.com, imre.deak@intel.com, simona@ffwll.ch,
 wayne.lin@amd.com, Harry.Wentland@amd.com, rodrigo.siqueira@amd.com
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
 Fangzhi Zuo <Jerry.Zuo@amd.com>
Subject: Re: [PATCH] drm/display/dsc: Refactor MST DSC Determination Policy
Message-ID: <e817b705-2147-4c69-a43c-704eaf07eeee@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240919173944.256887-1-Jerry.Zuo@amd.com>
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

Hi Fangzhi,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Fangzhi-Zuo/drm-display-dsc-Refactor-MST-DSC-Determination-Policy/20240920-014114
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240919173944.256887-1-Jerry.Zuo%40amd.com
patch subject: [PATCH] drm/display/dsc: Refactor MST DSC Determination Policy
config: microblaze-randconfig-r071-20240922 (https://download.01.org/0day-ci/archive/20240923/202409231002.bMP89Ipm-lkp@intel.com/config)
compiler: microblaze-linux-gcc (GCC) 14.1.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202409231002.bMP89Ipm-lkp@intel.com/

smatch warnings:
drivers/gpu/drm/display/drm_dp_mst_topology.c:6046 drm_dp_mst_dsc_aux_for_port() warn: variable dereferenced before check 'port' (see line 6035)

vim +/port +6046 drivers/gpu/drm/display/drm_dp_mst_topology.c

cc707186414576 drivers/gpu/drm/display/drm_dp_mst_topology.c Fangzhi Zuo      2024-09-19  6033  void drm_dp_mst_dsc_aux_for_port(struct drm_dp_mst_port *port)
c2bc1b6eabe65d drivers/gpu/drm/drm_dp_mst_topology.c         David Francis    2019-08-26  6034  {
cc707186414576 drivers/gpu/drm/display/drm_dp_mst_topology.c Fangzhi Zuo      2024-09-19 @6035  	struct drm_dp_mst_topology_mgr *mgr = port->mgr;
                                                                                                                                              ^^^^^^^^^
The patch adds an unchecked dereference

cc707186414576 drivers/gpu/drm/display/drm_dp_mst_topology.c Fangzhi Zuo      2024-09-19  6036  	struct drm_dp_mst_port *immediate_upstream_port = NULL;
cc707186414576 drivers/gpu/drm/display/drm_dp_mst_topology.c Fangzhi Zuo      2024-09-19  6037  	struct drm_dp_mst_port *fec_port = NULL;
cc707186414576 drivers/gpu/drm/display/drm_dp_mst_topology.c Fangzhi Zuo      2024-09-19  6038  	struct drm_dp_mst_port *dsc_port = NULL;
cc707186414576 drivers/gpu/drm/display/drm_dp_mst_topology.c Fangzhi Zuo      2024-09-19  6039  	struct drm_dp_aux *upstream_aux;
53965dbe5396d2 drivers/gpu/drm/drm_dp_mst_topology.c         Paul E. McKenney 2020-02-19  6040  	struct drm_dp_desc desc = {};
cc707186414576 drivers/gpu/drm/display/drm_dp_mst_topology.c Fangzhi Zuo      2024-09-19  6041  	bool end_has_dpcd = (port->dpcd_rev > 0);
cc707186414576 drivers/gpu/drm/display/drm_dp_mst_topology.c Fangzhi Zuo      2024-09-19  6042  	u8 endpoint_dsc = 0;
cc707186414576 drivers/gpu/drm/display/drm_dp_mst_topology.c Fangzhi Zuo      2024-09-19  6043  	u8 upstream_dsc;
cc707186414576 drivers/gpu/drm/display/drm_dp_mst_topology.c Fangzhi Zuo      2024-09-19  6044  	u8 fec_cap;
c2bc1b6eabe65d drivers/gpu/drm/drm_dp_mst_topology.c         David Francis    2019-08-26  6045  
c2bc1b6eabe65d drivers/gpu/drm/drm_dp_mst_topology.c         David Francis    2019-08-26 @6046  	if (!port)
                                                                                                            ^^^^^
But the old code assumed port could be NULL.

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

