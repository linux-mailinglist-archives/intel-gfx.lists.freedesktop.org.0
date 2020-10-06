Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9972849D8
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 12:00:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C35C89CC4;
	Tue,  6 Oct 2020 10:00:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C29D89CC4
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 10:00:01 +0000 (UTC)
IronPort-SDR: ZTOUYlCc5KsAcLGSWwxfaj22WJmQAkQUoavfcdxUMEthzrjVpryORyupHtvIBYu2ENtUZRAos5
 sdibCjNBBXzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="144338712"
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="144338712"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 03:00:00 -0700
IronPort-SDR: l8d7+2glGxsvEMWRkntkNu1UlYrZX7A6snMYKwG3Y9HkrecsENAHK28csKPQaYAfJ7Lue9yEmt
 Glio/5dffXMA==
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="527275642"
Received: from kchandar-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.35])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 02:59:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com
In-Reply-To: <20201006095543.GA1494421@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201003010708.1272753-1-imre.deak@intel.com>
 <20201005215311.1475666-1-imre.deak@intel.com> <87d01vk7vh.fsf@intel.com>
 <20201006095543.GA1494421@ideak-desk.fi.intel.com>
Date: Tue, 06 Oct 2020 13:00:21 +0300
Message-ID: <87a6wzk72i.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 2/5] drm/i915: Move the initial fastset
 commit check to encoder hooks
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

On Tue, 06 Oct 2020, Imre Deak <imre.deak@intel.com> wrote:
> On Tue, Oct 06, 2020 at 12:42:58PM +0300, Jani Nikula wrote:
>> On Tue, 06 Oct 2020, Imre Deak <imre.deak@intel.com> wrote:
>> > +static bool gen11_dsi_initial_fastset_check(struct intel_encoder *encoder,
>> > +					    struct intel_crtc_state *crtc_state)
>> > +{
>> > +	if (crtc_state->dsc.compression_enable) {
>> > +		drm_dbg_kms(encoder->base.dev, "Forcing full modeset due to DSC being enabled\n");
>> > +		crtc_state->uapi.mode_changed = true;
>> 
>> Just musing... if it's a *check*, why do we pass in a non-const
>> crtc_state and modify it here?
>> 
>> Would it not be cleaner to pass in const crtc_state and set
>> crtc_state->uapi.mode_changed in the caller based on the return value?
>
> The encoder can update the *_changed flags in crtc_state depending on
> what is preventing a fastset.

Okay... is this a good design? ;)

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
