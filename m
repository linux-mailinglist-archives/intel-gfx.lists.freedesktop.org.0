Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDBB15CD25
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 22:20:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C74076F87F;
	Thu, 13 Feb 2020 21:20:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD3BD6F87F
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 21:20:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 13:20:42 -0800
X-IronPort-AV: E=Sophos;i="5.70,438,1574150400"; d="scan'208";a="227379530"
Received: from unknown (HELO localhost) ([10.252.53.8])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 13:20:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <20200213210615.GK2014153@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200213140412.32697-1-stanislav.lisovskiy@intel.com>
 <20200213140412.32697-3-stanislav.lisovskiy@intel.com>
 <20200213205650.GJ2014153@mdroper-desk1.amr.corp.intel.com>
 <87tv3uw672.fsf@intel.com>
 <20200213210615.GK2014153@mdroper-desk1.amr.corp.intel.com>
Date: Thu, 13 Feb 2020 23:21:06 +0200
Message-ID: <87r1yyw5dp.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v1 2/3] drm/i915/dsc: force full modeset
 whenever DSC is enabled at probe
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 13 Feb 2020, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Thu, Feb 13, 2020 at 11:03:29PM +0200, Jani Nikula wrote:
>> On Thu, 13 Feb 2020, Matt Roper <matthew.d.roper@intel.com> wrote:
>> > On Thu, Feb 13, 2020 at 04:04:11PM +0200, Stanislav Lisovskiy wrote:
>> >> From: Jani Nikula <jani.nikula@intel.com>
>> >> 
>> >> We lack full state readout of DSC config, which may lead to DSC enable
>> >> using a config that's all zeros, failing spectacularly. Force full
>> >> modeset and thus compute config at probe to get a sane state, until we
>> >> implement DSC state readout. Any fastset that did appear to work with
>> >> DSC at probe, worked by coincidence. [1] is an example of a change that
>> >> triggered the issue on TGL DSI DSC.
>> >> 
>> >> [1] http://patchwork.freedesktop.org/patch/msgid/20200212150102.7600-1-ville.syrjala@linux.intel.com
>> >> 
>> >> Cc: Manasi Navare <manasi.d.navare@intel.com>
>> >> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> >> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> >> Cc: stable@vger.kernel.org
>> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >
>> > Should this be
>> >
>> > Fixes: fbacb15ea814 ("drm/i915/dsc: add basic hardware state readout support")
>> >
>> > since that's where we added the basic readout with a FIXME to add more
>> > later?
>> 
>> That added some readout and checks, but the problem existed before them
>> too.
>
> Right, but that's as far back as we can go with a fix, right?  Since
> before that we don't even read out enough to know that compression is
> enabled?

Ah, that's right. Any fixes predating that commit would have to be
different. Perhaps we'll just settle for this. ;)

Thanks,
Jani.



>
>
> Matt
>
>> 
>> BR,
>> Jani.
>> 
>> 
>> 
>> >
>> > I don't know the specifics of DSC and what state we need, but the
>> > approach here seems reasonable.
>> >
>> > Acked-by: Matt Roper <matthew.d.roper@intel.com>
>> >
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_display.c | 18 ++++++++++++++++++
>> >>  1 file changed, 18 insertions(+)
>> >> 
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> >> index 61ba1f2256a0..1e3f2cc27db8 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> >> @@ -17828,6 +17828,24 @@ static int intel_initial_commit(struct drm_device *dev)
>> >>  			 * have readout for pipe gamma enable.
>> >>  			 */
>> >>  			crtc_state->uapi.color_mgmt_changed = true;
>> >> +
>> >> +			/*
>> >> +			 * FIXME hack to force full modeset when DSC is being
>> >> +			 * used.
>> >> +			 *
>> >> +			 * As long as we do not have full state readout and
>> >> +			 * config comparison of crtc_state->dsc, we have no way
>> >> +			 * to ensure reliable fastset. Remove once we have
>> >> +			 * readout for DSC.
>> >> +			 */
>> >> +			if (crtc_state->dsc.compression_enable) {
>> >> +				ret = drm_atomic_add_affected_connectors(state,
>> >> +									 &crtc->base);
>> >> +				if (ret)
>> >> +					goto out;
>> >> +				crtc_state->uapi.mode_changed = true;
>> >> +				drm_dbg_kms(dev, "Force full modeset for DSC\n");
>> >> +			}
>> >>  		}
>> >>  	}
>> >>  
>> >> -- 
>> >> 2.24.1.485.gad05a3d8e5
>> >> 
>> >> _______________________________________________
>> >> Intel-gfx mailing list
>> >> Intel-gfx@lists.freedesktop.org
>> >> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>> 
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
