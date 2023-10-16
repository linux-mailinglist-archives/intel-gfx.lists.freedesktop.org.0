Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A83F7C9EDC
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 07:36:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE76E10E113;
	Mon, 16 Oct 2023 05:35:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 731D210E113
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 05:35:57 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 5b1f17b1804b1-4054f790190so44695955e9.2
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Oct 2023 22:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1697434556; x=1698039356; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=kE63YcVyoiTF0pqB4vYi6Iwnwu4bq4BVz2G6qBjc2ik=;
 b=X8MdM3+uJVNpTwELpmVqLMz72TVjaQl4Dhd5QBFImgot9/nSUHLAJPfUJYV/jSNUT6
 w9FRs69LkcEbu5g7mlk36DGCuZpoYZYHLeLchOppBOkrG7IUPVIf9s8UCvh8Q3NeE9Ga
 veycPG94qIj3hPQhNp/PwYqGuKjqYtuvO9ee3QgOA8QG11GjrGRJu3xlghD/sFwpEAJO
 h+GIv+67Ersc3UIT1V6kps73VyIbsYW/um1Cfjq7pk1fxPL1aXuFLoM+WKDqeBeftcXR
 M1qmjQ6mHcDnkI71PAM2fkZJYcj+WeWk5ziTahzRLQRKbrUSekjh2mPdholEqY43opn1
 TpUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697434556; x=1698039356;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=kE63YcVyoiTF0pqB4vYi6Iwnwu4bq4BVz2G6qBjc2ik=;
 b=vS63sODVwtyzEBHUxKGb16AMV0Gb1NHJeeGKeO48RcoJdZr2lvzfzq3ODneoTRHcub
 jiGBitlR2EWnDK2FncKzMBLLHrP1K/cbAzobTQZ5XxY5Ges+ajzuQQI1McZcuDC/vs4M
 NCIDyKpVOYLOcpd+JlhSg+IZKohRnl1Wpsb5dP/DCmHUcMXt9g2nYVHHqRI2JUHfeD/9
 b2rHrAsdc+J6bqbbTYruo2/LpephlxGY8bpivj0ws0dNx9l9GTZkZ1mm8nQH64HkuF+X
 BmM5Ip2vi5UY5xlOnTY+pqx7PZsLeTZqhwBQQqTRqMu69MGRRRjdLjQbqv1FiOcScrAW
 mywQ==
X-Gm-Message-State: AOJu0Yz/4q0TcmDFlGa+7o4UfzqvbXUZkoUXc+8M9YMp/kVt60dfFJwf
 FiapQFyfqK06ahElHiTphpvaRg==
X-Google-Smtp-Source: AGHT+IG+gfj7ziURHjAtkeG9LVfEFA01Y8RlWsKUArIc/ZSAOpI+GWqoXcIKybUrK0Y6yCVrrOCWkw==
X-Received: by 2002:a05:6000:1e17:b0:32d:a98c:aa24 with SMTP id
 bj23-20020a0560001e1700b0032da98caa24mr3932028wrb.3.1697434555805; 
 Sun, 15 Oct 2023 22:35:55 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 bq1-20020a5d5a01000000b0031ad5fb5a0fsm633882wrb.58.2023.10.15.22.35.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Oct 2023 22:35:55 -0700 (PDT)
Date: Mon, 16 Oct 2023 08:35:52 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Melanie Lobo <melanie.lobo@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <04067fb6-64ab-41c5-b063-f3912e880f44@kadam.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231011102356.22014-1-melanie.lobo@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Support FP16 compressed formats
 on MTL
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
Cc: juha-pekka.heikkila@intel.com, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Melanie,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Melanie-Lobo/drm-i915-Support-FP16-compressed-formats-on-MTL/20231011-181214
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20231011102356.22014-1-melanie.lobo%40intel.com
patch subject: [Intel-gfx] [PATCH] drm/i915: Support FP16 compressed formats on MTL
config: x86_64-randconfig-161-20231015 (https://download.01.org/0day-ci/archive/20231015/202310150454.S9QF86bl-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce: (https://download.01.org/0day-ci/archive/20231015/202310150454.S9QF86bl-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202310150454.S9QF86bl-lkp@intel.com/

smatch warnings:
drivers/gpu/drm/i915/display/skl_universal_plane.c:2126 gen12_plane_format_mod_supported() warn: ignoring unreachable code.

vim +2126 drivers/gpu/drm/i915/display/skl_universal_plane.c

46d12f911821f7 Dave Airlie           2021-02-05  2120  	case DRM_FORMAT_Y210:
46d12f911821f7 Dave Airlie           2021-02-05  2121  	case DRM_FORMAT_Y212:
46d12f911821f7 Dave Airlie           2021-02-05  2122  	case DRM_FORMAT_Y216:
46d12f911821f7 Dave Airlie           2021-02-05  2123  	case DRM_FORMAT_XVYU12_16161616:
46d12f911821f7 Dave Airlie           2021-02-05  2124  	case DRM_FORMAT_XVYU16161616:
46d12f911821f7 Dave Airlie           2021-02-05  2125  		return true;
46d12f911821f7 Dave Airlie           2021-02-05 @2126  		fallthrough;

This fallthrough annotation is incorrect.

46d12f911821f7 Dave Airlie           2021-02-05  2127  	default:
46d12f911821f7 Dave Airlie           2021-02-05  2128  		return false;
46d12f911821f7 Dave Airlie           2021-02-05  2129  	}
46d12f911821f7 Dave Airlie           2021-02-05  2130  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

