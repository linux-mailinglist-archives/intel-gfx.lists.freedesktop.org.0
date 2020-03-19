Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E680418BBD0
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 17:02:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E76E6EA2E;
	Thu, 19 Mar 2020 16:02:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D807B6EA32
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 16:02:26 +0000 (UTC)
IronPort-SDR: fAn+blelFhcn2txyjpNpdcZURsH+SAzGTu5Z8+j4Kukfl2KVTlwFZ7XsZewf55+UP3xVSZs75q
 il14cXiA4FDg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 09:02:25 -0700
IronPort-SDR: vVlg0yHEq54/BLNbxIjzKhu/xRXNlRmr6QU3K13e1s8Q02D2tO45l2Uvx2o8UW+UNy0qAIrOEU
 tDIq6qcjVT9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,572,1574150400"; d="scan'208";a="280127625"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 19 Mar 2020 09:02:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Mar 2020 18:02:22 +0200
Date: Thu, 19 Mar 2020 18:02:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <20200319160222.GK13686@intel.com>
References: <20200317001320.GC24231@intel.com>
 <20200318063514.17943-1-animesh.manna@intel.com>
 <20200318200415.GA6198@intel.com>
 <ce9d15bf-d05b-305b-f94b-7ad6f5092306@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ce9d15bf-d05b-305b-f94b-7ad6f5092306@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Thu, Mar 19, 2020 at 12:09:18PM +0530, Manna, Animesh wrote:
> On 19-03-2020 01:34, Manasi Navare wrote:
> > On Wed, Mar 18, 2020 at 12:05:14PM +0530, Animesh Manna wrote:
> >> DP_COMP_CTL and DP_COMP_PAT register used to program DP
> >> compliance pattern.
> >>
> >> v1: Initial patch.
> >> v2: used pipe instead of port in macro definition. [Manasi]
> >> v3: used trans_offset for offset calculation. [Manasi]
> >>
> >> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> >> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/i915_reg.h | 16 ++++++++++++++++
> >>   1 file changed, 16 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i9=
15_reg.h
> >> index 309cb7d96b35..8b6c9fbfe74b 100644
> >> --- a/drivers/gpu/drm/i915/i915_reg.h
> >> +++ b/drivers/gpu/drm/i915/i915_reg.h
> >> @@ -9792,6 +9792,22 @@ enum skl_power_gate {
> >>   #define  DDI_BUF_BALANCE_LEG_ENABLE	(1 << 31)
> >>   #define DDI_BUF_TRANS_HI(port, i)	_MMIO(_PORT(port, _DDI_BUF_TRANS_A=
, _DDI_BUF_TRANS_B) + (i) * 8 + 4)
> >>   =

> >> +/* DDI DP Compliance Control */
> >> +#define _DDI_DP_COMP_CTL_A			0x605F0
> >> +#define DDI_DP_COMP_CTL(pipe)			_MMIO_TRANS2(pipe, _DDI_DP_COMP_CTL_A)
> > Any reason why you couldnt use _MMIO_PIPE2 ?
> =

> As DP_COMP_CTL is part of transcoder register group, so I choose _MMIO_TR=
ANS2 for calculation. Yes _MMIO_PIPE2 will also work as the offset differen=
ce between subsequent pipe is same (0x1000).

The preference is:
1. _MMIO_PIPE()/etc. for evenly spaced things
2. _MMIO_PIPE2()/etc. for regular but not evenly spaced stuff
3. _PICK() where the above two fail

There are probably a few places that do violate that though.
We should probably fix those to not give people the wrong ideas.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
