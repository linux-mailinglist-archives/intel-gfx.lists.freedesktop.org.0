Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8EEA72BC2
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 09:46:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CD6510E884;
	Thu, 27 Mar 2025 08:46:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jJ2lLRuS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2260E10E884;
 Thu, 27 Mar 2025 08:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743065189; x=1774601189;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NmVEz7BDotfFyt7lENgONM2xKH/zQVGgxC+yn8BBq0w=;
 b=jJ2lLRuSk6lGHh18MUydq2DMeKmq7RXb8DpImRg046NneFNR8BrcM9w+
 9/zFlLkcX7AlnCuCvcEJp1cY4GMmoT7D3uoB8MMOdeonhJblot7O1cXk0
 SowOCTwrZxIyGTKB+N1lzrdAEQeophu7PS0dCTpU+vABU6B8GdEDipJ6m
 MR5HcTg/33NH5AYI/EhhEPT5JmYbsEp8YjTh/BM2aOMapGHT+7K0zkO67
 l9Q5fR5zuSLIi5qDuRco5eKsJFu3LAAy3qGk5AFFBEHkjTTmXOPVMVlu9
 yZ4YP2iHZR1S+SZf6/55avPtkvwrZzwdAxg5eY8O37ThiodRYbbcAJAHV w==;
X-CSE-ConnectionGUID: t7M4Vl0XRX6rq7jQ5vsywg==
X-CSE-MsgGUID: pfIH/JT8TpSHiObmEGdbIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44303750"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="44303750"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 01:46:18 -0700
X-CSE-ConnectionGUID: Q9aIckRAToevLcEMXJgDqQ==
X-CSE-MsgGUID: 3jLHZaX2T+eOoVNa1URNkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="125587187"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 01:46:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Mar 2025 01:46:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Mar 2025 01:46:17 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Mar 2025 01:46:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V/lFyw73uMMhcp7QopcT6OXGUA50VpQr0pQLqLQDvlNMiewSV05IPMGY2/FgWtqyLDQCmon+1Jqy95KW1GujgYuPmfjWj3Dy7aSiF64mRlDmvRmf1h6bRqSpNu1Mflgxnf0t90VetMvq+V7Zhk0NB2D3EHbjiDlXskB3rz+Fup6LG2yNgw5TB7awCH5lExey22kHaT6JTcWjLqoWhJ+gJIzCBJRUnEr2bqLmtKkeYytBPr0uLeQ3AbiyNSStdi7/QIE1NhDuz7Msr3wQlY5JZ3VArvfzYmi0LVTIzysXL3t8upEWYI22QihuM9+9b9fsUIa0J5hy7jqguYZ8dyPoog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pUur/Hyjt73vvQ4Z3HMM89VmWheyUH2+eC3lwRST1lU=;
 b=d2tN0ik7qC6pTMQsabuKJ+HCEr1yhBUMeugC8syhF4qajQa1ElAMMd1M28o+sAz3D0SwJt2zHPk2RiPE8IvO0ItD7qzh/De7rXFPURB77rDpKdIeY2967sHDmCzpGuB+wwI0XzXOs6f6sqOKak3VtITR1sTfbDCop1vRqC7h8BQ3TZ4Xb7sCGBkxqIz5QPypQWDbtzQJrCDkl2o1kv51N59fSNiujUxXLMuPGAAMXkXgu74Opw2+rGKWMy8PgicjaobqfC4VJBxMUuEJGzCxIrHlfXy7YLymt+d5q11iAEP5C+rxRTprniNPHNo4S+iX/ReHCMCi/yl3IfFTPzjOdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DS0PR11MB7630.namprd11.prod.outlook.com (2603:10b6:8:149::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Thu, 27 Mar
 2025 08:46:15 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8534.043; Thu, 27 Mar 2025
 08:46:15 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Nicolin Chen <nicolinc@nvidia.com>
CC: "iommu@lists.linux.dev" <iommu@lists.linux.dev>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "jgg@nvidia.com" <jgg@nvidia.com>
Subject: RE: Regression on linux-next (next-20250321)
Thread-Topic: Regression on linux-next (next-20250321)
Thread-Index: AdudRupO/hqyu5dwR3qhp+EvWE8LDwAEjwgAADQFtWAAGZ/YAAAZGWwg
Date: Thu, 27 Mar 2025 08:46:15 +0000
Message-ID: <SJ1PR11MB6129CA13F69C8CE0D1BEA24FB9A12@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB61295789E25C2F5197EFF2F6B9A72@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <Z+Jd4GDIzCP5cBQE@nvidia.com>
 <SJ1PR11MB61292F9467353BA9FBB8F4B6B9A62@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <Z+Rm9LweNAtQBrmD@nvidia.com>
In-Reply-To: <Z+Rm9LweNAtQBrmD@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DS0PR11MB7630:EE_
x-ms-office365-filtering-correlation-id: b501d372-5696-4fc1-d53b-08dd6d0bd592
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?MPvSx85oZgNu1At/X4U8TJ/bG58Emtok7vAnGq/gSgfV9nv09vNd0SRN2Ebc?=
 =?us-ascii?Q?VGNaHNmNS8ViecSvyQLHjoWzSOmL0wyFKlcgJvRWt/6UfdcUYc2nr+vweOVy?=
 =?us-ascii?Q?gHmfwssO9TJ4VCsTU8gyoMjQf7fnvh2tnIxBzJK1R407o1Lv3KC7JQVhu/6Q?=
 =?us-ascii?Q?SSRTnX0PTWamfiI0qWMhY3a0uCD74H90ymaLOZYV6ZYnSti1l1nKUEZBbdas?=
 =?us-ascii?Q?QlgwQKYugqxKQBvS855N3SXP8rh71OhbiTaaDIV//pO7MUA4FdDELdw46tAg?=
 =?us-ascii?Q?XgcRxNi5vXlAGMAp+sUhhkQ9ZzBEL0xWZUZAt78YK2saTFMj/qcIIqEld6Vo?=
 =?us-ascii?Q?pfD4hsRnr4aRK9Jipk1wEHDm9W+9azNi+EJouvfmprgaEquoelawL0myIn9O?=
 =?us-ascii?Q?NFuXqlYFrUl0y+BN3m1IOXxlSRgp4Wru4s7ZTD9j6zeVsNtjoJQ4KcYw0+5T?=
 =?us-ascii?Q?l7RRP/Q1VbVsfuYw6smpV0dbrhWRph6r4feiJQlfXvnYz/oAohRvzbZR+6QR?=
 =?us-ascii?Q?tVuA0kE0tLfCRQKyVgDe1ncloX6SF9BFaU/Sx+tPs7F1du57+Tj1kbO9W++J?=
 =?us-ascii?Q?4WSn2+YvPiqbxW0dSReeehDzbwXTZvTQRIRNKrEsTJlN0sN3zD/rf1AicL8u?=
 =?us-ascii?Q?qs/iKOWhJ6QDAn1UHYFnrB1MP4dWGqPNnDa+CHbfJfRL1zNE7d3rtYsQ5a+s?=
 =?us-ascii?Q?xL4O2DRADL4wnEbMsO/kY47zXGUZ8pErh4bx1Bsd0xGhnA8mwlyxMv+m9vnx?=
 =?us-ascii?Q?Ro0ywvX1DzSCJrm/iZIUlROyKs0FqbHKqL5xKuYj197UTz0SxJfk8flCOsCl?=
 =?us-ascii?Q?qw5sNSq0bsiIMQGWbzjdR0sKa+IW+MN1CbDFPcN5sSZMLsgTa/S2BsTRvxOv?=
 =?us-ascii?Q?eiUaWZItatJBb9lfiACYGqYEurG9fJ5OmjE23rlcAF1eSmeI2kvhSg1iLifF?=
 =?us-ascii?Q?B7i/rhbuVeK75aN66+IPRtM24TnBKz3n/k7fipaAMnGd0b23WJNPEOJCb/z2?=
 =?us-ascii?Q?0avKEEWzA+NSn2nAxlsSv5NSSZy+X3Cm6XqwvvnbZz1vjHXeP2L+Nq6xuh7+?=
 =?us-ascii?Q?dpvzQn1thAw9Hix5Zxr3vKRi22WgYxCk9SYzBgwKoZfXGIAAV+yj95qt2nob?=
 =?us-ascii?Q?GR71Vb5Da8xV+eP1J/AMbVwh83ktOR4tuCam1muhWXzyrn1IeyIgzfPN0p4l?=
 =?us-ascii?Q?AoPJVYDpnrnrgzZdJID8LR+cBCdAvglV522R+JUFABULeWuwwRJiGjVHywAZ?=
 =?us-ascii?Q?Mk+mZE0xCkkute4TEFMSvaLD+P7WzVCRlWFV0t4Qo30uk0/NaKz+nq5peAUo?=
 =?us-ascii?Q?ZGhQc8OoHN4FH4gdATlBz6+s5uubXWWnhBB8OSS4HXcYREcQOUjz80cBuIrc?=
 =?us-ascii?Q?WCHUNDurfkFC+MWboV9AvtbHGII4X6mW7G09e+Kt1iMKnpj91Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Cb1PNMHHE6Wsk6H+MOpaQScdbvJ/LgLtf0h2nOVXaZXSXpMeA7MUCyt49Cly?=
 =?us-ascii?Q?0xPzIkO11YK/9nlIdVRvgzufowrhyZxCTz8QzuXYFxE0jISsrRpxezTFel5P?=
 =?us-ascii?Q?MOccU8S8ec8CK2C92+88iheEA60j16/Vw3Nja/F2kShILD+5sBYQX8LyWiba?=
 =?us-ascii?Q?NYPqNA986Tdia0UYcR7X+V2t0OP5/iIhfxx0whKrI/FJOR0rxjSzJhZ/NJaz?=
 =?us-ascii?Q?A1U38bMg9CGWMn3DUScwlaDRf7en6OjRh9UL5S/2teVS7TBui1PSV/ZMC145?=
 =?us-ascii?Q?5N4V8vXj6i5VrJ4Yhrh48BoJManhhmCpWgL3XbNgFsJzDD9sZX0kUQggy6dH?=
 =?us-ascii?Q?zLcd1ZYqQMjdMYnA2XN8RyFvuzHdwtR7WPxV6rUjIPk0pnWqeQpmDnMmmogi?=
 =?us-ascii?Q?ED0CWGZJJUaP0UQAKSVGqHOiIdja7Y/yXkv9zWuLhwZy5XZ4VG8+E2E5XgBm?=
 =?us-ascii?Q?7akfxkS+A7othYiudzrTD7XodqCival7Khe/y9FQyLXXIw1+S4WXdB5Ae2Nk?=
 =?us-ascii?Q?9VMZISpqnGsq5a6VBCBTcOoSbpFLInBM6nAbdoo0jaO1M/ZYrooAtJj/uKot?=
 =?us-ascii?Q?Gvtfa3o421Z0wx9Z+Yf4s48gufFrXXSxloMnwzHke7punfosKADpHCDZY4BN?=
 =?us-ascii?Q?OpPvo89Y734kccJRu1csVGruR8QPaTNbojittXlRYhA6ZX90kO9rST+blyoE?=
 =?us-ascii?Q?V38zykrkYlDIQkXrVijg2wwF9w+XkDNh4a7YVQv1dZzYn4Z19v2NkjAESFHz?=
 =?us-ascii?Q?xajXJNshrd22ZYNWxmEn35lAWamY13tRSBUTGM4btpMWp4iM/HTZGXBJcHKU?=
 =?us-ascii?Q?0FDGuSoRo6Y8lrrK0+tI6QK+puqwOZ/zpLGCTJZXDFVsU6YECQKCiTf241zX?=
 =?us-ascii?Q?4ccN9MO8DJ9HdI4SYj5DMw1V96qL9XLEtSRQu+ehr4fpal0vAtVG5mZ84pio?=
 =?us-ascii?Q?z2sCWtKiopZ4MqP3fnPO+dY6IrLBUV01zsshQim+e2kzLYlBg88Afs7E8Wqv?=
 =?us-ascii?Q?mmE6MJ8pIYAPUBqeas7cvvf4pu4Ip8As80+vQu27t2n3XlKmys2e5vhn1Oag?=
 =?us-ascii?Q?vGCcKiGUyZf2tcPgNfOcVNqJrGuvKXuXel4J5RYYOuTIf6S9RRKITxdri5pw?=
 =?us-ascii?Q?p5+HWio+QkuwLAuitpVRxsvHZJkZZbHQt+vgRjzYlUlp+IOxsHdKNaem2Ej4?=
 =?us-ascii?Q?uSQazXbgU47zbLaYndWHU2TSTIFD0enN3pImUaR2r5TT7ZLENyUAEUBmmCij?=
 =?us-ascii?Q?vCU9aUh1+jsb6Rv724Z+H9i2UcFnHa65d2h/AUBieoSndj6R2AUWOoxuXKR4?=
 =?us-ascii?Q?Wixbg4K/ExOwFUFJ3vxSQ+fsO2rCAvKtlC8WJgvlxBHqYA5jSSHkz8FDxe1N?=
 =?us-ascii?Q?N9wDGOtjkovKSfecgZncXTUZyXyttObIHXl/geA7h7sJ0ldyujjs/S+uAudU?=
 =?us-ascii?Q?8OTWUNnH7lTbIYv0uflG+5dQl8Nzo/e9KdggqoakQyfmT2Js+8n/Wu2+y3LP?=
 =?us-ascii?Q?evVdWHnYSjyk9GexvBXA82F5j1GBI24Pn52OWr8/MSqlEKiyRVfK4rGO8+V/?=
 =?us-ascii?Q?nmVPRHjExyZ7H54VrD5io7Zam8dLwGzM5Lxf/L5BmheZJhQRjYVBhwg7Famp?=
 =?us-ascii?Q?aw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b501d372-5696-4fc1-d53b-08dd6d0bd592
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2025 08:46:15.1156 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BQjZ3rVwDDdqzvtG0J1JPuZxgJ3buCBq8+jsxPiszV5NDDgoYNHHEwOV1/MU2+hAxLJJl18mMVMU3ZPOeEmQvX+Zj0e6fkuv2PkaAHOI7Ec=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7630
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
> From: Nicolin Chen <nicolinc@nvidia.com>
> Sent: Thursday, March 27, 2025 2:14 AM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Cc: iommu@lists.linux.dev; intel-gfx@lists.freedesktop.org; intel-
> xe@lists.freedesktop.org; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>;
> jgg@nvidia.com
> Subject: Re: Regression on linux-next (next-20250321)
>=20
> Hi Chaitanya,
>=20
> On Wed, Mar 26, 2025 at 08:31:15AM +0000, Borah, Chaitanya Kumar
> wrote:
> > > > ```````````````````````````````````````````````````````````````````=
``````````````
> > > > <4>[    0.226495] Unpatched return thunk in use. This should not
> happen!
> > > > <4>[    0.226502] WARNING: CPU: 0 PID: 1 at
> > > arch/x86/kernel/cpu/bugs.c:3107 __warn_thunk+0x62/0x70
> > >
> > > Hmm....I wonder why x86 can be affected...
> > >
> > > The only four callers of iommu_dma_prepare_msi() are ARM platforms.
> [...]
> > > > Details log can be found in [3].
> > >
> > > And I can't see something obvious from the log..
> > >
> > > Would you please give the git-diff a try (drivers/iommu/iommu.c)?
> > > https://lore.kernel.org/linux-iommu/Z+Itnw4ys6dmDsc+@nvidia.com/
> > >
> > > If this doesn't help, would you please give this a try?
> > > https://lore.kernel.org/linux-
> iommu/20250324170743.GA1339275@ax162/
> > >
> >
> > Thank you, Nicolin, for your reply. Unfortunately, these changes does
> > not solve the issue. (applied individually and together)
>=20
> Would you please try the latest linux-next (next-20250326) and see if the
> issue still occurs?
>=20
> If it does occur with next-20250326, would you please try reverting
> 06d54f00f3f5a on top of the tree rather than bisect?
>  "06d54f00f3f5 iommu: Drop sw_msi from iommu_domain"
>=20

We have tried both of these but the error persists.

> It still feels odd to me and Jason that this change would break x86.
> So, we want to confirm that this is really the culprit.
>=20

I think as discussed in the other thread [1]. It makes sense that objtool i=
s injecting the error.
That would explain it.

[1] https://lore.kernel.org/intel-gfx/Z+Rm9LweNAtQBrmD@nvidia.com/T/#t

Regards

Chaitanya

> Also, I think your platform doesn't set CONFIG_IRQ_MSI_IOMMU, would you
> please check you .config file and confirm?
>=20
> Thanks
> Nicolin
