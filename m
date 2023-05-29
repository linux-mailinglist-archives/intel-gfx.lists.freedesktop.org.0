Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2580D714702
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 11:24:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D454010E260;
	Mon, 29 May 2023 09:23:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1642310E260
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 09:23:56 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id
 ffacd0b85a97d-30a892c45c4so1760943f8f.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 02:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1685352234; x=1687944234;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=NLmlALnUbgkHhYs0dU0B8ygb/CN6AfjP9uJKhCTmqDg=;
 b=ORW7/SkxzVLZBUnKSyKhzhSf55RsFRHhGrXkOPV7xuHpH5W2PaeY3BVZvsJ9EQhWvm
 VkYFWzlYc4IMPk8LZ9im3gWyxu2kQui9RHfY37axMqUoPinJULLEe7FxC/OzHTCmHTd/
 EcJwW054/Zt6J51W+13CGeZBv/0yu4h4iL7500LG1SlSP3FfJUyPWtzJ3TAjiVgWoCZ5
 MmgE7op+jZeRn7SI++39Ca2onk0Pl9EEtsy72/V28T2BP2XbibGgP1fmTw/JFghf37oX
 oxFzGPM9S+Zsgv0VmjMaHrmcWzJKxvHvooEMewT/9PumCKV0KkmeI9uNBVO2ChS8fRNp
 axmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685352234; x=1687944234;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NLmlALnUbgkHhYs0dU0B8ygb/CN6AfjP9uJKhCTmqDg=;
 b=FXiUd7BeiYpurbjtt1XLeOyhgyHzZULczK7SIQW7EjyYcCSzEYc8DF8QtJoj9bbzDL
 u4CjMJjLdmgyXxRp8Q+nVB0eKE++EHhOQq/pJuS1/GXbG8rvSXVBu97UhPmeaQlo+9zO
 ApFuWrCFlbFLsKPNNXNErxxlVdV40OWXjoGG62ubEECXdcoQ0PsrR2UH4BQKwtiuNuwR
 +TYbPwCHRfeMAstP8a+yZq0iUPidy4ikwxFjfmVMb2yAPjVefmYnw7MCNWSCoYzHhq9R
 j870B/ofYYCLkwyLqD5LGpm1fUnC5InzDRaexTBUXxDo+99Hqou4UQyd6iEUHJfazh3B
 yG2Q==
X-Gm-Message-State: AC+VfDzJXAR++4zRU8drW3CxL2QXgxCPEr51DeIFxMCy8jhmyyNjRLpu
 fxKVv3zaokgHLrsdnrQw719usg==
X-Google-Smtp-Source: ACHHUZ6LfT0cbPv77k6LopPIIpKkbXDST6H/0tSm6tr0vN4C6xcxx/iZEeNn/T2KwJBWZ8RBz9TbgQ==
X-Received: by 2002:adf:f6c3:0:b0:309:303b:3dc5 with SMTP id
 y3-20020adff6c3000000b00309303b3dc5mr8769285wrp.7.1685352233980; 
 Mon, 29 May 2023 02:23:53 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 b5-20020a5d45c5000000b002fda1b12a0bsm13212360wrs.2.2023.05.29.02.23.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 May 2023 02:23:52 -0700 (PDT)
Date: Mon, 29 May 2023 12:23:49 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
 Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <423616a6-2f7b-4be4-b608-de16ccf3a620@kili.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230526125055.39886-7-vinod.govindapillai@intel.com>
Subject: Re: [Intel-gfx] [PATCH v8 6/7] drm/i915/mtl: find the best QGV
 point for the SAGV configuration
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
Cc: ville.syrjala@intel.com, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Vinod,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Vinod-Govindapillai/drm-i915-fix-the-derating-percentage-for-MTL/20230526-205305
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230526125055.39886-7-vinod.govindapillai%40intel.com
patch subject: [Intel-gfx] [PATCH v8 6/7] drm/i915/mtl: find the best QGV point for the SAGV configuration
config: i386-randconfig-m021-20230526 (https://download.01.org/0day-ci/archive/20230528/202305280253.Ab8bRV2w-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <error27@gmail.com>
| Closes: https://lore.kernel.org/r/202305280253.Ab8bRV2w-lkp@intel.com/

New smatch warnings:
drivers/gpu/drm/i915/display/intel_bw.c:845 mtl_find_qgv_points() error: buffer overflow 'i915->display.bw.max' 6 <= 6

Old smatch warnings:
drivers/gpu/drm/i915/display/intel_bw.c:852 mtl_find_qgv_points() error: buffer overflow 'i915->display.bw.max' 6 <= 6

vim +845 drivers/gpu/drm/i915/display/intel_bw.c

a10fe26325bd3a Vinod Govindapillai 2023-05-26  806  static int mtl_find_qgv_points(struct drm_i915_private *i915,
a10fe26325bd3a Vinod Govindapillai 2023-05-26  807  			       unsigned int data_rate,
a10fe26325bd3a Vinod Govindapillai 2023-05-26  808  			       unsigned int num_active_planes,
a10fe26325bd3a Vinod Govindapillai 2023-05-26  809  			       const struct intel_bw_state *old_bw_state,
a10fe26325bd3a Vinod Govindapillai 2023-05-26  810  			       struct intel_bw_state *new_bw_state)
a10fe26325bd3a Vinod Govindapillai 2023-05-26  811  {
a10fe26325bd3a Vinod Govindapillai 2023-05-26  812  	unsigned int best_rate = UINT_MAX;
a10fe26325bd3a Vinod Govindapillai 2023-05-26  813  	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
a10fe26325bd3a Vinod Govindapillai 2023-05-26  814  	unsigned int qgv_peak_bw  = 0;
a10fe26325bd3a Vinod Govindapillai 2023-05-26  815  	int i;
a10fe26325bd3a Vinod Govindapillai 2023-05-26  816  	int ret;
a10fe26325bd3a Vinod Govindapillai 2023-05-26  817  
a10fe26325bd3a Vinod Govindapillai 2023-05-26  818  	ret = intel_atomic_lock_global_state(&new_bw_state->base);
a10fe26325bd3a Vinod Govindapillai 2023-05-26  819  	if (ret)
a10fe26325bd3a Vinod Govindapillai 2023-05-26  820  		return ret;
a10fe26325bd3a Vinod Govindapillai 2023-05-26  821  
a10fe26325bd3a Vinod Govindapillai 2023-05-26  822  	/*
a10fe26325bd3a Vinod Govindapillai 2023-05-26  823  	 * If SAGV cannot be enabled, disable the pcode SAGV by passing all 1's
a10fe26325bd3a Vinod Govindapillai 2023-05-26  824  	 * for qgv peak bw in PM Demand request. So assign UINT_MAX if SAGV is
a10fe26325bd3a Vinod Govindapillai 2023-05-26  825  	 * not enabled. PM Demand code will clamp the value for the register
a10fe26325bd3a Vinod Govindapillai 2023-05-26  826  	 */
a10fe26325bd3a Vinod Govindapillai 2023-05-26  827  	if (!intel_can_enable_sagv(i915, new_bw_state)) {
a10fe26325bd3a Vinod Govindapillai 2023-05-26  828  		new_bw_state->qgv_point_peakbw = UINT_MAX;
a10fe26325bd3a Vinod Govindapillai 2023-05-26  829  		drm_dbg_kms(&i915->drm, "No SAGV, use UINT_MAX as peak bw.");
a10fe26325bd3a Vinod Govindapillai 2023-05-26  830  		goto out;
a10fe26325bd3a Vinod Govindapillai 2023-05-26  831  	}
a10fe26325bd3a Vinod Govindapillai 2023-05-26  832  
a10fe26325bd3a Vinod Govindapillai 2023-05-26  833  	/*
a10fe26325bd3a Vinod Govindapillai 2023-05-26  834  	 * Find the best QGV point by comparing the data_rate with max data rate
a10fe26325bd3a Vinod Govindapillai 2023-05-26  835  	 * offered per plane group
a10fe26325bd3a Vinod Govindapillai 2023-05-26  836  	 */
a10fe26325bd3a Vinod Govindapillai 2023-05-26  837  	for (i = 0; i < num_qgv_points; i++) {
a10fe26325bd3a Vinod Govindapillai 2023-05-26  838  		unsigned int bw_index =
a10fe26325bd3a Vinod Govindapillai 2023-05-26  839  			tgl_max_bw_index(i915, num_active_planes, i);
a10fe26325bd3a Vinod Govindapillai 2023-05-26  840  		unsigned int max_data_rate;
a10fe26325bd3a Vinod Govindapillai 2023-05-26  841  
a10fe26325bd3a Vinod Govindapillai 2023-05-26  842  		if (bw_index > ARRAY_SIZE(i915->display.bw.max))

Should be >= ARRAY_SIZE()

a10fe26325bd3a Vinod Govindapillai 2023-05-26  843  			continue;
a10fe26325bd3a Vinod Govindapillai 2023-05-26  844  
a10fe26325bd3a Vinod Govindapillai 2023-05-26 @845  		max_data_rate = i915->display.bw.max[bw_index].deratedbw[i];
a10fe26325bd3a Vinod Govindapillai 2023-05-26  846  
a10fe26325bd3a Vinod Govindapillai 2023-05-26  847  		if (max_data_rate < data_rate)
a10fe26325bd3a Vinod Govindapillai 2023-05-26  848  			continue;
a10fe26325bd3a Vinod Govindapillai 2023-05-26  849  
a10fe26325bd3a Vinod Govindapillai 2023-05-26  850  		if (max_data_rate - data_rate < best_rate) {
a10fe26325bd3a Vinod Govindapillai 2023-05-26  851  			best_rate = max_data_rate - data_rate;
a10fe26325bd3a Vinod Govindapillai 2023-05-26  852  			qgv_peak_bw = i915->display.bw.max[bw_index].peakbw[i];
a10fe26325bd3a Vinod Govindapillai 2023-05-26  853  		}
a10fe26325bd3a Vinod Govindapillai 2023-05-26  854  
a10fe26325bd3a Vinod Govindapillai 2023-05-26  855  		drm_dbg_kms(&i915->drm, "QGV point %d: max bw %d required %d qgv_peak_bw: %d\n",
a10fe26325bd3a Vinod Govindapillai 2023-05-26  856  			    i, max_data_rate, data_rate, qgv_peak_bw);
a10fe26325bd3a Vinod Govindapillai 2023-05-26  857  	}
a10fe26325bd3a Vinod Govindapillai 2023-05-26  858  
a10fe26325bd3a Vinod Govindapillai 2023-05-26  859  	drm_dbg_kms(&i915->drm, "Matching peaks QGV bw: %d for required data rate: %d\n",
a10fe26325bd3a Vinod Govindapillai 2023-05-26  860  		    qgv_peak_bw, data_rate);
a10fe26325bd3a Vinod Govindapillai 2023-05-26  861  
a10fe26325bd3a Vinod Govindapillai 2023-05-26  862  	/*
a10fe26325bd3a Vinod Govindapillai 2023-05-26  863  	 * The display configuration cannot be supported if no QGV point
a10fe26325bd3a Vinod Govindapillai 2023-05-26  864  	 * satisfying the required data rate is found
a10fe26325bd3a Vinod Govindapillai 2023-05-26  865  	 */
a10fe26325bd3a Vinod Govindapillai 2023-05-26  866  	if (qgv_peak_bw == 0) {
a10fe26325bd3a Vinod Govindapillai 2023-05-26  867  		drm_dbg_kms(&i915->drm, "No QGV points for bw %d for display configuration(%d active planes).\n",
a10fe26325bd3a Vinod Govindapillai 2023-05-26  868  			    data_rate, num_active_planes);
a10fe26325bd3a Vinod Govindapillai 2023-05-26  869  		return -EINVAL;
a10fe26325bd3a Vinod Govindapillai 2023-05-26  870  	}
a10fe26325bd3a Vinod Govindapillai 2023-05-26  871  
a10fe26325bd3a Vinod Govindapillai 2023-05-26  872  	/* MTL PM DEMAND expects QGV BW parameter in multiples of 100 mbps */
a10fe26325bd3a Vinod Govindapillai 2023-05-26  873  	new_bw_state->qgv_point_peakbw = DIV_ROUND_CLOSEST(qgv_peak_bw, 100);
a10fe26325bd3a Vinod Govindapillai 2023-05-26  874  
a10fe26325bd3a Vinod Govindapillai 2023-05-26  875  out:
a10fe26325bd3a Vinod Govindapillai 2023-05-26  876  	if (new_bw_state->qgv_point_peakbw != old_bw_state->qgv_point_peakbw)  {
a10fe26325bd3a Vinod Govindapillai 2023-05-26  877  		ret = intel_atomic_serialize_global_state(&new_bw_state->base);
a10fe26325bd3a Vinod Govindapillai 2023-05-26  878  		if (ret)
a10fe26325bd3a Vinod Govindapillai 2023-05-26  879  			return ret;
a10fe26325bd3a Vinod Govindapillai 2023-05-26  880  	}
a10fe26325bd3a Vinod Govindapillai 2023-05-26  881  
a10fe26325bd3a Vinod Govindapillai 2023-05-26  882  	return 0;
a10fe26325bd3a Vinod Govindapillai 2023-05-26  883  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

