Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 779AD1591A1
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 15:12:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA7C46EE56;
	Tue, 11 Feb 2020 14:12:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D8C56EE56
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 14:12:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 06:12:41 -0800
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="226513885"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 06:12:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Lisovskiy\, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <7137346ae4f624b263d85ce79ea62fea70de5037.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200211114038.21035-1-stanislav.lisovskiy@intel.com>
 <87zhdpz35z.fsf@intel.com>
 <713d424e3ab55716b9f475ee0453dc3e4848e226.camel@intel.com>
 <87r1z1z0ri.fsf@intel.com>
 <7137346ae4f624b263d85ce79ea62fea70de5037.camel@intel.com>
Date: Tue, 11 Feb 2020 16:12:35 +0200
Message-ID: <87d0alyzzg.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Call intel_edp_init_connector
 only for eDP.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 Feb 2020, "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com> wrote:
> Well, you can just take all those checks and put them into separate
> function. Something like:
>
> bool intel_dp_supports_mst(intel_dp) {
> 	if (HAS_DP_MST(i915) && !intel_dp_is_edp(intel_dp)) &&
>              !(INTEL_GEN(i915) < 12 && port == PORT_A) &&
>              !(INTEL_GEN(i915) <	11 && port == PORT_E))
> 			return true;
> 	return false;
> }
>
> so, then you would have it nicely looking and understandable:
>
> if (intel_dp_supports_mst(intel_dp))
> 	intel_dp_mst_encoder_init(intel_dig_port,
>                                   intel_connector->base.base.id);
>
> Anyway, I'm _not_ stating that this is _always_ the best way, but 
> I don't see at least any reasons currently why it couldn't be done so.

It's fine, until you realize you need to call a function with the
condition from more than one place, and you need to remember to have the
same conditions in all the places. So the condition is no longer in one
isolated place. It's not like we haven't thought about this before. ;)

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
