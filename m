Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A11151848EE
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 15:14:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E93E06EBD3;
	Fri, 13 Mar 2020 14:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C8656EBD3
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 14:14:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 07:14:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,548,1574150400"; d="scan'208";a="237233436"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 13 Mar 2020 07:14:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Mar 2020 16:14:07 +0200
Date: Fri, 13 Mar 2020 16:14:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200313141407.GM13686@intel.com>
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
 <20200309161204.17792-4-stanislav.lisovskiy@intel.com>
 <20200311160854.GB13686@intel.com>
 <9ffa74c26bc349aab1bd2fe8f427f451@intel.com>
 <20200313132611.GK13686@intel.com>
 <93708764786145ff9c8ee2c84af6ff41@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <93708764786145ff9c8ee2c84af6ff41@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v19 3/8] drm/i915: Add intel_bw_get_*_state
 helpers
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 13, 2020 at 01:57:58PM +0000, Lisovskiy, Stanislav wrote:
> >> >> Add correspondent helpers to be able to get old/new bandwidth
> >> >> global state object.
> >> >>
> >> >> v2: - Fixed typo in function call
> >> >> v3: - Changed new functions naming to use convention proposed
> >> >>       by Jani Nikula, i.e intel_bw_* in intel_bw.c file.
> >>
> >> >Still nak on the rename.
> >>
> >> Cool. Discuss it with Jani Nikula then, to have at least some common s=
trategy on how to be picky on me.
> =

> >The strategy is either rename all of these functions or none so that we
> >don't end up with random inconsistencies all over the place.
> =

> =

> Initially Jani Nikula wrote that he is trying to encourage people to call=
 functions
> =

> starting with the module name. OK. Done it.
> =

> =

> You say that the opposite and nack. Now it just turns out that it is agai=
n _me_ - poor minded, who didn't understand that I need to rename
> =

> all functions now here as well, including those completely unrelated to t=
hat patch.
> =

> Sure - we have "plenty" of time!
> =

> =

> Or may be I shouldn't rename - kind of confused now.

If you do a mass rename do it as a separate series.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
