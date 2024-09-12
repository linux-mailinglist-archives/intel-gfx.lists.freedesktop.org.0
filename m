Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5F6976538
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 11:09:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4337510EB24;
	Thu, 12 Sep 2024 09:09:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CG6au9WV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1F3E10EB21
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 09:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726132180; x=1757668180;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=H19aCGCqiQ0oxzzrzdglLcCZqNNkPIfquihVeSFNIF4=;
 b=CG6au9WV+KzVUNmFE3lUsmyMQHHR/4sWp49fPKnWag/JSbL8FcBYkwQU
 Iwv05yT6qjCcmo0XdXWwQSyj43vNSy2+GdYxxU+lst/16u85/eN4vXSt6
 TA5hnWHheQuF1im1yZr6tx2JxwxCE2F+YR2JiyDM9mGyJI6G9pI8pqnns
 f214iiWtbd3OpaYhF9IKT7yIgdNd4hJGxYaNKihSQOsHj74zJtXWIHz1A
 /8J7DT8ndsXN/YQ6J9o1l/gWFkfbQh8k7ghpsXBhECwf5WSKccuPLEfjF
 qG2es0pRbgpNYi7v5ZM8jwkk5I6QxQtOoCF3RnGjnmvQvIfDUbMMJsq5e w==;
X-CSE-ConnectionGUID: e5yFZtk3QU2If15qAcow6Q==
X-CSE-MsgGUID: Zv/MW2+RSWqbiSwiYWFr1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="42486395"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="42486395"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:09:13 -0700
X-CSE-ConnectionGUID: ZWh/drnXRWSP1gvtvNMbhQ==
X-CSE-MsgGUID: rAmxAGo/RmCmGcqOqt9f1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="67881788"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 02:09:13 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 02:09:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 02:09:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 02:09:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qharv1GTfbrF5leCNRYE1WQZf5alKGvIWkoLwUoTzYK8tAMeYk0MGW2azmgz48KUd79O6ejvKCsOfXzRlvkKGr3dyS8WEwYXaXq1GFo6lQqjL6H5Q5WxBRqyOzgIquFnBGGYqlq5va22kB/8uT1NMU+Deh2onKyNyo3G6hvKILiYAqYHebkuWc+nmiPXnGXp1T0wGDqLuu1DwhN9uZIsLwCPzB1/BHKnM+fjjhXH/50tJblIRIr8sZuB9o3loilmBCvhshvjPh2xozn7BvelJiuLvGbwfrb2/T9EWaGtnjBhbr6W6jn5uAg1Dz2jJ0hbNk53Ic9K3d8x85badKbS8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t05tCuFlTNU22QymuMXO7PAu2rZy7Wd2miJNhOoUd8o=;
 b=golfBC5FQIjpJ8hGlvvvcQFxu4k+YKiTXOhuVmPGjR7+O6yYwhtIWvUPrTXNrcicZV112N+FSPHlhGcC0bOEbyffEfDokwrAKuLr5yIA53JoteSQ7fieAZ4/CisCszzrcXOX/HMbAxzb9sBvru0/0TLY19dP4TS4J7B+fUIitOsFGbBcVfdWDBCZlj7QlEaeonxmxgNcEXGA81I5IvDc0mn5kmXgaMelXh3+XmVJqMqjrZSw0jwTDMyJmdVKnMazqhJLWhD/Do7EHWI5Q3HmjfNKKJmLgPY9NZcBhMmF7PLpiuHpqe1pSfFQs8vmNJuuIQ23TUhQQfvLoU9uanhPcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MN6PR11MB8219.namprd11.prod.outlook.com (2603:10b6:208:471::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.24; Thu, 12 Sep
 2024 09:09:07 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7962.017; Thu, 12 Sep 2024
 09:09:07 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 3/5] Add crtc properties for global histogram
Thread-Topic: [PATCH 3/5] Add crtc properties for global histogram
Thread-Index: AQHazsL0znkcFXfG40iUXf2B2ytMb7JSdcUAgAGV4iA=
Date: Thu, 12 Sep 2024 09:09:07 +0000
Message-ID: <IA0PR11MB730732F5C495D86D06ED369BBA642@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240705095551.1244154-1-arun.r.murthy@intel.com>
 <20240705095551.1244154-4-arun.r.murthy@intel.com>
 <SJ0PR11MB6789D70ACF2DBDDFD80EAD6D8D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB6789D70ACF2DBDDFD80EAD6D8D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|MN6PR11MB8219:EE_
x-ms-office365-filtering-correlation-id: ceb8169e-0c9e-4460-3d2b-08dcd30a8e60
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?TWXPZh/hueZCbHza0viwxeTZTESqDgMNrfYtABLyzBSUMwnj/yKiCuO02Jcl?=
 =?us-ascii?Q?Tjp9CBLDP+4ZJJp4WJSvggmiR4PMLZIur9zkinbGMjBVIU3ez4yVUpBuP6hK?=
 =?us-ascii?Q?2/sEJAflxQWgFnA5Lb5nXT13gkpcbMjUP368FTw7tI0a/jS+9UeksHZqtMDQ?=
 =?us-ascii?Q?QJUmEOXkiY/keH5Ew5pix2d9nxptwFbKQaoAT5FaLUxtxXexR1IwlyZa/Xab?=
 =?us-ascii?Q?eLmzxxH1F80Ssb2NEkcq3JgPscZhloln3ynEGdWH3EiUWG4/gqve9QXDwKYY?=
 =?us-ascii?Q?vA8eWoIHsKf/PacDADyMLCsTx7xEqERJ09dc61TRiWeurIytypjrnuI1D943?=
 =?us-ascii?Q?NKUJ47nh6f0xE7Jf2crgNU029Uz9YXOJZHwPLhEliNp/D3sOgngsNuPJfG9t?=
 =?us-ascii?Q?E4ZVsVCWvzZ07Ou9did0oNrY+5iOwaY4/APmz4B4GPmx0j4m7eSD4BoERRbK?=
 =?us-ascii?Q?WACOWbqKHh738ehdSAwWKH4XFv3JoGvSpd2Mg4kicmn7HBT1zKSgd2TwMiJ6?=
 =?us-ascii?Q?U95FRwP5zGsnTyR9llm5Eb0qycsMo9c9+dV0jTls61KVk7YSYj8gV42KAu6I?=
 =?us-ascii?Q?lYUw2fUvKjbKex2Zj8RYuWJA+xSi4q4MMdantX8IlbuVwiQ7yUb9sJrqX2R5?=
 =?us-ascii?Q?z+63Z14SqNLVPbo977deLBlSHvmZSIGw2AWcWabTYTBarQ+CLbUC0W1rRDLa?=
 =?us-ascii?Q?Zivc4Jg6QwGKLencJrif61MlMrdrt51vgEJhyG35tMo8NHd+kD2RgTrehQ9x?=
 =?us-ascii?Q?gsv6wbJjwxC5oCNO+zOPn+DvT0Uw9KXY3Sh3YgkHJV1Y9jPom+rGxgZxHSrI?=
 =?us-ascii?Q?7jf8OnPMCH1b+EwCSFmgI8x4jEYhicuyeX12w7GbadvLn5sesSZ95yvoBUet?=
 =?us-ascii?Q?noAibkewOalrjnRjp+0+sFS/1OsDxQg8LrwQBrZfWInILFUMntR/cyYnATbK?=
 =?us-ascii?Q?cmbjYCdwwcQPbN1KE6U/M7ZKeUQNkeUwPoG5FlUdqOomlj45VcnXXeYxS6yD?=
 =?us-ascii?Q?34nqld30DRP9uuMpKSDFU/ByTf73KR1BmxXI/1Q404re6eSq6IJ/nwefC+FE?=
 =?us-ascii?Q?ApMzBo1w44KQYAXxrfsl/L6YWbT3jdpXO2hgQm5UjvJTOlJR4OEPTXVtt45s?=
 =?us-ascii?Q?NqSfCvN7gE+lqSAWzmTzBsWRYVoSIrm+/0oxnEdl8g+jidUpewgkFh9oPRa3?=
 =?us-ascii?Q?r75rn3xSWY8O70gwBVZksja0JLmHZk70+AmSmPWOd6ktjxleOteJzt3BXkNT?=
 =?us-ascii?Q?IeBKdnYRGnfPUANlBUIvj5R0BKLwdvKKKXwG5KVXMYtQ29XKXNxAX8AUfwiX?=
 =?us-ascii?Q?lw7IeogAtlFkGL8K0J9GzNx30xARG2a08OmnE6inWybJIckmd8NK/SAgU+iB?=
 =?us-ascii?Q?Ca/Y+Bp49DznMBnPp2c0YzU7Tq6dmbxNVSg0Dtzjvc3tgK2/uw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?E+XVbLEI1hPAyNNFpqTUuTMyaUWPIZBUZpKnB4mZJLRpEoKCu+Cx6B/8F2Ak?=
 =?us-ascii?Q?XtB41k6C7g6fQEtqSIWL8lXSnspAPSu7IHx/bv++eHxfnBatZqlcnFe9yM9g?=
 =?us-ascii?Q?JZDGLiQSzWFQVPGFyuU5kE28Aq+mEpDUNAfJ+VVE585y6zt8bwSq3Xszlbth?=
 =?us-ascii?Q?pUv6teGNApAF1d19REUPqG012IxrN+MqCQISUF2DoViCF7yebnxkKaCyh6KS?=
 =?us-ascii?Q?Zx+Lt/X2Q+xJRokBXpv0BLNtkTdYVTl2JDjI+4tvTC9BogSW+3MdZKvW5o3Z?=
 =?us-ascii?Q?gYrkmFVBY3sVU9qgsj7HbyQDWVyxjCNbIMq0NIuFq7BmFqhfTcJCQckOGPmV?=
 =?us-ascii?Q?NYhFjNxy30nk3MM7idaDZnPOuuWuZQHVIMBrOtDn/YNwAENDZ5gz63fQNICJ?=
 =?us-ascii?Q?LXZaXhY863EDKw+tcEXttMRHCelzMcBexKsDyKCoGXx9GPANedZdJ4T41w1f?=
 =?us-ascii?Q?pZRCpZLPGnXz0gWbJcT8ukdS2ucJ6wBqVU8etUHB5b8i24tFeJ3QcVzWNBZc?=
 =?us-ascii?Q?9C3nkvljVuOl6f9q8G2zWSxWpFpHLVT/c1lJ5bgPsOuE696jyTjsuai73wqL?=
 =?us-ascii?Q?gUOF+HdT0e+LTwIyLwa7iNFQuWnkYvdKK57E3qlhyN6bjbSCUO1aYJesjfa9?=
 =?us-ascii?Q?C7C1SAWtTKbBi/XAbb0KZRAcWqBaiP0x9tr3bSTby0WD8H3eS/NiyHL4AmkK?=
 =?us-ascii?Q?vIKHB+zO0kzYfzsm3VmWkm04chhbgfJkEFqA77Xbl+P0mT/IYiT7+IBvqJrb?=
 =?us-ascii?Q?LzwQKpVN5AcuyBV1BvzgyCxNA4h4mw1MDW/LJAvs6bfcrxWKCkJWce9UjNzU?=
 =?us-ascii?Q?4VoZT+dm3DUnGr1fQVeD0X4kNwYAdY3LU2a4P2SLD0B7n34vdGQl2g7OSqPZ?=
 =?us-ascii?Q?Sgjyu11ENzpvP2Nis9zWCI7gqBGaNKoBHEY4sH5NaXCc56y5wImNtWLRH4TF?=
 =?us-ascii?Q?P4ggusIYKLNa/RaN9d7SS61Za2jlgFVVMDpA9BPcboViEb5lmKaYsvCLR+VT?=
 =?us-ascii?Q?sREU8ZA91RxBZVA/7FS2jV0bwfiAx9G3fn8ZSktuf7bANnhpradvoT/AgIoa?=
 =?us-ascii?Q?dtJAnd9C9S6MokTa2xjRzMch/wCDZZJ7zvzf+DCfqGSJODx8vB5w2k9C8G+A?=
 =?us-ascii?Q?wa/s3GJGP6n88vKvK0sVQHGbKj5qNcx5IprDiq8ly3gKdGyeFuAHXUcyePV2?=
 =?us-ascii?Q?LXlFy7Wd5SLFQnOTYfQy8CHle8ooMtJhYlb36hyawLJsu3IZMkH/XJasw/Be?=
 =?us-ascii?Q?UF6d/Z4tQ2/agbo9uLn/Eg2Glcdwb/oRX+TDNvNMfWXcUYCda3G5gU4tdc9Q?=
 =?us-ascii?Q?s7VGIvjnlQahEv88Zlxl9aUgvAhT9Cl8dwGofmj94yhZ2ZpQqSdoKU5HdHbC?=
 =?us-ascii?Q?7U6qy2dqF+cL4E3oQ/RiJlLkyLT5/oD3OnyGE0VPluoFjorMQVQqP6yd4088?=
 =?us-ascii?Q?J9mhl38hfjRyAksWycLRw/cumwWDypb4wehj06SzK0+GWMLtH4/oRNuVOVk9?=
 =?us-ascii?Q?h5boOvBUDycMG5NkPoW6VXeFt302Zu+XK/mYxXDxL3br/oZnVDT68TQLemBx?=
 =?us-ascii?Q?qk5wspXHZJH6/hU6mFWqUoQV0wE+5GpTXQOCc6t61KB1XG+iM9vUzIqPqHxb?=
 =?us-ascii?Q?CBbOb5x/8ilnKwf7QCHw9qaM5BNTqwYMG8NcV6XOyymH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ceb8169e-0c9e-4460-3d2b-08dcd30a8e60
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 09:09:07.1272 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: szOUovBZIbJuoeTrpg9pQLmSkz6ptGtbmXin2Aqi7AzajEa36UqwPI9J07oWMvRvaFDOcQa5C3ZXiMSG1ikbag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8219
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

> > @@ -7503,6 +7508,14 @@ static void intel_atomic_commit_tail(struct
> > intel_atomic_state *state)
> >  		 * FIXME get rid of this funny new->old swapping
> >  		 */
> >  		old_crtc_state->dsb =3D fetch_and_zero(&new_crtc_state-
> > >dsb);
> > +
>=20
> Since there is a wait_for_vblank in this for older platforms only, what i=
s the
> expected user space behaviour here for enabling histogram and updating th=
e
> iets.

This wait is for all the platforms and is required after enabling histogram=
 and before programming the guardband registers.
User space will have no impact as this histogram event is not generated imm=
ediately. It's a statistics of 'n' number of frames.

Thanks and Regards,
Arun R Murthy
--------------------
