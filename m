Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4745F8ADCAD
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 06:09:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E8C113061;
	Tue, 23 Apr 2024 04:09:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ECtrv0dj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B88CF113061
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 04:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713845351; x=1745381351;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=15T8A+sfLsEYtMmu6oOpowDRyrG9zCPWI2/yKT9+v14=;
 b=ECtrv0djHqtelnxVNUX1D9tVQNx/Ny7+1lP/Zi6f//L1/jPNjdbt7nnl
 Ckn4vXsttkEPgnD07CQsmFL5YRUkhsktpDhqKtaqPooVhvRqUeJeHqUZp
 72DCyNQ2FEl8feHWHtlPPSe2Bt8kCNygA3CMVbSz8QvgrLJKTxEqms177
 22dCzTjO+p87WCEDthD6l0bIKmXfdNhAALM7p5tI6Dxe5RKCB6ki+Vfd7
 Zg1oSFbrAPLacG4TtBhMwj5+OUS0EMmLC/AFsLCLUGN71sGTYWXI6aLEI
 AeDCoeBtEpeGSLYs9JsphGLMmiszC8l9wH3DxHM5w5FBMDjXMrM2ACTWy w==;
X-CSE-ConnectionGUID: Hvim7jcbQy2pqD+nvsdanA==
X-CSE-MsgGUID: jcIBraJHQM+E8f1kdRPqHA==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="13195199"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="13195199"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 21:09:10 -0700
X-CSE-ConnectionGUID: rfR8JADkQXa+KPmzBBArvA==
X-CSE-MsgGUID: qS0QgfdNQfOlu9Ssicj6TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="24285187"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 21:09:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 21:09:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 21:09:09 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 21:09:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j5VSQlnHyVj+Q+gLjbkivd0vlQThgxIwnPGm+DzoFH57y3V7vhYet52UGcVLXQSAlyT3lhl4gyGowUFyeOt4kud27+ExsGwNRyWR/LCyrVvr45KA5nsoIWJYMqtz8T1Q0yAKl6+XKcdOz1SxZd9WSwmy64O2NsxJX0wM266RB57zxceAPOSP5LlA/acW/28XspM9LYKliAz7osxUTMMdHrxLIPL74lu5wsymyei6UumtBynEMksBfgi2EzimG+jjbT353hxpWirvUj0esKWcSZWZJhgkfNDY/4bBO90E2ZVWVc0gieg3aFigbdYusDfMDZf2Z+cplHyaqnwFgxLhcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hj36sKaUv2dfzwopNeOcOpL7M7kYj+yvTG1TwJSJVmA=;
 b=KyKCK8wUo1f8QJ8YF3U8XplHrSk2FiJXyCOVwbSLNxS7wb4/3Xiasb/dXMwG1Gm0u+kNzCx8wIA4c7JJIMEqifVUfExyzdfMr1JZGYP/MzEYqueMvBZMINbhdZox6Xz00FrJ3OWihvy96L3MyWH9M6JTCJ08GTdq4ZZ/wj2ccNsdH3ZtwpkzNoi+1Q+nOvr4vqxKWUrkPq/VnnIz8IYdpgZbsTaJj6kQxtz7W5Y+DqOQxRGCe1BTvIeLsEKy2V0HBhbmXSPsn0I4BLgirjJJ5+0vThck0zIEUmBhqsHppv6IdGbk5Lar6+OxqCVvr8yYJvty3i51LxiQhkhYbFm7XQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ2PR11MB8423.namprd11.prod.outlook.com (2603:10b6:a03:53b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.20; Tue, 23 Apr
 2024 04:09:01 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7519.018; Tue, 23 Apr 2024
 04:09:01 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, 
 "Kumar, Naveen1" <naveen1.kumar@intel.com>, "sebastian.wick@redhat.com"
 <sebastian.wick@redhat.com>
Subject: RE: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
Thread-Topic: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
Thread-Index: AQHalGYmTql/vixhwUmUTHm9AQvCSLF1KlSAgAATkDA=
Date: Tue, 23 Apr 2024 04:09:01 +0000
Message-ID: <SN7PR11MB6750E6BFFC0755CCE78E7B0FE3112@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240422033256.713902-1-suraj.kandpal@intel.com>
 <20240422033256.713902-3-suraj.kandpal@intel.com>
 <IA0PR11MB7307E137CDCDE6DC39F6B290BA112@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7307E137CDCDE6DC39F6B290BA112@IA0PR11MB7307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ2PR11MB8423:EE_
x-ms-office365-filtering-correlation-id: 4b1e056b-bdf1-4b69-cae9-08dc634b1b99
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?dctoR+Bg5RmfEV8v4Pfoa4dE03SedpEeVhD8+bCfEBVgRl0ariiw7W+iAV6N?=
 =?us-ascii?Q?aOSwhXm8yhbr/ofFOwYHGAaP3hBft78OtWhQso5yxqL/D0Bed1DY5hLIBp+M?=
 =?us-ascii?Q?RO0z9jYvCdpfkqrO9xKCPCWz0dkMfnAdv0QNy0JHMkEslHi/5Z+4G5Rnbrxa?=
 =?us-ascii?Q?eSY9Z3K3xXHpXU3DPPz/9WuhfOsiS3kuRl4TIH0eQeF0Qm0AcErAivwcdBdF?=
 =?us-ascii?Q?dj7F0ZWD4H96tXtjR8apxZxJ6y8DG1SHhS7S1D0lVd5tHhK7yJytyneEW/Et?=
 =?us-ascii?Q?Ds//VTCtMXH7prL7k1PTLHWWqYkFD4f25MyKfxaPec6JPzFJAh0XpPy6XO0n?=
 =?us-ascii?Q?KdvqoUdW1kPM06adREMUOWV0+cpK1MYizkL24ChtusvxFVVy2xx1fXnnzdTD?=
 =?us-ascii?Q?bVboWOztIprj6unjTv1roS7e8ouMJsmMFTLq/T5ZsYidrtb5fHL7KtMwiwW4?=
 =?us-ascii?Q?29Doech6cauqg5zzRoSiuwOjYEWaEZX/893ECKzugxswVeYf0UShYJtsBqFw?=
 =?us-ascii?Q?kzA/SJCqNqylxpp7vCSh+BsEmKlIWdaCIpFNjfm8NKeXaTAr9uIHDnpU2iAD?=
 =?us-ascii?Q?NsJkQFFQxQjGNio6xewWYentznVLS5KTfLgbEdE9/CGpiUVy9ySyzhBf5Aeb?=
 =?us-ascii?Q?jBNqTRZ43gyA6JVcx/+KKuHnwBVDx/5KY8ud/JWvyiqJuUxm4x/GDkKx6kHn?=
 =?us-ascii?Q?eiahT6zjQOWDJuXGZHXEEnpXELeV3XuOM5UBnO3kJgJBYftyQO1+96QHzBm2?=
 =?us-ascii?Q?RtUd7C4XM8S8n2Qhsu4Z5z9mJmOyriZ0pQDv4SA21Dy4Fv+m0CKrM/SufELc?=
 =?us-ascii?Q?fo0d4lWAbnQcDm3/+qDL/QMGwVKL563U8Dbsq9ON0CXzNKauYqQtbN2TPRIl?=
 =?us-ascii?Q?Wd3kBze+3wxlggNMMfUX6NbLg4MPV3MsiwGAzlaHXmyFd/a9MfR64HjRgVC9?=
 =?us-ascii?Q?iJBdtU/lX/PxV1FpVQl4BqQPgR+UpyN4zJ/tPH3p7fCRCyNgowgDTLLKwlaC?=
 =?us-ascii?Q?Q2dm5vrR4U/68EkrARY3exh227NibZWg2XPAH7+ZRgLWJ8SNAWqWH9KycCFL?=
 =?us-ascii?Q?TVjFjA/gZDY+7XQrw1ib9hDyUh5EWdiHhd3YigYcbhBl+c+CIWYpK5JmGfZz?=
 =?us-ascii?Q?PgI4h7Zd045q/ECrky+d8OcFv0IWlkiohHAybogVyD2F65RdRSQxeZ0twB/+?=
 =?us-ascii?Q?/tOs1su6MQaMBRcWN7ZcyuNE+JcBXoGHX26AU3m4M6iyyUIbnX6jDeS3sjDA?=
 =?us-ascii?Q?BZFCmuvQG0vii6d6+O6E0u4t61y6HIcC86LOPZZ29/wXYwiZ6hcGFTMh6x2T?=
 =?us-ascii?Q?qnqoD967i553wRNOPSIucqRfpcZ0Olz86FeDXxNHxFtbRg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tVy8S2ThEUnFrmFAXya5d7a1SFGGHVW3rKIcXmGTMIe5bEzuEmfCJnSM2MOw?=
 =?us-ascii?Q?LK/glZdBzyfxt2N6eOG/36w4jdQA72xUZf2S0KCMvFMlkLFAc65F8t8zB0RV?=
 =?us-ascii?Q?NeJmxUfbiAZbhHhhuRu06B53p1h9ObBIMF35aMfKxqk+ItBZUYUnyRZxGUFs?=
 =?us-ascii?Q?8dGCd5UOFB0hzkNGrpoDl6hp/EEFwrjGES95rNc1Ct2KvQi6KNefPUuFoenB?=
 =?us-ascii?Q?yPbGcyfFVjH9SbXBfn16nxSTAGslq+znCIh3uLamtgrKSIRHiU+WDBzFd39q?=
 =?us-ascii?Q?OLFZww/nCXG/7RgsonI4O7baWtc0ydxJN9O/DV4AiYfVJPfbmEFFdob+NcmZ?=
 =?us-ascii?Q?E+5DjaX57wvN7uMxQ0EGrgGDb1jjcrj4aaGcQAIsPLKziyXgN2DbFAlu7rXZ?=
 =?us-ascii?Q?e9rbL/Swc2Sf9ntbZHNrS0vhqtaKEU12C/8WQMWKKXhmfOUj/Z6LOcLZUiRF?=
 =?us-ascii?Q?6NNjKl/C9w9n9z52WpKm+gNNC3d713JXSCQn9v/8laJJOKiB3VRIZvnnGr1i?=
 =?us-ascii?Q?55UQvzEuJl+W5qHSvQ+BUz1zo7NZmrgdfWdg8NpaznT4JRgZ66i0OHeRBRel?=
 =?us-ascii?Q?IeObVMfgXBHypCPm3XxREo/uIxDwtskh72uaiV5UrCCQKR4tOC767r14QZ9m?=
 =?us-ascii?Q?iPw0/jC1QmEdhDlpQR0goVcjgNt8B6LKKRBZdOSORq/vdqMUivljbXUGnMRA?=
 =?us-ascii?Q?40lpbJ3tbo8LdFEIfn8pfagUFuBXkh5nq/oI5hZrntVuNuEeHfC4FD8Uy415?=
 =?us-ascii?Q?kSoaZKveTCllHv4R4gZHRSuD+Fq77cN0NAzAUjHjpbCAoy17xenw6UIZLNyX?=
 =?us-ascii?Q?vBcIjjIudogE1EloINjfC/WKYpv8YQd0uRI8I2rbLL7PeF/bc5gL54c34N0o?=
 =?us-ascii?Q?An6r4i9jl4tjxdCLOlfQXKejpw+bFrxK8XlFb1igcOLUrr3bLKQi84OZVj5v?=
 =?us-ascii?Q?69jPErgCbId+Iyn5RHksWcpx5FX0mBlhNxiYD00pDHdlTovNXsKZdpa8qL8y?=
 =?us-ascii?Q?VGzwh6+jMHHHjKFYDabIXfLG6ShACzQXXxvZsV6xywn7XUtjSobvdwASvYvr?=
 =?us-ascii?Q?oMECLE/l7WwBr/Keytl0+tAtAiMQEUeGxMvxuWdTt7oyV9dDUiAWc4GE1RpR?=
 =?us-ascii?Q?fdw9ByHTLM165FF+Jd4yRoZlDQCqOXAN2Fx/58rt7zMtCkOMIJxSKjwcI+wl?=
 =?us-ascii?Q?gqxaNk8FvJ8C+ClTklmFFqmYrkW+1D+WnPjgDInsAMS8x0eetT+X323b+2pd?=
 =?us-ascii?Q?TE4s+Im78a9GIsQwCh9P9Db9u1W6/0k8aTSXOjSfFCxTE1UIKJj3PcJ0yjSy?=
 =?us-ascii?Q?XLKZfKOroA5eXRd5k60bBk4zNCe+dd75mAtsrtGqw+LX34OYMGQHLyXVDj0a?=
 =?us-ascii?Q?PB9I6R18uA60XDmyik0FMFHlR2b4i6+sm9ZUkU+XYG/qahOCHUAvzk2EyzKH?=
 =?us-ascii?Q?9nZ5oQni5ihROl4LQKoiHnGkB8QQJhr26ci+iRHS8o/oa0IIebSOzoFs9pie?=
 =?us-ascii?Q?s9U+sp4BLHfj18K98L+DaqSGP9rQDENPAokumYoyEYGZBnzmro8znzRpZbt4?=
 =?us-ascii?Q?EBacsh0Ic9KJOuwhWhnh8V/bgW9BDfRv3UDCYph9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b1e056b-bdf1-4b69-cae9-08dc634b1b99
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2024 04:09:01.5963 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sHcEQCKI8nGYg47WEKgsZhDPh7nW9FKp9/ekra3k7aX4jE7Ny96aRKzZ96gimHva4v4xkZSKS1Z/kgB/Y5KZew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8423
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
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Tuesday, April 23, 2024 8:25 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Shankar,
> Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Kumar, Naveen1 <naveen1.kumar@intel.com>;
> sebastian.wick@redhat.com
> Subject: RE: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Monday, April 22, 2024 9:03 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Shankar,
> > Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> > <ankit.k.nautiyal@intel.com>; Murthy, Arun R
> > <arun.r.murthy@intel.com>; Kumar, Naveen1 <naveen1.kumar@intel.com>;
> > sebastian.wick@redhat.com; Kandpal, Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
> >
> > Add checks to see the HDR capability of TCON panel.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_types.h    |  5 +++++
> >  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 10 ++++++++++
> >  2 files changed, 15 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 62f7a30c37dc..1cf4caf1a0a9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -401,6 +401,11 @@ struct intel_panel {
> >  			} vesa;
> >  			struct {
> >  				bool sdr_uses_aux;
> > +				bool supports_2084_decode;
> > +				bool supports_2020_gamut;
> > +				bool supports_segmented_backlight;
> > +				bool supports_sdp_colorimetry;
> > +				bool supports_tone_mapping;
> >
> 		} intel;
> Even though not part of this patch, but the struct is growing.
> Can you change the name of this struct to a meaningful one, maybe
> tcon_capability ?

So this was named intel because it comes under the following structure and =
is
Called like this
Backlight.edp.intel
Since there are two standards one which is defined by intel edp hdr specs a=
nd
One defined by vesa hence the naming intel here plus as you see above when =
getting
Called it tells us that this pertains to intel edp backlight capability.
I think it makes sense to keep it as is.
Do you still think this needs to be renamed?

Regards,
Suraj Kandpal=20
>=20
> With the above change
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
>=20
> Thanks and Regards,
> Arun R Murthy
> -------------------
>=20
> >  		} edp;
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index 4f58efdc688a..94edf982eff8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -158,6 +158,16 @@ intel_dp_aux_supports_hdr_backlight(struct
> > intel_connector *connector)
> >
> >  	panel->backlight.edp.intel.sdr_uses_aux =3D
> >  		tcon_cap[2] &
> INTEL_EDP_SDR_TCON_BRIGHTNESS_AUX_CAP;
> > +	panel->backlight.edp.intel.supports_2084_decode =3D
> > +		tcon_cap[1] & INTEL_EDP_HDR_TCON_2084_DECODE_CAP;
> > +	panel->backlight.edp.intel.supports_2020_gamut =3D
> > +		tcon_cap[1] & INTEL_EDP_HDR_TCON_2020_GAMUT_CAP;
> > +	panel->backlight.edp.intel.supports_segmented_backlight =3D
> > +		tcon_cap[1] &
> > INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_CAP;
> > +	panel->backlight.edp.intel.supports_sdp_colorimetry =3D
> > +		tcon_cap[1] &
> > INTEL_EDP_HDR_TCON_SDP_COLORIMETRY_CAP;
> > +	panel->backlight.edp.intel.supports_tone_mapping =3D
> > +		tcon_cap[1] & INTEL_EDP_HDR_TCON_TONE_MAPPING_CAP;
> >
> >  	return true;
> >  }
> > --
> > 2.43.2

