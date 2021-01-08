Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE612EF0FA
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 11:59:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 336EC6E08C;
	Fri,  8 Jan 2021 10:59:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D4B56E08C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 10:59:44 +0000 (UTC)
IronPort-SDR: PdYTwP5rJ4TNOrNNgPLrzfFM76+lDyjHhu+pFdbRXD2bd2QhhVianOZpMyfElB9fX2Ik1oEBvr
 lmx8Mi/VUApw==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="157356666"
X-IronPort-AV: E=Sophos;i="5.79,330,1602572400"; d="scan'208";a="157356666"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 02:59:44 -0800
IronPort-SDR: VMH8DSaDEfB6Xk3luarpS0bHxMKX2UfDaSF9qger5GDOFng69tPbHXYMkyEdiJgELwrjZ6qHM8
 rLtLh1gnhTWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,330,1602572400"; d="scan'208";a="380089444"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga008.jf.intel.com with ESMTP; 08 Jan 2021 02:59:43 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 8 Jan 2021 10:59:42 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 8 Jan 2021 16:29:40 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 09/13] drm/i915/pps: rename
 intel_dp_check_edp to intel_pps_check_power_unlocked
Thread-Index: AQHW2HHagsTPX2hhn0OXiDljK2VxaKoNsPIAgA+VbACAAGJ8oA==
Date: Fri, 8 Jan 2021 10:59:40 +0000
Message-ID: <ad00a6fc05104df0b2441e9644926ed6@intel.com>
References: <cover.1608648128.git.jani.nikula@intel.com>
 <a5a60c020b4f9277de1276b2d6010119a5f072ab.1608648128.git.jani.nikula@intel.com>
 <20201229070456.GG11717@intel.com> <87a6tjzpiz.fsf@intel.com>
In-Reply-To: <87a6tjzpiz.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 09/13] drm/i915/pps: rename
 intel_dp_check_edp to intel_pps_check_power_unlocked
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@intel.com>
> Sent: Friday, January 8, 2021 4:04 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 09/13] drm/i915/pps: rename
> intel_dp_check_edp to intel_pps_check_power_unlocked
> 
> On Tue, 29 Dec 2020, Anshuman Gupta <anshuman.gupta@intel.com>
> wrote:
> > On 2020-12-22 at 20:19:49 +0530, Jani Nikula wrote:
> >> Follow the usual naming pattern for functions.
> >>
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_dp.c  | 2 +-
> >> drivers/gpu/drm/i915/display/intel_pps.c | 2 +-
> >> drivers/gpu/drm/i915/display/intel_pps.h | 2 +-
> >>  3 files changed, 3 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> >> b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index 334ba1775cd3..65406d4ccdbe 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -1046,7 +1046,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >>  	 */
> >>  	cpu_latency_qos_update_request(&i915->pm_qos, 0);
> >>
> >> -	intel_dp_check_edp(intel_dp);
> >> +	intel_pps_check_power_unlocked(intel_dp);
> >>
> >>  	/* Try to wait for any previous AUX channel activity */
> >>  	for (try = 0; try < 3; try++) {
> >> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> >> b/drivers/gpu/drm/i915/display/intel_pps.c
> >> index 3e62d1450682..dfd6722bc40e 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> >> @@ -431,7 +431,7 @@ static bool edp_have_panel_vdd(struct intel_dp
> *intel_dp)
> >>  	return intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp)) &
> >> EDP_FORCE_VDD;  }
> >>
> >> -void intel_dp_check_edp(struct intel_dp *intel_dp)
> >> +void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
> > IMHO comment to take pps_lock would be useful here.
> 
> Part of the point of this change is to name it _unlocked to highlight it does
> not take the lock, i.e. you should be aware of locking. You see this pattern
> all over the kernel. It's self-documenting code.
> 
> Moreover, after the edp check, the calls here have:
> 
> 	lockdep_assert_held(&dev_priv->pps_mutex);
> 
> which both documents the requirement as well as ensures the proper usage
> in lockdep builds. I don't think a comment adds any value.
Agreeing with you on this.
Patch looks good to me.
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com> 
> 
> BR,
> Jani.
> 
> 
> > Thanks,
> > Anshuman.
> >>  {
> >>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h
> >> b/drivers/gpu/drm/i915/display/intel_pps.h
> >> index 4780b59a59df..8dda282abd42 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_pps.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> >> @@ -22,7 +22,6 @@ intel_wakeref_t intel_pps_unlock(struct intel_dp
> *intel_dp, intel_wakeref_t wake
> >>  #define with_intel_pps_lock(dp, wf)
> 		\
> >>  	for ((wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp),
> >> (wf)))
> >>
> >> -void intel_dp_check_edp(struct intel_dp *intel_dp);  void
> >> intel_pps_backlight_on(struct intel_dp *intel_dp);  void
> >> intel_pps_backlight_off(struct intel_dp *intel_dp);  void
> >> intel_pps_backlight_power(struct intel_connector *connector, bool
> >> enable); @@ -31,6 +30,7 @@ bool intel_pps_vdd_on_unlocked(struct
> >> intel_dp *intel_dp);  void intel_pps_vdd_off_unlocked(struct intel_dp
> >> *intel_dp, bool sync);  void intel_pps_on_unlocked(struct intel_dp
> >> *intel_dp);  void intel_pps_off_unlocked(struct intel_dp *intel_dp);
> >> +void intel_pps_check_power_unlocked(struct intel_dp *intel_dp);
> >>
> >>  void intel_pps_vdd_on(struct intel_dp *intel_dp);  void
> >> intel_pps_on(struct intel_dp *intel_dp);
> >> --
> >> 2.20.1
> >>
> >> _______________________________________________
> >> Intel-gfx mailing list
> >> Intel-gfx@lists.freedesktop.org
> >> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
