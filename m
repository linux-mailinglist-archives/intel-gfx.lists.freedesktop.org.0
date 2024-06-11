Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AABB9902F91
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 06:34:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E56110E27E;
	Tue, 11 Jun 2024 04:34:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LNXzr9Nl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C6010E27E
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 04:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718080472; x=1749616472;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l2B03g6Oy06HS0Wt/FeryqwsY4VIqYmBAIJmOHFO3ak=;
 b=LNXzr9NlGf+Yi0KwUgF9HMzOQLUtb92VXGsBa4WOCWUbvskSIinwiX5N
 0uIZwT8CvNuLRP6xN3fREMGyI+n65IezN11geAhPCM7p+dJWvuBkubjd9
 e6r06+afx16tbtjtY4OVJ/3EAlmTctYtwnjiqt9V6Esv+UNeAj7+htlmE
 gvJX3xuVlDwlJgdGCTWly6P0bP0x6U0SRuv8d8T9JBrtEvHw5JNB/rSQt
 js3DO+pg0ftjnX5CZMgF2qc2hvudD04zuZTR8h4AFG1FJvTGKI4DAgjom
 a8WoP9hJ681L84j0SvRonhZcyn+RyKN0H9Fn8DWZlCUwv3mw1A49fvmse Q==;
X-CSE-ConnectionGUID: ef66WtMsQmCXPwQynB7jYQ==
X-CSE-MsgGUID: hZDFpzCYQiq1rrnHlOVNTg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="14895237"
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="14895237"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 21:34:31 -0700
X-CSE-ConnectionGUID: So1HtjqGR5a9WnUdHENIvw==
X-CSE-MsgGUID: kGC73yn9T4qYqGq7HDltAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="39281469"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jun 2024 21:34:06 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 21:34:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 21:34:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 10 Jun 2024 21:34:05 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 10 Jun 2024 21:34:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dFeNwulyU+ULBdB8IVyaSsMFPk3Me8uDoC1cX81gJ6X3zvx+2ie0r/gJaGhKWDUbF1TZRsUINyH71/JQzASKER9chhxZzoPEZLhbnAO0/gbgnDA1XzeKGd4jJPfHlq9VeVLpY7PbzpJZcZfIMU6i2V360+PtwYlkHVVGixzUi8ll+CMv58BIn3Op4l/vD7alHLwBAFd6bX9ST1FqDc4gw5TGJFfUjhYTe9cK97VMeK00+CgokY5VP32GQAjqAGhO3xNIf7r9hMhvAIZ21pWDG9Tr2+DlsvV/PrKOuizWP1eCjDpsr9AhACKAIbsDQ9Gx+uW8Kjlm0if70liWXm6Bhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=emVPZaopFUk61gr3HNZJwWNqDSglCQkmdUcF4XGwgKM=;
 b=jAXE5mcdoILYEobUoIjnkD66b+5sgRk+fBLXbTi+GJewrLLHc9rCZgX7V1hXaUFefb7vLQNxa3HlWNa9YTxK8GhOe80v+3aB3AumWVUUnXJa6S0Dlu4UFAOlVCsnDoVmLODFm3vQUFxgZC2qLaDfkK1utb1yaNoLCwddVaTRZW03/ZAMHIrKVzNgLOIFrW2AnyfKhdJXl9hoWqSj03872hx19+eq7LCBktgfJlolOjnhDmWAuoE1Ay9RvFssSCLq3QX4VC5UK9D+d9F4p0uNmzgGwozuCPXzuagXj4IRYUEgtp8CC5KMFZdPqKdU4ZE4irCBCpbfK2ukiTZAXnZ4Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB7641.namprd11.prod.outlook.com (2603:10b6:510:27b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Tue, 11 Jun
 2024 04:34:03 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7633.036; Tue, 11 Jun 2024
 04:34:02 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v15 0/9] Implement CMRR Support
Thread-Topic: [PATCH v15 0/9] Implement CMRR Support
Thread-Index: AQHauuIjC0rBcGqnI0KnisH5s4ttlLHB+zCA
Date: Tue, 11 Jun 2024 04:34:02 +0000
Message-ID: <SN7PR11MB6750D54F4E62BBB0DF146AA4E3C72@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240610024825.823096-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240610024825.823096-1-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB7641:EE_
x-ms-office365-filtering-correlation-id: 8b9978cf-1364-4f2b-d002-08dc89cfb8ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?x/4rJBloEqRMWVs/85XvLgxBlyQv03v3W7QFDsho8S6D59KZgFNfewIbshuN?=
 =?us-ascii?Q?uM/ammV5jzcWviLaM+94lZINGR8aGl6dwAeu6OoMRJrLkQktI2tgi29/Z1LX?=
 =?us-ascii?Q?fxRN7ID9gptBpBaTz0VL461htDrJdPC2VHkcIaqIyKnwxBWQixrUK7H2xB9d?=
 =?us-ascii?Q?+ycsGfAdDmOgN+FGrLDxkBpSUgovVZ5228mNkWT392vi856NugWxeqvU+Y7/?=
 =?us-ascii?Q?SMFlnruVQUICKuedM89VynJ/js/lzOQV/i1EYbqpLYJuLph54t7hrElDBJOv?=
 =?us-ascii?Q?hqqm0owGj3MQlsuvCfz1k32HSnbAnqC5iHEbLCtajGXTQ1acNjtcTGdUcAem?=
 =?us-ascii?Q?42BjeOovgXY95wTwlCgG6g97wLaRc7Lc+C8Tp77VYS5qrSZcJPwRq72o6Z+v?=
 =?us-ascii?Q?IZ+hEIkH0iT1Seqv8+aJ+XM4aiJjKvzroE3XQmliHjW/DMBVwWeNlH7pXWxi?=
 =?us-ascii?Q?I6UeU35N/x9rgF5XfOPxVGc2yqB/KRkgn9TOAve78ZmLmZmdGrIi8OcfOHCm?=
 =?us-ascii?Q?aLIWEuVQqBh0ODmCwFx6xsvKFTZg6FHB8wEJyHcBiLNJXgZeM/Yilil8VhB+?=
 =?us-ascii?Q?CaTNvtF9uvlotlbqyIic/bfMfL867Rn61KMXk2+llsaLkP20rG4C2GM54zQE?=
 =?us-ascii?Q?PipQJHuZYt1wYJHyA61VKJBYcETF4xQJIUd9As5gKfeSog84b1Yz2OAx24FZ?=
 =?us-ascii?Q?brQJkIn7LmM0FU5a8qjSnQJUYc7bNkjw5D5O7gTDA4DR6nqtlCGcVS6/LdD8?=
 =?us-ascii?Q?YpPQd6Ndq3KFEUustYTsJZE76bg9B/PXx1aeIxmPNwMu1rCyYMOWVZPzCW63?=
 =?us-ascii?Q?ae1f2Xt/q890ngwfczgcyMBsbwuDAGP828kqdf6wj48sFxTlZh5CDs2saeOb?=
 =?us-ascii?Q?ebX+CHJ7C8r239/ZaxvhHpf+Bl9KvrsHbI6K9i9MBGgx5jJqmbFvFHtX0xBP?=
 =?us-ascii?Q?nd2YXcI7D5TGhDUXdMoyTw1QvjFV9gAlcoOTKYbEa7tLdbjeutSFzHcWiD1o?=
 =?us-ascii?Q?BaUQkGeDNoIFa1tegi230HMPdvBVcMG/vGBS337lS/qMl6ZM636mKUXO8VjK?=
 =?us-ascii?Q?J2D0jjy0ER+yIpHBltqpIZ8i6JGNBQfAfPHOSLEgBNlHlF2EHIZ1yjZzhF5r?=
 =?us-ascii?Q?IPkwVE3nvWIEe2T6xCtnSfE7/mOzoEk5oQd+enE22ctHGcrUf9U8t+GK5fhR?=
 =?us-ascii?Q?lKg1Q8KPzuX/g5P2vz1BPZBJAxyZTtiNnb8ijBcnZ4LXsj2vPMS2J1fEd09J?=
 =?us-ascii?Q?NqMtKzuC2XXgDwpAdPCJ1kbbFaHatX5OWjRaRaf3UfSLidzAFC7oAemg9UWe?=
 =?us-ascii?Q?GuLhHSSWJ9efg0tG+jIC6oQhahM8OEkuqO8zlhkaDs49aa3toqNg0Opl1oss?=
 =?us-ascii?Q?u/eBEGQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?To+0dWO9chl6k7CE5laFDCtLq1L4NWP+pYkA5Ke5xgZ57GwWmpRSPdtQ/KXX?=
 =?us-ascii?Q?/iL2mOj1HcyJLwy2y3/1iltvze2bzXrzhV0+4FB/eaPRKkG3oPxnvebMQsK0?=
 =?us-ascii?Q?dc9dRHVA48khapimoUdqmcby3MGDvdEEDcw6YlS+Gl2zF7vA9ThxUWd3iCS3?=
 =?us-ascii?Q?CZNSdVqQ+AJGRawiAJjXCw0VixXFRLxX1a1ENVadxOAzm23wCq5Gb64zzxT4?=
 =?us-ascii?Q?y81Ah6hOTRefAXwHJRQd7ZTfvR4+RkL1IwnThxeZvjTJDLtvvbnkYH7I+ZUT?=
 =?us-ascii?Q?KscFuJrMGWv50VD47Kpdmn/ixk3iH0raiE4p6/LmR8taHJHPgf8PEB5I/O/I?=
 =?us-ascii?Q?ggZjbYnSUeYE9Jk5PInD+E7nxVf9iK8e44ij+Dru6gSOopTA4EspsiMPVbhw?=
 =?us-ascii?Q?6i1TfRShYrlaIVGKk+sjoK6AOWPs/FOnrzTP0B4S4avD2FIIkZJnH0sMlaT0?=
 =?us-ascii?Q?kr9XMjhWS6bIeNlgQZ9XmZay/oRPOBN/ZVtSFRYirfHFunIvxjCxczHy2ViU?=
 =?us-ascii?Q?pALNUa9xF9baHiuYdx6mDL6YC2UnZVEzC9J93stHVevZLcDRyVj7DYlMrgs6?=
 =?us-ascii?Q?je4Tv7sDqSKutTvtKheoFNDD5uOs4+VXmHkhlXy5EQblfpCZagIVrCG6SRK4?=
 =?us-ascii?Q?WwOhDyl1e5XzU5JjHvlBnyLLZGr2KSmFLQHQmKUy+P/F9YJI1LKXBGEGViCb?=
 =?us-ascii?Q?owEB0I2XXNqgky3Ga6xWySnKF/ZgFhYv2DxjWTZ/gOjZ9UuybQ9lRzLq5/5N?=
 =?us-ascii?Q?JC1eRbfJ/6zz2ZZMcVLxCJxSm0YbtiC+iKCQxtDsjvOyw7Fls3bUmtC3Py4Q?=
 =?us-ascii?Q?KAnoXwKQCf1tmwiXEA5afMQ5ZfN5tkip98mwWzJ21U2qVkO886798N2Zdglg?=
 =?us-ascii?Q?savJymCsNUZ9a/wIU8Nsky5NmpxtrRxSkvvaJmdR9JY21LB0tNkcoiyHd88F?=
 =?us-ascii?Q?s4ZSWNHceJsNv6Tjx4n9UWScxAxVtKws+ZLefncFDI1xn+l2vi4EYozG/13Q?=
 =?us-ascii?Q?j5PhVg7W6eCW20aXC311CNOoM5KiVnRqiXYFgmHfaQFIen304N6f2H8lhDoN?=
 =?us-ascii?Q?NvHXFjSXbMK1z7GsZQkAXZ9cGUzNeca/3ygDMGIw4+fnZat0tHp3F4LO4fgL?=
 =?us-ascii?Q?S0vae+0VGuEckPz45Bhe7Ib06Noj2Ktdh2JrDBb4DMcfU7VZuNVU1KrXR//o?=
 =?us-ascii?Q?Oj8+yVT0Pm1YWpQOH73wFpucjSEpSOvfpLdTOfCtwoTvqLsRDuG5RJbl0Pe9?=
 =?us-ascii?Q?/BRyN/JDIPXYUx8lCv6InzejVRieWPyTmWz92gUXehyQtDjj6gOkzN97dl5a?=
 =?us-ascii?Q?IeynNTXSp6uIluhR5ceT5FBXSrKxbeyGZNDa1aBPuA39nsoP/O2UopjVoYYE?=
 =?us-ascii?Q?mPr9DxGIcmmO6+F2QT5IAa5puecJ+CvHuaEGbr5k9KnAAYt+LsYn+mzcz/HW?=
 =?us-ascii?Q?lLcv/ErDmNnJehrsNdj1THyZJNDbf5BF0Vf3a1UMDU6E+IOYRoJ8DjAArYgW?=
 =?us-ascii?Q?j39hD1kTPkKI32ywsJZNTmzgDlCgkx+jJejkPmMdi0nIX5owLkiNYqT6EILk?=
 =?us-ascii?Q?D2F+dXQAlJSK90cEW3GBehRjfKkMttQLyvi8HLfU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b9978cf-1364-4f2b-d002-08dc89cfb8ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2024 04:34:02.8842 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GC0f01g4sKsL7lBBThwV/fvAIBRx4ib1pG5aC6BkNJiZHT4CXAvwUmdQDoiLtUT0U56lk+bEQpIqaidDYSuLfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7641
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
tul
> Golani
> Sent: Monday, June 10, 2024 8:18 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Subject: [PATCH v15 0/9] Implement CMRR Support
>=20
> CMRR is a display feature that uses adaptive sync framework to vary Vtota=
l
> slightly to match the content rate exactly without frame drops. This feat=
ure is a
> variation of VRR where it varies Vtotal slightly (between additional 0 an=
d 1
> Vtotal scanlines) to match content rate exactly without frame drops using=
 the
> adaptive sync framework.
>=20
> enable this feature by programing new registers for CMRR enable, CMRR_M,
> CMRR_N, vmin=3Dvmax=3Dflipline.The CMRR_M/CMRR_N ratio represents the
> fractional part in (actual refresh rate/target refresh rate) * origVTotal=
.
>=20
> --v6:
> - CMRR handling in co-existatnce of LRR and DRRS
> - Correct vtotal paramas accuracy and add 2 digit precision.
>=20
> --v7:
> - Rebased patches in-accordance to AS SDP merge.
> - Add neccessary gaurd to prevent crtc_state mismatch during
> intel_vrr_get_config.
>=20
> -v8:
> - Add support for AS SDP for CMRR.
> - update palce holder for CMRR register(Jani).
> - Make CMRR as subset of FAVT, as per comments in patch#3.
>=20
> -v9:
> - Add CMRR register definitions to separate intel_vrr_reg.h.
> - Remove cmrr_enabling/disabling, use vrr.enable instead.
> - Update AS SDP pack function to accomodate target_rr_divider.
> - Remove duplicated lines to compute vrr_vsync params.
> - Set cmrr.enable with a separate patch at last.
>=20
> -v10:
> - Separate VRR related register definitions.
> - Add dependency header intel_display_reg_defs.h.
> - Rename file name to intel_vrr_regs.h instead of reg.h.
> - Revert removed line.
> - Since vrr.enable and cmrr.enable are not mutually exclusive, handle
> accordingly.
> - is_edp is not required inside is_cmrr_frac_required function.
> - Add video_mode_required flag for future enhancement.
> - Correct cmrr_m/cmrr_n calculation.
> - target_rr_divider is bools so handle accordingly.
>=20
> -v11:
> - Move VRR related register and bits to separate file intel_vrr_regs.h.
> - Correct file header macro to intel_vrr_regs.h.
> - Remove adding CMRR flag to vrr_ctl register during set_transcoder_timin=
g.
> - Replace vrr.enable flag to cmrr.enable where added mistakenly.
> - Move cmrr computation patch to last and set other other required
>   params before computing cmrr.enable.
>=20
> -v12:
> - Add patch to fix check patch issues for VRR related registers in i915_r=
eg.h
> then move them to intel_vrr_regs.h with separate patch.
>=20
> -v13:
> - Reverted unrelated patches while rebase.
>=20
> -v14:
> - Fix all indentations for VRR related registes in Patch#1
>=20
> -v15:
> - Rebase.
>=20

Thanks for the patches and reviews everyone
Pushed-to drm-intel-next
> Mitul Golani (9):
>   gpu/drm/i915: Update indentation for VRR registers and bits
>   drm/i915: Separate VRR related register definitions
>   drm/i915: Define and compute Transcoder CMRR registers
>   drm/i915: Update trans_vrr_ctl flag when cmrr is computed
>   drm/dp: Add refresh rate divider to struct representing AS SDP
>   drm/i915/display: Add support for pack and unpack
>   drm/i915/display: Compute Adaptive sync SDP params
>   drm/i915/display: Compute vrr vsync params
>   drm/i915: Compute CMRR and calculate vtotal
>=20
>  drivers/gpu/drm/i915/display/intel_display.c  |  24 +++-
>  .../drm/i915/display/intel_display_device.h   |   1 +
>  .../drm/i915/display/intel_display_types.h    |   6 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  18 ++-
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 128 ++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_vrr_regs.h | 127 +++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h               | 100 --------------
>  include/drm/display/drm_dp_helper.h           |   1 +
>  8 files changed, 286 insertions(+), 119 deletions(-)  create mode 100644
> drivers/gpu/drm/i915/display/intel_vrr_regs.h
>=20
> --
> 2.25.1

