Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3D56B4D1E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 17:36:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E00610E2C9;
	Fri, 10 Mar 2023 16:36:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35ED710E21C
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 16:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678466172; x=1710002172;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=HI9Ii9PSQeNGTI1xfHcu1XGl5db/N9zWP6jFigkvTP4=;
 b=f6V/AtzirciavASxpPv+H7e0RmZQRWCy9ekeOjJ4npC+LXmCSwkWPu5f
 lhh9g5n+BZEP1fRdid9oP+29LS5249uqlAGb4aX0l6/5EyOtbyaHS2c+m
 rbOckflPPsP7Ye6DQpEUHm+ohicaKLVRRHjTFqoqmoM0g45l0jvu7yrKm
 vbXaT+6pw0Mo/cEt+9/3E7GrRnZ1093zMxkrpRx0jeJVZeT2OKUHi6lx8
 Re3Cak8SU3pVwB5AQCcbTNPFNfzFPjk8gPeYE/31h7hHBeexJNkgNbacT
 MQuz6H1O6XGAiY0zYyPbEt/Ck6n5nLiIEask493ZsubYwukezgE2U3I1S w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="401628690"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="401628690"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 08:36:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="1007173471"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="1007173471"
Received: from langkari-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.138])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 08:36:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Dan Carpenter <error27@gmail.com>
In-Reply-To: <42a4c5e8-4234-4f4d-9810-2d84bfce1156@kili.mountain>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <d1cc6919-6392-41f0-b17e-86e5b706e945@kili.mountain>
 <875yba9dwh.fsf@intel.com>
 <42a4c5e8-4234-4f4d-9810-2d84bfce1156@kili.mountain>
Date: Fri, 10 Mar 2023 18:36:04 +0200
Message-ID: <871qlw8sy3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [bug report] drm/i915/dmc: add i915_to_dmc() and
 dmc->i915 and use them
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 10 Mar 2023, Dan Carpenter <error27@gmail.com> wrote:
> On Thu, Mar 09, 2023 at 04:51:10PM +0200, Jani Nikula wrote:
>> On Thu, 09 Mar 2023, Dan Carpenter <error27@gmail.com> wrote:
>> > Hello Jani Nikula,
>> >
>> > This is a semi-automatic email about new static checker warnings.
>> >
>> > The patch 1b28c1c789d0: "drm/i915/dmc: add i915_to_dmc() and 
>> > dmc->i915 and use them" from Mar 1, 2023, leads to the following 
>> > Smatch complaint:
>> >
>> >     drivers/gpu/drm/i915/display/intel_dmc.c:1162 intel_dmc_debugfs_status_show()
>> >     error: we previously assumed 'dmc' could be null (see line 1148)
>> >
>> > drivers/gpu/drm/i915/display/intel_dmc.c
>> >   1142  
>> >   1143          wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>> >   1144  
>> >   1145          seq_printf(m, "DMC initialized: %s\n", str_yes_no(dmc));'
>> >                                                        ^^^^^^^^^^^^^^^
>> > This is a check for NULL too.
>> >
>> >   1146          seq_printf(m, "fw loaded: %s\n",
>> >   1147			   str_yes_no(intel_dmc_has_payload(i915)));
>> >   1148		seq_printf(m, "path: %s\n", dmc ? dmc->fw_path : "N/A");
>> >                                             ^^^
>> > The patch adds a check for NULL.
>> >
>> >   1149		seq_printf(m, "Pipe A fw needed: %s\n",
>> >   1150			   str_yes_no(GRAPHICS_VER(i915) >= 12));
>> >   1151		seq_printf(m, "Pipe A fw loaded: %s\n",
>> >   1152			   str_yes_no(has_dmc_id_fw(i915, DMC_FW_PIPEA)));
>> >   1153		seq_printf(m, "Pipe B fw needed: %s\n",
>> >   1154			   str_yes_no(IS_ALDERLAKE_P(i915) ||
>> >   1155				      DISPLAY_VER(i915) >= 14));
>> >   1156		seq_printf(m, "Pipe B fw loaded: %s\n",
>> >   1157			   str_yes_no(has_dmc_id_fw(i915, DMC_FW_PIPEB)));
>> >   1158	
>> >   1159		if (!intel_dmc_has_payload(i915))
>> 
>> intel_dmc_has_payload() should always return false for dmc == NULL.
>
> Ah, right.  Sorry for the noise.  I'm going to try figure out how to
> make Smatch parse this correctly.

No worries. I did wonder while writing the patch whether it would throw
off people, didn't even consider static analysis. :)

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
