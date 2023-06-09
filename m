Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F32E7294A5
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 11:19:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEDB710E23B;
	Fri,  9 Jun 2023 09:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41D1A10E23B
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 09:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686302373; x=1717838373;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=dy4EVR1XUz2BHMlNtHhhlCOf+pKXjHvqhhDVSNgL+ss=;
 b=Qtkf/f0sASDyS+tBQkT7cMUj89r4YUZMT4xlLvsTklXTjbj5xRiCJOJo
 2TWPROaf60pAogt83kYVkQ70W8q+brjXfRnGfm/D1k63rLm9K4nah+mGM
 SZD5FrHWUXuGMjxBmpLaxvqRztThwCVYfdqcFiDfb2cibrlBG1gz3Xv6l
 Mr2XbLkzKbCZ08HFRk+2OU59DpuipF7hxGAAoiht2bykE9pdGEZWfuoyv
 LiGCbl8MtPdacc9LriLi+Dwa5zhQVi6ofQXw3WyNmM/pT+irMONisTVJ4
 4cldzb546mlIZrrLvGFFR4bK0DvVXaotwQrbIzs+kvowR4vs9oKrEXd+g Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="342233506"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="342233506"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 02:19:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="780241246"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="780241246"
Received: from skolhe-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.254])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 02:19:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZIIwlpYuGQAYQNYK@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
 <20230531134806.23065-7-ville.syrjala@linux.intel.com>
 <87edmudiz5.fsf@intel.com> <ZIIwlpYuGQAYQNYK@intel.com>
Date: Fri, 09 Jun 2023 12:19:26 +0300
Message-ID: <87sfb1q9gh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 6/7] drm/i915: Init DDI outputs based on
 port_mask on skl+
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 08 Jun 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Jun 02, 2023 at 05:41:50PM +0300, Jani Nikula wrote:
>> This reflects current code, but apparently commit e341c618acde
>> ("drm/i915/adl_s: Initialize display for ADL-S") stopped initializing
>> DSI for ADL-S. It does support DSI.
>
> Not according to bspec. The diagram does still show the
> DSI transcoders being present but the PHY is missing.

My bad. R-b holds.

>
>>=20
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>>=20
>>=20
>> > +
>> > +		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>> > +			vlv_dsi_init(dev_priv);
>> >  	} else if (HAS_DDI(dev_priv)) {
>> >  		u32 found;
>>=20
>> --=20
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
