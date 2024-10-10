Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D874997D95
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 08:49:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BF8E10E876;
	Thu, 10 Oct 2024 06:49:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="jkSw5UUY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C346410E876
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2024 06:49:50 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id
 ffacd0b85a97d-37d3ae4a048so336278f8f.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Oct 2024 23:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1728542989; x=1729147789; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=adFWgwYHwCe0tR0epb1h5CYMEcQOgNx5WVvRoMGVVfE=;
 b=jkSw5UUYP8qzWkfVnTl6ARvQ+2INzh9fPJMS1zl3TI6D4UevBD5FfXe/3FqxiGJldt
 FJloPqOOv2JYe2egza1IvLBdIkfhLLo4B53zbpaRYMZEKHt18ctPAzsFdAm345x1NoT1
 jLPl4dEjP4/XxdRzkeri4z5sX/XvccKfHXekR3ZXjudTNvfbnU31e2vobsuR6t2teoMf
 tTEN+pGm/o6c1W4ajZch92wxqv619B4H4ZCPa4OygIFpSR30THLT80d6SJQfuiQYZvy0
 hVgXRu+2sblHCIBtzFw377Tdb9NDXipx6J3ztg9i8sxNmOQn5adJdBRe42dBs3JX9gGv
 vsYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728542989; x=1729147789;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=adFWgwYHwCe0tR0epb1h5CYMEcQOgNx5WVvRoMGVVfE=;
 b=TKUPdrutjPww015n6Jt2qRNtLwoPb+TdSsup5ilWw3BOipoqqHBpiBz8bxw9i1Mwxn
 TSOzsKZfJlBeKm78D+q1IBlONUtQ/hvO1vessyiHF6t4rh1EjzKbgH/F4tD04HnN071Z
 B8bAWZqrECwYBe++LeORmOYkobwz+HjQ1D7TOqsRHD59+3sOsS32NCM4n3VCEgIyyzUk
 4ls5Rf8xC8M9de6pLZ/uTiVpkCoOCe0TcewlVFD3iz7JrUyMtKtYtPKiyV8VXhsJ3wqV
 rImB3AmFGRctZ/07zB9eEaoEWr9pbi5hTbphzQOB9oDB3RM8iBWEo1yzI2EmtvxW1t11
 cwTA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWgOmCfe+oYhiE6LHgS2ei/s7esB8vnhSRSUkRHiw9iIK9E8TzF7cuQR6hP4L93cUfyN341ZfyyiXg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzKP2LT165tJXQu1aL+PcKmcfGHeOuCSt7xds3L24ZjTzqT1KoQ
 +zsFw4eCh8wcBmZZNmxaoJZ9FJvYaBL4fzTk8zluVh5laaKuiWelQVu/TVw769A=
X-Google-Smtp-Source: AGHT+IHuptCbx+54sWT/rBNgX8BfunHG9UT3ztuvpI3pUSInUdkEmXtTdou9/3TJiEITe32oegi6WA==
X-Received: by 2002:a5d:6e86:0:b0:377:683f:617c with SMTP id
 ffacd0b85a97d-37d3a9f9963mr3485221f8f.23.1728542989044; 
 Wed, 09 Oct 2024 23:49:49 -0700 (PDT)
Received: from localhost ([196.207.164.177]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-37d4b79f9c1sm638383f8f.68.2024.10.09.23.49.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2024 23:49:48 -0700 (PDT)
Date: Thu, 10 Oct 2024 09:49:45 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
 Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
 vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH 6/9] drm/i915/display: iterare through channels if no
 feasible frequencies
Message-ID: <b57c7795-f3e5-4d61-a29e-7a723e67a7e1@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241008082327.342020-7-vinod.govindapillai@intel.com>
Received: from imap.gmail.com (66.102.1.108:993) by stanley.mountain with
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

Hi Vinod,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Vinod-Govindapillai/drm-i915-display-get-rid-of-encoder-param-in-intel_audio_compute_config/20241008-163033
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20241008082327.342020-7-vinod.govindapillai%40intel.com
patch subject: [PATCH 6/9] drm/i915/display: iterare through channels if no feasible frequencies
config: x86_64-randconfig-161-20241009 (https://download.01.org/0day-ci/archive/20241010/202410100801.8jZBRn3y-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202410100801.8jZBRn3y-lkp@intel.com/

smatch warnings:
drivers/gpu/drm/i915/display/intel_audio.c:789 intel_audio_compute_sad() error: uninitialized symbol 'sad_freq'.

vim +/sad_freq +789 drivers/gpu/drm/i915/display/intel_audio.c

0f1adcd58da8c47 Vinod Govindapillai 2024-10-08  764  static void intel_audio_compute_sad(struct drm_i915_private *i915,
0f1adcd58da8c47 Vinod Govindapillai 2024-10-08  765  				    int line_freq_khz, int hblank_slots_lanes,
0f1adcd58da8c47 Vinod Govindapillai 2024-10-08  766  				    int avail_overhead, int req_overhead,
0f1adcd58da8c47 Vinod Govindapillai 2024-10-08  767  				    struct cea_sad *sad)
0f1adcd58da8c47 Vinod Govindapillai 2024-10-08  768  {
e2675520fb74591 Vinod Govindapillai 2024-10-08  769  	u8 channels;
0f1adcd58da8c47 Vinod Govindapillai 2024-10-08  770  	u8 sad_freq;
0f1adcd58da8c47 Vinod Govindapillai 2024-10-08  771  
e2675520fb74591 Vinod Govindapillai 2024-10-08  772  	/*
e2675520fb74591 Vinod Govindapillai 2024-10-08  773  	 * If we don't find any supported audio frequencies for a channel,
e2675520fb74591 Vinod Govindapillai 2024-10-08  774  	 * reduce the channel and try
e2675520fb74591 Vinod Govindapillai 2024-10-08  775  	 */
e2675520fb74591 Vinod Govindapillai 2024-10-08  776  	for (channels = sad->channels + 1; channels >= 1; channels--) {

This driver is old.  In the era when this driver was written, we used to just
say that if you hit this bug then you deserved it.  We wouldn't bother to fix
something like this.  These days we have syzbot doing millions of stupid things
per second to try break the kernel.

You'd have to use the /proc file to set sad->channels to 255.  Then channels
would be zero and we wouldn't enter the loop.  Potentially, we could add some
sanity checking to snd_hdmi_write_eld_info()?  Another idea would be to make
channels an int instead of a u8.

My other concern is with the "+ 1".  In drm_edid_cta_sad_set() we set channels
as:

	cta_sad->channels = sad[0] & 0x07;

fine.  But in hdmi_update_short_audio_desc() we set channels as:

	a->channels = GRAB_BITS(buf, 0, 0, 3);
	a->channels++;

The first line is exact same in both functions but in hdmi_update_short_audio_desc()
we add "+ 1" and then we add another "+ 1" in this intel_audio_compute_sad()
function.  I suspect the a->channels++; line should be deleted.

0f1adcd58da8c47 Vinod Govindapillai 2024-10-08  777  		sad_freq = intel_audio_get_pruned_audfreq(i915, line_freq_khz,
0f1adcd58da8c47 Vinod Govindapillai 2024-10-08  778  							  hblank_slots_lanes,
0f1adcd58da8c47 Vinod Govindapillai 2024-10-08  779  							  avail_overhead,
e2675520fb74591 Vinod Govindapillai 2024-10-08  780  							  req_overhead,
e2675520fb74591 Vinod Govindapillai 2024-10-08  781  							  channels,
0f1adcd58da8c47 Vinod Govindapillai 2024-10-08  782  							  sad->freq);
0f1adcd58da8c47 Vinod Govindapillai 2024-10-08  783  
e2675520fb74591 Vinod Govindapillai 2024-10-08  784  		/* Supported frequencies exist! No need to proceed further */
e2675520fb74591 Vinod Govindapillai 2024-10-08  785  		if (sad_freq)
e2675520fb74591 Vinod Govindapillai 2024-10-08  786  			break;
e2675520fb74591 Vinod Govindapillai 2024-10-08  787  	}
e2675520fb74591 Vinod Govindapillai 2024-10-08  788  
0f1adcd58da8c47 Vinod Govindapillai 2024-10-08 @789  	sad->freq = sad_freq;
e2675520fb74591 Vinod Govindapillai 2024-10-08  790  	sad->channels = channels ? channels - 1 : 0;
0f1adcd58da8c47 Vinod Govindapillai 2024-10-08  791  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

