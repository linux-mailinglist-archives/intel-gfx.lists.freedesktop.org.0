Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DD99A3297
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 04:21:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92A4110E34B;
	Fri, 18 Oct 2024 02:21:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VvZbKDii";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 547C910E34B;
 Fri, 18 Oct 2024 02:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729218107; x=1760754107;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Pw9AZHnGQ2G4An/u7VZb4Co0YQqIoYyc06A5Dpwqnsg=;
 b=VvZbKDiiCN5WwDlEsfKGIn30vAHm8rAMdeJxSZ2krkfC/iYh7sCnjBEW
 PcIos+0dxciQ0WLtA3WoUVDmt+QX2B3J5lXwsl3q9gOV2mU3wTflJCwJC
 6nnG+313bkt3HDNIwXSCcSVSUQyitTCvOUfZyl0ZcdYwhFO12WTy9L7sS
 7fBoutJAWTkCDO54n4O3euM/0US8u6nYXBKwnv+W/9yty0wAYN8iDz07j
 BeKcQ6c6OADNGuZ7hi51fG0jVwLlDrEPzs+AGUp/QO59yaEfmS68y8yxM
 mhkRY/tarhkNOa0ixCkB/pcTunlZ6xS8+J8iMtShroty00oinAMk7+LOY A==;
X-CSE-ConnectionGUID: NnBGpjnyTWeESx+1VIIoQg==
X-CSE-MsgGUID: 5EOcMZLtRlWYPApAxLoAnw==
X-IronPort-AV: E=McAfee;i="6700,10204,11228"; a="46231779"
X-IronPort-AV: E=Sophos;i="6.11,212,1725346800"; d="scan'208";a="46231779"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 19:21:47 -0700
X-CSE-ConnectionGUID: fgOuvL5ITROHR/kzG7K7SQ==
X-CSE-MsgGUID: F52pYXnVQt6NXYbV3sNXtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,212,1725346800"; d="scan'208";a="78339706"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2024 19:21:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 19:21:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 17 Oct 2024 19:21:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 17 Oct 2024 19:21:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wFtP055rJL7KDfuWugTydGXVVFzfWbyQxEp7opW9CkTqJmxgvpOfPJOkgxbeRd9VxqAx2A88bXrcxb33BhTPSWxK4wPNcg1iyLATm1wbI8IsLQrpFs8B9zbkcj0SQ1LKeptjImhyro9XOCsI8RKETQt3sHhbOALrAt8CyvdGgkIwl13bY1LXNSOeye4MylS8ahi/S0s18jwJv+QjoIADVwVsxyfG5V00FCMAyHSDIDWewS0XH6nO5KejBWTVA+PBvFzu46pkT553U6lR857JDFKo4AwrENNpbnPdwXS0T8oIwhoZaAU84al07n9zBePKFpKr8446BeC8SQwfKOWPEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CD1R4G8iLOc1KVaGTqG9cVVZSOMXcXBVWyTzB1E+w+c=;
 b=i7KNLIlki+tiuE4af3H60wxrun1gWuerxX6xgQrOfMLmoGVSuIyJdymocdlVkHPnFA+Lg6dNuVfnSFC+hFv12/LDUeEn/yHUdAMsn7RJ2dOu5yFt3zfCQPKrfRuuuEtxUN9MjbWQdUlLt82mTgo9ncDpevwYoS2DMOdI1aAge6hRcsk7P1CWGPfe5/OUAMth2tWt9eFEA8rFmmAoguKeCvIH4NfnEuhgp4bFsbXEfAzFEi1WhaSybVf3aEh+znLmBL2x5BCMGf/2zH5JGafu8fN1+r3lIbH2B/Jt51CrBLRwaC2TD9VkDjdVgqbc58xs2jYAjZR8a3J+Z/1OURsDuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM3PR11MB8714.namprd11.prod.outlook.com (2603:10b6:0:b::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8069.17; Fri, 18 Oct 2024 02:21:43 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Fri, 18 Oct 2024
 02:21:43 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 7/9] drm/i915/dp: Compute pixel replication count for DSC
 12 slices case
Thread-Topic: [PATCH 7/9] drm/i915/dp: Compute pixel replication count for DSC
 12 slices case
Thread-Index: AQHbHhA+2ZW4fsw0EE+4Gs4lrZApH7KLzKAQ
Date: Fri, 18 Oct 2024 02:21:43 +0000
Message-ID: <SN7PR11MB6750B6933CD8142243E7A27CE3402@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241014081000.2844245-1-ankit.k.nautiyal@intel.com>
 <20241014081000.2844245-8-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241014081000.2844245-8-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM3PR11MB8714:EE_
x-ms-office365-filtering-correlation-id: f72b4623-ee2f-499a-9e12-08dcef1b9b81
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?4LfTqnD0/42g2Dlxcny+QhUw1TrR6QZwyrU+kdutkI5xSSp2iAXZEb9vYltq?=
 =?us-ascii?Q?QoLM2QuUNGfwytrM/wOQ2UMSKfjg63CTTg5ucxeGnQPVDXhq9B0/ExJTemio?=
 =?us-ascii?Q?gOsEUdD/F97szOrcKTYLuVnAyC4PAV42nJxOYPdOenFSIl/awNuR9sE+7Wuw?=
 =?us-ascii?Q?yKCtTbGX8tv1NfdNRxYHCfjqITZUdxgYRP1EDQRO2dtGVkRLHbIx/Iqyabyf?=
 =?us-ascii?Q?uCTCoiDmxDpN7c1eLgw2T7BSh8TIWZus2KmLbkmz8WgLs6DB63aSyGqrEaXe?=
 =?us-ascii?Q?b8KK9oWaWC5Xhslf7bkGOziOa6vnvH8LZ/pLsNp06OUCqyEH1ne1nkZGiHZh?=
 =?us-ascii?Q?ImJN9sX/HgVAiqeXRFFhK18356W1KLD0YOvlfl0x8Hqd84kyH1ly/MHXAUbN?=
 =?us-ascii?Q?RvKr9Cbob/kVDUbdBEjEDgD394TGLzFz5IDHiT53frTrQopIseW0UgFRbkOf?=
 =?us-ascii?Q?WunN/MWyoRtGY1f1FsLiGdRojkPNK70yGbKgx2gERYLYHhnlJQ7cOI9fHUpn?=
 =?us-ascii?Q?VHgOgmmP40yPfdtxQOjtK02RBhs89fBNZSXbYyc2PpI+eRAzy2EWgEclBXjp?=
 =?us-ascii?Q?FrA48C49W4Cy7h6og2RZWo8am/QwbvuFFvPndyVQO4h9KLW3uxeOi62/SZR0?=
 =?us-ascii?Q?T6ShQouUJD8zwO8h/stIJ72Waf5LkGues94/kcw4wVzUP58knWr9ygSFyMu2?=
 =?us-ascii?Q?A5H+YtkXpA3ZkkudQXGOCRhfOjtelUkT0yqhYY9S/4JfatMyW3ETsEMLNu8w?=
 =?us-ascii?Q?LIJoUodPka4O3OyA7qo50mpTCbRdo5dRjrU/FlnCfLCh8lvr1RU2smBfHUmi?=
 =?us-ascii?Q?SdrTUY/OYzERoQZR/w5mCzaSaFiWkxwaI80Uy55Ejn0kfWSIU5H9ETlZfrcJ?=
 =?us-ascii?Q?ukmNCAbkR9CqKsIWlPKeRMPe/3CYD1H6TPw1kowy47xBagYO67X2rV3aj5Bo?=
 =?us-ascii?Q?A4V8iWK6NGJI99f3AwSzPqhsoY7SYhh4Rsy0kCR4WXeQb3mhY90sbgibETX3?=
 =?us-ascii?Q?fexzcFfM6isYW7RMEEAg5/tbQcbU1+vomNF3BF+e8MmZow/W+Ir1KqIKbsVR?=
 =?us-ascii?Q?CqXrd3VuFW+Bz63rqhGnI5YvMnxpKnvv4cyn7uvxxRfcy9SDdOJgnUIBNPT3?=
 =?us-ascii?Q?Ghgipa6r0d3gj2Yg4vYqqhc1gQkimcrwAO9CHp/fk5ILQg0qDZTPKs5qNsOE?=
 =?us-ascii?Q?NVB1vp/xzw/SMfZOV0kZP48Ql+sEC72jd93p8F97MptwNGneuPobQ5mFBc0H?=
 =?us-ascii?Q?4CF+ZATkX2gQb6Gy1wB0td5M7zDQ4HjaD2eYM+dbv8+cxLhbBYR9lRfrIhbN?=
 =?us-ascii?Q?bBmiyIecjJ7qyKeztGD21Zhn6h39QZiu1+F1t4dGa4fpPIPYjPTGAdNsKNPR?=
 =?us-ascii?Q?cFXK4Mk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2QSWDDD7qJDKC6vy6RIZYCL9G7GSuQNiUt95nIb3xNZFQ/PmQDlizW7JKUAj?=
 =?us-ascii?Q?8k6YakaRhSt9D/CXNMLk3rdjbOBvFfDdOOGohy78szrS2kViD6m8rd6bCEd4?=
 =?us-ascii?Q?HIQKzjrNPyxt0mAcoYVJNguwCbbEbMaz7ektdBVXDS+0mOp1NnGMElPEXUWU?=
 =?us-ascii?Q?ohGDi0l/hv0U7G+GRv4A+06kJSEvdVA7lXlzmrKesSecjCoeQhtJCVbLyy4J?=
 =?us-ascii?Q?uN3FwllvwrlUptJJNtZMOe3RMylz7gK7AZL1DWIb3EjEw9a0Cy56E5B9wRF1?=
 =?us-ascii?Q?dGrMT95VE9qv2d40QIgiV96qaEs+dJ4zpZF/AV1kc0YpbhCOdL87tirmmYfI?=
 =?us-ascii?Q?z86Loadkz6AERWc8/39LXDXYQ9YYCOESbD3QsfOBQe37N3r7dsDV9TLgY4OU?=
 =?us-ascii?Q?YTrMDyCUdHL7U+heyDkL0rsQAYbLuTDfsDnJvA5qG7e+WEWCs3x0irNwByQN?=
 =?us-ascii?Q?1vs0OvIKhJbF5+zbCZxKQ/tk2H5b8qIbXdvThSFYxe7V7+HpvszWseWf/o+J?=
 =?us-ascii?Q?7LGFs17xDb3SxwAJWuYkCq1hAHHgfj1yMWWBELJcWTIR0O5fn60RRkHQbHdz?=
 =?us-ascii?Q?d7/YbyZhCMH8guJlnbMgSeuV7UCGzzdzrJFgtHgOGMcCBviRGjfaov9td5Ql?=
 =?us-ascii?Q?BcF4IGkII/RuG/odLiOxUgDDFmUYB9NrKeB+Co+gYwiXRMq6vB0XqcXRnfkk?=
 =?us-ascii?Q?M3OwNifZsUSfqo57vxgLHzwCr0VUpKtkdWpUrxdIyDbGp6WqqIZ6FlR9U3jm?=
 =?us-ascii?Q?ZnaAXBauW19pB3ik93xYijNsCMueHzdzv4aPWU73+HVrVUQ9T/oUs4tyPx2Z?=
 =?us-ascii?Q?xp1183YeYQA3b+AXRmeC3iVdkXs1P4pyjEZNFJT0WVks7HutcPVmh1kqzeJt?=
 =?us-ascii?Q?wZQDowjDu8mdDV/54eImfP1AmCkDnVwxI3h5W3CMuoW1RoW6kRx6SK+TGNim?=
 =?us-ascii?Q?IpaRKZBcqyzrV0IRRAjb8SkwbSjo5wyY81lV4Dw/6D/SXtkdDP2/uqVdjXPn?=
 =?us-ascii?Q?8OdO3POk87w+qV+b+Y6PqoV83ESjBfg7LdpZBVvoOXbfq0WME5V4mmwwOMnE?=
 =?us-ascii?Q?hhnmRcdHk9jRU6FtN3r+JfVm4zPp0WnhOZ0j8J1pNThb5pgK6i5Jl3UjPdsB?=
 =?us-ascii?Q?uLpd3K1T9LwsqVCZXxdmBZBy5E5eJI+tlMexoTcLxgGKeYMIGoR1AhXzpF8l?=
 =?us-ascii?Q?kfeGyZzfF15+Pobf52XKuwzRMqGjmwmA0uIArJF6zrVxa2ChpNZImyx0O+c+?=
 =?us-ascii?Q?Peut+95YeeKm6uyiczgy0NZ71tOsUYfWsbbYvJXaL3VOW6MfeypCZPkGf1Y6?=
 =?us-ascii?Q?8MviObufGxrjruGj7VhoKLML6phEfvVMVu+sgiXIbFubIQIgVv8UM0ivj016?=
 =?us-ascii?Q?qxDIT95ubKwBWzJq+qixEcwe7JmH4UFRZIDRFNBke7YVU0/unMTpsoCg5un0?=
 =?us-ascii?Q?fEYCxresiTp8H8ey8HfpmHlmSq7tjalZC3rQ59mBN+SiLFowbOrjUPobkfOU?=
 =?us-ascii?Q?qKBSNfEYpRh9mafBPx5fTkHxrCIsXnlZpytLOwwoVTOFv4ZgBk/XSs68XSnh?=
 =?us-ascii?Q?k9B4xQJnKtyM6Bsyky9vuFxFIzCEeEFMe+u727kT?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f72b4623-ee2f-499a-9e12-08dcef1b9b81
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2024 02:21:43.1509 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gnrEVZ0I6VwCL+EJXcAyW3mMjEquFg0U77z4s41tU993CWBjibCwHcvV/JeffOnUXwIXUpfzBPbo74KIARWKAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8714
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Monday, October 14, 2024 1:40 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org
> Subject: [PATCH 7/9] drm/i915/dp: Compute pixel replication count for DSC
> 12 slices case
>=20
> Add check if pixel replication is required while computing slice count an=
d fill
> the pixel replication count in crtc_state.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 61 ++++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_dp.h     |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +
>  3 files changed, 63 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6cfc7d1c96ea..ef96b9235636 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -981,13 +981,37 @@ u16
> intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>  	return bits_per_pixel;
>  }
>=20
> +static
> +bool can_use_pixel_replication(int mode_hdisplay, u8 slice_count,
> +			       enum intel_output_format output_format,
> +			       bool ultrajoiner)
> +{

Shouldn't we also have a DISPLAY_VER check for safekeeping

Regards,
Suraj Kandpal
> +	int slice_width;
> +
> +	if (!(mode_hdisplay % slice_count))
> +		return false;
> +
> +	if (!ultrajoiner)
> +		return false;
> +
> +	slice_width =3D DIV_ROUND_UP(mode_hdisplay, slice_count);
> +
> +	/* Odd slice width is not supported by YCbCr420/422 formats */
> +	if (slice_width % 2 && output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420)
> +		return false;
> +
> +	return true;
> +}
> +
>  u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  				int mode_clock, int mode_hdisplay,
> +				enum intel_output_format output_format,
>  				int num_joined_pipes)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	u8 min_slice_count, i;
>  	int max_slice_width;
> +	bool ultrajoiner =3D num_joined_pipes =3D=3D 4 ? true : false;
>=20
>  	if (mode_clock <=3D DP_DSC_PEAK_PIXEL_RATE)
>  		min_slice_count =3D DIV_ROUND_UP(mode_clock, @@ -1031,7
> +1055,10 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector
> *connector,
>  		if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
>  			continue;
>=20
> -		if (mode_hdisplay % test_slice_count)
> +		if (mode_hdisplay % test_slice_count &&
> +		    !can_use_pixel_replication(mode_hdisplay,
> +					       test_slice_count,
> +					       output_format, ultrajoiner))
>  			continue;
>=20
>  		if (min_slice_count <=3D test_slice_count) @@ -1458,6 +1485,7
> @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  				intel_dp_dsc_get_slice_count(connector,
>  							     target_clock,
>  							     mode->hdisplay,
> +							     output_format,
>=20
> num_joined_pipes);
>  		}
>=20
> @@ -2322,6 +2350,33 @@ static int
> intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  	return 0;
>  }
>=20
> +static
> +int intel_dp_dsc_get_pixel_replication(struct intel_dp *intel_dp,
> +				       struct intel_crtc_state *pipe_config) {
> +	int mode_hdisplay =3D pipe_config->hw.adjusted_mode.hdisplay;
> +	int slice_count =3D pipe_config->dsc.slice_count;
> +	int pixel_replication_count;
> +	int slice_width;
> +	bool ultrajoiner =3D false;
> +
> +	if (intel_crtc_num_joined_pipes(pipe_config) =3D=3D 4)
> +		ultrajoiner =3D true;
> +
> +	if (!can_use_pixel_replication(mode_hdisplay, slice_count,
> +				       pipe_config->output_format,
> ultrajoiner))
> +		return 0;
> +
> +	slice_width =3D DIV_ROUND_UP(mode_hdisplay, slice_count);
> +
> +	pixel_replication_count =3D (slice_width * slice_count) -
> mode_hdisplay;
> +
> +	if (pixel_replication_count >=3D 0)
> +		return pixel_replication_count;
> +
> +	return 0;
> +}
> +
>  int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				struct intel_crtc_state *pipe_config,
>  				struct drm_connector_state *conn_state,
> @@ -2391,6 +2446,7 @@ int intel_dp_dsc_compute_config(struct intel_dp
> *intel_dp,
>  			intel_dp_dsc_get_slice_count(connector,
>  						     adjusted_mode-
> >crtc_clock,
>  						     adjusted_mode-
> >crtc_hdisplay,
> +						     pipe_config-
> >output_format,
>  						     num_joined_pipes);
>  		if (!dsc_dp_slice_count) {
>  			drm_dbg_kms(&dev_priv->drm,
> @@ -2400,6 +2456,9 @@ int intel_dp_dsc_compute_config(struct intel_dp
> *intel_dp,
>=20
>  		pipe_config->dsc.slice_count =3D dsc_dp_slice_count;
>  	}
> +
> +	pipe_config->dsc.pixel_replication_count =3D
> +		intel_dp_dsc_get_pixel_replication(intel_dp, pipe_config);
>  	/*
>  	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
>  	 * is greater than the maximum Cdclock and if slice count is even diff
> --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 60baf4072dc9..7ab86688a721 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -149,11 +149,11 @@ int
> intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector
> *connector
>  					 int bpc);
>  u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  				int mode_clock, int mode_hdisplay,
> +				enum intel_output_format output_format,
>  				int num_joined_pipes);
>  int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
>  			      struct intel_connector *connector,
>  			      int hdisplay, int clock);
> -
>  static inline unsigned int intel_dp_unused_lane_mask(int lane_count)  {
>  	return ~((1 << lane_count) - 1) & 0xf; diff --git
> a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 4765bda154c1..4cb44d88a642 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -109,6 +109,7 @@ static int intel_dp_mst_bw_overhead(const struct
> intel_crtc_state *crtc_state,
>  		dsc_slice_count =3D intel_dp_dsc_get_slice_count(connector,
>  							       adjusted_mode-
> >clock,
>  							       adjusted_mode-
> >hdisplay,
> +							       crtc_state-
> >output_format,
>=20
> num_joined_pipes);
>  	}
>=20
> @@ -1506,6 +1507,7 @@ intel_dp_mst_mode_valid_ctx(struct
> drm_connector *connector,
>=20
> 	intel_dp_dsc_get_slice_count(intel_connector,
>  							     target_clock,
>  							     mode->hdisplay,
> +
> INTEL_OUTPUT_FORMAT_RGB,
>=20
> num_joined_pipes);
>  		}
>=20
> --
> 2.45.2

