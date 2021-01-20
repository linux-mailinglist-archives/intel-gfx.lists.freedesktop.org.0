Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A4E2FC9D6
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 05:20:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF6FE6E123;
	Wed, 20 Jan 2021 04:20:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFFA46E123
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 04:20:50 +0000 (UTC)
IronPort-SDR: ktGjSmc90JdFDVBvp7BGuxp3yfTc4q5y4IgrUm2nDRFJrkQmL9PsMRI/jfgnic015nfHUXqT1v
 lYe551W5RSGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="178263745"
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="178263745"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 20:20:50 -0800
IronPort-SDR: ZxOhI+PKU9bVKZT3u5sQO50ArGyfCeAMkXp479jy8qXU7nry9Wbo052HN4s3e2fQaw88IYKCWm
 NLAK5k16Wjiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="366106618"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by orsmga002.jf.intel.com with ESMTP; 19 Jan 2021 20:20:48 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 Jan 2021 04:20:47 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Wed, 20 Jan 2021 09:50:46 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>
Thread-Topic: [PATCH v2 14/17] drm/i915/pps: refactor init abstractions
Thread-Index: AQHW5eYbrQCTe7YFCkCX4YyLcjLciKoldwEAgAEEYICACX+ugA==
Date: Wed, 20 Jan 2021 04:20:46 +0000
Message-ID: <51fda749bff44e5aab3cd514641a00e4@intel.com>
References: <cover.1610127741.git.jani.nikula@intel.com>
 <031b26bf4a680cf3a436d368108380064b8b541f.1610127741.git.jani.nikula@intel.com>
 <20210113114405.GP11717@intel.com> <87czy7rjn8.fsf@intel.com>
In-Reply-To: <87czy7rjn8.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 14/17] drm/i915/pps: refactor init
 abstractions
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@intel.com>
> Sent: Thursday, January 14, 2021 2:16 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; ville.syrjala@linux.intel.com
> Subject: Re: [PATCH v2 14/17] drm/i915/pps: refactor init abstractions
> 
> On Wed, 13 Jan 2021, Anshuman Gupta <anshuman.gupta@intel.com>
> wrote:
> > On 2021-01-08 at 19:44:22 +0200, Jani Nikula wrote:
> >> @@ -1366,20 +1352,21 @@ void intel_pps_encoder_reset(struct
> intel_dp *intel_dp)
> >>  		 * Reinit the power sequencer, in case BIOS did something
> nasty
> > 		IMHO above comment would need a improvement, or nuke
> it ?
> > 		as intel_pps_encoder_reset() will also get called from
> intel_pps_init()
> > 		unlike only while resuming from suspend.
> 
> How about this?
> 
> -                * Reinit the power sequencer, in case BIOS did something nasty
> -                * with it.
> +                * Reinit the power sequencer also on the resume path, in case
> +                * BIOS did something nasty with it.
> 
With that comment change.
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com> 
> 
> BR,
> Jani.
> 
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
