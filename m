Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFE5A08849
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 07:24:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 156C310E057;
	Fri, 10 Jan 2025 06:24:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D5XGnvBC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91BBC10E057;
 Fri, 10 Jan 2025 06:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736490253; x=1768026253;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HpMRNz1MR1K+LrvC18/4e4WTgvoWmjmvo5+PlT0Bqxs=;
 b=D5XGnvBCSPmCcCTadOjexaJdqqIcuW9/C9iAGfkTC6GV6XDcgytSIJZ4
 HsvYHA7fUaKmFTntcVW3zELCttD50fXAwb8pWpuVPZx9QKA2yqB2fiGjA
 qf765bYIsz7iGJh95h7qtHOfkzgc2aFZa3A8FczBdFyQZ+mTjc4IkGkg3
 nvPjfHFKFNWmxxvZjA8oEi2Z81dnbLX1KSzBmAqce42si+bSUBEZLuJyZ
 NFWjIF/DTgPpAcFOCBnNN4WQ7FMetJKr49OT+WNRVlJxGKikKcRJry86/
 emG2FVE2QsZfKJxQys9OnLUVoLp0cFBV0576Ev2p22XQu9z758s+dLUXr g==;
X-CSE-ConnectionGUID: QT0842dbRgWqVbKBapisgQ==
X-CSE-MsgGUID: kiJmRpeMRdqL44ygYL1Jvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="48188218"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="48188218"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 22:24:13 -0800
X-CSE-ConnectionGUID: SQqtTFF5Ro20RDi22IUlKA==
X-CSE-MsgGUID: fBrMhfQiTxCnLTn6xckJSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="104189726"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2025 22:24:13 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 9 Jan 2025 22:24:12 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 9 Jan 2025 22:24:12 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 9 Jan 2025 22:24:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DRwpe+5hB4VhDUoOKEyuBK82wSDmmIrSmtpk4T91ZiAycd9JDmWuo0DrMVuvou2WiXDA5wLdiQGPJEDemgBwW/S6kDXjUl+PbZNq3gYqDgVHev/C4tEPDHa5f4Mw9/3jXyeScWkhZe4saDpnqXeBV2ZJJ/PPGg/gxILgW+9KEMovLZgDDz7QDaO4qyvPG9BZPmJQxPHYmo+msAkqGk/K37E0hmcRM2NQfq8WLWvoVaslXFzrTX/wvOGK52RFtOd5p2TOHIqniO9tD559LvdDKhY6EH1BcgcVHwzDZnX3j9R8eO3gCFy3orJ45v3cqVz7FGklw3ERYRZOQ2HHHu3CuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WvykY0kvfpwvUtzrVzdmSDo2wqkO8UG69WBy5lApdt8=;
 b=AeUqdYKrMbkonUhGrV5Dh5hDbkL9qcRCMh9FGpJJVLNHj/6r0zgjIU4PcpaESrAXDZQo4HUlesLDtw+whVHBmL1C0XIxhcTkUYilvxahlKg3cNiRg918mzvviqf4vpZr4GjNWiPZW8mMKYt1ONBOIVot1bjP4UuOPZvym8BeTjXjN44AYQQiEpCjV9v3iYCC6soATHK2UQy9YHGvhDhottEiln6VQ/pOM+OsJLKFVN8GAwJEAYnwKFaScyKImalfGLC21Q0LwpNGOgkM4d367DqfoQmyde6npWF3FKZgR0fWjN2O0gMkzG0l0rL1VDOPPhVIqmtKhkxzVOyz/+mRGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY8PR11MB7315.namprd11.prod.outlook.com (2603:10b6:930:9e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.13; Fri, 10 Jan
 2025 06:24:10 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8335.011; Fri, 10 Jan 2025
 06:24:10 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 5/5] drm/i915/cx0_phy: Use HDMI PLL algorithm for C10 PHY
Thread-Topic: [PATCH 5/5] drm/i915/cx0_phy: Use HDMI PLL algorithm for C10 PHY
Thread-Index: AQHa7S+Kzfpkogwq+0SZ7EUDWxqiGbMQdfxA
Date: Fri, 10 Jan 2025 06:24:09 +0000
Message-ID: <SN7PR11MB675056C5B69B3D573B8639DBE31C2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240813031941.3553574-1-ankit.k.nautiyal@intel.com>
 <20240813031941.3553574-6-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240813031941.3553574-6-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY8PR11MB7315:EE_
x-ms-office365-filtering-correlation-id: dfddcd98-4af1-40ef-ccdc-08dd313f64b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?fjs7VcW6GjTmr9UZVpVX0cVk3BZG59u+wXUTr9AUAXujEf7mi3qLDZZ5AMu2?=
 =?us-ascii?Q?CfURgo6XfRRBVbOI5LEoG6+5l8bsYBtiowKqK7AqVhjOxkBN3HNDlu7MnaUU?=
 =?us-ascii?Q?pixmKFfeCeXOvhqqRwIClgfzRY+V+1YAFLCYv5MW3fylHVaPRhlUF1Y9LrJk?=
 =?us-ascii?Q?DEIbBex8OC4faj6EAU54T7r58J5NTSKD4Ri2bsJYKutgExQdfGvfHwBhqN8B?=
 =?us-ascii?Q?XUNAn2MXHstcPIBNTleQWLB0NJjJLC49M1xoBl8LoPl34F3OTB6aVN3rjMGo?=
 =?us-ascii?Q?OKkvzeFoXV54cqCW8zSUOqN+3jYCtJLJ6LHRMdTt6jJw2IVbYVpibhNSR8xb?=
 =?us-ascii?Q?X7FxiU1JyvH11GIb9V9LQ1AfW3tcYykyWHLLXJNHh8oQjKG/xh5rzRFd5BhI?=
 =?us-ascii?Q?+eDXyoZ8jpPLDzPo0rE6pHm5gyeu/p51Ug0DYd6r6l3V/7FMNZZGnSAN8CNT?=
 =?us-ascii?Q?RJITJMq6R3XsZ+v0VToGaaCofIEFtTRUTG11IrWm8t3nSy16t1gjyn1tBNhU?=
 =?us-ascii?Q?j5wdS6gKKuHlOBKOhC1//HsIvMU5vUPSRZh+nNT6vp5xIuvMN6TShkb95Qaw?=
 =?us-ascii?Q?/FT0aZTllak6EvwTH8oqxtbpqJ8jsVUjeAaCQjBPzgp1Em5ovjwBeXk/dqK8?=
 =?us-ascii?Q?mw6wFLYu9SJCZr7bMqUrHziR4brW3v8hCL1nD9jpCeUNgHeLJ9R6RPkjAjTP?=
 =?us-ascii?Q?sRmvuobkcsWAYHqQt4es3DmA/cTCkY0+RDsr4grN6VoZUGmm0nJhC1bLdZnh?=
 =?us-ascii?Q?Qm6/q8tBiQoOeAcHnQSMrKcTtvjbGrOiGk0Gfl9/Qj8so1VK79beDXh80w9L?=
 =?us-ascii?Q?VeJ/5dQJwTqDb+D/7wfwTKJGtJ8Uo1TeajHzC1lHHlyBCO3LSz7rBalewlWj?=
 =?us-ascii?Q?ZrvriIM5XXWOF8JrQR/e9KJNf54VymR0YrWbymLgSrwdazDbdV5QaXqsHEZA?=
 =?us-ascii?Q?kVmi/X/eiDTQzwT5thjCdPaVPbRLgxI1O1atty+jRrpphnCDeYTPTN6M/vTB?=
 =?us-ascii?Q?LrF39wlidmfUTErSdUNP2FlV7TsVxorieSDPrKMkdcFzj2+JbW3rE8Qy6CiC?=
 =?us-ascii?Q?YZ392U+nywSgRJxk9gPfoxuz40qkDxueCxj5r8EOI3QqHyDKJufTLlkGTlK3?=
 =?us-ascii?Q?2YnS+fEgWyeetdzdtP90rfPYRSYVfBABOOHKvwln4aUx84otGp3eN1UPxyZc?=
 =?us-ascii?Q?+FxcP2zC61GtYnSOWaH4yGsOzFfaW6l7X+8RrkXPHGFyCIBJ1nmoGZbQiofY?=
 =?us-ascii?Q?QLzLZD94doHHjK64N15p5M56VowDgrAfoezKPMQ6eYjQoAJWBmXhy+2cffmP?=
 =?us-ascii?Q?nIliKQh4P2e6Tiitemv8Llq7XaDbBZhgB11tvcZS6UdJ7n0ZrunKLzSzQpho?=
 =?us-ascii?Q?MwhedYHkRN1ILsPKhdAZ+I0+4un0+8bvTzgmtIm4hjRHVpmy9msh3GCONzY4?=
 =?us-ascii?Q?0dr+8+R3uwugHEwbgu1YV3x2eui+fXFI?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JrxCTTN5j7qppRNgtMm0RT95Xutb6iKvkPpK/YTi3aofej9m23d2tXB9C+AY?=
 =?us-ascii?Q?umoQHxZxCzHiM9bu+sCkLSPlobKgrbvFtMqWur621Q72fhFpNCc/fw/WVOoi?=
 =?us-ascii?Q?TWy2MopTtD9GB4nApWcoYDw708zvKA5CunlRFo3vkiuCT53RbHXL3QGk/Q13?=
 =?us-ascii?Q?1t5TxAPX89QeRv7i3/I6+YUCdU+brYKMHksfP5bdJCgMU6SqYIIf1/AOZqg3?=
 =?us-ascii?Q?3a8QYHwJGUsBkpvSPFTjpvG97HzOGXnVUJjcsu4ZqE3eSaGd/X/v6kCpw4v4?=
 =?us-ascii?Q?dCDZGWyoDqqIO7aJ0Wg4dv7qMuS4d2FEzBGEzd3zQOVO6DsotsZhqzCrAm1E?=
 =?us-ascii?Q?hF3C+OAFx6ErMHcr3CY2uxv2V2t/b9hMHVKe5nXndbg5QPEAHuAzKPN4HIPN?=
 =?us-ascii?Q?rQ19+UhyrDJY3GoNmNwW89tSYc6RB2OGRtPj9bCNvJ7LTzIKSKPguCxO4z3A?=
 =?us-ascii?Q?Ztyn0ngMYDYwj6xEy2VtukGSgPGqnNyZ0OmFGJMdf4XIek1MYOavlcDJYUjb?=
 =?us-ascii?Q?gw8lkUej+1sYq5D0k64e37zzykhOB6ESSwoWUc17bc1AvQ1aha8peWmTdtA8?=
 =?us-ascii?Q?zXSqxs+dcgv8mnYMI45sBPvS+Kd8Lw0DorDbQXkgKVUWnpY850eKTO9OUQ1w?=
 =?us-ascii?Q?79NCAa7vpc16/BtiyPY68Gb+y7sGQe1BpGNp+HdOMZ5bqLXBYFPmG7j321Nn?=
 =?us-ascii?Q?2nxSF4gxrNMnAwGFOB9gNdQJXN7UD6eaHYG5XLGGS6wQGalDPhSskjSLKo0p?=
 =?us-ascii?Q?g6hjoTBi35cbAuZjidXldUpyDHm4QAkxHaBCNxQFrSjRORcuSHj/dwYOSLFB?=
 =?us-ascii?Q?q109CheL0qjqQDPgXUoI7EQnTaLOok7A65FM7xuTNG302tX2xFBFwyTZVRII?=
 =?us-ascii?Q?7bA4z9DPBzeDHhxWIt/SMSt1oWfsQsHxdbK1UrLwGBJlwlEMBL12mgcyGB2I?=
 =?us-ascii?Q?1aGRuN+91ajXJEWvRLjgfeY+K9PzkMG7SI61rVm1rkVxbffoIeLDil18x1fg?=
 =?us-ascii?Q?AiQ3YVFMR1fbOGDes2OAS1Y6RZONOyaXmzWwYTCdE9m9srUA9RrbBdmouaHr?=
 =?us-ascii?Q?An+n57coL4FnQ3RXlryPpnj54sKV7HUxEPuoH+BAwiQygZeNSeXrJu+xwoB3?=
 =?us-ascii?Q?oM1m0Ii4a4MRD5X6d5JveGX488LF9tDqne3ScopMn4S5lhwqaSjzJU7JMPo9?=
 =?us-ascii?Q?MD2HPCsO3lF50JnXZ/EqbBT7bMGRsUZssvPhTsUl1T4EU8AzXb5i9bw0aPWf?=
 =?us-ascii?Q?lhAhpTm/MOzBP07TgjFABBl0n1JcRNgPrcVx+ShOgK2ZYzjzjWt9Zkr9ucTr?=
 =?us-ascii?Q?w5ybhLAkWHDt+LeOez54ADOUIjuMd3lNrhSpopwn9iRHB/uXl258eXL7sJ7I?=
 =?us-ascii?Q?RQnzYq4Vap+jkoxFQXDmouWKZ0gr7EH090gPRXZmlPK+bqGB8qbzPFxKMXQZ?=
 =?us-ascii?Q?/54TzDC4Kv0V0MMrc2Phl9ykvgyNNf0dTxf+X2JqRy5X1qR/4izUTiUYPbQD?=
 =?us-ascii?Q?3JMbtPHz/WBXiB42wiLmkOACWpNZ652uPqIu2rvhgXhT7qCDoMAANKm1oIjS?=
 =?us-ascii?Q?0qWoU8FybHRuCcIi/q/G/J81eWb2pFfBV8A7e7MQ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfddcd98-4af1-40ef-ccdc-08dd313f64b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2025 06:24:09.8434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +7KjU3PUdjQQSnOVV+1g54n/zgVJVN02E75F1Cadz/l4y7WFOG/hM0V67GqSlLtMVypbrmtbCiMFI6brYK5hsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7315
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Anki=
t
> Nautiyal
> Sent: Tuesday, August 13, 2024 8:50 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com
> Subject: [PATCH 5/5] drm/i915/cx0_phy: Use HDMI PLL algorithm for C10 PHY
>=20
> Try HDMI PLL alogorithm for C10 PHY, if there are no pre-computed tables.
> Also get rid of the helpers to get rate for HDMI for C10/20 PHY, as we no
> longer depend only on pre-computed tables.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 49 +++++---------------
> drivers/gpu/drm/i915/display/intel_cx0_phy.h |  1 -
>  drivers/gpu/drm/i915/display/intel_hdmi.c    | 10 ----
>  3 files changed, 11 insertions(+), 49 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 4a6c3040ca15..2fee6baaa2ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -16,6 +16,7 @@
>  #include "intel_hdmi.h"
>  #include "intel_panel.h"
>  #include "intel_psr.h"
> +#include "intel_snps_hdmi_pll.h"
>  #include "intel_tc.h"
>=20
>  #define MB_WRITE_COMMITTED      true
> @@ -1970,19 +1971,6 @@ static const struct intel_c20pll_state * const
> mtl_c20_hdmi_tables[] =3D {
>  	NULL,
>  };
>=20
> -static int intel_c10_phy_check_hdmi_link_rate(int clock) -{
> -	const struct intel_c10pll_state * const *tables =3D mtl_c10_hdmi_tables=
;
> -	int i;
> -
> -	for (i =3D 0; tables[i]; i++) {
> -		if (clock =3D=3D tables[i]->clock)
> -			return MODE_OK;
> -	}
> -
> -	return MODE_CLOCK_RANGE;
> -}
> -
>  static const struct intel_c10pll_state * const *  intel_c10pll_tables_ge=
t(struct
> intel_crtc_state *crtc_state,
>  			struct intel_encoder *encoder)
> @@ -2044,6 +2032,16 @@ static int intel_c10pll_calc_state(struct
> intel_crtc_state *crtc_state,
>  		}
>  	}
>=20
> +	/* For HDMI PLLs try SNPS PHY algorithm, if there are no precomputed
> tables */
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> +		intel_snps_hdmi_pll_compute_c10pll(&crtc_state-
> >dpll_hw_state.cx0pll.c10,
> +						   crtc_state->port_clock);
> +		intel_c10pll_update_pll(crtc_state, encoder);
> +		crtc_state->dpll_hw_state.cx0pll.use_c10 =3D true;
> +
> +		return 0;
> +	}
> +
>  	return -EINVAL;
>  }
>=20
> @@ -2210,31 +2208,6 @@ static int intel_c20_compute_hdmi_tmds_pll(u64
> pixel_clock, struct intel_c20pll_
>  	return 0;
>  }
>=20
> -static int intel_c20_phy_check_hdmi_link_rate(int clock) -{
> -	const struct intel_c20pll_state * const *tables =3D mtl_c20_hdmi_tables=
;
> -	int i;
> -
> -	for (i =3D 0; tables[i]; i++) {
> -		if (clock =3D=3D tables[i]->clock)
> -			return MODE_OK;
> -	}
> -
> -	if (clock >=3D 25175 && clock <=3D 594000)
> -		return MODE_OK;
> -
> -	return MODE_CLOCK_RANGE;
> -}
> -
> -int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int cloc=
k) -{
> -	struct intel_digital_port *dig_port =3D hdmi_to_dig_port(hdmi);
> -
> -	if (intel_encoder_is_c10phy(&dig_port->base))
> -		return intel_c10_phy_check_hdmi_link_rate(clock);
> -	return intel_c20_phy_check_hdmi_link_rate(clock);
> -}
> -
>  static const struct intel_c20pll_state * const *  intel_c20_pll_tables_g=
et(struct
> intel_crtc_state *crtc_state,
>  			 struct intel_encoder *encoder)
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 9004b99bb51f..2e3076261d30 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -43,7 +43,6 @@ bool intel_cx0pll_compare_hw_state(const struct
> intel_cx0pll_state *a,
>  				   const struct intel_cx0pll_state *b);  void
> intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state); -
> int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock=
);
> int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
>=20
>  #endif /* __INTEL_CX0_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index bed54a3588d9..4706adf54dfa 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1878,16 +1878,6 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
>  	if (intel_encoder_is_tc(encoder) && clock > 500000 && clock <
> 532800)
>  		return MODE_CLOCK_RANGE;
>=20
> -	/*
> -	 * SNPS PHYs' MPLLB table-based programming can only handle a fixed
> -	 * set of link rates.
> -	 *
> -	 * FIXME: We will hopefully get an algorithmic way of programming
> -	 * the MPLLB for HDMI in the future.
> -	 */
> -	if (DISPLAY_VER(dev_priv) >=3D 14)
> -		return intel_cx0_phy_check_hdmi_link_rate(hdmi, clock);
> -
>  	return MODE_OK;
>  }
>=20
> --
> 2.45.2

