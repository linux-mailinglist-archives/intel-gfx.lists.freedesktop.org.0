Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 853ED997806
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 23:59:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B65B210E81D;
	Wed,  9 Oct 2024 21:59:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wnm9VXQz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E562F10E81D;
 Wed,  9 Oct 2024 21:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728511192; x=1760047192;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Iqa+lswrwvyzftxuBk6IQNKaJlz9MHl0d+b20BkBqmE=;
 b=Wnm9VXQzFh08HzRcPlv7FU1iChRtSUX4RxOp2kQzpVvREGJ29wYFLJ6Z
 oh7Tck+Ls60arvgKnZVlu2v++KhxT6LWp/gENmfiKkSU81wzq5P2QXi+o
 vxqWWXifqFBFOeMmMmG2fjNp8m3tTSuhD6wmrzKFJ5mzqc9Kd9xeWmlBH
 bT84s+anJI64avNduRwcL3wPqKpgHBEOfKoBcROiYSX4C9CktdokRSATG
 G34hmqStST3ejG92f4VcF9zBGoeiRmWkP2wWRPUMiWNwr8gvpv5o8emSz
 s/rjbn4hXTb8kaI35u5lxOzEFX1fo7a0nvi9LGrPbByUKc9dAfIDY4Mxt A==;
X-CSE-ConnectionGUID: aLpWVYjsTEuWkan/7RIctg==
X-CSE-MsgGUID: /aYyu57ESz6y5wMaXrN2WA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27288113"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="27288113"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 14:59:50 -0700
X-CSE-ConnectionGUID: 6Yjqf++9RR+MSAJeOhrx0Q==
X-CSE-MsgGUID: hiztXk9aRw6sZOatFZdlpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="99708456"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 14:59:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 14:59:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 14:59:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 14:59:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CEwuFSl0sDlHfwLU+e3RAsrUpPvzdsB4nt+LWGWs/9IDgdRdoPcyZ8lrBWiZjeaaUUppdQ5FzLPfUu/44rfV7eRbnyAX6cQBj97bfxrYu+KA7myOlTHxDzXbmkzNKF0Ne4xmtHCRuFN5Bejv2dEmoU9Ks8kYNzDtVCNXX3N/3YKBts7GCZkrsau016mVFHMoawnL/ODS2YnLetrFYZ9hxV8hhwYKBOyVF+RXfAeHQW4GkURwVDIYz56eaB1L1xXaP7DBTVE/Dc+hu52BxopwVzeoyG4TUw2b4Tn7nVKqxf6/v+rS2Nde4pq37kVkEGTut3jxCIdRtHHMP2fY/fTTLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ni6jrQBZfb7i/EhctAWC/8r1nVVtagWVbm6uGEJc7NI=;
 b=GUXrO5KzdWq09MWPQ91WPt/xfnsRUulD0CgWTBMdiZWXqX5B8wFvJGa48YISjAxkcD0TFqpGzzKwPW3SUlol4H7P6nnxqzDDOkDYt+txOtknD6UYlWEfXnJDYcrTMm87DfT3kCuW4v6aaG15A6BQ93g5jdz7gYHOqa+BYvJvHz1hWOF2gFw5tDBhX0AEWBJrxSV2h/SuS3NolFLlvv+aLPf5W1z6E1xOfkLHZImdSJbI3LkDbx/C2RH3s5XwG1Ql0rj4DLm1DlUfwi3sq/IceOn03FlGvzvz04lTAJSQGsIkx1Q5e4Gv4YKaQiq6Hk+bn4TNg0cDjcOxKPc76chWaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by BL1PR11MB6002.namprd11.prod.outlook.com (2603:10b6:208:386::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Wed, 9 Oct
 2024 21:59:43 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8048.013; Wed, 9 Oct 2024
 21:59:43 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Cavitt, 
 Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH v2 1/4] drm/i915/dp: Assume panel power is off if runtime
 suspended
Thread-Topic: [PATCH v2 1/4] drm/i915/dp: Assume panel power is off if runtime
 suspended
Thread-Index: AQHbGoOOOD75BKxKc0KbGwi7+GhuzrJ+2h1AgAAUmgCAAAZ88A==
Date: Wed, 9 Oct 2024 21:59:43 +0000
Message-ID: <CH0PR11MB5444A6ECAD3B5768022C4CC7E57F2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241009194358.1321200-1-imre.deak@intel.com>
 <20241009194358.1321200-2-imre.deak@intel.com>
 <CH0PR11MB5444908185C8687D0C8F07CBE57F2@CH0PR11MB5444.namprd11.prod.outlook.com>
 <Zwb0-AgbO3LyH-3o@ideak-desk.fi.intel.com>
In-Reply-To: <Zwb0-AgbO3LyH-3o@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|BL1PR11MB6002:EE_
x-ms-office365-filtering-correlation-id: aa5d95e5-7dcb-44d1-90a8-08dce8adae69
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?wL7vV/u0XdAyEgE4nQTuwvZ8gA3osLTItSTd2xpXH2CUBYEo4nMguPDZYXu/?=
 =?us-ascii?Q?8aduG0EpGtwFH4kOFEylRru9GfgPnMyKK5BxJhG3XH9nq5rCKMJWBZSDoK9f?=
 =?us-ascii?Q?zI9xZtNIgr7XolJbZIMlEbduo4rqYO6W9vDt0H+S+jONd2cl7LG9PyPfNbkn?=
 =?us-ascii?Q?wFM2nW8un+x4gc2Eh9rrjsLnOupToEdeqREQ/IR1oj7ae7UyodijCQLVTOUu?=
 =?us-ascii?Q?6XGfbdlLq29IJdYnDI/FMsa8HKkHRxPY+vDYJo4CPvb+hvzPZ6zct2+ij8z4?=
 =?us-ascii?Q?husTotIM78Sr5LeGHzoPybyRjUU6cYaQzUGPUI5vMawf7/lqDUAvPf9vG1jj?=
 =?us-ascii?Q?T2SZrVMP8xTfyMi5nTFyWl37HTGJA7Jg7mruhEDkNxxb2Ep8j7WmAfAiTmpV?=
 =?us-ascii?Q?AaTRntn01NxM/Di1Vk+NrGTzxf5Ra1SBtd3YkK4jL5TSkbga/fYXMF/KoGmi?=
 =?us-ascii?Q?6XB81wtgFh+F0Ftu7bhyyek2o7dx+Jqu6IVNOnfyxEFp100El0DXHzc/RDNC?=
 =?us-ascii?Q?ZFMEG/zvIRIKWbDMgOMjVya5yZSUmbRodwphVzAuxPkftEchf/IMcHxziWvl?=
 =?us-ascii?Q?U6VnOIDVLI/BdwrDIDCs5C66BNoASzdtmQyIa9zz7wIe3cFyBb1DliDRHNdd?=
 =?us-ascii?Q?jt/gcz6uGGYBGcJscBWSVEE0g1bP1Rn9kOuHfCDbbOSFtRInOnffwlZgFmf6?=
 =?us-ascii?Q?bnpsy5MWxUsiLY4NbAC6aJNURcFRljwT3sptPc+nO7Nl9A/3OiE4c1ljuoJr?=
 =?us-ascii?Q?p3qkex4EugMCctqzrQ53WFFlAt0xPJlgE8o4qDEnNbkvascpzvkyjPQlw6JE?=
 =?us-ascii?Q?OlvXFuqFwAQWLUqQAC8E+6vraY9uxQ7cFDI4xZayOvFlCHAbTnSA5NU8kREQ?=
 =?us-ascii?Q?AtbUU+vJzV3/LGjek2ncVmps3yIZu6PvkWO4ynrF7vDlOC2BjreMycwnlNHm?=
 =?us-ascii?Q?SK9J2TD/t5EA9EftiVDqg9JOxSQNdCuG2Bruc28vKqG0xLLG27m5q6CNCMyJ?=
 =?us-ascii?Q?21/Dea8HzPHUZ3A3oisR6bqv4qEMwINbyMbgm8QilNH1A7Y/EC+VnJRJhH0f?=
 =?us-ascii?Q?ABGhdEddSiusCdKBfib6+UWK9ASSLC59ZwzWVzySB412nooiv5/vCoz5YM73?=
 =?us-ascii?Q?mDyyS+M39NGREYrVy5GwxBieRQFiI8kD/1YZuKVnIseaBelQPhPSF9myYH6K?=
 =?us-ascii?Q?hs6UTHlfId6pvCqqFgXb8kjZM/WX14ADuXDz1u8GPmCCBE59DW9rFzu6TarH?=
 =?us-ascii?Q?wE+s3tXH7k1y6z4m3A+WcP2VlE8C+gy4aYmHaKOi8MqLDIw1A8lSbqr1OzZk?=
 =?us-ascii?Q?6OPYuOTBtBXAQIaBswryJJyNVRvEkh/AbPx0Kv4SrFoM1A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?T99djdyVwp8WXj+gfver4EgAuHCgHG/JexIJ6kiXzxVROXZGYsK2RzT3fbaf?=
 =?us-ascii?Q?2r85Qipk8Or/9t6Q2H4J5advLIIxkF10gCwqi2pyvVrc6uGmcVbLR9kFSi5O?=
 =?us-ascii?Q?UxMz7bvSIRvTLHqjrH9+f0Xr/x68LSml602vn1smVH7SGeR1XZoZ1jLnUlVn?=
 =?us-ascii?Q?ZbvLC9DAB0oNNIekjCHx61k6jMik002/uCTDK1X7uPD/smWkq/1wjwLIcBY7?=
 =?us-ascii?Q?oWJWlkO+Jzvheh5RoDzlIMmTncTXBsISEpFsW5V79TuUWZPrLnVMrHk81tky?=
 =?us-ascii?Q?c9+oVuCQVlpUTUI1Q4cnIXQvAE+euUuTFHb+nemHFhihy1bvgv9sf2w/vd51?=
 =?us-ascii?Q?y+IU++ABVrq/QDsBtJH4lLwrA69Yn5YUNOD++xe5ieN+nfyVMSwuOsTCnerX?=
 =?us-ascii?Q?HV9/lvAtAXTjLO36wQYh8txR3e3Z/1B506C5kaucuEmkVaqEUUlPddDlMSWp?=
 =?us-ascii?Q?tj6DRJoG62qsfStugZJtPzf8jNbP/pD9rtMCcjl22RLJ/JGkFGDlNz01UWLs?=
 =?us-ascii?Q?FhiCpAAcfse63cuMZf37GaPUlymT+nX0IQ01KxHtWN5Fr45ImOEwiek0oUXR?=
 =?us-ascii?Q?kJrDkJYvjqLEGVquBBO1rPY8XJ8V4oQ4ronOyLYPrhYPhUlR5E6aF3XxwHj3?=
 =?us-ascii?Q?ody9sud4223I+FiO+lch8nRNNSNcpNvz8w+GeNBH37Oy5ATl0unj+dFDihBz?=
 =?us-ascii?Q?ua23k163Gpaz90uKdzMVoDfgnC5bOFoxESV6+TMtYs4qePnadUvoiogF1gc1?=
 =?us-ascii?Q?TFvbTRVU5Weyo5vQ5XIZTlmBAtIeq6mAKOSEGE2jCoGCj+gyiLqg7IZ1Ykxi?=
 =?us-ascii?Q?1U/wEoAR5F25R9DWqLKOK3PbbipaaAk2ssckF06SeGfV3WfVxrpXmep4F62O?=
 =?us-ascii?Q?ceg2nxoOvht94lgvNVR1Ko+Cm9EMwE1w/av6GZCrrTGH0h6kII8wa8bskS0S?=
 =?us-ascii?Q?9yNOH2QgjQ2c0YlisVZXwVi4PgEr1QXCJsUPO9+zmwEtxlDCgigziNy6NjBa?=
 =?us-ascii?Q?ftwNK/lvF0Z3WH4Xa5jhYb4g/A2lZXNTYy9UxVXqVW8axm0APt9XYYXFhStD?=
 =?us-ascii?Q?UNKjWN4RrZDusSk6qj/p4a0YcXcRTKucAwwKD9aYRz0DaO8aG3BoeDsOnAgz?=
 =?us-ascii?Q?7xMzdhMDyHAzp0wl+rO0juZgKd9Ec7MX0iJlbF7IObWOg5mgLwQfKxQHAyMp?=
 =?us-ascii?Q?qw/cQhZKuzZK90AoIUJLXf19k0g8JIXcN8h9p29wiMlbTMcqGM1P1CP8SYcc?=
 =?us-ascii?Q?7HZCdHgz/dGY212MyX/4Qur5JSeets24gKA8BgUuQ7+DRERbntWkc0iYVhwy?=
 =?us-ascii?Q?0VdIAhWRCV27If6JopOBgVSArmCQeD0v4VmkHyf2/JvRrWrQBaqb6sA1Pl+n?=
 =?us-ascii?Q?LCNuTzd3Gq9Hc2eWL05kNaebypp71yrM28bMXrFMD2IsLvi1kWUxHReaA/Rl?=
 =?us-ascii?Q?Lvw6X2NBr04jrtRThouXXh6KPMvvKPlvrpqbGKJJ9MDxAr8F2kQbogfGCLrU?=
 =?us-ascii?Q?BMYzCCTrvPVlhKtsgjyV7L5kN+zofYx6zpWzoD/kMRuxljrdHVyHkcyWawQr?=
 =?us-ascii?Q?8KFQadAN0MMGO/LWvz1jsy0fJON118hl5l+uY5T1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa5d95e5-7dcb-44d1-90a8-08dce8adae69
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 21:59:43.2789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2cGHNg5E7SBGCuEU3Dyuq2p/LfJ3ylKJV8DwyKHKI/6PL06QfpiKv9nNFQqXc//1Klt1P1rYqmI91KE9SmBzgu26s1mZtktsBzhS2dvrJw8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6002
X-OriginatorOrg: intel.com
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

-----Original Message-----
From: Deak, Imre <imre.deak@intel.com>=20
Sent: Wednesday, October 9, 2024 2:26 PM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 1/4] drm/i915/dp: Assume panel power is off if runti=
me suspended
>=20
> On Wed, Oct 09, 2024 at 11:35:56PM +0300, Cavitt, Jonathan wrote:
> > -----Original Message-----
> > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Im=
re Deak
> > Sent: Wednesday, October 9, 2024 12:44 PM
> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Subject: [PATCH v2 1/4] drm/i915/dp: Assume panel power is off if runti=
me suspended
> > >
> > > If the device is runtime suspended the eDP panel power is also off.
> > > Ignore a short HPD on eDP if the device is suspended accordingly,
> > > instead of checking the panel power state via the PPS registers for t=
he
> > > same purpose. The latter involves runtime resuming the device
> > > unnecessarily, in a frequent scenario where the panel generates a
> > > spurious short HPD after disabling the panel power and the device is
> > > runtime suspended.
> > >
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c                   | 5 ++++-
> > >  drivers/gpu/drm/i915/intel_runtime_pm.h                   | 8 ++++++=
+-
> > >  drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h | 8 ++++++=
++
> > >  3 files changed, 19 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/dr=
m/i915/display/intel_dp.c
> > > index fbb096be02ade..3eff35dd59b8a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -85,6 +85,7 @@
> > >  #include "intel_pch_display.h"
> > >  #include "intel_pps.h"
> > >  #include "intel_psr.h"
> > > +#include "intel_runtime_pm.h"
> > >  #include "intel_quirks.h"
> > >  #include "intel_tc.h"
> > >  #include "intel_vdsc.h"
> > > @@ -6054,7 +6055,9 @@ intel_dp_hpd_pulse(struct intel_digital_port *d=
ig_port, bool long_hpd)
> > >       u8 dpcd[DP_RECEIVER_CAP_SIZE];
> > >
> > >       if (dig_port->base.type =3D=3D INTEL_OUTPUT_EDP &&
> > > -         (long_hpd || !intel_pps_have_panel_power_or_vdd(intel_dp)))=
 {
> > > +         (long_hpd ||
> > > +          intel_runtime_pm_suspended(&i915->runtime_pm) ||
> > > +          !intel_pps_have_panel_power_or_vdd(intel_dp))) {
> >=20
> > From what I'm reading, I'm fairly certain that
> > "i915->runtime_pm->kdev" is equivalent to "i915->drm.dev".
> > At least, this seems to be the case according to this comment on
> > the intel_runtime_pm struct in intel_runtime_pm.h:
> >=20
> > "       struct device *kdev; /* points to i915->drm.dev */"
> >=20
> > So, "intel_runtime_pm_suspended(&i915->runtime_pm)" seems
> > to be logically equivalent to
> > "pm_runtime_suspended(i915->drm.dev)", which would mean we
> > wouldn't need to declare the new helper function
> > "intel_runtime_pm_suspended" as both want to operate
> > pm_runtime_suspended on the same relative path for their target
> > drm device.
> >=20
> > Though, perhaps I'm missing some other reasons we would want
> > the additional helper function besides,
>=20
> Yes, I was surprised too but drivers/gpu/drm/i915/intel_runtime_pm.h is
> not included by xe, even when drivers/gpu/drm/i915/display is built for
> it. IIUC for this and other headers the xe specific ones will be
> included instead from drivers/gpu/drm/xe/compat-i915-headers. Some of
> these in turn like i915_irq.h will revert back including the original
> one from drivers/gpu/drm/i915.

Sorry, let me clarify.  When I said "perhaps I'm missing some other
reasons we would want the additional helper function", I was
referring to intel_runtime_pm_suspended as a whole, not just the
mirror in compat-i915-headers.

Basically, my question was why we use intel_runtime_pm_suspended,
when pm_runtime_suspended, at least at first glance, would also work
by itself?
-Jonathan Cavitt

>=20
> > so I won't block on this:
> >=20
> > Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > -Jonathan Cavitt
> >=20
> > >               /*
> > >                * vdd off can generate a long/short pulse on eDP which
> > >                * would require vdd on to handle it, and thus we
> > > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/dr=
m/i915/intel_runtime_pm.h
> > > index 126f8320f86eb..e22669d61e954 100644
> > > --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > @@ -96,10 +96,16 @@ intel_rpm_wakelock_count(int wakeref_count)
> > >       return wakeref_count >> INTEL_RPM_WAKELOCK_SHIFT;
> > >  }
> > >
> > > +static inline bool
> > > +intel_runtime_pm_suspended(struct intel_runtime_pm *rpm)
> > > +{
> > > +     return pm_runtime_suspended(rpm->kdev);
> > > +}
> > > +
> > >  static inline void
> > >  assert_rpm_device_not_suspended(struct intel_runtime_pm *rpm)
> > >  {
> > > -     WARN_ONCE(pm_runtime_suspended(rpm->kdev),
> > > +     WARN_ONCE(intel_runtime_pm_suspended(rpm),
> > >                 "Device suspended during HW access\n");
> > >  }
> > >
> > > diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.=
h b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> > > index cba587ceba1b6..274042bff1bec 100644
> > > --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> > > +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> > > @@ -20,6 +20,14 @@ static inline void enable_rpm_wakeref_asserts(void=
 *rpm)
> > >  {
> > >  }
> > >
> > > +static inline bool
> > > +intel_runtime_pm_suspended(struct xe_runtime_pm *pm)
> > > +{
> > > +     struct xe_device *xe =3D container_of(pm, struct xe_device, run=
time_pm);
> > > +
> > > +     return pm_runtime_suspended(xe->drm.dev);
> > > +}
> > > +
> > >  static inline intel_wakeref_t intel_runtime_pm_get(struct xe_runtime=
_pm *pm)
> > >  {
> > >       struct xe_device *xe =3D container_of(pm, struct xe_device, run=
time_pm);
> > > --
> > > 2.44.2
> > >
> > >
>=20
