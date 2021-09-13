Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 460CC4099F8
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 18:51:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 642CE6E207;
	Mon, 13 Sep 2021 16:51:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C6F56E207
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 16:51:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="221399045"
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="221399045"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 09:51:11 -0700
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="543344757"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 09:51:10 -0700
Date: Mon, 13 Sep 2021 19:44:40 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Jani Nikula <jani.nikula@intel.com>
cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org, uma.shankar@intel.com, 
 ville.syrjala@linux.intel.com
In-Reply-To: <871r5w4f0b.fsf@intel.com>
Message-ID: <alpine.DEB.2.22.394.2109131940210.3554566@eliteleevi.tm.intel.com>
References: <20210910131916.3782933-1-kai.vehmanen@linux.intel.com>
 <871r5w4f0b.fsf@intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: program audio CDCLK-TS
 for keepalives
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

Hi,

On Fri, 10 Sep 2021, Jani Nikula wrote:

> Nitpick, switching to i915 variable name instead of dev_priv is
> preferred for new code throughout.

ack, changed.

> On Fri, 10 Sep 2021, Kai Vehmanen <kai.vehmanen@linux.intel.com> wrote:
> > +	if (DISPLAY_VER(dev_priv) >= 13) {
> > +		tmp = intel_de_read(dev_priv, AUD_TS_CDCLK_M);
> > +		tmp &= ~AUD_TS_CDCLK_M_EN;
> > +		intel_de_write(dev_priv, AUD_TS_CDCLK_M, tmp);
> 
> Nitpick, could use intel_de_rmw() to do this on a single line.

True, changed.

> > +static int get_aud_ts_cdclk_m_n(int refclk, int cdclk, struct aud_ts_cdclk_m_n *aud_ts)
> > +{
> > +	if (!aud_ts)
> > +		return -EINVAL;
> > +
> > +	if (refclk == 24000)
> > +		aud_ts->m = 12;
> > +	else
> > +		aud_ts->m = 15;
> > +
> > +	aud_ts->n = cdclk * aud_ts->m / 24000;
> > +
> > +	return 0;
> 
> Is the return code added for future? For now, it just complicates this
> for no apparent reason.

An early version had a table lookup and some refclk values were not 
supported. But, but, this version just calculates with a formula, so
there's no real reason to have the return code anymore. A good point, 
removed.

> > +			drm_dbg(&dev_priv->drm, "aud_ts_cdclk set to M=%u, N=%u\n",
> > +				aud_ts.m, aud_ts.n);
> 
> Usually drm_dbg_kms() for display code, including audio.

Gah, indeed, fixed.

> I'll need to look up the bspec too, can't do that right now... this was
> just the nitpicks. ;D

Keep 'em coming! :)

Br, Kai
