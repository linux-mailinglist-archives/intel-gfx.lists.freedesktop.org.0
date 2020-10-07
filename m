Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 136A1286ABB
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 00:12:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA4DD6E9EB;
	Wed,  7 Oct 2020 22:11:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 287AD6E9EB
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 22:11:58 +0000 (UTC)
IronPort-SDR: V11As+Pzt24U3GklX4GZy59H2nKWGhBswzvtWWP8hto6WBgwA4zDH1a81QiBuQZ/78AywB0x5f
 fHafwV21vS1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="144504535"
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="144504535"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 15:11:57 -0700
IronPort-SDR: u40de3MEC86drc8bGM5gNtelzpr8A1fnesU+Q96x8SKk2uyw6/LDnCfmXD6Xdrh7IJr/IHW3hH
 Xs+Z6nhpghLQ==
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="354218316"
Received: from lewisjos-mobl3.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.51.10])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 15:11:57 -0700
Date: Wed, 7 Oct 2020 15:11:56 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201007221156.rqchuc2k2cmpaumb@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
 <20201006143349.5561-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201006143349.5561-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 01/20] drm/i915: Sort the mess around ICP TC
 hotplugs regs
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 06, 2020 at 05:33:30PM +0300, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Move the DSC stuff out from the middle of the ICP HPD register
>definitions. The location seems to have been selected by a
>dice roll.
>
>SHPD_FILTER_CNT addition also went astray due to the DSC
>mess, so we also fix that vs. ICP_TC_HPD_{SHORT,LONG}_DETECT().
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/i915_reg.h | 215 ++++++++++++++++----------------
> 1 file changed, 107 insertions(+), 108 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 6ad9ee4243a0..efe51a4ef719 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -4618,6 +4618,110 @@ enum {
> #define  PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME	REG_BIT(2)
> #define  PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE	REG_BIT(1)
>
>+/* Icelake DSC Rate Control Range Parameter Registers */
>+#define DSCA_RC_RANGE_PARAMETERS_0		_MMIO(0x6B240)
>+#define DSCA_RC_RANGE_PARAMETERS_0_UDW		_MMIO(0x6B240 + 4)
>+#define DSCC_RC_RANGE_PARAMETERS_0		_MMIO(0x6BA40)
>+#define DSCC_RC_RANGE_PARAMETERS_0_UDW		_MMIO(0x6BA40 + 4)
>+#define _ICL_DSC0_RC_RANGE_PARAMETERS_0_PB	(0x78208)
>+#define _ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW_PB	(0x78208 + 4)
>+#define _ICL_DSC1_RC_RANGE_PARAMETERS_0_PB	(0x78308)
>+#define _ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW_PB	(0x78308 + 4)
>+#define _ICL_DSC0_RC_RANGE_PARAMETERS_0_PC	(0x78408)
>+#define _ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW_PC	(0x78408 + 4)
>+#define _ICL_DSC1_RC_RANGE_PARAMETERS_0_PC	(0x78508)
>+#define _ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW_PC	(0x78508 + 4)
>+#define ICL_DSC0_RC_RANGE_PARAMETERS_0(pipe)		_MMIO_PIPE((pipe) - PIPE_B,=
 \
>+							_ICL_DSC0_RC_RANGE_PARAMETERS_0_PB, \
>+							_ICL_DSC0_RC_RANGE_PARAMETERS_0_PC)
>+#define ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE=
_B, \
>+							_ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW_PB, \
>+							_ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW_PC)
>+#define ICL_DSC1_RC_RANGE_PARAMETERS_0(pipe)		_MMIO_PIPE((pipe) - PIPE_B,=
 \
>+							_ICL_DSC1_RC_RANGE_PARAMETERS_0_PB, \
>+							_ICL_DSC1_RC_RANGE_PARAMETERS_0_PC)
>+#define ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE=
_B, \
>+							_ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW_PB, \
>+							_ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW_PC)
>+#define RC_BPG_OFFSET_SHIFT			10
>+#define RC_MAX_QP_SHIFT				5
>+#define RC_MIN_QP_SHIFT				0
>+
>+#define DSCA_RC_RANGE_PARAMETERS_1		_MMIO(0x6B248)
>+#define DSCA_RC_RANGE_PARAMETERS_1_UDW		_MMIO(0x6B248 + 4)
>+#define DSCC_RC_RANGE_PARAMETERS_1		_MMIO(0x6BA48)
>+#define DSCC_RC_RANGE_PARAMETERS_1_UDW		_MMIO(0x6BA48 + 4)
>+#define _ICL_DSC0_RC_RANGE_PARAMETERS_1_PB	(0x78210)
>+#define _ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW_PB	(0x78210 + 4)
>+#define _ICL_DSC1_RC_RANGE_PARAMETERS_1_PB	(0x78310)
>+#define _ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW_PB	(0x78310 + 4)
>+#define _ICL_DSC0_RC_RANGE_PARAMETERS_1_PC	(0x78410)
>+#define _ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW_PC	(0x78410 + 4)
>+#define _ICL_DSC1_RC_RANGE_PARAMETERS_1_PC	(0x78510)
>+#define _ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW_PC	(0x78510 + 4)
>+#define ICL_DSC0_RC_RANGE_PARAMETERS_1(pipe)		_MMIO_PIPE((pipe) - PIPE_B,=
 \
>+							_ICL_DSC0_RC_RANGE_PARAMETERS_1_PB, \
>+							_ICL_DSC0_RC_RANGE_PARAMETERS_1_PC)
>+#define ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE=
_B, \
>+							_ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW_PB, \
>+							_ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW_PC)
>+#define ICL_DSC1_RC_RANGE_PARAMETERS_1(pipe)		_MMIO_PIPE((pipe) - PIPE_B,=
 \
>+							_ICL_DSC1_RC_RANGE_PARAMETERS_1_PB, \
>+							_ICL_DSC1_RC_RANGE_PARAMETERS_1_PC)
>+#define ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE=
_B, \
>+							_ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW_PB, \
>+							_ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW_PC)
>+
>+#define DSCA_RC_RANGE_PARAMETERS_2		_MMIO(0x6B250)
>+#define DSCA_RC_RANGE_PARAMETERS_2_UDW		_MMIO(0x6B250 + 4)
>+#define DSCC_RC_RANGE_PARAMETERS_2		_MMIO(0x6BA50)
>+#define DSCC_RC_RANGE_PARAMETERS_2_UDW		_MMIO(0x6BA50 + 4)
>+#define _ICL_DSC0_RC_RANGE_PARAMETERS_2_PB	(0x78218)
>+#define _ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW_PB	(0x78218 + 4)
>+#define _ICL_DSC1_RC_RANGE_PARAMETERS_2_PB	(0x78318)
>+#define _ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW_PB	(0x78318 + 4)
>+#define _ICL_DSC0_RC_RANGE_PARAMETERS_2_PC	(0x78418)
>+#define _ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW_PC	(0x78418 + 4)
>+#define _ICL_DSC1_RC_RANGE_PARAMETERS_2_PC	(0x78518)
>+#define _ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW_PC	(0x78518 + 4)
>+#define ICL_DSC0_RC_RANGE_PARAMETERS_2(pipe)		_MMIO_PIPE((pipe) - PIPE_B,=
 \
>+							_ICL_DSC0_RC_RANGE_PARAMETERS_2_PB, \
>+							_ICL_DSC0_RC_RANGE_PARAMETERS_2_PC)
>+#define ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE=
_B, \
>+							_ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW_PB, \
>+							_ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW_PC)
>+#define ICL_DSC1_RC_RANGE_PARAMETERS_2(pipe)		_MMIO_PIPE((pipe) - PIPE_B,=
 \
>+							_ICL_DSC1_RC_RANGE_PARAMETERS_2_PB, \
>+							_ICL_DSC1_RC_RANGE_PARAMETERS_2_PC)
>+#define ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE=
_B, \
>+							_ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW_PB, \
>+							_ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW_PC)
>+
>+#define DSCA_RC_RANGE_PARAMETERS_3		_MMIO(0x6B258)
>+#define DSCA_RC_RANGE_PARAMETERS_3_UDW		_MMIO(0x6B258 + 4)
>+#define DSCC_RC_RANGE_PARAMETERS_3		_MMIO(0x6BA58)
>+#define DSCC_RC_RANGE_PARAMETERS_3_UDW		_MMIO(0x6BA58 + 4)
>+#define _ICL_DSC0_RC_RANGE_PARAMETERS_3_PB	(0x78220)
>+#define _ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW_PB	(0x78220 + 4)
>+#define _ICL_DSC1_RC_RANGE_PARAMETERS_3_PB	(0x78320)
>+#define _ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW_PB	(0x78320 + 4)
>+#define _ICL_DSC0_RC_RANGE_PARAMETERS_3_PC	(0x78420)
>+#define _ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW_PC	(0x78420 + 4)
>+#define _ICL_DSC1_RC_RANGE_PARAMETERS_3_PC	(0x78520)
>+#define _ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW_PC	(0x78520 + 4)
>+#define ICL_DSC0_RC_RANGE_PARAMETERS_3(pipe)		_MMIO_PIPE((pipe) - PIPE_B,=
 \
>+							_ICL_DSC0_RC_RANGE_PARAMETERS_3_PB, \
>+							_ICL_DSC0_RC_RANGE_PARAMETERS_3_PC)
>+#define ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE=
_B, \
>+							_ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW_PB, \
>+							_ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW_PC)
>+#define ICL_DSC1_RC_RANGE_PARAMETERS_3(pipe)		_MMIO_PIPE((pipe) - PIPE_B,=
 \
>+							_ICL_DSC1_RC_RANGE_PARAMETERS_3_PB, \
>+							_ICL_DSC1_RC_RANGE_PARAMETERS_3_PC)
>+#define ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE=
_B, \
>+							_ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW_PB, \
>+							_ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW_PC)
>+
> /* VGA port control */
> #define ADPA			_MMIO(0x61100)
> #define PCH_ADPA                _MMIO(0xe1100)
>@@ -8305,117 +8409,12 @@ enum {
>
> #define SHOTPLUG_CTL_TC				_MMIO(0xc4034)
> #define   ICP_TC_HPD_ENABLE(tc_port)		(8 << (tc_port) * 4)
>-
>-#define SHPD_FILTER_CNT				_MMIO(0xc4038)
>-#define   SHPD_FILTER_CNT_500_ADJ		0x001D9
>-
>-/* Icelake DSC Rate Control Range Parameter Registers */
>-#define DSCA_RC_RANGE_PARAMETERS_0		_MMIO(0x6B240)
>-#define DSCA_RC_RANGE_PARAMETERS_0_UDW		_MMIO(0x6B240 + 4)
>-#define DSCC_RC_RANGE_PARAMETERS_0		_MMIO(0x6BA40)
>-#define DSCC_RC_RANGE_PARAMETERS_0_UDW		_MMIO(0x6BA40 + 4)
>-#define _ICL_DSC0_RC_RANGE_PARAMETERS_0_PB	(0x78208)
>-#define _ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW_PB	(0x78208 + 4)
>-#define _ICL_DSC1_RC_RANGE_PARAMETERS_0_PB	(0x78308)
>-#define _ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW_PB	(0x78308 + 4)
>-#define _ICL_DSC0_RC_RANGE_PARAMETERS_0_PC	(0x78408)
>-#define _ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW_PC	(0x78408 + 4)
>-#define _ICL_DSC1_RC_RANGE_PARAMETERS_0_PC	(0x78508)
>-#define _ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW_PC	(0x78508 + 4)
>-#define ICL_DSC0_RC_RANGE_PARAMETERS_0(pipe)		_MMIO_PIPE((pipe) - PIPE_B,=
 \
>-							_ICL_DSC0_RC_RANGE_PARAMETERS_0_PB, \
>-							_ICL_DSC0_RC_RANGE_PARAMETERS_0_PC)
>-#define ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE=
_B, \
>-							_ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW_PB, \
>-							_ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW_PC)
>-#define ICL_DSC1_RC_RANGE_PARAMETERS_0(pipe)		_MMIO_PIPE((pipe) - PIPE_B,=
 \
>-							_ICL_DSC1_RC_RANGE_PARAMETERS_0_PB, \
>-							_ICL_DSC1_RC_RANGE_PARAMETERS_0_PC)
>-#define ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE=
_B, \
>-							_ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW_PB, \
>-							_ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW_PC)
>-#define RC_BPG_OFFSET_SHIFT			10
>-#define RC_MAX_QP_SHIFT				5
>-#define RC_MIN_QP_SHIFT				0
>-
>-#define DSCA_RC_RANGE_PARAMETERS_1		_MMIO(0x6B248)
>-#define DSCA_RC_RANGE_PARAMETERS_1_UDW		_MMIO(0x6B248 + 4)
>-#define DSCC_RC_RANGE_PARAMETERS_1		_MMIO(0x6BA48)
>-#define DSCC_RC_RANGE_PARAMETERS_1_UDW		_MMIO(0x6BA48 + 4)
>-#define _ICL_DSC0_RC_RANGE_PARAMETERS_1_PB	(0x78210)
>-#define _ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW_PB	(0x78210 + 4)
>-#define _ICL_DSC1_RC_RANGE_PARAMETERS_1_PB	(0x78310)
>-#define _ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW_PB	(0x78310 + 4)
>-#define _ICL_DSC0_RC_RANGE_PARAMETERS_1_PC	(0x78410)
>-#define _ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW_PC	(0x78410 + 4)
>-#define _ICL_DSC1_RC_RANGE_PARAMETERS_1_PC	(0x78510)
>-#define _ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW_PC	(0x78510 + 4)
>-#define ICL_DSC0_RC_RANGE_PARAMETERS_1(pipe)		_MMIO_PIPE((pipe) - PIPE_B,=
 \
>-							_ICL_DSC0_RC_RANGE_PARAMETERS_1_PB, \
>-							_ICL_DSC0_RC_RANGE_PARAMETERS_1_PC)
>-#define ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE=
_B, \
>-							_ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW_PB, \
>-							_ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW_PC)
>-#define ICL_DSC1_RC_RANGE_PARAMETERS_1(pipe)		_MMIO_PIPE((pipe) - PIPE_B,=
 \
>-							_ICL_DSC1_RC_RANGE_PARAMETERS_1_PB, \
>-							_ICL_DSC1_RC_RANGE_PARAMETERS_1_PC)
>-#define ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE=
_B, \
>-							_ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW_PB, \
>-							_ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW_PC)
>-
>-#define DSCA_RC_RANGE_PARAMETERS_2		_MMIO(0x6B250)
>-#define DSCA_RC_RANGE_PARAMETERS_2_UDW		_MMIO(0x6B250 + 4)
>-#define DSCC_RC_RANGE_PARAMETERS_2		_MMIO(0x6BA50)
>-#define DSCC_RC_RANGE_PARAMETERS_2_UDW		_MMIO(0x6BA50 + 4)
>-#define _ICL_DSC0_RC_RANGE_PARAMETERS_2_PB	(0x78218)
>-#define _ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW_PB	(0x78218 + 4)
>-#define _ICL_DSC1_RC_RANGE_PARAMETERS_2_PB	(0x78318)
>-#define _ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW_PB	(0x78318 + 4)
>-#define _ICL_DSC0_RC_RANGE_PARAMETERS_2_PC	(0x78418)
>-#define _ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW_PC	(0x78418 + 4)
>-#define _ICL_DSC1_RC_RANGE_PARAMETERS_2_PC	(0x78518)
>-#define _ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW_PC	(0x78518 + 4)
>-#define ICL_DSC0_RC_RANGE_PARAMETERS_2(pipe)		_MMIO_PIPE((pipe) - PIPE_B,=
 \
>-							_ICL_DSC0_RC_RANGE_PARAMETERS_2_PB, \
>-							_ICL_DSC0_RC_RANGE_PARAMETERS_2_PC)
>-#define ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE=
_B, \
>-							_ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW_PB, \
>-							_ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW_PC)
>-#define ICL_DSC1_RC_RANGE_PARAMETERS_2(pipe)		_MMIO_PIPE((pipe) - PIPE_B,=
 \
>-							_ICL_DSC1_RC_RANGE_PARAMETERS_2_PB, \
>-							_ICL_DSC1_RC_RANGE_PARAMETERS_2_PC)
>-#define ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE=
_B, \
>-							_ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW_PB, \
>-							_ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW_PC)
>-
>-#define DSCA_RC_RANGE_PARAMETERS_3		_MMIO(0x6B258)
>-#define DSCA_RC_RANGE_PARAMETERS_3_UDW		_MMIO(0x6B258 + 4)
>-#define DSCC_RC_RANGE_PARAMETERS_3		_MMIO(0x6BA58)
>-#define DSCC_RC_RANGE_PARAMETERS_3_UDW		_MMIO(0x6BA58 + 4)
>-#define _ICL_DSC0_RC_RANGE_PARAMETERS_3_PB	(0x78220)
>-#define _ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW_PB	(0x78220 + 4)
>-#define _ICL_DSC1_RC_RANGE_PARAMETERS_3_PB	(0x78320)
>-#define _ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW_PB	(0x78320 + 4)
>-#define _ICL_DSC0_RC_RANGE_PARAMETERS_3_PC	(0x78420)
>-#define _ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW_PC	(0x78420 + 4)
>-#define _ICL_DSC1_RC_RANGE_PARAMETERS_3_PC	(0x78520)
>-#define _ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW_PC	(0x78520 + 4)
>-#define ICL_DSC0_RC_RANGE_PARAMETERS_3(pipe)		_MMIO_PIPE((pipe) - PIPE_B,=
 \
>-							_ICL_DSC0_RC_RANGE_PARAMETERS_3_PB, \
>-							_ICL_DSC0_RC_RANGE_PARAMETERS_3_PC)
>-#define ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE=
_B, \
>-							_ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW_PB, \
>-							_ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW_PC)
>-#define ICL_DSC1_RC_RANGE_PARAMETERS_3(pipe)		_MMIO_PIPE((pipe) - PIPE_B,=
 \
>-							_ICL_DSC1_RC_RANGE_PARAMETERS_3_PB, \
>-							_ICL_DSC1_RC_RANGE_PARAMETERS_3_PC)
>-#define ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE=
_B, \
>-							_ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW_PB, \
>-							_ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW_PC)
>-
> #define   ICP_TC_HPD_LONG_DETECT(tc_port)	(2 << (tc_port) * 4)
> #define   ICP_TC_HPD_SHORT_DETECT(tc_port)	(1 << (tc_port) * 4)
>
>+#define SHPD_FILTER_CNT				_MMIO(0xc4038)
>+#define   SHPD_FILTER_CNT_500_ADJ		0x001D9
>+

that is a weird choice git 2.26 made for the diff, but looks correct. With
--color-moved (and not sure if the version made any difference, but mine
is 2.28) I could check this is plain move.

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

> #define ICP_DDI_HPD_ENABLE_MASK		(SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_B) | \
> 					 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_A))
> #define ICP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(PORT_TC4) | \
>-- =

>2.26.2
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
