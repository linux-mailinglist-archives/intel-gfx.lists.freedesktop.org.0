Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 151D77972DC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 15:38:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A86810E7DA;
	Thu,  7 Sep 2023 13:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3292610E231;
 Thu,  7 Sep 2023 13:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694093901; x=1725629901;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=v4+1AW/CDx6onMh9wLsXsI+FAWh4ntKx9+rb7gA6UNA=;
 b=KZCFO2+hZ5rCjGkESS5O6+/6Z0U4mE8+HHPzMiQXRJt8jLx8X8V6ofIs
 evjtmQPw4JYUxuY7sayH8XDjTGVYuzftWADQKPNdVg5jwEVOkGvfrXl8g
 I1VR3MlZuiqeDmQOtYgqzfDBtdkq5BIsTrKfSdbzH9qzA9aVuJFDTqlVm
 Swe8UqZvLOboTzGP9MSXzjcTHpUdMfZ+F2FBOcaMMRd6eHx3I5S1FkB1r
 YLsR/F4Li/+xZv9XyXiR+FQ1K0Y12A283apuAJ0jIhFpe9XiGfgBbXqfB
 Iok1Nijd61a5IDCN2UM+762TY2dlQNmB9U7BeyqPBPYJmTJ6+TnzN8PCL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="374745034"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="374745034"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 06:38:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="988778123"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="988778123"
Received: from lkp-server01.sh.intel.com (HELO 59b3c6e06877) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 07 Sep 2023 06:38:05 -0700
Received: from kbuild by 59b3c6e06877 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qeFCt-0001G7-1j;
 Thu, 07 Sep 2023 13:38:03 +0000
Date: Thu, 7 Sep 2023 21:37:28 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, dri-devel@lists.freedesktop.org
Message-ID: <202309072156.iD0ETpd1-lkp@intel.com>
References: <eba53a0904126fb904a5190750002695350f44eb.1694078430.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eba53a0904126fb904a5190750002695350f44eb.1694078430.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/edid: add helpers to get/set struct
 cea_sad from/to 3-byte sad
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-edid-split-out-drm_eld-h-from-drm_edid-h/20230907-173011
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/eba53a0904126fb904a5190750002695350f44eb.1694078430.git.jani.nikula%40intel.com
patch subject: [PATCH 5/6] drm/edid: add helpers to get/set struct cea_sad from/to 3-byte sad
config: i386-randconfig-013-20230907 (https://download.01.org/0day-ci/archive/20230907/202309072156.iD0ETpd1-lkp@intel.com/config)
compiler: gcc-7 (Ubuntu 7.5.0-6ubuntu2) 7.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230907/202309072156.iD0ETpd1-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309072156.iD0ETpd1-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/drm_edid.c:5505:6: warning: no previous declaration for 'drm_edid_cta_sad_get' [-Wmissing-declarations]
    void drm_edid_cta_sad_get(const struct cea_sad *cta_sad, u8 *sad)
         ^~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/drm_edid.c:5515:6: warning: no previous declaration for 'drm_edid_cta_sad_set' [-Wmissing-declarations]
    void drm_edid_cta_sad_set(struct cea_sad *cta_sad, const u8 *sad)
         ^~~~~~~~~~~~~~~~~~~~


vim +/drm_edid_cta_sad_get +5505 drivers/gpu/drm/drm_edid.c

  5501	
  5502	/*
  5503	 * Get 3-byte SAD buf from struct cea_sad.
  5504	 */
> 5505	void drm_edid_cta_sad_get(const struct cea_sad *cta_sad, u8 *sad)
  5506	{
  5507		sad[0] = cta_sad->format << 3 | cta_sad->channels;
  5508		sad[1] = cta_sad->freq;
  5509		sad[2] = cta_sad->byte2;
  5510	}
  5511	
  5512	/*
  5513	 * Set struct cea_sad from 3-byte SAD buf.
  5514	 */
> 5515	void drm_edid_cta_sad_set(struct cea_sad *cta_sad, const u8 *sad)
  5516	{
  5517		cta_sad->format = (sad[0] & 0x78) >> 3;
  5518		cta_sad->channels = sad[0] & 0x07;
  5519		cta_sad->freq = sad[1] & 0x7f;
  5520		cta_sad->byte2 = sad[2];
  5521	}
  5522	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
