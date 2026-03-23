Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BC3MbJVwWlTSQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 16:01:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D56B2F5A1A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 16:01:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3C8310E04B;
	Mon, 23 Mar 2026 15:01:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CcDqeH24";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57A1610E04B
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2026 15:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774278063; x=1805814063;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6+D8zfVSge/a7Z5WEATAQdR2wZQcKjz2IKeNEqko0ys=;
 b=CcDqeH24E6OGQ9IVzkQ1SpUG50SWbfN6srvhUEl+qAjD9Gw73MiHs2mV
 ThuwElRGScZL0/VMiXCY4GdWzimwIYw+w07fyLkgiZ8UZ5VuM13XroQa9
 p8Cobj7EOjwrvYqMpCAlVUJSV8RMxloAvNqPDeHpbPsxbpoN622X2MSoa
 jTE0Q56ODPzTuR4l6nfaUjWboqUaxMsNzC3fZraGHEJ+S1Z3J4M5h2jH6
 d2HZmSO03ypDAtET6GXj9e12a9rf4RN0qJ10SztLGQBURN/KkWzPDkL6c
 K2w5Y9HwG9A6tGVUHzByAB5zNLOPJOeI9JwE36T2LZuP3Cb2oZ775uupv Q==;
X-CSE-ConnectionGUID: SB11MPxKR+i0Xs0Y3SZmtA==
X-CSE-MsgGUID: 2zjrlKNqSwGnzWrGRLdK7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="75187017"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="75187017"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 08:01:02 -0700
X-CSE-ConnectionGUID: U6Lkg8RkShOD2WLQP6Fvqg==
X-CSE-MsgGUID: vu3LC3CaRQ+j4YN3ebDhtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="224008970"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 08:01:02 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 08:01:01 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 23 Mar 2026 08:01:01 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.19) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 08:01:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cBdnbqmfybxOI2s+P6kR7M0Mge11Ldu60aYXNKGTcBNb7b0RNsErW1dHLb/MnAXzZx5dpJ7nYfjrBJM48k7Rgv0Ywc61hgMqNbwCWeCvkR0yZXr/AYx8VHpqx2xXCenqalP1FEclmHo3LTxW5+Cbo+s1LGnj8hNP/FW1e9c1bdzEwidAZitYLOCqu4VodW1vHvOq21hZqbxonbV7tbOVX0tG35NVUQLuMGmzJTrM7Y/lpOQkarvYde87zM0sImNY8UdIyQJRL0SMej9+0H+o2SuLO58VqPMsaUPL58uQgxIgFtnTX5TiEH3xzb01TJS9RvKu64Klv/qmQp8xTqAH4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x6VnekxsfOPn3bZkZWpG1DbsXtS3YEeHYuhfEReFOHk=;
 b=Kf0y70GFqMsEKNmIWoGWzCMScYtVQpVZhrEdSIoYP6KYlvmFo+cML/OBG3CgUhjIyYPW2pPXEn2UJ8rULBEozvRESJPhq0cN0O4zpoBd/ACVnnor/TK9+sOYKJV9AzABl1I+BWWdowXfFoZLTLuhesStz/GAKB1nFcwrbJcihOuqyrr3dPemV2cgrLa37aGsuWhFRhMpgeJUokIoZ1L6zKKkMbgMHgt85rjxmzBeYt3JjynA2Cc3FPUFphfUTOVKBOhyED2H9fITqTG7vE8EIDGOE3hu2dRmqn7GzmVhOTT6ZDm92veSuBxEWKQ5oJYoDhddu7egI2l+jg99fYQxdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8768.namprd11.prod.outlook.com (2603:10b6:408:211::19)
 by PH7PR11MB7001.namprd11.prod.outlook.com (2603:10b6:510:208::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.23; Mon, 23 Mar
 2026 15:00:56 +0000
Received: from LV3PR11MB8768.namprd11.prod.outlook.com
 ([fe80::b22e:7955:ed0d:54f5]) by LV3PR11MB8768.namprd11.prod.outlook.com
 ([fe80::b22e:7955:ed0d:54f5%6]) with mapi id 15.20.9723.013; Mon, 23 Mar 2026
 15:00:56 +0000
From: "Kumar, Kaushlendra" <kaushlendra.kumar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "joonas.lahtinen@linux.intel.com"
 <joonas.lahtinen@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915: Prevent  heap overflow in i915_l3_write()
Thread-Topic: [PATCH] drm/i915: Prevent  heap overflow in i915_l3_write()
Thread-Index: AQHckEPsbvwIzMiXL02TRjisFcpnWbVnbe6AgAAdyYCAVP7/kA==
Date: Mon, 23 Mar 2026 15:00:56 +0000
Message-ID: <LV3PR11MB87688DF0AB7A31C0E4614811F54BA@LV3PR11MB8768.namprd11.prod.outlook.com>
References: <20260128051142.3006076-1-kaushlendra.kumar@intel.com>
 <b0435f60602510e61ba04385e378f2caba9ac366@intel.com>
 <LV3PR11MB8768CDDC426609842C4AB789F591A@LV3PR11MB8768.namprd11.prod.outlook.com>
 <6aae6c8a4299b17a68cf5efd5faef21911daa688@intel.com>
In-Reply-To: <6aae6c8a4299b17a68cf5efd5faef21911daa688@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV3PR11MB8768:EE_|PH7PR11MB7001:EE_
x-ms-office365-filtering-correlation-id: 90532ded-4691-4844-cf59-08de88ecfc94
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: TwJoyBaVLXbsnlduhaqm4WyNbxJgCdV3y6nwqTyVLSA4JcpUELCK5EwfbByRM9v4o9l9Zphc8RY/uNwt0zL63yq+eQOwkYVbHW6e0CRbr+MLis9mwbR2pqvnpNWd9Gnuf+UPRBkuF20NL8P1+Stnm/zGbBKUs6OekjpTI5VqjkSTEil3YRO6+S3WqbZHNJDuZG5Q2iokVuhtyxH0kLduovCCUGYwfSH3jLQQxQVor9UpRa+1AwbuqLTVmzcnozwiiJAM/VOf+I57DIRFh03a07xDgPkUYtBFrITYKQfetEuuIR95NAA7nWpQbQg16zviuqvCeagsQD0wWJD1zMuYpnp+w4zfeNfk567JnIsr7Jjbx+LyPam2VjqVpJ8Ee90vOOqGVojVKsgRMlkdbk7J7OI9mGYqdN1v1RxhPylEolmili1Qieu8fhWJ27GMVVusDwPi0OguLOtJi953EXOo/zuAtjF5i2dXjCCF3ueljZZYqNa7GuVnHXVvRtEq4hzYq4NonUUIaG06AIiTw6Hf9Ny631kDll2G4wSSDasugJhvGHZJ8Bv55dx3MRKiSOwUSTAswDTGUg7NQMfDAKBjNxmOc55WUbt1p9nMLM/MPHeBrY+hbJ8yLr/Gma7wpHlKpPqytsLA4XvjDEwP3yQravcwFpdyxXs6Xhx5+E7b1KbRxvaJ18zQMLDp/MIN33poWp4sGSjCDU5YFpEA1c8/SuFU1WadePrhS86c3homRmix/y7MSUxv3kYfYvAP/lw9jDd0SdkrecTKtTqa+h+T7QqFukQIYWZc6c2aV3dSbdE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8768.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?c2t0Lrs9/cFzHEr3GR9sxin7mvR0Jdnhz3BepnMPcQFk/CobbwLP2fypu6ya?=
 =?us-ascii?Q?VixfxSSiDaRS8VO/slvWESv31uuDca4sed1aLETU0GZtW5KCBuetvYXyl4eh?=
 =?us-ascii?Q?AC2ANWeeReO2YYisBolyefIJnZPDmnwS/CxKf78yYwSfhr0rbs1C3hKn2rLa?=
 =?us-ascii?Q?aHdE/LACuOzKcbkn/f6j/r7P3QWWh14wJOtWQsTqB9qeudFT4KFnHJaR7oeH?=
 =?us-ascii?Q?PtURw8ZA04YFg6GfmLfKu8DlWPtl6KpDQkJ37D/jC35hsVYLtXfGhFw03JEk?=
 =?us-ascii?Q?jlAkydzaw+X49TiLD40CfdInyN08qe2NYPDjPpaNExJEO5ufrPehqvZMgG9x?=
 =?us-ascii?Q?OmTgqbv+ht/ZbnWYzfycT7rFxuXXwZZD7eyXPgm5pN9RaxEa2b8aWzogceQK?=
 =?us-ascii?Q?legmdHUKN6ph0J95RwwttUzSWAq+TfFVHn/QAbua/25wHt4zs0cRHogmD7gi?=
 =?us-ascii?Q?IZmvvdMN/NsoJ47vk6Zapsi77avR2ZiUydTZ759qNHXNUveGhivZGZB5y7eq?=
 =?us-ascii?Q?B6x2jbTA6TagcMSa+y7rDyoEcLg8npnDdh/90uuOGKgl8ZJWJtW5YgrsStcL?=
 =?us-ascii?Q?YwEKVavkxoNyUwhNVZnvO88YYDkKPnuvkd5NoFpMwFaOpTYz3EPk/ztuXrZD?=
 =?us-ascii?Q?QxCNuGzYUxSVG7zJaa0WpAkBD1A14FUJLUQG4ObOLxi4osEl4iwS3kAW0UKP?=
 =?us-ascii?Q?ZC2bIKungydXt3u4KjED8/Mjpvz7pU0W/+2HQfbHDuxHqD5dW8Z+XD11thiS?=
 =?us-ascii?Q?gMdoZY4+DWoiI58J3lA+ATWUHWVvdTNPyw4npsjs0FmFUscEBYf7gMjiI+3v?=
 =?us-ascii?Q?LtGPWKYk3wYYuO6kCCu2kkkNrlSyUtgmD410whvp7ux3CDVIg9Hy2OjAdPYp?=
 =?us-ascii?Q?V+CgHB/mBmt1fd/l2IyZTLmoVGCNdRIMv4j/pvw6MXvcB0jm9NZECUIG6+KJ?=
 =?us-ascii?Q?4ZGKKtI0est90rs+pxsfivsT22+9U1chOkiTgFJva0rzBKNE5wc2seqLEhqY?=
 =?us-ascii?Q?G2CBcwcCJuSypQw3lyLzbQ3i2rIz7lMTtUasqXVX3V44LciQWtTlmYR8kbwO?=
 =?us-ascii?Q?Y9srv5btdDDYDkgkqnPrGGL26XKPNzc8e8WKwEQBhaNPDkpQkLOo46Szei4c?=
 =?us-ascii?Q?PLp4IKvxTThRBr9e5aChotqG4fiBv8SuEVqDnwWuUdrJ3QN8DeWNaHEYP4Z2?=
 =?us-ascii?Q?MealMLMX5oqlwGN8PeAtjYNo3kijCt1Pj/Y/KU1fBpzGgFU0HIEJA3qoC/4C?=
 =?us-ascii?Q?rPKU2n2Maid7DUAGdCZt5Bmz9c+vkVdfvDRGl/PErBHITxmKXi8bd598JpzF?=
 =?us-ascii?Q?5IuZBV3TgKSftXvhe5tKN8RnQGzlPmBm9A2HIMQW86oEeuqiz1+ldUF7TeLO?=
 =?us-ascii?Q?6VxJBgG/CljshLsViDePsJe82y424j2Mddm2CEg1r20Rk8iQFZYhgj1mO30p?=
 =?us-ascii?Q?KseRcrQmf8fQQoCN6YSV8AESbCaJZ1B0Gki9IoL1hMRH6lB7GwaxTp7QJt/q?=
 =?us-ascii?Q?gI8pdqi2Rv5D809CeaYYWX9ywYNaxGwQ67Kv3HntH8cyxPz8DwszL06ewqtG?=
 =?us-ascii?Q?wK8NF/j9SUwek9gGri74qsm9jBmnK+FU+0bKhZXPZj/duPonleWSAjFJLd9L?=
 =?us-ascii?Q?axOqwfFEUgR41z8F0YT+Ro7Uo2tK9LG/BWHjUIks+igpFk82OOFtVaQPIjSG?=
 =?us-ascii?Q?GUyB0IwVgpRGLt52rc2Q8aMM2WaHTix9CqTxvsWHwnYepSCrGNYuGNfOIsbs?=
 =?us-ascii?Q?849c3KfwFz+QG9nVAor1UC0yDb1qFh0f7L9a4vSMbOEJ6tRuBLD2LSXr9/3j?=
x-ms-exchange-antispam-messagedata-1: 29RvYCUHf0Fonmo6rS0nW7WUrcHZ3Wbdliw=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ftueWHwTChLuIJT14zO4GTUewVcwG2Rsz8S2uA/fQ+lR+U0BZ+8Bg4vQ0XqaAUHONVFUfFN6p7jhceKHCIwL8AXz1pBLhBpTja+1HnVMKs/C8hQwPEGvkfPie3ykLQD+bTNMDfv5YEvujc+ldjG4uAa1tRNVS0zAXRGmOWoBYsqsUbbvSinO68jz0S7tlYHMDqNoOu1oPEg519phdz99gDKEJcwE4AsZ4mxZEdgBtIukqGkBeu4cBIu0qptXyHNbt2ipEUV2fcLwhhIzSoT9jEukaB+aFK0CKFPypDc7u07hXJ+9kxaGkHo4gxNALh9kUVPGMAnNbDo02wDnNu9Cwg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8768.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90532ded-4691-4844-cf59-08de88ecfc94
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2026 15:00:56.4220 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eIkZsVRkFgz7C/rOdzWhcZKLC24B4hkvjAQszMuAgOh9JCqBUjRtbLeObdJZ9SAfDKmNVDSLWYbgCDoP1lQmSEP8IB/BqhtQFz/oonD5de4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7001
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[kaushlendra.kumar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kaushlendra.kumar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2D56B2F5A1A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Jani,

Just checking in on the status of this change.  It's been a while since the=
 last review-do you have an updated timeline for merge, or is anything else=
 needed from me to move this forward?

Thanks for your time.
Kaushlendra
