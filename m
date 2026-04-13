Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNn2B+fv3GmvYQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 15:30:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0143EC8BA
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 15:30:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41D3810E449;
	Mon, 13 Apr 2026 13:30:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SjE8lp60";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AA7C10E445;
 Mon, 13 Apr 2026 13:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776087009; x=1807623009;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=EaZDrPfjh85b39EOno9cB8zfjPEN60TUCM0QTg9HfXk=;
 b=SjE8lp6033BPXoI0bj3201e3MopBiq/b0LppGhuABs5I/LiEibfzGs/K
 1UJZH5CCYsIWCfVfyN9N5FwArbFCQNJMTBsa9aiX2jEwOC1Si3SeMugYz
 id9zjofUqJ/58oP/LKl29xADPsDyZXdcb1qolWY3sAfQUAB1RR6XqldPI
 1rhIjd4STqcc8eZKI18oUgn8WN+KWZ4a5GVzy6HgnYu4FC7y5aWUcjc8y
 GrtLMcua/aPlIPF+C1cXKQ+kaSLSNS+8yGMJs7BHQg9L35gNgmSLpxLsr
 419lRV6ZdsAUNbo8bLVxrI8xhumku7W4z0P/K+B0kZLbcy/cCSAArfcWa A==;
X-CSE-ConnectionGUID: dH1UFYLxTfKfOz3dr4upiw==
X-CSE-MsgGUID: kw9VYxOKQnC1KETQz2L1CA==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="88403937"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="88403937"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 06:30:09 -0700
X-CSE-ConnectionGUID: tbwxH7xRTmyJJtkVf0RAUQ==
X-CSE-MsgGUID: p06gP0HZRyy5S45NUTJScw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="228916730"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.182])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 06:29:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Kory Maincent <kory.maincent@bootlin.com>, Dmitry Baryshkov
 <dmitry.baryshkov@oss.qualcomm.com>
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Rodrigo
 Vivi <rodrigo.vivi@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Dave
 Airlie <airlied@redhat.com>, Jesse Barnes <jbarnes@virtuousgeek.org>, Eric
 Anholt <eric@anholt.net>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Chun-Kuang Hu
 <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Matthias
 Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>, Mark Yacoub <markyacoub@google.com>, Sean
 Paul <seanpaul@google.com>, Louis Chauvet <louis.chauvet@bootlin.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Simona Vetter <simona.vetter@ffwll.ch>
Subject: Re: [PATCH RFC 00/12] Add support for DisplayPort link training
 information report
In-Reply-To: <20260413141000.0e190dcc@kmaincent-XPS-13-7390>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com>
 <adgNxaFhbQaxC5E_@intel.com>
 <u4ononk4cpccx77gvlywtfen5rmyslvr72v7olkhdrjf65aqce@xo777vofhcan>
 <20260413141000.0e190dcc@kmaincent-XPS-13-7390>
Date: Mon, 13 Apr 2026 16:29:55 +0300
Message-ID: <3698b69f20481ff9c6fb1002b46f9862a1fdd03d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,redhat.com,virtuousgeek.org,anholt.net,kernel.org,suse.de,linaro.org,ideasonboard.com,kwiboo.se,pengutronix.de,collabora.com,chris-wilson.co.uk,bootlin.com,google.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,bootlin.com:email,wikipedia.org:url,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: BF0143EC8BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 13 Apr 2026, Kory Maincent <kory.maincent@bootlin.com> wrote:
> On Fri, 10 Apr 2026 00:36:09 +0300
> Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> wrote:
>
>> On Thu, Apr 09, 2026 at 11:36:21PM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
>> > On Thu, Apr 09, 2026 at 07:08:16PM +0200, Kory Maincent wrote:=20=20
>> > > DisplayPort link training negotiates the physical-layer parameters n=
eeded
>> > > for a reliable connection: lane count, link rate, voltage swing,
>> > > pre-emphasis, and optionally Display Stream Compression (DSC). Curre=
ntly,
>> > > each driver exposes this state in its own way, often through
>> > > driver-specific debugfs entries, with no standard interface for user=
space
>> > > diagnostic and monitoring tools.
>> > >=20
>> > > This series introduces a generic, DRM-managed framework for exposing=
 DP
>> > > link training state as standard connector properties, modeled after =
the
>> > > existing HDMI helper drmm_connector_hdmi_init().
>> > >=20
>> > > The new drmm_connector_dp_init() helper initializes a DP connector a=
nd
>> > > registers the following connector properties to expose the negotiate=
d link
>> > > state to userspace:
>> > >=20
>> > > - num_lanes:      negotiated lane count (1, 2 or 4)
>> > > - link_rate:      negotiated link rate
>> > > - dsc_en:         whether Display Stream Compression is active
>> > > - voltage_swingN: per-lane voltage swing level (lanes 0-3)
>> > > - pre_emphasisN:  per-lane pre-emphasis level (lanes 0-3)=20=20
>> >=20
>> > I don't see why any real userspace would be interested in those (apart
>> > from maybe DSC). If this is just for diagnostics and whatnot then I
>> > think sysfs/debugfs could be a better fit.=20=20
>>=20
>> I'd agree here. Please consider implementing it as a debugfs interface,
>> possibly reusing the Intel's format.
>
> Sorry, I completely forgot to include a paragraph explaining the rationale
> behind using DRM properties.
>
> This DisplayPort link information report was requested by OSes to allow t=
hem to
> assess the capabilities of each DisplayPort connector on the system, and =
to
> guide users from the most to least capable ones. It will also enable the =
OS to
> warn the user when a cable is too long or experiencing noise (indicated b=
y high
> voltage swing and pre-emphasis levels).

The selection of the number of lanes or link rate are at the discretion
of the driver, or link policy manager in DP spec terms. It does not
really convey the capabilities of the *connectors* but rather the
current *link*. Ditto for enabling DSC.

I don't think the voltage swing and pre-emphasis are really diagnostic
measures either, but a response to measuring and adapting to the
link. And if the link training failed, the driver may have already
reduced the number of lanes and link rate to compensate. So you could
appear to have the perfect link only because it was so bad at high link
rate that it was reduced already.

The policies may also vary from driver to driver, and possibly depending
on what makes sense for the hardware (e.g. power consumption with or
without DSC).

I think "link information report ... requested by OSs" is vague, and I
don't think the concept has been completely thought through. I can't see
how you could present reliable and actionable information to the user
with what the patch at hand provides. Or how it could work in a generic
manner across drivers.

Overall sounds like an XY problem [1]. We should focus on what you're
trying to achieve first, in userspace, and only then think about what
the appropriate kernel mechanism should be.

I don't think this is it.


BR,
Jani.


[1] https://en.wikipedia.org/wiki/XY_problem


>
> Since this is information that OSes will consume on a regular basis, expo=
sing
> it directly as DRM properties seems the most appropriate approach.





--=20
Jani Nikula, Intel
