Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7464B9555C8
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2024 08:34:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18A3310E046;
	Sat, 17 Aug 2024 06:34:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="qfwBvNc0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC7A510E046
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Aug 2024 06:34:48 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 5b1f17b1804b1-428101fa30aso19283555e9.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2024 23:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1723876487; x=1724481287; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=/4kJ+SDL4q2IZOSHPWYNi2T2AC3GCwL1SGtPY9SE9gY=;
 b=qfwBvNc0ONIgmTRX/D6UN4MXLQobo43Vkfw+AAR2lZagh81qGmLRv8gFni5+Mi15TZ
 dVFZ1+4/rdklgOp9aBqQRSYoojetnyN9MWwlBNO7O5DTePSf8bjNNnzlAKkiVXAAABMp
 nyo3THt9OYNGtvrF1vJt8UQkLisXNtJJ6TmvQbP2KTFPhOAshawAwyR0VRFdkujJivDv
 pBRFijnV+nzBegYlxBRKKwHzGeepLR9CaXpGeJcNw29c28jkCM56v32t5hHy5Cbx/MNi
 5AT1eCQN8tC/LUzOmVqf3d8YaqZwqnlRwQMZeWnVg/rS/tQC5QyPHDxMT34oM8BrIfvW
 /j8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723876487; x=1724481287;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/4kJ+SDL4q2IZOSHPWYNi2T2AC3GCwL1SGtPY9SE9gY=;
 b=kLLfb9DHy6IV7ACrYEQWHEA6saECq5q5wE/MTCS3xFG8dXNzLqDjQc/PqmAUgpLdLZ
 T2Iz6DlqhowSJ33EBZcRl2ieECMzwaGbLcdaUtNTqozTywsiU7whTMmpMFvY93C/iqph
 cF+yvxTstpdV/gwulnGkCBgVGQD+8ZbX5LUqxJL20vXi1+0VgeNzBsod1r42z5UROh7P
 1q+SqneW3zF01cK7Ec/blmkQpN6b7Ex2xDWp7iRBkAXlforKSTyW0c+m8PEwMnRknodU
 inIkO/7w0aP1sEUTLuERUNIFfLbxixIEQdMhOuArYXD3uAQLcridN0PXWPda4eZnHAcZ
 LcOw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX8OWmb1ZzidEoX/awoS3bpH6QitGTJttHdFlRLDbdnkNR79uRBEhFQi2lwiQEXC6JdRSETJrDvJ1VWqziZGHVc5yQNaAvydu5PAEWfFj5v
X-Gm-Message-State: AOJu0Yz7DS3galqLHVj+E7ZNPmPAwuZHDt3WJZl/oKXcgBy7RvqKzmG3
 6i8iDVxJTLSGpbQtg4AHDdwvBPta8MrEfVFQ8mP2IA7mVfdGgUIATN3iZhlIjno=
X-Google-Smtp-Source: AGHT+IG6a1iyvKAKQRdZur0+EH3efshftmEDmK2z3J2W/cLM81IDeRZ6iqYcy4OjrShZjHeeZbn4EQ==
X-Received: by 2002:a05:600c:1f83:b0:428:fb7f:c831 with SMTP id
 5b1f17b1804b1-429ed7e23eamr34604555e9.32.1723876486574; 
 Fri, 16 Aug 2024 23:34:46 -0700 (PDT)
Received: from localhost ([196.207.164.177]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-429d877e066sm137607075e9.1.2024.08.16.23.34.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2024 23:34:45 -0700 (PDT)
Date: Sat, 17 Aug 2024 09:34:37 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Nitin Gote <nitin.r.gote@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
 venkata.ramana.nayana@intel.com, john.c.harrison@intel.com,
 chris.p.wilson@intel.com, tejas.upadhyay@intel.com,
 andi.shyti@intel.com, nitin.r.gote@intel.com
Subject: Re: [PATCH v10] drm/i915: WA context support for L3flush
Message-ID: <9c2fdce8-2f27-4307-ad68-036d7e32854e@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240813061657.925443-1-nitin.r.gote@intel.com>
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

Hi Nitin,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Nitin-Gote/drm-i915-WA-context-support-for-L3flush/20240814-231915
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240813061657.925443-1-nitin.r.gote%40intel.com
patch subject: [PATCH v10] drm/i915: WA context support for L3flush
config: i386-randconfig-141-20240816 (https://download.01.org/0day-ci/archive/20240817/202408170547.2jcHHUAr-lkp@intel.com/config)
compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202408170547.2jcHHUAr-lkp@intel.com/

New smatch warnings:
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4415 guc_kernel_context_pin() error: uninitialized symbol 'ret'.

vim +/ret +4415 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c

cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2023-02-17  4387  static inline int guc_kernel_context_pin(struct intel_guc *guc,
3a4cdf1982f05d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c Matthew Brost         2021-07-21  4388  					 struct intel_context *ce)
3a4cdf1982f05d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c Matthew Brost         2021-07-21  4389  {
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2023-02-17  4390  	int ret;
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2023-02-17  4391  
58ea7d620c5ebc drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2022-03-01  4392  	/*
58ea7d620c5ebc drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2022-03-01  4393  	 * Note: we purposefully do not check the returns below because
58ea7d620c5ebc drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2022-03-01  4394  	 * the registration can only fail if a reset is just starting.

Is this comment out of date?  Which returns aren't checked?

58ea7d620c5ebc drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2022-03-01  4395  	 * This is called at the end of reset so presumably another reset
58ea7d620c5ebc drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2022-03-01  4396  	 * isn't happening and even it did this code would be run again.
58ea7d620c5ebc drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2022-03-01  4397  	 */
58ea7d620c5ebc drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2022-03-01  4398  
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2023-02-17  4399  	if (context_guc_id_invalid(ce)) {
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2023-02-17  4400  		ret = pin_guc_id(guc, ce);
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2023-02-17  4401  
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2023-02-17  4402  		if (ret < 0)
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2023-02-17  4403  			return ret;
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2023-02-17  4404  	}
58ea7d620c5ebc drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2022-03-01  4405  
de51de9672a17e drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2022-11-02  4406  	if (!test_bit(CONTEXT_GUC_INIT, &ce->flags))
de51de9672a17e drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2022-11-02  4407  		guc_context_init(ce);
de51de9672a17e drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2022-11-02  4408  
078a89e7d6f60a drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c Venkata Ramana Nayana 2024-08-13  4409  	if (!intel_context_is_hidden(ce)) {
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2023-02-17  4410  		ret = try_context_registration(ce, true);
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2023-02-17  4411  		if (ret)
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2023-02-17  4412  			unpin_guc_id(guc, ce);
078a89e7d6f60a drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c Venkata Ramana Nayana 2024-08-13  4413  	}

ret is uninitialized of context_guc_id_invalid() is false and
intel_context_is_hidden() is true.

cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2023-02-17  4414  
cd414f4f59f64d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c John Harrison         2023-02-17 @4415  	return ret;
3a4cdf1982f05d drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c Matthew Brost         2021-07-21  4416  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

