Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A828A7E1DF1
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 11:09:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE73A10E2A5;
	Mon,  6 Nov 2023 10:09:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F76110E2A5
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 10:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699265364; x=1730801364;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=iTtdn9NTSCorllxnKuTlQUAZPiNQtDDB2OWZ4jvpSUE=;
 b=maKKiFqb7Y4cIOKTnuilmUz/okqpDhmPpM3T5yXP9OkAPohKD6yh9ojS
 CQMgJb9XjpqVDTW3bEMEJinn6XXxj4CjvPBJEiLfOBqxzo5RGPpMZgW9P
 H0ksWkSIEcDXaGV9OJPVrlr5mAAZ/3BYVTPrHitCXtw4kwbEwSCc0gjqw
 +g9pCpZZ8OmAJX6a3VU7va/3BvZbEdKrpE/Ge+GbHqUGDVw97h9gfHS2f
 2eGCZNUpIbQZd5Ng/eUTu/NNo4jKFU3k/5rL8IxfLD1ajkX9gO445U7YT
 ormK78e+FafT3Mbw55hwX/7GGvFyipPA0yfRV78Ns6ahF20gvUmXPcsYW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="455728350"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="455728350"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 02:09:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="765905577"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="765905577"
Received: from lpilolli-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.222])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 02:09:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "Das, Nirmoy"
 <nirmoy.das@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
In-Reply-To: <MW4PR11MB705438E90C76E5AD9B537476EFDCA@MW4PR11MB7054.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231026125636.5080-1-nirmoy.das@intel.com>
 <MW4PR11MB705438E90C76E5AD9B537476EFDCA@MW4PR11MB7054.namprd11.prod.outlook.com>
Date: Mon, 06 Nov 2023 12:09:18 +0200
Message-ID: <878r7b19dd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/tc: Fix -Wformat-truncation in
 intel_tc_port_init
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
Cc: "Hajda, Andrzej" <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 27 Oct 2023, "Kahola, Mika" <mika.kahola@intel.com> wrote:
>> -----Original Message-----
>> From: Das, Nirmoy <nirmoy.das@intel.com>
>> Sent: Thursday, October 26, 2023 3:57 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Das, Nirmoy <nirmoy.das@intel.com>; Kahola, Mika <mika.kahola@intel.=
com>; Deak, Imre <imre.deak@intel.com>; Nikula,
>> Jani <jani.nikula@intel.com>; Hajda, Andrzej <andrzej.hajda@intel.com>
>> Subject: [PATCH v3] drm/i915/tc: Fix -Wformat-truncation in intel_tc_por=
t_init
>>
>> Fix below compiler warning:
>>
>> intel_tc.c:1879:11: error: =E2=80=98%d=E2=80=99 directive output may be =
truncated writing between 1 and 11 bytes into a region of size 3 [-
>> Werror=3Dformat-truncation=3D] "%c/TC#%d", port_name(port), tc_port + 1);
>>            ^~
>> intel_tc.c:1878:2: note: =E2=80=98snprintf=E2=80=99 output between 7 and=
 17 bytes into a destination of size 8
>>   snprintf(tc->port_name, sizeof(tc->port_name),
>>   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     "%c/TC#%d", port_name(port), tc_port + 1);
>>     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>
>> v2: use kasprintf(Imre)
>> v3: use const for port_name, and fix tc mem leak(Imre)
>>
>> Fixes: 3eafcddf766b ("drm/i915/tc: Move TC port fields to a new intel_tc=
_port struct")
>> Cc: Mika Kahola <mika.kahola@intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> Reviewed-by: Imre Deak <imre.deak@intel.com>
>
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>

Thanks for the patch and reviews, pushed to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_tc.c | 11 ++++++++---
>>  1 file changed, 8 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i=
915/display/intel_tc.c
>> index 37b0f8529b4f..f64d348a969e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_tc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
>> @@ -58,7 +58,7 @@ struct intel_tc_port {
>>       struct delayed_work link_reset_work;
>>       int link_refcount;
>>       bool legacy_port:1;
>> -     char port_name[8];
>> +     const char *port_name;
>>       enum tc_port_mode mode;
>>       enum tc_port_mode init_mode;
>>       enum phy_fia phy_fia;
>> @@ -1875,8 +1875,12 @@ int intel_tc_port_init(struct intel_digital_port =
*dig_port, bool is_legacy)
>>       else
>>               tc->phy_ops =3D &icl_tc_phy_ops;
>>
>> -     snprintf(tc->port_name, sizeof(tc->port_name),
>> -              "%c/TC#%d", port_name(port), tc_port + 1);
>> +     tc->port_name =3D kasprintf(GFP_KERNEL, "%c/TC#%d", port_name(port=
),
>> +                               tc_port + 1);
>> +     if (!tc->port_name) {
>> +             kfree(tc);
>> +             return -ENOMEM;
>> +     }
>>
>>       mutex_init(&tc->lock);
>>       /* TODO: Combine the two works */
>> @@ -1897,6 +1901,7 @@ void intel_tc_port_cleanup(struct intel_digital_po=
rt *dig_port)  {
>>       intel_tc_port_suspend(dig_port);
>>
>> +     kfree(dig_port->tc->port_name);
>>       kfree(dig_port->tc);
>>       dig_port->tc =3D NULL;
>>  }
>> --
>> 2.42.0
>

--=20
Jani Nikula, Intel
