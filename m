Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D617718C291
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 22:49:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 566626EA8A;
	Thu, 19 Mar 2020 21:49:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CC6E6EA8A
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 21:49:44 +0000 (UTC)
IronPort-SDR: sgWzSCZHFy+M5uRilF+VW1qxX6dVpMFwfSGc7wJbuVN3Up6i/f4pQx4j4qC7G89HMMhjE0roPe
 6+HAYY9uoG6A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 14:49:44 -0700
IronPort-SDR: xmQv+Tg7wBZX7hjjTYtQkQ3sBbSVXRtt1kxIQ1Iq1ly9nVvgQAj1fH1BXA1VJ6CS5GIP61zemR
 jRZFB/uo3OOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,573,1574150400"; d="scan'208";a="239048939"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga008.jf.intel.com with ESMTP; 19 Mar 2020 14:49:43 -0700
Date: Thu, 19 Mar 2020 14:51:20 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200319215119.GA11219@intel.com>
References: <20200317001320.GC24231@intel.com>
 <20200318063514.17943-1-animesh.manna@intel.com>
 <20200318200415.GA6198@intel.com>
 <ce9d15bf-d05b-305b-f94b-7ad6f5092306@intel.com>
 <20200319160222.GK13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319160222.GK13686@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v6 6/7] drm/i915/dp: Register definition for
 DP compliance register
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 19, 2020 at 06:02:22PM +0200, Ville Syrj=E4l=E4 wrote:
> On Thu, Mar 19, 2020 at 12:09:18PM +0530, Manna, Animesh wrote:
> > On 19-03-2020 01:34, Manasi Navare wrote:
> > > On Wed, Mar 18, 2020 at 12:05:14PM +0530, Animesh Manna wrote:
> > >> DP_COMP_CTL and DP_COMP_PAT register used to program DP
> > >> compliance pattern.
> > >>
> > >> v1: Initial patch.
> > >> v2: used pipe instead of port in macro definition. [Manasi]
> > >> v3: used trans_offset for offset calculation. [Manasi]
> > >>
> > >> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> > >> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > >> ---
> > >>   drivers/gpu/drm/i915/i915_reg.h | 16 ++++++++++++++++
> > >>   1 file changed, 16 insertions(+)
> > >>
> > >> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/=
i915_reg.h
> > >> index 309cb7d96b35..8b6c9fbfe74b 100644
> > >> --- a/drivers/gpu/drm/i915/i915_reg.h
> > >> +++ b/drivers/gpu/drm/i915/i915_reg.h
> > >> @@ -9792,6 +9792,22 @@ enum skl_power_gate {
> > >>   #define  DDI_BUF_BALANCE_LEG_ENABLE	(1 << 31)
> > >>   #define DDI_BUF_TRANS_HI(port, i)	_MMIO(_PORT(port, _DDI_BUF_TRANS=
_A, _DDI_BUF_TRANS_B) + (i) * 8 + 4)
> > >>   =

> > >> +/* DDI DP Compliance Control */
> > >> +#define _DDI_DP_COMP_CTL_A			0x605F0
> > >> +#define DDI_DP_COMP_CTL(pipe)			_MMIO_TRANS2(pipe, _DDI_DP_COMP_CTL=
_A)
> > > Any reason why you couldnt use _MMIO_PIPE2 ?
> > =

> > As DP_COMP_CTL is part of transcoder register group, so I choose _MMIO_=
TRANS2 for calculation. Yes _MMIO_PIPE2 will also work as the offset differ=
ence between subsequent pipe is same (0x1000).
> =

> The preference is:
> 1. _MMIO_PIPE()/etc. for evenly spaced things
> 2. _MMIO_PIPE2()/etc. for regular but not evenly spaced stuff
> 3. _PICK() where the above two fail
> =

> There are probably a few places that do violate that though.
> We should probably fix those to not give people the wrong ideas.
>

So here since the offsets are regular, we could just use _MMIO_PIPE for bot=
h DP_COMP_CTL
and DP_COMP_PAT?
we could define _A and _B and just use _MMIO_PIPE

Animesh, please try to use this as suggested by Ville.

Regards
Manasi =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
