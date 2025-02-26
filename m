Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1156EA457C9
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 09:12:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C304210E879;
	Wed, 26 Feb 2025 08:12:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="jSMW2q6E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1915710E879
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2025 08:11:57 +0000 (UTC)
Received: by mail-ej1-f51.google.com with SMTP id
 a640c23a62f3a-abb7520028bso874755966b.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2025 00:11:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1740557515; x=1741162315; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Pok0mIvLeITMrChGwDUbCNIfuZyPgW77IlN7F5j/3WM=;
 b=jSMW2q6Ej0nttj+0rTCVkbWgIg75pN5BnaB73Qh80axGvHlKJxCHXzeFSf5OdKfAM6
 ykptEwKhuNQL/DIbA8VWVSvAoxBBEBuQmcis9i4zc2dieIj5YpIqhtzqa7lgeh7nPwJa
 8oO2ejULfltRfFzvPlOk/CJVAvt9H7IOVxO42U/C8gSrQ5EcQLTwtPgQSZpt/nvfVeQn
 S1L6rUc0AuKKP32ht0oxOr70jxQcwCN1Wj4zeH+8iGnPwRqSefLJhndw+ioY4QI7GTzr
 C8849gkna12YQnNDRJtIWHCVZOFl3YmtReNgUN6kkUgMcXCUjSb3ZHY/85wGXdBoLvuo
 drcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740557515; x=1741162315;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Pok0mIvLeITMrChGwDUbCNIfuZyPgW77IlN7F5j/3WM=;
 b=pFgcUDeY8/A9GqY2Z/bDHU5bToOKy9M6pGEVxFUdfd/P9olem2Rh3u4k13AkjDmLq/
 dtkgneAg0qy1isaUN1YgeA9gLUGjBj4NIQARVlNOVlSu5X39xgvmT8WtsBUAwTiCeajx
 Qb+ZCD4lfEbUGdv3rGnZZguSK4734EM6UEmBCk5lAJlPokmviyILnqvmMl6F7R89O+jT
 xzaN0qfJGBQCBoypov2NagmCjC+6pp5QqpFsvCG7QX+g1cvdw/PtxJcwnZjPzGCLvI1X
 +YiP2gaPamI2LABcU0Hmxg1XqvWip7IlXKaqNF0c3PqkCarbyJu4Y2rKXsTy6BGHVsPE
 pwpQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV83x0b2ZawYOzaezACEI4pkDGbrYl6Ceizrcs5oID6fbjGQZzs+2KIdRu3i+7F2dKLBxM4eC+akOQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwSJeZFal3pkmUGJDZaGC//8GLIGz9YaOvJKf5S9mq7sagJDhum
 ewWQroFQ0SfYSiAu428uYyLIz0clMR80O9F6vDCHFe8RomiKwyv5UHQ15sJ8i+Q=
X-Gm-Gg: ASbGnctD1l2/v7ZG+t5sL4lB2Tg40ErflTQCfQeDu8Wl9UdPxtQRSfca8q5/1ffyan8
 q9DqC+YmOFh3VX2Av3+RERfHOxUIC4iN4vn8qLRCj7ct26SxpSPmSq06lEUGTv56pGMMNSTVBvf
 NSueYzApxI/304bTDleeHqdGJiDWixuy+ku/HAjlXOmkWar7Z3Ri55MlYOHQg+0ePNS+5ZwRpMy
 zgDiJrL4Iwk4DuPXVUVzMaUMczySOo+D6IEDpKbCC1mllCdJZuwyUUAtgSCBetg+NIN3xBduise
 LbnRgpyjd2qlz2rM1pGQjslBlE71Jc0=
X-Google-Smtp-Source: AGHT+IGFjBlz6ALqfYLoGE9PxwjThSMXDCGpI9ssfGq+g0dABRHwtq/nG1O3LTVG+zq6GwCLFDOijA==
X-Received: by 2002:a17:907:7f0c:b0:abc:269d:d534 with SMTP id
 a640c23a62f3a-abeeef34ed6mr250207266b.40.1740557515475; 
 Wed, 26 Feb 2025 00:11:55 -0800 (PST)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 a640c23a62f3a-abed1da1c2dsm284791366b.77.2025.02.26.00.11.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2025 00:11:54 -0800 (PST)
Date: Wed, 26 Feb 2025 11:11:51 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev, jouni.hogander@intel.com,
 jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: Re: [PATCH v4 7/8] drm/i915/lobf: Add mutex for alpm update
Message-ID: <51d3816e-2201-4d02-a6a7-def3a4398e77@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250224080847.326350-8-animesh.manna@intel.com>
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

Hi Animesh,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Animesh-Manna/drm-i915-lobf-Add-lobf-enablement-in-post-plane-update/20250224-221647
base:   v6.14-rc4
patch link:    https://lore.kernel.org/r/20250224080847.326350-8-animesh.manna%40intel.com
patch subject: [PATCH v4 7/8] drm/i915/lobf: Add mutex for alpm update
config: i386-randconfig-141-20250225 (https://download.01.org/0day-ci/archive/20250226/202502261244.aUuaLdTn-lkp@intel.com/config)
compiler: clang version 19.1.7 (https://github.com/llvm/llvm-project cd708029e0b2869e80abe31ddb175f7c35361f90)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202502261244.aUuaLdTn-lkp@intel.com/

smatch warnings:
drivers/gpu/drm/i915/display/intel_alpm.c:548 intel_alpm_disable() warn: inconsistent returns '&intel_dp->alpm_parameters.lock'.

vim +548 drivers/gpu/drm/i915/display/intel_alpm.c

026d6557dc2749d Animesh Manna 2025-02-24  527  void intel_alpm_disable(struct intel_dp *intel_dp)
026d6557dc2749d Animesh Manna 2025-02-24  528  {
026d6557dc2749d Animesh Manna 2025-02-24  529  	struct intel_display *display = to_intel_display(intel_dp);
026d6557dc2749d Animesh Manna 2025-02-24  530  	enum transcoder cpu_transcoder = intel_dp->alpm_parameters.transcoder;
026d6557dc2749d Animesh Manna 2025-02-24  531  
026d6557dc2749d Animesh Manna 2025-02-24  532  	if (DISPLAY_VER(display) < 20)
026d6557dc2749d Animesh Manna 2025-02-24  533  		return;
026d6557dc2749d Animesh Manna 2025-02-24  534  
737b2873a48f3ab Animesh Manna 2025-02-24  535  	mutex_lock(&intel_dp->alpm_parameters.lock);
737b2873a48f3ab Animesh Manna 2025-02-24  536  
026d6557dc2749d Animesh Manna 2025-02-24  537  	if (!(intel_de_read(display, ALPM_CTL(display, cpu_transcoder)) & ALPM_CTL_ALPM_ENABLE))
026d6557dc2749d Animesh Manna 2025-02-24  538  		return;

mutex_unlock(&intel_dp->alpm_parameters.lock) before the return

026d6557dc2749d Animesh Manna 2025-02-24  539  
026d6557dc2749d Animesh Manna 2025-02-24  540  	intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
026d6557dc2749d Animesh Manna 2025-02-24  541  		     ALPM_CTL_ALPM_ENABLE | ALPM_CTL_LOBF_ENABLE |
026d6557dc2749d Animesh Manna 2025-02-24  542  		     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
026d6557dc2749d Animesh Manna 2025-02-24  543  
026d6557dc2749d Animesh Manna 2025-02-24  544  	intel_de_rmw(display,
026d6557dc2749d Animesh Manna 2025-02-24  545  		     PORT_ALPM_CTL(cpu_transcoder),
026d6557dc2749d Animesh Manna 2025-02-24  546  		     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
737b2873a48f3ab Animesh Manna 2025-02-24  547  
737b2873a48f3ab Animesh Manna 2025-02-24 @548  	mutex_unlock(&intel_dp->alpm_parameters.lock);
026d6557dc2749d Animesh Manna 2025-02-24  549  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

