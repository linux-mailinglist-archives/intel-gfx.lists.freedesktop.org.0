Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85938941353
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 15:40:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76F8210E52C;
	Tue, 30 Jul 2024 13:40:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fYKKYA5a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6375B10E48B
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2024 13:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722346826; x=1753882826;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vOAv4XTovk4m8EW+ANjyUQj9PcuQQlYFIml4G/xY76c=;
 b=fYKKYA5aV20DjNA9Dc7Q9nkiZR1Tt+phrLnoJZdDdLHm8Pkw695e7wWi
 wTKoIDRZGEDM+IBI++YtqnOennVbXTavknAyqm7MdeXR62xKRw0If1HF4
 XIgXlQLkw7jjULavyTw5rnUXDhympdKW2a19xg15uwlWR8zJrO4nS7UbD
 ng/ZmJZZwGEaely+ac4t+q7eOeoCWj1wSU2hiDubNSmF2YEy2EO6e+WPm
 3F2UKX9g39J5fznr4tz4HuUgtlZr6E2L7uNFMtogg739tFtWtV2IY6BOz
 +/i37OOay+29k/f6wb/x3ksmvtnLqvFwZEJ6N6MaEgOLx8LAGB6Ug+0tT w==;
X-CSE-ConnectionGUID: aMFa1tqYQnKU4fwvb9PE8Q==
X-CSE-MsgGUID: GzYonpH1SFm+g2PBeh12Bw==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="20045003"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="20045003"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 06:40:26 -0700
X-CSE-ConnectionGUID: M++1vtZ4T1OmFaI7CUXw3A==
X-CSE-MsgGUID: fa4ZS8amRauiIKxWGkzcYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="54382859"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 06:40:26 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 06:40:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 06:40:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 06:40:25 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 06:40:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XvXMenv91GmPxCSrIzekiHrKVes7Xfs4DUA6P34hh/Ev8NBXknfX88f+1IEp/Kj1JNuRjHH19gvFf+agPfcRofN8ZWr97pfqQqjEA3e6vyLRhhbvzIKMAeEnwQaGPv9u+w3GwJXVaG1/uh5PJu6u9mshDZq4XN7aixAqHJv/nyOGHh4ewqf0+WIPl6JuAwZubk3fEPrcwijZ0z1NRk/nx0bhEWZ4BwGsW/ArwPzlbU42BISIlrdzPSwnRjyEjteqU9d9bcUECTiC7OBuLt3QJ+FfCZ9i2uivr6yxQsrTE+iy1DmNs5UvYrwAr7M1AakCjRo0Hu8ohDwwHMl65eZqdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5WT497cCeBmmQZ2m5EZtoB6SaDvzQSPvgs7T/l+thAo=;
 b=Emql1T8ITzo30f1xB3oAjpuZQ8g2qEfc0MVChoW1T5tk/u3x4fuqNxZP6DneUE3bGSAKE5MkMnqgwQGqVvgqy028qt3maYLKWyuwFMhFE0OuwF0SEC141K4PI8VRjdJZsSz3RlCnc4MWEjeoQhhuf52kLYYE6/I37t1C0LNBJRIc7NvGP6Xa/sQM/ygdxMNc+Uz87gPGGQfjfI2j94H1P8ODfS1zvUlfu9BuREEHaVYeULR1g44aNTnVdcw/yZIT2GxptUp2e4MRJsxzpGyN+H9yVcoDsa3c9Pp4DVs0fSdHiQOReX2yzJNL6rI2ZptiU/EWpOqr/imSlUVSe5T7/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com (2603:10b6:a03:42a::13)
 by PH7PR11MB6698.namprd11.prod.outlook.com (2603:10b6:510:1ac::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Tue, 30 Jul
 2024 13:40:23 +0000
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0]) by SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0%6]) with mapi id 15.20.7807.026; Tue, 30 Jul 2024
 13:40:22 +0000
From: "Gote, Nitin R" <nitin.r.gote@intel.com>
To: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
CC: "Shyti, Andi" <andi.shyti@intel.com>, "Wilson, Chris P"
 <chris.p.wilson@intel.com>
Subject: RE: [PATCH v2] drm/i915: Add Wa_14019789679
Thread-Topic: [PATCH v2] drm/i915: Add Wa_14019789679
Thread-Index: AQHa4lMDFEFPvcaTzEKQNcOCXKtIlLIPGAYAgAAsfQA=
Date: Tue, 30 Jul 2024 13:40:22 +0000
Message-ID: <SJ0PR11MB5867E2E88B589E35C2BBF80AD0B02@SJ0PR11MB5867.namprd11.prod.outlook.com>
References: <20240730075220.3087411-1-nitin.r.gote@intel.com>
 <SJ1PR11MB62044BBB0843CC9D1984EEFF81B02@SJ1PR11MB6204.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB62044BBB0843CC9D1984EEFF81B02@SJ1PR11MB6204.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5867:EE_|PH7PR11MB6698:EE_
x-ms-office365-filtering-correlation-id: 0d6e3e9c-a673-42f3-bfe1-08dcb09d294d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?++yIEzA9MnrWCJxwjlCTkLUFk0PuZNEWs42t/wSi2VTIuH/hyJqmoxohASls?=
 =?us-ascii?Q?WWY6ljydkhFM85ybIQJdllWel2ezpPbXvyp64FgGu4uM0hmtm22bE0mfKe7Z?=
 =?us-ascii?Q?zD2vm7zJsQTTnFedqpweJU/G1ei7mZDVqWWkaT+Zt2GbL8CXMU5pvufrlWVC?=
 =?us-ascii?Q?h4EJ3YNGR3sYqMeG8ofn+AkGXNATIoo9mEdVy8XOpHERC9AF+qSEI4Kca48B?=
 =?us-ascii?Q?kyuLTcNRR9ZvievCn+Ief/J6GH3s3baPQZHVl6nGVOVBQu/Y7Hz2HPAHIQkM?=
 =?us-ascii?Q?dg1mxDt0xD+IV8JvAQ6Qp9RQKTfstH+oy0kJSC08ZWNYWAU61R/KgyVZ+xg/?=
 =?us-ascii?Q?C9dJAQOsBEnIIaY5UmoO4xD+bKLZltXwk5I5HMO6QA6iHAutSfHeqM0HhIIk?=
 =?us-ascii?Q?MHAoRQayrZY1vN4NLdjusveq+pJGvXPaXDBsHBuIfwxo43ulgW0SYeBuZt9a?=
 =?us-ascii?Q?1M4FmaiOC9CMRMEi2+p2gGoj7N155xJ9sNR9meAofeRKK0JaKYqf7lo3bMT7?=
 =?us-ascii?Q?0xxkpZY5fge32V9eDy8XTudzKplkzkkzzbW4f1jTRK1aPsDqK0X7Us9f4QeY?=
 =?us-ascii?Q?Tb5I1ZLTt5MV2Xm/cgiDUrcOoMPrA0TrJkuT/sSj0jzxueTdaxOG2Ct5u8PI?=
 =?us-ascii?Q?3k7mjlYuqiripJSrAdEfEYpVPAoipVGZ6WnWkcT5AaA6OBw/fcrQOzqoqGSx?=
 =?us-ascii?Q?EBNdywKki73b6GZffG15LZLJoysph3UbMy202kDCTvJQzBq+rgZI2U/Q9vi2?=
 =?us-ascii?Q?trTs/go3k6KNAkUpD8XoidXu5HYBUk/KUcyf5fF9eHezpkM8Da9S9TzII/8Q?=
 =?us-ascii?Q?L+ErTcU6C+FlQZtyQcwnYRiE614ocNOXwWd4WEtH61rR3OXqq1lI4F8R/mrU?=
 =?us-ascii?Q?CV21XX4O44xiuik8A971SSuItNsXb2j4wgVulVTX0w9b/9BssZDC9v52wlMj?=
 =?us-ascii?Q?fIBMlaO0QUXKJfM8WcVa1UxBNSDhxfHpL+0a79JMShfBnjiboY8ilDmWqGzk?=
 =?us-ascii?Q?xmOx0iifyw06irAKrGWoxmayPl49S+qML26mBgy/lnny2S4vABh0gH83IAqo?=
 =?us-ascii?Q?P/sTV9homIy0xYqIB3fqYpfnZk41xuo571PYyJ7zUT8Wq9Zaz02aOvZWD8Hc?=
 =?us-ascii?Q?0VDHPZ/V+i4+l2ZfBkf+gPIVVt36+zo6vJy7W71+Stj3Zolde5YrBVMZH0/M?=
 =?us-ascii?Q?fB4sGpk8FLyPKtaf33xk2lqUq6dSdsz6xlWuwhSvtv2gIqFD5CGsqLXCSQke?=
 =?us-ascii?Q?iV8h1bfO26JMBS2b6DaPV3AXaItvUCY/2dAnXceMBgVXnMjzK3Gx5FOVUwgn?=
 =?us-ascii?Q?pmxyuE1B3QQ2YlMvVtFLwsR7Mvh7reXUKzruEKaHY+eerkmlfKjXBsLmSzka?=
 =?us-ascii?Q?kF7RpGoeuFlOu09tPeEKwdw7vgVNQ6GWSghskI3I+JBnRUaGlA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5867.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YyCL7Po/SrevmFoASwJjTPvdXOx8hGQtNog/UM5FnaxiwjpKT4LLu9id+vIw?=
 =?us-ascii?Q?BSAj0V8zKJMwOAEGZZX6eMXRBjG3eGxGj1pLxbcny/vpAfqsB8knNkN7cPQk?=
 =?us-ascii?Q?UZ2lLM72gZ7ur5c5Eu7mgn8qz26JIsPgODPtHLQhtPB+yD0Jco304FBOPAdQ?=
 =?us-ascii?Q?NDQXiO3kyxH0SsMb6+X1pTJ7aSq0KE6y3Wk2+oqVCe8pnKu95j/W6qRGCk2u?=
 =?us-ascii?Q?gnp9uYcCm/jOf+vAvGaiycVir5GfDz0zjwoS/c1XJ7kFKiutVQPlO65qJ7kT?=
 =?us-ascii?Q?yatIanB4enIA7XHnIkvNL4Pvn/piPqs+Q5URlTzugZT4j8+/UbYhBghZwkTU?=
 =?us-ascii?Q?BuF8vFhORS0sX1mxMv6nSummaJNzqQ96tC35FkVHh0ngXdmRc3FzL6z+kfYD?=
 =?us-ascii?Q?P0/lIKC4l+Hppb3bpe/Z+V+XWbvUR+RLpJbBGPKccFx+ZXsNa5sU5TtrSTEu?=
 =?us-ascii?Q?EMYDwzWrNCSM0BFBH1qAWKxFK4fvuSKroMD1UMVcsig+Cx7OcaTDpRRHfkE0?=
 =?us-ascii?Q?m/Mq8XkvuI8bbrtd/MuNFlkiaLejVz4bczwcFmCpMEC3/POyEOfz3Ifv0ycI?=
 =?us-ascii?Q?Bc/JIN6le93KVc6pvfT1rLAYurZVV0eDIhcWcBETt6mPDuq7ESeq18lLjfpJ?=
 =?us-ascii?Q?XZp7aeuLRaNOZVdnkPF0YSIEmSdRH7ogqFbHDAXyAlwnHgACqL7PxZybRqnt?=
 =?us-ascii?Q?UXjQ/jMrAJGOGPWFtvOP/SK0l9cp+chy6ren4T2rK3v9ZkI//mAdQH7m01y+?=
 =?us-ascii?Q?oFI8Q0cgLxX0C/Kl/AfIWsT/3ryVX1H6PcsPKhQm0ZXu53Q7ak9ZWTQKYdh6?=
 =?us-ascii?Q?nIqkWgKVje+kDt5O0N6LEg2E3zM19x5CQhFzPgNmzIboz7eMZQkpZTPlIvm6?=
 =?us-ascii?Q?0RI+sS7r4lVeLKC2rFVdQdJUVlW+mRD+lKAbq861etjZqO5ZPAojLj31dR/A?=
 =?us-ascii?Q?ppP7xwP8Plzs68Mbn3S2OsfYWzA1zdSZ+NvieUN7nI3DOKvJUJGRPKoxMMFY?=
 =?us-ascii?Q?zuSD6sS39dseoUWDukjCq82GAnj1YD70q4vME1+KV0f6TO98jcYp924ymNHu?=
 =?us-ascii?Q?yV9thz6a3PwNWhvzfJsA6CT2C14zxVVYLFPG6fQDQ5v1NbhsGzg0Ir0aw6P0?=
 =?us-ascii?Q?ltM0/eEW2KI1of3dYUh0bW64QuHeWLSGZPJB1WBbS7y/b4PoRcZgieVw/p8u?=
 =?us-ascii?Q?UDZ3TLZRZKirQBBOAoOm6L2ZGAgwbI/Krb9hssbdVCVANmjmc0/jVPDJzMHD?=
 =?us-ascii?Q?ELoHSqgqxYpeO+rR3LKAB0QaYOjscUUoCB7019rRcf3wHPgtHUN7/dbWRVRc?=
 =?us-ascii?Q?WPhoaqGuoBiASEegNB8pvCBCGWZ0wl1wRIP/T/tSpsIL4ZkuodCOCFUWi4OC?=
 =?us-ascii?Q?LbOQ2wOIsEtKV6RW5jOHrlTXttIrFjR6yVfTxSj4RMAJ0fAEXvYE6iiG4FwR?=
 =?us-ascii?Q?4E8C2CKa//rNasPu45bEdozuTrZ3Asjs4aH7CbHZrbosRn41+J/xjhuQoIHd?=
 =?us-ascii?Q?ZIzJAPxL2Z3Z72L349MYC+0TZGW84QGGzyOx9viVV2GcCcMIaMDrNn8HvN8+?=
 =?us-ascii?Q?u2evnqyxnWQnT8GrWTPMnFf+CzNXMEVNIoxyR546?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d6e3e9c-a673-42f3-bfe1-08dcb09d294d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2024 13:40:22.8545 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t430mJ4d8HR5A6MguUH2+mmPtFcxfx6EKbPEp3Dp9jyvJ0zjZboM4bBmT84OdplO5mp5ccfvhTV6ZUlJnrnTtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6698
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

Hi,

> -----Original Message-----
> From: Upadhyay, Tejas <tejas.upadhyay@intel.com>
> Sent: Tuesday, July 30, 2024 4:21 PM
> To: Gote, Nitin R <nitin.r.gote@intel.com>; intel-gfx@lists.freedesktop.o=
rg;
> Roper, Matthew D <matthew.d.roper@intel.com>
> Cc: Shyti, Andi <andi.shyti@intel.com>; Wilson, Chris P
> <chris.p.wilson@intel.com>
> Subject: RE: [PATCH v2] drm/i915: Add Wa_14019789679
>=20
>=20
>=20
> > -----Original Message-----
> > From: Gote, Nitin R <nitin.r.gote@intel.com>
> > Sent: Tuesday, July 30, 2024 1:22 PM
> > To: intel-gfx@lists.freedesktop.org; Upadhyay, Tejas
> > <tejas.upadhyay@intel.com>; Roper, Matthew D
> > <matthew.d.roper@intel.com>
> > Cc: Shyti, Andi <andi.shyti@intel.com>; Wilson, Chris P
> > <chris.p.wilson@intel.com>; Gote, Nitin R <nitin.r.gote@intel.com>
> > Subject: [PATCH v2] drm/i915: Add Wa_14019789679
> >
> > Wa_14019789679 implementation for MTL, ARL and DG2.
> >
> > v2: Corrected condition
> >
> > Bspec: 47083
> >
> > Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  1 +
> > drivers/gpu/drm/i915/gt/intel_workarounds.c  | 14 +++++++++++++-
> >  2 files changed, 14 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> > b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> > index 2bd8d98d2110..c143d8133a28 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> > @@ -220,6 +220,7 @@
> >  #define GFX_OP_DESTBUFFER_INFO
> > ((0x3<<29)|(0x1d<<24)|(0x8e<<16)|1)
> >  #define GFX_OP_DRAWRECT_INFO
> > ((0x3<<29)|(0x1d<<24)|(0x80<<16)|(0x3))
> >  #define GFX_OP_DRAWRECT_INFO_I965  ((0x7900<<16)|0x2)
> > +#define CMD_3DSTATE_MESH_CONTROL
> > +((0x3<<29)|(0x3<<27)|(0x0<<24)|(0x77<<16)|(0x3))
>=20
> I think number of dword should be 0x1!
>=20

Correct. I will update accordingly.

> >
> >  #define XY_CTRL_SURF_INSTR_SIZE		5
> >  #define MI_FLUSH_DW_SIZE		3
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 09a287c1aedd..cbc2003886d5 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -974,7 +974,12 @@ int intel_engine_emit_ctx_wa(struct i915_request
> > *rq)
> >  	if (ret)
> >  		return ret;
> >
> > -	cs =3D intel_ring_begin(rq, (wal->count * 2 + 2));
> > +	if ((GRAPHICS_VER_FULL(rq->i915) >=3D IP_VER(12, 70) &&
> > +			GRAPHICS_VER_FULL(rq->i915) <=3D IP_VER(12, 74)) ||
> > IS_DG2(rq->i915))
> > +		cs =3D intel_ring_begin(rq, (wal->count * 2 + 4));
> > +	else
> > +		cs =3D intel_ring_begin(rq, (wal->count * 2 + 2));
> > +
> >  	if (IS_ERR(cs))
> >  		return PTR_ERR(cs);
> >
> > @@ -1004,6 +1009,13 @@ int intel_engine_emit_ctx_wa(struct
> > i915_request
> > *rq)
> >  	}
> >  	*cs++ =3D MI_NOOP;
> >
> > +	/* Wa_14019789679 */
> > +	if ((GRAPHICS_VER_FULL(rq->i915) >=3D IP_VER(12, 70) &&
> > +			GRAPHICS_VER_FULL(rq->i915) <=3D IP_VER(12, 74)) ||
> > IS_DG2(rq->i915)) {
> > +		*cs++ =3D CMD_3DSTATE_MESH_CONTROL;
> > +		*cs++ =3D MI_NOOP;
>=20
> I think write dword 0 as asked by WA description. So it will be *cs++ =3D=
 0; in
> place of *cs++ =3D MI_NOOP;
>=20
> Tejas

Agree. I will update in v3 version.

- Nitin

> > +	}
> > +
> >  	intel_uncore_forcewake_put__locked(uncore, fw);
> >  	spin_unlock(&uncore->lock);
> >  	intel_gt_mcr_unlock(wal->gt, flags);
> > --
> > 2.25.1

