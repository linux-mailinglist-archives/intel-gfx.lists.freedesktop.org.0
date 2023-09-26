Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 400C97AE486
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 06:25:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED12010E34B;
	Tue, 26 Sep 2023 04:25:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F4DC10E34B
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 04:25:32 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id
 ffacd0b85a97d-307d20548adso6814058f8f.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Sep 2023 21:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1695702330; x=1696307130; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=j+0qQ6jad/1UUmFrxcZDKyzHXgBUVLi3c5SlxmdrrDE=;
 b=X6ydisU5mP9oHbiDb3ec0W8Hi22bYfsdGyVRlhpRn75Ll4UUL0AVizQIh+CrbQAesh
 Y4f/5rlLw01+xpBTBPfSVQ/oCxzhyGRNy5dxAx1u1DLGtPPHc6wW+IkUXQkpv/236Ie4
 kNWJN2znhWticIEl+6Gy/+9pPQULSYXXWDe1ObxbsLsBYEA9TMhtoQUUIu/4LpB/uhp3
 RkidVWy5adQ+L0mxSP2sYXDBjNpX4AHekFXPjYIRzfrWgK00f77uYUoTtj777ZaSEHOr
 /fmvfvZGNBJAeyYbqPOTAd2IT0d8vFCLWHgVQ9re35rTW64IX0sj/xd/O44mJuan4VkL
 H2WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695702330; x=1696307130;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=j+0qQ6jad/1UUmFrxcZDKyzHXgBUVLi3c5SlxmdrrDE=;
 b=Vtr9oqfY1FuhcTQV7YguEYhj/dcYBRpcWK7DO49HcEmubbMfV5+KMPG6qMOpkaNXDg
 nO9cYBK5gVgfOEyjDOs/44tHegchdjUMBMWHwL0wxgccehopPOcpH2E0kSmLFbep2N2o
 mmvMeCBezVWVD53pOfMdEct8y7D/thsUYq+/g83nG3gvpTDBE4HGKhUCCItDSFb7HIoV
 SGO/cWaI2yy52QgtUm9L76OpzYvus6z1yAEvUnemxNrnLmGgrmEaTvNUfs6bsC0UZWUj
 8+7wLij20MEqJvryDRdyFgUWJzV6iZ2ns0ujm4wUlwoxrrrXxNjtDKsLjKevL+ZozoTK
 OI0Q==
X-Gm-Message-State: AOJu0YyDKBB0fWbpt8tVsw5pot0WvZowzFh/MUSpbRhFKVgOc2zSScgH
 276JWTVmqkXv5Vyn/mkxdDdRfQ==
X-Google-Smtp-Source: AGHT+IH/QtLxKxbZ8bZRPN3cfAECg506klAaOcojj20MD91f4ZTUB/4otVeNTZhMyOb8LIpqrn90Sg==
X-Received: by 2002:a05:6000:16c7:b0:323:1a0c:a5e0 with SMTP id
 h7-20020a05600016c700b003231a0ca5e0mr7631476wrf.13.1695702330503; 
 Mon, 25 Sep 2023 21:25:30 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 o9-20020a5d6849000000b003179d7ed4f3sm13432028wrw.12.2023.09.25.21.25.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Sep 2023 21:25:30 -0700 (PDT)
Date: Tue, 26 Sep 2023 07:25:27 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <f99ba5d2-e4dd-48ef-b3b5-1d53bcd26bb5@kadam.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921183729.3763860-2-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH v13 1/2] drm/i915: Add WABB blit for
 Wa_16018031267 / Wa_16018063123
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
Cc: andi.shyti@intel.com, matthew.d.roper@intel.com, tomasz.mistat@intel.com,
 rodrigo.vivi@intel.com, jonathan.cavitt@intel.com,
 oe-kbuild-all@lists.linux.dev, gregory.f.germano@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Jonathan-Cavitt/drm-i915-Add-WABB-blit-for-Wa_16018031267-Wa_16018063123/20230922-024907
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230921183729.3763860-2-jonathan.cavitt%40intel.com
patch subject: [Intel-gfx] [PATCH v13 1/2] drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
config: i386-randconfig-141-20230925 (https://download.01.org/0day-ci/archive/20230925/202309252243.l3lV6IxF-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce: (https://download.01.org/0day-ci/archive/20230925/202309252243.l3lV6IxF-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202309252243.l3lV6IxF-lkp@intel.com/

New smatch warnings:
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4181 guc_kernel_context_pin() error: uninitialized symbol 'ret'.

vim +/ret +4181 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c

cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2023-02-17  4153  static inline int guc_kernel_context_pin(struct intel_guc *guc,
3a4cdf1982f05d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c Matthew Brost   2021-07-21  4154  					 struct intel_context *ce)
3a4cdf1982f05d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c Matthew Brost   2021-07-21  4155  {
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2023-02-17  4156  	int ret;

Please set "ret = 0;" here to avoid an uninitialized variable.

cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2023-02-17  4157  
58ea7d620c5ebc drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2022-03-01  4158  	/*
58ea7d620c5ebc drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2022-03-01  4159  	 * Note: we purposefully do not check the returns below because
58ea7d620c5ebc drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2022-03-01  4160  	 * the registration can only fail if a reset is just starting.
58ea7d620c5ebc drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2022-03-01  4161  	 * This is called at the end of reset so presumably another reset
58ea7d620c5ebc drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2022-03-01  4162  	 * isn't happening and even it did this code would be run again.
58ea7d620c5ebc drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2022-03-01  4163  	 */
58ea7d620c5ebc drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2022-03-01  4164  
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2023-02-17  4165  	if (context_guc_id_invalid(ce)) {
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2023-02-17  4166  		ret = pin_guc_id(guc, ce);
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2023-02-17  4167  
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2023-02-17  4168  		if (ret < 0)
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2023-02-17  4169  			return ret;
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2023-02-17  4170  	}
58ea7d620c5ebc drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2022-03-01  4171  
de51de9672a17e drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2022-11-02  4172  	if (!test_bit(CONTEXT_GUC_INIT, &ce->flags))
de51de9672a17e drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2022-11-02  4173  		guc_context_init(ce);
de51de9672a17e drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2022-11-02  4174  
72d46c25c5d83e drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c Jonathan Cavitt 2023-09-21  4175  	if (!intel_context_is_hidden(ce)) {
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2023-02-17  4176  		ret = try_context_registration(ce, true);
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2023-02-17  4177  		if (ret)
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2023-02-17  4178  			unpin_guc_id(guc, ce);
72d46c25c5d83e drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c Jonathan Cavitt 2023-09-21  4179  	}
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2023-02-17  4180  
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison   2023-02-17 @4181  	return ret;
3a4cdf1982f05d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c Matthew Brost   2021-07-21  4182  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

