Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 544979B274E
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 07:47:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59C3410E02B;
	Mon, 28 Oct 2024 06:47:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Agky2ZX1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CBF910E02B;
 Mon, 28 Oct 2024 06:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730098046; x=1761634046;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FIt+gKaTr6tBYyqrxFAsUcsMECCEmDLD0w61IvhQF8g=;
 b=Agky2ZX1zCyBTNQCzm8c1aF8EoHmR9W+FH5QQALGmJZLFJDfAdPhCPZK
 2C5+a/NBm/NjZNHjyqtzTi4HHJrpCersT0d/JF1gxGR6VmtGhf3KQLOFq
 cbpG2OEQt23XxLaf498aS5ZXyg1gyj+OvdbBtd0kegYL1yhWD+6IyfQQx
 wledk7xaApZrhTI0ULeIrM/t94G1U4F5P1CyEumYpimamUB8TkGiZOq/N
 HoFbJLlJjQC30ipshjx/y1ZmPDqIgHvtFa5fFvStcvHhZnP/HucN8pUH2
 5MT5V4YdfUKVilHDuJXA/RbFziAr57SOC9K9PS/lqn5PUp/sUldCyn9zV g==;
X-CSE-ConnectionGUID: 1vFoOZZHQwKFU6wbMjboFg==
X-CSE-MsgGUID: 0N4h5iO1RZGwmJp5+hVTgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="32546312"
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="32546312"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 23:47:25 -0700
X-CSE-ConnectionGUID: eTIpNbz7TReCiDLqEL4w+w==
X-CSE-MsgGUID: k86gOKkRTu+Fw5l8adj05g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="81849620"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Oct 2024 23:47:25 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 27 Oct 2024 23:47:24 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 27 Oct 2024 23:47:24 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 27 Oct 2024 23:47:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oUERDzZ4SZJt3R4S8FAOkn2OLtmBtfCz/hCd3i86RrGWQhRQ4HMUfQxT7bYradeGmOOjqyp5j355E9dqdxgX9VOBo3/1VQSmB2B0tremqAr8wILmjTz573yCK2LjaJ9bWXt/gzSB6CuczK/haEOHQmCnnITNl9vllUYki9ja+CevXReNpB31U8atX91ztslnH0A73puy+R9jvlUPlsoSzL7IxEWJNHSlvVp3npCBdDru2qFjWkxfqV7uJKIBXY1/agGGp9b1SL7vXM2xGdSDfLuFAP4bz0iIyTEz5UKJEkLqD+2HP8WSiOqFHB7RTsnR8C5vdFoj9V+zmCUQnjxytg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Eaowkd0e0UW6HFu3wHuxP6XXcsSbo9e+iTO5nFg0Xu8=;
 b=Hz9RB9VxOFrDeKqHVfEX/8i38n2Amk82zaETxxFIQizRDfemstjuTvpIvo+2P+31yTeQIEvxtGwcBEqMEXlgH5pJHnxsVTpf1CuRAUOA+sVv1kfYPlbudVzaTNCmA57jq6kXyjNNxr9MsIOIR3XpHpDt7a1kP9jHylEltVSQ5ZbHRiwbhFu/5x3wZonfsZU+KRAYkAHivpqmMCVfdox5HQHJUoNikA8itf9aGi6CgE0mEKqRTuJX5v78M0g2289OB7jXTGnQtXRUf+DMbhvFwlJ3w3ZVFat7pQ77nN5fAibs/pwC6EgdIS16O4bOSZNdFxlhdxdWTBgysmj5WZxKsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5508.namprd11.prod.outlook.com (2603:10b6:610:d7::16)
 by MN2PR11MB4629.namprd11.prod.outlook.com (2603:10b6:208:264::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.24; Mon, 28 Oct
 2024 06:47:20 +0000
Received: from CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd]) by CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd%4]) with mapi id 15.20.8093.024; Mon, 28 Oct 2024
 06:47:19 +0000
From: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [PATCHv3] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Topic: [PATCHv3] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Index: AQHbKQICQN04AGMaO0qRVfUIY5OPRbKbtwqw
Date: Mon, 28 Oct 2024 06:47:19 +0000
Message-ID: <CH0PR11MB5508C5AA5A066BB5D8098ADBC24A2@CH0PR11MB5508.namprd11.prod.outlook.com>
References: <20241028061418.3460461-1-arun.r.murthy@intel.com>
In-Reply-To: <20241028061418.3460461-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5508:EE_|MN2PR11MB4629:EE_
x-ms-office365-filtering-correlation-id: 94a9a15b-fba5-4fcd-5e1a-08dcf71c5e8d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?BpzY7DKhhEhIuPiXub9KuBl1GJKv3T+eqcMmYdgWp/J/BkicclML+Va5uMBw?=
 =?us-ascii?Q?FWPLtYKyBJql0TTe3xsQkosR8w2r+VgmeISa/mjCWErOZ7oe5bpBUpTDCukf?=
 =?us-ascii?Q?EpjNVYOidIPgnZqeRD7c3qXmagDVfP3CC/kT93MNuaMvcdU7ndjtc4qYdlLv?=
 =?us-ascii?Q?tEehnesRDqR1pIfJOBZJJJ/hyAO1Q5KnCdU8ZZMLCTgj4K3S22dsaEv7kfp5?=
 =?us-ascii?Q?xYct/llLvRuku1+1h/7hH/am2QVbZjTZNLY469autGjCr19Zs+LlRfACBZLc?=
 =?us-ascii?Q?MSDi8KRHTkW70+pILWVowFXBorzR0UMD4EvRDJUL4Xjfe/0d7QEIJl5mxl3f?=
 =?us-ascii?Q?FGpEJEgeQbGVspkxdHp5GhhNzaYa4tNuTl+1sMwuhLc6ZcmNI57ZHY9AvABl?=
 =?us-ascii?Q?1LcrGpE1NGP0ELWNIdDQhfFNfFkS5BfjQbAgsVRtZKmYVQWT/KXq70GZrN5K?=
 =?us-ascii?Q?XnIGqMwlzcjiZh0ZGJajtodnWDRXbHP6AeHLbb8jUHkdCW9kD17C4GP+FNES?=
 =?us-ascii?Q?dQ1yDiIQeieG6n1jYxPuEtLr3HDc20T46oAWYZLZsIBakWuN1JkJz0RvG9xi?=
 =?us-ascii?Q?jPtFPekm4L+qMkMx3Zkw64gfkxmSGqRCRAtgl561t01eiEm1nZza/RzyZa+0?=
 =?us-ascii?Q?x8fuNiyvHo00AS2M7SjVwBQI91jZJktCVYeEeGI8ElHrmvuJyARqfH5X2dIj?=
 =?us-ascii?Q?s+0RcQnp9UYgVnyqfOHKU+UnmLX9LeV4o/VpNkopbYtKDbysQDISbMTC74YP?=
 =?us-ascii?Q?3m2CpGT2P+iaIQj8aOEJUtWau7huRuYgzIIN9Q9ttEi+RD0NUT+sPnYqft0V?=
 =?us-ascii?Q?ILTSx+17NaiUWJsGQwqPvnA5kN140xvXakE//GfCccTpoTd60qZJLoFefB6m?=
 =?us-ascii?Q?tbOgA1osg0hzTBeDDy6m8VH11S1imqkFDpkyEkVMVUGlBW7O4qH/umJdCkf9?=
 =?us-ascii?Q?w/X5jCh9yUALeDClmAAy7E9otcc3Eeym8hko9itCzuiXRBJb/FZccAGlVPZJ?=
 =?us-ascii?Q?HZ1DGjsQqPFukjxYeFLK+uRJLz2p3zTT1vftwoMwDQOZxpy8jtuZ/C9TKmz2?=
 =?us-ascii?Q?4e6Yg28fhVd6yB0qKSstR3sll0g6unw/blwZT0e1/pjgFO9kdQ3RAoZrKId8?=
 =?us-ascii?Q?92yjcsTFAan4JGTxhC9z1DsnFmz2fL2rnT6yNXRpXC5e1lgOp+DEybyDYQQV?=
 =?us-ascii?Q?CzUV2SHmI2lt7ByV4EX3lHK++gOyNFOou3UwfIV5KqycgyrT/NjUM9KwWtTw?=
 =?us-ascii?Q?3C8he6tZmc8A9rZB65QZcDBsKn0J7UbkOf0keiMm7wssf5cDTLkSqKtG3ooG?=
 =?us-ascii?Q?QHHoGkcEJHEngNnl0DFg4PdEvCoD0vFWBvJKGeRX+kkVhrpPiSEDEwIOmoO8?=
 =?us-ascii?Q?ZMptZC4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?t9se4qE0NMnPozYbUsJjBN2yYopgMIFYf6DkUrOZW/iOb1pwT5rB2GRKTXg9?=
 =?us-ascii?Q?6LVI6dN0Hw8OOKs2yEdzNitpGtsTj2kehZn5gEBVWGsgXjFtcO3XlDXuQr33?=
 =?us-ascii?Q?3YfJ21/UuZQu+rKJYPkY4AxZaxA8q6HVg4Mtm+2tQSn1sAJRvxdt8qk3deCC?=
 =?us-ascii?Q?s4FQTmi8D7tEWIeyvvZmW775Xhviv8oAT59t4RQ/FuwKGvB9PjYnmoLjQnL/?=
 =?us-ascii?Q?jVQ6A1M5xXHNgK5R5aNy1CA2xASFUB9dyqFSjXkHTmTSHU95T27haNZxMhLB?=
 =?us-ascii?Q?LFvlxxhCNpVATM7C/FG+tbC2bPoB7HBhegRILde2tOLUji1lD454RioDzbtQ?=
 =?us-ascii?Q?k59A6qQFSipc/XHiXD6XuTYIQ4wBB4Qu961zhFvMWNGGHIQ01qI/kAyuZus4?=
 =?us-ascii?Q?0nkaXN+WVrRo/vYUZEqwUegixLvXAJpttecccgaphWAfvtFMYuIhyESkbHU1?=
 =?us-ascii?Q?nU8+USwTmLslOrX+2nl/slMl4vucXoIPidXkK1odR1lGtCJolTReyk83Nbgt?=
 =?us-ascii?Q?k/ADc4krbVQINXLbFfTmExsVWJikf+bVOsSbx0jeQNwVoO9IFvO2lJPGH96O?=
 =?us-ascii?Q?b7g135SamyjVt6PAx4UvmioB2zrvcxv7bKAzqsw39faekezgwTP63E4rKmjf?=
 =?us-ascii?Q?w9q2nL7K8+kHM2UOV5iyo6xbeW6Zbqid1usGz2GqZhorimpEbqAumWPT7Ffx?=
 =?us-ascii?Q?d21hfG2VJ9lS+X7RN1Z0FmsHrrDHX+TDKMIu+FBeKg/L+p+illenoYhtWJG1?=
 =?us-ascii?Q?pwlxXTu/166eIKZ5b5oTZo61xQjEo+FELcUdw4Iv7RXU63n092IyEYJhc4v1?=
 =?us-ascii?Q?aLKHdBwOgR8/atW1I8ZrMNlTGrW4gSHhQy6gspEahuebm+0+uoUWVys4f1Tz?=
 =?us-ascii?Q?71C2NSH/kO7bI8N3FZdUCg/R8UiUjoJzl1EBsPEUi1KFk9V7ifelWlgyYD9U?=
 =?us-ascii?Q?DWA9/dHp9wiGMAXyc3AEc9mdWL8SIKIU4n1HEYxD1Ps3pIcEH/8dXExRWi09?=
 =?us-ascii?Q?+OQzKyvlzNTNhprXEXsMLYN8tqD3sMcRCm5wSDvh1eYfzhvJ+HTVPV53hRsJ?=
 =?us-ascii?Q?kp1gXfvxZQj/2/EOow/0qdgwij82LVbA5rPxTZHrv+LyYyJnWg1b/xqqTdEo?=
 =?us-ascii?Q?66qB0A9NNlXTHDTPQvdo4CcKxnyeJbwP5wUB+GpZW4MkMhlQNmZDCsdbKNy/?=
 =?us-ascii?Q?uo5Trq0fU1bihPdZ8xLcMq5D1Q0ir30jF6YVdoLZ6qIA+FpR3n4Co5IWzUgs?=
 =?us-ascii?Q?xrwH2A1Ee74jPvGbjhjlQjJ2wfd4/G8ubPm12ZBaD8CoQNGaZGIqrVRCkA8X?=
 =?us-ascii?Q?lqzuk6Y1pjoHfWAE90h80zuSp2i+nmbUC4qnxsczNIwQHvpNpdPabwm6mwlu?=
 =?us-ascii?Q?Kb0t1WdY4clTELxwKGNPI8s2Lk2hiUOaoX0BjiO+bT66Ghfq+QZ1nH29Cwna?=
 =?us-ascii?Q?WuKU0YXAvsTDldKmrp1RfqxdM1vfJ/WV9XR9uGuIa1wAgIBo8ib5Gyrr+xn8?=
 =?us-ascii?Q?DA3aDsOZUi4lLp2QlPu843M8hT3oj7yQ+pzTGEOGHUzj5y6Sw0fhwrDX596T?=
 =?us-ascii?Q?TTkRGdZyJipQI7kMx1Eh0AMtJ0preKsVKwnmrxBEaCx3v0C0eAEOd1s6RK/1?=
 =?us-ascii?Q?Hw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94a9a15b-fba5-4fcd-5e1a-08dcf71c5e8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2024 06:47:19.6838 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RGCFmk3daCflgEnVHo5ARFPiwYUWw56KkO/QJhNXJ5gg0eb9/xA0IMKp2Bn46az+vj13wJvEi1uDzPj6r5VAZNl1XNStA8kf07Y8I+DT3pCaFXLb9JQccp/23y00B10w
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4629
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Arun=
 R
> Murthy
> Sent: Monday, October 28, 2024 11:44 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>
> Subject: [PATCHv3] drm/i915/dp: Guarantee a minimum HBlank time
>=20
> Mandate a minimum Hblank symbol cycle count between BS and BE in 8b/10b
> MST and 12b/132b mode.
> Spec: DP2.1a
>=20
> v2: Affine calculation/updation of min HBlank to dp_mst (Jani)
> v3: moved min_hblank from struct intel_dp to intel_crtc_state (Jani)
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c   |  1 +
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  1 +
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 28 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h               |  4 +++
>  5 files changed, 35 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c
> b/drivers/gpu/drm/i915/display/intel_atomic.c
> index 03dc54c802d3..24aa079efcad 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -278,6 +278,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
>  	crtc_state->dsb_color_vblank =3D NULL;
>  	crtc_state->dsb_commit =3D NULL;
>  	crtc_state->use_dsb =3D false;
> +	crtc_state->min_hblank =3D 0;
>=20
>  	return &crtc_state->uapi;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 3c9168a57f38..472f3010bce4 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -184,6 +184,7 @@ void intel_crtc_state_reset(struct intel_crtc_state
> *crtc_state,
>  	crtc_state->scaler_state.scaler_id =3D -1;
>  	crtc_state->mst_master_transcoder =3D INVALID_TRANSCODER;
>  	crtc_state->max_link_bpp_x16 =3D INT_MAX;
> +	crtc_state->min_hblank =3D 0;
>  }
>=20
>  static struct intel_crtc *intel_crtc_alloc(void) diff --git
> a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 2bb1fa64da2f..7f631fef128e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1075,6 +1075,7 @@ struct intel_crtc_state {
>=20
>  	int max_link_bpp_x16;	/* in 1/16 bpp units */
>  	int pipe_bpp;		/* in 1 bpp units */
> +	int min_hblank;		/* min HBlank for DP2.1 */
>  	struct intel_link_m_n dp_m_n;
>=20
>  	/* m2_n2 for eDP downclock */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 1a2ff3e1cb68..2e088760a23a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -161,6 +161,28 @@ static int intel_dp_mst_dsc_get_slice_count(const
> struct intel_connector *connec
>  					    num_joined_pipes);
>  }
>=20
> +static void intel_dp_mst_compute_min_hblank(struct intel_crtc_state
> *crtc_state,
> +					    struct intel_connector
> *intel_connector,
> +					    int bpp_x16)
> +{
> +	struct intel_encoder *intel_encoder =3D intel_connector->encoder;
> +	struct intel_display *intel_display =3D to_intel_display(intel_encoder)=
;
> +	const struct drm_display_mode *adjusted_mode =3D
> +					&crtc_state->hw.adjusted_mode;
> +	u32 symbol_size =3D intel_dp_is_uhbr(crtc_state) ? 32 : 8;
> +	u32 hblank;
> +
> +	if (DISPLAY_VER(intel_display) < 20)
> +		return;
> +
> +	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST
> & 128b/132b */
> +	hblank =3D DIV_ROUND_UP((DIV_ROUND_UP(adjusted_mode->htotal -
> adjusted_mode->hdisplay, 4) * bpp_x16), symbol_size);
> +	if (intel_dp_is_uhbr(crtc_state))
> +		crtc_state->min_hblank =3D (hblank > 5) ? hblank : 5;
> +	else
> +		crtc_state->min_hblank =3D (hblank > 3) ? hblank : 3; }
> +
>  static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *en=
coder,
>  						struct intel_crtc_state
> *crtc_state,
>  						int max_bpp,
> @@ -238,6 +260,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struc=
t
> intel_encoder *encoder,
>  		remote_bw_overhead =3D intel_dp_mst_bw_overhead(crtc_state,
> connector,
>  							      true,
> dsc_slice_count, link_bpp_x16);
>=20
> +		intel_dp_mst_compute_min_hblank(crtc_state, connector,
> link_bpp_x16);
> +
>  		intel_dp_mst_compute_m_n(crtc_state, connector,
>  					 local_bw_overhead,
>  					 link_bpp_x16,
> @@ -1292,6 +1316,10 @@ static void intel_mst_enable_dp(struct
> intel_atomic_state *state,
>  			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz &
> 0xffffff));
>  	}
>=20
> +	if (DISPLAY_VER(dev_priv) >=3D 20)
> +		intel_de_write(dev_priv, DP_MIN_HBLANK_CTL(dev_priv,
> trans),
> +			       pipe_config->min_hblank);
> +

intel_dp_mst_compute_min_hblank() calculates HBLANK_LL_SYM_CYC_CNT as per D=
P2.x specification
which includes BS and BE framing control. Software driver needs to adjust t=
hese when programming
minimum HBlank which doesn't include BS/BE framing control.

Basically, we need to subtract 2 from pipe_config->min_hblank before progra=
mming.

As per HW MMIO register, min_hblank can have a maximum value of 511, need t=
o have these boundary
conditions as well.

>  	enable_bs_jitter_was(pipe_config);
>=20
>  	intel_ddi_enable_transcoder_func(encoder, pipe_config); diff --git
> a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h index
> 405f409e9761..8aeed48f9170 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1147,6 +1147,10 @@
>  #define _TRANS_MULT_B		0x6102c
>  #define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans),
> _TRANS_MULT_A)
>=20
> +#define _DP_MIN_HBLANK_CTL_A	0x600ac
> +#define _DP_MIN_HBLANK_CTL_B	0x610ac
> +#define DP_MIN_HBLANK_CTL(dev_priv, trans)	_MMIO_TRANS2(dev_priv,
> (trans), _DP_MIN_HBLANK_CTL_A)
> +
>  /* VGA port control */
>  #define ADPA			_MMIO(0x61100)
>  #define PCH_ADPA                _MMIO(0xe1100)
> --
> 2.25.1

