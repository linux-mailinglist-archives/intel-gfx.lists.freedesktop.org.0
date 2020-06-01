Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20ED91EA57F
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 16:03:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F0E789202;
	Mon,  1 Jun 2020 14:03:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70BC289202
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 14:03:29 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 051Dw0nu096480;
 Mon, 1 Jun 2020 14:03:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type : in-reply-to;
 s=corp-2020-01-29; bh=3rXF8QpirebGr7Wa6VPTS41rxVSkvQb13GPoV1zS1xU=;
 b=U6APa0x8DqOBL4o2GPfrdc3kLKiC/LNWe5a8ZfvGI7fXZNuuN+4a28YjXnNWogtbgXuI
 1SnVp43wbhxGHw0jKVEY95XsCAjVE3VWnhwfYyVSsAYlz6fQTg2oBVTntiLEfym2b6F5
 t+PLNxvkOBjOvoD1YOfsbyqg+rh+U5Mk0nnqxxd7nyTH5z9bWijvone27EGmCYIXyrfi
 SpsoL6RUfmyDxd67UtUIFBFp0VYExt2tZbkucX24NC5l9PdK6AZ2LIzXzRJDMyYNLF1x
 hRX3u9p+O9sGxWd2RVwvD9UDdx8TQtYgQyCOWf20SPINAl8CqpuzUdrrJcnKeFMuBosj Kg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 31bg4mxtmk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 01 Jun 2020 14:03:18 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 051Dvu5O020562;
 Mon, 1 Jun 2020 14:01:18 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 31c18rj2e5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Jun 2020 14:01:17 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 051E1Ggg008449;
 Mon, 1 Jun 2020 14:01:16 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 01 Jun 2020 07:01:14 -0700
Date: Mon, 1 Jun 2020 17:01:08 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: kbuild@lists.01.org, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>, 
 intel-gfx@lists.freedesktop.org
Message-ID: <20200601140108.GR30374@kadam>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="b2ktwntdbf0dPnbx"
Content-Disposition: inline
In-Reply-To: <20200526094852.6967-1-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9638
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0 mlxscore=0
 adultscore=0 mlxlogscore=999 suspectscore=0 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006010103
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9638
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1011
 lowpriorityscore=0
 malwarescore=0 phishscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 mlxlogscore=999 cotscore=-2147483648 bulkscore=0 mlxscore=0
 impostorscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006010103
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--b2ktwntdbf0dPnbx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Stanislav,

url:    https://github.com/0day-ci/linux/commits/Stanislav-Lisovskiy/drm-i915-Fix-wrong-CDCLK-adjustment-changes/20200526-180642
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: i386-randconfig-m021-20200531 (attached as .config)
compiler: gcc-9 (Debian 9.3.0-13) 9.3.0

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

smatch warnings:
drivers/gpu/drm/i915/display/intel_bw.c:453 skl_bw_calc_min_cdclk() error: uninitialized symbol 'pipe'.

# https://github.com/0day-ci/linux/commit/21b0324886122a396687d977d67eb6ce3caf2b17
git remote add linux-review https://github.com/0day-ci/linux
git remote update linux-review
git checkout 21b0324886122a396687d977d67eb6ce3caf2b17
vim +/pipe +453 drivers/gpu/drm/i915/display/intel_bw.c

366b6200f76e0f Jani Nikula         2019-08-06  430  
cd19154608610a Stanislav Lisovskiy 2020-05-20  431  int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
cd19154608610a Stanislav Lisovskiy 2020-05-20  432  {
cd19154608610a Stanislav Lisovskiy 2020-05-20  433  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  434  	struct intel_bw_state *new_bw_state = NULL;
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  435  	struct intel_bw_state *old_bw_state = NULL;
cd19154608610a Stanislav Lisovskiy 2020-05-20  436  	const struct intel_crtc_state *crtc_state;
cd19154608610a Stanislav Lisovskiy 2020-05-20  437  	struct intel_crtc *crtc;
cd19154608610a Stanislav Lisovskiy 2020-05-20  438  	int max_bw = 0;
cd19154608610a Stanislav Lisovskiy 2020-05-20  439  	int slice_id;
21b0324886122a Stanislav Lisovskiy 2020-05-26  440  	enum pipe pipe;
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  441  	int i;
cd19154608610a Stanislav Lisovskiy 2020-05-20  442  
cd19154608610a Stanislav Lisovskiy 2020-05-20  443  	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
cd19154608610a Stanislav Lisovskiy 2020-05-20  444  		enum plane_id plane_id;
cd19154608610a Stanislav Lisovskiy 2020-05-20  445  		struct intel_dbuf_bw *crtc_bw;
cd19154608610a Stanislav Lisovskiy 2020-05-20  446  
cd19154608610a Stanislav Lisovskiy 2020-05-20  447  		new_bw_state = intel_atomic_get_bw_state(state);
cd19154608610a Stanislav Lisovskiy 2020-05-20  448  		if (IS_ERR(new_bw_state))
cd19154608610a Stanislav Lisovskiy 2020-05-20  449  			return PTR_ERR(new_bw_state);
cd19154608610a Stanislav Lisovskiy 2020-05-20  450  
21b0324886122a Stanislav Lisovskiy 2020-05-26  451  		old_bw_state = intel_atomic_get_old_bw_state(state);
21b0324886122a Stanislav Lisovskiy 2020-05-26  452  
21b0324886122a Stanislav Lisovskiy 2020-05-26 @453  		crtc_bw = &new_bw_state->dbuf_bw[pipe];
                                                                                                 ^^^^
Not initialized.  Probably "i" was intended?

cd19154608610a Stanislav Lisovskiy 2020-05-20  454  
cd19154608610a Stanislav Lisovskiy 2020-05-20  455  		memset(&crtc_bw->used_bw, 0, sizeof(crtc_bw->used_bw));
cd19154608610a Stanislav Lisovskiy 2020-05-20  456  
cd19154608610a Stanislav Lisovskiy 2020-05-20  457  		for_each_plane_id_on_crtc(crtc, plane_id) {
cd19154608610a Stanislav Lisovskiy 2020-05-20  458  			const struct skl_ddb_entry *plane_alloc =
cd19154608610a Stanislav Lisovskiy 2020-05-20  459  				&crtc_state->wm.skl.plane_ddb_y[plane_id];
cd19154608610a Stanislav Lisovskiy 2020-05-20  460  			const struct skl_ddb_entry *uv_plane_alloc =
cd19154608610a Stanislav Lisovskiy 2020-05-20  461  				&crtc_state->wm.skl.plane_ddb_uv[plane_id];
cd19154608610a Stanislav Lisovskiy 2020-05-20  462  			unsigned int data_rate = crtc_state->data_rate[plane_id];
cd19154608610a Stanislav Lisovskiy 2020-05-20  463  			unsigned int dbuf_mask = 0;
cd19154608610a Stanislav Lisovskiy 2020-05-20  464  
cd19154608610a Stanislav Lisovskiy 2020-05-20  465  			dbuf_mask |= skl_ddb_dbuf_slice_mask(dev_priv, plane_alloc);
cd19154608610a Stanislav Lisovskiy 2020-05-20  466  			dbuf_mask |= skl_ddb_dbuf_slice_mask(dev_priv, uv_plane_alloc);
cd19154608610a Stanislav Lisovskiy 2020-05-20  467  
cd19154608610a Stanislav Lisovskiy 2020-05-20  468  			/*
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  469  			 * FIXME: To calculate that more properly we probably
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  470  			 * need to to split per plane data_rate into data_rate_y
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  471  			 * and data_rate_uv for multiplanar formats in order not
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  472  			 * to get accounted those twice if they happen to reside
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  473  			 * on different slices.
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  474  			 * However for pre-icl this would work anyway because
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  475  			 * we have only single slice and for icl+ uv plane has
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  476  			 * non-zero data rate.
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  477  			 * So in worst case those calculation are a bit
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  478  			 * pessimistic, which shouldn't pose any significant
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  479  			 * problem anyway.
cd19154608610a Stanislav Lisovskiy 2020-05-20  480  			 */
cd19154608610a Stanislav Lisovskiy 2020-05-20  481  			for_each_dbuf_slice_in_mask(slice_id, dbuf_mask)
cd19154608610a Stanislav Lisovskiy 2020-05-20  482  				crtc_bw->used_bw[slice_id] += data_rate;
cd19154608610a Stanislav Lisovskiy 2020-05-20  483  		}
21b0324886122a Stanislav Lisovskiy 2020-05-26  484  	}
21b0324886122a Stanislav Lisovskiy 2020-05-26  485  
21b0324886122a Stanislav Lisovskiy 2020-05-26  486  	if (!old_bw_state)
21b0324886122a Stanislav Lisovskiy 2020-05-26  487  		return 0;
21b0324886122a Stanislav Lisovskiy 2020-05-26  488  
21b0324886122a Stanislav Lisovskiy 2020-05-26  489  	for_each_pipe(dev_priv, pipe) {
21b0324886122a Stanislav Lisovskiy 2020-05-26  490  		struct intel_dbuf_bw *crtc_bw;
21b0324886122a Stanislav Lisovskiy 2020-05-26  491  
21b0324886122a Stanislav Lisovskiy 2020-05-26  492  		crtc_bw = &new_bw_state->dbuf_bw[pipe];
cd19154608610a Stanislav Lisovskiy 2020-05-20  493  
cd19154608610a Stanislav Lisovskiy 2020-05-20  494  		for_each_dbuf_slice(slice_id) {
cd19154608610a Stanislav Lisovskiy 2020-05-20  495  			/*
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  496  			 * Current experimental observations show that contrary
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  497  			 * to BSpec we get underruns once we exceed 64 * CDCLK
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  498  			 * for slices in total.
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  499  			 * As a temporary measure in order not to keep CDCLK
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  500  			 * bumped up all the time we calculate CDCLK according
cac91e671ad5dc Stanislav Lisovskiy 2020-05-22  501  			 * to this formula for  overall bw consumed by slices.
cd19154608610a Stanislav Lisovskiy 2020-05-20  502  			 */
cd19154608610a Stanislav Lisovskiy 2020-05-20  503  			max_bw += crtc_bw->used_bw[slice_id];
cd19154608610a Stanislav Lisovskiy 2020-05-20  504  		}
cd19154608610a Stanislav Lisovskiy 2020-05-20  505  	}
cd19154608610a Stanislav Lisovskiy 2020-05-20  506  
21b0324886122a Stanislav Lisovskiy 2020-05-26  507  	new_bw_state->min_cdclk = max_bw / 64;
cd19154608610a Stanislav Lisovskiy 2020-05-20  508  
cd19154608610a Stanislav Lisovskiy 2020-05-20  509  	if (new_bw_state->min_cdclk != old_bw_state->min_cdclk) {
cd19154608610a Stanislav Lisovskiy 2020-05-20  510  		int ret = intel_atomic_lock_global_state(&new_bw_state->base);
cd19154608610a Stanislav Lisovskiy 2020-05-20  511  
cd19154608610a Stanislav Lisovskiy 2020-05-20  512  		if (ret)
cd19154608610a Stanislav Lisovskiy 2020-05-20  513  			return ret;
cd19154608610a Stanislav Lisovskiy 2020-05-20  514  	}
cd19154608610a Stanislav Lisovskiy 2020-05-20  515  
cd19154608610a Stanislav Lisovskiy 2020-05-20  516  	return 0;
cd19154608610a Stanislav Lisovskiy 2020-05-20  517  }

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--b2ktwntdbf0dPnbx
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
3S4MMkv3WjXopJT/AWg2AT+ceQIA

--b2ktwntdbf0dPnbx
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--b2ktwntdbf0dPnbx--
