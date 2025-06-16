Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51451ADB746
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jun 2025 18:45:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A4B310E0ED;
	Mon, 16 Jun 2025 16:45:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WDkfYZ3N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AC9310E0ED;
 Mon, 16 Jun 2025 16:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750092335; x=1781628335;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/4moL+xKJ+fEybnhi+h8couCQIY41vlS7f9AMn+CEQQ=;
 b=WDkfYZ3N6AikIasoXq0uZJ56raVJQqkXJlQrcvucfzabiIHleytERDDm
 wFhtM2O9pyqlEhK2WE6GQJtFeL5lh+o7xhnrQj0JegUDmLHkGaVtRpOF/
 YQfqaXENZWL/ZJl99iO83q2dlTCHBBEtmBHUZq62ov4O8mHAjjz97M1S0
 eBOhVQ7ENeWdV5UosjhvoYGPun1dBFxTE0Aaezo58zXlUEFOe/jmNee/C
 XrufNUqDvoo2h1Yos+5OWJEruZpP0sV+vjJgzMulnZsjN6HiVDM6hNIuj
 FVAGntboz+GwfTRX2woAIjUvkByxJPQIt6rN5NY0PcNzBB4jznx9unWY6 A==;
X-CSE-ConnectionGUID: lDfTaSXySLugg/UUNpqIyw==
X-CSE-MsgGUID: cC46SoHxQX6BP6YtGjZT+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="62850117"
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="62850117"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 09:45:33 -0700
X-CSE-ConnectionGUID: 1O6pF0KgR+WVYuNETmU3sw==
X-CSE-MsgGUID: u/yfe+kRQ76bORaqaoqBgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="179511179"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 09:45:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 09:45:32 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 16 Jun 2025 09:45:32 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.60)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 09:45:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SaaUU99iuiQqUnxEujpfDDntB8Dv0E6yFRGN3IAQ+vziemFKXBjTurcr6+vjBxpOprRBJuuxaputIDn6y80n3mRI3/ULQbIX6+AKfYWehXQAm5zC40kHYzWp131ve4XdJIlTW5+e5scj0BK+0WkjGEMY2dwWC5rrLU4YMROOQVDIcqt1YZFI0CtiDwoIQyPp+5iqtnNnSuWh4SygLdJ0gK++ncSateSWSChWJbh/90Z/61r7E/cXdUvn7j4tbYJKy75S7WbozIl9YaEdKHtjk3HB536TTMg6zSpibLyctrNOq9Ydubgbd/4nbiZzUfFE4M8KoviLyS6fIu6D50wIfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VvYelOS/s2WBbD2MliAV/1yzhECZ/mRm2OIn1asid8A=;
 b=GCQpNYzh1vZfqi7H3FiSbfbVr7a85gyJaC1lYHn4kiiuNYaFusX89ZWyvzIBGjt7G+Of9ibLvokHkk16VA609ByNxVFrd1oIt0lI+Fcr3oMhklnANQB7h2xPezYq3IhPLYKyur4CPVbQI6gR2ScNCGWo7gGiQvuR6W+cscE4O9Mj2z30omwqERAV/pigvkRAQAR2pT36WVm4fW/j8/64YlhvhFAtQLxZU+YrVlToCIcVoPX8cSu2tTEOBZtBJZodKRwDDEIZm/c8nm/1ZWWyVFYVWgaULoE4j1fDet7Zzgva7nwP3a7oLGP2hM34SIciD8nDnOp6lNTUiXENxEwSjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by PH7PR11MB6651.namprd11.prod.outlook.com (2603:10b6:510:1a9::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.26; Mon, 16 Jun
 2025 16:45:28 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%6]) with mapi id 15.20.8835.027; Mon, 16 Jun 2025
 16:45:27 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Taylor, Clinton A"
 <clinton.a.taylor@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 8/9] drm/i915/wcl: C10 phy connected to port A and B
Thread-Topic: [PATCH 8/9] drm/i915/wcl: C10 phy connected to port A and B
Thread-Index: AQHb1xxnPJ3Q5HAPnU2sht2aPIzh1rP68aSAgAF55fCAABqXgIAAFf2AgAAGLYCACWhUkA==
Date: Mon, 16 Jun 2025 16:45:27 +0000
Message-ID: <IA1PR11MB626615B55A8C5660A3CBB294E270A@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20250606195104.1771715-1-dnyaneshwar.bhadane@intel.com>
 <20250606195104.1771715-9-dnyaneshwar.bhadane@intel.com>
 <20250609150527.GL6239@mdroper-desk1.amr.corp.intel.com>
 <IA1PR11MB62668338EF7E973EBC4AB446E26AA@IA1PR11MB6266.namprd11.prod.outlook.com>
 <20250610151309.GS5080@mdroper-desk1.amr.corp.intel.com>
 <6925754dbc7e5feb99c98adf30b2354b9cc78eaa.camel@intel.com>
 <20250610165357.GO6239@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20250610165357.GO6239@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|PH7PR11MB6651:EE_
x-ms-office365-filtering-correlation-id: 4833bf56-75d2-411a-4b48-08ddacf53306
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?YeQpZtDCPxNXjjpHI2iCzKOlfQzUovgKJxYg4FA8+9+8HK4ejEeqUcP2o1?=
 =?iso-8859-1?Q?HvMQ/bjzrrUqDDQOlK3/oxe/YuNPmlgKLdBNc7hV5KBg5hmb9RVRrdLMIQ?=
 =?iso-8859-1?Q?e4G9dGA7jlD4GsR83n/LRw52k5/T4rvWKdT/Pepcyy7Y0K0yqSVIX4U6OE?=
 =?iso-8859-1?Q?cHfs7GZ/NeptyyJWIAx49j8lkwF65yvGNDtqOD5OAxDnX18bn+l+BL/VyR?=
 =?iso-8859-1?Q?mF845rar1WOOe63erhAj5CcJbA4gRER9x+dCrCnFJkOOo+DwbqqP1saM7g?=
 =?iso-8859-1?Q?oVFlEQEk17I8bn7auE/pBTMBsv0iCSYRc5sD6PsygVJbAk7Zwk5Qre2K/i?=
 =?iso-8859-1?Q?r9w6Pp8anLbN2W4OIfetGB5yLUqtyXLVzCWIZpWrWYxkZiaZ8xXkDCcn98?=
 =?iso-8859-1?Q?InYsXkm7Ienbk+b1776PghuBk9ANoSB8l2oXbMZQaMqzZFcg4Opbhk+n9t?=
 =?iso-8859-1?Q?DWFlEeefNR126vSiqOLF6bZMrxJmgedmcx7i1g/6IGmD1x/kwDXmyBwwFx?=
 =?iso-8859-1?Q?4c3bPYVMsFVPElKjVpDIaC4i2z//t1MIHWXm51rXCYfe66HX8QzxMyVxQD?=
 =?iso-8859-1?Q?KMcqt7T8dvkxLIT/wWFEPDH+jLzNv8I/Q+HoA7HCg4cLhH33YDTZFs+XK3?=
 =?iso-8859-1?Q?7tz7+gkoH9SUiUDoo3Ls5PLLyiJOhro63hwZsxF8wP6w0IUwA0QE00WRkM?=
 =?iso-8859-1?Q?Owqye2RELhp+1SaB+6oxB1QF2uT1XbaYIhNS+iB1/A+XvFvXk/3awIREW+?=
 =?iso-8859-1?Q?qUtSHw5HV8Jp6LGrLyxEePydTlm4r76hiW8nJWQ2VtenNhWn4KleFTF/G2?=
 =?iso-8859-1?Q?sdC5ecTQR8cDSR6jN3KSOB2yO6mImL8i73gK+svCqiOZTW83irUQVqNrBH?=
 =?iso-8859-1?Q?035x7VN3o1sxR+06ea06dydWlshH3Ii+QOLRpTwIQWQbedhKEnorJB7nca?=
 =?iso-8859-1?Q?TZlsz1+9AzeucVti5w5RSOUkmhpNZU2UuM7++pOFbyQIkRQSZ2o4ccaU3T?=
 =?iso-8859-1?Q?ZUMJ4zr31ZJSE+0+rQtrL/wBRhVbhlq4Y96trXNx3jqRbEIQ0sNuMCq3Lu?=
 =?iso-8859-1?Q?FNIL/8AYKfs00PFLhxwTB8FaNaWmMAPrccwi390tf3sg5yOskpWXO0A90x?=
 =?iso-8859-1?Q?NXjCOqSdYjCl1R1S3ORcStcVOOCdbJLPC71Pb4R3LXrEsGeoJRy8yuKP4E?=
 =?iso-8859-1?Q?W1V/I9XTz0E+MgEVbljSIuD0OHB7Srcaqzr9NBomqzKhYY/krSPgZh+ECy?=
 =?iso-8859-1?Q?RdK1MDwcNkcg/6R5gdEGrjYjSkZm4rsqZhYjcIMwrOocjLfKMXTA+zbjka?=
 =?iso-8859-1?Q?4qmTpABtHHb4awjYEyfesDRcJlK+fEp/qNL1+aAY3ugCxTDYAbao81o1fu?=
 =?iso-8859-1?Q?TfwbNi+0GFDR2eBvUwLEBu9Wrw00t25XMHJV2J5sRr6nsjmc8g9j90yLCC?=
 =?iso-8859-1?Q?MvMsIVKH8ZCP0LggjK4Z8MhWYBcRQ/w+SxePIIVpBnVEDLFJHR79u1JOek?=
 =?iso-8859-1?Q?Y=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?ZBceskr8FRMajOWwa1w1Y1eYfdR2GboMQam8c6bURkuoPx4KcirRT8LuSs?=
 =?iso-8859-1?Q?rlHBUHGqaIN1mC7jCkxr9J3/H7YgFeL4Fcs+73BFmu5H8eLqRlVtubZLnN?=
 =?iso-8859-1?Q?uztBoGnUTAVSPlH54IFIckPAbAGe0ITbJFskaomA0T6gxr6YxvLfsXjKym?=
 =?iso-8859-1?Q?++dhjQHiYMZdi0uUM0h4cWXUrtExrhlnM15C+DfmvHB9IgIzT1Dd0NiF8M?=
 =?iso-8859-1?Q?mOS/z36cgKMVfPO+cHS8X7vaEUyUhx4m9ZHrt8fatkGGpsKlyNQBPfMnnw?=
 =?iso-8859-1?Q?IRO5IaHK8FMyjl4wC2WKnPAq57HwemD6JLd+LNVMMTOlGeVla3vrjgPar/?=
 =?iso-8859-1?Q?MwcxoxmxsPyeShmd8OXxoR1Pro70eg9YHItB637ypjG8XLNJuOCo9ukQul?=
 =?iso-8859-1?Q?Gyf+AdnWr53Oej8HvKLGXVUSO8zEY85tKXX/rn7/C/szVwOd9VhNaUMX34?=
 =?iso-8859-1?Q?bdmsElqwQk9fLRNF02ICeLL5sK7EtJ3FXmqWD6AW3y95MxYJZnIpN/bLoV?=
 =?iso-8859-1?Q?rfVDbOazy6HzT8mRLN2bE/8l3ic+PwT0EnEjZMh5FhN/ev5SCVNF0vWUed?=
 =?iso-8859-1?Q?qwAW7E/FJBHBsdiI0iqIMZXDncsUp1cF+a2AIIE62DaDiacTeqkh8BAID4?=
 =?iso-8859-1?Q?giwoOWJQyYvB+HKvSa9SS8YpY+8VC03HQgg7MQhHTvz0/yQuDKH0m139mT?=
 =?iso-8859-1?Q?/4ORSm04ammJZOZfZNv6J+ucK5jedzMRZkYXlpjEwlndPrUCJYu0jOyHf0?=
 =?iso-8859-1?Q?xS2e2jhBYO5vB4sWTRLodYrHXslmHB2BFCtVjDpSFQfuXyJcBVOutguikv?=
 =?iso-8859-1?Q?26HM2hzP7PXkeqdO2HvAC+kRWSQNF5Vr5lcSY6T70r4eT+12HIB+e+2K/I?=
 =?iso-8859-1?Q?xDgAF5HxYE6JYGiDTb4eZhANldYD0our70E7NwjlpMLEJudhhdATNnuF5j?=
 =?iso-8859-1?Q?r3pvMAhKxCW75mjemB1jC9wXbcYM869KpO9+M/3xjVfVldalU/psDcttP4?=
 =?iso-8859-1?Q?HlIng7sVV12n4X4hOBCwrZw74pkgFu9Q8ND3vAufUuUoLpQaMAf2BttYXR?=
 =?iso-8859-1?Q?51agO+tRUcGsbEXBGTzL5vtLueqYXAAeYEuS0iZnnUciB8THTnmii6IEzW?=
 =?iso-8859-1?Q?50EkvWY4W/3BlWhJKv99NOR+9cG2XZn+Wp3vTgVn1KSXkETpRC3Jtchc1b?=
 =?iso-8859-1?Q?lCEOsEcxnuRf/6NkwJ59N07GJIZt7xM6FOCLGwQUSAxDHw6TBXO5UPlHug?=
 =?iso-8859-1?Q?QtlNuAw9dZjRYOM4RMA5AxUqlbuQHXAX2oZ3LtU/bSK2zgVTVTM/IEuPS9?=
 =?iso-8859-1?Q?yBg5VyKR1uNSqCBkYxH10v8FL9sLU9DiGcr0hdsk9lI7N0bh19MR1JEdzv?=
 =?iso-8859-1?Q?awCj1ZcHcGnK7dVLy66QTz8EWj6a3hFAoFjuVG9a9SCmN1ff8PKfrk4vTo?=
 =?iso-8859-1?Q?iK3GeabCqchHvOaDu/Lcg43xNI6qqT5AdYPTRguEOC9Ez951M+7qgSyj/H?=
 =?iso-8859-1?Q?aYMLeIRkpcPGdy11GZ5wTOzvpWi+PLyOlo3IzSgRMeC6V6eZ1KTx5eMBFO?=
 =?iso-8859-1?Q?R81+9CAj0kp2Z2Eo1tWkvUiIH8fchBLLymGGkKWMJywcz1CO3IV7QlB/LZ?=
 =?iso-8859-1?Q?5wrggodu7CTq9ZsPOuFPjbkpoCCEE9ClL1bGhxDil4gaKlCdh8RfgYug?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4833bf56-75d2-411a-4b48-08ddacf53306
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2025 16:45:27.9312 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8tJCxb0otyDqd5SAglaY0ONtg4OoTlPAXbrlxCaJn61iV1dHVHFC74oPPNv9OuIcY198iMD1A5oUhWCoQPeyUd8bOeIC/xMP61mWhDU8r7U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6651
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Tuesday, June 10, 2025 10:24 PM
> To: Taylor, Clinton A <clinton.a.taylor@intel.com>
> Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
> xe@lists.freedesktop.org
> Subject: Re: [PATCH 8/9] drm/i915/wcl: C10 phy connected to port A and B
>=20
> On Tue, Jun 10, 2025 at 09:31:51AM -0700, Taylor, Clinton A wrote:
> > On Tue, 2025-06-10 at 08:13 -0700, Matt Roper wrote:
> > > On Tue, Jun 10, 2025 at 06:49:01AM -0700, Bhadane, Dnyaneshwar wrote:
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Roper, Matthew D <matthew.d.roper@intel.com>
> > > > > Sent: Monday, June 9, 2025 8:35 PM
> > > > > To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> > > > > Cc: intel-xe@lists.freedesktop.org
> > > > > Subject: Re: [PATCH 8/9] drm/i915/wcl: C10 phy connected to port
> > > > > A and B
> > > > >
> > > > > On Sat, Jun 07, 2025 at 01:21:03AM +0530, Dnyaneshwar Bhadane
> > > > > wrote:
> > > > > > WCL added a c10 phy connected to port B. PTL code is currently
> > > > > > restricting c10 to phy_a only.
> > > > >
> > > > > This seems like it's a characteristic of the platform rather
> > > > > than the IP itself.=A0 We should probably go ahead and break WCL
> > > > > out into its own display platform that we can match against
> > > > > rather than assuming WCL only uses display
> > > > > 30.02 and
> > > > > vice-versa.=A0 Or maybe we can just update the existing PTL
> > > > > condition if this function would never be called on PTL with a
> > > > > non-existent PHY B?
> > > > Hi Matt,
> > > > 1. We could add the WCL as display platform. But for now, there is
> > > > not much reason to add the WCL display platform define for single
> > > > instance. Thoughts ?
> > > >
> > > > 2. We could not extend the condition directly with display-
> > > > >platform.pantherlake && phy < PHY_C as it will wrongly select the
> > > > c10 PHY type for the PTL itself.
> > >
> > > What do you mean here?=A0 If there's no PHY B at all on PTL (based on
> > > 72571), then this function should never get called with phy =3D=3D
> > > PHY_B, right?
> >
> > This function is called for very PHY. This function is the only way to
> > determine in the PHY is C10 or C20.
>=20
> It's called for non-existent PHYs that a platform doesn't have?  What's t=
he flow to
> get there?  It's been a while (and the design has changed a
> bit) since I looked at this part of the code.
>=20
> >
> > >
> > > >
> > > > =A0=A0=A0=A0=A0=A0=A0=A0But can be done
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if ((display->plat=
form.pantherlake && phy =3D=3D
> > > > PHY_A) ||
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ((DISPLAY_VERx100(=
display) =3D=3D 3002) && phy =3D=3D
> > > > PHY_B) )
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0return true;
> > >
> > > The PHY types are a characteristic of the platform, not the display
> > > IP.
> > > So we want to try to avoid using DISPLAY_VER checks since then we'd
> > > do the wrong thing if this IP gets re-used on a platform with
> > > different PHY configuration, or if other WCL SKUs show up at some
> > > point with a display IP other than 30.02.
> >
> > If this is the case, we need to make a new INTEL_DISPLAY_DEVICE for
> > WCL. Currently WCL shows up as a PTL to the driver.
>=20
> Yeah, if there are legitimate platform-level / soc-level changes outside =
the display
> IP that can't be handled with common code then we should define it as a s=
eparate
> platform.
HI,=20
For now,  I have just extended the condition with existing PTL conditions,=
=20
Please take a look at
1.  gfx-xe - https://patchwork.freedesktop.org/series/150255/
2. gfx-intel - https://patchwork.freedesktop.org/series/150101/

Dnyaneshwar,=20

>=20
>=20
> Matt
>=20
> >
> > Clint
> >
> > >
> > >
> > > Matt
> > >
> > > >
> > > > Dnyaneshwar,
> > > > >
> > > > >
> > > > > Matt
> > > > >
> > > > > >
> > > > > > Signed-off-by: Dnyaneshwar Bhadane
> > > > > > <dnyaneshwar.bhadane@intel.com>
> > > > > > ---
> > > > > > =A0drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 +++
> > > > > > =A01 file changed, 3 insertions(+)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > > > index 75caccb65513..59eee0edef79 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > > > @@ -40,6 +40,9 @@ bool intel_encoder_is_c10phy(struct
> > > > > > intel_encoder
> > > > > *encoder)
> > > > > > =A0=A0=A0=A0=A0=A0=A0=A0struct intel_display *display =3D
> > > > > > to_intel_display(encoder);
> > > > > > =A0=A0=A0=A0=A0=A0=A0=A0enum phy phy =3D intel_encoder_to_phy(e=
ncoder);
> > > > > >
> > > > > > +=A0=A0=A0=A0=A0=A0=A0if ((DISPLAY_VERx100(display) =3D=3D 3002=
) && phy < PHY_C)
> > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return true;
> > > > > > +
> > > > > > =A0=A0=A0=A0=A0=A0=A0=A0if (display->platform.pantherlake && ph=
y =3D=3D PHY_A)
> > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return true;
> > > > > >
> > > > > > --
> > > > > > 2.34.1
> > > > > >
> > > > >
> > > > > --
> > > > > Matt Roper
> > > > > Graphics Software Engineer
> > > > > Linux GPU Platform Enablement
> > > > > Intel Corporation
> > >
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
