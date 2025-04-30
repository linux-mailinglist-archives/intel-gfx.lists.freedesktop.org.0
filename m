Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EECB6AA45E2
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Apr 2025 10:47:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4360110E0D7;
	Wed, 30 Apr 2025 08:47:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DYPiwGef";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EFA410E70F;
 Wed, 30 Apr 2025 08:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746002872; x=1777538872;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zKzcCgQ7aUpf83+/96XRiM5XbGEpmwRQhcVV+TxWr40=;
 b=DYPiwGefJ0SnGrWLu/Uq04Fhqb5au3ob/qsRrpj2MmDPZokYn90uH+zQ
 e5gAWAqQ1j/8b6KLyCjxQ0Oq1tDcXZfeLOJVzF0ler/P39jrKVBzjmmhX
 LEHoYP3abSraXDsCxJVubHeKzZZrkhnP8VVeLW9Obe5f+QyDhLwcmdZ2z
 +C6Tm0/rpf/MlWdjRmJdOHadR6F2BAlrzeJtVpHiWI1J0Sx0YaQhII9Mp
 DuWhGsS95NwPOxRtPgjhsnozyOemsVcRxPdO8zk7cWH7V/8a1WUtX1DBg
 bPvfeRKmVjKAzUjZuVlu2+5I2A42gaJdinpYhoqfKK9Tt30iZpRl3bXut A==;
X-CSE-ConnectionGUID: KKg9Md+YQX2gw1YrNUl6ug==
X-CSE-MsgGUID: HboiDmetTwWK8wuDrgZGKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="51472844"
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="51472844"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 01:47:52 -0700
X-CSE-ConnectionGUID: WXpXn6NlTkCfFwOxRkGPqw==
X-CSE-MsgGUID: JSldEuJDSpOxJLtWPP+o+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="133960496"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 01:47:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 30 Apr 2025 01:47:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 30 Apr 2025 01:47:51 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 30 Apr 2025 01:47:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aPknhMkaXcFS9DJ17Ij2zDgj7TZCCyr8ON7fL4i8ktIXt0xhX1H9nv1CemKF8gPdK3Qu6MoYSNkKWFhfa3V3wDcML/qctofnKIlZ035Ek2+Bj5aExnf5MqMlRPD8VnSHz9jErkG2spruCgoJT+pamDV5X/LnXQ2V5CPB4kIAzI6I7PuvVD9hYVGYLNZSdrrWO7eLCLdArbDLPOk8DwXukMvOXWyHKY3Nd7R+Qot5XYH7c++Q8k/6lZcwHCpedAZAjYgrfYMkM75VddI4hmbw6ME5HsQ0WIzQKheUdetl9zsHNoQ0t75BirRmp7Fhm5triLQ0xkJfPokadCdV/WHWBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uV7i2K9iCZy9qgPIidV1Ii66ZbUUwuU853h3Y8kKovs=;
 b=ckCNy5VhbaVp790B3zzR9Q6xzTCRMMFD0MGrpth+cKBCtDxaErd9L+iDGcW8/wKE2MMivxjJ5o9yEYeLKTptxTbPDxrgRC23ropEII+bCzgAi2BLMKQSPDaYTLO72gQ0yaz8bE9PAx0d27XQuwFVPDlDL5U4AQBPJWVeZhtgqBrmGYQKEqSlDmDrZuXr5CWfUkVS/SMTBAty9/6/DVQzMF6pROvtOt4KzDKYIk6Ehi5ejuuScRvSfVMCRzDlhgPqzqRBTlvXJUBbNQR+63qJZG9EqeNBYfMCiHYZ6ZTs95SKi1ivHlaFObNdjcs3glNGSrao5Je7uZBqiXvmUKoSxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.32; Wed, 30 Apr
 2025 08:47:43 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.8678.025; Wed, 30 Apr 2025
 08:47:43 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Peter Zijlstra <peterz@infradead.org>, Jani Nikula
 <jani.nikula@linux.intel.com>
CC: "luto@kernel.org" <luto@kernel.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Ingo Molnar <mingo@kernel.org>,
 "hughd@google.com" <hughd@google.com>
Subject: RE: [REGRESSION] x86/efi: Make efi_enter/leave_mm() use the
 use_/unuse_temporary_mm() machinery (linux-next)
Thread-Topic: [REGRESSION] x86/efi: Make efi_enter/leave_mm() use the
 use_/unuse_temporary_mm() machinery (linux-next)
Thread-Index: AQHbuOVS8VpR5GSsXUu31zigWd17p7O692AAgADu8vA=
Date: Wed, 30 Apr 2025 08:47:43 +0000
Message-ID: <SJ1PR11MB61297D70878E228810F735A9B9832@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129E62E3B372932C6B7477FB9BD2@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB61293655E9386DC0FBD263F4B9852@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <87selrwdct.fsf@intel.com>
 <20250429182904.GL4198@noisy.programming.kicks-ass.net>
In-Reply-To: <20250429182904.GL4198@noisy.programming.kicks-ass.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DM4PR11MB7183:EE_
x-ms-office365-filtering-correlation-id: 0471c753-8e60-4b2a-5efd-08dd87c3ac62
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?9ALSWBEsgN5gaRGPIbu1u2VCzA2hNr30g4PvpkxV0Qv4l+54jITugEtGvdF0?=
 =?us-ascii?Q?RXrgPQjbgqnrFEfuuWhblSL6ds4BWbyrcj8wRSAPhsAce9TqEuVAnkALDPiR?=
 =?us-ascii?Q?zmuMca6ieJR7DP69Tq8phKOt+/fpveaKtG9jufF/u1gzZopGRtD0ABpD6RY0?=
 =?us-ascii?Q?4uJo2k/QsFwkpwMHp8CJM3Nva/0zh4FMjMbFj23pQc/EEF8AD0Wk6UciQCue?=
 =?us-ascii?Q?gzxFcyTqCkEXqTVyC2UMnL//Em0ikkef+/UtGhfPxkIpHjqoPr32RHaVSseO?=
 =?us-ascii?Q?7nMv+UExuKzrZTNmmYaUo3VTC2qEj5BQGP2ucjLa1oxB0Wvtr3AqSuidz0c9?=
 =?us-ascii?Q?aM9SiobHmqVUyoljndzkctGyfs5vqOBdHBEIPROt5Cxjxh8xMNFKH4Xc+Cyn?=
 =?us-ascii?Q?GrU66OFlajMBzIBsWV123jt5+el+JqHYxwhFY1oe8bAEVSZta3/WvJ4jba0z?=
 =?us-ascii?Q?04sX1FhyUPUhYK/vUnywXLZglbEFilrbDt/WC/5tA6Cu8ZdyrY1GaWVcMgNF?=
 =?us-ascii?Q?9EPLlKkMei9+i1T7+WN9YhC9CRRyN7d1TDpKXWcHIDSGfXofnVlzHXnPDJk3?=
 =?us-ascii?Q?txdquAqZka1eEyD9OY02MiqgVwJOp1M55+TtZEpgy/llgRJ0Ss0ywHTMMqps?=
 =?us-ascii?Q?H6QcRH0nOlW80DeoC0x86qk1Iaw2mNYEmoNMp28RW30uz83iUVvnMs0KwXZd?=
 =?us-ascii?Q?IIZSGcuO/K4Y6OwQ1kmZLUYne7uD+Rw46ZnegirR+gB1bldjHESARdYNzp1M?=
 =?us-ascii?Q?bW9510Ebq5ZQ4XOwolf30m9QuncS5NREjBLfefNCdXO9nTzxZ5UEjlrSsyt7?=
 =?us-ascii?Q?kBHqDcFEl++exv6D5QYTWG+Fa/6dxDUjFgleE6HebiORSu5S0+vPJYNlieIE?=
 =?us-ascii?Q?0vGOOAtvuz9FoxTZ8LGxBhuzYrmG6L3y8pJ7UMuCZfjuybxw49bfhEJqOYLZ?=
 =?us-ascii?Q?s27iKhr+F1+g/bGnE/cyTvFo8ERWVie/q/n1zPiZD6n225BkytOeE3KHCdkU?=
 =?us-ascii?Q?MYRbjrijMwwy6lqvx+ljUZ4vyXXrQynR3IDLtsmBQFDKaJzTzbpmT+Ba+S1e?=
 =?us-ascii?Q?0WCk3CXb0/CD8TA1Zc46oW7WbXBt/zsHwKkLk4pfkboKXP22frYBCj9Sksgt?=
 =?us-ascii?Q?2xLtKw0KCu2WuJJGW1lm3V3vZ7/4sr3GdpsWzeg7J4CUUGWhk7uFs45fMowb?=
 =?us-ascii?Q?vIFR5fLmxNjvU114Oe75uDnXpL03RnKx7iNwMMhSfu/lDNnTDDSu8V4Ebl3R?=
 =?us-ascii?Q?DoJ+2ohSXjDYJ9x0NF9VKhEutjuoDUQnxEQn2sR397at431XX9T1LkQzTSb8?=
 =?us-ascii?Q?BYvmZLPNuzarA+fSMQvboQlzndmmb4Z5SsTEceUOQ5aV9o7WB5mM3Iks8Beb?=
 =?us-ascii?Q?4Jvl9QnxkU0xiJIbiPjivRSXSuzKRpEx9WvFMDCbkjBGZw0Bh6uWIWnDa+Ys?=
 =?us-ascii?Q?bWbrVn80pTSPmK+k57mw6ZNdBpRvPF2O?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?saIcWEkI1qR0CeRp51h2GrD9gfi3+0S9D3LpO5GWsTlmzebCKBHobx7gwgLj?=
 =?us-ascii?Q?SgH9DjZfMo9oQpfO8O6/NQLQ3qqqhOtYm95iFNsIXxo8aYIcP2V9YrFsjDoK?=
 =?us-ascii?Q?9uWQUhEI9RiHy9JfY8Qfyt68iJGPw89FFfFoQEkSYSK0CX1UJfXlaCLtFXC6?=
 =?us-ascii?Q?iykxMT4u1DV7/BCXs+u7zQ46wihKAGeZgTMDu+hC7sjV/I+bZbFZmtNWfbm0?=
 =?us-ascii?Q?MyIAcCxW+7tyfxwWGKYucmFJh6oC9d/ddi0PJ44PJk10pghFJk4XWR4VSUp5?=
 =?us-ascii?Q?IXak42AdpLJm3mB/yqgVeEktZd7DYUeNJb065Yt7YIzAZM5BFRNI7mMA1nfR?=
 =?us-ascii?Q?ifwEbj/PZkqYfBMRrSWKqhVNY4svX19O+2WfKNhNQhk/6W3jUuJHlL9rg6Qq?=
 =?us-ascii?Q?vW6ZfNQ+Evpj6u5M1bEE4/7XtcP3V4Ti4SSRNM6kfXFwOhGyobrhhw+K5UXP?=
 =?us-ascii?Q?MUb1+EZdcVMUsj3HWLfp1ppKzXEjElEbofLkYo8m5pypVuCdw2so6ZhE1ePE?=
 =?us-ascii?Q?UtZNGzWRpat7v1aczaixbduFu7qLJaGzHqoXpXpNvwJJFnHy6PO12e9qdkIp?=
 =?us-ascii?Q?S5pgoek4kRcj3Pt1Z2KQKZdqwz3gOACNb784PJIy1EcmUTQ8OGjzaaaU8uv/?=
 =?us-ascii?Q?SpHZTCV5MRwBcH5L5EcFzqT3yd3xjb2fz9aV8nfiIPgV2wAuzXT4Ns/Tf8EP?=
 =?us-ascii?Q?7DvC8KXwIWh3o8lnwt7HjDL+pbwrdggy0S2Sq6uM2mMfm2KuVkA1r6wPNu3p?=
 =?us-ascii?Q?n9uyA8tQJeuYfHq7VxuKzEmY7nJoYF9IbgIrtEnH9paOnHDVS4i5OJdVBh1s?=
 =?us-ascii?Q?Ed76NsCE97zDHw5whKuTqEWs8rl61q4/agfofK1CM1oE1A4JE87nvx+dhdpb?=
 =?us-ascii?Q?WZrZ733AqSPMldR6WdZbmNvPCxsikZ9wJf5UCeKxCky3uS2YcawIbaFXmvr2?=
 =?us-ascii?Q?CWxk3qL7NiuqcZWOddc6UxoCnSxxp+1G8FgGDDcYG20OTB3mFoXCA6e7i0F8?=
 =?us-ascii?Q?ypqMz3W+HHobZMpj2dV6vbrpjAsuJKtZZgt4TIPtYeZyw0YMkwc4HUiAws91?=
 =?us-ascii?Q?6rtexreMxWqdS8zNUWfq0r4EdtdSPrU0SVH++r+/iQxJaIpHY+tXvSd4ITRz?=
 =?us-ascii?Q?pCq3eTTtSTYfeP94ku88enOyt7P3pZcUtnhN4YdLwbZVO2WY7Wb1+w3Z11LK?=
 =?us-ascii?Q?U8go+vyMRWP3cDW5kcH67CByVssH5LIP2cwmP5ByA05x5tFYSLE08gP73bar?=
 =?us-ascii?Q?Uw9+eDTDz5yWA2q0Wx8q4fLLx5inn/pE+aae4etnuj0Fop2WHdail0hpmixv?=
 =?us-ascii?Q?iOgluCgQ4fbxK+iy8LBACMsdzZ382SCuAfGi+F/j+zHFkA1qUSeKwnLZNALh?=
 =?us-ascii?Q?70skF+AQIPOmvdreNdQYsMrg5Xc/xx+/jjuGt+tMEjrQn55zSJzHEeXSTi5d?=
 =?us-ascii?Q?NLAuWXmQ1XkmCakMSj2GzH8QGpgtREm6XJ9i0e/5ZGlONjDmQfdAhjJaMNIW?=
 =?us-ascii?Q?qax0473e39EOzldTOZX5onutVEKOqPQucsdxBotp3zledpJ8+w3vBkUX1PRS?=
 =?us-ascii?Q?8e2vctc9YeolttN4B33OfmYvSnbewZ6jj25YgaZ2T2V7El6Sc+Y+ByjiHlkd?=
 =?us-ascii?Q?qw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0471c753-8e60-4b2a-5efd-08dd87c3ac62
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2025 08:47:43.6772 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kG7Ha9JQD5fSjyuZKGJG9PYg5GazSW/PivrDXJ+gxOAhR1AkwwG1Vinn78VF98gUheJh8bXq3UUWh0wshRhxcTN9HRE1zZq7BLRG4XgYhag=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7183
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
> From: Peter Zijlstra <peterz@infradead.org>
> Sent: Tuesday, April 29, 2025 11:59 PM
> To: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>;
> luto@kernel.org; intel-gfx@lists.freedesktop.org; intel-
> xe@lists.freedesktop.org; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>;
> De Marchi, Lucas <lucas.demarchi@intel.com>; linux-kernel@vger.kernel.org=
;
> Ingo Molnar <mingo@kernel.org>
> Subject: Re: [REGRESSION] x86/efi: Make efi_enter/leave_mm() use the
> use_/unuse_temporary_mm() machinery (linux-next)
>=20
> On Tue, Apr 29, 2025 at 12:01:22PM +0300, Jani Nikula wrote:
> > On Thu, 24 Apr 2025, "Borah, Chaitanya Kumar"
> <chaitanya.kumar.borah@intel.com> wrote:
> > > +Andy, Ingo
> > >
> > > Friendly reminder.
> > > Issue is still seen on latest linux-next runs.
> > >
> > > https://intel-gfx-ci.01.org/tree/linux-next/next-20250424/bat-rpls-4
> > > /boot0.txt
> > >
> > > Regards
> > >
> > > Chaitanya
> >
> > Andy, Ingo -
> >
> > Commit e7021e2fe0b4 ("x86/efi: Make efi_enter/leave_mm() use the
> > use_/unuse_temporary_mm() machinery") on linux-next regresses as
> > reported by Chaitanya
> >
> > Please look into it.
>=20
> Does your kernel include the below?

This change has not yet landed in linux-next. However, making local change =
on top of next-20250429 seems to help us.

Important to note that we don't CONFIG_DEBUG_VM=3Dy as mentioned by Hugh.

Any idea when this lands in linux-next?

Regards

Chaitanya

>=20
> ---
> commit aef1d0209ddf127a8069aca5fa3a062be4136b76
> Author: Peter Zijlstra <peterz@infradead.org>
> Date:   Fri Apr 18 11:50:34 2025 +0200
>=20
>     x86/mm: Fix {,un}use_temporary_mm() IRQ state
>=20
>     As the function switch_mm_irqs_off() implies, it ought to be called w=
ith
>     IRQs *off*. Commit 58f8ffa91766 ("x86/mm: Allow temporary MMs when
> IRQs
>     are on") caused this to not be the case for EFI.
>=20
>     Ensure IRQs are off where it matters.
>=20
>     Fixes: 58f8ffa91766 ("x86/mm: Allow temporary MMs when IRQs are on")
>     Reported-by: Borislav Petkov (AMD) <bp@alien8.de>
>     Tested-by: Borislav Petkov (AMD) <bp@alien8.de>
>     Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
>     Signed-off-by: Ingo Molnar <mingo@kernel.org>
>     Cc: H. Peter Anvin <hpa@zytor.com>
>     Cc: Andrew Morton <akpm@linux-foundation.org>
>     Cc: Andy Lutomirski <luto@kernel.org>
>     Cc: Linus Torvalds <torvalds@linux-foundation.org>
>     Cc: Rik van Riel <riel@surriel.com>
>     Link:
> https://lore.kernel.org/r/20250418095034.GR38216@noisy.programming.kick
> s-ass.net
>=20
> diff --git a/arch/x86/mm/tlb.c b/arch/x86/mm/tlb.c index
> 79c124f6f3f2..39761c7765bd 100644
> --- a/arch/x86/mm/tlb.c
> +++ b/arch/x86/mm/tlb.c
> @@ -986,6 +986,7 @@ struct mm_struct *use_temporary_mm(struct
> mm_struct *temp_mm)
>  	struct mm_struct *prev_mm;
>=20
>  	lockdep_assert_preemption_disabled();
> +	guard(irqsave)();
>=20
>  	/*
>  	 * Make sure not to be in TLB lazy mode, as otherwise we'll end up
> @@ -1018,6 +1019,7 @@ struct mm_struct *use_temporary_mm(struct
> mm_struct *temp_mm)  void unuse_temporary_mm(struct mm_struct
> *prev_mm)  {
>  	lockdep_assert_preemption_disabled();
> +	guard(irqsave)();
>=20
>  	/* Clear the cpumask, to indicate no TLB flushing is needed anywhere
> */
>  	cpumask_clear_cpu(smp_processor_id(),
> mm_cpumask(this_cpu_read(cpu_tlbstate.loaded_mm)));
