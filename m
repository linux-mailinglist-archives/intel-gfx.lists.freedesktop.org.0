Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3663350E7E5
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 20:16:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6182A10E393;
	Mon, 25 Apr 2022 18:16:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2589010E23E
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Apr 2022 18:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650910595; x=1682446595;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2sMRpN8lrN/DQgFwtGYLYLWzp57LGJEimzVxgLLPlNc=;
 b=WZSDN/WEDDOS2qgZGSsVukQKdalkmufNbep0E6oWXozb4+XAkoNwr/lt
 fjpMUuD5Tw548UCAE1irlDCfy7LeU0tlZ5YCDe4HKRAk+xzOmdqaey+L3
 TztEBzi3P34gXfkDd0mmRTrreU5RFNGw7MFQBswrJ/msm+ly9xjjjfSB8
 VYobFtGZqUE2LeRZJt0865j59dtKCEAN0+Sg2qYVu9e6v2R/PLbQoQg37
 3LCbqZmsP6LMF65R67xd3WJ+4xR61gI8YuIqd/jf6FQdJQ3HaamMd4MEe
 /AkU/WO7XOIMOH8/sXVKPrla1atkooeRgzOo2CDOpkwdunX/B8VDVE8M3 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="252697172"
X-IronPort-AV: E=Sophos;i="5.90,289,1643702400"; d="scan'208";a="252697172"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 11:16:34 -0700
X-IronPort-AV: E=Sophos;i="5.90,289,1643702400"; d="scan'208";a="677341998"
Received: from xiaojinj-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.18.53])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 11:16:34 -0700
Date: Mon, 25 Apr 2022 11:16:34 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <20220425181634.jjckffwautqmecou@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220405171429.3149199-1-anusha.srivatsa@intel.com>
 <20220405180242.naisj5g2edrhrfsi@ldmartin-desk2>
 <be86669330e24a448de8265fcc6eff81@intel.com>
 <20220406174627.ilsnfzjcojfxribe@ldmartin-desk2>
 <79b46ab821c64ac69661f64a6cf18568@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <79b46ab821c64ac69661f64a6cf18568@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Add MMIO range restrictions
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 06, 2022 at 08:53:56PM +0000, Anusha Srivatsa wrote:
>
>
>> -----Original Message-----
>> From: De Marchi, Lucas <lucas.demarchi@intel.com>
>> Sent: Wednesday, April 6, 2022 10:46 AM
>> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org
>> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Add MMIO range restrictions
>>
>> On Wed, Apr 06, 2022 at 10:16:55AM -0700, Anusha Srivatsa wrote:
>> >
>> >
>> >> -----Original Message-----
>> >> From: De Marchi, Lucas <lucas.demarchi@intel.com>
>> >> Sent: Tuesday, April 5, 2022 11:03 AM
>> >> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
>> >> Cc: intel-gfx@lists.freedesktop.org
>> >> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Add MMIO range
>> >> restrictions
>> >>
>> >> On Tue, Apr 05, 2022 at 10:14:29AM -0700, Anusha Srivatsa wrote:
>> >> >Bspec has added some steps that check for DMC MMIO range before
>> >> >programming them.
>> >> >
>> >> >v2: Fix for CI failure for v1
>> >> >
>> >> >Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> >> >Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>> >> >---
>> >> > drivers/gpu/drm/i915/display/intel_dmc.c | 42
>> >> ++++++++++++++++++++++++
>> >> > 1 file changed, 42 insertions(+)
>> >> >
>> >> >diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
>> >> >b/drivers/gpu/drm/i915/display/intel_dmc.c
>> >> >index 257cf662f9f4..05d8e90854ec 100644
>> >> >--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> >> >+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> >> >@@ -103,6 +103,18 @@ MODULE_FIRMWARE(BXT_DMC_PATH);
>> >> > #define DMC_V1_MAX_MMIO_COUNT		8
>> >> > #define DMC_V3_MAX_MMIO_COUNT		20
>> >> > #define DMC_V1_MMIO_START_RANGE		0x80000
>> >> >+#define TGL_MAIN_MMIO_START		0x8F000
>> >> >+#define TGL_MAIN_MMIO_END		0x8FFFF
>> >> >+#define TGL_PIPEA_MMIO_START		0x92000
>> >> >+#define TGL_PIPEA_MMIO_END		0x93FFF
>> >> >+#define TGL_PIPEB_MMIO_START		0x96000
>> >> >+#define TGL_PIPEB_MMIO_END		0x97FFF
>> >> >+#define TGL_PIPEC_MMIO_START		0x9A000
>> >> >+#define TGL_PIPEC_MMIO_END		0x9BFFF
>> >> >+#define TGL_PIPED_MMIO_START		0x9E000
>> >> >+#define TGL_PIPED_MMIO_END		0x9FFFF
>> >> >+#define ADLP_PIPE_MMIO_START		0x5F000
>> >> >+#define ADLP_PIPE_MMIO_END		0x5FFFF
>> >> >
>> >> > struct intel_css_header {
>> >> > 	/* 0x09 for DMC */
>> >> >@@ -374,6 +386,30 @@ static void dmc_set_fw_offset(struct intel_dmc
>> >> *dmc,
>> >> > 	}
>> >> > }
>> >> >
>> >> >+static bool dmc_mmio_addr_sanity_check(struct intel_dmc *dmc, const
>> >> >+u32 *mmioaddr,
>> >> >+u32 mmio_count)
>> >> >+{
>> >> >+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915),
>> >> dmc);
>> >> >+	int i;
>> >> >+
>> >> >+	if (IS_DG2(i915) || IS_ALDERLAKE_P(i915)) {
>> >> >+		for (i = 0; i < mmio_count; i++) {
>> >> >+			if (!((mmioaddr[i] >= TGL_MAIN_MMIO_START &&
>> >> mmioaddr[i] <= TGL_MAIN_MMIO_END) ||
>> >> >+			      (mmioaddr[i] >= ADLP_PIPE_MMIO_START &&
>> >> mmioaddr[i] <= ADLP_PIPE_MMIO_END)))
>> >> >+				return false;
>> >> >+		}
>> >> >+	} else if (IS_TIGERLAKE(i915) || IS_DG1(i915) ||
>> >> IS_ALDERLAKE_S(i915))
>> >> >+		for (i = 0; i < mmio_count; i++) {
>> >> >+			if (!((mmioaddr[i] >= TGL_MAIN_MMIO_START &&
>> >> mmioaddr[i] <= TGL_MAIN_MMIO_END) ||
>> >> >+			      (mmioaddr[i] >= TGL_PIPEA_MMIO_START &&
>> >> mmioaddr[i] <= TGL_PIPEA_MMIO_END) ||
>> >> >+			      (mmioaddr[i] >= TGL_PIPEB_MMIO_START &&
>> >> mmioaddr[i] <= TGL_PIPEB_MMIO_END) ||
>> >> >+			      (mmioaddr[i] >= TGL_PIPEC_MMIO_START &&
>> >> mmioaddr[i] <= TGL_PIPEC_MMIO_END) ||
>> >> >+			      (mmioaddr[i] >= TGL_PIPED_MMIO_START &&
>> >> mmioaddr[i] <= TGL_PIPEC_MMIO_END)))
>> >> >+				return false;
>> >>
>> >> wonder if we should check for each pipe DMC range independently
>> >> rather than just checking all the ranges.
>> > Can convert this to a switch case in that scenario. "If it is PIPE A then it must
>> be within this range". But it will be 2 switches one for DG2 and ADLP and one
>> for TGL and the rest which have individual ranges for every pipe.
>>
>> I was thinking more about like this:
>>
>> #define _TGL_PIPEA_MMIO	0x92000
>> #define _TGL_PIPEB_MMIO	0x96000
>> #define TGL_PIPE_MMIO(pipe)	_MMIO_PIPE(pipe, _TGL_PIPEA_MMIO,
>> _TGL_PIPEB_MMIO)
>> #define TGL_PIPE_MMIO_SIZE	0x1000
>
>Hmm, does it make sense to add something like:
>
>#define DMC_MMIO(dmc_id)	_MMIO(_PICK(DMC_ID, DMC_FW_MAIN, DMC_FW_PIPEA, DMC_FW_PIPEB, DMC_FW_PIPEC, DMC_FW_PIPED)

typo here ----------------------------------^^^^^^

_PICK(dmc_id, DMC_FW_MAIN, DMC_FW_PIPEA, ...) would return 0, 1, ....
Why are you converting it to _MMIO? Did you mean to use the address?

If the main blob is not handled differently than it could make sense,
yes.


Lucas De Marchi
