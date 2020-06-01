Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEF41EA59F
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 16:16:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 090056E0A2;
	Mon,  1 Jun 2020 14:16:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E88E6E0A2
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 14:16:33 +0000 (UTC)
IronPort-SDR: 21MG+ojOGJrioxIw+MEJzPgGOZy0Y8D5cwRedDBVjxYk4SL9Pe6fjS7P+5Q3yZ8uLB/l0VppZX
 F1s+QnQbz9NQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 07:16:32 -0700
IronPort-SDR: KzRpwzKc2Man5D7Frif7vGmtFEHfF70cA8FeZJqRMNoPb0ijXY54UfkoD2CGp73vxndtApR62O
 VlYSMfQCbHwg==
X-IronPort-AV: E=Sophos;i="5.73,461,1583222400"; d="scan'208";a="444305107"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 07:16:30 -0700
Date: Mon, 1 Jun 2020 17:12:41 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20200601141241.GA21755@intel.com>
References: <20200526094852.6967-1-stanislav.lisovskiy@intel.com>
 <20200601140108.GR30374@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601140108.GR30374@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: kbuild@lists.01.org, chris@chris-wilson.co.uk, kbuild-all@lists.01.org,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 01, 2020 at 05:01:08PM +0300, Dan Carpenter wrote:
> Hi Stanislav,
> 
> url:    https://github.com/0day-ci/linux/commits/Stanislav-Lisovskiy/drm-i915-Fix-wrong-CDCLK-adjustment-changes/20200526-180642
> base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
> config: i386-randconfig-m021-20200531 (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-13) 9.3.0
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> smatch warnings:
> drivers/gpu/drm/i915/display/intel_bw.c:453 skl_bw_calc_min_cdclk() error: uninitialized symbol 'pipe'.
> 
> # https://github.com/0day-ci/linux/commit/21b0324886122a396687d977d67eb6ce3caf2b17
> git remote add linux-review https://github.com/0day-ci/linux
> git remote update linux-review
> git checkout 21b0324886122a396687d977d67eb6ce3caf2b17
> vim +/pipe +453 drivers/gpu/drm/i915/display/intel_bw.c
> 
> 366b6200f76e0f Jani Nikula         2019-08-06  430  
> cd19154608610a Stanislav Lisovskiy 2020-05-20  431  int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
> cd19154608610a Stanislav Lisovskiy 2020-05-20  432  {
> cd19154608610a Stanislav Lisovskiy 2020-05-20  433  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  434  	struct intel_bw_state *new_bw_state = NULL;
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  435  	struct intel_bw_state *old_bw_state = NULL;
> cd19154608610a Stanislav Lisovskiy 2020-05-20  436  	const struct intel_crtc_state *crtc_state;
> cd19154608610a Stanislav Lisovskiy 2020-05-20  437  	struct intel_crtc *crtc;
> cd19154608610a Stanislav Lisovskiy 2020-05-20  438  	int max_bw = 0;
> cd19154608610a Stanislav Lisovskiy 2020-05-20  439  	int slice_id;
> 21b0324886122a Stanislav Lisovskiy 2020-05-26  440  	enum pipe pipe;
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  441  	int i;
> cd19154608610a Stanislav Lisovskiy 2020-05-20  442  
> cd19154608610a Stanislav Lisovskiy 2020-05-20  443  	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> cd19154608610a Stanislav Lisovskiy 2020-05-20  444  		enum plane_id plane_id;
> cd19154608610a Stanislav Lisovskiy 2020-05-20  445  		struct intel_dbuf_bw *crtc_bw;
> cd19154608610a Stanislav Lisovskiy 2020-05-20  446  
> cd19154608610a Stanislav Lisovskiy 2020-05-20  447  		new_bw_state = intel_atomic_get_bw_state(state);
> cd19154608610a Stanislav Lisovskiy 2020-05-20  448  		if (IS_ERR(new_bw_state))
> cd19154608610a Stanislav Lisovskiy 2020-05-20  449  			return PTR_ERR(new_bw_state);
> cd19154608610a Stanislav Lisovskiy 2020-05-20  450  
> 21b0324886122a Stanislav Lisovskiy 2020-05-26  451  		old_bw_state = intel_atomic_get_old_bw_state(state);
> 21b0324886122a Stanislav Lisovskiy 2020-05-26  452  
> 21b0324886122a Stanislav Lisovskiy 2020-05-26 @453  		crtc_bw = &new_bw_state->dbuf_bw[pipe];
>                                                                                                  ^^^^
> Not initialized.  Probably "i" was intended?

Ahh.. Rather silly typo - it should be crtc->pipe.
Thanks for spotting.

Stan

> 
> cd19154608610a Stanislav Lisovskiy 2020-05-20  454  
> cd19154608610a Stanislav Lisovskiy 2020-05-20  455  		memset(&crtc_bw->used_bw, 0, sizeof(crtc_bw->used_bw));
> cd19154608610a Stanislav Lisovskiy 2020-05-20  456  
> cd19154608610a Stanislav Lisovskiy 2020-05-20  457  		for_each_plane_id_on_crtc(crtc, plane_id) {
> cd19154608610a Stanislav Lisovskiy 2020-05-20  458  			const struct skl_ddb_entry *plane_alloc =
> cd19154608610a Stanislav Lisovskiy 2020-05-20  459  				&crtc_state->wm.skl.plane_ddb_y[plane_id];
> cd19154608610a Stanislav Lisovskiy 2020-05-20  460  			const struct skl_ddb_entry *uv_plane_alloc =
> cd19154608610a Stanislav Lisovskiy 2020-05-20  461  				&crtc_state->wm.skl.plane_ddb_uv[plane_id];
> cd19154608610a Stanislav Lisovskiy 2020-05-20  462  			unsigned int data_rate = crtc_state->data_rate[plane_id];
> cd19154608610a Stanislav Lisovskiy 2020-05-20  463  			unsigned int dbuf_mask = 0;
> cd19154608610a Stanislav Lisovskiy 2020-05-20  464  
> cd19154608610a Stanislav Lisovskiy 2020-05-20  465  			dbuf_mask |= skl_ddb_dbuf_slice_mask(dev_priv, plane_alloc);
> cd19154608610a Stanislav Lisovskiy 2020-05-20  466  			dbuf_mask |= skl_ddb_dbuf_slice_mask(dev_priv, uv_plane_alloc);
> cd19154608610a Stanislav Lisovskiy 2020-05-20  467  
> cd19154608610a Stanislav Lisovskiy 2020-05-20  468  			/*
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  469  			 * FIXME: To calculate that more properly we probably
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  470  			 * need to to split per plane data_rate into data_rate_y
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  471  			 * and data_rate_uv for multiplanar formats in order not
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  472  			 * to get accounted those twice if they happen to reside
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  473  			 * on different slices.
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  474  			 * However for pre-icl this would work anyway because
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  475  			 * we have only single slice and for icl+ uv plane has
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  476  			 * non-zero data rate.
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  477  			 * So in worst case those calculation are a bit
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  478  			 * pessimistic, which shouldn't pose any significant
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  479  			 * problem anyway.
> cd19154608610a Stanislav Lisovskiy 2020-05-20  480  			 */
> cd19154608610a Stanislav Lisovskiy 2020-05-20  481  			for_each_dbuf_slice_in_mask(slice_id, dbuf_mask)
> cd19154608610a Stanislav Lisovskiy 2020-05-20  482  				crtc_bw->used_bw[slice_id] += data_rate;
> cd19154608610a Stanislav Lisovskiy 2020-05-20  483  		}
> 21b0324886122a Stanislav Lisovskiy 2020-05-26  484  	}
> 21b0324886122a Stanislav Lisovskiy 2020-05-26  485  
> 21b0324886122a Stanislav Lisovskiy 2020-05-26  486  	if (!old_bw_state)
> 21b0324886122a Stanislav Lisovskiy 2020-05-26  487  		return 0;
> 21b0324886122a Stanislav Lisovskiy 2020-05-26  488  
> 21b0324886122a Stanislav Lisovskiy 2020-05-26  489  	for_each_pipe(dev_priv, pipe) {
> 21b0324886122a Stanislav Lisovskiy 2020-05-26  490  		struct intel_dbuf_bw *crtc_bw;
> 21b0324886122a Stanislav Lisovskiy 2020-05-26  491  
> 21b0324886122a Stanislav Lisovskiy 2020-05-26  492  		crtc_bw = &new_bw_state->dbuf_bw[pipe];
> cd19154608610a Stanislav Lisovskiy 2020-05-20  493  
> cd19154608610a Stanislav Lisovskiy 2020-05-20  494  		for_each_dbuf_slice(slice_id) {
> cd19154608610a Stanislav Lisovskiy 2020-05-20  495  			/*
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  496  			 * Current experimental observations show that contrary
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  497  			 * to BSpec we get underruns once we exceed 64 * CDCLK
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  498  			 * for slices in total.
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  499  			 * As a temporary measure in order not to keep CDCLK
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  500  			 * bumped up all the time we calculate CDCLK according
> cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  501  			 * to this formula for  overall bw consumed by slices.
> cd19154608610a Stanislav Lisovskiy 2020-05-20  502  			 */
> cd19154608610a Stanislav Lisovskiy 2020-05-20  503  			max_bw += crtc_bw->used_bw[slice_id];
> cd19154608610a Stanislav Lisovskiy 2020-05-20  504  		}
> cd19154608610a Stanislav Lisovskiy 2020-05-20  505  	}
> cd19154608610a Stanislav Lisovskiy 2020-05-20  506  
> 21b0324886122a Stanislav Lisovskiy 2020-05-26  507  	new_bw_state->min_cdclk = max_bw / 64;
> cd19154608610a Stanislav Lisovskiy 2020-05-20  508  
> cd19154608610a Stanislav Lisovskiy 2020-05-20  509  	if (new_bw_state->min_cdclk != old_bw_state->min_cdclk) {
> cd19154608610a Stanislav Lisovskiy 2020-05-20  510  		int ret = intel_atomic_lock_global_state(&new_bw_state->base);
> cd19154608610a Stanislav Lisovskiy 2020-05-20  511  
> cd19154608610a Stanislav Lisovskiy 2020-05-20  512  		if (ret)
> cd19154608610a Stanislav Lisovskiy 2020-05-20  513  			return ret;
> cd19154608610a Stanislav Lisovskiy 2020-05-20  514  	}
> cd19154608610a Stanislav Lisovskiy 2020-05-20  515  
> cd19154608610a Stanislav Lisovskiy 2020-05-20  516  	return 0;
> cd19154608610a Stanislav Lisovskiy 2020-05-20  517  }
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
