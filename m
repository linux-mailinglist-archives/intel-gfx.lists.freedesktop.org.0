Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 783B49964D0
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 11:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D94410E69C;
	Wed,  9 Oct 2024 09:18:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CrC3GBop";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F40F10E69C
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 09:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728465532; x=1760001532;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HD/KTZhcBHPiWXdzlCz8pzVHPx5bTIuIMILmbnbMi4A=;
 b=CrC3GBops7IJlflFU2xR+9MzM2XtKLfA6tro8Hav0n0x4Ycvu4PcQQFH
 hg47lkT4QpFEk7o42MavGJ2jS8mAwFO/On/xBonSwWmu2rJfGE/vbXT1s
 wqdbye0Tihexmj2P/mnSBowm5LtsIu3zv48pL8F2CMlazSf7f4YjqsOah
 zC67VPgA02jOra2E1c5ypTEx/sdTklcgr8//D8EDVHVz5ifBuTcUyx7rg
 MvOhPbYnuo2pEAnxgO+mOPxbvmKlFqGM/HMIgLDALxfS58v0NM4ELur8x
 n0g5qrUuKNfZctDyiNqRqmN5GubQILfK1sBo9pHdpHihHwbqWUfEMX0dl A==;
X-CSE-ConnectionGUID: rfrltztYTsa6XfCLY3zl/g==
X-CSE-MsgGUID: oF+VvnnbT12zUwUPQYtELQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="15373690"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="15373690"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 02:18:42 -0700
X-CSE-ConnectionGUID: A8kj77xLRoaao3/JauJ/Wg==
X-CSE-MsgGUID: jUgVHPlOT96plV7ghg+9mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="113669395"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 02:18:41 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 02:18:41 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 02:18:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 02:18:40 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 02:18:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w3WUXa4LB168S/ecLUUYQZLcxv6gYc59YTr0hQVnzB4GAIjHR73W0AYHBx+j6X3ux+Eiq+8b3pmwZGCPvNr92rlulwvSHt7jh/T1PgQmyf6HIN8Y7c5dkSJDKKy68tgX/RRm4xgB4SyWjkTr4URJH0h/RNjKH5RYu/L+HY9wM+YO9oEbahs0s4qB27tJbAhpc7UXMnkTnM41Jm6kgIPnZg36gbndo13vu88R23CEk9BVGnDnGDZ8pIAYW1Sl6zCdK3RHUrvt6vb1dIDo5QO0RYgdYEKWISWjZKNFkdvkwPB70BgZtu2+FZSowbQrw/cMC3ahmg2Ib8cVGKWAqTFY9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2f5Qgc84WBQ8x6J8Ehw8UBIEZB1R0X1Voxxds/W19lM=;
 b=GkeksdRqpXFwrYvOgYOaGUsDmMd+YonIv5J7s4lOUOJpT7fR/GCcpfKvoRnA3af1JAbbRfZFnj5oyOaaE+SoiSsEXC1P3KKfly/Riq0dZKAHAvFb655Hg318AZxwzj5Ux5gMYffNw5KnY+aEJyht/mOAKfULyD5WQQYHhtFj8x/bXdOKMHO5ycETMNvYOfzZAAe82WeLNQtSsxonPXGXZEvunch9kV26eX53RCc5lun/h1UAfUp4aIrWeDE1/08zQA9saIzTdNuF5uAdCnPp0XjP9GIqH1iaQ6zAd/g8TXHmdcIDzy8qzwJIFGNOXymsFSAUwCgIge19XJpjk82Hbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by SN7PR11MB6969.namprd11.prod.outlook.com (2603:10b6:806:2a9::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Wed, 9 Oct
 2024 09:18:37 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%2]) with mapi id 15.20.8026.024; Wed, 9 Oct 2024
 09:18:37 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v13 3/3] drm/i915/panelreplay: Panel replay workaround
 with VRR
Thread-Topic: [PATCH v13 3/3] drm/i915/panelreplay: Panel replay workaround
 with VRR
Thread-Index: AQHbFAhAJ2dALCCPkEWmuobkqYpVgLJx/xMAgAww4OA=
Date: Wed, 9 Oct 2024 09:18:37 +0000
Message-ID: <IA1PR11MB634833C10AB832F86C935949B27F2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241001134703.1128487-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241001134703.1128487-4-mitulkumar.ajitkumar.golani@intel.com>
 <CH0PR11MB5444D1074EB78174DA2AF63DE5772@CH0PR11MB5444.namprd11.prod.outlook.com>
In-Reply-To: <CH0PR11MB5444D1074EB78174DA2AF63DE5772@CH0PR11MB5444.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jonathan.cavitt@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|SN7PR11MB6969:EE_
x-ms-office365-filtering-correlation-id: b5aa9f69-efe6-4716-a1fa-08dce8435b92
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?GKWgJoLLkUK+laXLGxFd6ULX8K3zIC9GTqHqdGsYh6cwGGVFi842Ok4rXLcR?=
 =?us-ascii?Q?0kRuQRRhXivpBsV4X0nt3rjaBu3gG6K2SJMV0VOo6MzHSTePsKEVawrfQIEC?=
 =?us-ascii?Q?zfKfPXoyCZE+NjWTJUPnFGC+8qQjdI8dQXne8vgo8s13tpqTKp/tXfOqTy8U?=
 =?us-ascii?Q?vFdJGdMeoooR5ZgPySlX/W33qgzs4Y5RVkzczylDj89jn0U0k+sAtWBUUrSu?=
 =?us-ascii?Q?yfji8fhRcmxt0e03hbkU5nMadTqhCEGeGrQw2/TtpOjHkzzRgsLhSS/WHFEW?=
 =?us-ascii?Q?1BbQIIQEy267moee8U0IOQ47zrb1LEZ+TxBCDz12QpRR10VPoFjqPZ/gc3Rb?=
 =?us-ascii?Q?NT89WqiPp0geTLGP8mSwiUgdfMlZ7woTJar2OBHUhvTpyx17du+nTysuHvmK?=
 =?us-ascii?Q?ivsttP7IIUZMTNkwfXUkXs/FH0Nb/+ORGZla945WDnn1OgxoP/BXeL9UBbgs?=
 =?us-ascii?Q?QOLKerww7vv0AqDzaamW7XAOMXLYHEeOPxCQdFci+/wJJQIGctMQbgrM/fss?=
 =?us-ascii?Q?vdjCc+/mua3u7d/CXWbsxTo0Hqqlf4fnSkPi96aAZo9hScbP6aHvun0X8WlY?=
 =?us-ascii?Q?nL1rdpdsvLJohXDkh3zym0bQn3KBekeA+q8Z5ShGc6jZWKUEPhyhHr2+xPef?=
 =?us-ascii?Q?jRrj75Rh4TZUNfSnIbxfD3PoHYg5cByssnsSmKTH/Zu45aMFVtUl7jVJlU/s?=
 =?us-ascii?Q?PnIEOIC6pKAXt43kKhsiw+nV2dgMixq7sGdwl4YDAkDD6VrUi6wDOs/XCjMn?=
 =?us-ascii?Q?24tXeoUyZ166U4iz23rJmIKYAm72eRSj35uVnCI54USuIXpzRNN+lV2GgvXm?=
 =?us-ascii?Q?872KZBnTYaM1k4XtdWcj+bd9uaJROlq7yYHJHfOKo/lnThuB5d/ou09R5b5w?=
 =?us-ascii?Q?0sO/koR5G7pGoWPjL0QEkcIQp2kaJPqFhKm1FUkp7VL3s3tNDqT79dRjUXCb?=
 =?us-ascii?Q?GU6lRIu/VBtAazFsM8FppdSFtzkznG0iPZO/VTJ36Mv8JTKEGTU90Xs1vjVJ?=
 =?us-ascii?Q?xUAZaLg7dVOQt0fghIZnhAdqH7DeFpEH1YwmDhwUVpjyWS6yO6iqZvFWuHdH?=
 =?us-ascii?Q?Sqqt/naOm/e8TwwKZbfkeAVmmJqtkYN7din/6Nhn5sFbeUOJtgQbUvEozsqq?=
 =?us-ascii?Q?Q9ozSD5HQG6gj/8fFFhECST6JcqAyEROb5nYv0d5tHpyD2xHM5lPEH1UWx8Q?=
 =?us-ascii?Q?sYCbyE1wA101mKmDVN/B1OeNj4GtDeZkdSmF3Hx7VOecp9jolbFfshgIq/fz?=
 =?us-ascii?Q?G9jzsnFMFhhqaAvCyAY8K34rw2XO31X7iEUQ1KjTArIoIZalzA7YhSUnRVKv?=
 =?us-ascii?Q?SyCKrvJPZ91z1+Am8xJ6/uM5z0AMqhCDtQBwHYm1m/5n3g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vqw7Wy+0zQ16Hqx7XrjawQtwcdGs6CeBLRdZLvn8KCbr2Il15mlquU0DV4Sq?=
 =?us-ascii?Q?HGLg0DRDbL7ButpmDJ+kwlve3JTl4Yzj5b8hkX7jzDO7AE9xcvwoVfpjo2Xr?=
 =?us-ascii?Q?dq/K7E2VnlkpFDERCKcDD7xveLzfRY9WO5WC4o9Egyde7Zn1h6yXpUNqV7Xn?=
 =?us-ascii?Q?m2XZORmpklDIen868WZQ8kn9Usw/2kajhtX5IVZMQxj27sWdhgv+8to6/J/a?=
 =?us-ascii?Q?v5OGN9YwXL04byGKRlM3r78MShdr2MxcOLH4L78zYOJUb1hJTcLdHc5sCBeA?=
 =?us-ascii?Q?dUsuvv6T4i7ouQEddIvL6ua/jfTXRWHSma+zhKmxUIcr2nZbNfkIWFCi1v9e?=
 =?us-ascii?Q?HbH5rpBHEc1oAIxpMLByREz99XTBIqFXaf7ElL2N7APqaEw1Y+T47wj7dIxG?=
 =?us-ascii?Q?8TDxZkg2ZbCW85bR+14pmVE2n4Ey+xmUyAgnAhWeCI2ShNAHpJJ8xNK+Kw+C?=
 =?us-ascii?Q?5pHTouNNLgeULDB7JvvIkJFXOzq86so78XSdw9/HU+BhTjNboHJ5XvQv8z3l?=
 =?us-ascii?Q?fimY9A1s93XDJ0zR89J5YD/4e9zs4E23n5RkicI0VpsjW1wV5v1/XU5sfHwA?=
 =?us-ascii?Q?je5e0zqWgnYpl7BRaDmMEudF6h5rIOmgp5hiZSuLgpO/xtKvwkHtTJvObgY6?=
 =?us-ascii?Q?08wZyMX9kqDJa6EAPiKl/VNTPnZuNZZqJ3NQI+/DTYkVliLeFS63fLtazLCX?=
 =?us-ascii?Q?Jc+YJiRsPJ+lU20QRoMH7swsnh1PDdjPdgqjpjIt6aW6ejoT0HwBKj0SQ9wj?=
 =?us-ascii?Q?plHc15cFVI0dSfWiqWj5RepxEs4VnFrGUpxg5d/tpRxYmc+hjFuK6TtUZDGX?=
 =?us-ascii?Q?C/KdfJ+jSndLLMwvQReMPIkIPul0r/op0F8aPP5xMasnqD6+YdMvZnoSG7nP?=
 =?us-ascii?Q?1sg37bDqdGxS4Ye1xhUN+ZdhyrYubzV3jejeyTnoJcx985L8nwuTzKaVeo2y?=
 =?us-ascii?Q?8eunKmLldMm58GxOQNSciiPsfCuTNavAZ5WsRAWGIDMP8l6rMf47l4cph9wb?=
 =?us-ascii?Q?76FeOd2crTKmdhV6pgm62q70CfeHPJuxR9ojpzt1vSkfXMEJsiKaN+0yrBBc?=
 =?us-ascii?Q?+MPMwvsCTtYv/VtfNMzyKPBYVC5gUMBTOUUHhNr1j8Yt0M8D5St+B2KkPNeC?=
 =?us-ascii?Q?JxJ0UHx4GsRHAGKTY/aSjfRf7EEupEV2oiFEsZzgBoog7ktmXCzCAouen0nL?=
 =?us-ascii?Q?h2tejIiEN89cbJNmSlS7nksgr3U2CVctiie99mSgduRtbqlbwjuDQC4H/Vs1?=
 =?us-ascii?Q?GyyRsu2dcSo+jb9tB8nJgDoJ08+4R8pYLwI2/kgvoS+aeBSaqsH6N1XfkVh1?=
 =?us-ascii?Q?qjxXKvTH2nKGWqpEAykFvmeVMr4qYS3htcRN2VmVoYrMAFnBrJHiXDkkXhK3?=
 =?us-ascii?Q?JKLrg55jyTDeg57HqcBKIHzrDKO9rtuRHoN1VDJAIpjGDhxSj0fpUxcgPGB7?=
 =?us-ascii?Q?PuPWAD2GQ7w4yXzsQlV7MLPugqixQyyhhsXIjZdC4iu61vQzOyptl7M3/yTT?=
 =?us-ascii?Q?g354Phj8SsIiN7Av+dYvcgMhPmUiEN5YPunlY+EpjeQ182GC+9TX//2wzxys?=
 =?us-ascii?Q?j2WTIQzVIKzXav8+AxfPgN0cmrg8OVf1q0RqG/aVpDoLr0AQsuQRk7HmdKUG?=
 =?us-ascii?Q?Uow1RdA2YI6U9sz0vDC4TDs=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5aa9f69-efe6-4716-a1fa-08dce8435b92
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 09:18:37.5931 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lHSp7GytaEF5oFPZ4earz9HRJr8CZo5Idptlvv/La0+ysZC/Bnh2QkirXExzQK1ttPXYx/jFoBNQ8KHPyMbJMHc95WcKA5dOvB1Mc+ZbNBiRt5GzskfCMH0pjR3UIvHE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6969
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
> From: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Sent: Tuesday, October 1, 2024 8:37 PM
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Syrjala, Ville <ville.syrjala@i=
ntel.com>;
> Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Subject: RE: [PATCH v13 3/3] drm/i915/panelreplay: Panel replay workaroun=
d
> with VRR
>=20
> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
tul
> Golani
> Sent: Tuesday, October 1, 2024 6:47 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Syrjala, Ville <ville.syrjala@i=
ntel.com>;
> Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: [PATCH v13 3/3] drm/i915/panelreplay: Panel replay workaround wi=
th
> VRR
> >
> > From: Animesh Manna <animesh.manna@intel.com>
> >
> > Panel Replay VSC SDP not getting sent when VRR is enabled and W1 and
> > W2 are 0. So Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY
> > register to at least a value of 1.
> > The same is applicable for PSR1/PSR2 as well.
> >
> > HSD: 14015406119
> >
> > v1: Initial version.
> > v2: Update timings stored in adjusted_mode struct. [Ville]
> > v3: Add WA in compute_config(). [Ville]
> > v4:
> > - Add DISPLAY_VER() check and improve code comment. [Rodrigo]
> > - Introduce centralized intel_crtc_vblank_delay(). [Ville]
> > v5: Move to crtc_compute_config(). [Ville]
> > v6: Restrict DISPLAY_VER till 14. [Mitul]
> > v7:
> > - Corrected code-comment. [Mitul]
> > - dev_priv local variable removed. [Jani]
> > v8: Introduce late_compute_config() which will take care late
> > vblank-delay adjustment. [Ville]
> > v9: Implementation simplified and split into multiple patches.
> > v10:
> > - Split vrr changes and use struct intel_display in DISPLAY_VER().
> > [Ankit]
> > - Use for_each_new_intel_connector_in_state(). [Jani]
> > v11: Remove loop and use flipline instead of vrr.enable flag. [Ville]
> > v12:
> > - Use intel_Vrr_possible helper.
> > - Correct flag check for flipline.
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>=20
> I left some notes below, but nothing blocking, so:
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 21
> > ++++++++++++++++++++  drivers/gpu/drm/i915/display/intel_display.h |
> > 1 +
> >  2 files changed, 22 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index c59d7bffbf57..a8f846b654e9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2573,6 +2573,8 @@ static int intel_crtc_compute_config(struct
> intel_atomic_state *state,
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >  	int ret;
> >
> > +	intel_crtc_adjust_vblank_delay(crtc_state);
>=20
>=20
> If the purpose of adjusting the vblank delay is for workaround 1401540159=
6, we
> might want to consider refactoring this into two steps.  Specifically, we=
 would
> first separately check if the workaround is needed:
>=20
> """
> /*
>  * wa_14015401596 for display versions 13, 14.
>  * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY register
>  * to at least a value of 1 when PSR1/PSR2/Panel Replay is enabled with V=
RR.
>  * Value for TRANS_SET_CONTEXT_LATENCY is calculated by subtracting
>  * crtc_vdisplay from crtc_vblank_start, so this workaround is needed whe=
n
>  * both are equal.
>  */
> static bool intel_crtc_needs_wa_14015401596(struct intel_crtc_state
> *crtc_state) {
> 	struct intel_display *display =3D to_intel_display(crtc_state);
> 	struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
>=20
> 	return (intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
> 		adjusted_mode->crtc_vblank_start =3D=3D adjusted_mode-
> >crtc_vdisplay &&
> 		IS_DISPLAY_VER(display, 13, 14));
> }
> """
>=20
> Then, here, instead of calling intel_crtc_adjust_vblank_delay, we would d=
o this:
>=20
> """
> 	if (intel_crtc_needs_wa_14015401596(crtc_state)) {
> 		struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> 		adjusted_mode->crtc_vblank_start +=3D 1;
> 	}
> """
>=20
> I don't think this refactor is strictly necessary, though, so feel free t=
o ignore this.
>=20
>=20
> > +
> >  	ret =3D intel_dpll_crtc_compute_clock(state, crtc);
> >  	if (ret)
> >  		return ret;
> > @@ -3985,6 +3987,25 @@ bool intel_crtc_get_pipe_config(struct
> intel_crtc_state *crtc_state)
> >  	return true;
> >  }
> >
> > +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state
> > +*crtc_state) {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	struct drm_display_mode *adjusted_mode =3D
> > +&crtc_state->hw.adjusted_mode;
> > +
> > +	/*
> > +	 * wa_14015401596 for display versions 13, 14.
> > +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY
> register
> > +	 * to at least a value of 1 when PSR1/PSR2/Panel Replay is enabled wi=
th
> VRR.
> > +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by
> substracting
>=20
>=20
> s/substracting/subtracting
>=20
>=20
> > +	 * crtc_vdisplay from crtc_vblank_start, so incrementing
> crtc_vblank_start
> > +	 * by 1 if both are equal.
> > +	 */
> > +	if (intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
> > +	    adjusted_mode->crtc_vblank_start =3D=3D adjusted_mode->crtc_vdisp=
lay
> &&
> > +	    IS_DISPLAY_VER(display, 13, 14))
> > +		adjusted_mode->crtc_vblank_start +=3D 1; }
> > +
> >  int intel_dotclock_calculate(int link_freq,
> >  			     const struct intel_link_m_n *m_n)  { diff --git
> > a/drivers/gpu/drm/i915/display/intel_display.h
> > b/drivers/gpu/drm/i915/display/intel_display.h
> > index 1f0fed5ea7bc..e6bd03ef104d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -446,6 +446,7 @@ u8 _intel_modeset_primary_pipes(const struct
> > intel_crtc_state *crtc_state);
> >  u8 _intel_modeset_secondary_pipes(const struct intel_crtc_state
> > *crtc_state);  struct intel_crtc *intel_primary_crtc(const struct
> > intel_crtc_state *crtc_state);  bool intel_crtc_get_pipe_config(struct
> > intel_crtc_state *crtc_state);
> > +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state
> > +*crtc_state);
>=20
>=20
> You may want to make this a static function in intel_display.c.  Doing so=
 would
> eliminate the need for the added function declaration in intel_display.h.=
  The
> only caveat is that you would need to move the current definition of this
> function in intel_display.c from where it is now to above
> intel_crtc_compute_config if you wanted to go that route.
> -Jonathan Cavitt
>=20

Thanks @Cavitt, Jonathan
I agreed to your suggestion related to needs_wa function.

I will address all suggested comments in next revision.

>=20
> >  bool intel_pipe_config_compare(const struct intel_crtc_state
> *current_config,
> >  			       const struct intel_crtc_state *pipe_config,
> >  			       bool fastset);
> > --
> > 2.46.0
> >
> >
