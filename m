Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7070EA87B95
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 11:12:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB68F10E4FF;
	Mon, 14 Apr 2025 09:12:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A4OyG82p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACA2610E4FC;
 Mon, 14 Apr 2025 09:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744621967; x=1776157967;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3WGsByKQVBJuAasZFGhs7qlGSaQANrki7sYN5s7uwN4=;
 b=A4OyG82pYgnbpGcol6U2UNYToGpU40us9XbSziXyp03bNtudbLoN7zpY
 bv7AQYQo/b1wooym0HZyL/ZtDa9Pz6WmYEio1CWFzYN2eZD6XkkOpStE2
 VSGxJcelhblexM3OAkzl+7kO8fliT0tBP0cXm74IWttkCXLvpkiBrVjAv
 xk6axAvwYfmhBpT+EC+/VcU7ppYN566pOv3peVeq75AUc7DT9PWt4YPdN
 fQO6sikSoIwzXXby4Jce4d8NCIaRqwJSJR6bB4ym5geye+FjTdZI+DaGP
 yVjHlv1dWx+LHZ+pMuOLeXun9DbuE37SMF/YYMog4OpGUihHmgfeSsqZx w==;
X-CSE-ConnectionGUID: X4kwkDTQTLyrEbX2NvoEjA==
X-CSE-MsgGUID: 6KGP9XukTsmrRWksvtnIgA==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="57466773"
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="57466773"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 02:12:46 -0700
X-CSE-ConnectionGUID: efs/DW40QAaZ/kuiCVgMBw==
X-CSE-MsgGUID: rUFz5OGKSaO0ywXYtg0j7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="160719309"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 02:12:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 14 Apr 2025 02:12:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 14 Apr 2025 02:12:45 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 14 Apr 2025 02:12:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s25Q3n3mPXv6obdvoepDoo2pKEMnAC9PfMt6Ka44n8dX8WPrbSnt5EMmfoyiJ9+gQgJYnePiOluGCD8zlP/X0JYGfxNPt4nJdFsT/75QZ3+ew+YeWdDXUKokdu1lgDvmjVLsIMlXgaA/r2RGSkmv+f+yQylT9y+25FVvczOS/d0NmnfsbbwJiDCNclu6ue1kZ+iqxACFIXBrtQDmQQ/mGmzPGeeQhzmepgGrhrOSk2/bDDsvFIlYrZM0CPqHXCKmokA1AEh3tpLVpdCLux1e9IM2z0kG/uPcyUfUxznN6zP+Bu87euqCVwxoTAHnDEb08oVH0P++H4Q0OdZDGNOFYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/th8hJt2HtYthlY51qIKUoF/Tk48qdkEjtvFiWjCmMQ=;
 b=NbUebPsUmJjNiBf4CVlgdL9B00vvkSw7CJabm5QNIPjm8+nPEL2INepKPGtnuNFdO55Xflu0IIFFRkEReB/DfyqBhABojCc3ygT4s6uYTVbtEHENhZU8UR/WF591Q/SqtzA/K+MSddZs9VM4xflPj4icXYOk5S1KhaWFRc5E3RHs7M2AzSbJlSWW7URbvEMqQibUtmn1JBfWPjzZM6W8cc/0R+8A7lNV4O378XLblconJOiCizc6Pel3I0u0H/k0YO07kFmr88Gs5d42SctDoFLxSu2Fo4hLqJo9MBHA808sUJC+/hykkBFPR1MytTale837PLd26JslvXoaud8nKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.30; Mon, 14 Apr
 2025 09:12:01 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8606.033; Mon, 14 Apr 2025
 09:12:01 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH 1/2] drm/i915/display: Add macro for checking 3 DSC engines
Thread-Topic: [PATCH 1/2] drm/i915/display: Add macro for checking 3 DSC
 engines
Thread-Index: AQHbrOiOx+o/Xxf1GUWf3BCA7GoKMLOi3I2AgAADu+A=
Date: Mon, 14 Apr 2025 09:12:01 +0000
Message-ID: <SN7PR11MB6750007372BBEA56AAA1FA7DE3B32@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250414024256.2782702-2-ankit.k.nautiyal@intel.com>
 <20250414085701.2802374-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250414085701.2802374-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ1PR11MB6155:EE_
x-ms-office365-filtering-correlation-id: 551d2045-22a5-45e2-91cd-08dd7b346aae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?VaDSkTe1Ix7kduUIop4YE0EQcITx8TB0SBpE83rsY0UXzmjgqi0IT6/PB1If?=
 =?us-ascii?Q?gM7nPioRjKMSuAgT5euccZhLAU4H3kRmsueA65lnkYNyFXw+oU0OpFd4Dovb?=
 =?us-ascii?Q?YqAeW3pc7suj1yI/DGYlED/26Tj1O6YQQy3LHNanQZ6qHRINHONFu8we1sG/?=
 =?us-ascii?Q?IughtjOyFHT37p3Zr+xgBLlqdsq4AyHnUBqb8PYDSLMPTfUrGGyLUuwVVMrC?=
 =?us-ascii?Q?0Y6t8PH3M6ZidhRjPaN20DXoxN5JXxGIsNqAEfECN8+41vglXWykXXg0fYif?=
 =?us-ascii?Q?XrvLCV/Q37p1YyKl+1HYsrz+qNK+4MQmrJEOwwubYWUVkHoepPPLjEeEO/Hv?=
 =?us-ascii?Q?Ad1xH+w/7vPbwkO9TCvqBcbzwT3iUizVcZm/4qJ6LNn+p63mhvNNUX2C9MQl?=
 =?us-ascii?Q?tGFezrOMTu++I2wgPLprKmIYOHppxmbr8KHed3BGVK230KF2LXciEDKGzGkP?=
 =?us-ascii?Q?aO7b18rO6zkvy9vgFVxeyCmEUNRgyaV/jy4HV07F3KeEVHi+aalSpt6dhv4e?=
 =?us-ascii?Q?u0YBNGzQEVn6ZNJDAEuCvPSHsBm3I9LjoX1aeClRws9Ky5sgeZU6W4R8ZjtA?=
 =?us-ascii?Q?4g5/0Fy9t6elxoF4M3YExcUOwpLw0lM7BsVawJNEwUNYCjUZf0Pcqh8skZdo?=
 =?us-ascii?Q?d8JRxChmY8QhregWNlLPTXMsbfO7yFs3jjsxeH0d1mJWHhdWG6qVsFPOwMuC?=
 =?us-ascii?Q?S3Ciq1V8Xx9lHUcXL4K3msJ3rYwKhDMjm+N5/XjaBmdk/dMU3mZDcGYkzctg?=
 =?us-ascii?Q?LDgawJGOTTZkwqhlgzd8owmNNvJ0leNyBxHGBPynw/R9eWmz+50K02gPOLQu?=
 =?us-ascii?Q?gbtqUvlZdgDdq5DHo3EORKQLu7gS+GY3I9KWZH9yDSUxIIqg74Q5K6Zy/hrz?=
 =?us-ascii?Q?QZyENns/jUvZinXJergRPOZcsPjbk26HHHWg9KUPZVCFXza8Pkq1HczC3PPD?=
 =?us-ascii?Q?3wylSSz1TzC3waNwGWm18U99Pl9crjRbaKtyN6d2UuxYuj/leKJzDjZ7x/DZ?=
 =?us-ascii?Q?toa3URWGJI9wKTmaQT4rW2GEK0+z+I3YV3y/vtK8IbpkKq7YY0kXegp6vqIk?=
 =?us-ascii?Q?Z7bIwOn6ZwyTpYbJpRBj9wmI0z0CL67XrO7BD29dNfLVsbahy1ExKHMbilmk?=
 =?us-ascii?Q?Fr3lTb4C18nfUkbA/eE4MVPj6PcJW5sLi90zORIskQs6hOgOxMq7Tlue2bNa?=
 =?us-ascii?Q?SYNs2MrlaT/mXGnpec0jiHUksOot0/yStd4Ta83bIq0zuzVXPcpoIqxwlciW?=
 =?us-ascii?Q?hZNK1ORqE0i5qmVvNB9Berb4RisQXhtlk0vAlUYn6KTFFya21lY+Zi/F7SpX?=
 =?us-ascii?Q?quSmorA//YWuxV8LkeJSb9fgJvDCEB0A5vdu1ziFsixcD1WfVXciaAIfq6RE?=
 =?us-ascii?Q?yhV3Ohz0bSzMwoOBVTKMkNB1NXxDVXXLNalgImEy/inH4SwWF1sApEOEWvBT?=
 =?us-ascii?Q?0iHh5MYOR6jg8UgvPwq9BEr3yjQ9wU5R9EipiijiHZdm+SvSlTu6tw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JiFU86rZEkjHM5SsvWEJhTJcphfCn5IlPkmYT5TkJQqHUs+Ti8vcIY0JpnwX?=
 =?us-ascii?Q?uwt6bkggCsE5gFJgGqzyeWZWg0U9SV2N7Id57udlJ36E4RR9oz90UCPSwBVV?=
 =?us-ascii?Q?KE6DIgyyGzOwhwGCzZKR6z1GQqaFqRk7EOYDpErsUBx1TvVnrlpMMxCjSj7j?=
 =?us-ascii?Q?crbBXwXMnGyFFai+O3Q1FpjNMjdEF7bgtMg4+gPqS8vrK6J46lrDJtFDiWrX?=
 =?us-ascii?Q?sneCd5ZXaGo5s3C+xoYs9liii1MKB8VB8Xv4ZX17RAlCqyHGoUG1XGQW033c?=
 =?us-ascii?Q?no57mMJnDkMEQos74zvHHsSXvqPLMQ18kA3UfWD4N91DySBnVrhDY87Tf9he?=
 =?us-ascii?Q?tSCOE+5SLrB5Kkcac6SnyvnOFFNSBQptIiVOsJLWJPWHdZZe3NgOSJC1czFH?=
 =?us-ascii?Q?KNIN+djRKSCgB72kEd9A92DeygW08slTHaCYPOvtJefrlN3JAgC5XmnExZcu?=
 =?us-ascii?Q?878FZ/Mn9xOq3Ef/GqhbPfEFYFW5NaMu+54DJNH9gaigYor/EZPTcpQZcWLV?=
 =?us-ascii?Q?FSeDjtpxG8kVqvcOQWZxljuWGj0yJo2XPa1vIqdyt3bIgoECAhbzWg6BKX1U?=
 =?us-ascii?Q?XfNhV1geqxUvgojXNDsuGAisMOxdjTbvdHZt763xw2A5DWt2K2fIo4sqWnuH?=
 =?us-ascii?Q?9I5BneVAedqFf+dWWfv+4VfE0ctRXdFhCLaDU25d9dzszR/hPYOgX6iAkNw2?=
 =?us-ascii?Q?QlE1wUJGafmEyxpH+u2MfwHvSeNQHFZX63CjlPprWTX08RhTLdHegn9zoZZi?=
 =?us-ascii?Q?aWC2e1y8IYqzgNCzejGgJqPSomAvS7u7oa3T5O5Sj2hsyh/Ap1Nij3IaQ76H?=
 =?us-ascii?Q?7hLHFGGzwnahHp26q+dJ7DrHPeZ7VVBwkKxLbQIUHJyibVvmMBm3sUo8+Ke4?=
 =?us-ascii?Q?b7CiPkAMYStj6jBhm11tFwgYOz8pQv7XAuUXxA3YgqHU5JpIxWuchLuytWyR?=
 =?us-ascii?Q?rheWeujXS4uEQdQS4olQxCInApI4zRetnLtbyJhbvhmXG6qEICYEujIjfOPi?=
 =?us-ascii?Q?CT2Ecif0AhYmnPxz3pK2u491aLFl8iGmxtMl+/5nC33QAhpR3rY7qUq6pHkC?=
 =?us-ascii?Q?k39Dbg8nZ2uHfZrvQJouy0lcnSxg9V0ZQC++SrwGLTLHRB3eOgtMOLMLizJN?=
 =?us-ascii?Q?hSmRXIrxnLSqXyPeoywwwPFcrkl3I1azXUHFkOK2s/H617EgWoRIanyYlgLo?=
 =?us-ascii?Q?18E23Ze+vulp1+fTg806Uq+0FTZ7St2ejwWcR6d5D+Lf1a9hkDH7ZD6kMrTf?=
 =?us-ascii?Q?inFNV1mi2YUKDvxZ77M9Aj076igl5IWgFklCz2n5U0ZWICEgesfLZYgW0TtI?=
 =?us-ascii?Q?EbQAoe6DlWERYItH69JYNTh/8PljgaiNMhzHa0LqYPRhhbM2OaH0nULNEEx9?=
 =?us-ascii?Q?o0et520jpMuHUNMkBvVLgbihy5o6RwMDQpZkd5bvGfdyATAHgwzspSFeeWRE?=
 =?us-ascii?Q?ZDPv97LU0Dtl7gg3sucTse13xc6MCFKWX0Cgq69Xh4/1Zz97xspaPUONCLZJ?=
 =?us-ascii?Q?eQJihxW5ehLKqXT0av6M5qSrch52owOqYduyN4oY7DJ+77c5/0R6m8qQb1k9?=
 =?us-ascii?Q?VGgETMRr0tN33vLRkyAPoCJY9sefyLt/8eagctNW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 551d2045-22a5-45e2-91cd-08dd7b346aae
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2025 09:12:01.4584 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SJ7Dj9rBIWjVracW8q8r6/EixpuFEyy0NDpuyZmD7o8r5w/HZ51ncJuCm5gX6Yd56EeGf5bCFWn45OdqRvXc7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6155
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Monday, April 14, 2025 2:27 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; stable@vger.kernel.org;
> Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Subject: [PATCH 1/2] drm/i915/display: Add macro for checking 3 DSC engin=
es
>=20
> 3 DSC engines per pipe is currently supported only for BMG.
> Add a macro to check whether a platform supports 3 DSC engines per pipe.
>=20
> v2:Fix Typo in macro argument. (Suraj).
> Added fixes tag.
>=20
> Bspec: 50175
> Fixes: be7f5fcdf4a0 ("drm/i915/dp: Enable 3 DSC engines for 12 slices")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: <stable@vger.kernel.org> # v6.14+
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 368b0d3417c2..87c666792c0d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -163,6 +163,7 @@ struct intel_display_platforms {
>  #define HAS_DP_MST(__display)		(DISPLAY_INFO(__display)-
> >has_dp_mst)
>  #define HAS_DSB(__display)		(DISPLAY_INFO(__display)->has_dsb)
>  #define HAS_DSC(__display)		(DISPLAY_RUNTIME_INFO(__display)-
> >has_dsc)
> +#define HAS_DSC_3ENGINES(__display)	(DISPLAY_VERx100(__display)
> =3D=3D 1401 && HAS_DSC(__display))
>  #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >=3D
> 12 && HAS_DSC(__display))
>  #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)-
> >fbc_mask !=3D 0)
>  #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >=3D
> 30)
> --
> 2.34.1

