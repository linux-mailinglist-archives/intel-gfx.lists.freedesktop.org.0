Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2E11988CD
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 02:20:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B7646E506;
	Tue, 31 Mar 2020 00:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7112A6E506
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 00:20:53 +0000 (UTC)
IronPort-SDR: jCek0qbeVwI8nl4UQT5ONB/tkqQxcrlDwdltknrakpe8TDFbhqjeRVsYCH3ywL5E4bmPVnzwQu
 48qOvFRi61zg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 17:20:52 -0700
IronPort-SDR: jLaWF66M956bGxOQFMLE89GmW0zp1CgwRXlXYo0RCniAla1Lu8gDusROiIBz1X1d6rz9p5b7S2
 PPz/zW86QuFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,326,1580803200"; d="scan'208";a="395310262"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga004.jf.intel.com with ESMTP; 30 Mar 2020 17:20:52 -0700
Date: Mon, 30 Mar 2020 17:22:50 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <20200331002250.GA6703@intel.com>
References: <20200319215119.GA11219@intel.com>
 <20200324051111.29398-1-animesh.manna@intel.com>
 <20200327184503.GB22190@intel.com>
 <2a3969f3-332c-99e4-a153-e0eb78ae0540@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2a3969f3-332c-99e4-a153-e0eb78ae0540@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v7 6/7] drm/i915/dp: Register definition for
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 30, 2020 at 09:31:44AM +0530, Manna, Animesh wrote:
> 
> On 28-03-2020 00:15, Manasi Navare wrote:
> >On Tue, Mar 24, 2020 at 10:41:11AM +0530, Animesh Manna wrote:
> >>DP_COMP_CTL and DP_COMP_PAT register used to program DP
> >>compliance pattern.
> >>
> >>v1: Initial patch.
> >>v2: used pipe instead of port in macro definition. [Manasi]
> >>v3: used trans_offset for offset calculation. [Manasi]
> >>v4: Used MMIO_PIPE for evenly spaced register offset instead
> >>MMIO_PIPE2. [Ville]
> >>
> >>Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> >>Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> >>---
> >>  drivers/gpu/drm/i915/i915_reg.h | 18 ++++++++++++++++++
> >>  1 file changed, 18 insertions(+)
> >>
> >>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> >>index 309cb7d96b35..465862ed2cf8 100644
> >>--- a/drivers/gpu/drm/i915/i915_reg.h
> >>+++ b/drivers/gpu/drm/i915/i915_reg.h
> >>@@ -9792,6 +9792,24 @@ enum skl_power_gate {
> >>  #define  DDI_BUF_BALANCE_LEG_ENABLE	(1 << 31)
> >>  #define DDI_BUF_TRANS_HI(port, i)	_MMIO(_PORT(port, _DDI_BUF_TRANS_A, _DDI_BUF_TRANS_B) + (i) * 8 + 4)
> >>+/* DDI DP Compliance Control */
> >>+#define _DDI_DP_COMP_CTL_A			0x605F0
> >>+#define _DDI_DP_COMP_CTL_B			0x615F0
> >>+#define DDI_DP_COMP_CTL(pipe)			_MMIO_PIPE(pipe, _DDI_DP_COMP_CTL_A, _DDI_DP_COMP_CTL_B)
> >This looks good now.
> >
> >>+#define   DDI_DP_COMP_CTL_ENABLE		(1 << 31)
> >>+#define   DDI_DP_COMP_CTL_D10_2			(0 << 28)
> >>+#define   DDI_DP_COMP_CTL_SCRAMBLED_0		(1 << 28)
> >>+#define   DDI_DP_COMP_CTL_PRBS7			(2 << 28)
> >>+#define   DDI_DP_COMP_CTL_CUSTOM80		(3 << 28)
> >>+#define   DDI_DP_COMP_CTL_HBR2			(4 << 28)
> >>+#define   DDI_DP_COMP_CTL_SCRAMBLED_1		(5 << 28)
> >>+#define   DDI_DP_COMP_CTL_HBR2_RESET		(0xFC << 0)
> >>+
> >>+/* DDI DP Compliance Pattern */
> >>+#define _DDI_DP_COMP_PAT_A			0x605F4
> >>+#define _DDI_DP_COMP_PAT_B			0x615F4
> >>+#define DDI_DP_COMP_PAT(pipe, i)		_MMIO(_PIPE(pipe, _DDI_DP_COMP_PAT_A, _DDI_DP_COMP_PAT_B) + (i) * 4)
> >I still dont understand why we need to use that i argument here and why cant just pipe give us the desired offset
> >with _MMIO_PIPE(pipe, _DDI_DP_COMP_PAT_A, _DDI_DP_COMP_PAT_B) ?
> >
> >IMO we should be able to use the above since even here the registers are evenly offseted (0x605F4, 0x615F4, 0x62F54, 0x63F54)
> 
> The offset you mentioned above is for respective pipe A,B,C,D. How we can write 80 bit custom pattern in it? For pipe A, need to write 0x605F4, 0x605F8, 0x605FC for writing 80 bit .. rt?
>

Ah okay its for making sure we write 32 bits at a time, got it thanks.

With that

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi
 
> Regards,
> Animesh
> 
> >
> >Regards
> >Manasi
> >
> >>+
> >>  /* Sideband Interface (SBI) is programmed indirectly, via
> >>   * SBI_ADDR, which contains the register offset; and SBI_DATA,
> >>   * which contains the payload */
> >>-- 
> >>2.24.0
> >>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
