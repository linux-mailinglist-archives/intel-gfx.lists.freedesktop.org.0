Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A1F9EB694
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 17:36:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 922E110E91D;
	Tue, 10 Dec 2024 16:36:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IWZofOxV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20BAD10E91D
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 16:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733848572; x=1765384572;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lSX7gb1IKeMVjSNqufzEiREowl7eSkmOTNVdPoMXLiU=;
 b=IWZofOxVYeCTrO2WD3rEeuajplTeZUK6FtjCCffp3huPRznE4BikRZN+
 8RPpDOb/XYS9xb08S/SCa+OTg67t+eqfbb104A5r8sCbiDj47x0QU5LDR
 C9yQpyH9s1S/nRq4b4loyw4dDavZyxutjViGhKsWv1QyHgC3RnbA+0kPX
 ezj5V/4vkFUQIW+HBGjtar6AO3reTrB1UfRscrB/PXYaMNsp580BJfpPF
 wCFIRnB9rrOi78jN9/r+xXDP4oR+Fyu+H7nhX+1b0v6UQ8/9+LUbJWygy
 MLylkI2FrIEEqe9i5r3QlH8fAW5N8yamXeeqI1kDReZtthuDF0yCuFLmX g==;
X-CSE-ConnectionGUID: 3GexdjaZT2yWAMpatLDbcQ==
X-CSE-MsgGUID: xbat/NqJSKSYhLectKts/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="34105748"
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="34105748"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 08:36:11 -0800
X-CSE-ConnectionGUID: 1jOLO9mUTd2tdTn3blKRFg==
X-CSE-MsgGUID: dOUlpAgOQ9GWp7buBu56hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="95289857"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Dec 2024 08:36:11 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Dec 2024 08:36:10 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Dec 2024 08:36:10 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Dec 2024 08:36:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m8jiJnsl8aGxo1TK7ppL/q8vwB+FuEFdMN83imhwCfrtOiGfP7fGRWmxPLegPJ3NgKHsE3lNgoAJjpN6GgqLWbpdA9RM69/GXZ6GnPWOhMGrgJDh1BnhLxAOvXFcMJ4uRMW5dfl+A7LHUGiGjTPOIDRhQzdClxc/0Dhh73HrDO3Uz9jaaFkqv35BKiZcIN0lj2tYq0MjjV7A8GuNAGOG5FAlIGE5eYT/mWsBX4+ILh+WxJGbP4No7AG0msLnKHJojAhWGLunGIuiAhYDlWfCWFt8B1JKsxP2FqHw/j8gD3lyJXmQxMPCi94XOtbwmCK0x6KYKMiyiXSDZyR0h89UAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b0xfqfa8WJEMA1XI4FJDj8umO7V7Kkj+N5nEgLEK338=;
 b=UNgG23krPjNrKmyt4BGD2scSYX1TJgDpSehi3H4wPAa+8Oayty+YVSvDsQX2ZMZ4Wc0nD0T4MjMOUPmcUMXKGnD4MMPs/38cmsi90avJ3JgPYTWHAB5nPdjpxiG/gNU1zo9KnDeMyh4z8xUT8W/magSphPkkxAEaCMhONqdSmL9xKVjfWObISwYAdXoChu+WrKNaffD7Sl9T8oAKJeBZyToP3Io93xgEo/11oJuwqme6cgKzQBjlarpPonVy1t+iKkoEZPZNZ3vJzwsQRBPme9/mMD2xJlCzmBTHOyOYmZ1y21HaSmHuKTDG14RlO9l6q0OBvhQf2b9QoQDlOtolZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.17; Tue, 10 Dec
 2024 16:36:08 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%4]) with mapi id 15.20.8230.010; Tue, 10 Dec 2024
 16:36:08 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Sharma, Swati2"
 <swati2.sharma@intel.com>
Subject: RE: [PATCH 1/1] drm/i915/dsc: Expose dsc sink max slice count via
 debugfs
Thread-Topic: [PATCH 1/1] drm/i915/dsc: Expose dsc sink max slice count via
 debugfs
Thread-Index: AQHbSwxXAoDj4BFkN0qLj3X9wMIOV7LfrNow
Date: Tue, 10 Dec 2024 16:36:08 +0000
Message-ID: <IA1PR11MB6467AC9371F1248C34964F97E33D2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20241210140543.2117692-1-swati2.sharma@intel.com>
 <20241210140543.2117692-2-swati2.sharma@intel.com>
In-Reply-To: <20241210140543.2117692-2-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|CH3PR11MB8441:EE_
x-ms-office365-filtering-correlation-id: a8538e8e-0316-4cf5-de3e-08dd1938bfca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?3S5MNlRDElTWJFASsM2AEGELLZprpbYzXZCTXRNwFevslx9JZLvR3Xrk333b?=
 =?us-ascii?Q?vVgSSEeUMa3SUwa7uIxdkMbh3vnakkcf5hQIqvLEbisZPgHHDQ6EZhCDkS/K?=
 =?us-ascii?Q?0MNM1qikBU4sMaj5IgwvYJQRpS5tzrqrtiGORsrO3jyR7mV7iTlbfq0gBafI?=
 =?us-ascii?Q?W7u045kb5Henix0z/8LMOEQn68ITl8OTfBo943va/pGez+IOquIWBjfJQmkO?=
 =?us-ascii?Q?W68Yufluftbpl+WDoMVCWwRWp/KmIrDFgh0bp3+9HG7vggyBB9VpYKe6rdgg?=
 =?us-ascii?Q?Ckv/PNhaBUsoFCQko3Cm1qiAutKa3TfofbNBsXjsh6fHb75lgrMlDFQlKSqW?=
 =?us-ascii?Q?fEVoEr34zqRBep+8lmL4YkMhl15kyyNbjj2I3KOBGGc18REpb2hobyqZvebF?=
 =?us-ascii?Q?N2HnQ6JKthxmG81ABQpKf6k4A5sNcoqyJOiII30bLAB9RkInm2XV+kbSAvpl?=
 =?us-ascii?Q?uxAqzKkyVd2s1BO1f6AsMcFUDzs/XGzpTWGsk7nUIcl6IaihinP95Px/LlMH?=
 =?us-ascii?Q?wF6xfWjcnTRHt/Y5IALrk9FJyMrjtMZ0vF2I70xbwxVEUXpZMgV0hj/UH+AX?=
 =?us-ascii?Q?SMzntV5ln8UFBpZwNw/IMeVYM3OA9T5/ISGUSulK1UQ+uCsRlbaqHLgB1V/8?=
 =?us-ascii?Q?PuiPkVEg433UauNzEf/X5rvmSqIeVZQfT1PRskEzGuqsjDuIhLLT2HxPNRz+?=
 =?us-ascii?Q?XPefBLSvtrL5Yl2ZaPiv1wyUyckvDpGSE9ZoApbir75Hta5l4AKTwS4a1o2X?=
 =?us-ascii?Q?ktZ6JvpYnalO6JDqEiyeNvekOc6DHZOcd3JWedX0Q92Ubgr1kjMIMexnFukX?=
 =?us-ascii?Q?2/n7ufM08cQiltHmZ9Za2jaDWomJoe1/ccvbO0IRCDFWWVzVzEksBcaazmNw?=
 =?us-ascii?Q?DybghXRI0n0LnkXyEofUNyQ6NvXiPzhkHEKHaOodsVzC8b5CF5EysXCdybP3?=
 =?us-ascii?Q?FpYik10Knrt5WEFYUQchm641r8MkIn8ya48cao9njXqw/fbgFcLUyAOscgfx?=
 =?us-ascii?Q?p/RKqmyLLNOKYUeQ0NsICtRtEqSHB/D3qy6YC22iMDs3Kt+UvCnSo4tFHEKA?=
 =?us-ascii?Q?nykOfoFg8+/na/fVdn9MDID+qnYlU4EQD4GuQ/q+ktJQH9LD1qc5x3Up5TZE?=
 =?us-ascii?Q?SoENQzmWGRt7fZ6rT8B8CRn7j/pd1Q3dKcC5dhGMHUlLYFeBRlY4mHToWCwb?=
 =?us-ascii?Q?UtT8DY8ScFsBDQNUirtHRkPG3yPExemU28p4wdR2n8Vavqzpw4gJJq5m4N/8?=
 =?us-ascii?Q?8Lxqu2rLoiIeBR+cN+kSL33QFd21FoZchbnds+svcNBo9hznnlOa5A7Yuogs?=
 =?us-ascii?Q?onqzzJ6dVub6jvnkAwmkvoK5AW8cEQmE5IZlt9CJz/oDeQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wMjIspJNp7csvO/W0Pbp2R1LsIyqP04THDhURoohgdh1OARIFmQ2GkDtHEsS?=
 =?us-ascii?Q?ws+lFkiAHD9svDakTqKLvPsbc8+CoOqO1xiFnl+1rsE0GayW1HRu38p8G/HV?=
 =?us-ascii?Q?PpI0VvO0Pq9wDSl3qawx+UmxqM6gdrIUuHX+RSwo/V/efbtP9Hm0PIxFgnEE?=
 =?us-ascii?Q?YBcVhgNYbAHwzXWETyvKVaVCBCVL7s38kq/h6W0x0sf48ZVfH3DJ3Tbfc8te?=
 =?us-ascii?Q?mFck4iQBNfUbcaAIdmCjefOwbwumanbuQBPO+xc6KDhHKESapbOPlzUPO/FK?=
 =?us-ascii?Q?Gs0qNgv3n1qrWQ5O+ax4U7utvwG3cIQFlRTQ2SE3gcJ+hyAAv+FweHLzjmM9?=
 =?us-ascii?Q?OQ/3yG9/oBM4kyukDWETaEBKUrWi0hZzptW+jOpbwYy++pnJnSxMwV4h4RdI?=
 =?us-ascii?Q?WemSKdQNMOdMCU+vbHdeFm49EYKg2vFwVxeNGwQrN2U0nOqjwADvnlMkRguz?=
 =?us-ascii?Q?iTTVSWFV4++9/rCANbPjNyL2tojiPHZQCYd3ahzEq9GYHQ85xJ5o2qSkq3GX?=
 =?us-ascii?Q?pC8bhbob7WmnFxFF4Jtw3nVA6t2HIPL62lC0vQWNwAkK/uDqXt/TErlVU8ng?=
 =?us-ascii?Q?GOV0yCEukOsUtpAmHCVtudRrNOy1cyhLH5fa11Dkv4qGeYDOxP4eXheM/36+?=
 =?us-ascii?Q?pA3+XuRv4aP53HuCdjtMaKaPoq7ROMUH4B/FADU5pnKb5IxvjY1vg7heX5gB?=
 =?us-ascii?Q?dPh3c+twmyFUbT1zlrH7JxxqQCjq70Z6v9bHLHwp0wFzqe97SdSQyLPcAS2J?=
 =?us-ascii?Q?bHo91shm4U2Mop8c9tGBEOPK8gSeBDmQOL7NxmKkGUDyvyI0kz4i3q+mEmsr?=
 =?us-ascii?Q?7Wk28mFPjAhjN6Nj3U5jS4A6q+rZXwRaXAH4g/G9PsfCx57L+zq+Q2qzVm4W?=
 =?us-ascii?Q?h/PBpoWKqBgAO8mwY6osW+rLAPSbFj52l8G1xMbUW9AS3gVelYzbFQISUtdM?=
 =?us-ascii?Q?usGDyEJTUyszBT+uh/zYiohFRCa90nixiM23AkCSEYbChuoqfqsNi4rrMfdZ?=
 =?us-ascii?Q?0D8mD1bWSBASEM7PGuujoQ3KjEg58MknS8Ys6E+nNdX7dOXWw2rzLTbo+TEi?=
 =?us-ascii?Q?7xnJ2iLyp+3G12vDRblZFX0Uv67SvJLQSNzb1Zgja1nBGZlkdPaEJNpmu+P7?=
 =?us-ascii?Q?UEKzNqvo90P3AtOuYySeOgZQfY4MToqMeBMd6+nFkEIvP8wwl9GG3Pc3lfX4?=
 =?us-ascii?Q?g5Y4AOKRr1SrbsqASPsZeb2F+eu+ptHcGkTdQtxr6hZvk8/GsugjGBiCGxic?=
 =?us-ascii?Q?mfPQCDfh4+cze8elmBT0MEEd7z6mPe58N8cLPmNTjwhilQeHdY8A8DDxjPu6?=
 =?us-ascii?Q?ICWvWIMDUztI57pGgYlFaPxNndRko/kHve0PB2UHZo7MOnF3WPvDvgYEPVK8?=
 =?us-ascii?Q?wU2vOHq4EFjWCHqjEdVaTfLGtTWN8LINJUgYO0+w/hJoeY7HZN+BHJQjB096?=
 =?us-ascii?Q?atAh7criXdlvG3YBu4BFmWv9iDZc1RKS/94YMcHu++Cxmt2luCVjK6h/iLP5?=
 =?us-ascii?Q?+4NiAeyUTwuqv2G/a1Zw5w9lEbfSnYucfj57Ilo4v9KHqjgXMS1IeNYbfo6X?=
 =?us-ascii?Q?4Jzqt+7B9Z+k3MMGVjvpo35wAbtKZIIUOyCgWuCS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8538e8e-0316-4cf5-de3e-08dd1938bfca
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2024 16:36:08.2484 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: owqFOCPduLTPxE1BFSj/BsqJCCNbdPS4VjeY9RxicFjQdVi6YZ/lEo32CMMAcb1BGxbROSSH9RHsD5RtvnXLIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8441
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Sw=
ati
> Sharma
> Sent: Tuesday, December 10, 2024 7:36 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Sharma, Swati2
> <swati2.sharma@intel.com>
> Subject: [PATCH 1/1] drm/i915/dsc: Expose dsc sink max slice count via
> debugfs
>=20
> Expose dsc sink max slice count via i915_dsc_fec_support debugfs.
> This debugfs entry is required in cases, where sink doesn't support minim=
um
> of 8 slices in case of ultrajoiner and minimum of 4 slices in case of big=
 joiner.
>=20
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/3387
> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 3eb7565cd83c..4823d27cafb5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1013,6 +1013,12 @@ static int i915_dsc_fec_support_show(struct
> seq_file *m, void *data)
>=20
> DP_DSC_YCbCr444)));
>  		seq_printf(m, "DSC_Sink_BPP_Precision: %d\n",
>  			   drm_dp_dsc_sink_bpp_incr(connector-
> >dp.dsc_dpcd));
> +		if (intel_dp_is_edp(intel_dp))
> +			seq_printf(m, "DSC_Sink_Max_Slice_Count: %d\n",
> +
> drm_dp_dsc_sink_max_slice_count((connector->dp.dsc_dpcd), true));
> +		else
> +			seq_printf(m, "DSC_Sink_Max_Slice_Count: %d\n",
> +
> drm_dp_dsc_sink_max_slice_count((connector->dp.dsc_dpcd),
> +false));

LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>

>  		seq_printf(m, "Force_DSC_Enable: %s\n",
>  			   str_yes_no(intel_dp->force_dsc_en));
>  		if (!intel_dp_is_edp(intel_dp))
> --
> 2.25.1

