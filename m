Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63579B371BC
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 19:52:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8EE210E6B7;
	Tue, 26 Aug 2025 17:52:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mPfxhdBF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB47C10E6C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Aug 2025 17:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756230724; x=1787766724;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1qgNsyJ+vTcVlS3piNOjzd2Ac6i9L1dtjZgMvneZAEA=;
 b=mPfxhdBF24YcjIuq7MNlD5BzAmvz1rTch3Lt294BEumpg7UGJo/6aqAF
 GDEjEknThP0/P96kPT73cQVwtA0AaTh9uSahmRYZz/4R4aEICdvxUpXKj
 3NGZ6fFiUis5dcTqn17hAS37qjnlNGAQpeZ24QINLkjo+tpToLSAGMPhu
 WTDXyW+lMntfzPHUZQXj2pZzPhS8PZqoA5FiDuCJg6+OOK7hS9BRK3M/A
 HxCJcMxrFQ85KJbYphYswvrek0R91Nhw6R8nyx7Z9TX2lFHDWnk4XQFe+
 iKnkh+v+uSp7UWJM11rntgQMpxZuG1JhYrtoKANJnu6Nd9qgYD/a4l0CE w==;
X-CSE-ConnectionGUID: WPhmlvdURnyjgzKDoLhIMg==
X-CSE-MsgGUID: BQnNL0L7QyG5U+0Firs7kA==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="83882168"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="83882168"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 10:52:03 -0700
X-CSE-ConnectionGUID: dcdpY7UmT4Sk5VZGZnaAMA==
X-CSE-MsgGUID: W7U/SX/LQXOc8MCE1+xISA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="170039873"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 10:52:00 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 10:51:59 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 26 Aug 2025 10:51:59 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.74)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 10:51:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FxTkw+etPi/OiUvvKteRamvk5CIsFK0lha5WRHrH0TU1QO22ENLvJJNQnyn5MjdJw0i2mULtdtC82NKrXZXEN21CS/aoFSz4wawIZoVIDH/TPCG+RgdYlIfT7AEyX/OUFCpKiEmoSnfC/R5xyxYsoaqSj0NSxvouRvYrS068t1QhbE3ets3hWOzE46VwpHjrdCLkvsTkMZjSQg1cOoMaJmobbhjoyUmyiTLfCRQm82XluMohYpslSdVVzf3rt9/SCn8HBR33zXyZVjwTlyZ7UVKsx/Xbtkj4PkukurQebrNSY0xLXZpO1Sy+g0+nkJrHB6HVr3l/JQUvUfzWbeYx3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tnq7EKsHJLu/hI4szVdg1PvIiGW6dU3St5Z4ZcJNoRA=;
 b=eJfyqCalJvvvgndq+CqQdK3m5KBnvFt7wI4eBrW0IVEnWxULFoISJfP40hT2taVut9q5mwE2MD4w41I5ooYUp0VDlcFdy8mQEjfrO5dBsfEbGV2fzC0SfpBUe7rqiV0liYrgUmvE7dz0ENn59bgA3pyMCN1yFBi7UU4/bUR/0AbhCaoJsGkiooW23Z4pvksE7iS8IFWNHCeKz16T4DcaictB8n76cPey5hio+ULQDkW8YzLGTiWuB95n3fapzelsTzD4P3DphfPwEobXGkmz5CNzLYwK7vH3d+p5EwTSKO9kGmvePYIX58GVbUp/jnHO9xEaxZdnKWgTJnaC5ztZrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by MN0PR11MB6057.namprd11.prod.outlook.com (2603:10b6:208:375::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.20; Tue, 26 Aug
 2025 17:51:57 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.9052.017; Tue, 26 Aug 2025
 17:51:57 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Gupta, saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>, "Brost, Matthew" <matthew.brost@intel.com>, "Harrison,
 John C" <john.c.harrison@intel.com>
Subject: RE: [PATCH 0/2] drm/xe/xe_vm: Add error injection support to lock and
 prep
Thread-Topic: [PATCH 0/2] drm/xe/xe_vm: Add error injection support to lock
 and prep
Thread-Index: AQHcFqBBEX/jRvlIx0+7BRffqYInq7R1NrJg
Date: Tue, 26 Aug 2025 17:51:57 +0000
Message-ID: <CH0PR11MB5444768A366A1FB15415C34EE539A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20250826154352.90434-4-jonathan.cavitt@intel.com>
In-Reply-To: <20250826154352.90434-4-jonathan.cavitt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|MN0PR11MB6057:EE_
x-ms-office365-filtering-correlation-id: e0b249a0-73c2-46a3-8e57-08dde4c94041
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ygZHEETq1rFq2HlhM6gtsCi2b7j5YIqcrEkdwC/nxUQp+UwgcV17SzT+lLFO?=
 =?us-ascii?Q?VPmMKIzv7QscniygXmYBDRU15s3hRzZyOACXJVAamvoAOqLIvcmgMPGXtaUO?=
 =?us-ascii?Q?5qp0Eg5+SZdvk0fAiNgfasWaX5Au6mNFM7Qf5A0HaJdwTGvGMo8HAJSJQbQp?=
 =?us-ascii?Q?rM+3ss/r7LU07dLjD6iwRERyWYv/f0AODon7brgcdJCaWHAgweCIef+QH5i5?=
 =?us-ascii?Q?WBeJjxQ2sXC+dQ/7WRxkoMpPwcnSU51UrlMHhKbsaoBer8MjHSOMyE5RY/2/?=
 =?us-ascii?Q?RbC030E7EhzLNtlbUC9NZM1KRv3Vdq3pZm7bgBz+njEXMisjz6CAjtu3F6me?=
 =?us-ascii?Q?xxb1EhZQOSjj5+/cmmoB7ynmXDOds8wYaMdjko7k1xFoBssM4HSF9GZgzHcO?=
 =?us-ascii?Q?9mdyvNWJr+bwM93sJMC1Z1Surr9Db3HsTuLj7Gy9n9nArP/WWPQGIIGCKbJg?=
 =?us-ascii?Q?DjTfmJ48JskKmmK2V+sDGtRFePXDMXwT+fjiwM6W0dg4E/n1F2BkXCzY4xzu?=
 =?us-ascii?Q?SFrGKZqUvqqN4lJUsTGw/ZDhmi3Qu1fv4ChExrvv6yVz7QoJ0hgf28XwfvsC?=
 =?us-ascii?Q?Nm9lse37N9mp5h9/PRL+YoWvPK06N8HvBAd2SKWyEThIAxQJyNreGKFy5RZl?=
 =?us-ascii?Q?9D4gT0TBYk/D30u8QzptGj1KGKU+9XfFR3WFki6CxVkMvmlDM9JqUU/KVc0d?=
 =?us-ascii?Q?OAggy1SNRcqmwbTHC+FaU23DydDuA0g1zanWF0VpUH1CgmnOGqTgFB842OeR?=
 =?us-ascii?Q?KztjPbKNj/OLiEaFfwEreKwqwTQwdGs5QfCw0RaGcClk5lCA9+mPHeHuqwc8?=
 =?us-ascii?Q?UC3DSArXjS1XVoOjOz5Jt8hgNSGAJaqm0OskyMzCXDjhCOi9uwzJ1TGzmMvZ?=
 =?us-ascii?Q?7XLbQs25Nxqr1HWuCYS9HAH/VuTyfCuYdemoSVn1yNTMPPIpl2zKlDDslH0I?=
 =?us-ascii?Q?TmVUHSDAebEQZbjwJGwUd84NF898G6HnihJRkacGkKJuCT0XsvNwEJl0IWNN?=
 =?us-ascii?Q?W337GzVWhcvvVtC/LnUIxe1v9NsC3CHduvpDcoNU4a6pvVIio87VdX1j4D+p?=
 =?us-ascii?Q?MgTj96Uog4FiP8u2uz7TMTGWDx/Cy4hqGq6DOvZrgy9j/+jW99OZxEUdXRxN?=
 =?us-ascii?Q?SrXQ9wCq6x+3R/ES6eR4EGl0E1UUCkCLoVdCiqMhY9EQY450oLs0ZW5KfnpQ?=
 =?us-ascii?Q?ZbAvEmz5eRjpsh+fs2HB5tvXJgxu3wRNeCe2eK0ZSsVrU3bBP2YoNIHTjCH6?=
 =?us-ascii?Q?RdJI6CzkEpLJdcotD8GqCs1RTJPsiLsayOVnR7kh4u2hqu/1BJhHAy6vzdkF?=
 =?us-ascii?Q?0s+M61Qk0vUMKimpLRern4VqZVs/022f+y+/981okmDQCQvm6hukL52io/tS?=
 =?us-ascii?Q?pMCL+v+hX+ZH0e5xwFTH5IrksTtFcHf6tUesaXA+R/gtwIE9npK5qonmQOj6?=
 =?us-ascii?Q?FBTxVlgPtxxoeYYW5Tb0wTdkRf4fy/pP/gXTrThujKGdyO7PKnDnlJVbV+nI?=
 =?us-ascii?Q?g49ki6XdniCaJnk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YP1THt4+zmrzT7NKiPW6YuM7welmV7QVr/PZPVEnT4/S2wFjI2oBGWFS3h3M?=
 =?us-ascii?Q?k97PhUb6jIyhIlzyLqv7l/zZ4KjyftWPpQV0HD+FDG3jXxnac3tUUQgaSQZ+?=
 =?us-ascii?Q?n0MYVal8PObwL4NNQJ3mTL44J+GZLx+F4i7lKArVdofym6kgxonDu2a2Xr8I?=
 =?us-ascii?Q?50ZYga5rnydl2g5qo918sJcNitZ2P62NN/1jWjCDZ6DwVLDgiJxNZ2QipyG5?=
 =?us-ascii?Q?qtXFVedhFvnlJiMpLIgdr70xWUDTnFnVcFgkocgLDQYvHM5JlBN7gnMMiWt8?=
 =?us-ascii?Q?kwUMY60wZyb351fkQb4BL4/z5PA6pXU0mC6dccqAVeIcQx+6fE7DmCW91PK2?=
 =?us-ascii?Q?y+HUHRaQ/UkQx9zcwlJs4XYynYZbidhwuZV1ufYJ5vJUCQ4Z//+jh5bSwvbr?=
 =?us-ascii?Q?JSCMZLn5xUoj3boBK2RI22QVr0syMDTRf72wKpOATLUVnYzyF3CJsYaN68pm?=
 =?us-ascii?Q?Zxg/lbciZdDVA8TNoiPIYD1fQWQkOpmNPQ+wPxH3XSUGNUhN/0S41IA166w1?=
 =?us-ascii?Q?WlKBPBoc9uWoqCW2FfmIE+S/7Q2t+ZNJrNfdftrXk4o23BwWpct5aSsn/XDx?=
 =?us-ascii?Q?1P4ncNFtiXKHvUUhNrctyi/PtctcyLifrH6iX1qtUsgWVfsEefrKAL7kouF7?=
 =?us-ascii?Q?6Lhei82Wmcz1CnKU8HVkADv6BkHmPEVla8Z1Dneu1MdqOlfsvBCaPfbxbLvo?=
 =?us-ascii?Q?MpP+8y26sC23Znz2PHOWoqHAEWQycGcLZgF1tVp3J2rt/JgL470lXoNTLK71?=
 =?us-ascii?Q?e0LBlv6H0TDBM/Tjxoj9gkBTVRWO//NeT/NLy9VqzG9R5iIqMkeTtenkCSbh?=
 =?us-ascii?Q?9b0W6j+SSLDKXuE0zKydV04fsVtsiQExkh+SJzCZKkVWs6FPLOP+a3YlRGcU?=
 =?us-ascii?Q?mHtVBsq3kMhdZNXRVx8Lh2t8DvuWEcI2s9C+stsIAiSUTTcv1YVZFgaQKWdW?=
 =?us-ascii?Q?cTzwb7SYmYcdQb0jfc2gkZTxD6HWoJ459Wh2vLRbRjWtMO+CRa8iqGg8uD3F?=
 =?us-ascii?Q?Fw4esTQofj0o6Cf4syFOqQszBCac/i6l/3kiiMgN9cYl/pblwCpBoXW1Qma7?=
 =?us-ascii?Q?NVDysuD7PcUk5a3h52nEhyZ87NrNcxocRK8Ver8K5r1Iw97gg/w817qSn6PI?=
 =?us-ascii?Q?bGKS76/f2Y/aiIdL2GXmWVl0FsDx96h9Hh6RbW8JYcxnw4nhxxonDoreOr9B?=
 =?us-ascii?Q?HFu/61XCehFAo575hhDQQRXoXAD6K6z3JtvluKOyouWv83uKNAHORJRmhDRY?=
 =?us-ascii?Q?sTiYrx8K83Wec3NTiLw+e1cl3/faTUXsnADAsQf/oQPPnkw9GBY3PfjEixR4?=
 =?us-ascii?Q?J//fdQgiCfwQWXWFbPsp6YZol0nhGIaEs0nC6Zsk9wonIwtCQj/IZufai/vJ?=
 =?us-ascii?Q?xnScHibvOQ/rBHBad1+pzX34gufuqwHPr3Xws1Sgpwms52CsnvA3Z6TFP8W4?=
 =?us-ascii?Q?3mmwb4J8T5Jvk0y5Nwiuq8uuxTaT5RNeABt9PpgJznvq0lNLPYsmfAMZf3ez?=
 =?us-ascii?Q?+wW+crCAHDHTLYG4NGokymnAS5GXf2UHlznAddXCsclBIulKs9dA+kJvGdqX?=
 =?us-ascii?Q?gOVNY8Al+2x+4E/xWyxfDHEK2KrDwf0BEwtQ2c10?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0b249a0-73c2-46a3-8e57-08dde4c94041
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2025 17:51:57.4019 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DtbWz+5v+XToGQLmoKOIDqyTb2w4+OzE/2bnxYvXICqet1lEi66lCJJ9wQ0Paa6n6pF5mmtHpmPiweINDJ82QeBn7koIomneQo7QalY4kAI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6057
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

Oops!  This isn't the right mailing list!  Let me resend this to the correc=
t mailing list.  Feel free to ignore this version.
-Jonathan Cavitt

-----Original Message-----
From: Cavitt, Jonathan <jonathan.cavitt@intel.com>=20
Sent: Tuesday, August 26, 2025 8:44 AM
To: intel-gfx@lists.freedesktop.org
Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.c=
om>; Cavitt, Jonathan <jonathan.cavitt@intel.com>; Brost, Matthew <matthew.=
brost@intel.com>; Harrison, John C <john.c.harrison@intel.com>
Subject: [PATCH 0/2] drm/xe/xe_vm: Add error injection support to lock and =
prep
>=20
> Error injection should use the error injection interface, and should be
> decoupled from CONFIG_DRM_XE_DEBUG.  Remove TEST_VM_OPS_ERROR from the
> code, and add error injection support to the function
> vm_bind_ioctl_ops_lock_and_prep.  This necessitates marking the function
> as noinline.
>=20
> Jonathan Cavitt (2):
>   Revert "drm/xe: Add VM bind IOCTL error injection"
>   drm/xe/xe_vm: Add error injection support to lock and prep
>=20
>  drivers/gpu/drm/xe/xe_device_types.h | 12 -----------
>  drivers/gpu/drm/xe/xe_pt.c           | 12 -----------
>  drivers/gpu/drm/xe/xe_vm.c           | 31 ++++++----------------------
>  drivers/gpu/drm/xe/xe_vm_types.h     | 14 -------------
>  4 files changed, 6 insertions(+), 63 deletions(-)
>=20
> --=20
> 2.43.0
>=20
>=20
