Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 926661E9A4B
	for <lists+intel-gfx@lfdr.de>; Sun, 31 May 2020 22:03:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6510789DD5;
	Sun, 31 May 2020 20:03:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA93C89DD5
 for <intel-gfx@lists.freedesktop.org>; Sun, 31 May 2020 20:03:33 +0000 (UTC)
IronPort-SDR: E2Js9fqIQVoejYaf13aJoi7mR8Iesvj5c7mxx56AjyXm3kOE0btbx8C+JcyWLTSlb/rfOcJwre
 GTPH+Y2zQ93A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2020 13:03:33 -0700
IronPort-SDR: 1H3RbT+XCw9IFbMukDZPFiASgVRG7i6qjAanlywCfA05HtM++tinIYE1WD3jCcWEiSNYiaTk9x
 9D7g+Y4Dq7lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,458,1583222400"; d="scan'208";a="256575733"
Received: from lkp-server01.sh.intel.com (HELO 49d03d9b0ee7) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 31 May 2020 13:03:31 -0700
Received: from kbuild by 49d03d9b0ee7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jfUB8-00004l-Vk; Sun, 31 May 2020 20:03:30 +0000
Date: Mon, 1 Jun 2020 04:03:06 +0800
From: kbuild test robot <lkp@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202006010327.mshUuR6X%lkp@intel.com>
References: <20200526094852.6967-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526094852.6967-1-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Fix wrong CDCLK adjustment
 changes
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
Cc: kbuild-all@lists.01.org, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Stanislav,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-tip/drm-tip]
[also build test WARNING on drm-intel/drm-intel-next-queued]
[cannot apply to drm-intel/for-linux-next v5.7-rc7 next-20200529]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Stanislav-Lisovskiy/drm-i915-Fix-wrong-CDCLK-adjustment-changes/20200526-180642
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
compiler: gcc-9 (Debian 9.3.0-13) 9.3.0

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>


cppcheck warnings: (new ones prefixed by >>)

>> drivers/gpu/drm/i915/display/intel_bw.c:453:36: warning: Uninitialized variable: pipe [uninitvar]
     crtc_bw = &new_bw_state->dbuf_bw[pipe];
                                      ^

vim +453 drivers/gpu/drm/i915/display/intel_bw.c

   430	
   431	int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
   432	{
   433		struct drm_i915_private *dev_priv = to_i915(state->base.dev);
   434		struct intel_bw_state *new_bw_state = NULL;
   435		struct intel_bw_state *old_bw_state = NULL;
   436		const struct intel_crtc_state *crtc_state;
   437		struct intel_crtc *crtc;
   438		int max_bw = 0;
   439		int slice_id;
   440		enum pipe pipe;
   441		int i;
   442	
   443		for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
   444			enum plane_id plane_id;
   445			struct intel_dbuf_bw *crtc_bw;
   446	
   447			new_bw_state = intel_atomic_get_bw_state(state);
   448			if (IS_ERR(new_bw_state))
   449				return PTR_ERR(new_bw_state);
   450	
   451			old_bw_state = intel_atomic_get_old_bw_state(state);
   452	
 > 453			crtc_bw = &new_bw_state->dbuf_bw[pipe];
   454	
   455			memset(&crtc_bw->used_bw, 0, sizeof(crtc_bw->used_bw));
   456	
   457			for_each_plane_id_on_crtc(crtc, plane_id) {
   458				const struct skl_ddb_entry *plane_alloc =
   459					&crtc_state->wm.skl.plane_ddb_y[plane_id];
   460				const struct skl_ddb_entry *uv_plane_alloc =
   461					&crtc_state->wm.skl.plane_ddb_uv[plane_id];
   462				unsigned int data_rate = crtc_state->data_rate[plane_id];
   463				unsigned int dbuf_mask = 0;
   464	
   465				dbuf_mask |= skl_ddb_dbuf_slice_mask(dev_priv, plane_alloc);
   466				dbuf_mask |= skl_ddb_dbuf_slice_mask(dev_priv, uv_plane_alloc);
   467	
   468				/*
   469				 * FIXME: To calculate that more properly we probably
   470				 * need to to split per plane data_rate into data_rate_y
   471				 * and data_rate_uv for multiplanar formats in order not
   472				 * to get accounted those twice if they happen to reside
   473				 * on different slices.
   474				 * However for pre-icl this would work anyway because
   475				 * we have only single slice and for icl+ uv plane has
   476				 * non-zero data rate.
   477				 * So in worst case those calculation are a bit
   478				 * pessimistic, which shouldn't pose any significant
   479				 * problem anyway.
   480				 */
   481				for_each_dbuf_slice_in_mask(slice_id, dbuf_mask)
   482					crtc_bw->used_bw[slice_id] += data_rate;
   483			}
   484		}
   485	
   486		if (!old_bw_state)
   487			return 0;
   488	
   489		for_each_pipe(dev_priv, pipe) {
   490			struct intel_dbuf_bw *crtc_bw;
   491	
   492			crtc_bw = &new_bw_state->dbuf_bw[pipe];
   493	
   494			for_each_dbuf_slice(slice_id) {
   495				/*
   496				 * Current experimental observations show that contrary
   497				 * to BSpec we get underruns once we exceed 64 * CDCLK
   498				 * for slices in total.
   499				 * As a temporary measure in order not to keep CDCLK
   500				 * bumped up all the time we calculate CDCLK according
   501				 * to this formula for  overall bw consumed by slices.
   502				 */
   503				max_bw += crtc_bw->used_bw[slice_id];
   504			}
   505		}
   506	
   507		new_bw_state->min_cdclk = max_bw / 64;
   508	
   509		if (new_bw_state->min_cdclk != old_bw_state->min_cdclk) {
   510			int ret = intel_atomic_lock_global_state(&new_bw_state->base);
   511	
   512			if (ret)
   513				return ret;
   514		}
   515	
   516		return 0;
   517	}
   518	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
