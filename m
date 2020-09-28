Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CB327B77D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 01:07:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E575889F01;
	Mon, 28 Sep 2020 23:07:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6F3D89F01;
 Mon, 28 Sep 2020 23:07:40 +0000 (UTC)
IronPort-SDR: L3UR5RZVDDQItRY9zY30xuOeQ23DHmrFeRacRmOCQ+f8xUwRc/89wZypBjwy/28KQshz3vSLQR
 C3pE+klsiOVA==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="246817677"
X-IronPort-AV: E=Sophos;i="5.77,315,1596524400"; d="scan'208";a="246817677"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 16:07:40 -0700
IronPort-SDR: 9XkV9aLbK1uAODE88byKKp4MRaliHvhMU2hA+PTmt3T8XPM+w0ywCelOZNty1UJdqIhZAm4dv8
 RTFYnpFF8n1g==
X-IronPort-AV: E=Sophos;i="5.77,315,1596524400"; d="scan'208";a="340597549"
Received: from pchilaka-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.247.146])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 16:07:39 -0700
Date: Mon, 28 Sep 2020 16:07:39 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200928230739.vpj22bwebqhtehuk@ldmartin-desk1>
References: <20200928080931.246347-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20200928080931.246347-3-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <87a6xaow40.fsf@intel.com>
 <SN6PR11MB3421725FE60CC7930FC02AB6DF350@SN6PR11MB3421.namprd11.prod.outlook.com>
 <871rilq0um.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <871rilq0um.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/edp/jsl: Update vswing table
 for HBR and HBR2
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
Cc: "Pandey, Hariom" <hariom.pandey@intel.com>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 28, 2020 at 08:15:29PM +0300, Jani Nikula wrote:
>On Mon, 28 Sep 2020, "Surendrakumar Upadhyay, TejaskumarX"	<tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
>> This is a good example of a potential trap that having
>> IS_ELKHARTLAKE() cover both ELK and JSP creates. An unsuspecting coder
>> might change the if ladder to have IS_ELKHARTLAKE() first, and the
>> subsequent IS_JASPERLAKE() branch would never be taken.
>>
>> BR,
>> Jani.
>>
>> Tejas : In that case I will put attention note in comment about
>> platform checks such that ladder distrubance can be avoided. What you
>> suggest?

>The solution is to make IS_ELKHARTLAKE() mean ELK and only ELK.

Since we are talking about the TLA for JSL in the other patch, for
elkhartlake it is EHL, not ELK. ELK is something else, but I'm not sure
what:

$ git grep -w ELK -- drivers/gpu/drm/
drivers/gpu/drm/i915/gem/i915_gem_stolen.c:             IS_GM45(i915) ? "CTG" : "ELK", reg_val);
drivers/gpu/drm/i915/gem/i915_gem_stolen.c:      * Whether ILK really reuses the ELK register for this is unclear.
drivers/gpu/drm/i915/intel_pm.c:         * Not 100% sure which way ELK should go here as the
drivers/gpu/drm/i915/intel_pm.c:         * assume ELK doesn't need this.

Lucas De Marchi

>
>BR,
>Jani.
>
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
