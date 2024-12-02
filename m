Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 954939DFDC6
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 10:50:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5897910E66A;
	Mon,  2 Dec 2024 09:50:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k7Y2O1Vk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE92910E218;
 Mon,  2 Dec 2024 09:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733133049; x=1764669049;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zg2Ty84CbljB8xcxGL5sngvGr3Qxl8FMdoi7V9Ua5PQ=;
 b=k7Y2O1VkH2BgLV63qqxnosUVqb9iP83PDR4He4mAgOZENUi6j+h9FAJe
 OaaCbydUUQ7VuFRSq4KrJoCtYWaxsgohKCXbIpdgtCie2ibBDBiQL7fQG
 ymX2T6E7hLX53D2e6pBQT0tz41AKektINI6ITo7YVr6BrV7fqEJ0Ejjuz
 KILmZkjmh2R+EK9b8iuVAya9fxygDpk7CwUNathuROK41x0ZpbcggqX7m
 /N7pcovSCHabcTHQD/5kRUXnK7NkJMtCMML7uNoQLMLmMth/QfHI8V+42
 wuNVkvz+AFRSKfZ6M3zNXgOAKB4mEpi0ihI/eZWliu5TnOnruEqvzWZyI A==;
X-CSE-ConnectionGUID: E3hh1WYkSPOjscyL5oyPrg==
X-CSE-MsgGUID: nFEijoAGQkWVR6LY7U41Bg==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="43906222"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="43906222"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 01:50:48 -0800
X-CSE-ConnectionGUID: 7z2Yar8iQYunCMTR9U8Pbg==
X-CSE-MsgGUID: wRQORdeqR7On5k7KG9u7MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="97492177"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Dec 2024 01:50:48 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Dec 2024 01:50:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Dec 2024 01:50:47 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Dec 2024 01:50:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CtqW12OoaNn0rtRLZAlVpV6HZV8WT5sNm1BJNsW5nnOWe8x0GkCA2zUaW2GWTpCAq9Q4fAG/CgEBkq4kjl+fgDh+YR5yhwQoJwoIqLY+eMZdyMxqvaPo3ZeZTMIXNXgCt3U8ADwZDZ9rLQb05aCzYCRQjEfd+ZkqOsR4TAbX2N7DNce3DhwRIaIMPlgBceUj7S+olbs47Xrg+6m3vySiYSUUcvmLkv8mxk03qFI6BFpOyc1FOGFeBG9kqaNbUXwj/8sHB5RaAtHfIUP/ESTz9EczZYIkFhB1yz1RZPysSOBJVv9ge2kkvAKU7M9pCMopU1pERqp/md1LvYCpZeJkQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+juc+fESTAsX4KjpSRNIsb2vp0dwTgM75DL+rnxVxAY=;
 b=gaeYo3j6tHJepux4hryif7RAbcFvy/OKic5ol7qibxruVd3Ar89hGFSposi8rtP+0yu2hOmg9J36oS0QMI+Pa8GqZQ8w2DYTG99glGFhcq1ir5sA7HgK6epSO97hSa7192ciddscpY6ssTDtbh6ywxAzCM8ViN+jc1dGnQASy58JQ+aRqjnSehJfKY5MTkPCJRh9SWurxmWBPyld6hT/QNwljnC60kTLxMYiqNXxBngNmNnI9IhXhZUS62w9SnUvlhG9mQZ98ITlkYT4h513P0pq9pMH/g0uJydBKePTJZTvx41aNyqJDzmf9Dcv6Bkjzl7rzlOC1kCU0CLQ5s2tAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA0PR11MB4768.namprd11.prod.outlook.com (2603:10b6:806:71::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Mon, 2 Dec
 2024 09:50:45 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8207.014; Mon, 2 Dec 2024
 09:50:45 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH 4/6] drm/i915/wm: Use intel_display structure in DPKGC code
Thread-Topic: [PATCH 4/6] drm/i915/wm: Use intel_display structure in DPKGC
 code
Thread-Index: AQHbN3fZfM0sz8E+NUGveNuE/kFM97LSzO8AgAAArKA=
Date: Mon, 2 Dec 2024 09:50:45 +0000
Message-ID: <SN7PR11MB6750D7F06BDB08BD7474D2FAE3352@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241115160116.1436521-1-suraj.kandpal@intel.com>
 <20241115160116.1436521-4-suraj.kandpal@intel.com>
 <IA1PR11MB63485EC1FFEE0806A0B96346B2352@IA1PR11MB6348.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB63485EC1FFEE0806A0B96346B2352@IA1PR11MB6348.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA0PR11MB4768:EE_
x-ms-office365-filtering-correlation-id: d21dbad6-b588-4435-303f-08dd12b6caca
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?MxLRyERU2nt1N5osYYqGFM9N4qhYRQSHlRjqvmrhQF1WtFgaEdiIxZi9WiST?=
 =?us-ascii?Q?RZWEPdKnaHAXWhkr9n/79AkgXx/PDC7BrnfJf+Vob/JLdVkaoGDtJs6Z3gkg?=
 =?us-ascii?Q?J7OPGSt8A39d9ApEQQ1z6S4MoX3ZXAA7PpYwuIN31QqHKtlj1y9Oe8Vc0qL4?=
 =?us-ascii?Q?Vv6Wt/rc0kWFGU2ks0BD65UP7H55nugP27XlZy2b2m2Zwdps3sS7+q5Q+rQ4?=
 =?us-ascii?Q?lxydaLzwllZJg1YdBy7p1bphxfmGAKoEehBaGf7vj6iuiHtZVN8Gu/fsW2Oa?=
 =?us-ascii?Q?rWRWKQOOvYq+JrROrDjIpBgERUtWBNAreGtGTcFeSIT2cDXk4K29ng2YeafQ?=
 =?us-ascii?Q?nFeKOHDXqah7p+cs9iKuSJEQJ3xYStWJSW8eLxqFGXIWge6cCNZzC4lB2EYp?=
 =?us-ascii?Q?ewdxYFi9HfiFDqory0aW/lSFdPQRAWgnwTKRmI5QaHk8H2gfN+l9NnWtU4ue?=
 =?us-ascii?Q?hjjcqHZPXMYPX3zsJkjNLD9IZ/YFrr9h1b/A0wBRKEcUXO0CGuCZ8XZtHkBP?=
 =?us-ascii?Q?9OeFaPG/4oeAjy1CbK3t+lZPQzbthwsMFa9RODlyTcWUTvS71SmDlCyLt6K+?=
 =?us-ascii?Q?yrfbe4Jlf6bdoqZRTFY8ehoUdVHHxmBMZQaeKRvzoAiELkbXoi934V42GOGZ?=
 =?us-ascii?Q?gVbDoM/auzP+yspLSkCZiBqgWs5ZwIy2fXRCSns6JNEHgZyBZt9D8VbUwT9J?=
 =?us-ascii?Q?SnJGZZ3X6tRxW1jgd2UR8yVacuWn+zhKKa/GJroZXxF3qMbbTA2LO4NFrKMa?=
 =?us-ascii?Q?PXUoKmodd4kFL/TJvEQqye3YAAkq+gSLI31TqT40FURmkmkPYpHTMRs2UW4H?=
 =?us-ascii?Q?QzobPcLA1FKiMn6+anAQv4BknETr8vEn1IMaHH8Q3rYIzRwa1sCDwN1l3osP?=
 =?us-ascii?Q?I0zIri7sXclX/bytQv5lVj5f7FmxxnpFkYxkh5RGOok18/gzc8Nih7z41aCv?=
 =?us-ascii?Q?CCB+HFMWCEwsh+u9goOA0Qa5nqtHYqcJJOuNRZJ4CkVxv+FPQxKiVVheK/EX?=
 =?us-ascii?Q?vz1GwkuE8Iu1j5T6RW9S5HVLcKccVNFqOMAXA8sNd8SMVAG8RNuJ1c05+Vf/?=
 =?us-ascii?Q?COIVjrXJ2B31kHe93Fi3vlKZzIyqEeZQ9JuphDG+iGr7v+X9mXKFZPfr0o6/?=
 =?us-ascii?Q?zJOTZar+0Hgh0byjZPfeZv1UdVtB3mM4bG3VAGiwgsabNGy+mswpdbLNSADb?=
 =?us-ascii?Q?eHhy3vRY31qwyDfUHeYdOTyZuS9DOXet+u8QCFkoAX5oWhxVBkRKlHGYVbCl?=
 =?us-ascii?Q?S+kWuzJUU8N+9LsM8TFsPVkU1jGUozbRTv+P5z/gHg8tGcScij230nIl/qkE?=
 =?us-ascii?Q?wO10FeQHicHQC4+QFr2TLGzfSbVZSWl6uRknUZ6lt6wdkbcmu535HzHfOgAc?=
 =?us-ascii?Q?qE5u4XUgud4Nv+T+EtnPfTzuf5y/ag8pCiVBcAu49BYrwoyh6A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5ggYd1r6FzF69VeoX6jX5Pt1hHV0+BAO/p5xnd2qwiK3e5gCzNQ7CU3KA48a?=
 =?us-ascii?Q?5hITu50mfhFQC1LR9j6/FNDhI3CfvUHrOJ5mCvVIF+Xp81SXfqtz941yWyVB?=
 =?us-ascii?Q?G6PXa9RTdcSw8dOkSNAGRu0VCKiXbupecOq1cBfTlLfkXadJ9sV4QGPHjEY+?=
 =?us-ascii?Q?a3FdPTH/f//9nJIbYp/0itJeeka0WSUKmvo6LLMmxXzISuxQ9+8Jfr5JJXU4?=
 =?us-ascii?Q?MTlWXq/0rspweRf+CPGQE9M01gKJcrZI2HrzG1/zT4XmZrHMeuXFX3Lyb+Ty?=
 =?us-ascii?Q?7x4Gl4T2ueL4QtPD7lo1urxtPMyy5L2p5btPZ+q5tpJUcJVSv2dYF2Ip8Va9?=
 =?us-ascii?Q?JZ+jocvwSoMxzw9EF8qeKr09EkIyoSreKPFCQVlXeiKhQeNbGvoMRXzHgjKW?=
 =?us-ascii?Q?qt8/IQJHFv6qs0DueJPov+lvB7EClvPVcuBeDKCOyRUCgYnxAwe9IaKGiBzb?=
 =?us-ascii?Q?d1h2xZTiuQ6w1DulAd+51Nej8F/5hMrwcN2YJansElGcLhr7QA2amF26LbUQ?=
 =?us-ascii?Q?nuNLnE7XosEvocH/ybJSIK3Squob7nLGK8qCwwsx5mpNcC01SOg2jbhihzzj?=
 =?us-ascii?Q?5JiL2zbnMPuByWV6aQg3s1uvO2mKEGASme+fioyf0KgdF5WX0lmG1Qr6q53Z?=
 =?us-ascii?Q?FtPimRONoEYKZ4NUoIJ29v+Bbhd7ScmcRcvEU5vegMVK8lynq8S4vJCJo/h/?=
 =?us-ascii?Q?vRDmtXrpa0e4nJnK0yLttY22Keoa7WZF7JdTXASkAg3cIeliSHXilWzvTuk6?=
 =?us-ascii?Q?ZYqUKvM1pyia+dG2vnFrZsL4mi3ro1KiHC7jnZZ+MtX0AohPWqyBbgBwmw8I?=
 =?us-ascii?Q?nW5+E0siAFwONczpsq+WvydaqumSx/4run8OQf336fI2R1w2W2WXq+KPaGzB?=
 =?us-ascii?Q?FaEivUqhP9t45q5z5eQRC/lKu8f7rZe0K97EEyq81USPrweT03pej+6a69xp?=
 =?us-ascii?Q?pHgn/rtupYH1XzO04A97sPeSzBWktCToYRud1/xYpMJsL4vRtobmX02VxYud?=
 =?us-ascii?Q?0fMGq0uW1RKu/gE3QmA2+ASVlFKlkqhyICa/o/fWeAAxKlAyUIiVee+86btX?=
 =?us-ascii?Q?rU19HZeGXLdF3tOgRcGwBrKA9wPn419l82z/k4ZLReQOR33zBOGtSZsyYj2P?=
 =?us-ascii?Q?cN2uWajMu083RaWnydifrJYqgIqMw4v+Tx3Dx8V4inBnfAZBavpYEqcm6pz0?=
 =?us-ascii?Q?z/ddTL8mpzJpwxa/XsFpnF8xQI2tQGa2OUEkkerFfUCcnuGMkl6rROMGpoq2?=
 =?us-ascii?Q?szSaylstntnaTLJSDmrr/Z9yqYhpXhlqgc4IJBWxKYwgYYmChBU0hU/SoRmo?=
 =?us-ascii?Q?BDmCBJn96BSoW0qKB1Ulxx12r7bBZh7cCcpYKUgVZ4gnQsxkXjKAt9rpsedB?=
 =?us-ascii?Q?s8ftBbtwevRRrM09wf34AEFVTV9ST/hCnIxWZYm2Iw+ZfsdB9gFE9V8eo5cT?=
 =?us-ascii?Q?5Ib2/KSvnOokojCQgrBg0Ewrqhbdx74SpzZkk4yAO9YST2H0VhtuRGcY2sXC?=
 =?us-ascii?Q?PvrFOymQLiUjlSJ3K3kpas2PTQY1GszqziCX+utrz1Tf4Cjq17uRCabQNa3G?=
 =?us-ascii?Q?jqUO5VSeWPgNG7vcN41wOcyAJ0sZ44mNctPV6Kxz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d21dbad6-b588-4435-303f-08dd12b6caca
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2024 09:50:45.1927 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zoh3cSYw3/h9lYGEi8JDKXNI0JSMWwHag6Vu66kmlQsbl88So2qTW98PNHV2UKqIgK8wniZCnBkz7w342Nbs+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4768
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
> From: Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Sent: Monday, December 2, 2024 3:08 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>
> Subject: RE: [PATCH 4/6] drm/i915/wm: Use intel_display structure in DPKG=
C
> code
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Suraj Kandpal
> > Sent: 15 November 2024 21:31
> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Nikula, Jani
> > <jani.nikula@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH 4/6] drm/i915/wm: Use intel_display structure in DPKGC
> > code
> >
> > Use intel_display for DPKGC code wherever we can. While we are at it
> > also use intel_de_rmw instead of intel_uncore_rmw as we really don't
> > need the internal uncore_rmw_function.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index 9ce3b5580df4..2deb964daed3 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -2858,10 +2858,11 @@ static void
> >  skl_program_dpkgc_latency(struct drm_i915_private *i915,
> >  			  bool fixed_refresh_rate)
> >  {
> > +	struct intel_display *display =3D to_intel_display(&i915->drm);
> >  	u32 max_latency =3D LNL_PKG_C_LATENCY_MASK, added_wake_time =3D
> 0;
> >  	u32 clear, val;
> >
> > -	if (DISPLAY_VER(i915) < 20)
> > +	if (DISPLAY_VER(display) < 20)
> >  		return;
> >
> >  	if (fixed_refresh_rate) {
> > @@ -2869,14 +2870,14 @@ skl_program_dpkgc_latency(struct
> > drm_i915_private *i915,
> >  		if (max_latency =3D=3D 0)
> >  			max_latency =3D LNL_PKG_C_LATENCY_MASK;
> >  		added_wake_time =3D DSB_EXE_TIME +
> > -			i915->display.sagv.block_time_us;
> > +			display->sagv.block_time_us;
> >  	}
> >
> >  	clear =3D LNL_ADDED_WAKE_TIME_MASK |
> > LNL_PKG_C_LATENCY_MASK;
> >  	val =3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
> >  		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK,
> > added_wake_time);
> >
> > -	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
> > +	intel_de_rmw(display, LNL_PKG_C_LATENCY, clear, val);
>=20
> I would always suggest to keep 1 change at a time, rest other things look=
s
> good, but still my suggestion is to separate it before you merge.
>=20

The change here had to be clubbed together since intel_uncore_rmw does not =
accept intel_display variable

Regards,
Suraj Kandpal

> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>=20
> >  }
> >
> >  static int
> > --
> > 2.34.1

