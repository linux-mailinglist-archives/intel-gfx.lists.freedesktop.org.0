Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7A6179882
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 20:02:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 500E96EB5E;
	Wed,  4 Mar 2020 19:02:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B13CB6EB5E
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 19:02:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 11:02:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; d="scan'208";a="234212333"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga008.fm.intel.com with ESMTP; 04 Mar 2020 11:02:49 -0800
Received: from fmsmsx126.amr.corp.intel.com (10.18.125.43) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Mar 2020 11:02:47 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 FMSMSX126.amr.corp.intel.com ([169.254.1.129]) with mapi id 14.03.0439.000;
 Wed, 4 Mar 2020 11:02:47 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/tgl: Make wa_1606700617 permanent
Thread-Index: AQHV8eXg+eE/djoqrkW/+O9dxQwp8Kg5UW6A
Date: Wed, 4 Mar 2020 19:02:46 +0000
Message-ID: <9f542335d5f52b9d240a6217103952fc6d520a61.camel@intel.com>
References: <20200304052409.25501-1-swathi.dhanavanthri@intel.com>
In-Reply-To: <20200304052409.25501-1-swathi.dhanavanthri@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.241]
Content-ID: <1114949D030A2848A319F9217022A795@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Make wa_1606700617 permanent
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The change look good, it is just missing some commit description. I
know that there is no much to talk about but it is kind of a rule to
always have a description on kernel patches, something like will do:

Previously the issue that Wa_1606700617 was fixing would be fixed in B0
hardware but hardware team decide to make the Wa permanent.

Check the HSD maybe there is some relevant information there why now it
is permanent that you can add to the commit description.

On Tue, 2020-03-03 at 21:24 -0800, Swathi Dhanavanthri wrote:
> Bspec: 52890
> 
> Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index cb7d85c42f13..a9d1975b5245 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1337,11 +1337,6 @@ rcs_engine_wa_init(struct intel_engine_cs
> *engine, struct i915_wa_list *wal)
>  	struct drm_i915_private *i915 = engine->i915;
>  
>  	if (IS_TGL_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
> -		/* Wa_1606700617:tgl */
> -		wa_masked_en(wal,
> -			     GEN9_CS_DEBUG_MODE1,
> -			     FF_DOP_CLOCK_GATE_DISABLE);
> -
>  		/*
>  		 * Wa_1607138336:tgl
>  		 * Wa_1607063988:tgl
> @@ -1393,6 +1388,11 @@ rcs_engine_wa_init(struct intel_engine_cs
> *engine, struct i915_wa_list *wal)
>  		/* Wa_1409804808:tgl */
>  		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
>  			     GEN12_PUSH_CONST_DEREF_HOLD_DIS);
> +
> +		/* Wa_1606700617:tgl */
> +		wa_masked_en(wal,
> +			     GEN9_CS_DEBUG_MODE1,
> +			     FF_DOP_CLOCK_GATE_DISABLE);
>  	}
>  
>  	if (IS_GEN(i915, 11)) {
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
