Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DE2996498
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 11:13:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D1CD10E1B4;
	Wed,  9 Oct 2024 09:13:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DAscAPHr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 888F110E1B4
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728465233; x=1760001233;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xz9zSn9Fx2z7/a0UAj+2Tqp25q7aI2OPReodgDj9xHM=;
 b=DAscAPHrLsruyXRUEji+5Zm1hZQubSEhfyQK2JOMTSLfpGiwSguWkdf/
 OjN9NY/ADhLzN49ZwsViXuf/JVh+F8H1MHsy5bx1DGnTNsMMoNUw2vIcg
 vQaniUhFjbaZ4z5/Yb7ANhO9crJ7/YT8JQ3sY3Y0Plc3YbVKDXZMJgX+d
 RTknYU4j4rslZBwOYBlY3PiL0YlE0ZsNMriqY1h9+p5blPAS073UbYjFL
 6ufDa48haC7AYRHysElBPdEosynorXgHW2usBztuKyK2GABqdFdIcjmSh
 dDojuuJo2tOe3fI8FXgMuMvHDgqPxTTW7/qSiWqHc4NbdZcGyzh+EiMsW Q==;
X-CSE-ConnectionGUID: r+w7OR3PSCG3imFbUcReww==
X-CSE-MsgGUID: 97zc1prhREK4tjG+5sde/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27873588"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27873588"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 02:13:49 -0700
X-CSE-ConnectionGUID: 5eTOv/52TbqW/2TDAYY+EA==
X-CSE-MsgGUID: Qu4wnQ2uT8S+LjQGKKFIvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76413940"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 02:13:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 02:13:48 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 02:13:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 02:13:47 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 02:13:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W7ho8xYfN1mN/LZEWNC368A9H7r3Nxa+nuUGIr8L7ljV2rwJ8UIoZmGZL9As8qKywhyi6CZDSBsb8/cwmGLjnkLmOLCCst8yxMdnfyyeKf7UQXOLQYKSP7UaGfPD58nN3WAghmwXXkKSvv+du+4T/pvNJ54P8x09tbwtt/rQQIA5W/TO46GJjee5uCAnrJURjeay0xjhervfS9fv+sTLTzSQ0CgTOhja1c1sQNrcZfiejj7rDuo21pNo1H7KgevNOqw43+XuQHllNliiwuvAuWB4mZUk0bapq91d0orpsPtbMyWyUhztv6a+E7EmovzwKswoMSjuT8jlccJMsRxG6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JdJCJ+TwljIsTMIDJ4uRSTv5jlwrHMVuuCXcbztQPaU=;
 b=jIoac6ow+T4XPsmsikHe77Mj6bE/waqLULwgpVG6rWQ2em2qYOcM6S1FV4Qz00152FfJtuOco4xswGYclMLrbW/UrT2aYLNKheC+FbyAKIDMQHiOb/INpaf3+xr8JChSzjcNuLNBe79eMVfuuZxuYBHCtuPY86uEleen3bhkJyJdmSCDg+y36sqNRWB/oGqKs6ieSv8+qRE1v5uQnZRC+EWUHdUJwtGpPm6ANjOP/AeiMiHAanorXHCo3j0ikjNnwihwkfTaECIG5wGSoBClwccE5My4EMd1FWkt5g5xFe4arU4gYgBUo2AsVloSggj0RcIA9uvvK34GNSIzpwZnWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by SN7PR11MB8263.namprd11.prod.outlook.com (2603:10b6:806:26d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Wed, 9 Oct
 2024 09:13:43 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%2]) with mapi id 15.20.8026.024; Wed, 9 Oct 2024
 09:13:43 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v13 1/3] drm/i915/vrr: Add helper to check if vrr possible
Thread-Topic: [PATCH v13 1/3] drm/i915/vrr: Add helper to check if vrr possible
Thread-Index: AQHbFAg7z0KvG1q1wUycuWkVlIGvFbJx7i+AgAw+0HA=
Date: Wed, 9 Oct 2024 09:13:43 +0000
Message-ID: <IA1PR11MB6348DDD33628331926E0CF7DB27F2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241001134703.1128487-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241001134703.1128487-2-mitulkumar.ajitkumar.golani@intel.com>
 <CH0PR11MB5444C2DE56CFF7D77F1DC41CE5772@CH0PR11MB5444.namprd11.prod.outlook.com>
In-Reply-To: <CH0PR11MB5444C2DE56CFF7D77F1DC41CE5772@CH0PR11MB5444.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jonathan.cavitt@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|SN7PR11MB8263:EE_
x-ms-office365-filtering-correlation-id: 1fa1c489-9581-4032-6ae2-08dce842ac58
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Vk6cvh3+V/IKHOebYxt75apyymYhmtn6Fdg2mA3tIhUrM4YQP3KyjGnUSSA/?=
 =?us-ascii?Q?pqL5q/EUuXMmDRZLb666vjKzH2D6JjobDvcNy6V0iwvHWCFjtR9KYNKDo8Qf?=
 =?us-ascii?Q?UphzFZ41Rq0JW0bH0kdYro4CZBwlNRVmrBVskgsa1XRvmp3JplrRQGYfTFk+?=
 =?us-ascii?Q?l1fILhILYiXjYqol0pDzP1DVXzj1HpsKLgKVKX+3DHp4JsU1MOWm6DfOyVMh?=
 =?us-ascii?Q?xVNHHYJPft0V+9ZkwfjGXLNaSvoY1y1g8loRZ9NVP34JUaqnPc8z8tHzXuJD?=
 =?us-ascii?Q?MoFXFXjOat6bQjQzB/iVkbEY2Y8qr1BAqWNMEj4qJqJ+zoihTYRXLVEKinFP?=
 =?us-ascii?Q?3GenFr6E/ssCAyZHYlaNM3rMXWUsP9ZEAa6P9WrRbW85Vjw3vpa73nepX/eL?=
 =?us-ascii?Q?Rs/EddU0OUM2fwOGmhfzbXs/XxfojgafwRVjHxUtDxNi2EdUQXgvTMLHlzMv?=
 =?us-ascii?Q?y5Zqz8/cTEenGOs3CT5qmFQT0CCJpcXaVln52JM0KkQKhWfztLHyRhM05Neq?=
 =?us-ascii?Q?ywL22Wl7K2ga8FYjZIRX04tlGLeluCORhgCLwp/kCzYTYMRwSCLxvTs0RxaL?=
 =?us-ascii?Q?r2cvVKBXIuLS+cyCA/whSUe2Hljvz0hhYc4teFvYDLQHsVAk4MysjTe7O8XW?=
 =?us-ascii?Q?wTwfnu1yXYRILcAsqe/l3bqHLpdcjgR2571QBPT4pq9zbvtQNNUoio1Ke8aK?=
 =?us-ascii?Q?kRlJq8UVhJxc/kf4NrCmBie/V4jzWVdXJSx0R+1f4/qcBwQAofuIo2i60Wgh?=
 =?us-ascii?Q?d4NkCHSJFbz5e+e/ufw9GeO01cWvqQvyGRX9bdztAvDBkgWVQSU5GxYwy94c?=
 =?us-ascii?Q?+BNqL+EYHVaj1BWVyh1jGnqed5xpklhvB2ExNELPryAAtvnZvwSmNTvrLfDC?=
 =?us-ascii?Q?AGWXEJK/RxLrxHHaypfWEB0qXHEB9Gh0j6d9088aWBZOp6KAyUe6bkhEYSdP?=
 =?us-ascii?Q?leAKBGLRDY2RGqxeGI7EPG0Iy1t2TzZe70/+g3hMcfLiWCGpEDzBug/hh/SI?=
 =?us-ascii?Q?9dXiZoeiWvaQ6KAfjdTSMfU11zvElYpIfgVrVF+QujmkpXqd5viK6WKUrMwM?=
 =?us-ascii?Q?oq3JggWoULXFbjw6V2/Bd//Lb4RQyiy5Su13KSxwqjbSnz0db1eIXf3Y2+hQ?=
 =?us-ascii?Q?J99C6bpGibUjGXyuWBBI34MP9cKghvR5C7OpSqVDmSHNWTeFPQDXZUJ0wjPB?=
 =?us-ascii?Q?bzI5mYB/wrYmsTfQSkJzioPbkCEH3wIuTeoJrDpsBWF3GbXmprlezryU0i3X?=
 =?us-ascii?Q?zu4vxfu3OYhqgcNSMGZgT/7SVXQRFO2mgUVAMdGzzAnuEmbDuIiUL39A4UGu?=
 =?us-ascii?Q?CU12uKozxL5pcWFF8LNNmPOTvPIIbVLp3p1V8DyqAs2NRg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bpOJSxUTxTRJwV25cj9vOYNCvP0KRNCezceJaDVwhwBLVIYcBrGHzK1Hq/2/?=
 =?us-ascii?Q?jHL9WMxOkrFtboOtRfkcB6OaIXBBQU1lYpop5eyVtNBbrK7ItYfHHq74Wq9S?=
 =?us-ascii?Q?2cEnvhozMSdxZAVoJm+6RP2f+bWYsZ6IjL6FGuK8ImZVXlphzBxPNWS40pAY?=
 =?us-ascii?Q?8rJmC5bnNJ7sZTYv1aK9Oo6iP51ibwShiuUFNLf5sJN0nT/EfysPMW14tQxI?=
 =?us-ascii?Q?dXHT75Ymbw/vIgG8s7YFzc3wk2gkOQ0auofLa5dD0YlHp6jBKwqYxz+uqTf3?=
 =?us-ascii?Q?JeGilaaXbmXWwLIC49h9wge8dgLi1Vlo7XXsVtvklYoR4P1cH4ts4JnNMtcp?=
 =?us-ascii?Q?Ar6yxbefbXynPJcMrBRPzLbsYgYZihP11KTzlB3E8G6qjDcuif1i61FjVKOO?=
 =?us-ascii?Q?2yE4GovwgSGewiLrZdgAiYBupXVwsef25oIwgsNXp5+9q6RHtn0d85pPnm1l?=
 =?us-ascii?Q?lzB20ViGfFTFvPpkHISoxvj8o3/YPeMibY6fuz1lnjiRd1KFSZ0RrlkXcI4i?=
 =?us-ascii?Q?9aKlOmA7ysY19EOfPY5b/TLQEGjy5BHqdEdRaROVKJWY0zM8X5C4EMP5Ihtz?=
 =?us-ascii?Q?VNrpHvVSQuGCBETGiaWRUzo1+QFlTjFOT4cmSUwkRLqwOuL1l2xTw10jx4a8?=
 =?us-ascii?Q?ZXxoqfiTHIn8CJPJCk/KUWjFhS0+DSvTbWlXpIGUEpbYtH45KWgWoUiBLPMA?=
 =?us-ascii?Q?X7xiomzbqiCXhT7PbsmHPhLKoG8pomGtRhkPMINeLmhO8jQtHtWPZ/+2AGeu?=
 =?us-ascii?Q?W1ASvVwh2aAGYC9Y0gIXvWLTEqtFiS4dS5159FqN9qthaRbRfabHCfVJwkt3?=
 =?us-ascii?Q?j6jRdgUWOKVwtPWFJth0XwjKgo3pHI4y0b0EFeah/yIFXZs/7i8Xa+1vesu3?=
 =?us-ascii?Q?6YZWB0ifjqmkq1C4oZ0kqyGd8fuwW5jxUDQprWtrZkjpvx5VGRm5J2elnawJ?=
 =?us-ascii?Q?0cPRq35JQNhi3/dMK6tjI/muxLB+32lGjlf6JOC4SUib/XpnyeNLNk5tMUbZ?=
 =?us-ascii?Q?WELbHWxXPe9oFlqDKlgsJVqKbCJIJbSVcimBUPqHVW5VMvVfV3edd7LAZG3y?=
 =?us-ascii?Q?cBm32oBT+NlScrhYOVGHBs9z6a2OvB3QjRVSzl3gv/SMD1UhScKye+h7kPV5?=
 =?us-ascii?Q?p7HG2+5UjzGy/b3WoQx04fRrg8l9kJu/wkJr5H/eZhKM0p44DpuS8ie35DsQ?=
 =?us-ascii?Q?rVPnQoQcZBlUbm3kKlQfQsEV+J8b7yvYR9tkQ7L6wsqgLwYMRLwk1esS4OrG?=
 =?us-ascii?Q?azPCPthD9yxOqVugJDz4gn4TTLUBZSpLgYu/q95Et9lEAfzgb0WYSgPzCYt5?=
 =?us-ascii?Q?CHwPuvDxuHfXIsK2yXVP3xx0VktMQMIOfB3HUK3GzZ+xCmxeyjhgyUmF+HoB?=
 =?us-ascii?Q?7cP6Vp6prqTW8nweJJHqwFsiGvW/QjZDIu9M6KzM2LTcCajJrJXrNVvtEhX1?=
 =?us-ascii?Q?TyMXyIIOrdv/D2N3opKA9Tmzqwl3Jx8gOAPTMWfPALgLmgOms/Uiz4ky3G2Q?=
 =?us-ascii?Q?8gfEZEvvX2uZqtY7of65L9VYp/FYAaf2aMNKBEFH6Il9hfleJQIAcJP4kHBj?=
 =?us-ascii?Q?M9WACfOHt520I3mE79ivI0hUeIRI5vq5xnPA+lrCwoYEL7Qvl7Ch0skOhaVl?=
 =?us-ascii?Q?oytUUn0aRKBPvfqNBONBJHw=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fa1c489-9581-4032-6ae2-08dce842ac58
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 09:13:43.6269 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: De9dj2wjU10i53g2FMZBrJfS7Q8XHUO7E5F1VYCT+MMnnEoW8J5GNI2AC9RjaN2xHk8pqQhI9DoEm0xxJ2skgJTmxDsZhLzn+sTeL2GxTAM6EfcfEht/esBpU0CGfn1k
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8263
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
> From: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Sent: Tuesday, October 1, 2024 7:37 PM
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Syrjala, Ville <ville.syrjala@i=
ntel.com>;
> Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Subject: RE: [PATCH v13 1/3] drm/i915/vrr: Add helper to check if vrr pos=
sible
>=20
> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
tul
> Golani
> Sent: Tuesday, October 1, 2024 6:47 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Syrjala, Ville <ville.syrjala@i=
ntel.com>;
> Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: [PATCH v13 1/3] drm/i915/vrr: Add helper to check if vrr possibl=
e
> >
> > Add helper to check if vrr is possible based on flipline is computed.
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vrr.c | 7 ++++++-
> > drivers/gpu/drm/i915/display/intel_vrr.h | 1 +
> >  2 files changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 9a51f5bac307..79db30e31324 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -56,6 +56,11 @@ bool intel_vrr_is_in_range(struct intel_connector
> *connector, int vrefresh)
> >  		vrefresh <=3D info->monitor_range.max_vfreq;  }
> >
> > +bool intel_vrr_possible(const struct intel_crtc_state *crtc_state) {
> > +	return (crtc_state->vrr.flipline) ? true : false;
>=20
> I think this can be compressed to:
>=20
> """
> 	return !!(crtc_state->vrr.flipline);
> """
>=20
> But otherwise:
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com> -Jonathan Cavitt
>=20

Thanks @Cavitt, Jonathan for the review,

Agreed, with suggested change. On next version will be returning just
'crtc_state->vrr.flipline' or 'return crtc_state->vrr.flipline !=3D 0;' as =
suggested by ville
in latest review.=20

Again Thanks

> > +}
> > +
> >  void
> >  intel_vrr_check_modeset(struct intel_atomic_state *state)  { @@
> > -281,7 +286,7 @@ void intel_vrr_set_transcoder_timings(const struct
> intel_crtc_state *crtc_state)
> >  		intel_de_rmw(display, CHICKEN_TRANS(cpu_transcoder),
> >  			     0, PIPE_VBLANK_WITH_DELAY);
> >
> > -	if (!crtc_state->vrr.flipline) {
> > +	if (!intel_vrr_possible(crtc_state)) {
> >  		intel_de_write(display,
> >  			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
> >  		return;
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h
> > b/drivers/gpu/drm/i915/display/intel_vrr.h
> > index 89937858200d..af921dda4619 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> > @@ -15,6 +15,7 @@ struct intel_crtc_state;
> >
> >  bool intel_vrr_is_capable(struct intel_connector *connector);  bool
> > intel_vrr_is_in_range(struct intel_connector *connector, int
> > vrefresh);
> > +bool intel_vrr_possible(const struct intel_crtc_state *crtc_state);
> >  void intel_vrr_check_modeset(struct intel_atomic_state *state);  void
> > intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
> >  			      struct drm_connector_state *conn_state);
> > --
> > 2.46.0
> >
> >
