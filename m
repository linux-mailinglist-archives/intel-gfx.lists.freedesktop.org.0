Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B882A859C85
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Feb 2024 08:03:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0D1F10E171;
	Mon, 19 Feb 2024 07:03:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="ZretHBXD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
 [209.85.218.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EB1010E171
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Feb 2024 07:03:47 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id
 a640c23a62f3a-a3c1a6c10bbso494162866b.3
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Feb 2024 23:03:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1708326226; x=1708931026; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:message-id:subject:cc:to:from:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=hyAX9FR/e1lxZ9EWXTkkj3yByqhkafcG5pIWW80rioo=;
 b=ZretHBXD4uiyqL+9NraCNHiImnsGQHTKbFk7Y1tHbx7aGEJ/Bixip2FkOdHN3P/xmT
 4ALQNYLX6Avwz128hPl+2uZU1ysV7JXPcm3Ey72zkT288duuetFTiGf2/xOTfcXl+Itc
 uHIHRPMOHG8LNn78k4BSl3RjT9OgW19D92b5W6YjX4Dr26DpU2ZqYbsVTBr77M5kUE+2
 hPC68kvLfEDY3RKnjUjAxPtUPCY/2IUBZWZ0KZASVtaeOvKBVTy97kqCT1bR/r8kkQ2Q
 0Vklq3W37lYBQquhqGyU8v0YqXcVqWHWNDQcABMEUNbhAZJrIpVvOsPhFuvJg50PNJcT
 1nTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708326226; x=1708931026;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=hyAX9FR/e1lxZ9EWXTkkj3yByqhkafcG5pIWW80rioo=;
 b=RT7k82hn0IJVzGABZYnyULH72y4D5jSlp39YAcuC/1oWDwmrP+Mi/TYmis3YxKjUMF
 uGqsIE+fkJz+OkLkSwgmmXLL+jKast3Ofs5SbK54VZvsEmnTLFCzSTYNRTs4qBmPXNMW
 BTUm5NFiLpTPPAHvzD9D0x5xJMFzeWSmCUmv9FWaqCA4O24Nqn7CIxYTjR7iERbRMIAe
 duj0l4pjenxArLaDCo6j4kKg5opBXmhbsC+m6sO01TcSQesHLs8tAJlA+NNeWKRV1leI
 ZiDFOoPQE0iA5vcZCmjhnFxxRF57HKgT37pfYKtSSrGbx2FCM1YBA7zmUbdUfDk+vonR
 D3kQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXDBjRbqtdoBOqkqrJM3H3QxetTT/RXjUQg6E87rwbmdCzKGhHyRZv9nsbfAR1G3mf981Dvr4xPlfXEQg4n1z9uOoQQ/eHxh0+K5PrHmFYF
X-Gm-Message-State: AOJu0YzH36agU5p/lAKq6Fr9reH+v3bp3RdHIKjZPBqLl5zp2tJaLY22
 YEav5+dSnB2ZVR47cegTZCoT9IIVSeeuzFDg9KbE9iAryknGHUw6D2xrCWs15gY=
X-Google-Smtp-Source: AGHT+IEsxAWeQ+mhBjaepfrAEM0XIvEaEP4hFbQZduopYeBkNXbXxVTrkXou0hqc7E5vnqL62xFQIQ==
X-Received: by 2002:a17:906:c9c6:b0:a3e:272e:7b98 with SMTP id
 hk6-20020a170906c9c600b00a3e272e7b98mr3058874ejb.40.1708326225687; 
 Sun, 18 Feb 2024 23:03:45 -0800 (PST)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 rs6-20020a170907890600b00a3e48deecd4sm1744095ejc.222.2024.02.18.23.03.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Feb 2024 23:03:45 -0800 (PST)
Date: Mon, 19 Feb 2024 10:03:41 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 4/6] drm/i915/psr: Silence period and lfps half cycle
Message-ID: <022eff5e-47ca-41d6-a3f5-24ebd5d92f5b@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240215104934.2395239-5-jouni.hogander@intel.com>
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

Hi Jouni,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jouni-H-gander/drm-display-Add-missing-aux-less-alpm-wake-related-bits/20240215-185209
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240215104934.2395239-5-jouni.hogander%40intel.com
patch subject: [PATCH 4/6] drm/i915/psr: Silence period and lfps half cycle
config: i386-randconfig-141-20240217 (https://download.01.org/0day-ci/archive/20240217/202402171830.n4hwR2iD-lkp@intel.com/config)
compiler: clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202402171830.n4hwR2iD-lkp@intel.com/

smatch warnings:
drivers/gpu/drm/i915/display/intel_psr.c:1253 _lnl_compute_aux_less_alpm_params() error: uninitialized symbol 'silence_period'.

vim +/silence_period +1253 drivers/gpu/drm/i915/display/intel_psr.c

e4870a4a3cd051 Jouni Högander 2024-02-15  1235  static int _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
e4870a4a3cd051 Jouni Högander 2024-02-15  1236  					     struct intel_crtc_state *crtc_state)
e4870a4a3cd051 Jouni Högander 2024-02-15  1237  {
e4870a4a3cd051 Jouni Högander 2024-02-15  1238  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
410818227325ec Jouni Högander 2024-02-15  1239  	int aux_less_wake_time, aux_less_wake_lines, switch_to_active_lines,
410818227325ec Jouni Högander 2024-02-15  1240  		silence_period, lfps_half_cycle;
e4870a4a3cd051 Jouni Högander 2024-02-15  1241  
e4870a4a3cd051 Jouni Högander 2024-02-15  1242  	aux_less_wake_time =
e4870a4a3cd051 Jouni Högander 2024-02-15  1243  		_lnl_compute_aux_less_wake_time(crtc_state->port_clock / 1000);
e4870a4a3cd051 Jouni Högander 2024-02-15  1244  	aux_less_wake_lines = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
e4870a4a3cd051 Jouni Högander 2024-02-15  1245  						       aux_less_wake_time);
e4870a4a3cd051 Jouni Högander 2024-02-15  1246  
e31171d1611687 Jouni Högander 2024-02-15  1247  	switch_to_active_lines =
e31171d1611687 Jouni Högander 2024-02-15  1248  		intel_usecs_to_scanlines(
e31171d1611687 Jouni Högander 2024-02-15  1249  			&crtc_state->hw.adjusted_mode,
e31171d1611687 Jouni Högander 2024-02-15  1250  			_lnl_compute_switch_to_active_time(crtc_state->port_clock / 1000));
e31171d1611687 Jouni Högander 2024-02-15  1251  
410818227325ec Jouni Högander 2024-02-15  1252  	if (aux_less_wake_lines > 32 || switch_to_active_lines > 32 ||
410818227325ec Jouni Högander 2024-02-15 @1253  	    silence_period > 256 || silence_period < 0 ||
                                                            ^^^^^^^^^^^^^^          ^^^^^^^^^^^^^^
Uninitialized

410818227325ec Jouni Högander 2024-02-15  1254  	    !_lnl_get_silence_period_and_lfps_half_cycle(intel_dp->link_rate,
410818227325ec Jouni Högander 2024-02-15  1255  							 &silence_period,
410818227325ec Jouni Högander 2024-02-15  1256  							 &lfps_half_cycle))
e4870a4a3cd051 Jouni Högander 2024-02-15  1257  		return false;
e4870a4a3cd051 Jouni Högander 2024-02-15  1258  
e31171d1611687 Jouni Högander 2024-02-15  1259  	if (i915->display.params.psr_safest_params) {
e4870a4a3cd051 Jouni Högander 2024-02-15  1260  		aux_less_wake_lines = 32;
e31171d1611687 Jouni Högander 2024-02-15  1261  		switch_to_active_lines = 32;
e31171d1611687 Jouni Högander 2024-02-15  1262  	}
e4870a4a3cd051 Jouni Högander 2024-02-15  1263  
e4870a4a3cd051 Jouni Högander 2024-02-15  1264  	intel_dp->psr.alpm_parameters.aux_less_wake_lines = aux_less_wake_lines;
e31171d1611687 Jouni Högander 2024-02-15  1265  	intel_dp->psr.alpm_parameters.switch_to_active_lines = switch_to_active_lines;
410818227325ec Jouni Högander 2024-02-15  1266  	intel_dp->psr.alpm_parameters.silence_period_sym_clocks = silence_period;
410818227325ec Jouni Högander 2024-02-15  1267  	intel_dp->psr.alpm_parameters.lfps_half_cycle_num_of_syms = lfps_half_cycle;
e4870a4a3cd051 Jouni Högander 2024-02-15  1268  
e4870a4a3cd051 Jouni Högander 2024-02-15  1269  	return true;
e4870a4a3cd051 Jouni Högander 2024-02-15  1270  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

