Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C45AB553450
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 16:16:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66C0710E705;
	Tue, 21 Jun 2022 14:16:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54A6F10E705
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 14:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655821009; x=1687357009;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZRlVBiNBpILzXwqeFSTXzFk49cAqmA+nP8d6jx6tA5U=;
 b=X8QODXAUsRCwMWTGJWBgdCK8VHJC+r4uDEDhTfbrHj/w/vMsbAcW8FEG
 BEgvv7W5ocGCTeRv4rw7j67p8i49pIpME5yi+x3ViJKlCR5V31E5Yng+q
 ne3s8BCedtElyOYeuy9Ni+RM1Th9jOk8T+EFfrEGzxipjstWankKCgKOB
 kfyCfmvqFYqjSPMZvR1uBuIxb2yEXbP13hN+uwOVqvHj4ePzWZ2wggxz4
 8mUXYXyXlqACCzn3fRhDaZnkg4ifwwxy/0aEoJmJsLndIlbeww8aggrz2
 qDRH9deIyyl3eOx2lDxF4ycB3RnblZp+qhKYsbumvRJoU9nkYjinTQhwG A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="280175454"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="280175454"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 07:16:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="677015027"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Jun 2022 07:16:48 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 21 Jun 2022 07:16:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 21 Jun 2022 07:16:48 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.027;
 Tue, 21 Jun 2022 07:16:48 -0700
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Tangudu, Tilak" <tilak.tangudu@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Ewins,
 Jon" <jon.ewins@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>, "Wilson, Chris P"
 <chris.p.wilson@intel.com>, "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 "Nilawar, Badal" <badal.nilawar@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>, "Sundaresan, Sujaritha"
 <sujaritha.sundaresan@intel.com>
Thread-Topic: [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed helper
Thread-Index: AQHYhWmbwn0z36gTjEuL4TpZGwomIa1Z5yLw
Date: Tue, 21 Jun 2022 14:16:47 +0000
Message-ID: <0f1834aa89ed4f6b89db4ee7eacdbd55@intel.com>
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
 <20220621123516.370479-5-tilak.tangudu@intel.com>
In-Reply-To: <20220621123516.370479-5-tilak.tangudu@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-originating-ip: [10.108.32.68]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed
 helper
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Tangudu, Tilak <tilak.tangudu@intel.com>
> Sent: Tuesday, June 21, 2022 6:05 PM
> To: intel-gfx@lists.freedesktop.org; Ewins, Jon <jon.ewins@intel.com>; Vi=
vi,
> Rodrigo <rodrigo.vivi@intel.com>; Belgaumkar, Vinay
> <vinay.belgaumkar@intel.com>; Wilson, Chris P <chris.p.wilson@intel.com>;
> Dixit, Ashutosh <ashutosh.dixit@intel.com>; Nilawar, Badal
> <badal.nilawar@intel.com>; Gupta, Anshuman <anshuman.gupta@intel.com>;
> Tangudu, Tilak <tilak.tangudu@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Gupta, saurabhg <saurabhg.gupta@intel.com>;
> Iddamsetty, Aravind <aravind.iddamsetty@intel.com>; Sundaresan, Sujaritha
> <sujaritha.sundaresan@intel.com>
> Subject: [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed helper
>=20
> Added is_intel_rpm_allowed function to query the runtime_pm status and
> disllow during suspending and resuming.
This seems a hack,
Not sure if we have better way to handle it.
May be check this in intel_pm_runtime_{get,put} to keep entire code simple =
?
>=20
> Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_runtime_pm.c | 15 +++++++++++++++
> drivers/gpu/drm/i915/intel_runtime_pm.h |  1 +
>  2 files changed, 16 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
> b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index 6ed5786bcd29..3759a8596084 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -320,6 +320,21 @@ untrack_all_intel_runtime_pm_wakerefs(struct
> intel_runtime_pm *rpm)  }
>=20
>  #endif
> +static int intel_runtime_pm_status(struct intel_runtime_pm *rpm) {
> +	return rpm->kdev->power.runtime_status; }
This is racy in principal, we need a kdev->power lock here.=20
Regards,
Anshuman Gupta.
> +
> +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm) {
> +	int rpm_status;
> +
> +	rpm_status =3D intel_runtime_pm_status(rpm);
> +	if (rpm_status =3D=3D RPM_RESUMING || rpm_status =3D=3D
> RPM_SUSPENDING)
> +		return false;
> +	else
> +		return true;
> +}
>=20
>  static void
>  intel_runtime_pm_acquire(struct intel_runtime_pm *rpm, bool wakelock) di=
ff --
> git a/drivers/gpu/drm/i915/intel_runtime_pm.h
> b/drivers/gpu/drm/i915/intel_runtime_pm.h
> index d9160e3ff4af..99418c3a934a 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> @@ -173,6 +173,7 @@ void intel_runtime_pm_init_early(struct
> intel_runtime_pm *rpm);  void intel_runtime_pm_enable(struct
> intel_runtime_pm *rpm);  void intel_runtime_pm_disable(struct
> intel_runtime_pm *rpm);  void intel_runtime_pm_driver_release(struct
> intel_runtime_pm *rpm);
> +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm);
>=20
>  intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm *rpm);
> intel_wakeref_t intel_runtime_pm_get_if_in_use(struct intel_runtime_pm
> *rpm);
> --
> 2.25.1

