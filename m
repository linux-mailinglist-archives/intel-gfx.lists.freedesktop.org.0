Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3623F5749B5
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jul 2022 11:53:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CA6410EDD9;
	Thu, 14 Jul 2022 09:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A184E10F02A;
 Thu, 14 Jul 2022 09:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657792391; x=1689328391;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Fev4fvjDIkg8hRzgn8F/VM+5S1qJkWztsi5aMnHo5PU=;
 b=P8PxFxeFgaJTJUJ5xg/o1w5XeNyNlTauO94Xt6VXlBck4Cqzx7tnigUr
 RpzglsXnOfMPqQ2g6ks96E1BdJoDc/JCxRo+FxF6ePKY5YuxTImGUXkO4
 kSMgu4bOMhSU5EIkPk/U2b66dPaLB4hACq5eqFtAvpRA/FlIoDZbEkZmV
 opMWFfNiFeOmwK/+nRTBK1PS7JWwTXcOR7d84BYY0s+R+puOVLm9PYzBW
 S39dbCO1TKjboD7E6YABuX0eDxGdW04OummyuHh/sBbj2eTOP/RqJ80FT
 oxXvUQbZ5n59/yIaFcPAQD+vcIcAg5+vR7Tu+gDDG/NzjCVYcWVIcMOdU Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10407"; a="347149276"
X-IronPort-AV: E=Sophos;i="5.92,269,1650956400"; d="scan'208";a="347149276"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 02:53:11 -0700
X-IronPort-AV: E=Sophos;i="5.92,269,1650956400"; d="scan'208";a="653808031"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.19.176])
 ([10.213.19.176])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 02:53:08 -0700
Message-ID: <a77e4ab6-5b5b-826a-461e-2a2ea0659a8f@intel.com>
Date: Thu, 14 Jul 2022 11:53:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20220713152019.343432-1-andrzej.hajda@intel.com>
 <20220713152019.343432-3-andrzej.hajda@intel.com>
 <DM6PR11MB31778FA4D120A1FCA691A956BA889@DM6PR11MB3177.namprd11.prod.outlook.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <DM6PR11MB31778FA4D120A1FCA691A956BA889@DM6PR11MB3177.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm/i915/fbdev: suspend HPD before
 fbdev unregistration
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 14.07.2022 05:09, Murthy, Arun R wrote:
>> -----Original Message-----
>> From: Hajda, Andrzej <andrzej.hajda@intel.com>
>> Sent: Wednesday, July 13, 2022 8:50 PM
>> To: Jani Nikula <jani.nikula@linux.intel.com>; Ville Syrjälä
>> <ville.syrjala@linux.intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>
>> Cc: Hajda, Andrzej <andrzej.hajda@intel.com>; Joonas Lahtinen
>> <joonas.lahtinen@linux.intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>;
>> Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>; Daniel Vetter
>> <daniel@ffwll.ch>; intel-gfx@lists.freedesktop.org; dri-
>> devel@lists.freedesktop.org
>> Subject: [PATCH v3 2/3] drm/i915/fbdev: suspend HPD before fbdev
>> unregistration
>>
>> HPD event after fbdev unregistration can cause registration of deferred fbdev
>> which will not be unregistered later, causing use-after-free.
>> To avoid it HPD handling should be suspended before fbdev unregistration.
>>
>> It should fix following GPF:
>> [272.634530] general protection fault, probably for non-canonical address
>> 0x6b6b6b6b6b6b6b6b: 0000 [#1] PREEMPT SMP NOPTI
>> [272.634536] CPU: 0 PID: 6030 Comm: i915_selftest Tainted: G     U
>> 5.18.0-rc5-CI_DRM_11603-g12dccf4f5eef+ #1
>> [272.634541] Hardware name: Intel Corporation Raptor Lake Client
>> Platform/RPL-S ADP-S DDR5 UDIMM CRB, BIOS
>> RPLSFWI1.R00.2397.A01.2109300731 09/30/2021 [272.634545] RIP:
>> 0010:fb_do_apertures_overlap.part.14+0x26/0x60
>> ...
>> [272.634582] Call Trace:
>> [272.634583]  <TASK>
>> [272.634585]  do_remove_conflicting_framebuffers+0x59/0xa0
>> [272.634589]  remove_conflicting_framebuffers+0x2d/0xc0
>> [272.634592]  remove_conflicting_pci_framebuffers+0xc8/0x110
>> [272.634595]
>> drm_aperture_remove_conflicting_pci_framebuffers+0x52/0x70
>> [272.634604]  i915_driver_probe+0x63a/0xdd0 [i915]
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5329
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5510
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> ---
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
> 
> Thanks and Regards,
> Arun R Murthy
> --------------------

Ups, I forgot to add your r-b.
Anyway, thanks for both r-b.

Regards
Andrzej

