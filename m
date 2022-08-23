Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA0359E3FC
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 14:57:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C07348DC89;
	Tue, 23 Aug 2022 12:57:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EAEC8BD30
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 12:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661259421; x=1692795421;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tI3HEBafklRqV3In0YHdcU7NQKDbvR6ZDkT9YbfwR8A=;
 b=XO6C713HSO6AXsWOZTTA7i2WJiYXwHENEKFyZR3ndvriOmfYK+B+iK4B
 R2HqUqrjhvA9tHARAq7l4SdVVa6AJRaapLnfDTtN3jno5MSlvY8Ohc4O/
 7qaCsYvA/8naCJOTZHUPBjRTK6t6QOh5IeJ3O5926aLyKd6MTgo0W77dT
 oBwW5F5rjqj3s8k6LeVlKa3EcLbtycU1ACKffzI9iotTcVb5jgUnm2OvC
 f6r0BjDay2d4gCzGnj9Zuo2VDu3dti0ZqOb7W4LCD+dfN3thRgaM3B0Ca
 OAuYk3qTMpIiKdMTZ54yqny6LTN5Rge9p7F74D9/mRE/+h/2SN1A/pzmq A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="355409053"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="355409053"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 05:57:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="670020754"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 23 Aug 2022 05:56:59 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 23 Aug 2022 05:56:59 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 23 Aug 2022 05:56:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 23 Aug 2022 05:56:58 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 23 Aug 2022 05:56:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QNxYhLrHA3tgtz+NW6GbJB5cXBeGtrcJDeo1wdvoaugxb44jnBRKiNVIQYubuxy+GTRE/DMz9AQc5y3DLAyuZ7yHFPeao0fZNR9eEUDBcPFZRnsYp4q+PVD9uuH6Jfzcc4pTAsSVJfl+/Cw9EtXXY42aVbqBRbXbrwFiTJZr3ppqoYf/51IdeECqCh+Imh4pkYJQyAifodopEwzzS567GbvIYHykDoJJTqQHr3l9nizhTt+frzCqwiT16l+D6+d981hkNkc/Nbcd72IVNbxCvGu6Hgr3ICuloWPjSukD/bCli33MyQOYT93Co+FiKSdOFGEPEkTSQSWEKgzmKoT+Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yjixfej9VRClwVFIEwuNoRYpDIz+6/h4+ZdLMIx6fa4=;
 b=PkAG1t41Qlv7xKq6RnMZIua7W3cSjcRmXXz6xBFRrZDqY5JvLq+WGtMqh8QX5mW9QnO7EB4nUfUec2reXrOsjhk6UpoHEmMlV8Lqvb2LmtpuXAxGXf8Cn71sCPBG/4EQcPGEhNRS31UZkipSaityMlpXErRqno7Eyuyz/ApM8EOuKiM3vfHTLwCCb4qPqEJyVE1C/UXcUPlKe6yTdlEOGsL92cNor1KMMnazgcaR80HPIZBMCdJ3GDIYEmcocDE4MlX8n+5eg6fJ/6SvavbsOVtGyh40ryUXbBoWRBcEnCPhfXD7zm395Yq4KzTDNNoLuBChXDmOh9GnOMOI3LLXQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by BL0PR11MB2931.namprd11.prod.outlook.com (2603:10b6:208:7d::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.18; Tue, 23 Aug
 2022 12:56:56 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::1559:c7eb:481f:3981]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::1559:c7eb:481f:3981%7]) with mapi id 15.20.5546.023; Tue, 23 Aug 2022
 12:56:56 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Fix warning callstack for
 imbalance wakeref
Thread-Index: AQHYrkGU1vNkWWZqjkOsmkvx0TsbAK2zEyUAgAlXRvCAABRMcA==
Date: Tue, 23 Aug 2022 12:56:56 +0000
Message-ID: <MWHPR11MB193572EF5A173CC9F42861DDB2709@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20220812044724.12131-1-mitulkumar.ajitkumar.golani@intel.com>
 <Yvzj6otIylJ8nwoJ@ideak-desk.fi.intel.com>
 <MWHPR11MB19353E66246E6D9CB5F021D4B2709@MWHPR11MB1935.namprd11.prod.outlook.com>
In-Reply-To: <MWHPR11MB19353E66246E6D9CB5F021D4B2709@MWHPR11MB1935.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ba0e2af6-c9fc-49f3-3ece-08da8506f588
x-ms-traffictypediagnostic: BL0PR11MB2931:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A0kz7fJcdmq0YNczV95QgW8KA8ZZtk/20n2F37sZaW4Wxt6TCJeb7xMW5XneReqgIupDNPJtAbyBHMp3YwYAG/iSh0l/+eWIAo963BXg9U41WX79vX4yIxw0OedUUEIsZQaZZ3oFkc3r5+ZXj23etaPc/TaW/3pcTEGT1i3JfPJnQZPO3opMyDt4Q58EcxPM43TjismbcNNW47Os0kgY/qFfoeu6I6vV+7cntNu0UM3hR3TI6sOGk4nQ6ezYk8i8nBUyJnooC+xUOJierjjfv01eYxQD2GkxG4RIpCSCkEsVbvEERGG2FWNjO5kYcz+CqeBgWHN5CndS6HuWtpUZ6PptZ3pshqmHrlItZVsmEQ2HLowIVb580YLmThPktp9CmmRRsU9wG7/zKttsyFNyzfTjd8T97Yo7IonGjxlZD5vLBY2vZpOixTQC5kg2ovXYuYEh2H609KCTOmyxex1hNtAhAiWFUfGVkzp189Vk5G+kqGESbS0cLcogEuAjyFuKMyd4MJ5/Gfm67OZhBAiaK8i3khQMkSzj6A5bfhEzpaqFHF1dLcfHGuZRkhPHcaKZW5leeFOsjMxMxoIS2920oyjqbtGGqOZG1D9YDvuvmAiChhF/XtRqRvsr2Gqt9kh3zLAyu8f822p+ItiRlQGzIPY998v56W7pugJnEaM33Ov6sz22AaSeXH94RIfZSsHhpeuN+VeRXR/OE8AM6valHA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(39860400002)(346002)(136003)(376002)(366004)(966005)(6506007)(478600001)(71200400001)(41300700001)(83380400001)(186003)(9686003)(55236004)(2940100002)(26005)(5660300002)(2906002)(8936002)(52536014)(55016003)(316002)(6636002)(110136005)(66476007)(64756008)(66556008)(66446008)(76116006)(4326008)(7696005)(38070700005)(66946007)(33656002)(8676002)(86362001)(122000001)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TZqWRpFNsvl0sux0Ts0qBdHf7dcDInvjJalHhLHipbgw67GGfWtEInMwXQt4?=
 =?us-ascii?Q?xwpyd7FRlfKvWH3l569fW6OQ2SZolCSO9XVGfUk8I9d7SJKbcGnxpSE4vnmc?=
 =?us-ascii?Q?XjIKJrewJ8KtoILhAfdR3G5nM76m9dCX2s5qTpc90SBRg5tBEVcd91BWUWWs?=
 =?us-ascii?Q?1Mz1Wm+waF9qSxG5ztAHtJT4Qwhjl4Gmxys9x+l0p/2GoM67JKohAQgDrKpR?=
 =?us-ascii?Q?2trq5mxqikc3YxPXP7SRcsUaVM30Ou8Mt5iS1HzRCllRQ14ECRHCWKFNSVya?=
 =?us-ascii?Q?IKMOMUkXQNH++SAX+pbFZ4I5XnQltbqdFmA80bZgKP4tnK3qZi77tmLETKIE?=
 =?us-ascii?Q?affm7lYbmN6thWzRmxabDP1i76W7ImlXnkKuamr0NMcKa6y8MSo2mEGvInGL?=
 =?us-ascii?Q?FvBytNXljj3YCzojr7wR3KBupFJB8BlSG22cToLldt2UMHj2Cl3DyQKDZhj3?=
 =?us-ascii?Q?8Fe72D/5aDKPuH3hfVk+j0Ta/LYZfb+KSCS/SL8MzcbTlDmuGUfPc+hXjK0Q?=
 =?us-ascii?Q?rGaTNzl+HAtuQJJ5henY3yC7Y3dSGhTMiKp3e0asf+/wqPZsTBoMDK+oiaJ0?=
 =?us-ascii?Q?fUhV9tCtOoNnqPhXI/zNr5K3m6bENw3a7gh3PLDyCvRstqPQYpNQ+B8C5ARQ?=
 =?us-ascii?Q?o7rBmlcG3akhvOGOgZLY8Tn16MHQlyVmv45QSdVeGNKJNrsH3sAfq4/T5uIH?=
 =?us-ascii?Q?1a8TH+AIDSTmPSDwP0QOQndLhW3JP55G1Rt7Yv27IdCNzZAh4vvEuWPiz5rX?=
 =?us-ascii?Q?EOH5/0bQNQpI3HcDRWoZx68w+HjN6KBoJZO1JCs3qhIhZivYAjFPDMmVTech?=
 =?us-ascii?Q?zjCIfOfJp8gkbvF7zBaHletYcUrZxdlMACOKfxNO1AvnyZfdAeRcDXC+zWbt?=
 =?us-ascii?Q?kno80sc5nrxwrM9f0cjx6P6BySKFqOEALMHIBt9VVYdF7VtJwTYI2m1I/NkU?=
 =?us-ascii?Q?sa35P1n/0sD9pTXsXm01WFBv4u1+JtWqeaY841KMPM+1x0pCBYzHg4jjnz8V?=
 =?us-ascii?Q?Q7fGAstraHixcuUGvJ42aSB24ZR8/Gm71hQ3FNoA8gLKFfxCEEDMZrEc4boa?=
 =?us-ascii?Q?OXUdZmNMr0mWFfTv8fioxMsFh2B0JDKPb0okqalxKXBavpqqMR/GnVDB4rjh?=
 =?us-ascii?Q?lUnE/7mX2iEeX0QoxZyRnV5HJklKqAZyIyfBePjKICCUVp0uCFmhjQreE6Aq?=
 =?us-ascii?Q?dKIfh2AyHy1mJJ2XYQ+dFdiErp6XpMdGx70h3AFGkQZPnTywoOYVFOzOHeer?=
 =?us-ascii?Q?1D+zAoF8fDgsi6kloem+9L0x6b/038NgZfg5JfaRW+L8D781OA3RhUlf2vcP?=
 =?us-ascii?Q?CH4+LP+yLTDClstyCjHOw9a+mxGIQ56Ex9Hb6X2tAhvzkCOZbOr9QdQUVaO1?=
 =?us-ascii?Q?BVqqGtewtvv1R/yWxsv57zRlvUyNlWx6dGtfAAnaCZBvfBt3yl+x/iop6QjL?=
 =?us-ascii?Q?ikbS74b7FVFgIJDAUViOJ3axp9rF0hwY9IeM99eN1uVdcAwkLLsUEYzxX3mQ?=
 =?us-ascii?Q?lrtklQKKx/Yz0gXkZxoUYJDER+9/cFkj99Iqj3RX9B+FU+bg6zJR7XxuTOS9?=
 =?us-ascii?Q?93c84DbZwTDTFDfT3b7VCuWvXkI4olhRPPBZcOTQdOqcLorMqObmUjyYdrZp?=
 =?us-ascii?Q?OXZNIj3onJDJYUGKgloZRJ0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba0e2af6-c9fc-49f3-3ece-08da8506f588
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2022 12:56:56.1366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 94279akGC4hguTsOZmPQfUqRt/0u2bAlSQ1XfuZ1foXlkQwIgakH6hdr3ROrutBTR0xVX4gPL3PqOLZMie4tCKZ022zGfJE4JT7h28hhRbkZ6tMNf6z5ix5ql2odZQR+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB2931
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix warning callstack for
 imbalance wakeref
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

> Hi Imre,
>=20
> > On Fri, Aug 12, 2022 at 10:17:24AM +0530, Mitul Golani wrote:
> > > While executing i915_selftest, wakeref imbalance warning is seen
> > > with i915_selftest failure.
> > >
> > > When device is already suspended, wakeref is acquired by
> > > disable_rpm_wakeref_asserts and rpm ownership is transferred back to
> > > core. During this case wakeref_count will not be zero.
> > > Once driver is unregistered, this wakeref is released with
> > > enable_rpm_wakeref_asserts and balancing wakeref_count acquired by
> > > driver.
> > >
> > > This patch will fix the warning callstack by adding check if device
> > > is already suspended and rpm ownership transfer is going on.
> > >
> > > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_driver.c | 8 +++++++-
> > >  1 file changed, 7 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > > b/drivers/gpu/drm/i915/i915_driver.c
> > > index deb8a8b76965..6530a8680cfd 100644
> > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > @@ -1670,7 +1670,13 @@ static int intel_runtime_resume(struct device
> > > *kdev)
> > >
> > >  	drm_dbg(&dev_priv->drm, "Resuming device\n");
> > >
> > > -	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm-
> > >wakeref_count));
> > > +	/*
> > > +	 * When device is already suspended, Wakeref is acquired by
> > disable_rpm_wakeref_asserts
> > > +	 * and rpm ownership is transferred back to core. During this case
> > wakeref_count will
> > > +	 * not be zero. Once driver is unregistered, this wakeref is
> > > +released
> > with
> > > +	 * enable_rpm_wakeref_asserts and balancing wakeref_count
> > acquired by driver.
> > > +	 */
> > > +	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm-
> > >wakeref_count) &&
> > > +!rpm->suspended);
> >
> > I can't see how disable/enable_rpm_wakeref_asserts() can lead to this
> > WARN. They are always called in pairs both in intel_runtime_suspend()
> > and intel_runtime_resume(), leaving rpm->wakeref_count unchanged.
> >
> > The root cause is probably somewhere else, incrementing
> > rpm->wakeref_count without runtime resuming the device.
> >
> > The WARN() condition is corret, we shouldn't get here with a non-zero
> > wakeref_count. rpm->suspended - set in intel_runtime_suspend() and
> > cleared in intel_runtime_resume() - should be always false here, so
> > the above change would just disable the WARN in all cases.
> >
> Yes, in case of DG2, after device is suspended, i915_driver_remove is bei=
ng
> called.
> Here driver is taking wakeref with disable_rpm_wakeref_asserts when devic=
e
> was not resumed.
>=20
> As per logs,
> [  395.872971] i915 0000:03:00.0: [drm:intel_runtime_suspend [i915]]
> Suspending device ...
> [  403.553235] i915_driver_remove: START wakeref=3D0 [  403.553288]
> i915_driver_remove: before unregister i915 wakeref=3D65537 (Wakeref Taken=
)
> [  403.566086] i915 0000:03:00.0: [drm:intel_runtime_resume [i915]]
> Resuming device (Later Resuming Device)
>=20
> Pushed new change with :
> https://patchwork.freedesktop.org/series/107211/#rev5
>=20
Also when compared DG2 logs with ADLP working logs,
Already 1 wakeref was taken by DMC firmware(i915/adlp_dmc_ver2_16.bin (v2.1=
6)), in-case of DG2 looks to be missing.
To support other targets and to prevent consecutive resuming device added f=
ollowing check,
if (i915->runtime_pm.suspended && !atomic_read(&i915->runtime_pm.wakeref_co=
unt))

ADLP Logs:
---------------
[   99.502434] i915_driver_probe: START wakeref=3D0
[  713.979074] i915 0000:00:02.0: [drm] Finished loading DMC firmware i915/=
adlp_dmc_ver2_16.bin (v2.16)
[  102.455766] i915_driver_probe: END wakeref=3D65538
...
[  103.448570] i915_driver_remove: START wakeref=3D65537
[  103.448587] i915_driver_remove: before unregister i915 wakeref=3D131074 =
-> (disable_rpm_wakeref_assert)
[  103.585886] i915_driver_remove: END wakeref=3D0

DG2 Logs:
-------------
[ 1271.704314] i915_driver_probe: START wakeref=3D0
[  383.050984] i915 0000:03:00.0: [drm] Finished loading DMC firmware i915/=
dg2_dmc_ver2_07.bin (v2.7)
[ 1272.021133] i915_driver_probe: END wakeref=3D1
...
[  395.883531] i915 0000:03:00.0: [drm:intel_runtime_suspend [i915]] Device=
 suspended
...
[ 1291.450841] i915_driver_remove: START wakeref=3D0
[ 1291.450877] i915_driver_remove: before unregister i915 wakeref=3D65537 -=
> (disable_rpm_wakeref_assert)
[ 1291.603281] i915_driver_remove: END wakeref=3D0

> > >  	disable_rpm_wakeref_asserts(rpm);
> > >
> > >  	intel_opregion_notify_adapter(dev_priv, PCI_D0);
> > > --
> > > 2.25.1
> > >
