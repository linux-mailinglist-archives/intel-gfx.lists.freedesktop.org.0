Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9C9807294
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Dec 2023 15:36:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B14CD10E749;
	Wed,  6 Dec 2023 14:36:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 467B410E74A
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Dec 2023 14:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701873382; x=1733409382;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=cCp7Zwx3gOFbLK12jSK4OxDXMWjTb1ykvlx4ScyM/+s=;
 b=Xm3ikuOf/PjWFlxdzwbJUDPPU0Xzmna4gEw5V00MkNPkB7jKy1XyYjQh
 lxk1vxMFa443uSQ5O0S2iLxuheJkQYJVhv8DJJAWExaBtJrQy23hvCOzN
 crChqBwtDMYRSeFJwnzooNH5Wfnpf2U2uHoeMq2C3U3BLivOcb3FNEGqf
 PsCtmEmHy7wdhfAbkJaOALG+6juSe++TVC29lsWGmuBOXtwvGUopS2Qk9
 KMEw1i4gVmzrwT29gM3uOgeaEeDIxsWJqlbI7y5sp7erYNYaY9lEnE6Jz
 bCWhMy6kbpdoXfxa08nCVy5CoinLEkDjaxqCtxjoySYk7g3KyQZkEjHdA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="955780"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; 
   d="scan'208";a="955780"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 06:36:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="800365726"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; d="scan'208";a="800365726"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 06 Dec 2023 06:36:20 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rAt0b-000Avz-2L;
 Wed, 06 Dec 2023 14:36:18 +0000
Date: Wed, 6 Dec 2023 22:34:34 +0800
From: kernel test robot <lkp@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>,
	intel-gfx@lists.freedesktop.org
Message-ID: <202312062206.3KtqfAc1-lkp@intel.com>
References: <20231206093916.1733863-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231206093916.1733863-1-suraj.kandpal@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: Fail Repeater authentication
 if Type1 device not present
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
Cc: oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Suraj,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Suraj-Kandpal/drm-i915-hdcp-Fail-Repeater-authentication-if-Type1-device-not-present/20231206-174124
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20231206093916.1733863-1-suraj.kandpal%40intel.com
patch subject: [Intel-gfx] [PATCH] drm/i915/hdcp: Fail Repeater authentication if Type1 device not present
config: x86_64-defconfig (https://download.01.org/0day-ci/archive/20231206/202312062206.3KtqfAc1-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231206/202312062206.3KtqfAc1-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202312062206.3KtqfAc1-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from include/drm/ttm/ttm_resource.h:34,
                    from include/drm/ttm/ttm_device.h:30,
                    from drivers/gpu/drm/i915/i915_drv.h:37,
                    from drivers/gpu/drm/i915/display/intel_hdcp.c:18:
   drivers/gpu/drm/i915/display/intel_hdcp.c: In function 'hdcp2_authenticate_repeater_topology':
>> drivers/gpu/drm/i915/display/intel_hdcp.c:1638:30: error: 'dev_priv' undeclared (first use in this function); did you mean 'dev_crit'?
    1638 |                 drm_dbg_kms(&dev_priv->drm,
         |                              ^~~~~~~~
   include/drm/drm_print.h:410:29: note: in definition of macro 'drm_dev_dbg'
     410 |         __drm_dev_dbg(NULL, dev, cat, fmt, ##__VA_ARGS__)
         |                             ^~~
   drivers/gpu/drm/i915/display/intel_hdcp.c:1638:17: note: in expansion of macro 'drm_dbg_kms'
    1638 |                 drm_dbg_kms(&dev_priv->drm,
         |                 ^~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_hdcp.c:1638:30: note: each undeclared identifier is reported only once for each function it appears in
    1638 |                 drm_dbg_kms(&dev_priv->drm,
         |                              ^~~~~~~~
   include/drm/drm_print.h:410:29: note: in definition of macro 'drm_dev_dbg'
     410 |         __drm_dev_dbg(NULL, dev, cat, fmt, ##__VA_ARGS__)
         |                             ^~~
   drivers/gpu/drm/i915/display/intel_hdcp.c:1638:17: note: in expansion of macro 'drm_dbg_kms'
    1638 |                 drm_dbg_kms(&dev_priv->drm,
         |                 ^~~~~~~~~~~


vim +1638 drivers/gpu/drm/i915/display/intel_hdcp.c

  1599	
  1600	static
  1601	int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
  1602	{
  1603		struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
  1604		struct drm_i915_private *i915 = to_i915(connector->base.dev);
  1605		struct intel_hdcp *hdcp = &connector->hdcp;
  1606		union {
  1607			struct hdcp2_rep_send_receiverid_list recvid_list;
  1608			struct hdcp2_rep_send_ack rep_ack;
  1609		} msgs;
  1610		const struct intel_hdcp_shim *shim = hdcp->shim;
  1611		u32 seq_num_v, device_cnt;
  1612		u8 *rx_info;
  1613		int ret;
  1614	
  1615		ret = shim->read_2_2_msg(connector, HDCP_2_2_REP_SEND_RECVID_LIST,
  1616					 &msgs.recvid_list, sizeof(msgs.recvid_list));
  1617		if (ret < 0)
  1618			return ret;
  1619	
  1620		rx_info = msgs.recvid_list.rx_info;
  1621	
  1622		if (HDCP_2_2_MAX_CASCADE_EXCEEDED(rx_info[1]) ||
  1623		    HDCP_2_2_MAX_DEVS_EXCEEDED(rx_info[1])) {
  1624			drm_dbg_kms(&i915->drm, "Topology Max Size Exceeded\n");
  1625			return -EINVAL;
  1626		}
  1627	
  1628		/*
  1629		 * MST topology is not Type 1 capable if it contains a downstream
  1630		 * device that is only HDCP 1.x or Legacy HDCP 2.0/2.1 compliant.
  1631		 */
  1632		dig_port->hdcp_mst_type1_capable =
  1633			!HDCP_2_2_HDCP1_DEVICE_CONNECTED(rx_info[1]) &&
  1634			!HDCP_2_2_HDCP_2_0_REP_CONNECTED(rx_info[1]);
  1635	
  1636		if (!dig_port->hdcp_mst_type1_capable && hdcp->content_type &&
  1637		    !intel_encoder_is_mst(connector->encoder)) {
> 1638			drm_dbg_kms(&dev_priv->drm,
  1639				    "HDCP1.x or 2.0 Legacy Device Downstream\n");
  1640			return -EINVAL;
  1641		}
  1642	
  1643		/* Converting and Storing the seq_num_v to local variable as DWORD */
  1644		seq_num_v =
  1645			drm_hdcp_be24_to_cpu((const u8 *)msgs.recvid_list.seq_num_v);
  1646	
  1647		if (!hdcp->hdcp2_encrypted && seq_num_v) {
  1648			drm_dbg_kms(&i915->drm,
  1649				    "Non zero Seq_num_v at first RecvId_List msg\n");
  1650			return -EINVAL;
  1651		}
  1652	
  1653		if (seq_num_v < hdcp->seq_num_v) {
  1654			/* Roll over of the seq_num_v from repeater. Reauthenticate. */
  1655			drm_dbg_kms(&i915->drm, "Seq_num_v roll over.\n");
  1656			return -EINVAL;
  1657		}
  1658	
  1659		device_cnt = (HDCP_2_2_DEV_COUNT_HI(rx_info[0]) << 4 |
  1660			      HDCP_2_2_DEV_COUNT_LO(rx_info[1]));
  1661		if (drm_hdcp_check_ksvs_revoked(&i915->drm,
  1662						msgs.recvid_list.receiver_ids,
  1663						device_cnt) > 0) {
  1664			drm_err(&i915->drm, "Revoked receiver ID(s) is in list\n");
  1665			return -EPERM;
  1666		}
  1667	
  1668		ret = hdcp2_verify_rep_topology_prepare_ack(connector,
  1669							    &msgs.recvid_list,
  1670							    &msgs.rep_ack);
  1671		if (ret < 0)
  1672			return ret;
  1673	
  1674		hdcp->seq_num_v = seq_num_v;
  1675		ret = shim->write_2_2_msg(connector, &msgs.rep_ack,
  1676					  sizeof(msgs.rep_ack));
  1677		if (ret < 0)
  1678			return ret;
  1679	
  1680		return 0;
  1681	}
  1682	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
